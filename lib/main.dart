import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_taskk/core/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(428, 926),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.intitlRoutes,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
