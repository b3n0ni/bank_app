import 'package:bank_app/components/appbar.dart';
import 'package:bank_app/components/card.dart';
import 'package:bank_app/components/recentTransaction.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(),
            CardsList(),
            RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
