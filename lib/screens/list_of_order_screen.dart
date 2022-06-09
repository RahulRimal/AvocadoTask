import 'package:flutter/material.dart';

import '../managers/color_manager.dart';
import '../widgets/order_card.dart';

class ListOfOrderScreen extends StatelessWidget {
  const ListOfOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(child: Text('Completed order')),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return OrderCard();
        },
      ),
    );
  }
}
