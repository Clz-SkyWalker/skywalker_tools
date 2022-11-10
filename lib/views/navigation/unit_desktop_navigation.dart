import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            label: Text('菜单',style: TextStyle(
              color: Colors.grey,fontSize: 20.sp,
            ),),),
          NavigationRailDestination(
              icon: const Icon(Icons.signal_cellular_connected_no_internet_4_bar),
              label: Text('host加速',style: TextStyle(
                color: Colors.grey,fontSize: 20.sp,
              ),),),
          const NavigationRailDestination(
              icon: Icon(Icons.video_camera_back_outlined),
              label: Text('视频会议'),),
          const NavigationRailDestination(
              icon: Icon(Icons.book_outlined), label: Text('通讯录'),),
          const NavigationRailDestination(
              icon: Icon(Icons.cloud_upload_outlined), label: Text('云文档'),),
          const NavigationRailDestination(
              icon: Icon(Icons.games_sharp), label: Text('工作台'),),
          const NavigationRailDestination(
              icon: Icon(Icons.calendar_month), label: Text('日历'),),
        ],
      ),
    );
  }
}
