import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thichtruyentranh/common/event_bus.dart';
import 'package:thichtruyentranh/common/share_color.dart';
import 'package:thichtruyentranh/common/share_style.dart';
import 'package:thichtruyentranh/screens/home_screen/thich_truyen_tranh/home_screen.dart';
import 'package:thichtruyentranh/screens/main_screen/cubit/main_cubit.dart';

class MainScreen extends StatefulWidget {
  /// MARK: - Initials;
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
        ),
      ],
      child: const MainScreen(),
    );
  }

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.green)
  ];

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  StreamSubscription<ChangeTabEvent>? streamChangeTab;
  //StreamSubscription<GetUserInfoEvent>? streamGetUserInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  /// Build Body
  Widget _buildBody() {
    return BlocBuilder<MainCubit, MainState>(
      buildWhen: (prev, curr) {
        return curr is ChangeTabIndex;
      },
      builder: (context, state) {
        final tabIndex = state.data.tabIndex;
        return IndexedStack(
          index: tabIndex,
          children: screens,
        );
      },
    );
  }

  /// Build bottom bar
  Widget _buildBottomBar() {
    return BlocBuilder<MainCubit, MainState>(
      buildWhen: (prev, curr) {
        return curr is ChangeTabIndex;
      },
      builder: (context, state) {
        final tabIndex = state.data.tabIndex;
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: Colors.grey,
              ),
              label: 'Trang chủ',
              activeIcon: SvgPicture.asset(
                'assets/icons/home.svg',
                color: ShareColors.kPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/heart.svg',
                color: Colors.grey,
              ),
              label: 'Đã lưu',
              activeIcon: SvgPicture.asset(
                'assets/icons/heart.svg',
                color: ShareColors.kPrimaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/setting.svg',
                color: Colors.grey,
              ),
              label: 'Cài đặt',
              activeIcon: SvgPicture.asset(
                'assets/icons/setting.svg',
                color: ShareColors.kPrimaryColor,
              ),
            ),
          ],
          currentIndex: tabIndex,
          selectedItemColor: ShareColors.kPrimaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: ShareStyles.normalStyle.copyWith(fontSize: 12),
          unselectedLabelStyle: ShareStyles.normalStyle.copyWith(fontSize: 12),
          onTap: (int index) {
            _globalKey.currentContext
                ?.read<MainCubit>()
                .changeTabIndex(index: index);
          },
        );
      },
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    /// Observer change tab
    streamChangeTab = eventBus.on<ChangeTabEvent>().listen((event) {
      _globalKey.currentContext
          ?.read<MainCubit>()
          .changeTabIndex(index: event.index);
    });
  }

  @override
  void dispose() {
    streamChangeTab?.cancel();
    super.dispose();
  }
}
