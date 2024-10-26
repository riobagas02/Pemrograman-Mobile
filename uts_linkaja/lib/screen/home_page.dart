import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(214, 240, 241, 246),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/linkaja_logo.png',
                    width: 50,
                  ),
                  Row(
                    children: [
                      _buildIconWithBox(Icons.favorite),
                      const SizedBox(width: 10),
                      _buildIconWithBox(Icons.headset_mic),
                    ],
                  ),
                ],
              ),
            ),

            // Kotak profil
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi, Rio Bagas Hermawan',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Balance',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Rp 100.000.000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bonus Balance',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Rp 50.000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Kotak 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildActionItem('icons/TopUp.png', 'TopUp'),
                  _buildActionItem('icons/CashOut.png', 'CashOut'),
                  _buildActionItem('icons/SendMoney.png', 'Send Money'),
                  _buildActionItem('icons/SeeAll.png', 'See All'),
                ],
              ),
            ),

            // Kotak 2
            GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                _buildActionItem('icons/Pulsa.png', 'Pulsa/Data'),
                _buildActionItem('icons/Electricity.png', 'Electricity'),
                _buildActionItem('icons/HematLengkapByTelkomsel.png', 'Hemat Lengkap by Telkomsel'),
                _buildActionItem('icons/KartuUangElektronik.png', 'Kartu Ulang Elektronik'),
                _buildActionItem('icons/Gereja.png', 'Gereja'),
                _buildActionItem('icons/Infaq.png', 'Infaq'),
                _buildActionItem('icons/OtherDonations.png', 'Other Donation'),
                _buildActionItem('icons/More.png', 'More'),
              ],
            ),

            // Banner iklan geser manual
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              height: 150,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Image.asset('images/iklan1.png', fit: BoxFit.cover),
                  Image.asset('images/iklan2.png', fit: BoxFit.cover),
                  Image.asset('images/iklan3.png', fit: BoxFit.cover),
                  Image.asset('images/iklan4.png', fit: BoxFit.cover),
                  Image.asset('images/iklan5.png', fit: BoxFit.cover),
                  Image.asset('images/iklan6.png', fit: BoxFit.cover),
                  Image.asset('images/iklan7.png', fit: BoxFit.cover),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithBox(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.redAccent),
    );
  }

  Widget _buildActionItem(String imagePath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }
}
