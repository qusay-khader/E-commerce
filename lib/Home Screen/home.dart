import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
  bool isFavorite = false;
  List<bool> isFavorites = [false, false, false];

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
                prefixIcon: SvgPicture.asset(
                  "asset/icons/Search Icon.svg",
                  width: 20,
                  height: 14,
                  fit: BoxFit.scaleDown,
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
              padding: EdgeInsets.zero,
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
                  padding: EdgeInsets.zero,
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
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
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

        body: SingleChildScrollView(
          child: Column(
            children: [
              //A Summer Surprise start
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                width: 375,
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
                              fontSize: 10,
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
              //A Summer Surprise end
              //icon button start
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  bottom: 15,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "asset/icons/Flash Icon.svg",
                            width: 20,
                            height: 20,
                          ),
                          padding: EdgeInsets.all(18),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              236,
                              223,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Flash\n Deal",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "asset/icons/Bill Icon.svg",
                            width: 20,
                            height: 20,
                          ),
                          padding: EdgeInsets.all(18),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              236,
                              223,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Bill",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "asset/icons/Game Icon.svg",
                            width: 20,
                            height: 20,
                          ),
                          padding: EdgeInsets.all(18),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              236,
                              223,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Game",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "asset/icons/Gift Icon.svg",
                            width: 20,
                            height: 20,
                          ),
                          padding: EdgeInsets.all(18),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              236,
                              223,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Daily\n Gift",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "asset/icons/Discover.svg",
                            width: 35,
                            height: 35,
                          ),
                          padding: EdgeInsets.all(10),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              255,
                              236,
                              223,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "More",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //icon button end
              //Special for you Row
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special for you", style: TextStyle(fontSize: 24)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // card
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(20),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(
                              "asset/images/Image Banner 2.png",
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3),
                              BlendMode.darken,
                            ),
                          ),
                        ),

                        child: Text(
                          "Smartphone\n18 Brands",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(
                              "asset/images/Image Banner 3.png",
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3), // الغامق
                              BlendMode.darken,
                            ),
                          ),
                        ),

                        child: Text(
                          "Fashion\n24 Brands",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //for you
              Container(
                margin: EdgeInsets.only(
                  bottom: 0,
                  left: 20,
                  right: 20,
                  top: 30,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Product", style: TextStyle(fontSize: 24)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // card
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(20),
                            width: 200,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "asset/images/Image Popular Product 1.png",
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Wireless Controller\nfor PS4™"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$64.99      ",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    118,
                                    67,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.all(10),
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey[200],
                                ),
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(20),
                            width: 200,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "asset/images/Image Popular Product 2.png",
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Nike Sport White -\n Man Pant"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$9.99      ",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    118,
                                    67,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.all(10),
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey[200],
                                ),
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment(3, 2),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(20),
                            width: 200,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("asset/images/glap.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Gloves XC Omega -\nPolygon"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$99.99      ",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    118,
                                    67,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              IconButton(
                                padding: EdgeInsets.all(10),
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.grey[200],
                                ),
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 25,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
