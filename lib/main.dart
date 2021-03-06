import 'package:avocado_flutter_task/providers/demo_persons.dart';
import 'package:avocado_flutter_task/providers/prescriptions.dart';
import 'package:avocado_flutter_task/screens/demo_person_screen.dart';
import 'package:avocado_flutter_task/screens/list_of_order_screen.dart';
import 'package:avocado_flutter_task/screens/view_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Prescriptions(),
        ),
        ChangeNotifierProvider(
          create: (context) => DemoPersons(),
        ),
      ],
      child: MaterialApp(
      
        debugShowCheckedModeBanner: false,
        title: 'Medecine Prescription App',
        home: const ListOfOrderScreen(),
        // home: ViewOrderScreen(),
        routes: {
          ListOfOrderScreen.routeName: (ctx) => const ListOfOrderScreen(),
          ViewOrderScreen.routeName: (ctx) => const ViewOrderScreen(),
          DemoPersonScreen.routeName: (ctx) => const DemoPersonScreen(),
        
        },
      ),
    );
  }
}