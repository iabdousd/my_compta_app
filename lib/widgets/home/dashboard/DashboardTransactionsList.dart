import 'package:flutter/material.dart';
import 'package:my_compta_app/models/transaction/Transaction.dart';
import 'package:my_compta_app/widgets/transaction/TransactionListItem.dart';

class DashboardTransactionsList extends StatefulWidget {
  DashboardTransactionsList({Key key}) : super(key: key);

  @override
  _DashboardTransactionsListState createState() =>
      _DashboardTransactionsListState();
}

class _DashboardTransactionsListState extends State<DashboardTransactionsList> {
  List<Transaction> transactions = [
    Transaction(
      id: 1,
      title: 'iPhone X 256gb',
      createdAt: DateTime.now().subtract(
        Duration(hours: 1),
      ),
      amount: 21000.00,
      expense: false,
    ),
    Transaction(
      id: 1,
      title: 'Samsung Galaxy S11 64gb',
      createdAt: DateTime.now().subtract(
        Duration(days: 1, hours: 1),
      ),
      amount: 21000.00,
      expense: false,
    ),
    Transaction(
      id: 1,
      title: 'Cable USB (iPhone XS)',
      createdAt: DateTime.now().subtract(
        Duration(days: 2, hours: 1),
      ),
      amount: 300.00,
      expense: false,
    ),
    Transaction(
      id: 1,
      title: 'Bouteille de viens',
      createdAt: DateTime.now().subtract(
        Duration(days: 2, hours: 1),
      ),
      amount: 10.00,
      expense: true,
    ),
    Transaction(
      id: 1,
      title: 'Facture SOMELEC',
      createdAt: DateTime.now().subtract(
        Duration(days: 3),
      ),
      amount: 3400.00,
      expense: true,
    ),
    Transaction(
      id: 1,
      title: 'Le loyer du boutique #2',
      createdAt: DateTime.now().subtract(
        Duration(days: 3),
      ),
      amount: 4500.00,
      expense: true,
    ),
    Transaction(
      id: 1,
      title: 'Le loyer du boutique #1',
      createdAt: DateTime.now().subtract(
        Duration(days: 3),
      ),
      amount: 4000.00,
      expense: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final transactionsListTitleStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x25000000),
            blurRadius: 4,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x15000000),
            blurRadius: 6,
            spreadRadius: 2,
            offset: Offset(0, 8),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // HEADER
          Container(
            margin: EdgeInsets.only(
              top: 4.0,
              bottom: 12,
            ),
            child: Text(
              "Les dernieres transactions:",
              style: transactionsListTitleStyle,
              textAlign: TextAlign.left,
            ),
          ),

          // LIST
          ListView.builder(
            itemCount: transactions.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return TransactionListItem(
                transaction: transactions[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
