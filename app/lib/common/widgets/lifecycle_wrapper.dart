import 'package:flutter/material.dart';

class LifecycleWrapper extends StatefulWidget {
  const LifecycleWrapper({
    super.key,
    required this.child,
    required this.onLifecycleChange,
  });

  final Widget child;
  final void Function(AppLifecycleState state) onLifecycleChange;

  @override
  State<LifecycleWrapper> createState() => _LifecycleWrapperState();
}

class _LifecycleWrapperState extends State<LifecycleWrapper>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    widget.onLifecycleChange(state);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
