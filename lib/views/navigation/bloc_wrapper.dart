import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skywalker_tools/app/blocs/global/global_bloc.dart';

class BlocWrapper extends StatefulWidget {
  const BlocWrapper({super.key, required this.child});

  final Widget child;

  @override
  State<BlocWrapper> createState() => _BlocWrapperState();
}

class _BlocWrapperState extends State<BlocWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<GlobalBloc>(
        create: (_) => GlobalBloc(),
      ),
    ], child: widget.child,);
  }
}
