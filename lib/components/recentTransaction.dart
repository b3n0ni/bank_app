import 'package:bank_app/utilities/themeStyle.dart';
import 'package:bank_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.blueGrey,
                  letter: 'L',
                  title: 'Leet Code',
                  subTitle: 'Leet Code premium',
                  price: '- 2450 rs.',
                ),
                TransactionCard(
                  color: Color(0xfffc1503),
                  letter: 'Y',
                  title: 'Youtube',
                  subTitle: 'Youtube Premium',
                  price: '- 179 rs.',
                ),
                TransactionCard(
                  color: Color(0xff1e1e1f),
                  letter: 'U',
                  title: 'Uber',
                  subTitle: 'Uber ride',
                  price: '- 535 rs.',
                ),
                TransactionCard(
                  color: Colors.redAccent,
                  letter: 'N',
                  title: 'Netflix',
                  subTitle: 'Netflix Subscription',
                  price: '- 299 rs.',
                ),
                TransactionCard(
                  color: Colors.amberAccent,
                  letter: 'F',
                  title: 'Flipkart',
                  subTitle: 'Gaming Mouse',
                  price: '- 400 rs.',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
