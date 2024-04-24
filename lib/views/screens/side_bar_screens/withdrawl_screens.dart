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
      child: Container(
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
    );
  }
}
