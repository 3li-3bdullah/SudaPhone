/*
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // start json -----------------------
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }
  
  // end json --------------------------
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        // start JSON -------------------------
        body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(itemCount: snapshot.data.length,
                 itemBuilder: (context, i) {
                 return Container(child: Text(snapshot.data[i]['title']));
                });
              }
              return Center(child : CircularProgressIndicator());
            }),

            // end JSON ------------------------
      ),
    );
  }
}
*/

/* 
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LogInState();
  }
}

class LogInState extends State<LogIn> {
  //Start Controller
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();

  GlobalKey<FormState> formstatesignin = new GlobalKey<FormState>();
  GlobalKey<FormState> formstatesignup = new GlobalKey<FormState>();

  String validglobal(String val) {
    if (val.isEmpty) {
      return "The field shoudn't to be empty";
    }
  }

  signin() {
    var formdata = formstatesignin.currentState;
    if (formdata.validate()) {
      print("Validate");
    } else {
      print("Not Validate");
    }
  }

  TapGestureRecognizer _changesign;
  bool showsignin = true;

  @override
  void initState() {
    _changesign = new TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showsignin = !showsignin;
          print(showsignin);
        });
      };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              buildPositionedTop(mdw),
              buildPositionedBottom(mdw),
              Container(
                  height: 1000,
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                    Center(child: Container(margin: EdgeInsets.only(top: 30), child: Text(showsignin ? "تسجيل الدخول" : "إنشاء حساب", style: TextStyle(color: Colors.white, fontSize: 20)))),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    buildContainerAvatar(mdw),
                    showsignin ? buildFormBoxSignIn(mdw) : buildFormBoxSignUp(mdw),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: <Widget>[
                          showsignin
                              ? InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "هل نسيت كلمة المرور ؟",
                                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 15),
                                  ))
                              : SizedBox(),
                          SizedBox(height: showsignin ? 20 : 10),
                          RaisedButton(
                              elevation: 10,
                              color: showsignin ? Colors.grey[800] : Colors.purple,
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                              onPressed: signin,
                              child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: <Widget>[
                                Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                Container(margin: EdgeInsets.only(top: 4), padding: EdgeInsets.only(right: 10), child: Icon(Icons.arrow_forward, color: Colors.white))
                              ])),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: RichText(
                                  text: TextSpan(style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Cairo'), children: <TextSpan>[
                                TextSpan(recognizer: _changesign, text: showsignin ? "إنشاء حساب جديد" : "تسجيل دخول", style: TextStyle(color: showsignin ? Colors.blue : Colors.purple, fontWeight: FontWeight.w700)),
                              ])))
                        ],
                      ),
                    )
                  ]))),
            ],
          ),
        ));
  }

  Center buildFormBoxSignIn(double mdw) {
    return Center(
        child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeOutBack,
            margin: EdgeInsets.only(top: 40),
            height: 250,
            width: mdw / 1.2,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 0.1, spreadRadius: 1, offset: Offset(1, 1))
            ]),
            child: Form(
              key: formstatesignin,
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Start User Name----------
                      Text("إسم المستخدم", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: username,
                        validator: validglobal,
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(4), hintText: "أدخل إسم المستخدم هنا", filled: true, fillColor: Colors.grey[200], enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[300], style: BorderStyle.solid, width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid, width: 1))),
                      ),
                      //End User Name----------
                      //Start User Password----------
                      Text("كلمة المرور", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: password,
                        validator: validglobal,
                        obscureText: true,
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(4), hintText: "أدخل  كلمة المرور هنا", filled: true, fillColor: Colors.grey[200], enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[300], style: BorderStyle.solid, width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid, width: 1))),
                      )
                      //End User Password----------
                    ],
                  ),
                ),
              ),
            )));
  }

  Center buildFormBoxSignUp(double mdw) {
    return Center(
        child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeInOutBack,
            margin: EdgeInsets.only(top: showsignin ? 40 : 20),
            height: 403,
            width: mdw / 1.2,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 0.1, spreadRadius: 1, offset: Offset(1, 1))
            ]),
            child: Form(
              key: formstatesignup,
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Start User Name----------
                      Text("إسم المستخدم", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(false, "أدخل اسم المستخدم", username, validglobal),

                      //End User Name----------
                      //Start User E-mail ----------
                      SizedBox(height: 10),
                      Text("البريد الالكتروني", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(false, "أدخل عنوان البريد الالكتروني", email, validglobal),
                      //End User E-mail ----------
                      //Start User Password----------
                      Text("كلمة المرور", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(true, "أدخل كلمة المرور", password, validglobal),
                      //Start User Password Confirm----------
                      Text("تأكيد كلمة المرور", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(true, "تأكيد كلمة المرور", confirmpassword, validglobal),
                      //End User Password Confirm----------
                    ],
                  ),
                ),
              ),
            )));
  }

  TextFormField buildTextFormFieldAll(bool pass, String myhinttext, TextEditingController myContorller, myvalid) {
    return TextFormField(
      controller: myContorller,
      obscureText: pass,
      validator: myvalid,
      decoration: InputDecoration(contentPadding: EdgeInsets.all(4), hintText: myhinttext, filled: true, fillColor: Colors.grey[200], enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green[300], style: BorderStyle.solid, width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple, style: BorderStyle.solid, width: 1))),
    );
  }

  AnimatedContainer buildContainerAvatar(double mdw) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: showsignin ? Colors.yellow : Colors.purple, borderRadius: BorderRadius.circular(100), boxShadow: [
        BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 0.1)
      ]),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 25,
            right: 25,
            child: Icon(
              Icons.person_outline,
              size: 50,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 35,
            left: 60,
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildPositionedTop(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.7),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(mdw), color: showsignin ? Colors.grey[800] : Colors.green),
        ),
      ),
    ));
  }

  Positioned buildPositionedBottom(double mdw) {
    return Positioned(
      top: 300, // this will go down
      right: mdw / 1.5,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: mdw,
        width: mdw,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(mdw), color: showsignin ? Colors.blue.withOpacity(0.3) : Colors.red.withOpacity(0.3)),
      ),
    );
  }
}
/*
ListView(
            children: <Widget>[ 
              Container(
                padding : EdgeInsets.all(10),
                child: Form(
                    child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(fontSize:20,color:Colors.black),
                      decoration: InputDecoration(
                       // hintText: "أدخل الأسم",
                        filled: true ,
                        /* this is going to show fillcolor , exactly without her fill color will never show */
                        fillColor: Colors.white,
                        prefixIcon: Padding(padding: EdgeInsets.only(left : 10,right: 20),
                        child: Icon(Icons.supervisor_account, size: 40,),),
                        labelText: "أدخل الاسم",
                        labelStyle: TextStyle(color: Colors.green),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        )
                      ),
                    )
                  ],
                )),
              )
            ],
          ),
 */

*/