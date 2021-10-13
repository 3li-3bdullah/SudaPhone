import 'package:flutter/material.dart';
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
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/huawei.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Huawei",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),
                  //End cat two
                  //----------------------
                  //Start cat three
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/apple.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Apple",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),
                  //End cat three
                  //----------------------
                  //Start cat four
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/oppo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Oppo",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),
                  //End cat four
                  //----------------------
                  //Start cat five
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/xiaomi.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Xiaomi",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),
                  //End cat five
                  //----------------------
                  //Start car six
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/lenovo.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Lenovo",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),

                  //End cat six
                  //----------------------
                  //Start cat seven
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/realme.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Realme",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),
                  //End cat eight
                  //----------------------
                  InkWell(
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              "example/images/category/tecno.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              child: Text(
                            "Tecno",
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                      onTap: () {}),

                  //End cat eight
                ],
              ),
            )));
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    this.imageCat,
    this.text,
    this.onTap,
  });
  final String imageCat;
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                imageCat,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                child: Text(
              text,
              style: TextStyle(fontSize: 20),
            )),
          ],
        )),
        onTap: () {
          onTap();
        });
  }
}
