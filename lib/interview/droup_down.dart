// import 'package:flutter/material.dart';
// class Droup_down extends StatefulWidget {
//   const Droup_down({Key? key}) : super(key: key);
//
//   @override
//   State<Droup_down> createState() => _Droup_downState();
// }
//
// class _Droup_downState extends State<Droup_down> {
//   String selectedValue="Option 1";
//
//   List<String> options = [
//     'Option 1',
//     'Option 2',
//     'Option 3',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Container(
//         child:DropdownButton<String>(
//           value: selectedValue,
//           onChanged: (newValue) {
//             setState(() {
//               selectedValue = newValue!;
//             });
//           },
//           items: options.map((option) {
//             return DropdownMenuItem(
//               value: option,
//               child: Text(option),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage ({Key? key, String? title}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String dropDownValue= 'Ajman';
  List<String> cityList = [
    'Ajman',
    'Al Ain',
    'Dubai',
    'Fujairah',
    'Ras Al Khaimah',
    'Sharjah',
    'Umm Al Quwain'
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    //setFilters();
    super.initState();
  }

  setFilters() {
    setState(() {
      dropDownValue = cityList[2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButtonFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Name",
                  fillColor: Colors.blue[200]),
              value: dropDownValue,
              onChanged: (String ? Value) {
                setState(() {
                  dropDownValue = Value!;
                });
              },
              items: cityList
                  .map((cityTitle) => DropdownMenuItem(
                  value: cityTitle, child: Text("$cityTitle")))
                  .toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}