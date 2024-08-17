import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/my_text_widget.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyTextWidget(text: "404 - Page is not here, sorry!!!"),
    );
  }
}
