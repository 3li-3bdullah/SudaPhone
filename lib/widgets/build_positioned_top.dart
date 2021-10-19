import 'package:flutter/material.dart';
import 'package:mobetech/constants.dart';

class BuildPositionedTop extends StatelessWidget {
  const BuildPositionedTop({
    
    required this.mdw,
    required this.showsignin,
  });

  final double mdw;
  final bool showsignin;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.7),

        /// the offset takes tow value hori and vertical hori will push it right with positive number and top with
        /// naigtive number and to bottom with positive number
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(mdw),
           color: showsignin ? kprimaryColor : Colors.green.shade900),
        ),
      ),
    ));
  }
}