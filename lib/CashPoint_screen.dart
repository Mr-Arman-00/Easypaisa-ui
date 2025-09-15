import 'package:flutter/material.dart';

class CashpointScreen extends StatefulWidget {
  const CashpointScreen({super.key});
  @override
  State<CashpointScreen> createState() => _CashpointScreenState();
}

class _CashpointScreenState extends State<CashpointScreen> {
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
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/map.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 17,
                          ),
                          SizedBox(width: 85),
                          Text(
                            "Cash Deposit",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 200),
                Container(
                  width: 330,
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Cash Deposit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Text(
                          "Your first cash deposit needs to be made through a \n                    Biometric (BVS) Cash Point",
                          style: TextStyle(color: Colors.orange, fontSize: 11),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // SizedBox(width: 20),
                          Container(
                            height: 35,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "Cash Points",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(width: 10),
                          Container(
                            height: 35,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  "BVS Cash Point",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Text(
                            "1.0 Location",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 60),
                          Column(
                            children: [
                              Container(
                                width: 115,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade300,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "10km       20km       30km",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 40),
                          Text(
                            "KM Islamabad",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 48),
                          Text(
                            "Expand Radius",
                            style: TextStyle(color: Colors.grey, fontSize: 9),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 40,
                        width: 240,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(
                                Icons.attach_money,
                                size: 20,
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(width: 9),
                            Text(
                              "How to deposit Cash",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 25),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 17,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
