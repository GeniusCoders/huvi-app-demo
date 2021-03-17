import 'package:bloc/bloc.dart';
import 'package:demoVideo/model/grocery_models/banners_model.dart';
import 'package:demoVideo/model/grocery_models/category_model.dart';
import 'package:demoVideo/services/api/api.dart';
import 'package:meta/meta.dart';

part 'grocery_state.dart';

class GroceryCubit extends Cubit<GroceryState> {
  final Api api;
  GroceryCubit({this.api}) : super(GroceryInitial());

  Future<void> getBanner() async {
    emit(GroceryLoading());

    final _data = await api.getBanner();

    emit(GetBanner(model: _data));
  }

  Future<void> getCategory() async {
    emit(GroceryLoading());

    final _data = await api.getCategory();

    emit(GetCategory(model: _data));
  }
}
