import 'package:demoVideo/pages/grocery_ui/grocery_products/grocery_products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => GroceryProductsPage()));
      },
      child: Container(
        height: 140.h,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage(
                'https://cdn.shopify.com/s/files/1/2486/4354/products/Peter-Lik-Redwood-Forest-Framed-Recess-Mount_1800x.jpg?v=1585086398',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Freshfood from Farm',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Easy to pick your food',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
    );
  }
}
