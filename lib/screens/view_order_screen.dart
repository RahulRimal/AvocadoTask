import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../managers/color_manager.dart';

class ViewOrderScreen extends StatelessWidget {
  const ViewOrderScreen({Key? key}) : super(key: key);


  _prescriptionInfo(String title, String info) {
    List<Widget> list = [];

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
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(child: Text('Prescription')),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            // color: ColorManager.containerBackground,
            // borderRadius: BorderRadius.circular(20),
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image.asset(
                //   'assets/images/no_pic.png',
                // ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2017/06/27/08/08/cloud-2446630__340.jpg',
                  height: 70,
                  width: 70,
                ),

                Image.network(
                  'https://cdn.pixabay.com/photo/2017/06/27/08/08/cloud-2446630__340.jpg',
                  height: 70,
                  width: 70,
                ),

                Image.network(
                  'https://cdn.pixabay.com/photo/2017/06/27/08/08/cloud-2446630__340.jpg',
                  height: 70,
                  width: 70,
                ),

                // Image.network(
                //   'https://cdn.pixabay.com/photo/2017/06/27/08/08/cloud-2446630__340.jpg',
                // height: 70,
                //   width: 70,
                // ),
              ],
            ),
            ..._prescriptionInfo('Patient Name', 'Samyam bahadur bc'),
            
            
            SizedBox(
              height: 10,
            ),
            ..._prescriptionInfo('Tite for medicine', 'High fever & cough'),
            
            SizedBox(
              height: 10,
            ),
            ..._prescriptionInfo('Signature', '46383847938938023'),
            
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: ColorManager.secondary,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5),
                      color: ColorManager.secondary,
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                              color: ColorManager.primary,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                '2022',
                                
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                              color: ColorManager.primary,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                '/02',
                                
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 70,
                            height: 35,
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text(
                                '/28',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
            child: Text('Saved'),
            style: ElevatedButton.styleFrom(
              primary: ColorManager.primary,
              minimumSize: Size.fromHeight(50),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {}),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.grey,
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       // icon: FaIcon(FontAwesomeIcons.),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.folderPlus),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.bookOpen),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.circleUser),
      //       label: "",
      //     ),
      //   ],
      // ),
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