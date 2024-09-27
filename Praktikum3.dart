// Langkah 1
// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }

// Langkah 2
// Menampilkan hasil output berupa nilai variable gift dan nobleGases

// Langkah 3
// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);

//   var mhs1 = Map<String, String>();
//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   var mhs2 = Map<int, String>();
//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

//   print(mhs1);
//   print(mhs2);
// }

// Hasil dari outputnya tidak menampilkan variable mhs1 dan mhs2
// karena tidak dilakukan pemanggilan

void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1.addAll({
    'Nama': 'Rio Bagas Hermawan',
    'NIM': '2241720193',
  });
  mhs2.addAll({
    26: 'Rio Bagas Hermawan',
    34: '2241720193',
  });
  gifts.addAll({
    'Nama': 'Rio Bagas Hermawan',
    'NIM': '2241720193',
  });
  nobleGases.addAll({
    26: 'Rio Bagas Hermawan',
    34: '2241720193',
  });

  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);
}