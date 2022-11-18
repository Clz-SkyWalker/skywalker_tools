import 'package:flutter/material.dart';
import 'package:skywalker_tools/component/export.dart';
import 'package:skywalker_tools/views/home/view_home.dart';
import 'package:skywalker_tools/views/host/view_host.dart';

class UnitMobileNavigation extends StatefulWidget {
  const UnitMobileNavigation({super.key});

  @override
  State<UnitMobileNavigation> createState() => _UnitMobileNavigationState();
}

class _UnitMobileNavigationState extends State<UnitMobileNavigation> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const [
          ViewHome(),
          ViewHost(),
        ],
      ),
      bottomNavigationBar: NavMobileComp(
        controller: _controller,
      ),
    );
  }
}
