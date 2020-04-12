import 'package:flutter/material.dart';

import './Transaction_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;
  final Function _deleteTxn;

  TransactionList(this._userTransactions, this._deleteTxn);

  @override
  Widget build(BuildContext context) {
    return
        // ListView = SingleChildScrollView + Column
        _userTransactions.isEmpty
            ? LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'No transactions added yet!',
                        style: Theme.of(context).textTheme.title,
                      ),
                      Container(
                        height: constraints.maxHeight * 0.4,
                        child: Image.asset(
                          'assets/images/sleep.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  );
                },
              )
            : ListView(
                children: _userTransactions
                    .map(
                      (tx) => TransactionItem(
                        // Add a key bcs a list has stange behavior when delete a element from a list
                        key: ValueKey(tx.id),
                        userTransaction: tx,
                        deleteTxn: _deleteTxn,
                      ),
                    )
                    .toList());
  }
}
