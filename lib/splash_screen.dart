import 'package:untitled/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with ColorUtils, SampleData {
  List<String> carouselImages = [
    'assets/dash_carousel1.webp',
    'assets/dash_carousel1.webp',
    'assets/dash_carousel1.webp',
    'assets/dash_carousel1.webp',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Hype ',
              style: TextStyle(
                color: appPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Mart',
              style: TextStyle(
                color: appSecondaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Text('Eng', style: TextStyle(fontSize: 16)),
          SizedBox(width: 6),
          Icon(Icons.keyboard_arrow_down),
          SizedBox(width: 12),
          SvgPicture.asset('assets/notification.svg'),
          SizedBox(width: 16),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/location.svg',
                      width: size.width * .15,
                    ),
                    14.w,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bengaluru', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 12),
                          Text(
                            'BTM Layout, 500628',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 26),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search Anything...',
                    helperStyle: TextStyle(color: searchBarHintColor),
                    fillColor: searchBarColor,
                    filled: true,
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        18.w,
                        SvgPicture.asset(
                          'assets/search.svg',
                          width: 24,
                          height: 24,
                        ),
                        8.w,
                      ],
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '|',
                          style: TextStyle(
                            fontSize: 35,
                            color: searchBarDividerColor,
                          ),
                        ),
                        12.w,
                        SvgPicture.asset('assets/mic.svg', width: 24),
                        14.w,
                      ],
                    ),
                    border: inputBorder(),
                    focusedBorder: inputBorder(),
                    enabledBorder: inputBorder(),
                    errorBorder: inputBorder(),
                  ),
                ),
              ),
              CarouselSlider(
                items:
                    carouselImages.map((e) {
                      return Container(
                        height: size.height * .3,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(e)),
                        ),
                      );
                    }).toList(),
                options: CarouselOptions(
                  enlargeFactor: .3,
                  enlargeCenterPage: true,
                ),
              ),
              sectionHeader('Categories'),
              12.h,
              SizedBox(
                height: 100,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  children:
                      sampleCategories.map((e) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 96,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: e.color,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(e.img),
                              12.h,
                              Text(
                                e.name,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Previous Order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(50),
                      blurRadius: 20,
                      spreadRadius: 15,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivered',
                              style: TextStyle(
                                color: deliveredColor,
                                fontSize: 12,
                              ),
                            ),
                            3.h,
                            Text(
                              'On Wed, 27 Jul 2022',
                              style: TextStyle(fontSize: 14),
                            ),
                            8.h,
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: card1Color,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/avocado.png',
                                    height: 61,
                                    width: 61,
                                  ),
                                  16.w,
                                  Image.asset(
                                    'assets/meal1.png',
                                    height: 61,
                                    width: 61,
                                  ),
                                  16.w,
                                  Image.asset(
                                    'assets/bottles.png',
                                    height: 61,
                                    width: 61,
                                  ),
                                  16.w,
                                  Text(
                                    '+5\nMore',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  16.w,
                                ],
                              ),
                            ),
                            16.h,
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order ID : #28292999',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      12.h,
                                      Text(
                                        'Final Total : ₹ 123',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                16.w,
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      appSecondaryColor,
                                    ),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      'Order again',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    12.w,
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        color: textRedColor,
                        child: Text(
                          'Order Again & Get Flat 10% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            backgroundColor: textRedColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sectionHeader('Popular Deals'),
              GridView.builder(
                padding: EdgeInsets.all(16),
                physics: NeverScrollableScrollPhysics(),
                itemCount: productList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 32,
                  mainAxisExtent: 340,
                ),
                itemBuilder: (_, index) {
                  final data = productList[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: searchBarDividerColor,
                        width: .5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              data.img,
                              width: size.width * .4,
                              height: size.width * .4,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              top: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                        12.h,
                        Text(data.name, style: TextStyle(fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '£ ${data.price}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(data.rating.toString()),
                                  6.w,
                                  Icon(Icons.star, color: starColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                        12.h,
                        Padding(
                          padding: const EdgeInsets.only(right: 16, left: 16),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  side: BorderSide(color: starColor),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Add to cart',
                                  style: TextStyle(color: starColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          Positioned(
            bottom: 1,
            child: SizedBox(
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: EdgeInsets.all(32),
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/bottom_home.svg', width: 30),
                        SvgPicture.asset('assets/bottom_dash.svg', width: 30),
                        42.w,
                        SvgPicture.asset('assets/bottom_heart.svg', width: 30),
                        Image.asset('assets/bottom_profile.png', width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 36),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(1000),
                      shadowColor: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/cart.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionHeader(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }

  OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.transparent),
    );
  }
}
