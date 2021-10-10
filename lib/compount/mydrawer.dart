import 'package:flutter/material.dart';
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
    //ThemeData(fontFamily: 'Cairo');
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
              color: khomeBar,
              // image: DecorationImage(
              //     image: AssetImage("example/images/slider/drawer.jpg"),
              //     fit: BoxFit.cover)
            ),
          ),
          CustomDrawerItems(
            text: "الصفحة الرئيسية",
            icon: Icons.home_outlined,
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Screen();
          }));
            },
          ),
          CustomDrawerItems(
            text: "الأقسام",
            icon: Icons.category_outlined,
            onTap: (){
             Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Categories();
                }));
            },
          ),
          CustomDrawerItems(
            text: "إضافة منشور",
            icon: Icons.post_add_outlined,
            onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Post();
              }));
            },
          ),
          Divider(
            color: khomeBar,
          ),
          CustomDrawerItems(
            text: "حول التطبيق",
            icon: Icons.info_outline,
            onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AboutApp();
              }));
            },
          ),
          CustomDrawerItems(
            text: "الإعدادات",
            icon: Icons.settings_outlined,
            onTap: (){},
          ),
          InkWell(
            child: ListTile(
              title: Text("الإعدادات",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              leading: Icon(Icons.settings, color: Colors.blue, size: 25),
            ),
            onTap: () {},
          ),
          InkWell(
            child: ListTile(
              title: Text("تسجيل الدخول",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              leading: Icon(Icons.exit_to_app, color: Colors.blue, size: 25),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LogIn();
              }));
            },
          ),
        ],
      ),
    );
  }
}

class CustomDrawerItems extends StatelessWidget {
  const CustomDrawerItems({
    this.text,
    this.icon,
     this.onTap,
  });
  final String text;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: ListTile(
          title:
              Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
          leading: Icon(icon, color: khomeBar, size: 25),
        ),
        onTap: onTap,
        );
  }
}
