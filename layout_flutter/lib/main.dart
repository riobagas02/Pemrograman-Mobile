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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Air Terjun Tumpak Sewu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Malang, Jawa Timur',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Air Terjun Tumpak Sewu adalah surga tersembunyi di Jawa Timur, terletak di perbatasan Lumajang dan Malang. '
            'Air terjun megah setinggi 120 meter ini dikenal karena formasi uniknya yang menyerupai tirai raksasa dengan '
            'puluhan aliran air yang jatuh serentak dari tebing-tebing tinggi. Nama "Tumpak Sewu", yang berarti "seribu air terjun", '
            'tepat menggambarkan keajaiban alam ini. Dikelilingi oleh hutan tropis yang subur dan pegunungan hijau, Tumpak Sewu menawarkan '
            'pemandangan memukau dari atas bukit atau sensasi menyegarkan dari dasar lembah. Tempat ini adalah destinasi impian bagi para petualang '
            'yang mencari keindahan alam yang tiada banding.',
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16),
          Text(
            'Rio Bagas Hermawan | 2241720193',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Rio Bagas Hermawan | 2241720193',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/air_terjun.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
