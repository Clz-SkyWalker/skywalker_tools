import 'package:flutter/material.dart';
import 'package:skywalker_tools/component/nav/nav_desktop.dart';

class UnitDesktopNavigation extends StatelessWidget {
  const UnitDesktopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NavDesktopComp(),
        ],
      ),
    );
  }
}
