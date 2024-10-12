import 'package:buynowecommerce/features/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/home.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isChecked = false;

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
                    'Checkout',
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
                    'Delivery Address',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryDark,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.cardGray,
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 70,
                            height: 50,
                            child: Image.asset(
                              'assets/images/maps.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColor.primaryDark,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Jl. Raya Jonggol-Dayeuh, Sukanegara...',
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColor.grayChateau,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrownext.svg',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Divider(color: AppColor.grayDivider),
                  const SizedBox(height: 24),
                  Text(
                    'BStore Jakarta',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryDark,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.cardGray,
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              'assets/images/iphone12.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Apple iPhone 12 64 GB',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColor.primaryDark,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Blue',
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColor.grayChateau,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rp. 6.900.000',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.stormGray,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'x2',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.stormGray,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildCartItem(),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const Divider(color: AppColor.grayDivider),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Shipment',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryDark,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColor.grayDivider,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColor.cardGray,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset('assets/images/gojek.png'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'GoSend Sameday',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.primaryDark,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Arrived on 31 Oct 2024',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.grayChateau,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset('assets/icons/arrownext.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Payment Method',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryDark,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColor.grayDivider,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColor.cardGray,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset('assets/images/gopay.png'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'GoPay',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.primaryDark,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Rp. 25.000.000',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.grayChateau,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset('assets/icons/arrownext.svg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            const Divider(color: AppColor.grayDivider),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      border: Border.all(
                        color: AppColor.lightGray,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/voucher.svg',
                            height: 20,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Use Voucher',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.grayChateau,
                            ),
                          ),
                          const Spacer(),
                          Container(
                              width: 110,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: AppColor.greenColor
                                  ),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Discount 20%',
                                  style: GoogleFonts.plusJakartaSans(
                                      color: AppColor.greenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              )
                          ),
                          const SizedBox(width: 16,),
                          SvgPicture.asset('assets/icons/arrownext.svg')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.grayChateau,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'Rp. 6.900.000', // Fixed extra "Rp."
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryDark,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            // Show popup dialog on checkout button click
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    'Success',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.primaryDark,
                                    ),
                                  ),
                                  content: Text(
                                    'Your purchase has been successfully made!',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.grayChateau,
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        // Close the dialog and navigate to HomePage
                                        Navigator.of(context).pop();
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(builder: (context) => const HomePage()),
                                        );
                                      },
                                      child: Text(
                                        'Close',
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.primaryDark,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 23),
                            backgroundColor: AppColor.primaryDark,
                          ),
                          child: Text(
                            'Checkout',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isChecked ? AppColor.primaryDark : AppColor.lightGray,
                width: 2,
              ),
              color: isChecked ? AppColor.primaryDark : Colors.white,
            ),
            child: isChecked
                ? const Icon(
              Icons.check,
              size: 16,
              color: Colors.white,
            )
                : const SizedBox.shrink(),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          'Shipping Insurance',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColor.primaryDark,
          ),
        ),
        const SizedBox(width: 8,),
        SvgPicture.asset(
          'assets/icons/questionmark.svg',
          height: 20,
          width: 20,
        )
      ],
    );
  }
}