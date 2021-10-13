import 'package:flutter/material.dart';
import '../widgets/custom_textof_details.dart';
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
                  children: [
                    CustomTextOfDetails(
                      text1: "الموديل : ",
                      text2: "S20 Ultra",
                      containerColor: kcontainerColor1,
                    ), const SizedBox(height:2),
                     CustomTextOfDetails(
                      text1:  "الشاشة : ",
                      text2:  "Super Amoled 5.5",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1:  "نظام التشغيل : ",
                      text2:  "Android 10, One UI 2",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1:  "الحماية  : ",
                      text2:   " IP68 مقاوم للماء , Gorilla Glass 6",
                      containerColor: kcontainerColor2,
                    ),
                   CustomTextOfDetails(
                      text1:  "دقة الشاشة : ",
                      text2:   "6.9 بوصة بدقة QHD + بها ثقب صغير",
                      containerColor: kcontainerColor1,
                    ),
                   CustomTextOfDetails(
                      text1:  "المعالج : ",
                      text2:   "Snapdragon 865, Eiyons 990",
                      containerColor: kcontainerColor2,
                    ),
                  CustomTextOfDetails(
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

                     CustomTextOfDetails(
                      text1:  "التقريب : ",
                      text2: "يقرب حتي 100 مرة أثناء التصوير بالكاميرا الزوم",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1:  "دعم التصوير : ",
                      text2: "يدعم تصوير الفيديوهات بجودة ال 8K",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1:  "الذاكرة العشوائية : ",
                      text2: "كبيرة جدا تعطيك مرونه في فتح الكثير من التطبيقات ولكن فعليا هل سنحتاج إلي كل هذه المساحة بالاخص مع قدومها من نوع LPDDR5",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1:  "الكاميرا  : ",
                      text2:  "كامبرا قوية جدا قادرة علي المنافسة وكاد تكون الأفضل في 2020 ... مع كاميرا سيلفي مميزة 40 ميجا بيكسل",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1:  "الشاشة  : ",
                      text2:  "ممتازة وكبيرة و بدقة عالية ومعدل تحديث 120 هرتز",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1:   "البطارية : ",
                      text2: "كبيرة جدا والتي يتم توفيرها لأول مرة يهذه السعة في سلسلة ال S",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1:   "الشحن : ",
                      text2: "يدعم الشحن السريع بقوة 45 واط حيث ستتمكن من شحن هاتفك من 0% إلي 100% خلال 74 دقيقة بالكامل",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1:   "أداء المعالج : ",
                      text2: "قوي و يمتاز بأنه قوي من حيث الأداء",
                      containerColor: kcontainerColor2,
                    ),
                  ],
                )),
            //End second container
            //Start three container
            Container(
              color: kappDetails,
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "العيوب",
                style: TextStyle(color: Colors.white ,fontFamily: 'Cairo', fontSize: 18),
              )),
            ),
            //Start Column Specfiction
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    CustomTextOfDetails(
                      text1:  "السعر : ",
                      text2: "مرتفع وحجمة ثقيل",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1: "المنافذ : ",
                      text2: "لا يوجد منفذ 3.5 ملم",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1: "لمبة إشعارات : ",
                      text2: "لا توجد به لمبه إشعارات",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1: "الشبكة : ",
                      text2: "لا توجد به لمبه إشعارات",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1: "الكاميرا : ",
                      text2:  "بروز كبير في الشكل",
                      containerColor: kcontainerColor1,
                    ),
                   CustomTextOfDetails(
                      text1: "الألوان : ",
                      text2:  "محددة",
                      containerColor: kcontainerColor2,
                    ),
                    CustomTextOfDetails(
                      text1: "الشرايح : ",
                      text2:   "لا يمكن استخدام شريحتين و كارت ميموري في نفس الوقت",
                      containerColor: kcontainerColor1,
                    ),
                    CustomTextOfDetails(
                      text1:"الشاشة : ",
                      text2:   "كبيرة جدا في اليد وستحتاج إلي بعض الوقت للاعتياد عليها",
                      containerColor: kcontainerColor2,
                    ),
                  ],
                )),

            //End three container

            //End Column Specfiction
          ]),
        ));
  }
}


