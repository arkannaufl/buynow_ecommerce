import 'package:buynowecommerce/features/home/productdetail.dart';
import 'package:buynowecommerce/features/home/recommendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buynowecommerce/features/preferences/colors.dart';
import 'models/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data untuk gambar dan teks
    final List<Map<String, String>> categories = [
      {
        'image': 'assets/images/phones.png',
        'text': 'Phones',
      },
      {
        'image': 'assets/images/tablet.png',
        'text': 'Tablets',
      },
      {
        'image': 'assets/images/watches.png',
        'text': 'Smartwatches',
      },
      {
        'image': 'assets/images/laptop.png',
        'text': 'Laptops',
      },
      {
        'image': 'assets/images/charger.png',
        'text': 'Accessories',
      },
      {
        'image': 'assets/images/accessories.png',
        'text': 'Headphones &\nEarbuds',
      },
      {
        'image': 'assets/images/gamingphones.png',
        'text': 'Gaming\nPhones',
      },
      {
        'image': 'assets/images/smarthome.png',
        'text': 'Smart Home \nDevices',
      },
    ];

    // Daftar produk
    const List<Product> products = [
      Product(
        imageUrl: 'assets/images/iphone12.png',
        title: 'Apple iPhone 12 64 GB',
        price: 'Rp. 6.900.000',
        rating: '4.8',
      ),
      Product(
        imageUrl: 'assets/images/macbookairm2.png',
        title: 'Macbook Air M2 256 GB',
        price: 'Rp. 14.700.000',
        rating: '4.5',
      ),
      Product(
        imageUrl: 'assets/images/airpodspro.png',
        title: 'AirPods Pro Gen 2',
        price: 'Rp. 3.400.000',
        rating: '4.3',
      ),
      Product(
        imageUrl: 'assets/images/pixel.png',
        title: 'Google Pixel 9 Pro',
        price: 'Rp. 13.340.000',
        rating: '4.7',
      ),
      Product(
        imageUrl: 'assets/images/galaxybudspro.png',
        title: 'Galaxy Buds Pro',
        price: 'Rp. 1.230.000',
        rating: '4.9',
      ),
      Product(
        imageUrl: 'assets/images/xiaomi14ultra.png',
        title: 'Xiaomi 14 Ultra',
        price: 'Rp. 22.000.000',
        rating: '5.0',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Arkan',
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryDark,
                          fontSize: 24,
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
                  ClipOval(
                    child: Image.asset(
                      'assets/images/pp.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColor.lightOrange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Apple Product',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColor.stormGray,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Up to 60%\nOff',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: AppColor.orangeSunshade,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Action to be performed on button press
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primaryDark,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 16,
                              ), // Button padding
                            ),
                            child: Text(
                              'Get It Now',
                              style: GoogleFonts.plusJakartaSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned Image
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Image.asset(
                          'assets/images/ip15pro.png',
                          height: 160,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Categories',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColor.primaryDark,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final category = categories[index];
                    return Column(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 65,
                            height: 65,
                            color: AppColor.cardGray,
                            child: Image.asset(
                              category['image']!,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          category['text']!,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColor.primaryDark,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 18);
                  },
                  itemCount: categories.length,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommendation',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColor.primaryDark,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeRecommendation(),
                        ),
                      );
                    },
                    child: Text(
                      'See All',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColor.orangeSunshade,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(index: index),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: AppColor.cardGray,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(product.imageUrl),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Image.asset(product.imageUrl),
                              ),
                              Positioned(
                                top: 15,
                                right: 15,
                                child: SvgPicture.asset(
                                  'assets/icons/love.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          product.title,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: AppColor.primaryDark,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.price,
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColor.stormGray,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/star.svg'),
                                const SizedBox(width: 4),
                                Text(
                                  product.rating,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColor.grayChateau,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
