import 'package:flutter/material.dart';
import 'package:vigo_interview/app/welcome/presentation/ui/screens/welcome_screen.dart';
import 'package:vigo_interview/src/utils/scaler/scaler.dart';

class VigoInterview extends StatelessWidget {
  const VigoInterview({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScaleAware(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
