import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  Rx<double> range = 0.0.obs; //again initialized it to a Rx<double>
  RxBool ismale=true.obs;

  void setRange(double range) {
    this.range.value = range; //updating the value of Rx Variable.
  }

  int counterHeight = 50; //again initialized it to a Rx<double>

  void setPlusHeight() {
      counterHeight++;
    update(); //updating the value of Rx Variable.
  }

  void setMinusHeight() {
    if (counterHeight <= 0) {
      counterHeight = 0;
    } else
      counterHeight--;
    update(); //updating the value of Rx Variable.
  }

  int counterAge = 10;

  void setPlusAge() {
      counterAge++;
    update(); //updating the value of Rx Variable.
  }

  void setMinusAge() {
    if (counterAge <= 0) {
      counterAge = 0;
    } else
      counterAge--;
    update(); //updating the value of Rx Variable.
  }
  int counterWeight = 50;

  void setPlusWeight() {
    counterWeight++;
    update(); //updating the value of Rx Variable.
  }

  void setMinusWeight() {
    if (counterWeight <= 0) {
      counterWeight = 0;
    } else
      counterWeight--;
    update(); //updating the value of Rx Variable.
  }
  Color color=Colors.teal[300]!;
  double result=0;
}
