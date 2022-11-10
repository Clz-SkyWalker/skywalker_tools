import 'dart:io';
import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/res/const/const_system.dart';
import 'package:window_manager/window_manager.dart';

class UtilSystem {
  static Future<void> initPCConfig() async {
    await windowManager.ensureInitialized();
    const windowOptions = WindowOptions(
      title: ConstSystem.title,
      size: Size(ConstSystem.desktopWidth, ConstSystem.desktopHeight),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.normal,
    );
    await windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  // 是否为 pc 端
  static bool isPC() {
    if (Platform.isWindows ||
        Platform.isMacOS ||
        Platform.isMacOS ||
        Platform.isFuchsia) {
      return true;
    }
    return false;
  }
}
