import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
  required  this.imageCat,
  required  this.text,
  required  this.onTap,
  });
  final String imageCat;
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                imageCat,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                child: Text(
              text,
              style: TextStyle(fontSize: 20),
            )),
          ],
        )),
        onTap: () {
          onTap();
        });
  }
}