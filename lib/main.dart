import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:uber_like/screens/home_screen.dart';
import 'package:uber_like/screens/login_screen.dart';
import 'package:uber_like/screens/registration_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

DatabaseReference usersRef = FirebaseDatabase.instance.reference().child("user");
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rider App ',
      theme: ThemeData(
        fontFamily: "Brand Bold",
        primarySwatch: Colors.blue,
      ),

      initialRoute: LoginScreen.idScreen,
      routes: {
        RegistrationScreen.idScreen: (context)=>  RegistrationScreen(),
        LoginScreen.idScreen:(context)=> const LoginScreen(),
        HomeScreen.idScreen:(context)=> const HomeScreen()
      },
    );
  }
}
