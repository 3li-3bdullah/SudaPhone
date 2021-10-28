import 'package:flutter/material.dart';
// import '../compount/mydrawer.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              appBar: AppBar(
                title: Text('حول التطبيق'),
                centerTitle: true,
              ),
              ///drawer: MyDrawer(),
              body: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    child: RichText(
                        text: TextSpan(
                      style: TextStyle(fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                "بعرض لك هذا التطبيق معظم انواع التلفوات وسعرها بالجنية السوداني",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        TextSpan(
                            text:
                                "إذا واجهتك أي مشكلة يمكنك مراسلتي عبر البريد التالي : ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        TextSpan(
                            text: "Alieko.A50@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.green)),
                      ],
                    )),
                  ),
                  Padding(padding: EdgeInsets.all(50)),
                

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(color: Colors.green,
                                  child: Text("Ali Abdullah Mqbool ^_^",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20)),
                                  height: 100);
                            });
                      },
                      child: Text("Programmed by :"),
                    ),
                  )
                ],
              ))),
    );
  }
}
