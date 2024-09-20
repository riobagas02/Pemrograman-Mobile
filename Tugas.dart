// Tugas Praktikum
void main() {
  String nama = 'Rio Bagas Hermawan';
  String nim = '2241720193';

  bool isPrima(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print('$i Adalah bilangan prima');
      print('Nama : $nama');
      print('NIM  : $nim');
      print('---------------------------');
    }
  }
}
