import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_taskk/core/theme/app_theme.dart';
import '../core/routes/app_routes.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder:(_,child){
        return MaterialApp(
          theme: getAppTheme(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.initialRoute,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
