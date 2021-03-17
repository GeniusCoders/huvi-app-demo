part of 'grocery_cubit.dart';

@immutable
abstract class GroceryState {}

class GroceryInitial extends GroceryState {}

class GroceryLoading extends GroceryState {}

class GetBanner extends GroceryState {
  final BannerModel model;

  GetBanner({@required this.model});
}

class GetCategory extends GroceryState {
  final CategoryModel model;

  GetCategory({@required this.model});
}
