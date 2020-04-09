import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './chartBar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;

      for (final txn in recentTransactions) {
        if (txn.date.day == weekDay.day &&
            txn.date.month == weekDay.month &&
            txn.date.year == weekDay.year) {
          totalSum += txn.amount;
        }
      }
      return {
        'day': DateFormat.E().format(weekDay),
        'amount': totalSum,
      };
      // reversed order
    }).reversed.toList();
  }

  double get totalSpending {
    return groupedTransactionValues.fold(
        0.0, (sum, item) => sum + item['amount']);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionValues.map((txn) {
            // c is used to distrubute child's space
            //return Flexible(
            // FlexFit.tight is used to avoid shriking of child
            // fit: FlexFit.tight,

            // Expanded = Expanded + fit: FlexFit.tight
            return Expanded(
              child: ChartBar(
                label: txn['day'],
                spendingAmount: txn['amount'],
                spendingPctOfTotal: totalSpending == 0.0
                    ? 0.0
                    : (txn['amount'] as double) / totalSpending,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
