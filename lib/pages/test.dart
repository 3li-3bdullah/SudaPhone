// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// class Test extends StatefulWidget {
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   File _file;
//   Future pickercamera() async {
//     final myfile = await ImagePicker().getImage(source: ImageSource.gallery);
//     setState(() {
//       _file = File(myfile.path);
//     });
//   }

//   Future upload() async {
//     if (_file == null) return;
//     String base64 = base64Encode(_file.readAsBytesSync());
//     String imagename = _file.path.split("/").last;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Upload Image"),
//       ),
//       body: Column(children: <Widget>[
//         RaisedButton(
//           onPressed: pickercamera,
//           child: Text("Get Image"),
//         ),
//         Center(
//             child:
//                 _file == null ? Text("Image Not Selected") : Image.file(_file)),
//         RaisedButton(
//           onPressed: upload,
//           child: Text("Upload Image"),
//         ),
//       ]),
//     );
//   }
// }
