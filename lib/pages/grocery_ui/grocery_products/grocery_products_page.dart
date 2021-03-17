import 'package:demoVideo/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';

import 'grocery_products.dart';

class GroceryProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GroceryProducts(),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: -2, blurRadius: 6),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,

              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(MIcon.riHome2Fill), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(MIcon.riShoppingCartLine), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(MIcon.riAccountCircleLine), label: ''),
              ],
              currentIndex: 0,
              selectedItemColor: purple,
              // onTap: _onItemTapped,
            ),
          )),
    );
  }
}
