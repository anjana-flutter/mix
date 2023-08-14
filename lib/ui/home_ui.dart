import 'package:basics/ui/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home_ui extends StatefulWidget {
  const Home_ui({Key? key}) : super(key: key);

  @override
  State<Home_ui> createState() => _Home_uiState();
}

class _Home_uiState extends State<Home_ui> {
  // pageview controller
  final _controller = PageController();

  int Selectedintex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
        onTap: (Intex) {
          setState(() {
            Selectedintex = Intex;
          });
        },
        currentIndex: Selectedintex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: 'analytics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: 'credit card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'notification'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                  ('My Dashboard'),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      (Icons.settings_outlined),
                      color: Colors.white70,
                    )),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/profile pic.png'),
                  backgroundColor: Colors.transparent,
                )
              ],
            ),
            SizedBox(
              height: 250,
              child: PageView(
                controller: _controller,
                children: [Page1(), Page2(), Page1()],
              ),
            ),
            SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        ('Total Balance'),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade600,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //$ 204,202,20 text
                  Row(
                    children: [
                      Icon(
                        (Icons.currency_rupee_sharp),
                        color: Colors.white,
                      ),
                      Text(
                        ("204,202,20"),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 35),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          ('Estimated Monthly Income'),
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.white38, width: 0.2),
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    (Icons.arrow_forward_outlined),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    ('Move Money'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.white38, width: 0.2),
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    (Icons.add),
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    ('Deposite Money'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          ('offers'),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white38,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.transparent,
                                border:
                                    Border.all(color: Colors.orange, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    (Icons.timer_outlined),
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          ("30%off"),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          ("Join here to get 30% off your\nnext purchase of 20 or more"),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 120,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.deepPurple, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    (Icons.school_outlined),
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
