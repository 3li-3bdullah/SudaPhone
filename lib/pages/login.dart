import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../compount/validinput.dart';
import '../widgets/text_formfield_all.dart';
import '../widgets/build_positioned_bottom.dart';
import '../widgets/build_positioned_top.dart';
import '../pages/screen.dart';
import '../widgets/custom_text.dart';
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
            actions: [
              FlatButton(
                child: Text("تم", style: TextStyle(color: Colors.lightGreen)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
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

  signin() {
    // String formdata = formstatesignin.currentState;
    // if (formdata.validate()) {
    //   formdata.save();
    //   // print(_email);
    //   // print(_password);
    //   // final authResult = await _auth.signIn(_email, _password);
    //   // setState(() {

    //   // });
    //   // print(authResult.user.uid);
    //   showdialogall(context, "تم تسجيل دخولك بنجاح");
    // }
    showdialogall(context, "تم تسجيل دخولك بنجاح");
  }

  signup() {
    // String formdata = formstatesignup.currentState;
    // if (formdata.validate()) {
    //   formdata.save();
    //   //print(_email);
    //   // print(_password);
    //   // final authResult = await _auth.signUp(_email, _password);
    //   // print(authResult.user.uid);
    //   showdialogall(context, "تم إنشاء الحساب بنجاح");
    // }
    showdialogall(context, "تم إنشاء الحساب بنجاح");
  }

  //TapGestureRecognizer _changesign;
  bool showsignin = true;

  @override
  void dispose() {
    // _changesign = new TapGestureRecognizer()
    // ..onTap = () {
    setState(() {
      showsignin = !showsignin;
      print(showsignin);
    });
    //  };
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
            children:[
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              BuildPositionedTop(mdw: mdw, showsignin: showsignin),
              BuildPositionedBottom(mdw: mdw, showsignin: showsignin),
              Container(
                  height: 1000,
                  child: SingleChildScrollView(
                      child: Column(children: [
                    Center(child: Container(margin: EdgeInsets.only(top: 30),
                     child: Text(showsignin ? "تسجيل الدخول" : "إنشاء حساب", 
                     style: TextStyle(color: Colors.white, fontSize: 20)))),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    buildContainerAvatar(mdw),
                    showsignin ? buildFormBoxSignIn(mdw) : buildFormBoxSignUp(mdw),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          showsignin
                              ? InkWell(
                                  onTap: () {},
                                  child: CustomText(
                       text: "هل نسيت كلمة المرور ؟",
                        color: Colors.blue,
                     fontSize: 15,
                    fontWeight: FontWeight.w600,
                     textAlign: TextAlign.center,
                       ),
                                 )
                              : SizedBox(),
                          SizedBox(height: showsignin ? 20 : 5),
                          RaisedButton(
                              elevation: 10,
                              color: showsignin ? Color(0xff424242) : Colors.purple,
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              onPressed: showsignin ? signin : signup,
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.min, children: [
                                Text(
                                  showsignin ? "تسجيل الدخول" : "إنشاء حساب",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                                Container(margin: EdgeInsets.only(top: 4), 
                                padding: EdgeInsets.only(right: 10),
                                 child: Icon(Icons.arrow_forward, color: Colors.white))
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
                                          //recognizer: _changesign,
                                          text: showsignin ? "إنشاء حساب جديد" : "تسجيل دخول",
                                          style: TextStyle(color: showsignin ? Colors.blue : Colors.purple,
                                           fontWeight: FontWeight.w700)),
                                    ])),
                              )),
                          const SizedBox(height: 10),
                          showsignin
                              ? Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Row(children: [
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Expanded(
                                        child: RaisedButton(
                                            color: Colors.green.withOpacity(0.3),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Expanded(
                                                    flex: 3,
                                                   child: CustomText(
                                                      text: "Sign In Facebook",
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                Expanded(flex: 1,
                                                 child: Image.asset("example/images/social/facebook.png",
                                                  width: 25, height: 25)),
                                              ],
                                            ),
                                            onPressed: () {})),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Expanded(
                                        child: Material(
                                           color:Colors.red.withOpacity(0.3),
                                            child: MaterialButton(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      flex: 3,
                                                      child: CustomText(
                                                        text: "Sign In Google",
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w600,
                                                        textAlign: TextAlign.center,
                                                      ),
                                                      ),
                                                  Expanded(flex: 1,
                                                   child: Image.asset("example/images/social/google.png", width: 25, height: 25)),
                                                ],
                                              ),
                                              onPressed: (){},
                                            ),
                                           )),
                                    Padding(padding: EdgeInsets.only(right: 10)),
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
              BoxShadow(color: Colors.black, blurRadius: 0.1, spreadRadius: 1, offset: Offset(1, 1))
            ]),
            child: Form(
              key: formstatesignin,
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Start Email----------
                      CustomText(
                       text:"عنوان البريد الالكتروني",
                        color: Colors.blue,
                     fontSize: 15,
                    fontWeight: FontWeight.w600,
                     textAlign: TextAlign.center,
                       ),
                      
                      const SizedBox(height: 10),
                      TextFormField(
                        onSaved: (value) {
                          /// _email = value;
                        },
                        controller: email,
                        validator: (val) {
                          return validInput("email", 30, 15, "email");
                        },
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(4),
                         hintText: "ادخل البريد الالكتروني هنا",
                          prefixIcon: Icon(Icons.email_outlined, color: Colors.blue),
                           filled: true, fillColor: Color(0xffe0e0e0),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd),
                             style: BorderStyle.solid, width: 1)),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, 
                              style: BorderStyle.solid, width: 1)),
                               border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,
                                style: BorderStyle.solid, width: 1))),
                      ),
                      //End User Name----------
                      //Start User Password----------
                      CustomText(
                       text:"كلمة المرور",
                        color: Colors.blue,
                     fontSize: 15,
                    fontWeight: FontWeight.w600,
                     textAlign: TextAlign.center,
                       ),
                      SizedBox(height: 10),
                      TextFormField(
                        onSaved: (value) {
                          ///  _password = value;
                        },
                        controller: password,
                        validator: (val) {
                          return validInput("password", 20, 8, "password");
                        },
                        obscureText: true,
                        decoration: InputDecoration(contentPadding: EdgeInsets.all(4), hintText: "أدخل  كلمة المرور هنا", prefixIcon: Icon(Icons.lock_outline, color: Colors.blue), filled: true, fillColor: Color(0xffe0e0e0), enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd), style: BorderStyle.solid, width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid, width: 1)), border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid, width: 1))),
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
                      CustomText(
                       text:"إسم المستخدم",
                        color: Colors.purple,
                     fontSize: 15,
                    fontWeight: FontWeight.w600,
                     textAlign: TextAlign.center,
                       ),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(false, "أدخل اسم المستخدم", Icons.person_outline_rounded, username, "validusername", (value) {
                        username = value;
                      }),
                      //End User Name----------
                      //Start User E-mail ----------
                      SizedBox(height: 10),
                      CustomText(
                       text:"البريد الالكتروني",
                        color: Colors.purple,
                     fontSize: 15,
                    fontWeight: FontWeight.w700,
                     textAlign: TextAlign.center,
                       ),
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
                       CustomText(
                       text:"كلمة المرور",
                        color: Colors.purple,
                     fontSize: 15,
                    fontWeight: FontWeight.w600,
                     textAlign: TextAlign.center,
                       ),
                      SizedBox(height: 10),
                      buildTextFormFieldAll(true, "أدخل كلمة المرور", Icons.lock_outlined, password, "validpassword", (value) {
                        ///  _password = value;
                      }),
                      //Start User Password Confirm----------
                      CustomText(
                       text:"تأكيد كلمة المرور",
                        color: Colors.purple,
                     fontSize: 15,
                    fontWeight: FontWeight.w600,
                     textAlign: TextAlign.center,
                       ),
                      SizedBox(height: 10),
                      TextFormFieldAll(pass: true,icon:Icons.lock_outlined ,myContorller: confirmpassword,
                      myhinttext:  "تأكيد كلمة المرور",onClick: (value){},type:"validconfirmpassword",
                      password:  password ),
                      // buildTextFormFieldAll(true, "تأكيد كلمة المرور", 
                      // Icons.lock_outlined, confirmpassword, "validconfirmpassword", (value) {
                      //   //  _password = value;
                      // }),
                      //End User Password Confirm----------
                    ],
                  ),
                ),
              ),
            )));
  }

  TextFormField buildTextFormFieldAll(bool pass, String myhinttext, final IconData icon, myContorller, type,
   onClick) {
    return TextFormField(
      ///autovalidateMode: AutovalidateMode.always,
      onSaved: (value) {
        onClick();
      },
      controller: myContorller,
      obscureText: pass,
      validator: (val) {
        if (type == "validusername") {
          return validInput("username", 20, 4, "username");
        }
        if (type == "validemail") {
          return validInput("email", 30, 15, "email");
        }
        if (type == "validpassword") {
          return validInput("password", 20, 6, "password");
        }
        if (type == "validconfirmpassword") {
          if (type != password.text) {
            return "The password isn\'t identical";
          }
        }
      },
      decoration: InputDecoration(contentPadding: EdgeInsets.all(4), hintText: myhinttext,
       prefixIcon: Icon(icon, color: Colors.green), filled: true, fillColor: Color(0xffe0e0e0),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd), 
        style: BorderStyle.solid, width: 1)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(
          color: Colors.purple, style: BorderStyle.solid, width: 1)),
           border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffbdbdbd),
            style: BorderStyle.solid, width: 1))),
    );
  }

  AnimatedContainer buildContainerAvatar(double mdw) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: showsignin ? Colors.yellow : Colors.purple, 
      borderRadius: BorderRadius.circular(100), boxShadow: [
        BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 0.1)
      ]),
      child: InkWell(
        onTap: () {
          setState(() {
            showsignin = !showsignin;
          });
        },
        child: Stack(
          children: [
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

}