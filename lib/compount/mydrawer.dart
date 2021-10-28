import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobetech/widgets/custom_text.dart';
import '../constants.dart';
import '../pages/post.dart';
import '../pages/categories.dart';
import '../pages/aboutapp.dart';
import '../pages/login.dart';
import '../pages/screen.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // final username;

  // final email;
  // _MyDrawerState({this.username,this.email});

  // getPreDra() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   var  username = preferences.getString("username");
  //   var email = preferences.getString("email");
  // }

  // @override
  // void dispose() {
  //   getPreDra();
  //   super.dispose();
  // }
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue.shade400, Colors.blue.shade800],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          SafeArea(
              child: Container(
                  width: 200.0,
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    DrawerHeader(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("example/images/slider/ali.jpg"),
                        ),
                        const SizedBox(height: 10),
                        CustomText(
                            text: "Ali Abdullah",
                            textAlign: TextAlign.center,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                        CustomText(
                            text: "Alieko.soul@gamil.com",
                            textAlign: TextAlign.center,
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ],
                    )),
                    Expanded(
                        child: ListView(children: [
                      drawerItems(
                        "الصفحة الرئيسية",
                        Icons.home_outlined,
                        () {
                          Get.to(Screen());
                        },
                      ),
                      drawerItems(
                        "الأقسام",
                        Icons.category_outlined,
                        () {
                          Get.to(Categories());
                        },
                      ),
                      drawerItems(
                        "إضافة منشور",
                        Icons.post_add_outlined,
                        () {
                          Get.to(Post());
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      drawerItems(
                        "حول التطبيق",
                        Icons.info_outline,
                        () {
                          Get.to(AboutApp());
                        },
                      ),
                      drawerItems(
                        "الإعدادات",
                        Icons.settings_outlined,
                        () {},
                      ),
                      drawerItems(
                        "تسجيل الدخول",
                        Icons.exit_to_app_outlined,
                        () {
                          Get.to(LogIn());
                        },
                      ),
                    ]))
                  ]))),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              curve:Curves.easeIn,
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: (Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3,
                        200 * val) //This will allows us to translate the screen
                    ..rotateY((pi / 6) * val)),
                  child: Screen(),
                ));
              }),

          ///The GestureDectector will allows to me open the drawer
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },

            //   onTap: () {
            //   ///If the value equal to 0 then when we tap it will become 1
            //   ///else it will become 0
            //   setState(() {
            //     value == 0 ? value = 1 : value = 0;
            //   });
            // }
          )
        ],
      ),
    );
  }

  InkWell drawerItems(String text, IconData icon, Function onTap) {
    return InkWell(
      child: ListTile(
        title: Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        leading: Icon(icon, color: Colors.white, size: 25),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
/*
 return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ali Abdullah"),
            accountEmail: Text("Alieko.A50@gmail.com"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("example/images/slider/ali.jpg")),
                  shape: BoxShape.circle),
            ),
            decoration: BoxDecoration(
              color: kprimaryColor,
              // image: DecorationImage(
              //     image: AssetImage("example/images/slider/drawer.jpg"),
              //     fit: BoxFit.cover)
            ),
          ),
          drawerItems(
            "الصفحة الرئيسية",
            Icons.home_outlined,
            () {
              Get.to(Screen());
            },
          ),
          drawerItems(
            "الأقسام",
            Icons.category_outlined,
            () {
              Get.to(Categories());
            },
          ),
          drawerItems(
            "إضافة منشور",
            Icons.post_add_outlined,
            () {
              Get.to(Post());
            },
          ),
          Divider(
            color: kprimaryColor,
          ),
          drawerItems(
            "حول التطبيق",
            Icons.info_outline,
            () {
              Get.to(AboutApp());
            },
          ),
          drawerItems(
            "الإعدادات",
            Icons.settings_outlined,
            () {},
          ),
          drawerItems(
            "تسجيل الدخول",
            Icons.exit_to_app_outlined,
            () {
              Get.to(LogIn());
            },
          ),
        ],
      ),
    );
*/