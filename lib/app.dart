import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart'; // Temporairement désactivé
import 'core/di/service_locator.dart';

class ShopListApp extends StatelessWidget {
  const ShopListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'ShopList App - En cours de développement\n\n✅ Architecture Clean + MVVM\n✅ SQLite Database\n✅ Dependency Injection\n\n🚧 Firebase sera configuré plus tard',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

// Initialize dependencies (Firebase désactivé temporairement)
Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Initialize Firebase later when properly configured
  // await Firebase.initializeApp();

  // Setup dependency injection
  await setupServiceLocator();
}
