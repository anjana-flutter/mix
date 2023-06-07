// import 'package:basics/check.dart';
// import 'package:basics/test_she/front.dart';
// import 'package:basics/whtsapp/home.dart';
// import 'package:flutter/material.dart';
// import 'drwer/widget/navigation_drawer_widget.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//     //  home: ProductCatalogScreen(),
//       home: TabBarDemo(),
//       // tabBarDemo is watsapp
//     );
//   }
// }
//
//

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fire_base/provider/auth_provider.dart';
import 'fire_base/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        title: "FlutterPhoneAuth",
      ),
    );
  }
}
