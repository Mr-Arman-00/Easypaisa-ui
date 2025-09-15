import 'package:easy_paisa/CashPoint_screen.dart';
import 'package:easy_paisa/MyAccount_Screen.dart';
import 'package:easy_paisa/Promotion_Screen.dart';
import 'package:easy_paisa/Scanner_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  late final List<Widget> pages = [
    HomePageContent(),
    CashpointScreen(),
    ScannerScreen(),
    PromotionScreen(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Desktop background
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 350,
            height: 620,
            decoration: BoxDecoration(
              color: Colors.white, // Mobile frame background
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Scaffold(
              backgroundColor: Colors.white,
              body: IndexedStack(index: currentIndex, children: pages),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: currentIndex,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.black,
                selectedFontSize: 10,
                unselectedFontSize: 9,
                iconSize: 20,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                items: [
                  const BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  const BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.locationDot),
                    label: 'Cash Point',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    label: '',
                  ),

                  const BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.bullhorn),
                    label: 'Promotion',
                  ),
                  const BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.user),
                    label: 'My account',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  HomePageContent({super.key});
  final items = [
    {"icon": Icons.phone_android, "text": "Easyload"},
    {"icon": FontAwesomeIcons.handHoldingDollar, "text": "Easycash \n Loan"},
    {"icon": FontAwesomeIcons.sackDollar, "text": "Savings \n pockets"},
    {"icon": FontAwesomeIcons.userFriends, "text": "Invite & Earn"},
    {"icon": FontAwesomeIcons.bus, "text": "ZU BRT"},
    {"icon": FontAwesomeIcons.piggyBank, "text": "Term Deposit"},
    {"icon": FontAwesomeIcons.jar, "text": "Daily Rewards"},
    {"icon": FontAwesomeIcons.calendarCheck, "text": "Buy Now Pay \n Later"},
    {"icon": FontAwesomeIcons.umbrella, "text": "Insurance \n Marketplace"},
    {"icon": FontAwesomeIcons.car, "text": "M-Tag"},
    {"icon": FontAwesomeIcons.coins, "text": "Rs.1 Game"},
    {"icon": Icons.more_horiz, "text": "See All"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFabecd6), Color(0xFFfbed96)],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(width: 15),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 176, 208, 224),
                            ),
                            child: Center(
                              child: Text(
                                "A",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            right: -6,
                            bottom: -3,
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 65),
                      Image.asset(
                        "assets/Easypaisa.png",
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        "digital \n bank",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 45),
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 7),
                      Icon(Icons.notifications, color: Colors.black),
                      SizedBox(width: 7),
                      Icon(Icons.logout, color: Colors.black),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color(0xFF174F46),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Container(
                              height: 25,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "easypaisa Account",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 80),
                            Text(
                              "My Rewards",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5),
                            FaIcon(FontAwesomeIcons.coins, color: Colors.amber),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "Available Balance",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Text(
                                        "    * * * * * * ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    "Tap to show balance",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 1,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Upgrade Account",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 100,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add Cash",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 90,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.send),
                      SizedBox(height: 10),
                      Text(
                        "Send Money",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.receipt_long),
                      SizedBox(height: 10),
                      Text(
                        "Bill Payment",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mobile_friendly),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "   Mobile \n Packages",
                          style: TextStyle(color: Colors.black, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "More with easypaisa",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 20,
                    runSpacing: 15,
                    children: items.map((item) {
                      return Container(
                        width: 60,
                        child: Column(
                          children: [
                            Icon(item["icon"] as IconData),
                            SizedBox(height: 7),
                            Center(
                              child: Text(
                                item["text"] as String,
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Get your easypaisa Debit Card",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFF174F46),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Online Card",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 11),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Only for Online \n Payments in Pakistan",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Manage card",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2931),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Plastic Card",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: FaIcon(
                                FontAwesomeIcons.sdCard,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 9),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Use at any ATM or Shop \n in Pakistan",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 35),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Manage card",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 12),
                Text(
                  "Discover MiniApps on easypaisa",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 210,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 13,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 1, 76, 138),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              "Offer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 13,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 88),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              "New",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Image.asset(
                                "assets/1_markaz.png",
                                width: 55,
                                height: 55,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Markaz",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/2_meezan.png",
                              width: 55,
                              height: 55,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "AI Meezan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(10),
                              child: Image.asset(
                                "assets/3_book-me.png",
                                width: 55,
                                height: 55,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "book-me",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(10),
                                child: Image.asset(
                                  "assets/4_quick-top-ups.png",
                                  width: 55,
                                  height: 55,
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Quick Topups",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(10),
                                child: Image.asset(
                                  "assets/5_st.png",
                                  width: 55,
                                  height: 55,
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Sastaticket",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/6_savour.png",
                              width: 55,
                              height: 55,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Savour Foods",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(10),
                              child: Image.asset(
                                "assets/7_ts.png",
                                width: 55,
                                height: 55,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "TapShop",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.more_horiz,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "More",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Tap to see what's new?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    height: 110,
                    width: 108,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.teal],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Score a bike",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "in just Rs. 1",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 110,
                    width: 108,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          Colors.green,
                          const Color.fromARGB(255, 14, 60, 97),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "top-up M-Tag",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "& get rewards",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 110,
                    width: 108,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.deepPurple],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do more ",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "transactions",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 110,
                    width: 108,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 53, 124, 55),
                          const Color.fromARGB(255, 10, 97, 87),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "using ATM &",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        Text(
                          "Physical cards",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Shedule Your Transactions",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 110,
              width: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      Icon(Icons.calendar_month, color: Colors.red, size: 35),
                      SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Set payments in advance",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            "Now Setup Mobile Packages and Easyload in \n advance.",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(height: 15),
                          Container(
                            height: 23,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Schedule Payments",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.green,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 110,
              width: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      Icon(
                        FontAwesomeIcons.headphones,
                        color: const Color.fromARGB(255, 91, 209, 95),
                        size: 35,
                      ),
                      SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Help & Customer Support",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),

                          Text(
                            "Register a complaint or get quick help on queries \n related to easypaisa",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(height: 15),
                          Container(
                            height: 23,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Get Help",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.green,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
