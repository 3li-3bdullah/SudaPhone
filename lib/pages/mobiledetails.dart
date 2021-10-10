import 'package:flutter/material.dart';
import '../constants.dart';

class MobileDetails extends StatefulWidget {
  @override
  _MobileDetailsState createState() => _MobileDetailsState();
}

class _MobileDetailsState extends State<MobileDetails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kappDetails,
            title: Text(
              'التفاصيل',
              style: TextStyle(fontFamily: 'Cairo'),
            ),
            centerTitle: true,
          ),
          body: ListView(children: <Widget>[
            Container(
                height: 300,
                child: GridTile(
                    child: Image.asset("example/images/product/samsung.jpg"),
                    footer: Container(
                        height: 80,
                        color: Colors.black.withOpacity(0.3),
                        child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "S20 Ultra ",
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    "1200\$",
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ))))),

            //End Header page

            Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "المواصفات",
                  style: TextStyle(fontSize: 18, fontFamily: 'Cairo'),
                )),
            //Start Column Specfiction

            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextOfDetails(
                      text1: "الموديل : ",
                      text2: "S20 Ultra",
                      containerColor: kcontainerColor1,
                    ),
                     TextOfDetails(
                      text1:  "الشاشة : ",
                      text2:  "Super Amoled 5.5",
                      containerColor: kcontainerColor2,
                    ),
                    TextOfDetails(
                      text1:  "نظام التشغيل : ",
                      text2:  "Android 10, One UI 2",
                      containerColor: kcontainerColor1,
                    ),
                    TextOfDetails(
                      text1:  "الحماية  : ",
                      text2:   " IP68 مقاوم للماء , Gorilla Glass 6",
                      containerColor: kcontainerColor2,
                    ),
                   TextOfDetails(
                      text1:  "دقة الشاشة : ",
                      text2:   "6.9 بوصة بدقة QHD + بها ثقب صغير",
                      containerColor: kcontainerColor1,
                    ),
                   TextOfDetails(
                      text1:  "المعالج : ",
                      text2:   "Snapdragon 865, Eiyons 990",
                      containerColor: kcontainerColor2,
                    ),
                  TextOfDetails(
                      text1: "البطارية : ",
                      text2: "5000 MAH " + "" + "شحن سريع w15",
                      containerColor: kcontainerColor1,
                    ),
                    
                  ],
                )),
            //start the second container
            Container(
              color: kappDetails,
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "المميزات",
                style: TextStyle(color:Colors.white ,fontSize: 18, fontFamily: 'Cairo'),
              )),
            ),
            //Start Column Specfiction
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[

                     TextOfDetails(
                      text1:  "التقريب : ",
                      text2: "يقرب حتي 100 مرة أثناء التصوير بالكاميرا الزوم",
                      containerColor: kcontainerColor1,
                    ),
                    TextOfDetails(
                      text1:  "دعم التصوير : ",
                      text2: "يدعم تصوير الفيديوهات بجودة ال 8K",
                      containerColor: kcontainerColor2,
                    ),
                    TextOfDetails(
                      text1:  "الذاكرة العشوائية : ",
                      text2: "كبيرة جدا تعطيك مرونه في فتح الكثير من التطبيقات ولكن فعليا هل سنحتاج إلي كل هذه المساحة بالاخص مع قدومها من نوع LPDDR5",
                      containerColor: kcontainerColor1,
                    ),
                    TextOfDetails(
                      text1:  "الكاميرا  : ",
                      text2:  "كامبرا قوية جدا قادرة علي المنافسة وكاد تكون الأفضل في 2020 ... مع كاميرا سيلفي مميزة 40 ميجا بيكسل",
                      containerColor: kcontainerColor2,
                    ),
                    TextOfDetails(
                      text1:  "الشاشة  : ",
                      text2:  "ممتازة وكبيرة و بدقة عالية ومعدل تحديث 120 هرتز",
                      containerColor: kcontainerColor1,
                    ),
                    TextOfDetails(
                      text1:   "البطارية : ",
                      text2: "كبيرة جدا والتي يتم توفيرها لأول مرة يهذه السعة في سلسلة ال S",
                      containerColor: kcontainerColor2,
                    ),
                    TextOfDetails(
                      text1:   "الشحن : ",
                      text2: "يدعم الشحن السريع بقوة 45 واط حيث ستتمكن من شحن هاتفك من 0% إلي 100% خلال 74 دقيقة بالكامل",
                      containerColor: kcontainerColor1,
                    ),
                    TextOfDetails(
                      text1:   "أداء المعالج : ",
                      text2: "قوي و يمتاز بأنه قوي من حيث الأداء",
                      containerColor: kcontainerColor1,
                    ),
                  ],
                )),
            //End second container

            //Start three container
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "العيوب",
                style: TextStyle(fontFamily: 'Cairo', fontSize: 18),
              )),
            ),
            //Start Column Specfiction

            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Cairo'),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "السعر :",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: "مرتفع وحجمة ثقيل",
                                  style: TextStyle(color: Colors.blue)),
                            ]))),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(fontFamily: 'Cairo'),
                              children: <TextSpan>[
                            TextSpan(
                                text: "المنافذ :",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: "لا يوجد منفذ 3.5 ملم",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(fontFamily: 'Cairo'),
                              children: <TextSpan>[
                            TextSpan(
                                text: " لمبة إشعارات :",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: "لا توجد به لمبه إشعارات",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue))
                          ])),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(fontFamily: 'Cairo'),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "الشبكة  :",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text:
                                      "لا يدعم الجيل الخامس في النسخة العربية",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white))
                            ]))),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(fontFamily: 'Cairo'),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "الكاميرا  :",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text: "بروز كبير في الشكل",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue))
                            ]))),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(fontFamily: 'Cairo'),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "الألوان :",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text: "محددة",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white))
                            ]))),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(fontFamily: 'Cairo'),
                              children: <TextSpan>[
                            TextSpan(
                                text: "الشرايح :",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text:
                                    "لا يمكن استخدام شريحتين و كارت ميموري في نفس الوقت",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue)),
                          ])),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(fontFamily: 'Cairo'),
                              children: <TextSpan>[
                            TextSpan(
                                text: "الشاشة :",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text:
                                    "كبيرة جدا في اليد وستحتاج إلي بعض الوقت للاعتياد عليها",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ])),
                    ),
                  ],
                )),

            //End three container

            //End Column Specfiction
          ]),
        ));
  }
}

class TextOfDetails extends StatelessWidget {
  const TextOfDetails(
      {this.containerColor, this.text1, this.text2});
  final Color containerColor;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: containerColor,
        child: RichText(
            text: TextSpan(style: TextStyle(fontSize: 18), children: <TextSpan>[
          TextSpan(text: text1, style: TextStyle(color: Colors.black)),
          TextSpan(text: text2, style: TextStyle(color: Colors.white)),
        ])));
  }
}
