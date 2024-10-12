import 'package:buynowecommerce/features/home/models/product_model_detail.dart';
import 'package:buynowecommerce/features/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/product_model_detail.dart';

class ProductDetail extends StatelessWidget {
  final int index; // Add index to get the correct product

  const ProductDetail({super.key, required this.index}); // Pass index in constructor

  @override
  Widget build(BuildContext context) {
    List<ProductModelDetail> products = [
      ProductModelDetail(
          imageUrl: 'assets/images/appleiphone1264gb.png',
          title: 'Apple iPhone 12 64 GB',
          price: 'Rp. 6.900.000',
          rating: '4.8',
          description: 'Discover the perfect blend of style and functionality with the Apple iPhone 12 64 GB. Featuring a vibrant Super Retina XDR display, it offers stunning visuals and immersive experiences. Powered by the A14 Bionic chip, this smartphone ensures lightning-fast performance and seamless multitasking. With a dual-camera system, you can capture breathtaking photos and videos, while its sleek design fits comfortably in your hand. The iPhone 12 is designed to keep you connected all day long, making it the ideal companion for your everyday adventures',
          sold: '20'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/macbookairm2256gb.png',
          title: 'Macbook Air M2 256 GB',
          price: 'Rp. 14.700.000',
          rating: '4.5',
          description: 'Experience unparalleled performance with the sleek and powerful MacBook Air M2. Equipped with 256GB storage, it delivers lightning-fast speeds and efficient multitasking. The ultra-thin design, stunning Retina display, and all-day battery life make it perfect for professionals on the go. "....',
          sold: '42'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/airpodsprogen2.png',
          title: 'AirPods Pro Gen 2',
          price: 'Rp. 3.400.000',
          rating: '4.3',
          description: 'Experience audio like never before with the AirPods Pro Gen 2. Engineered for the ultimate listening experience, these wireless earbuds feature advanced Active Noise Cancellation technology, allowing you to immerse yourself in your favorite music without distractions. The transparency mode lets you stay aware of your surroundings while still enjoying high-quality sound. With a customizable fit and sweat and water resistance, the AirPods Pro Gen 2 are perfect for any activity, whether youre working out or commuting. Enjoy longer listening time with improved battery life, and seamlessly connect to your Apple devices for a smooth and effortless experience.',
          sold: '12'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/googlepixel9pro.png',
          title: 'Google Pixel 9 Pro',
          price: 'Rp. 13.340.000',
          rating: '4.7',
          description: 'Unleash the power of innovation with the Google Pixel 9 Pro, designed to elevate your smartphone experience. Featuring a stunning display with vibrant colors and sharp details, this flagship device is perfect for streaming videos and gaming. The advanced camera system, equipped with cutting-edge computational photography, captures stunning images in any lighting condition, ensuring your memories are always vivid and clear. With its intuitive user interface and seamless integration of Google services, navigating through tasks has never been easier. The Pixel 9 Pro also boasts robust performance, thanks to its powerful processor and extended battery life, making it the ideal companion for your busy lifestyle. Embrace the future of mobile technology with the Google Pixel 9 Pro.',
          sold: '18'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/galaxybudspro2.png',
          title: 'Galaxy Buds Pro',
          price: 'Rp. 1.230.000',
          rating: '4.9',
          description: 'Immerse yourself in a world of sound with the Galaxy Buds Pro, crafted for audiophiles who demand the best in wireless audio. Featuring active noise cancellation technology, these earbuds block out distractions, allowing you to enjoy your favorite music or podcasts in pure tranquility. The exceptional sound quality is enhanced by 2-way speakers and an intelligent sound control feature that automatically adjusts volume based on your surroundings. With a sleek and ergonomic design, the Galaxy Buds Pro offer a comfortable fit for long listening sessions. The touch controls make it easy to manage your audio experience, while the impressive battery life ensures you stay connected throughout your day. Whether you’re at home, in the office, or on the go, elevate your audio experience with the Galaxy Buds Pro.',
          sold: '26'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/xiaomi14ultra2.png',
          title: 'Xiaomi 14 Ultra',
          price: 'Rp. 22.000.000',
          rating: '5.0',
          description: 'Experience the pinnacle of mobile technology with the Xiaomi 14 Ultra. Featuring a vibrant 6.73-inch AMOLED display with a 120Hz refresh rate, this flagship smartphone delivers stunning visuals and seamless performance. Powered by the latest Snapdragon processor and equipped with a remarkable 200 MP quad-camera system, it captures every moment with exceptional clarity. With 120W HyperCharge technology, youll enjoy rapid power-ups, ensuring you stay connected all day long. The Xiaomi 14 Ultra is the ultimate device for those who demand excellence.',
          sold: '34'
      ),
      ProductModelDetail(
        imageUrl: 'assets/images/zflip6256gb.png',
        title: 'Z Flip 6 256 GB',
        price: 'Rp. 17.499.000',
        rating: '4.3',
        description: 'Discover a new era of foldable technology with the Samsung Galaxy Z Flip 6. Featuring a compact, pocket-friendly design and a 6.7-inch Dynamic AMOLED display, it delivers stunning visuals with smooth 120Hz refresh rate. With its powerful Snapdragon processor, multitasking is a breeze, and the enhanced Flex Mode lets you capture hands-free photos effortlessly. Experience innovation and style in the palm of your hand.',
          sold: '72'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/galaxywatch6.png',
          title: 'Galaxy Watch 6',
          price: 'Rp. 4.999.000',
          rating: '4.6',
          description: 'Stay connected and in control with the sleek Samsung Galaxy Watch 6. Featuring a bright, always-on Super AMOLED display, this smartwatch offers seamless fitness tracking, advanced health monitoring, and customizable watch faces. With long battery life and powerful performance, its designed to keep up with your active lifestyle, whether youre tracking workouts or staying on top of notifications. The Galaxy Watch 6 combines style and functionality, perfect for everyday wear',
          sold: '10'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/kiipmagsafepb.png',
          title: 'KiiP Magsafe Powerbank',
          price: 'Rp. 499.000',
          rating: '4.4',
          description: 'Power up your devices on the go with the Kiip Wireless MagSafe Powerbank. Designed for convenience, this compact powerbank magnetically snaps to your iPhone for seamless charging without the need for cables. With fast charging capabilities and a sleek design, it keeps your devices powered throughout the day. The perfect blend of portability and efficiency for staying charged anywhere, anytime.',
          sold: '20'
      ),
      ProductModelDetail(
          imageUrl: 'assets/images/ipadmini664gb.png',
          title: 'Apple iPad Mini 6 64 GB',
          price: 'Rp. 7.499.000',
          rating: '4.1',
          description: 'Experience big performance in a small package with the iPad Mini 6. Featuring an 8.3-inch Liquid Retina display and the powerful A15 Bionic chip, it delivers stunning visuals and lightning-fast performance. Compact yet versatile, it’s perfect for work, creativity, or entertainment on the go. With Apple Pencil 2 support and all-day battery life, the iPad Mini 6 is your ultimate portable powerhouse.',
          sold: '62'
      ),
    ];

    final product = products[index];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 400,
                        color: AppColor.cardGray,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/arrowleft.svg',
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/share.svg'),
                                    const SizedBox(width: 22),
                                    SvgPicture.asset('assets/icons/cart2.svg'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Image.asset(
                            product.imageUrl,
                            width: 250,
                            height: 250,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.title,
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                color: AppColor.primaryDark,
                                fontSize: 20,
                              ),
                            ),
                            SvgPicture.asset('assets/icons/love.svg'),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          product.price,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            color: AppColor.stormGray,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/star.svg'),
                                SvgPicture.asset('assets/icons/star.svg'),
                                SvgPicture.asset('assets/icons/star.svg'),
                                SvgPicture.asset('assets/icons/star.svg'),
                                const SizedBox(width: 5),
                                Text(
                                  product.rating,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.grayChateau,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '|',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                color: AppColor.stormGray,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '${product.sold} Sold',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.stormGray,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          product.description,
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.grayChateau,
                          ),
                        ),
                        const SizedBox(height: 24),
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
                                  child: Image.asset(
                                    'assets/images/cashback.png',
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Cashback up to Rp. 500.000',
                                        style: GoogleFonts.plusJakartaSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.primaryDark,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        'Come on, use the promo to save even more',
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
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      backgroundColor: AppColor.cardGray,
                    ),
                    child: Text(
                      'Add to cart',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primaryDark,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      backgroundColor: AppColor.primaryDark,
                    ),
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
