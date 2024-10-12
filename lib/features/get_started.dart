import 'package:buynowecommerce/features/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buynowecommerce/features/sign_in.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: SafeArea(
              child: Column(
                children: [
                  const Spacer(),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'One best application for all \n your gadget needs',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryDark,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Easy shopping for all your gadget needs\njust in hand, trusted by millions\nof people in the world',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.grayChateau,
                          ),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignIn()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 120,
                              vertical: 23,
                            ),
                            backgroundColor: AppColor.primaryDark,
                          ),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 48,),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.stormGray,
                        ),
                        children: const [
                          TextSpan(
                            text: 'By Tapping “Get Started” and using buynow app, you’re agreeing to ',),
                          TextSpan(
                            text: 'our terms of services',
                            style: TextStyle(
                              color: AppColor.orangeSunshade,
                            ),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'privacy policy.',
                            style: TextStyle(
                              color: AppColor.orangeSunshade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
