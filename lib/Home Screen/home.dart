import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ecommerce_1/Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<String> icons = [
    "asset/icons/Shop Icon.svg",
    "asset/icons/Heart Icon.svg",
    "asset/icons/Chat bubble Icon.svg",
    "asset/icons/User.svg",
  ];

  bool isFavorites = false;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      _buildHomePage(),
      _buildFavoritesPage(),
      _buildChatPage(),
      ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: _currentIndex,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: List.generate(icons.length, (index) {
                  bool isActive = _currentIndex == index;
                  return BottomNavigationBarItem(
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          icons[index],
                          width: 24,
                          height: 24,
                          color: isActive
                              ? Color.fromARGB(255, 255, 118, 67)
                              : Colors.grey,
                        ),
                        SizedBox(height: 4),
                        if (isActive)
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 118, 67),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                    label: "",
                  );
                }),
              ),
            ),
          ),
        ),

        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 75,
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search product",
                hintStyle: TextStyle(color: Colors.black45),
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    "asset/icons/Search Icon.svg",
                    width: 20,
                    height: 14,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "asset/icons/Cart Icon.svg",
                width: 20,
                height: 20,
              ),
              padding: EdgeInsets.all(12),
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(width: 10),

            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "asset/icons/Bell.svg",
                    width: 20,
                    height: 20,
                  ),
                  padding: EdgeInsets.all(12),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
          ],
        ),

        body: _pages[_currentIndex], // إصلاح: عرض الصفحة المحددة
      ),
    );
  }

  // صفحة الرئيسية
  Widget _buildHomePage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // A Summer Surprise start
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 75, 50, 152),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -130,
                  right: -30,
                  child: Container(
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(100),
                      ),
                      color: const Color.fromARGB(
                        140,
                        140,
                        140,
                        255,
                      ).withOpacity(0.1),
                    ),
                  ),
                ),

                Positioned(
                  bottom: -375,
                  left: -50,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: const Color.fromARGB(
                        140,
                        140,
                        140,
                        255,
                      ).withOpacity(0.1),
                    ),
                  ),
                ),

                Positioned(
                  top: 20,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A Summer Surprise',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Cashback 20%',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // A Summer Surprise end

          // icon button start
          Container(
            margin: EdgeInsets.only(top: 30, left: 20, bottom: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconButton("asset/icons/Flash Icon.svg", "Flash\nDeal"),
                _buildIconButton("asset/icons/Bill Icon.svg", "Bill"),
                _buildIconButton("asset/icons/Game Icon.svg", "Game"),
                _buildIconButton("asset/icons/Gift Icon.svg", "Daily\nGift"),
                _buildIconButton("asset/icons/Discover.svg", "More", size: 35),
              ],
            ),
          ),

          // icon button end
          _buildSectionHeader("Special for you", "See More"),

          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildBannerCard(
                  "asset/images/Image Banner 2.png",
                  "Smartphone\n18 Brands",
                ),
                SizedBox(width: 10),
                _buildBannerCard(
                  "asset/images/Image Banner 3.png",
                  "Fashion\n24 Brands",
                ),
              ],
            ),
          ),

          // Popular Product
          _buildSectionHeader("Popular Product", "See More"),

          Container(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                List<String> images = [
                  "asset/images/Image Popular Product 1.png",
                  "asset/images/Image Popular Product 2.png",
                  "asset/images/glap.png",
                ];
                List<String> titles = [
                  "Wireless Controller\nfor PS4™",
                  "Nike Sport White -\nMan Pant",
                  "Gloves XC Omega -\nPolygon",
                ];
                List<String> prices = ["\$64.99", "\$9.99", "\$99.99"];

                return _buildProductCard(
                  index,
                  images[index],
                  titles[index],
                  prices[index],
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildFavoritesPage() {
    return Center(
      child: Text(
        "Your favorites list is currently empty.",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildChatPage() {
    return Center(
      child: Text(
        "Chat",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildIconButton(String iconPath, String text, {double size = 20}) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(iconPath, width: size, height: size),
          padding: EdgeInsets.all(18),
          style: IconButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 236, 223),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromARGB(255, 117, 117, 117),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title, String buttonText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerCard(String imagePath, String text) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 320,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard(
    int index,
    String imagePath,
    String title,
    String price, {
    Key? key,
  }) {
    return Container(
      key: key,
      width: 210,
      margin: EdgeInsets.only(left: 15, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                price,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 118, 67),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                iconSize: 35,
                icon: Icon(
                  isFavorites ? Icons.favorite : Icons.favorite_border,
                  color: isFavorites ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isFavorites = !isFavorites;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
