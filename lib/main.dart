import 'package:flutter/material.dart';
import 'Views/desktop_body.dart';
import 'Views/mobile_body.dart';
import 'ResponsiveLayout/responsive_layout.dart';
import 'Views/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Averia",
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}
