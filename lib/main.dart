import 'package:buynowecommerce/features/cart/cart.dart';
import 'package:buynowecommerce/features/favorite/favorite.dart';
import 'package:buynowecommerce/features/home/home.dart';
import 'package:buynowecommerce/features/preferences/colors.dart';
import 'package:buynowecommerce/features/profile/profile.dart';
import 'package:buynowecommerce/features/search/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  Widget buildItemNav(String iconPath, String label, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.porcelainGray : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              color: isSelected ? AppColor.primaryDark : AppColor.stormGray,
              height: 24.0,
              width: 24.0,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: isSelected
                  ? Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  label,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.primaryDark,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }


  List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    FavPage(),
    ProfilePage()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: ClipRRect(
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColor.porcelainGray,
                width: 1.0,
              ),
            ),
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildItemNav('assets/icons/home.svg', "Home", 0),
                  buildItemNav('assets/icons/search.svg', "Search", 1),
                  buildItemNav('assets/icons/cart.svg', "Cart", 2),
                  buildItemNav('assets/icons/love.svg', "Favorite", 3),
                  buildItemNav('assets/icons/user.svg', "Profile", 4),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }


}


