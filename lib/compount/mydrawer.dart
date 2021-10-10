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
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("example/images/slider/ali.jpg")), shape:BoxShape.circle),
            ),
            decoration: BoxDecoration(
                color: khomeBar,
                // image: DecorationImage(
                //     image: AssetImage("example/images/slider/drawer.jpg"),
                //     fit: BoxFit.cover)
                    ),
          ),
          CustomDrawerItems(),
          InkWell(
              child: ListTile(
                title: Text("الأقسام",
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                leading: Icon(Icons.category, color: Colors.blue, size: 25),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Categories();
                }));
              }),
          InkWell(
            child: ListTile(
              title: Text("إضافة منشور",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              leading: Icon(Icons.post_add, color: Colors.blue, size: 25),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Post();
              }));
            },
          ),
          Divider(
            color: Colors.blue,
          ),
          InkWell(
            child: ListTile(
              title: Text("حول التطبيق",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              leading: Icon(Icons.info, color: Colors.blue, size: 25),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AboutApp();
              }));
            },
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: ListTile(
          title: Text("الصفحة الرئيسية",
              style: TextStyle(color: Colors.black, fontSize: 18)),
          leading: Icon(Icons.home, color:khomeBar, size: 25),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) {
            return Screen();
          }));
        });
  }
}
