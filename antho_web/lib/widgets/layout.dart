import 'package:flutter/material.dart';

import 'appbar.dart';
import 'drawer.dart';

class MyLayout extends StatelessWidget {
  final child;
  const MyLayout({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: width < 768 ?  MyDrawer() : null,
      appBar: const MyAppBar(),
      // ADA bottomNavigationBar: const Footer(),
      body: child,
    );
  }
}
