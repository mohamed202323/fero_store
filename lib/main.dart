import 'package:flutter/material.dart';
import 'dart:io';
import 'feroo_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:
      const FirebaseOptions(
          apiKey: "AIzaSyA9a-bjuxLRAGvdmPCOT7Qg8t3O3-raqOs",
          appId:"1:587995618710:android:9a93bdb2f1ac79192251b7",
          messagingSenderId:"587995618710",
          projectId: "feroo-store"
      )
  );
  runApp(const MyApp());
}


