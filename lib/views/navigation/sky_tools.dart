import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skywalker_tools/app/blocs/global/global_bloc.dart';
import 'package:skywalker_tools/app/res/const/const_size.dart';
import 'package:skywalker_tools/app/router/router_manager.dart';
import 'package:skywalker_tools/app/utils/util_system.dart';

class SkyTools extends StatelessWidget {
  const SkyTools({super.key});

  @override
  Widget build(BuildContext context) {
    final size = getScreenSize();
    return ScreenUtilInit(
      designSize: size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (ctx, child) {
        return BlocBuilder<GlobalBloc, GlobalState>(
          builder: (_, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Sky tools',
              routerConfig: RouterManager.router,
            );
          },
        );
      },
    );
  }

  Size getScreenSize() {
    if (UtilSystem.isPC()) {
      return const Size(
        ConstSize.desktopScreenWidth,
        ConstSize.desktopScreenHeight,
      );
    } else {
      return const Size(
          ConstSize.mobileScreenWidth, ConstSize.mobileScreenHeight,);
    }
  }
}