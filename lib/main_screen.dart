import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbiapp/result_screen.dart';

import 'get_controller.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller sx = Get.put(Controller());


    return Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 5),
            child: Column(children: [
              Stack(children: [
                Row(
                  children: [
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              sx.ismale.value = true;
                            },
                            child: GetX<Controller>(
                              builder: (controller) => Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: sx.ismale.value
                                        ? Colors.blue
                                        : Colors.teal[300],
                                    borderRadius:
                                        BorderRadiusDirectional.circular(25)),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("images/malee.png"),
                                      Text(
                                        "Male",
                                        style: TextStyle(
                                            color: Colors.amberAccent,
                                            fontSize: 30),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              sx.ismale.value = false;
                            },
                            child: GetX<Controller>(
                              builder: (controller) => Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: sx.ismale.value
                                        ? Colors.teal[300]
                                        : Colors.blue,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(25)),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("images/female.png"),
                                      Text(
                                        "Female",
                                        style: TextStyle(
                                            color: Colors.amberAccent,
                                            fontSize: 30),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))),
                  ],
                ),
              ]),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.teal[300],
                    borderRadius: BorderRadiusDirectional.circular(25)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style:
                            TextStyle(color: Colors.amberAccent, fontSize: 30),
                      ),
                      Obx(
                        () => Slider(
                          value: sx.range.toDouble(),
                          min: 0,
                          max: 255,
                          divisions: 255,
                          label: sx.range.round().toString(),
                          onChanged: (double value) {
                            sx.setRange(value);
                          },
                        ),
                      ),
                      Obx(() => Text(
                            "${sx.range.toInt()} cm",
                            style: TextStyle(
                                color: Colors.amberAccent, fontSize: 30),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GetBuilder<Controller>(
                  builder: (controller) => Stack(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.teal[300],
                                      borderRadius:
                                          BorderRadiusDirectional.circular(25)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "WEIGHT",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 30),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FloatingActionButton(
                                              backgroundColor: Colors.teal,
                                              child: Icon(Icons.add),
                                              onPressed: () {
                                                controller.setPlusWeight();
                                              },
                                            ),
                                            Text(
                                              "${controller.counterWeight}",
                                              style: TextStyle(
                                                  color: Colors.amberAccent,
                                                  fontSize: 40),
                                            ),
                                            FloatingActionButton(
                                              backgroundColor: Colors.teal,
                                              child: Icon(Icons.minimize),
                                              onPressed: () {
                                                controller.setMinusWeight();
                                              },
                                            ),
                                          ],
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
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.teal[300],
                                      borderRadius:
                                          BorderRadiusDirectional.circular(25)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "AGE",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 30),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FloatingActionButton(
                                              backgroundColor: Colors.teal,
                                              child: Icon(Icons.add),
                                              onPressed: () {
                                                controller.setPlusAge();
                                              },
                                            ),
                                            Text(
                                              "${controller.counterAge}",
                                              style: TextStyle(
                                                  color: Colors.amberAccent,
                                                  fontSize: 40),
                                            ),
                                            FloatingActionButton(
                                              backgroundColor: Colors.teal,
                                              child: Icon(Icons.minimize),
                                              onPressed: () {
                                                controller.setMinusAge();
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
              SizedBox(
                height: 20,
              ),
               Container(
                child: MaterialButton(
                  onPressed: () {
                   var h=sx.counterHeight / 100;
                    sx.result = sx.counterWeight / (pow(h, 2));
                    print(sx.result.round());
                    Get.to(() => ResultScreen());
                  },
                  child: Text("CALCULATE"),
                ),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.teal[300],
                    borderRadius: BorderRadiusDirectional.circular(15)),
              ),

            ])));
  }
}
