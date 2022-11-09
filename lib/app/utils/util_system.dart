import 'dart:io';

class UtilSystem {
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
