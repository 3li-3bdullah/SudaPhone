import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';

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
          elevation: 2,
            child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                imageCat,
                fit: BoxFit.cover,
              ),
            ),
            Container(
               child: CustomText(
                 text: text,
                 fontSize: 20,
                 fontWeight: FontWeight.normal,
                 textAlign: TextAlign.center,
                 color: Colors.grey.shade900,
               ),
                ),
          ],
        )),
        onTap: () {
          onTap();
        });
  }
}