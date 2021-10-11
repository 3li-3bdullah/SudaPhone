import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../compount/data_search.dart';
import '../constants.dart';
import '../widgets/custom_last_product.dart';
import '../widgets/custom_build_categories_logo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../compount/mydrawer.dart';
import 'dart:core';

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScreenState();
  }
}

class ScreenState extends State<Screen> {
  int activeIndex = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final colors = const [
    Colors.red,
    Colors.green,
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.blue,
    Colors.amber,
  ];
  List<String> imagesCarousel = [
    "example/images/slider/1.jpg",
    "example/images/slider/2.jpg",
    "example/images/slider/3.jpg",
    "example/images/slider/4.jpg",
    "example/images/slider/6.jpg",
  ];
  Widget buildImage(String imagesCarousel, int index) => Container(
      // margin: EdgeInsets.symmetric(horizontal: 2),
      color: Colors.grey,
      width: double.infinity,
      child: Image.asset(
        imagesCarousel,
        fit: BoxFit.cover,
      ));
  Widget buildIndicator() => Container(
          child: SmoothPageIndicator(
        // activeIndex: activeIndex,
        controller: controller,
        count: imagesCarousel.length,

        effect: SwapEffect(
          dotHeight: 16,
          dotWidth: 16,
          type: SwapType.yRotation,
        ),
      ));

  @override
  Widget build(BuildContext context) {
    // ThemeData(fontFamily: 'Cairo');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SudaPhone",
      home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Text("SudaPhone"),
              backgroundColor: khomeBar,
              centerTitle: true,
              elevation: 6,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      showSearch(context: context, delegate: DataSearch());
                    })
              ],

              // leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ),
            drawer: MyDrawer(),
            body: ListView(children: <Widget>[
              Container(
                height: 300,
                // width: double.infinity,
                child: GridTile(
                  child: CarouselSlider.builder(
                    // carouselController: controller,
                    options: CarouselOptions(
                      height: 300,
                      //initialPage: 0,
                      // This will show up one picture on the page
                      viewportFraction: 1,
                      // This will show the pictures the left and right in small shape
                      enlargeCenterPage: true,
                      // This will show up in animated pictures
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                    itemCount: imagesCarousel.length,
                    itemBuilder: (context, index, realIndex) {
                      String imagesCar = imagesCarousel[index];
                      return buildImage(imagesCar, index);
                    },
                  ),
                  footer: Container(
                    height: 60,
                    color: Colors.black.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildIndicator(),
                      ],
                    ),
                  ),
                ),
                //const sizedBox(height:32),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("الأقسام",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    )),
              ),

              Container(
                  //Start The Long Container....
                  height: 120,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildCategoriesLogo(
                           "example/images/logo/huawei.png",
                           "Huawei",
                            () {},
                        ),
                        buildCategoriesLogo(
                           "example/images/logo/iphone.jpg",
                           "Apple",
                            () {},
                        ),
                        buildCategoriesLogo(
                           "example/images/logo/realme.png",
                           "Realme",
                            () {},
                        ),
                        
                        CustomBuildCategoriesLogo(
                          imageLogo: "example/images/logo/lenovo.png",
                          text: "Lenovo",
                          onTap: () {},
                        ),
                        CustomBuildCategoriesLogo(
                          imageLogo: "example/images/logo/samsung.jpg",
                          text: "Samsung",
                          onTap: () {},
                        ),
                        CustomBuildCategoriesLogo(
                          imageLogo: "example/images/logo/xiaomi.png",
                          text: "Xiaomi",
                          onTap: () {},
                        ),
                        CustomBuildCategoriesLogo(
                          imageLogo: "example/images/logo/oppo.jpg",
                          text: "Oppo",
                          onTap: () {},
                        ),
                        CustomBuildCategoriesLogo(
                          imageLogo: "example/images/logo/tecno.png",
                          text: "Tecno",
                          onTap: () {},
                        ),
                      ])),
              // End The Long Container....
              Container(
                padding: EdgeInsets.all(10),
                child: Text("أحدث التلفونات",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
              ),

              Container(
                height: 400,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: <Widget>[
                      CustomLastProduct(
                        imageProduct: "example/images/product/huawei.jpg",
                        text: "Huawei Mate 40 Pro : 1200\$",
                        onTap: (){},
                      ),
                      CustomLastProduct(
                        imageProduct: "example/images/product/samsung.jpg",
                        text: "Samsung S20 Ultra : 1100\$",
                        onTap: (){},
                      ),
                      CustomLastProduct(
                        imageProduct: "example/images/product/iphone.jpg",
                        text: "iPhone 12 pro max : 1399\$",
                        onTap: (){},
                      ),
                      CustomLastProduct(
                        imageProduct: "example/images/product/xiaomi.jpg",
                        text: "Xaiomi Mi 10T  : 1050\$" ,
                        onTap: (){},
                      ),
                      CustomLastProduct(
                        imageProduct: "example/images/product/oppo.jpg",
                        text: "Oppo F17 Pro : 1100\$",
                        onTap: (){},
                      ),
                      CustomLastProduct(
                        imageProduct:  "example/images/product/lenovo.jpg",
                        text: "Lenovo K12 Pro : 1400\$",
                        onTap: (){},
                      ),
                     CustomLastProduct(
                        imageProduct:  "example/images/product/realme.jpg",
                        text: "Realme race teaser : 900\$",
                        onTap: (){},
                      ),
                      CustomLastProduct(
                        imageProduct: "example/images/product/tecno.jpg",
                        text: "Tecno Spark6 : 850\$",
                        onTap: (){},
                      ),
                    ]),
              ),
            ]),
          )),
    );
  }

  InkWell buildCategoriesLogo(String imageLogo, String text,Function onTap) {
    return InkWell(
                 child: Container(
                          height: 100,
                          width: 100,
                          child: ListTile(
                              title: Image.asset(
                                imageLogo,
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              subtitle:
                                  Container(child: Text(text, textAlign: TextAlign.center)))),
                      onTap: () {
                        onTap();
                      },
  );
  }
}



