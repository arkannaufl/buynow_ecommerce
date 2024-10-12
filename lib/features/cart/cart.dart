import 'package:buynowecommerce/features/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../preferences/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isChecked = false; // Controls both checkboxes
  int quantity = 1;
  final int productPrice = 6900000;
  int totalPrice = 0;

  @override
  void initState() {
    super.initState();
    _updateTotalPrice(); // Initialize total price based on checkboxes
  }

  void _updateTotalPrice() {
    setState(() {
      totalPrice = isChecked ? productPrice * quantity : 0;
    });
  }

  void _toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
      _updateTotalPrice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                  'Cart',
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
              children: [
                _buildCartItem(), // Store name with custom checkbox
                const SizedBox(height: 24),
                _buildProductItem(), // Product with custom checkbox
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Divider(color: AppColor.grayDivider),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    border: Border.all(color: AppColor.lightGray),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/voucher.svg', height: 20),
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
                          'Rp. ${totalPrice.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => "${m[1]}.")}',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CheckoutPage()),
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
    );
  }

  Widget _buildCartItem() {
    return Row(
      children: [
        GestureDetector(
          onTap: _toggleCheckbox,
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
        const SizedBox(width: 14),
        Text(
          'BStore Jakarta',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColor.primaryDark,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            // Action when "Edit" is pressed
          },
          child: Text(
            'Edit',
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColor.grayChateau,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProductItem() {
    return Row(
      children: [
        GestureDetector(
          onTap: _toggleCheckbox,
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
        const SizedBox(width: 14),
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
                    'Rp. ${productPrice.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => "${m[1]}.")}',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.stormGray,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity > 1) {
                              quantity--;
                              _updateTotalPrice();
                            }
                          });
                        },
                        child: SvgPicture.asset(
                          'assets/icons/minusicon.svg',
                          height: 20,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$quantity',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryDark,
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity++;
                            _updateTotalPrice();
                          });
                        },
                        child: SvgPicture.asset(
                          'assets/icons/plusicon.svg',
                          height: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
