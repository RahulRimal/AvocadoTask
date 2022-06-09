import 'package:avocado_flutter_task/screens/view_order_screen.dart';
import 'package:flutter/material.dart';

import 'screens/list_of_order_screen.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        title: 'Medecine Prescription App',
        
        // home: ListOfOrderScreen(),
        home: ViewOrderScreen(),
        
        
      );
  }
}