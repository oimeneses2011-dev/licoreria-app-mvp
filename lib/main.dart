import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/product_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LicoreriaApp());
}

class LicoreriaApp extends StatelessWidget {
  const LicoreriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Licorería App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: ProductListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
