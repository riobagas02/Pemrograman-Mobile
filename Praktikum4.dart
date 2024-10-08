// Langkah 1
// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list1);
//   print(list2);
//   print(list2.length);
// }

// Terjadi error karena tidak ada variable bernama list1

// Langkah 2
// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);
//   print(list2);
//   print(list2.length);
// }
// Dengan mengganti variable bernama list 1 menjadi list2 dapat mengatasi error

// Langkah 3
// void main() {
//   var list1 = [1, 2, null];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
// }

// terjadi error karena list1 tidak terdefinisi

// Langkah 4
// void main() {
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);
// }

// Langkah 4 Fix
// void main() {
//   bool promoActive = true;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   promoActive = false;
//   nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);
// }

// Langkah 5
// void main() {
//   bool promoActive = true;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   promoActive = false;
//   nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
//   print (nav2);
// }

// Terjadi error karena Variabel login belum dideklarasikan

// Langkah 5
// void main() {
//   bool promoActive = true;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   promoActive = false;
//   nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   String login = 'Manager';
//   var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
//   print(nav2);

//   login = 'Employee';
//   nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
//   print(nav2);
// }

// Langkah 6
void main() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

// Tidak terjadi error pada langkah 6