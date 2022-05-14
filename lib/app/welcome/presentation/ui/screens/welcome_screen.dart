import 'package:flutter/material.dart';
import 'package:vigo_interview/src/res/assets/images/images.dart';
import 'package:vigo_interview/src/res/colors/colors.dart';
import 'package:vigo_interview/src/utils/scaler/scaler.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          kVigoPlaceIconImage,
          height: context.scaleY(24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: context.insetsSymetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            const YMargin(50),
            Image.asset(
              kWelcomeImage,
              height: context.scaleY(361),
            ),
            const YMargin(35),
            const Text(
              'Build connections.\nBuild wealth.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: kColorPrimary,
              ),
            ),
            const YMargin(20),
            Text(
              'Vigoplace integrates all of your personal, business and online interaction needs into one simple user-friendly application.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: kColorBlack.withOpacity(0.6),
              ),
            ),
            // Container(
            //   padding: context.insetsSymetric(
            //     vertical: 12,
            //   ),
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomCenter,
            //       colors: [
            //         Color(0xFF1FF1E3),
            //         kColorPrimary,
            //         kColorPrimary,
            //       ],
            //     ),
            //   ),
            //   child: const Center(
            //     child: Text(
            //       'Login',
            //     ),
            //   ),
            // ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF1FF1E3),
                    kColorPrimary,
                    kColorPrimary,
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  enableFeedback: true,
                  shadowColor: Colors.transparent,
                  primary: Colors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: SizedBox(
                  width: context.width,
                  child: const Center(
                    child: Text(
                      'Login',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
