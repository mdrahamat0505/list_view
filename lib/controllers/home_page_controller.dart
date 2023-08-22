import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:tes/models/user_data.dart';
import 'package:tes/services/api_service.dart';

import '../config/constants.dart';

class HomePageController extends GetxController with ApiService {
  final dio = Dio();
  final showSpinner = RxBool(false);
  final isList = RxBool(false);
  final itemCount = RxInt(2);
  final listElement = RxList<ListElement>([]);
  //final listElementSearch = RxList<ListElement>([]);
  final userData = RxList<UserData>([]);
  final meta = RxList<Meta>([]);
  final genres = RxList([]);

  @override
  void onInit() {
    getUserList();
    super.onInit();
  }

  @override
  void onReady() {
    try {
      // final logIn = Hive.box('Movies');
      // 2.delay();
      // final movie = logIn.get('Movies');
      // if (movie != null) {
      //   moviesList.value.addAll(movie as List<Movie>);
      // }
    } catch (e) {}
    // TODO: implement onReady
    super.onReady();
  }

  void getUserList() async {
    isList.value = true;
    try {
      // final url = Uri.parse(Constants.baseUrl);
      final response = await dio.get(Constants.url);
      // final res = await hh.get(url);

      if (response.statusCode == 200) {
        try {
          final responseJson = response.data;

          isList.value = false;

          if (responseJson != null) {
            try {
              UserData userData = UserData.fromJson(responseJson);
              listElement.clear();
              listElement.value.addAll(userData.lists as dynamic);
              meta.value.addAll(userData.meta as dynamic);
              // list.add(MoviesList.fromJson(newsjson));
            } catch (e) {
              log('$e');
            }

            update(['aVeryUniqueID']);
            update();
          }
        } catch (e) {
          log('$e');
        }
      } else {
        Get.snackbar(
          'Attention!!',
          'There is no  list',
          colorText: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
        );
      }
    } catch (e) {
      isList.value = false;
      log(e.toString());
    }
  }
}
