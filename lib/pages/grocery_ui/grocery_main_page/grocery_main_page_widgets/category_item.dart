import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String img;
  final String name;

  const CategoryItem({this.img, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 4.h),
            child: Image.network(
              img,
              height: 40.h,
            ),
          ),
          Text(name,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 11)),
        ],
      ),
    );
  }
}
