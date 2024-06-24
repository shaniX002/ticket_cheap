import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ticket_cheap/constant/theme.dart';

import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onBoarding = prefs.getBool("onBoarding") ?? false;
  runApp(MyApp(
    onBoarding: onBoarding,
  ));
}

class MyApp extends StatelessWidget {
  final bool onBoarding;
  const MyApp({super.key, this.onBoarding = false});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Cheap Ticket',
      theme: TTheme.lightTheme,
      routerConfig: MyAppRouter.getRouter(onBoarding),
    );
  }
}
