import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Trainer extends StatefulWidget {
  @override
  _TrainerState createState() => _TrainerState();
}
class _TrainerState extends State<Trainer> {
  final _form = GlobalKey<FormState>();
  String? title,note;
  void writeData() async {
    _form.currentState?.save();
// Please replace the Database URL
// which we will get in “Add Realtime
// Database” step with DatabaseURL
    var url = "https://fir-basic-e73f5-default-rtdb.firebaseio.com/"+"data.json";

// (Do not remove “data.json”,keep it as it is)
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode({"title": title,"note":note}),
      );
    } catch (error) {
      throw error;
    }}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RealTime Database',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daily Activity Chart"),
        ),
        body: Form(
          key: _form,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Title"),
                  onSaved: (value) {
                    title = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter note"),
                  onSaved: (value) {
                    note = value!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: writeData,
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WriteData extends StatefulWidget {
  const WriteData({Key? key}) : super(key: key);

  @override
  State<WriteData> createState() => _WriteDataState();
}

class _WriteDataState extends State<WriteData> {
  final dataaa=TextEditingController();
  final _course = GlobalKey<FormState>();
  String? name;
  String?branch;

  writedata() async {
    _course.currentState!.save();
    var databaseUrl = "https://signin-db001-default-rtdb.firebaseio.com/" +
        "courseDetails.json";
    try {
      final response = await http.post(Uri.parse(databaseUrl),
          body: json.encode({"name": name,"branch":branch}));
    } catch (error) {
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write Data'),
      ),
      body: Column(children: [
        Form(
          key: _course,
          child: Column(
            children: [
              TextFormField(
                decoration:
                InputDecoration(hintText: 'Enter course', labelText: 'Course'),
                onSaved: (course) {
                  name = course;
                },
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: 'Enter course', labelText: 'day'),
                onSaved: (day) {
                  branch = day;
                },
              ),
            ],
          ),
        ),

        TextButton(
            onPressed: () {
              writedata();
            },
            child: Text('submit'))
      ]),
    );
  }
}