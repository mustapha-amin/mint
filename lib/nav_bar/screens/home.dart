import 'package:flutter/material.dart';
import 'package:mint/widgets/card_and_icon.dart';
import 'package:mint/widgets/header.dart';
import 'package:mint/widgets/service.dart';
import 'package:mint/widgets/transaction_tile.dart';

import '../../utils/textstyle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
        child: ListView(
          children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bank cards",
                  style: kTextStyle(13),
                ),
                Text(
                  "See All >",
                  style: kTextStyle(13),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const CardAndIcon(),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: size.height * .17,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  Service(
                    iconbgColor: Colors.green,
                    iconData: Icons.wallet_outlined,
                    title: "Top-up",
                    description: "Add money to wallet",
                    color: Color.fromARGB(255, 231, 246, 244),
                  ),
                  Service(
                    iconbgColor: Colors.blue,
                    iconData: Icons.monetization_on,
                    title: "Transfer",
                    description: "Quickly transfer cash",
                    color: Color.fromARGB(255, 229, 241, 252),
                  ),
                  Service(
                    iconbgColor: Colors.amber,
                    iconData: Icons.monetization_on,
                    title: "Receive",
                    description: "Quickly receive cash",
                    color: Color.fromARGB(255, 254, 245, 227),
                  ),
                  Service(
                    iconbgColor: Colors.red,
                    iconData: Icons.sim_card,
                    title: "Airtime",
                    description: "Recharge mobile line",
                    color: Color.fromARGB(255, 255, 223, 224),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction history",
                    style: kTextStyle(15),
                  ),
                  Text(
                    "View all >",
                    style: kTextStyle(
                      13,
                      const Color.fromARGB(255, 28, 58, 107),
                    ),
                  ),
                ],
              ),
            ),
            const TransactionTile(
              name: 'Elon Musk',
              date: "28 June 2023",
              amount: "100,000",
            ),
            const TransactionTile(
              name: 'Mark Zuckerberg',
              date: "28 June 2023",
              amount: "150,000",
            ),
            const TransactionTile(
              name: 'Cristiano Ronaldo',
              date: "28 June 2023",
              amount: "350,000",
            ),
          ],
        ),
      ),
    );
  }
}
