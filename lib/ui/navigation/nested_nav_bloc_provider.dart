import 'package:flutter/material.dart';

import 'nested_nav_bloc.dart';

class NestedNavigatorsBlocProvider extends StatefulWidget {
  NestedNavigatorsBlocProvider({
    Key key,
    @required this.child,
    @required this.bloc,
  })  : assert(child != null),
        assert(bloc != null),
        super(key: key);

  final NestedNavigatorsBloc bloc;
  final Widget child;

  @override
  State<NestedNavigatorsBlocProvider> createState() =>
      _NestedNavigatorsBlocProviderState();

  /// Return a [NestedNavigatorsBloc] object if [context] from a child of [NestedNavigatorsBlocProvider] or [NestedNavigators].
  static NestedNavigatorsBloc of(BuildContext context) {
    NestedNavigatorsBlocProvider provider =
        context.ancestorWidgetOfExactType(NestedNavigatorsBlocProvider);
    return provider?.bloc;
  }
}

class _NestedNavigatorsBlocProviderState
    extends State<NestedNavigatorsBlocProvider> {
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
