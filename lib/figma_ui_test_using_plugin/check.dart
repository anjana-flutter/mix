import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.width,
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 81,
                height: 20,
                child: Text(
                  "Payment ",
                  style: TextStyle(
                    color: Color(0xff2f2f2f),
                    fontSize: 16,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              SizedBox(
                width: 81,
                height: 20,
                child: Text(
                  "Card Name",
                  style: TextStyle(
                    color: Color(0xff848484),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              Container(
                width: 318,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff848484),
                    width: 1,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              SizedBox(
                width: 174,
                height: 20,
                child: Text(
                  "Card Number",
                  style: TextStyle(
                    color: Color(0xff848484),
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 25.67),
              Container(
                width: 11,
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.brown,
                    width: 4,
                  ),
                  color: Color(0x7f7f3a44),
                ),
              ),
              SizedBox(height: 25.67),
              SizedBox(
                width: 174,
                height: 20,
                child: Text(
                  "Expiring date",
                  style: TextStyle(
                    color: Color(0xff848484),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              SizedBox(
                width: 174,
                height: 20,
                child: Text(
                  "CVV",
                  style: TextStyle(
                    color: Color(0xff848484),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              Container(
                width: 123,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff848484),
                    width: 1,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              Container(
                width: 123,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff848484),
                    width: 1,
                  ),
                ),
              ),
              SizedBox(height: 25.67),
              Container(
                width: 354,
                height: 20,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 88,
                      height: 20,
                      child: Text(
                        "Sub-total",
                        style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 178),
                    SizedBox(
                      width: 88,
                      height: 20,
                      child: Text(
                        "40.00",
                        style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.67),
              Container(
                width: 354,
                height: 20,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 88,
                      height: 20,
                      child: Text(
                        "Total",
                        style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(width: 178),
                    SizedBox(
                      width: 88,
                      height: 20,
                      child: Text(
                        "40.00",
                        style: TextStyle(
                          color: Color(0xff848484),
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.67),
              Container(
                width: 351,
                height: 61,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 351,
                      height: 61,
                      color: Color(0xffe50b14),
                      padding: const EdgeInsets.only(
                        left: 160,
                        right: 159,
                        top: 20,
                        bottom: 21,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 32,
                            height: 20,
                            child: Text(
                              "Pay",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
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
      ]),
    );
  }
}
