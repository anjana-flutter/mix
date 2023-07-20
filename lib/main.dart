import 'package:flutter/material.dart';
import 'linkedin/home_linkedin.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: ProductCatalogScreen(),
      home: Home_link(),
      // tabBarDemo is watsapp
    );
  }
}
//theme_app
// import 'package:basics/theme_app.dart';
// import 'package:flutter/material.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// ThemeManager _themeManager = ThemeManager();
//
// class MyApp extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   @override
//   void dispose() {
//     _themeManager.removeListener(themeListener);
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     _themeManager.addListener(themeListener);
//     super.initState();
//   }
//
//   themeListener(){
//     if(mounted){
//       setState(() {
//
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       themeMode: _themeManager.themeMode,
//       home: MyHomeScreen(),
//     );
//   }
// }
//
// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _MyHomeScreenState createState() => _MyHomeScreenState();
// }
//
// class _MyHomeScreenState extends State<MyHomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _textTheme = Theme.of(context).textTheme;
//     bool isDark = Theme.of(context).brightness == Brightness.dark;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Theme App"),
//         actions: [Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
//           _themeManager.toggleTheme(newValue);
//         })],
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(
//                 "assets/image3.png",
//                 width: 200,
//                 height: 200,
//               ),
//               addVerticalSpace(10),
//               Text(
//                 "Your Name",
//                 style: _textTheme.headline4?.copyWith(
//                     color:isDark?Colors.white: Colors.black,fontWeight: FontWeight.bold
//                 ),
//               ),
//               addVerticalSpace(10),
//               Text(
//                 "@yourusername",
//                 style: _textTheme.subtitle1,
//               ),
//               addVerticalSpace(10),
//               Text(
//                 "This is a simple Status",
//               ),
//               addVerticalSpace(20),
//               TextField(),
//               addVerticalSpace(20),
//               ElevatedButton(child: Text("Just Click"), onPressed: () {}),
//               addVerticalSpace(20),
//               ElevatedButton(child: Text("Click Me"), onPressed: () {}),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: Theme(
//         data: Theme.of(context).copyWith(splashColor: Colors.blue), // For Test
//         child: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {},
//         ),
//       ),
//     );
//   }
// }

//
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'fire_base/provider/auth_provider.dart';
// import 'fire_base/screens/welcome_screen.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthProvider()),
//       ],
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: WelcomeScreen(),
//         title: "FlutterPhoneAuth",
//       ),
//     );
//   }
// }


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'instagram/providers/user_provider.dart';
// import 'instagram/responsive/mobile_screen_layout.dart';
// import 'instagram/responsive/responsive_layout.dart';
// import 'instagram/responsive/web_screen_layout.dart';
// import 'instagram/screens/login_screen.dart';
// import 'instagram/utils/colors.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // initialise app based on platform- web or mobile
//   if (kIsWeb) {
//     await Firebase.initializeApp(
//       options: const FirebaseOptions(
//           apiKey: "AIzaSyCZ-xrXqD5D19Snauto-Fx_nLD7PLrBXGM",
//           appId: "1:585119731880:web:eca6e4b3c42a755cee329d",
//           messagingSenderId: "585119731880",
//           projectId: "instagram-clone-4cea4",
//           storageBucket: 'instagram-clone-4cea4.appspot.com'
//       ),
//     );
//   } else {
//     await Firebase.initializeApp();
//   }
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => UserProvider(),),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Instagram Clone',
//         theme: ThemeData.dark().copyWith(
//           scaffoldBackgroundColor: mobileBackgroundColor,
//         ),
//         home: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.active) {
//               // Checking if the snapshot has any data or not
//               if (snapshot.hasData) {
//                 // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
//                 return const ResponsiveLayout(
//                   mobileScreenLayout: MobileScreenLayout(),
//                   webScreenLayout: WebScreenLayout(),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text('${snapshot.error}'),
//                 );
//               }
//             }
//
//             // means connection to future hasnt been made yet
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//
//             return const LoginScreen();
//           },
//         ),
//       ),
//     );
//   }
// }
