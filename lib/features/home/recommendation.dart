import 'package:buynowecommerce/features/home/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/product_model.dart';

import '../preferences/colors.dart';

class HomeRecommendation extends StatelessWidget {
  const HomeRecommendation({super.key});

  // Daftar produk
  final List<Product> products = const [
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
    Product(
      imageUrl: 'assets/images/zflip.png',
      title: 'Z Flip 6 256 GB',
      price: 'Rp. 17.499.000',
      rating: '4.3',
    ),
    Product(
      imageUrl: 'assets/images/galaxywatch.png',
      title: 'Galaxy Watch 6',
      price: 'Rp. 4.999.000',
      rating: '4.6',
    ),
    Product(
      imageUrl: 'assets/images/magsafepb.png',
      title: 'KiiP Magsafe Powerbank',
      price: 'Rp. 499.000',
      rating: '4.4',
    ),
    Product(
      imageUrl: 'assets/images/ipadmini6.png',
      title: 'Apple iPad Mini 6 64 GB',
      price: 'Rp. 7.499.000',
      rating: '4.1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Recommendation',
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
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Menampilkan 2 item per baris
                crossAxisSpacing: 20, // Jarak horizontal antar item
                mainAxisSpacing: 20, // Jarak vertikal antar item
                childAspectRatio: 0.7, // Rasio ukuran item (lebar/tinggi)
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
                      const SizedBox(height: 8),
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
          ),
        ],
      ),
    );
  }
}
