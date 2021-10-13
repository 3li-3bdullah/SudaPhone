import 'package:flutter/material.dart';
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
                backgroundColor: khomeBar,
                title: Text('الأقسام'),
                centerTitle: true,
              ),
              drawer: MyDrawer(),
              body: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  //Start cat one
                  CategoriesCard(
                    imageCat: "example/images/category/samsung.png",
                    text: "Samsung",
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Samsung();
                      }));
                    },
                  ),
                  //End cat one
                  //----------------------
                  //Start cat two
                  CategoriesCard(
                    imageCat: "example/images/category/huawei.png",
                    text: "Huawei",
                    onTap: () {},
                  ),
                  //End cat two
                  //----------------------
                  //Start cat three
                  CategoriesCard(
                    imageCat: "example/images/category/apple.jpg",
                    text: "Apple",
                    onTap: () {},
                  ),
                 
                  //End cat three
                  //----------------------
                  //Start cat four
                  CategoriesCard(
                    imageCat:  "example/images/category/oppo.png",
                    text: "Oppo",
                    onTap: () {},
                  ),
                  //End cat four
                  //----------------------
                  //Start cat five
                  CategoriesCard(
                    imageCat: "example/images/category/xiaomi.png",
                    text: "Xiaomi",
                    onTap: () {},
                  ),
                  //End cat five
                  //----------------------
                  //Start car six
                  CategoriesCard(
                    imageCat:"example/images/category/lenovo.png",
                    text: "Lenovo",
                    onTap: () {},
                  ),
                  //End cat six
                  //----------------------
                  //Start cat seven
                  CategoriesCard(
                    imageCat: "example/images/category/realme.png",
                    text: "Realme",
                    onTap: () {},
                  ),
                  //End cat eight
                  //----------------------
                  CategoriesCard(
                    imageCat:  "example/images/category/tecno.png",
                    text: "Tecno",
                    onTap: () {},
                  ),
                  //End cat eight
                ],
              ),
            )));
  }
}


