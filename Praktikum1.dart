// Langkah 1
// void main() {
//   String test = "test2";
//   if (test == "test1") {
//     print("Test1");
//   } else if (test == "test2") {
//     print("Test2");
//   } else {
//     print("Something else");
//   }

//   if (test == "test2") print("Test2 again");
// }

// ---------------------------------------------------------------

// Langkah 2

// Hasil dari run adalah

// Test2
// Test2 again

// ---------------------------------------------------------------

// Langkah 3

void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }
  if (test == "test2") print("Test2 again");

  String test1 = "true";
  if (test1 == "true") {
    print("Kebenaran");
  }
}
// Hasil awalnya adalah error, namun setelah diperbaiki maka hasilnya menjadi
// "Test2"
// "Test2 again"
// "Kebenaran"
