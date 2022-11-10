import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/utils/util_system.dart';
import 'package:skywalker_tools/views/navigation/bloc_wrapper.dart';
import 'package:skywalker_tools/views/navigation/sky_tools.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (UtilSystem.isPC()) {
    await UtilSystem.initPCConfig();
  }
  runApp(const BlocWrapper(child: SkyTools()));
}
