import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    // SystemUiOverlayStyle(statusBarColor: HexColor("#006494")),
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  // set orientation of device only portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main(this.initialRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: HexColor('#f1faee'),
          background: Colors.white,
          primary: Colors.black,
          secondary: Colors.blue,
          tertiary: Colors.grey.shade800,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
