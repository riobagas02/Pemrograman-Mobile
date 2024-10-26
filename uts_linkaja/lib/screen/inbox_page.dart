import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(214, 240, 241, 246),
        appBar: AppBar(
          title: const Text('Inbox'),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Notification'),
              Tab(text: 'Update'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Bagian Notification
            ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Kotak Notification 1
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yesterday, 06:34',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Email telah berhasil diverifikasi. Kamu dapat menggunakan email ini untuk memulihkan akunmu atau atur pin baru ketika kamu terlupa.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Bagian Update
            ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Kotak Update 1
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yesterday, 10:01',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Hingga akhir bulan dapatkan Cashback s/d 8Rb pergi kemanapun bayar transaksi makin murah.',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset(
                    'images/updateinbox.png', 
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
