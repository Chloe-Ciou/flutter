import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem({
    Key key,
    @required Transaction userTransaction,
    @required Function deleteTxn,
  })  : _userTransaction = userTransaction,
        _deleteTxn = deleteTxn,
        super(key: key);

  final Transaction _userTransaction;
  final Function _deleteTxn;

  @override
  _TransactionItemState createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  Color _bgColor;

  @override
  void initState() {
    const availableColors = [
      Colors.blue,
      Colors.amber,
      Colors.purple,
      Colors.lightGreen,
      Colors.black,
    ];

    // dont need to use setState inside initState() function
    _bgColor = availableColors[Random().nextInt(5)];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _bgColor,
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: FittedBox(
              child: Text(
                  '\$${widget._userTransaction.amount.toStringAsFixed(2)}'),
            ),
          ),
        ),
        title: Text(
          widget._userTransaction.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(widget._userTransaction.date),
        ),
        // MediaQuery.of(context).size.width > 460 showing content based on device size
        trailing: MediaQuery.of(context).size.width > 460
            ? FlatButton.icon(
                textColor: Theme.of(context).errorColor,
                icon: const Icon(Icons.delete),
                // const means this widget will never change, when rebuilds the tree
                label: const Text('Delete'),
                onPressed: () => widget._deleteTxn(widget._userTransaction.id),
              )
            : IconButton(
                icon: const Icon(Icons.delete),
                color: Theme.of(context).errorColor,
                onPressed: () => widget._deleteTxn(widget._userTransaction.id),
              ),
      ),
    );
  }
}
