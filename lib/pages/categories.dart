import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobetech/widgets/custom_text.dart';
import '../constants.dart';
import '../widgets/categories_card.dart';
import '../pages/samsung.dart';
import '../compount/mydrawer.dart';

class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    ///ThemeData(fontFamily: 'Cairo');

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: kprimaryColor,
                title: CustomText(text: "الأقسام", textAlign: TextAlign.center, color: Colors.white,
                 fontSize: 30, fontWeight: FontWeight.normal),
                centerTitle: true,
              ),
              drawer: MyDrawer(),
              body: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  CategoriesCard(
                    imageCat: "example/images/category/samsung.png",
                    text: "Samsung",
                    onTap: () {
                      Get.to(Samsung());
                    },
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/huawei.png",
                    text: "Huawei",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/apple.jpg",
                    text: "Apple",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/oppo.png",
                    text: "Oppo",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/xiaomi.png",
                    text: "Xiaomi",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/lenovo.png",
                    text: "Lenovo",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/realme.png",
                    text: "Realme",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/tecno.png",
                    text: "Tecno",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/vivo.jpg",
                    text: "Vivo",
                    onTap: () {},
                  ),
                  CategoriesCard(
                    imageCat: "example/images/category/nokia.png",
                    text: "Nokia",
                    onTap: () {},
                  ),
                ],
              ),
            )));
  }
}
