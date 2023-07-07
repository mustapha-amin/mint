import 'package:flutter/material.dart';
import '../utils/textstyle.dart';

class Service extends StatelessWidget {
  final IconData iconData;
  final String title, description;
  final Color color, iconbgColor;
  const Service({
    required this.iconData,
    required this.title,
    required this.description,
    required this.color,
    required this.iconbgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(right: 15),
      width: size.width * .40,
      height: size.height * .15,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 0.1,
        ),
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: iconbgColor,
            child: Icon(
              iconData,
              size: 20,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: kTextStyle(18),
              ),
              Text(
                description,
                style: kTextStyle(13, Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
