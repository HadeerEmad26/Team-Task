import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/routes/app_routes.dart';
import '../core/utils/app_text_style.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder:(_,child){
        return MaterialApp(
          theme: ThemeData(
              textTheme: TextTheme(
                  displaySmall:  regularStyle(fontSize: 12,color: Colors.white),
                  displayMedium: regularStyle(fontSize: 16,color: Colors.white),
                  displayLarge: regularStyle(fontSize: 24,color: Colors.white)
              )
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.initialRoute,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
