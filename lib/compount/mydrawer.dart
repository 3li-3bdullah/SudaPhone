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
                        const SizedBox(height:10),
                        CustomText(text: "Ali Abdullah", textAlign: TextAlign.start, color: Colors.white,
                         fontSize: 20, fontWeight: FontWeight.normal),
                         CustomText(text: "Alieko.soul@gamil.com", textAlign: TextAlign.start, color: Colors.white,
                         fontSize: 18, fontWeight: FontWeight.normal),
                         
                      ],
                    ))
                  ])))
        ],
      ),
    );
  }

  InkWell drawerItems(String text, IconData icon, Function onTap) {
    return InkWell(
      child: ListTile(
        title: Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
        leading: Icon(icon, color: kprimaryColor, size: 25),
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