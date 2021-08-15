import 'package:flutter/material.dart';
import 'package:ova_ha_tst/component/base_cubit/cubit.dart';

typedef StateBuilder<State> = Widget Function(BuildContext context, State state);

class CubitBuilder<State> extends StatelessWidget {
  final StateBuilder<State> builder;
  final BaseCubit<State> cubit;

  CubitBuilder({
    required this.cubit,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<State>(
      stream: cubit.stateStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();
        return builder(context, snapshot.data!);
      },
    );
  }
}
