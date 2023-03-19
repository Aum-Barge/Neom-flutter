import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:neom/screens/google_auth.dart';
import 'package:neom/screens/signin.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Signinpage(),
        ),
      );
}
