import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobetech/compount/validinput.dart';
import '../pages/screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//import '../services/auth.dart';

class LogIn extends StatefulWidget {
  /// Function get onClick => null;

  @override
  State<StatefulWidget> createState() {
    // var logInState = LogInState(onClick);
    return LogInState();
  }
}

showdialogall(context, String mycontent) {
  var mdw = MediaQuery.of(context).size.width;
  return showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: 100,
          width: mdw / 1.2,
          child: AlertDialog(
            // title: Text(mytitle),
            content: Text(mycontent, style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              FlatButton(
                child: Text("تم", style: TextStyle(color: Colors.lightGreen)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Screen();
                  }));
                },
              ),
            ],
          ),
        );
      });
}

class LogInState extends State<LogIn> {
  ///LogInState(this.onClick);
  ///----
  // final _auth = Auth();
  // String _email, _password;
  //  Function? onClick;
  ///------

  /// bool isLoading = false;

  ///Start Controller
  late TextEditingController username = new TextEditingController();
  late TextEditingController email = new TextEditingController();
  late TextEditingController password = new TextEditingController();
  late TextEditingController confirmpassword = new TextEditingController();

  GlobalKey<FormState> formstatesignin = new GlobalKey<FormState>();
  GlobalKey<FormState> formstatesignup = new GlobalKey<FormState>();

  // savePre(String username, String email, String password) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setString("username", username);
  //   preferences.setString("email", email);
  //   print(preferences.getString("username"));
  //   print(preferences.getString("email"));
  // }

  // getPre() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //  setState(() {
  //   var  username = preferences.getString("username");
  //   var email = preferences.getString("email");
  //  });

  // }

  signin() async {
    var formdata = formstatesignin.currentState;
    if (formdata.validate()) {
      formdata.save();
      // print(_email);
      // print(_password);
      // final authResult = await _auth.signIn(_email, _password);
      // setState(() {

      // });
      // print(authResult.user.uid);
      showdialogall(context, "تم تسجيل دخولك بنجاح");
    }
  }

  Future signup() async {
    var formdata = formstatesignup.currentState;
    if (formdata.validate()) {
      formdata.save();
      //print(_email);
      // print(_password);
      // final authResult = await _auth.signUp(_email, _password);
      // print(authResult.user.uid);
      showdialogall(context, "تم إنشاء الحساب بنجاح");
    }
  }

  TapGestureRecognizer _changesign;
  bool showsignin = true;

