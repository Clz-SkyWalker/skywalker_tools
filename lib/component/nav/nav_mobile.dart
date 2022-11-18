import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/res/export.dart';

class NavMobileComp extends StatefulWidget {
  const NavMobileComp({super.key, required this.controller});

  final PageController controller;

  @override
  State<NavMobileComp> createState() => _NavMobileCompState();
}

class _NavMobileCompState extends State<NavMobileComp> {
  final _iconsMap = {
    S.current.appName: Icons.home,
    S.current.enumHost: Icons.add
  };
  int _position = 0;

  @override
  void initState() {
    _position = widget.controller.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _position,
      onTap: (int index) {
        widget.controller.jumpToPage(index);
        setState(() {
          _position = index;
        });
      },
      elevation: 5,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.surface,
      items: _iconsMap.keys
          .map(
            (e) => BottomNavigationBarItem(
              label: e,
              icon: Icon(_iconsMap[e]),
            ),
          )
          .toList(),
    );
  }
}
