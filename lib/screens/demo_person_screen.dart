import 'package:avocado_flutter_task/models/demo_person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/color_manager.dart';
import '../providers/demo_persons.dart';

class DemoPersonScreen extends StatelessWidget {
  const DemoPersonScreen({Key? key}) : super(key: key);
  static const routeName = '/demo-person-screen';

  _personInfo(String title, String info) {
    List<Widget> list = [];

    list.add(SizedBox(
      height: 10,
    ));

    list.add(Text(title));
    list.add(ListTile(
      horizontalTitleGap: 2,
      tileColor: ColorManager.listTileColor,
      leading: Icon(Icons.person_outline),
      title: Text(info),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ));
    list.add(SizedBox(
      height: 10,
    ));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    DemoPersons demoPersons = context.watch<DemoPersons>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(
          child: Text('Person Info through API'),
        ),
        backgroundColor: ColorManager.primary,
      ),
      body: FutureBuilder(
          future: demoPersons.getPerson(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error fetching information'),
                );
              } else {
                if (demoPersons.getPeople.length > 0) {
                  return ListView.builder(
                    itemCount: demoPersons.getPeople.length,
                    itemBuilder: (context, index){
                      List<Widget> list = [];
                      
                      list.addAll(_personInfo(
                        'Name',
                        demoPersons.getPeople[index].name,
                      ));
                      list.addAll(_personInfo(
                        'Username',
                        demoPersons.getPeople[index].username,
                      ));
                      list.addAll(_personInfo(
                        'Email',
                        demoPersons.getPeople[index].email,
                      ));
                      list.addAll(_personInfo(
                        'Phone',
                        demoPersons.getPeople[index].phone,
                      ));
                      list.addAll(_personInfo(
                        'Address',
                        demoPersons.getPeople[index].address,
                      ));

                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: list,
                        ),
                      );
                  });
                } else {
                  return Center(
                    child: Text('No data found'),
                  );
                }
              }
            }
          }),
    );
  }
}
