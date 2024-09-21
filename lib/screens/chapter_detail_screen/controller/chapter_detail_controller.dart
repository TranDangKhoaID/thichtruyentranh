import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/models/chapter_detail.dart';
import 'package:http/http.dart' as http;
import 'package:thichtruyentranh/models/response/chapter_detail_response.dart';

class ChapterDetailController extends GetxController {
  /// MARK: - Initials;
  //final dataRepository = locator<DataRepository>();
  RxBool isLoading = true.obs;
  Rx<ChapterDetail?> chapter = Rx<ChapterDetail?>(null);
  Rx<String> domainCND = ''.obs;

  //get chapter
  Future<dynamic> getChapter({required String api}) async {
    try {
      isLoading.value = true;
      final response = await http.get(Uri.parse(api));
      final Map<String, dynamic> jsonData = json.decode(response.body);
      ChapterDetailResponse responseBody =
          ChapterDetailResponse.fromJson(jsonData);
      if (response.statusCode == 200) {
        isLoading.value = false;
        domainCND.value = responseBody.data!.domain_cdn!;
        chapter.value = responseBody.data!.item!;
      } else {
        isLoading.value = false;
        debugPrint('>>>error get chapter detail: something_went_wrong');
      }
    } on TimeoutException catch (e) {
      debugPrint('>>>error get chapter detail: ${e.message.toString()}');
    } on SocketException catch (e) {
      debugPrint('>>>error get chapter detail: ${e.message.toString()}');
    } on Error catch (e) {
      debugPrint('>>>error get chapter detail: ${e.toString()}');
    } catch (e) {
      debugPrint('>>>error get chapter detail: $e');
    }
    return null;
  }
}
