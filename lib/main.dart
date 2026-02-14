import 'package:flutter/material.dart';

import 'core/app/app.dart';
import 'core/networking/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
 await DioHelper.init();
  runApp(const App());
}
