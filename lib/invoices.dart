import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'detail.dart';
import 'models/invoice.dart';


class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoices'),
      ),
      body: ListView(
        children: [
          ...invoices.map(
            (e) => ListTile(
              title: Text(e.name),
              subtitle: Text(e.customer),
              trailing: Text('\$${e.totalCost().toStringAsFixed(2)}'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => DetailPage(invoice: e),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
