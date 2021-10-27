import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_social_login.dart';
import '../constants.dart';
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
              TextButton(
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
  // late TextEditingController username = new TextEditingController();
  // late TextEditingController email = new TextEditingController();
  // late TextEditingController password = new TextEditingController();
  // late TextEditingController confirmpassword = new TextEditingController();

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
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              BuildPositionedTop(mdw: mdw, showsignin: showsignin),
              BuildPositionedBottom(mdw: mdw, showsignin: showsignin),
              
                  Container(
                    height: 1150,
                    child: SingleChildScrollView(
                        child: Column(children: [
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
                            Material(
                                elevation: 10,
                                color: showsignin ? kprimaryColor : Colors.green.shade900,
                                child: MaterialButton(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    onPressed: showsignin ? signin : signup,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            showsignin
                                                ? "تسجيل الدخول"
                                                : "إنشاء حساب",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 4),
                                              padding: EdgeInsets.only(right: 10),
                                              child: Icon(Icons.arrow_forward,
                                                  color: Colors.white))
                                        ]))),

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
                                    child: Row(children: [
                                      // Padding(
                                      //     padding: EdgeInsets.only(right: 10)),
                                      Expanded(
                                        child: Center(
                                            child: SocialLogin(
                                                imageSocial:
                                                    "example/images/social/facebook.png",
                                                text: "Login with Facebook")),
                                      ),
                                      const SizedBox(width: 10),
                                      // Padding(
                                      //     padding: EdgeInsets.only(right: 10)),
                                      Expanded(
                                        child: Center(
                                            child: SocialLogin(
                                                imageSocial:
                                                    "example/images/social/google.png",
                                                text: "Login with Google")),
                                      ),
                                      // Padding(
                                      //     padding: EdgeInsets.only(right: 10)),
                                    ]),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      )
                    ])),
                  ),
                     const SizedBox(height: 20),
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
                    children: [
                      //Start Email----------
                      CustomText(
                        text: "عنوان البريد الالكتروني",
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 10),
                      CustomTextFormField(
                          onSave: (value) {},
                          pass: false,
                          validator: (value) {},
                          icon: Icons.email_outlined,
                          myhinttext: "ادخل البريد الالكتروني هنا",
                          prefixColor: kprimaryColor,
                          fillColor: kfillColor,
                          enabledColor: kprimaryColor,
                          focusedColor: Colors.blue,
                          borderSideColor: kprimaryColor),
                      //End User Name----------
                      //Start User Password----------
                      CustomText(
                        text: "كلمة المرور",
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        onSave: (vlaue) {},
                        pass: true,
                        validator: (value) {},
                        icon: Icons.lock_outline,
                        myhinttext: "أدخل  كلمة المرور هنا",
                        fillColor: kfillColor,
                        enabledColor: kprimaryColor,
                        focusedColor: Colors.blue,
                        borderSideColor: kprimaryColor,
                        prefixColor: kprimaryColor,
                      ),
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
                      CustomText(
                        text: "إسم المستخدم",
                        color: kprimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        onSave: (vlaue) {},
                        pass: false,
                        validator: (value) {},
                        icon: Icons.person_outline_rounded,
                        myhinttext: "أدخل اسم المستخدم",
                        fillColor: kfillColor,
                        enabledColor: Colors.green.shade900,
                        focusedColor: kprimaryColor,
                        borderSideColor: Colors.green.shade900,
                        prefixColor: Colors.green.shade900,
                      ),
                      //End User Name----------
                      //Start User E-mail ----------
                      SizedBox(height: 10),
                      CustomText(
                        text: "البريد الالكتروني",
                        color: kprimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        onSave: (vlaue) {},
                        pass: false,
                        validator: (value) {},
                        icon: Icons.email_outlined,
                        myhinttext: "أدخل عنوان البريد الالكتروني",
                        fillColor: kfillColor,
                        enabledColor: Colors.green.shade900,
                        focusedColor: kprimaryColor,
                        borderSideColor: Colors.green.shade900,
                        prefixColor: Colors.green.shade900,
                      ),
                      //End User E-mail ----------
                      //Start User Password----------
                      CustomText(
                        text: "كلمة المرور",
                        color: kprimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        onSave: (vlaue) {},
                        pass: true,
                        validator: (value) {},
                        icon: Icons.lock_outlined,
                        myhinttext: "أدخل كلمة المرور",
                        fillColor: kfillColor,
                        enabledColor: Colors.green.shade900,
                        focusedColor: kprimaryColor,
                        borderSideColor: Colors.green.shade900,
                        prefixColor: Colors.green.shade900,
                      ),
                      //Start User Password Confirm----------
                      CustomText(
                        text: "تأكيد كلمة المرور",
                        color: kprimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        onSave: (vlaue) {},
                        pass: true,
                        validator: (value) {},
                        icon: Icons.lock_outlined,
                        myhinttext: "تأكيد كلمة المرور",
                        fillColor: kfillColor,
                        enabledColor: Colors.green.shade900,
                        focusedColor: kprimaryColor,
                        borderSideColor: Colors.green.shade900,
                        prefixColor: Colors.green.shade900,
                      ),
                      //End User Password Confirm----------
                    ],
                  ),
                ),
              ),
            )));
  }

  AnimatedContainer buildContainerAvatar(double mdw) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: showsignin ? Colors.blue : kprimaryColor,
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
