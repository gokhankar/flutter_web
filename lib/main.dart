import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web/constants/style.dart';
import 'package:flutter_web/controllers/menu_controller.dart';
import 'package:flutter_web/controllers/navigation_controller.dart';
import 'package:flutter_web/layout/layout.dart';
import 'package:flutter_web/pages/error_page.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:flutter_web/route/routes.dart';

void main() {
  Get.put(MenuControllerx());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: RootRoute, page: () => AppLayout()),
        GetPage(name: ErrorPageRoute, page: () => AppLayout()),
      ],
      initialRoute: RootRoute,
      unknownRoute: GetPage(
          name: "/error",
          page: () => ErrorPage(),
          transition: Transition.leftToRight),
      title: 'Gökhan Karaçay Portfolio',
      theme: ThemeData(
          scaffoldBackgroundColor: cLight,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black54),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          }),
          primaryColor: cLight),
      // home: AppLayout(),
    );
  }
}
