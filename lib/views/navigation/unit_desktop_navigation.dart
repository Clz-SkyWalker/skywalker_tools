import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skywalker_tools/app/res/export.dart';

class UnitDesktopNavigation extends StatelessWidget {
  const UnitDesktopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          navLeft(),
        ],
      ),
    );
  }

  Widget navLeft() {
    return SizedBox(
      width: 100.w,
      child: NavigationRail(
        selectedIndex: 0,
        // labelType:NavigationRailLabelType.all ,
        trailing: Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.w),
              child: const FlutterLogo(),
            ),
          ),
        ),
        destinations: <NavigationRailDestination>[
          NavigationRailDestination(
            icon: const Icon(Icons.menu),
            label: Text(
              S.current.enumDrawer,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
          ),
          NavigationRailDestination(
            icon: const Icon(Icons.signal_cellular_connected_no_internet_4_bar),
            label: Text(
              S.current.enumHost,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
