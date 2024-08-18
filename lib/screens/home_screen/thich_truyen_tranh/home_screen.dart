import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thichtruyentranh/screens/home_screen/cubit/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeScreen(),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<HomeCubit>().getHomeItems();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<HomeCubit>().getHomeItems();
  // }

  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (prev, curr) {
          return curr is GetHomeItems || curr is ShowLoading;
        },
        builder: (context, state) {
          final items = state.data.items;
          final isLoading = state.data.isLoading;
          return ListView.separated(
            //shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (isLoading) {
                return const CircularProgressIndicator();
              }
              return ListTile(
                // leading: Image.network(
                //   items[index].thumbUrl ?? '',
                //   fit: BoxFit.cover,
                // ),
                title: Text(items[index].name ?? ''),
                subtitle: Text(items[index].slug ?? ''),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: isLoading ? 1 : items.length,
          );
        },
      ),
    );
  }
}
