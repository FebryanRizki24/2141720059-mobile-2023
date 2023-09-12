void main(){
  //Praktikum 3
// //Langkah 1
  for (num index = 10; index < 27; index++) {
    print(index);
  }
// //Langkah 3
for (num index = 10; index < 27; index++) {
    if (index == 21){
      break;
    } else if (index > 1 && index < 7){
      continue;
    } 
    print(index);
  }
}