import 'package:demoVideo/pages/grocery_ui/grocery_products/products.dart';
import 'package:demoVideo/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remixicon/flutter_remixicon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroceryProducts extends StatefulWidget {
  @override
  _GroceryProductsState createState() => _GroceryProductsState();
}

class _GroceryProductsState extends State<GroceryProducts>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                MIcon.riMenu2Line,
                size: 22.sp,
              ),
              Text(
                'Products',
                style: GoogleFonts.poppins(
                    fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              Icon(
                MIcon.riSearchLine,
                size: 22.sp,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          TabBar(
            labelColor: purple,
            unselectedLabelColor: Color(0xFF9EA8B2),
            isScrollable: true,
            controller: _tabController,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3.0,
                  color: purple,
                ),
                insets: EdgeInsets.symmetric(horizontal: 16.0.w)),
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
                letterSpacing: .5,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp),
            unselectedLabelStyle: TextStyle(fontSize: 14.sp),
            tabs: [
              Tab(
                text: "Vegetables",
              ),
              Tab(text: "Fruits"),
              Tab(text: "Beard"),
              Tab(text: "Diary & Eggs"),
            ],
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [Products(), Container(), Container(), Container()]),
          )
        ],
      ),
    );
  }
}
