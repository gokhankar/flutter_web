import 'package:flutter/material.dart';

import 'package:flutter_web/pages/about_page.dart';
import 'package:flutter_web/pages/blog_page.dart';
import 'package:flutter_web/pages/contact_page.dart';
import 'package:flutter_web/pages/error_page.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:flutter_web/pages/projects_page.dart';
import 'package:flutter_web/route/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return _getPageRoute(Home());
    case AboutPageRoute:
      return _getPageRoute(AboutPage());
    case ProjectsPageRoute:
      return _getPageRoute(ProjectsPage());
    case BlogPageRoute:
      return _getPageRoute(BlogPage());
    case ContactPageRoute:
      return _getPageRoute(ContactPage());
    default:
      return _getPageRoute(ErrorPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
