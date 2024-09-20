// Langkah 1

// void main(){
//   for (Index = 10; index < 27; index) {
//     print(Index);
//   }
// }

// Langkah 2
// void main() {
//   int index;
//   for (index = 10; index < 27; index++) {
//     print(index);
//   }
// }

// Langkah 3
// void main() {
//   If (Index == 21) break;
//   Else If (index > 1 || index < 7) continue;
//   print(index);
// }

// Langkah 3
void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}