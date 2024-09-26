import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/locator.dart';
import 'package:thichtruyentranh/models/comic.dart';
import 'package:thichtruyentranh/repositories/data_repository.dart';

class ComicsController extends GetxController {
  /// MARK: - Initials;
  Rx<List<Comic>> comics = Rx<List<Comic>>([]);
  RxBool isLoading = false.obs;
  final dataRepository = locator<DataRepository>();

  Future<void> getComics({
    required int page,
    required String type,
  }) async {
    try {
      isLoading.value = true;
      final response = await dataRepository.getComics(
        type: type,
        page: page,
      );
      final items = response.data!.items ?? [];
      comics.value = items;
    } catch (e) {
      debugPrint('Get movies error ==> $e');
    } finally {
      isLoading.value = false;
    }
  }
}
