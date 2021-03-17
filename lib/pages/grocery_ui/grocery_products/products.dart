import 'package:demoVideo/pages/grocery_ui/grocery_products/grocery_products_widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final productsList = [
  {
    "img":
        "https://static.libertyprim.com/files/offres/vend-chou-kale-spain-1774-3626-large.jpg?1558958583",
    "name": "Kale Gabbage",
    "price": "3.60",
    "kg": "250"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7yufswd_85VpL37L-sFZczcWwXlA_V2YvPQ&usqp=CAU",
    "name": "1 radicchio",
    "price": "2.50",
    "kg": "180"
  },
  {
    "img":
        "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/9/9/0/3/553099-1-eng-GB/Contaminated-mung-bean-sprouts-linked-to-two-deaths.jpg",
    "name": "Mung Bean",
    "price": "2.50",
    "kg": "500"
  },
  {
    "img":
        "https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/24170752/ING-chanterelle-mushrooms.jpg",
    "name": "Chanterelles",
    "price": "6.90",
    "kg": "200"
  },
  {
    "img":
        "https://media.istockphoto.com/photos/oyster-mushroom-picture-id503491608?k=6&m=503491608&s=612x612&w=0&h=5d47LcR3jgQ_5VmnQ1wH4iZkowsGBuRfF38SLmHZ1hw=",
    "name": "Oyster Mushrooms",
    "price": "3.90",
    "kg": "200"
  },
  {
    "img":
        "https://static.hanos.com/sys-master/productimages/h6e/h07/9064801697822/340.00867.jpg_914Wx914H",
    "name": "1 brocoli bio",
    "price": "3.20",
    "kg": "420"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2n7pf2vvpKLZaOLdI3a6E2PdnGu8Cl7ABkA&usqp=CAU",
    "name": "1 chou rouge",
    "price": "3.00",
    "kg": "1.6"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4hJI_u0QRI42Bzut7BqH9Av3LO-6JPLneaA&usqp=CAU",
    "name": "1 chou blanc",
    "price": "3.00",
    "kg": "1.6"
  },
  {
    "img":
        "https://produits.bienmanger.com/34671-0w470h470_Champignon_Paris_Bio.jpg",
    "name": "Champignons de",
    "price": "3.50",
    "kg": "500"
  },
  {
    "img":
        "https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/24172014/ING-rutabaga-main.jpg",
    "name": "Rutabaga",
    "price": "1.00",
    "kg": "500"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4hJI_u0QRI42Bzut7BqH9Av3LO-6JPLneaA&usqp=CAU",
    "name": "1 chou blanc",
    "price": "3.00",
    "kg": "1.6"
  },
  {
    "img": "https://the.ismaili/sites/default/files/5365.jpg",
    "name": "Sachet de",
    "price": "2.30",
    "kg": "1"
  },
  {
    "img":
        "https://static.libertyprim.com/files/offres/vend-chou-kale-spain-1774-3626-large.jpg?1558958583",
    "name": "Kale Gabbage",
    "price": "3.60",
    "kg": "250"
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7yufswd_85VpL37L-sFZczcWwXlA_V2YvPQ&usqp=CAU",
    "name": "1 radicchio",
    "price": "2.50",
    "kg": "180"
  },
  {
    "img":
        "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/9/9/0/3/553099-1-eng-GB/Contaminated-mung-bean-sprouts-linked-to-two-deaths.jpg",
    "name": "Mung Bean",
    "price": "2.50",
    "kg": "500"
  },
];

class Products extends StatelessWidget {
  final _borderRadius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.w, 12.h, 10.w, 0),
      child: GridView.builder(
        itemCount: productsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 7.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 650.h / MediaQuery.of(context).size.height),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(_borderRadius),
                      child: SizedBox(
                          height: 80.h,
                          child: Image.network(productsList[index]['img'])),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              productsList[index]['name'],
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                            ),
                          ),
                          Text(
                            '${productsList[index]['kg']}g',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          Text(
                            '£ ${productsList[index]['price']}',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(bottom: 0, right: 0, child: AddButton())
              ],
            ),
          );
        },
      ),
    );
  }
}
