import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbiapp/get_controller.dart';
import 'package:mbiapp/main_screen.dart';

class ResultScreen extends StatelessWidget {
  Controller sx = Get.put(Controller());


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          title: Text("BMI Result"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.teal[300],
                          borderRadius: BorderRadiusDirectional.circular(25)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gender : ${sx.ismale==true?"Male":"Female"}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.teal[300],
                          borderRadius: BorderRadiusDirectional.circular(25)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age : ${sx.counterAge}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.teal[300],
                    borderRadius: BorderRadiusDirectional.circular(25)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Result : ${sx.result.round()}",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(() => MainScreen());
                  },
                  child: Text("Main Screen"),
                ),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.teal[300],
                    borderRadius: BorderRadiusDirectional.circular(15)),
              ),
            ],
          ),
        ));
  }
}
