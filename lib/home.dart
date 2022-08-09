import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.blueAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment_rounded),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_rounded),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_rounded),
            label: 'Pocket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Saya',
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Icon(
              Icons.account_circle_outlined,
              size: 90,
            ),
            Text(
              'Aril Chasan',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.normal),
            ),
            Text(
              '082243460612',
              style: GoogleFonts.poppins(
                  fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            //Uang
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(7),
              ),
              height: 165,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 15, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.balance_rounded,
                          color: Color.fromARGB(255, 216, 219, 7)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Saldo : RP 1.000.000',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_circle_up,
                          color: Color.fromARGB(255, 133, 249, 0)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Uang Masuk : RP.0',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_circle_down, color: Colors.orangeAccent),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Uang Keluar : RP.0',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  Row(
                    children: [
                      Icon(Icons.payment_rounded,
                          color: Color.fromARGB(255, 216, 219, 7)),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'My Bills',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.white)
                    ],
                  ),
                ],
              ),
            ),
            //Fitur
            SizedBox(
              height: 6,
            ),
            //Fitur
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Fitur',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    height: 45,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.qr_code_scanner, color: Colors.white),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Scan QR',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, color: Colors.white)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  //Reward
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Reward',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          height: 130,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.share_rounded,
                                    color: Color.fromARGB(255, 225, 210, 210),
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Berbagi Kode Undangan',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.confirmation_num_rounded,
                                    size: 25,
                                    color: Color.fromARGB(255, 219, 170, 56),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Enter Coupon Code',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.local_offer_rounded,
                                    size: 25,
                                    color: Color.fromARGB(255, 240, 60, 60),
                                  ),
                                  SizedBox(
                                    width: 4,
                                    height: 4,
                                  ),
                                  Text(
                                    'Promo Guest',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //Pengaturan
                        Container(
                          margin: EdgeInsets.only(right: 220),
                          child: Column(
                            children: [
                              Text(
                                'Pengaturan Aplikasi',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          height: 160,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 20),
                          child: Column(children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Pengaturan Profil',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Pengaturan Keamanan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Akun Terhubung',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'SmartPay',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //Informasi
                        Container(
                          margin: EdgeInsets.only(right: 240),
                          child: Column(
                            children: [
                              Text(
                                'Informasi Umum',
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          height: 160,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 20),
                          child: Column(children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Pusat Bantuan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Pusat Resolusi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Syarat & Ketentuan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Kebijakan Privasi',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Keluar
                        Center(
                          child: Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Keluar",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ),
                          ),
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
    );
  }
}
