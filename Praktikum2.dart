// Lagkah 1
// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// Langkah 2
// Tidak terjadi error dan menghasilkan output
// berupa nilai dari variable

// Langkah 3
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = <String>{}; // Creates a map, not a set.

  print(names1);
  // print(names2);
  // print(names3);

  names1.add("Rio Bagas Hermawan");
  names2.add("2241720193");
  names3.addAll({"Rio Bagas Hermawan", "2241720193"});
  print(names1);
  print(names2);
  print(names3);
}