  @override
  void dispose() {
    _changesign = new TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showsignin = !showsignin;
          print(showsignin);
        });
      };
    //getPre();
    super.dispose();
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
                    Center(
                        child: Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                                showsignin ? "تسجيل الدخول" : "إنشاء حساب",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    buildContainerAvatar(mdw),
                    showsignin
                        ? buildFormBoxSignIn(mdw)
                        : buildFormBoxSignUp(mdw),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: <Widget>[
                          showsignin
                              ? InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "هل نسيت كلمة المرور ؟",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ))
                              : SizedBox(),
                          SizedBox(height: showsignin ? 20 : 5),
                          RaisedButton(
                              elevation: 10,
                              color:
                                  showsignin ? Colors.grey[800] : Colors.purple,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              onPressed: showsignin ? signin : signup,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      showsignin
                                          ? "تسجيل الدخول"
                                          : "إنشاء حساب",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 4),
                                        padding: EdgeInsets.only(right: 10),
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.white))
                                  ])),

                          /// isLoading ? CircularProgressIndicator() : Padding(padding: EdgeInsets.all(0),),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    showsignin = !showsignin;
                                  });
                                },
                                child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                        children: <TextSpan>[
                                      TextSpan(
                                          recognizer: _changesign,
                                          text: showsignin
                                              ? "إنشاء حساب جديد"
                                              : "تسجيل دخول",
                                          style: TextStyle(
                                              color: showsignin
                                                  ? Colors.blue
                                                  : Colors.purple,
                                              fontWeight: FontWeight.w700)),
                                    ])),
                              )),
                          const SizedBox(height: 10),
                          showsignin
                              ? Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Expanded(
                                        child: RaisedButton(
                                            color:
                                                Colors.green.withOpacity(0.3),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Expanded(
                                                    flex: 3,
                                                    child: Text(
                                                      "Sign In Google",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Image.asset(
                                                        "example/images/social/google.png",
                                                        width: 25,
                                                        height: 25)),
                                              ],
                                            ),
                                            onPressed: () {})),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                    Expanded(
                                        child: RaisedButton(
                                            color: Colors.red.withOpacity(0.3),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Expanded(
                                                    flex: 3,
                                                    child: Text(
                                                      "Sign In Facebook",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Image.asset(
                                                        "example/images/social/facebook.png",
                                                        width: 25,
                                                        height: 25)),
                                              ],
                                            ),
                                            onPressed: () {})),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10)),
                                  ]),
                                )
                              : const SizedBox(),
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
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 0.1,
                  spreadRadius: 1,
                  offset: Offset(1, 1))
            ]),
            child: Form(
              key: formstatesignin,
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Start Email----------
                      Text("عنوان البريد الالكتروني",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w600)),
                      const SizedBox(height: 10),
                      TextFormField(
                        onSaved: (value) {
                          /// _email = value;
                        },
                        controller: email,
                        validator: (val) {
                          return validInput(val, 30, 15, "email");
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(4),
                            hintText: "ادخل البريد الالكتروني هنا",
                            prefixIcon:
                                Icon(Icons.email_outlined, color: Colors.blue),
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[400],
                                    style: BorderStyle.solid,
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1))),
                      ),
                      //End User Name----------
                      //Start User Password----------
                      Text("كلمة المرور",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      TextFormField(
                        onSaved: (value) {
                          ///  _password = value;
                        },
                        controller: password,
                        validator: (val) {
                          return validInput(val, 20, 8, "password");
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(4),
                            hintText: "أدخل  كلمة المرور هنا",
                            prefixIcon:
                                Icon(Icons.lock_outline, color: Colors.blue),
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey[400],
                                    style: BorderStyle.solid,
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1))),
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
            height: 402,
            width: mdw / 1.2,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 0.1,
                  spreadRadius: 1,
                  offset: Offset(1, 1))
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
                      Text("إسم المستخدم",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(
                          false,
                          "أدخل اسم المستخدم",
                          Icons.person_outline_rounded,
                          username,
                          "validusername", (value) {
                        username = value;
                      }),
                      //End User Name----------
                      //Start User E-mail ----------
                      SizedBox(height: 10),
                      Text("البريد الالكتروني",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(
                        false,
                        "أدخل عنوان البريد الالكتروني",
                        Icons.email_outlined,
                        email,
                        "validemail",
                        (value) {
                          ///  _email = value;
                        },
                      ),
                      //End User E-mail ----------
                      //Start User Password----------
                      Text("كلمة المرور",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(
                          true,
                          "أدخل كلمة المرور",
                          Icons.lock_outlined,
                          password,
                          "validpassword", (value) {
                        ///  _password = value;
                      }),
                      //Start User Password Confirm----------
                      Text("تأكيد كلمة المرور",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(
                          true,
                          "تأكيد كلمة المرور",
                          Icons.lock_outlined,
                          confirmpassword,
                          "validconfirmpassword", (value) {
                        //  _password = value;
                      }),
                      //End User Password Confirm----------
                    ],
                  ),
                ),
              ),
            )));
  }

  TextFormField buildTextFormFieldAll(bool pass, String myhinttext,
      final IconData icon, TextEditingController myContorller, type, onClick) {
    return TextFormField(
      ///autovalidateMode: AutovalidateMode.always,
      onSaved: (value) {
        onClick();
      },
      controller: myContorller,
      obscureText: pass,
      validator: (val) {
        if (type == "validusername") {
          return validInput(val, 20, 4, "username");
        }
        if (type == "validemail") {
          return validInput(val, 30, 15, "email");
        }
        if (type == "validpassword") {
          return validInput(val, 20, 6, "password");
        }
        if (type == "validconfirmpassword") {
          if (type != password.text) {
            return "The password isn\'t identical";
          }
        }
      },
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          hintText: myhinttext,
          prefixIcon: Icon(icon, color: Colors.green),
          filled: true,
          fillColor: Colors.grey[300],
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.green[400],
                  style: BorderStyle.solid,
                  width: 1)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.purple, style: BorderStyle.solid, width: 1)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.green[400],
                  style: BorderStyle.solid,
                  width: 1))),
    );
  }

  AnimatedContainer buildContainerAvatar(double mdw) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: showsignin ? Colors.yellow : Colors.purple,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 0.1)
          ]),
      child: InkWell(
        onTap: () {
          setState(() {
            showsignin = !showsignin;
          });
        },
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
      ),
    );
  }

  Positioned buildPositionedTop(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.7),

        /// the offset takes tow value hori and vertical hori will push it right with positive number and top with
        /// naigtive number and to bottom with positive number
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mdw),
              color: showsignin ? Colors.grey[800] : Colors.green),
        ),
      ),
    ));
  }

  Positioned buildPositionedBottom(double mdw) {
    return Positioned(
      //top : 300
      top: mdw * 1.2, // this will go down
      right: mdw / 1.5,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: mdw,
        width: mdw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: showsignin
                ? Colors.blue.withOpacity(0.3)
                : Colors.red.withOpacity(0.3)),
      ),
    );
  }
}
