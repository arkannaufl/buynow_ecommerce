import 'package:buynowecommerce/features/preferences/colors.dart';
import 'package:buynowecommerce/features/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              'Getting Started',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 24,
                color: AppColor.primaryDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Let\'s create your account here',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.grayChateau,
              ),
            ),
            const SizedBox(height: 42),
            // Full Name TextField
            _buildTextField(
              hintText: 'Your Full Name',
              labelText: 'Full Name',
              iconPath: 'assets/icons/user.svg',
            ),
            const SizedBox(height: 20),
            // Username TextField
            _buildTextField(
              hintText: 'Your Username',
              labelText: 'Username',
              iconPath: 'assets/icons/@at.svg',
            ),
            const SizedBox(height: 20),
            // Email TextField
            _buildTextField(
              hintText: 'Your email address',
              labelText: 'Email Address',
              iconPath: 'assets/icons/email.svg',
            ),
            const SizedBox(height: 20),
            // Password TextField
            _buildTextField(
              hintText: 'Your password',
              labelText: 'Password',
              iconPath: 'assets/icons/password.svg',
              obscureText: true,
            ),
            const SizedBox(height: 42),
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  backgroundColor: AppColor.primaryDark,
                ),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.stormGray,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      color: AppColor.orangeSunshade,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required String labelText,
    required String iconPath,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          iconPath,
          color: AppColor.grayChateau,
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 60,
          minHeight: 2,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.plusJakartaSans(
          color: AppColor.grayChateau,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.plusJakartaSans(
          color: AppColor.lightGray,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: AppColor.lightGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: AppColor.grayChateau),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: AppColor.lightGray),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 25.0),
      ),
    );
  }
}
