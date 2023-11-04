import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';
import 'package:kt5/models/CarData/CarData.dart';
import 'package:kt5/widgets/widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  var client = Dio();
  String url = 'https://myfakeapi.com/api/cars';
  List<Car> carList = [];
  void getNetworkData() async {
    var response = await client.get(url);
    carList = CarData.fromJson(response.data).cars;
    setState(() {});
  }

  @override
  void initState() {
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Cars')),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) {
          return CarWidget(car: carList[index], index: index + 1);
        },
      ),
    );
  }
}