import 'package:flutter/material.dart';

class WithdrawlScreens extends StatefulWidget {
  static const String routeName = '\WithdrawlScreens';

  @override
  State<WithdrawlScreens> createState() => _WithdrawlScreensState();
}

class _WithdrawlScreensState extends State<WithdrawlScreens> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Withdrawl',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader('Name', 1),
              _rowHeader('Amount', 3),
              _rowHeader('Bank Name ', 2),
              _rowHeader('Bank Account', 2),
              _rowHeader('Email', 1),
              _rowHeader('Phone', 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget _rowHeader(String text, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade700,
          ),
          color: Colors.yellow.shade900,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
