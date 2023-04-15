import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sms/Screens/dashboard_screen.dart';
import 'package:sms/Screens/student_screen.dart';

import 'package:sms/Screens/teacher_screen.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int indexValue = 0;
  List naviagtionValue = [
    'Dashboard',
    'Students',
    'Teachers'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height:MediaQuery.of(context).size.height/1,
          width: MediaQuery.of(context).size.width/6,
          decoration: const BoxDecoration(
              color:Color(0xff4FA4F4),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: ListView.builder(
            itemCount: naviagtionValue.length,
            itemBuilder: (context,index){
              return Center(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      indexValue = index;
                    });
                    print(index);
                    print(indexValue);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:  BoxDecoration(
                        color:indexValue ==index?Colors.white :Color(0xff4FA4F4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: MediaQuery.of(context).size.width/7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(naviagtionValue.elementAt(index),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color:indexValue ==index? Color(0xff4FA4F4):Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
          ),
        ),
        if(indexValue ==0)
        const DashBoardScreen(),
        if(indexValue ==1)
          const Student(),
        if(indexValue ==2)
          const TeacherScreen(),
      ],
    );
  }
}
