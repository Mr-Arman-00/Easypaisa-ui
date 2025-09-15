import 'package:flutter/material.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});
  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 390,
          height: 800,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
          ),
          child: Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.green,
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 17,
                            ),
                            SizedBox(width: 110),
                            Text(
                              "Promotions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 210,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/banner-1.png",
                          width: 330,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Kabhi bhi, kaheen se bhi!",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Enjoy easypaisa facilities",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 210,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/banner-2.png",
                          width: 330,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Payments VIA Easypaisa",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Enjoy easypaisa facilities",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 210,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/banner-4.png",
                          width: 330,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "How to open an easypaisa account",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Enjoy easypaisa facilities",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 210,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/banner-5.png",
                          width: 330,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Make money by using easypaisa",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Enjoy easypaisa facilities",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Read more",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
