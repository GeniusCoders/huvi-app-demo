import 'dart:convert';
import 'package:demoVideo/model/grocery_models/banners_model.dart';
import 'package:demoVideo/model/grocery_models/category_model.dart';
import 'package:demoVideo/services/repo/repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api extends Repo {
  final Dio dio;

  Api({@required this.dio});

  @override
  Future<BannerModel> getBanner() async {
    Response response;
    final _url =
        "https://interface.huviapp.co/api/v1/index.php/masterapi/get_banners";

    response = await dio.get(_url);

    return BannerModel.fromJson(json.decode(response.data));
  }

  @override
  Future<CategoryModel> getCategory() async {
    Response response;
    final _url =
        "https://interface.huviapp.co/api/v1/index.php/masterapi/get_categories";
    response = await dio.get(_url);
    return CategoryModel.fromJson(json.decode(response.data));
  }
}
