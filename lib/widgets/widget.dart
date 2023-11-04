import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';



class CarWidget extends StatelessWidget {
  final Car car;
  final index;

  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: ListTile(
        isThreeLine: true,
        title: Text(
          car.brand, 
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        subtitle: 
        Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text:'Model:  ${car.model},  Color: ${car.color},  Price:  ${car.price}',style: TextStyle(
                  color: Colors.black, fontSize: 20)),
                    WidgetSpan(
                      child: Icon(Icons.attach_money_outlined, color: Colors.black,) )
                  ]
                  )
              ),
        leading: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Text(
              index.toString(),
              style: TextStyle(
                  color: Colors.black, fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (car.availability)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text:'Available  ',style: TextStyle(
                  color: Colors.black, fontSize: 20)),
                    WidgetSpan(
                      child: Icon(Icons.check, color: Colors.green,) )
                  ]
                  )
              )
            else
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text:'Not available  ',style: TextStyle(
                  color: Colors.black, fontSize: 20)),
                    WidgetSpan(
                      child: Icon(Icons.close, color: Colors.red,) )
                  ]
                  )
              )  
          ],
        ),
      ),
    );
  }
}