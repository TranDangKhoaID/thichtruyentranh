import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/locator.dart';
import 'package:thichtruyentranh/models/comic.dart';
import 'package:thichtruyentranh/repositories/data_repository.dart';

class HomeController extends GetxController {
  /// MARK: - Initials;
  final dataRepository = locator<DataRepository>();
  //
  Rx<List<List<Comic>>> comics = Rx<List<List<Comic>>>([[], [], [], [], []]);
  Rx<List<int>> totalPages = Rx<List<int>>([0, 0, 0, 0, 0]);
  Rx<List<bool>> isLoadings = Rx<List<bool>>([
    false,
    false,
    false,
    false,
    false,
  ]);
  //
  Future<void> getHomeComics() async {
    try {
      final updatedLoadings = List<bool>.from(isLoadings.value);
      updatedLoadings[0] = true;
      isLoadings.value = updatedLoadings;
      final response = await dataRepository.getHome();
      final updatedMovies = List<List<Comic>>.from(comics.value);
      updatedMovies[0] = response.data!.items ?? [];
      comics.value = updatedMovies;
    } catch (e) {
      debugPrint('Get home comics error $e');
    } finally {
      // Cập nhật lại isLoadings để thông báo thay đổi
      final updatedLoadings = List<bool>.from(isLoadings.value);
      updatedLoadings[0] = false;
      isLoadings.value = updatedLoadings;
    }
  }
}
