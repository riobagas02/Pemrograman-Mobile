import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), 
      child: Row(
        children: [
          Expanded(
            // Soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                // Soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8), 
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, 
                  ),
                ),
              ],
            ),
          ),
          // Soal 3
          const Icon(
            Icons.star,
            color: Colors.red, 
          ),
          const Text('41'), 
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Rio Bagas Hermawan | 2241720193',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ], 
        ),
      ),
    );
  }
}
