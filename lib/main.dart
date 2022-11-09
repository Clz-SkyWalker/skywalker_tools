import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/res/const/const_size.dart';
import 'package:skywalker_tools/app/utils/util_system.dart';
import 'package:skywalker_tools/views/navigation/bloc_wrapper.dart';
import 'package:skywalker_tools/views/navigation/sky_tools.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BlocWrapper(child: SkyTools()));
  if (UtilSystem.isPC()) {
    doWhenWindowReady(() {
      const initialSize = Size(ConstSize.desktopWidth, ConstSize.desktopHeight);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }
}
