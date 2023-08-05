import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goddchen_cv/flavors.dart';

FutureOr<void> main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final Scaffold scaffold = Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
    );
    return MaterialApp(
      title: F.title,
      home: F.appFlavor == Flavor.develop || kDebugMode
          ? Banner(
              message: F.name,
              location: BannerLocation.topStart,
              child: scaffold,
            )
          : scaffold,
    );
  }
}
