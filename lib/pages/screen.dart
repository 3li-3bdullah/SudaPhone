import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../compount/mydrawer.dart';

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScreenState();
  }
}

class ScreenState extends State<Screen> {
  // final name;
  //  var listSearch = [];
  // ScreenState({this.name});

  // Future getData() async {
  //   for (int i = 0; i < name.length; i++) {
  //     listSearch.add(name[i]);
  //   }
  //   print(listSearch);
  // }

  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }
  int activeIndex = 0;
  final images = [
    AssetImage("example/images/slider/1.jpg"),
    AssetImage("example/images/slider/2.jpg"),
    AssetImage("example/images/slider/3.jpg"),
    AssetImage("example/images/slider/4.jpg"),
    AssetImage("example/images/slider/6.jpg"),
  ];
  Widget buildImage(String images, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      color: Colors.grey,
      child: Image.asset(
        images,
        fit: BoxFit.cover,
      ));
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: images.length,
  );


  @override
  Widget build(BuildContext context) {
    // ThemeData(fontFamily: 'Cairo');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mobetech",
      home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Text(" Mobetech"),
              backgroundColor: Colors.blue,
              centerTitle: true,
              elevation: 6,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      showSearch(context: context, delegate: DataSearch());
                      // return showDialog(
                      //     context: context,
                      //     builder: (context) {
                      //       return AlertDialog(
                      //         title: Text("search"),
                      //         content: Container(
                      //             height: 120,
                      //             child: Column(children: <Widget>[
                      //               Text("ادخل اسم الجوال الذي تريد البحث عنه"),
                      //               TextFormField(
                      //                 decoration:
                      //                     InputDecoration(hintText: "اكتب هنا"),
                      //               ),
                      //             ])),
                      //         actions: <Widget>[
                      //           FlatButton(onPressed: () {}, child: Text("تم")),
                      //           FlatButton(
                      //               onPressed: () {
                      //                return Navigator.of(context).pop();
                      //               },
                      //               child: Text("إلغاء")),
                      //         ],
                      //       );
                      //     });
                    })
              ],

              // leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ),
            drawer: MyDrawer(),
            body: ListView(children: <Widget>[
              Container(
                  //height: 300,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      
                      height: 300,
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
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      final images = images[index];
                      return buildImage(images, index);
                    },
                    // dotSize: 8,
                    // dotIncreaseSize: 2,
                    // dotSpacing: 20,
                    // dotColor: Colors.white,
                    // dotBgColor: Colors.black.withOpacity(0.5),
                    // boxFit: BoxFit.cover,
                    // dotIncreasedColor: Colors.blue,
                  ),
                  //const sizedBox(height:32),
                  buildIndicator(

                  ),
                  ), 
              Container(
                padding: EdgeInsets.all(10),
                child: Text("الأقسام",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    )),
              ),

              Container(
                  //Start The Long Container....
                  height: 120,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/huawei.png",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  subtitle: Container(
                                      child: Text("Huawei",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/iphone.jpg",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  subtitle: Container(
                                      child: Text("Apple",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/realme.png",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  subtitle: Container(
                                      child: Text("Realme",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/lenovo.png",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  subtitle: Container(
                                      child: Text("Lenovo",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/samsung.jpg",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.fill,
                                  ),
                                  subtitle: Container(
                                      child: Text("Samsung",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/xiaomi.png",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  subtitle: Container(
                                      child: Text("Xiaomi",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/oppo.jpg",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.fill,
                                  ),
                                  subtitle: Container(
                                      child: Text("Oppo",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: ListTile(
                                  title: Image.asset(
                                    "example/images/logo/tecno.png",
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  subtitle: Container(
                                      child: Text("Tecno",
                                          textAlign: TextAlign.center)))),
                          onTap: () {},
                        ),
                      ])),
              // End The Long Container....
              Container(
                padding: EdgeInsets.all(10),
                child: Text("أحدث الموبايلات",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
              ),

              Container(
                height: 400,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: <Widget>[
                      InkWell(
                        child: GridTile(
                            child: Image.asset(
                                "example/images/product/huawei.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Huawei Mate 40 Pro : 1200\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child: Image.asset(
                                "example/images/product/samsung.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Samsung S20 Ultra : 1100\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child: Image.asset(
                                "example/images/product/iphone.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("iPhone 12 pro max : 1399\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child: Image.asset(
                                "example/images/product/xiaomi.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Xaiomi Mi 10T  : 1100\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child:
                                Image.asset("example/images/product/oppo.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Oppo F17 Pro : 1250\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child: Image.asset(
                                "example/images/product/lenovo.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Lenovo K12 Pro : 1400\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child: Image.asset(
                                "example/images/product/realme.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Realme race teaser : 1200\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                      InkWell(
                        child: GridTile(
                            child:
                                Image.asset("example/images/product/tecno.jpg"),
                            footer: Container(
                                height: 25,
                                color: Colors.black.withOpacity(0.4),
                                child: Text("Tecno Spark6 : 1200\$",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center))),
                        onTap: () {},
                      ),
                    ]),
              ),
            ]),
          )),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for AppBar
    return [
      IconButton(
          onPressed: () {
            query = " ";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icon Leading
    return (IconButton(
      onPressed: () {
        Navigator.of(context).pop();
        //close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // Result Search
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show when someone searchers for something
    return Text("Body Search");
    //  ListView.builder(
    //     itemCount: searchlist.length,
    //     itemBuilder: (context, i) {
    //       return ListTile(
    //         leading: Icon(Icons.mobile_screen_share),
    //         title: Text(name),
    //         onTap: () {
    //           query = name;
    //           showResults(context);
    //         },
    //       );
    //     });
    // Text("Body Search");
  }
}
