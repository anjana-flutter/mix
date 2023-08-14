import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurple.shade400,
                    Colors.deepPurple.shade600,
                    Colors.deepPurple.shade700,
                    Colors.deepPurple.shade900,
                    Colors.deepPurple.shade900,
                  ])),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon((Icons.diamond_outlined),
                          color: Colors.white, size: 30),
                    ),
                    Text(
                      ('bank.'),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      ('•••• 2412'),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 33),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  // createicon
                  Stack(alignment: Alignment.center, children: [
                    Icon(
                      (Icons.rectangle_rounded),
                      color: Colors.white,
                    ),
                    Icon(
                      (Icons.rectangle_outlined),
                      color: Colors.white70,
                      size: 33,
                    )
                  ])
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        ('07/26'),
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Icon(
                    (Icons.circle),
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    (Icons.circle),
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.deepPurple.shade400,
                        Colors.deepPurple.shade600,
                        Colors.deepPurple.shade700,
                        Colors.deepPurple.shade900,
                        Colors.deepPurple.shade900,
                      ])),
            )));
  }
}
