import 'package:flutter/material.dart';

class lifecyclescreen extends StatefulWidget {
  const new({super.key});

  @override
  State<lifecyclescreen> createState() => _lifecyclescreenState();
}

class _lifecyclescreenState extends State<lifecyclescreen> {
  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appLifecycleListener = AppLifecycleListener(
      onStateChange: (value) => {
        print("Print all state after app Forground: $value"),
      },
      onDetach: () => {print("Now screen is detach")},
      onInactive: () => {print("Now screen is onInactive")},
      onResume: () => {print("Now screen is onResume")},
      onPause: () => {print("Now screen is onPause")},
      onRestart: () => {print("Now screen is onRestart")},
      onShow: () => {print("Now screen is onShow")},
      onHide: () => {print("Now screen is onHide")},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("hii"));
  }
}
