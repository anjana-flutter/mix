import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home_link extends StatefulWidget {
  const Home_link({Key? key}) : super(key: key);

  @override
  State<Home_link> createState() => _Home_linkState();
}

class _Home_linkState extends State<Home_link> {
  int myintex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Intex) {
          setState(() {
            myintex =Intex;
          });
        },
        currentIndex: myintex,
        selectedItemColor:Colors.teal ,
        unselectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/flash.svg',height: 23,width: 20,),label: 'Subscripition'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/wrench.svg',height: 23,width: 20,color: myintex == 0 ? Colors.teal : Colors.black87,),label: 'Garrage'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Shop'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      ('Zantrik'),
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200),
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200),
                    child: Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5)),
                  Container(
                    width: 390,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/birthday-gift-png-39916 (1).png'),
                            alignment: Alignment.bottomRight)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              ('We have introduced'),
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              ('Zantrik Points'),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 280,
                    width: 390,
                    decoration: BoxDecoration(
                      // color: Colors.teal.shade400 ,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.teal.shade500,
                            Colors.teal.shade400,
                            Colors.teal.shade300
                          ]),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.shade200),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 53,
                        ),
                        Text(
                          ('Add vehicle to claim'),
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ('Free Health Checkup'),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/195800123-delivery-scooter-icon-removebg-preview.png'),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 80,
                              width: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/3705085-removebg-preview.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/2044248-removebg-preview.png'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images-removebg-preview (1).png'),
                              alignment: Alignment.bottomRight)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                ('Need Repair'),
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                ('For vehicle?'),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images-removebg-preview.png'),
                              alignment: Alignment.bottomLeft)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                ('Need Driver'),
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                ('Add/Hire driver'),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/ca7cc15c4cf6a1b9e5422c3fbb78af23-removebg-preview.png'),
                              alignment: Alignment.bottomRight)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                ('What a new car?'),
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                ('Buy from here'),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
