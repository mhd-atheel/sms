import 'package:flutter/material.dart';

import '../constrains.dart';
import '../widgets/dashboard_container.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(backgroundColor: Colors.green,radius: 10,),
                Text(' Admin  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color:Colors.black,
                  ),
                ),
                SizedBox(width: 20,),
                CircleAvatar(child: Image.asset('assets/images/img.png')),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Atheel Mohamed  ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color:Constrains.mainColor,
                          ),
                        ),
                      ],
                    ),Row(
                      children: [
                        Text('aathilmazz1234@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color:Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  DashboardContainer(
                    color: Constrains.green,
                    count: 3415,
                    name: 'Students',
                  ),
                  DashboardContainer(
                    color: Constrains.blue,
                    count: 124,
                    name: 'Teacher',
                  ),
                  DashboardContainer(
                    color: Constrains.red,
                    count: 15,
                    name: 'Leaves',
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  DashboardContainer(
                    color: Constrains.pink,
                    count: 44,
                    name: 'Staffs',
                  ),
                  DashboardContainer(
                    color: Constrains.yellow,
                    count: 25000000,
                    name: 'Donations',
                  ),
                  DashboardContainer(
                    color: Constrains.orange,
                    count:18,
                    name: 'Subject',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
