import 'dart:ffi';

import 'package:flutter_number_program/service/service.dart';

class Controller {
  ServiceProgram serviceprogram = new ServiceProgram();

  String startprogram(String number) {
    int formatNum = int.parse(number);
    return serviceprogram.calulate(formatNum);
  }
}
