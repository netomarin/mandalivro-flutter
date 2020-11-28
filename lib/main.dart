import 'package:flutter/material.dart';
import 'package:mandalivro_flutter/ui/AppHomePage.dart';

void main() => runApp(MandaLivroApp());

class MandaLivroApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manda Livro',
      home: AppHomePage(title: 'Manda Livro'),
    );
  }
}