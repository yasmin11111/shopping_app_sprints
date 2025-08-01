import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_app_sprints/widgets/cardWid.dart';
import 'package:shopping_app_sprints/widgets/offerswid.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Products_Page extends StatefulWidget {
  @override
  State<Products_Page> createState() => _Products_PageState();
}

class _Products_PageState extends State<Products_Page> {
  PageController _pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 215, 170, 247),
        title: Text(
          'Our Products',
          style: TextStyle(
            fontFamily: "Suwannaphum",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PageView(
                      onPageChanged: (value) {
                        index = value;
                        setState(() {});
                      },
                      controller: _pageController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/download (30).jpeg'),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 10,
                                child: Text(
                                  "Makeup",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Suwannaphum",
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/download (32).jpeg'),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 10,
                                child: Text(
                                  "Clothes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Suwannaphum",
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/download (31).jpeg'),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 10,
                                child: Text(
                                  "shoes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Suwannaphum",
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController, // متابع للحركة
                  count: 3,
                  effect: ExpandingDotsEffect(
                    // شكل التأثير
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Color.fromARGB(255, 215, 170, 247),
                    dotColor: const Color.fromARGB(255, 102, 101, 101),
                    expansionFactor: 2,
                    // حجم التكبير للنقطة الفعالة
                    spacing: 8,
                  ),
                  onDotClicked: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                Text(
                  "Shop Our Collection",
                  style: TextStyle(
                      color: Color.fromARGB(255, 215, 170, 247),
                      fontFamily: "Suwannaphum",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  children: [
                    cardWid(
                      name: 'Black Dress ',
                      Price: "200 \$",
                      img: 'assets/images/dress.jpeg',
                    ),
                    cardWid(
                      name: 'white Dress ',
                      Price: "500 \$",
                      img: 'assets/images/download (25).jpeg',
                    ),
                    cardWid(
                      name: 'pink Dress ',
                      Price: "800 \$",
                      img: 'assets/images/download (26).jpeg',
                    ),
                    cardWid(
                      name: 'White Shoes ',
                      Price: "200 \$",
                      img: 'assets/images/download (24).jpeg',
                    ),
                    cardWid(
                      name: 'Black shoes ',
                      Price: "200 \$",
                      img: 'assets/images/download (34).jpeg',
                    ),
                    cardWid(
                      name: 'Black shoes ',
                      Price: "350 \$",
                      img: 'assets/images/download (33).jpeg',
                    ),
                    cardWid(
                      name: 'Blusher ',
                      Price: "200 \$",
                      img: 'assets/images/download (27).jpeg',
                    ),
                    cardWid(
                      name: 'Eye Liner ',
                      Price: "200 \$",
                      img: 'assets/images/download (28).jpeg',
                    ),
                  ],
                ),
                Text(
                  "Hot Offers 🔥",
                  style: TextStyle(
                      color: Color.fromARGB(255, 128, 42, 188),
                      fontFamily: "Suwannaphum",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => offersWid(),
                  itemCount: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
