import 'package:flutter/material.dart';
import 'app.dart';

void main() async {
  // Initialize Firebase and dependencies
  await initializeApp();

  runApp(const ShopListApp());
}
