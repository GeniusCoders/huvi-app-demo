import 'package:demoVideo/model/grocery_models/banners_model.dart';
import 'package:demoVideo/model/grocery_models/category_model.dart';

abstract class Repo {
  Future<BannerModel> getBanner();
  Future<CategoryModel> getCategory();
}
