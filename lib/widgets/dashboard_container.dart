import 'package:flutter/material.dart';

class DashboardContainer extends StatelessWidget {
  final String name;
  final Color color;
  final int count;
  DashboardContainer({
    required this.color,
    required this.count,
     required this.name
});


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
            child: Row(
              children: [
                Text(name.toUpperCase(),style: const  TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(count.toString().toUpperCase(),style: const  TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 20,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
