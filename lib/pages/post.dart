import 'package:flutter/material.dart';
import '../compount/comments.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

//import 'package:shared_preferences/shared_preferences.dart';

class Post extends StatefulWidget {
  const Post({Key key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  File _file;
  final ImagePicker picker = ImagePicker();

  /// Start Upload image
  Future pickercamera() async {
    final myfile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _file = File(myfile.path);
      print(_file);
    });
  }

  // final ImagePicker _picker = ImagePicker();
  // Future pcamera() async {
  //   final File image = await _picker.pickImage(source: ImageSource.gallery);
   
  // }

  /*  Future pickercamera() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      _file = File(myfile.path);
      
    });
  }
*/
  /// Future upload() async {
  ///   if (_file == null) return;
  ///   String base64 = base64Encode(_file.readAsBytesSync());
  ///   String imagename = _file.path.split("/").last;
  /// }
  /// End Upload image

  var posts = [
    {
      'name': "باسل خالد حمدي",
      'content':
          " . السلام عليكم ورحمة الله ، شباب اريد جوال في حدود 2000\$ جديد"
    },
    {
      'name': "Aisha Al Nour",
      'content':
          "Hello :) , I've a telephone Oppo F17 Pro i wanna sell it for highest price .  "
    },
    {
      'name': "احمد طه عبدالله ",
      'content':
          "السلام عليكم ورحمة الله وبركاته ، لدي أجهزه Xiaomi و Realme من الشركة مع تخفيض عند شراء اكثر من جوال"
    },
    {
      'name': "Mayar Zain Alabdin",
      'content':
          " السلام عليكم ورحمة الله وبركاته ، اريد ان اشتري iPhone 12 Pro max مع التوصيل "
    },
    {
      'name': "Kamal Mohammed ",
      'content': "السلام عليكم ، اريد جوال S9 Plus مستعمل نضيف "
    },
    {
      'name': "تامر عبدالله ",
      'content':
          "Hi guys , I wanna buy phone Huawei Mate 40 pro with delivery to Chicago ..."
    }
  ];

  // var username;
  // var email;
  // getPre() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   var user = preferences.getString(username, email);
  //   print(user);
  // }

  // @override
  // void dispose() {
  //   getPre();
  //   super.dispose();
  // }

  bool debugShowCheckedModeBanner = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("المنشورات"),
        ),
        body: ListView(children: <Widget>[
          Card(
              child: Column(children: <Widget>[
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: TextFormField(
                maxLength: 255,
                maxLines: 10,
                minLines: 1,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "اضف جوال للبيع",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            IconButton(
              icon: Icon(Icons.camera_alt_outlined),
              onPressed: () => pickercamera(),
            ),
            Row(children: <Widget>[
              Expanded(
                  child: InkWell(
                onTap: () {},
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.grey.withOpacity(0.2)))),
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "اضف منشور",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Icon(Icons.add_box, color: Colors.purple),
                        ])),
              )),
            ]),
          ])),
          // This card under editinggggggg ---------------
          // The editing it has done with all peaceful :) ----
          Card(
            child: Column(children: <Widget>[
              ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("علي عبدالله",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                  trailing: IconButton(
                      icon: Icon(Icons.more_horiz), onPressed: () {}),
                  isThreeLine: true,
                  subtitle: Column(children: <Widget>[
                    Text(
                        "السلام عليكم شباب ،، لدي Huawei Mate 40 Pro إستعمال يومين فقط ، نضيف ومع كامل الملحقات البيع لأعلي سعر"),
                    Image.asset("example/images/product/huawei.jpg"),
                  ])),
              Divider(color: Colors.grey.withOpacity(0.2)),
              Row(children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Colors.grey))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "إعجاب",
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(width: 4),
                            Icon(Icons.thumb_up, color: Colors.blue),
                          ]),
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "تعليق",
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.comment, color: Colors.purple),
                        ]),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Comments();
                      }));
                    },
                  ),
                ),
              ]),
              Padding(padding: EdgeInsets.only(top: 5)),
            ]),
          ),
          //for (int i = 0; i < posts.length; i++)
          //PostList(name: posts[i]['name'], contentpost: posts[i]['content']),
          FutureBuilder(
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data.lenght,
                    itemBuilder: (BuildContext context, int i) {
                      return PostList(
                          name: snapshot.data[i]['name'],
                          contentpost: snapshot.data[i]['content']);
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ]),
      ),
    ));
  }
}

class PostList extends StatelessWidget {
  final name;
  final contentpost;
  PostList({this.name, this.contentpost});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person)),
          title: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))),
          trailing: IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
          isThreeLine: true,
          subtitle: Text(contentpost),
        ),
        Divider(color: Colors.grey.withOpacity(0.2)),
        Row(children: <Widget>[
          Expanded(
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(left: BorderSide(color: Colors.grey))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "إعجاب",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.thumb_up, color: Colors.blue),
                    ]),
              ),
              onTap: () {},
            ),
          ),
          Expanded(
            child: InkWell(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "تعليق",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.comment, color: Colors.purple),
                  ]),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Comments();
                }));
              },
            ),
          ),
        ]),
        Padding(padding: EdgeInsets.only(top: 5)),
      ]),
    );
  }
}
