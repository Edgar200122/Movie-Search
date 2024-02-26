import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search/firebase_options.dart';
import 'package:movie_search/model/localeStorageService/sqflite_service.dart';
import 'package:movie_search/view/screens/search_screen.dart';
import 'package:movie_search/viewModel/blocs/favorite_bloc.dart';
import 'package:movie_search/viewModel/blocs/search_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SqfliteService().openDataBase();
  runApp(const MultiProv());
}

class MultiProv extends StatelessWidget {
  const MultiProv({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
        BlocProvider(
          create: (context) => FavoriteBloc(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SaerchScreen(),
    );
  }
}
