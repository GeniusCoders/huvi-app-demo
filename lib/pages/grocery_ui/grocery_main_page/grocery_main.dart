import 'package:demoVideo/cubit/grocery_cubit/grocery_cubit.dart';
import 'package:demoVideo/model/grocery_models/banners_model.dart';
import 'package:demoVideo/model/grocery_models/category_model.dart';
import 'package:demoVideo/pages/grocery_ui/grocery_main_page/grocery_main_page_widgets/home_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'grocery_main_page_widgets/category_item.dart';

const groceryItems = [
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR08-ITRqSxEY6FV8J-TDkyuIpDU2LAsQ9Jxg&usqp=CAU",
    "name": "Fruits"
  },
  {
    "img":
        "https://nhncwtttsf-flywheel.netdna-ssl.com/6/wp-content/uploads/sites/29/2019/01/Eat-Vegetables.jpg",
    "name": "Vegetables"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb1RHVWRnyo6fih7C16CM4z5nI45RbCOS5lQ&usqp=CAU",
    "name": "Meat"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS84FiKXLNMh4JP4i3bEGWDPKE-RUBQ67eOUQ&usqp=CAU",
    "name": "Booze"
  },
  {
    "img":
        "https://www.supermarketnews.com/sites/supermarketnews.com/files/styles/article_featured_retina/public/Albertsons%20Signature%20Select%20ice%20cream-new-July2020.jpg?itok=HVzS_yc3",
    "name": "Frozen"
  },
  {
    "img":
        "https://img.pngio.com/baby-products-png-4-png-image-baby-products-png-626_365.png",
    "name": "Baby"
  },
  {
    "img":
        "https://www.hillspet.com/content/dam/cp-sites/hills/hills-pet/global/2020-homepage-redesign/hero-pack-lockup.png",
    "name": "Pet Foods"
  },
  {
    "img":
        "https://previews.123rf.com/images/scanrail/scanrail1506/scanrail150600015/41657121-creative-abstract-healthcare-medicine-and-pharmacy-industry-business-concept-group-of-health-care-me.jpg",
    "name": "Pharmacy"
  },
  {
    "img":
        "https://img2.pngio.com/nutrition-guidelines-live-well-sioux-falls-grain-food-group-png-1440_960.png",
    "name": "Bread"
  },
  {
    "img": "https://thumbs.dreamstime.com/b/milk-eggs-22208629.jpg",
    "name": "Diary & Eggs"
  },
  {
    "img":
        "https://www.nicepng.com/png/detail/59-598830_cool-drinks-png-cold-drink-images-png.png",
    "name": "Soft Drinks"
  },
  {
    "img":
        "https://www.dsgroup.com/uploads/business/product/faaaf67dce65b522e6a109482d8452fb.png",
    "name": "Snacks"
  },
  {
    "img": "https://i.dlpng.com/static/png/6475365_preview.png",
    "name": "Toiletries"
  },
  {
    "img":
        "https://images-na.ssl-images-amazon.com/images/I/61WoqPyKJDL._SX466_.jpg",
    "name": "Home"
  },
  {
    "img": "https://i.dlpng.com/static/png/6394569_preview.png",
    "name": "Canned Food"
  },
  {
    "img":
        "https://lactima.pl/wp-content/uploads/2020/02/Lactima_Dipy_Group.png",
    "name": "Meals & Dips"
  }
];

class GroceryMain extends StatefulWidget {
  @override
  _GroceryMainState createState() => _GroceryMainState();
}

class _GroceryMainState extends State<GroceryMain> {
  BannerModel model;
  CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroceryCubit, GroceryState>(listener: (context, state) {
      if (state is GetBanner) {
        setState(() {
          model = state.model;
        });
      }
      {
        if (state is GetCategory) {
          setState(() {
            categoryModel = state.model;
          });
        }
      }
    }, builder: (context, state) {
      return Container(
          padding: EdgeInsets.all(26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              HomeBanner(),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 40.0.h, horizontal: 14.w),
                child: Text(
                  'Category',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: groceryItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 7.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio:
                          750.h / MediaQuery.of(context).size.height),
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(
                      img: groceryItems[index]['img'],
                      name: groceryItems[index]['name'],
                    );
                  },
                ),
              )
            ],
          ));
    });
  }
}
