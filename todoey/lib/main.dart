import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoey/Views/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:todoey/Views/master_detail.dart';

// import 'Screens/task_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      
      builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: MasterDetailPage(),
    );
  }
}
