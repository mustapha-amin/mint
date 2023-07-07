import 'package:flutter/material.dart';
import 'package:mint/consts.dart';
import 'package:mint/textstyle.dart';

class CardAndIcon extends StatelessWidget {
  const CardAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.80,
          height: size.height * 0.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 28, 58, 107),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mint wallet",
                    style: kTextStyle(17, Colors.white),
                  ),
                ],
              ),
              Text(
                "$nairaSymbol 2,908,343.34",
                style: kTextStyle(23, Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mustapha Amin",
                    style: kTextStyle(17, Colors.white),
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 3),
          width: size.width * 0.05,
          height: size.width * 0.05,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 28, 58, 107),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            size: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
