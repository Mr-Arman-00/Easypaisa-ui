import 'package:flutter/material.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});
  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
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
            backgroundColor: Colors.white,
            body: Column(
              children: [
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(width: 25),
                    Icon(Icons.arrow_back_ios, color: Colors.black, size: 17),
                    SizedBox(width: 70),
                    Text(
                      "RAAST QR Code",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 75),
                    Text(
                      "Help",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Pay or Send Money",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        "Receive Money",
                        style: TextStyle(color: Colors.green, fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    SizedBox(width: 200),
                    Container(
                      height: 3,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3, // shadow ko soft banane k liye
                          offset: Offset(4, 4), // shadow position (x, y)
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "My Static QR",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Create QR",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 2),
                    Image.asset("assets/Easypaisa.png", width: 35, height: 35),

                    Column(
                      children: [
                        Text(
                          "digital",
                          style: TextStyle(color: Colors.black, fontSize: 9),
                        ),
                        Text(
                          "bank",
                          style: TextStyle(color: Colors.black, fontSize: 9),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),

                    Text(
                      "QR",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Share this QR Code with Sender or they can scan it from \n          your phone to recieve money through RAAST",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 97, 96, 96),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10),
                Image.asset("assets/qr code.png", width: 200, height: 200),
                // SizedBox(height: 10),
                Center(
                  child: Text(
                    "ARMAN",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    "MSISDN: *******3519",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.download, color: Colors.black),
                          SizedBox(width: 7),
                          Text(
                            "Save to Gallery",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 49, 49, 49),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.share, color: Colors.black),
                          SizedBox(width: 7),
                          Text(
                            "Share QR Code",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 49, 49, 49),
                              fontSize: 12,
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
        ),
      ),
    );
  }
}
