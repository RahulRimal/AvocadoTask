import 'package:avocado_flutter_task/helpers/date_helper.dart';
import 'package:avocado_flutter_task/models/prescription.dart';
import 'package:flutter/material.dart';

import '../managers/color_manager.dart';
import '../screens/view_order_screen.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key, required this.prescription}) : super(key: key);
  final Prescription prescription;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(ViewOrderScreen.routeName, arguments: prescription),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
        color: ColorManager.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 3,
        shadowColor: Colors.grey,
        // margin: EdgeInsets.all(10),
        child: Column(
          children: [
            
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: ColorManager.containerBackground,
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                SizedBox(
              height: 60,
              child: Center(
                child: Text(
                  // 'Jenny Yohana',
                  prescription.patientName,
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
                  backgroundColor: ColorManager.circularAvatarBackground,
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
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          // '10:30',
                          prescription.consultationTime,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today_outlined,
                          color: ColorManager.secondary,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          // '06 May 2021',
                          DateHelper.getDateWithMonthShortName(prescription.prescriptionDate),
                          // DateHelper.getMonthShortNameFromDate(prescription.prescriptionDate),
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      // 'Prescription consultation',
                      prescription.prescriptionDetails,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    width: 30,
                    height: 30,
                    child: CheckboxListTile(
                      tileColor: ColorManager.secondary,
                      checkColor: Colors.white,
                      activeColor: ColorManager.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      value: true,
                      onChanged: (value) {},
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              height: 60,
              decoration: const BoxDecoration(
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
