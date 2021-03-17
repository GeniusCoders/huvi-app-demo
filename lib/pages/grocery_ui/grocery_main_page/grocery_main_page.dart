import 'package:demoVideo/cubit/grocery_cubit/grocery_cubit.dart';
import 'package:demoVideo/pages/grocery_ui/grocery_main_page/grocery_main.dart';
import 'package:demoVideo/services/api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroceryMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => GroceryCubit(api: Api(dio: Dio())),
        child: GroceryMain(),
      )),
    );
  }
}
