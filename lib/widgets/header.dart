import 'package:flutter/material.dart';
import '../utils/consts.dart';
import '../utils/textstyle.dart';

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
            Text("Total balance", style: kTextStyle(17)),
            Text("$nairaSymbol 285,908,343.34", style: kTextStyle(18)),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.visibility_outlined),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Icon(Icons.notifications_outlined),
                Positioned(
                  right: 6,
                  top: 4,
                  child: Badge(
                    textColor: Colors.red,
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
