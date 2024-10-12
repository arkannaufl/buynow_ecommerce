import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../preferences/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/arrowleft.svg',
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Profile',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColor.primaryDark,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Profile',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryDark,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/pp.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 17),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Arkan',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryDark,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '@arkannaufl',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              color: AppColor.grayChateau,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const ItemProfile(
                    title: 'My Orders',
                    subtitle: 'Already have 12 orders',
                  ),
                  const ItemProfile(
                    title: 'Shipping Addresses',
                    subtitle: '3 Addresses',
                  ),
                  const ItemProfile(
                    title: 'Payment methods',
                    subtitle: 'GoPay 082262818868',
                  ),
                  const ItemProfile(
                    title: 'Promo Codes',
                    subtitle: 'You have special cashback of Rp.500.000',
                  ),
                  const ItemProfile(
                    title: 'My Reviews',
                    subtitle: 'Reviews for 4 items',
                  ),
                  const ItemProfile(
                    title: 'Settings',
                    subtitle: 'Notifications, password',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemProfile extends StatelessWidget {
  final String title;
  final String subtitle;

  const ItemProfile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColor.primaryDark
                ),
              ),
              const SizedBox(height: 2,),
              Text(
                subtitle,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grayChateau,
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/icons/arrownext.svg'
          )
        ],
      ),
    );
  }
}
