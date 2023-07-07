import 'package:flutter/material.dart';
import 'package:mint/consts.dart';
import 'package:mint/textstyle.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  const TransactionTile(
      {required this.name,
      required this.date,
      required this.amount,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 228, 228, 228),
        child: Text(name[0]),
      ),
      title: Text(
        name,
        style: kTextStyle(14),
      ),
      subtitle: Text(
        date,
        style: kTextStyle(
          12,
          Colors.grey,
        ),
      ),
      trailing: Text(
        '$nairaSymbol $amount',
        style: kTextStyle(14),
      ),
    );
  }
}
