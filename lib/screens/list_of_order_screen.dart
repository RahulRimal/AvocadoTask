import 'package:flutter/material.dart';

import '../managers/color_manager.dart';

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
      body: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
        color: ColorManager.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 3,
        shadowColor: Colors.grey,
        // margin: EdgeInsets.all(10),
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: ColorManager.containerBackground,
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                Container(
              height: 60,
              child: Center(
                child: Text(
                  'Jenny Yohana',
                  
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: ColorManager.secondary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '10:30',
                          
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today_outlined,
                          color: ColorManager.secondary,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '06 May 2021',
                          
                          
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Prescription consultation',
                      
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                    width: 30,
                    // height: 30,
                    child: CheckboxListTile(
                      tileColor: ColorManager.secondary,
                      checkColor: Colors.white,
                      activeColor: ColorManager.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      value: true,
                      onChanged: (value) {},
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  // color: ColorManager.containerBackground,
                  ),
              child: Center(
                child: Text(
                  'Finished',
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
              ],),
            ),
          ],
        ),
      ),
      
    );
  }
}