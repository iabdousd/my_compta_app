import 'package:flutter/material.dart';
import 'package:my_compta_app/widgets/home/dashboard/DashboardCharts.dart';
import 'package:my_compta_app/widgets/home/dashboard/DashboardHeader.dart';
import 'package:my_compta_app/widgets/home/dashboard/DashboardTransactionsList.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Column(
            children: [
              DashboardHeader(),
              DashboardCharts(),
              DashboardTransactionsList(),
            ],
          ),
        ),
      ),
    );
  }
}
