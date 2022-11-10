import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skywalker_tools/app/blocs/global/global_bloc.dart';
import 'package:skywalker_tools/app/res/const/const_system.dart';
import 'package:skywalker_tools/app/utils/util_system.dart';
import 'package:skywalker_tools/views/navigation/unit_desktop_navigation.dart';
import 'package:skywalker_tools/views/navigation/unit_phone_navigation.dart';

class UnitNavigation extends StatelessWidget {
  const UnitNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (_, c) => LayoutBuilder(
        builder: (_, c) {
          if (c.maxWidth > ConstSystem.desktopMinWidth || UtilSystem.isPC()) {
            return const UnitDesktopNavigation();
          }
          return const UnitPhoneNavigation();
        },
      ),
    );
  }
}
