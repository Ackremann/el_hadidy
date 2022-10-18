import 'package:eh_hadidy/config/routes.dart';
import 'package:eh_hadidy/core/color.dart';
import 'package:eh_hadidy/feature/splah/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "EG"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: const Locale("ar", "EG"),
      onGenerateRoute: onGenerateRoute,
      navigatorKey: navigatorKey, // OR Locale('ar', 'AE') OR Other RTL locales,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.blue,
        elevation: 0,
      )),
    );
  }
}
