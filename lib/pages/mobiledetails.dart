import 'package:flutter/material.dart';

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
                    TextOfDetails(),
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
                                text: "Super Amoled 5.5",
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
                                text: "نظام التشغيل :",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: "Android 10, One UI 2",
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
                                  text: "الحماية  :",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text: " IP68 مقاوم للماء , Gorilla Glass 6",
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
                                  text: "دقة الشاشة :",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text: "6.9 بوصة بدقة QHD + بها ثقب صغير",
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
                                  text: "المعالج   :",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text: "Snapdragon 865, Eiyons 990",
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
                                text: "البطارية :",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: " 5000 MAH " + "" + "شحن سريع w15",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue)),
                          ])),
                    ),
                  ],
                )),
            //start the second container
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "المميزات",
                style: TextStyle(fontSize: 18, fontFamily: 'Cairo'),
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
                                  text: "التقريب : ",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text:
                                      ".يقرب حتي 100 مرة أثناء التصوير بالكاميرا الزوم",
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
                                text: "دعم التصوير : ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: "يدعم تصوير الفيديوهات بجودة ال 8K.",
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
                                text: " الذاكرة العشوائية : ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text:
                                    "كبيرة جدا تعطيك مرونه في فتح الكثير من التطبيقات ولكن فعليا هل سنحتاج إلي كل هذه المساحة بالاخص مع قدومها من نوع LPDDR5 .",
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
                                  text: "الكاميرا  : ",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text:
                                      "كامبرا قوية جدا قادرة علي المنافسة وكاد تكون الأفضل في 2020 ... مع كاميرا سيلفي مميزة 40 ميجا بيكسل .",
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
                                  text: "الشاشة  : ",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text:
                                      "ممتازة وكبيرة و بدقة عالية ومعدل تحديث 120 هرتز .",
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
                                  text: "البطارية : ",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text:
                                      "كبيرة جدا والتي يتم توفيرها لأول مرة يهذه السعة في سلسلة ال S .",
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
                                text: "الشحن : ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text:
                                    "يدعم الشحن السريع بقوة 45 واط حيث ستتمكن من شحن هاتفك من 0% إلي 100% خلال 74 دقيقة بالكامل .",
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
                                text: "أداء المعالج : ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: "قوي و يمتاز بأنه قوي من حيث الأداء .",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ])),
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
      {this.containerColor, this.text1, this.text2, this.color1, this.color2});
  final Color containerColor;
  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: Color(0xff08535d),
        child: RichText(
            text: TextSpan(style: TextStyle(fontSize: 18), children: <TextSpan>[
          TextSpan(text: text1, style: TextStyle(color: color1)),
          TextSpan(text: text2, style: TextStyle(color: color2)),
        ])));
  }
}
/* 
class TextOfDetails extends StatelessWidget {
  const TextOfDetails({
     this.containerColor
  });
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 18),
                children: <TextSpan>[
              TextSpan(
                  text: "الموديل :", style: TextStyle(color: Colors.black,fontSize: 18)),
              TextSpan(text: "S20 Ultra", style: TextStyle(fontSize: 18 ,color: Colors.blue)),
            ])));
  }
}
*/
