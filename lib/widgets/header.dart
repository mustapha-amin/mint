import 'package:flutter/material.dart';
import 'package:mint/consts.dart';
import 'package:mint/textstyle.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total balance", style: kTextStyle(15)),
            Text(
              "$nairaSymbol 2,908,343.34",
              style: kTextStyle(17)
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.visibility_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.notifications_outlined),
          ],
        )
      ],
    );
  }
}
