import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_challenge/core/routes/app_route.dart';


class RouteChallenge extends StatelessWidget {
  const RouteChallenge({super.key});

  

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
        );
      },
    );
  }
}
