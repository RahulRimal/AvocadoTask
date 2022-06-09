import 'package:avocado_flutter_task/managers/color_manager.dart';
import 'package:avocado_flutter_task/models/prescription.dart';
import 'package:avocado_flutter_task/screens/demo_person_screen.dart';
import 'package:avocado_flutter_task/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../data/priscription_api.dart';
import '../providers/prescriptions.dart';

class ListOfOrderScreen extends StatefulWidget {
  const ListOfOrderScreen({Key? key}) : super(key: key);

  static const routeName = '/list-of-order-screen';

  @override
  State<ListOfOrderScreen> createState() => _ListOfOrderScreenState();
}

class _ListOfOrderScreenState extends State<ListOfOrderScreen> {

   @override
  void initState()  {

    _fetchDataFromApi();
    
    super.initState();
  }

  _fetchDataFromApi() async
  {
    await PrescriptionApi.getPrescriptions();
  }


  @override
  Widget build(BuildContext context) {
    Prescriptions prescriptions = context.watch<Prescriptions>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
          child: Text('Completed order'),
        ),
        
        backgroundColor: ColorManager.primary,
      ),
      // body: ListView.builder(
      //   itemCount: 3,
      //   itemBuilder: (context, index) {
      //   return OrderCard();
      // }),
      body: FutureBuilder(
        builder: (context, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Consumer<Prescriptions>(
                builder: (context, prescriptions, child) => ListView.builder(
                  itemCount: prescriptions.prescriptions.length,
                  itemBuilder: (context, index) {
                    return OrderCard(
                      prescription: prescriptions.prescriptions[index],
                    );
                  },
                ),
              ),
      ),
      bottomNavigationBar: Card(
        elevation: 2,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                ),
                // icon: Icon(CupertinoIcons.house),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.folderPlus,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bookOpen,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.circleUser,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
