import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateComments();
  }
}

class StateComments extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(top: BorderSide(color: Colors.grey))),
                          child: Row(children: [
                            IconButton(
                                icon: Icon(Icons.camera_alt_outlined,
                                    color: Colors.purple),
                                onPressed: () {}),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                width: MediaQuery.of(context).size.width - 70,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "أكتب تعليقك هنا",
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    suffixIcon: IconButton(
                                        icon: Icon(Icons.send_outlined,
                                            color: Colors.green.shade900),
                                        onPressed: () {}),
                                    contentPadding: EdgeInsets.all(5),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60),
                                        borderSide:
                                            BorderSide(style: BorderStyle.none)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60),
                                        borderSide:
                                            BorderSide(style: BorderStyle.none)),
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                )),
                          ]),
                        )
                      ]),
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
/* 
Stack(children: [
            Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey))),
                      child: Row(children: [
                        IconButton(
                            icon: Icon(Icons.camera_alt_outlined,
                                color: Colors.purple),
                            onPressed: () {}),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            width: MediaQuery.of(context).size.width - 70,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "أكتب تعليقك هنا",
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.send_outlined
                                     , color: Colors.green.shade900),
                                    onPressed: () {}),
                                contentPadding: EdgeInsets.all(5),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60),
                                    borderSide:
                                        BorderSide(style: BorderStyle.none)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60),
                                    borderSide:
                                        BorderSide(style: BorderStyle.none)),
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            )),
                      ]),
                    )
                  ]),
                )),
            Positioned(
        top: 30,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 70,
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                listTileComments("أمنه محمد علي",
                "700\$ ينفع :)"),
                 listTileComments("عائشة محمود",
                "تقبل مقايضة iphone 11 pro max  مع دفع فرق"),
                 listTileComments("خالد حمد النيل",
                "لدي جوال مثله للبيع "),
                 listTileComments("Wael Abo Ahmed",
                "Yesterday i bought like your phone it's sooo wonderful and it has high possibilies |(^_^)|",),
                 listTileComments("عاصم علي موسي",
                "دا بلعبني فري فاير ^_^ + اشتريت"),
                 listTileComments("Lisa Shikhar bani",
                 "I wanna it with any price :( just now , where is ur location ...!"),
                 listTileComments("عاصم محمد نورين",
                "هل لا يزال هذا المنتج متوفر ؟؟؟"),
                 listTileComments("أمنه محمد علي",
                "700\$ ينفع :)"),
                 listTileComments("عائشة محمود",
                "تقبل مقايضة iphone 11 pro max  مع دفع فرق"),
                 listTileComments("خالد حمد النيل",
                "لدي جوال مثله للبيع "),
                 listTileComments("Wael Abo Ahmed",
                "Yesterday i bought like your phone it's sooo wonderful and it has high possibilies |(^_^)|",),
                 listTileComments("عاصم علي موسي",
                "دا بلعبني فري فاير ^_^ + اشتريت"),
                 listTileComments("Lisa Shikhar bani",
                 "I wanna it with any price :( just now , where is ur location ...!"),
                 listTileComments("عاصم محمد نورين",
                "هل لا يزال هذا المنتج متوفر ؟؟؟"),
            
              ])),
        ))
          ]),
*/