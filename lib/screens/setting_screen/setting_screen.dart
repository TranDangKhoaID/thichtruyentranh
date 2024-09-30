import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thichtruyentranh/common/share_color.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài Đặt'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            //onTap: () => Get.to(() => MoviesHistoryScreen()),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              height: 60,
              width: size.width,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/bookmark.svg',
                    color: ShareColors.kPrimaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Lịch sử xem'),
                ],
              ),
            ),
          ),
          InkWell(
            //onTap: () => boxHistories.clear(),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              height: 60,
              width: size.width,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/trash.svg',
                    color: ShareColors.kPrimaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Xóa bộ nhớ đệm'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
