import 'package:flutter/material.dart';

class ListOfOrderScreen extends StatelessWidget {
  const ListOfOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Orders'),
      ),
      body: Center(
        child: Text('List of Orders'),
      ),
    );
  }
}