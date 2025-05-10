import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:lic_assessment/presentation/home/homepage.dart' show HomePage;
import 'package:lic_assessment/presentation/navigator_bar.dart' show LicNavigatorBar;
import 'package:lic_assessment/utils/themes/lic_theme.dart' show LicAppTheme;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: LicAppTheme.lightModeTheme,
      darkTheme: LicAppTheme.darkModeTheme,
      home: LicNavigatorBar(),
    );
  }
}


