import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/locator.dart';
import 'package:thichtruyentranh/models/comic_detail.dart';
import 'package:thichtruyentranh/repositories/data_repository.dart';

class ComicDetailController extends GetxController {
  /// MARK: - Initials;
  final dataRepository = locator<DataRepository>();
  RxBool isLoading = true.obs;
  Rx<ComicDetail?> comic = Rx<ComicDetail?>(null);

  //get movie
  Future<void> getComicDetail({
    required String slug,
  }) async {
    try {
      isLoading.value = true;
      final response = await dataRepository.getComicDetail(slug: slug);
      comic.value = response.data!.item;
    } catch (e) {
      debugPrint('Get movies error ==> $e');
    } finally {
      isLoading.value = false;
    }
  }
}
