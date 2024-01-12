void main(List<String> args) {
  // var i = 2;
  // var text1 = " - I love coding";
  // var text2 = " - I will become a mobile developer";

  // print('LOOPING PERTAMA');
  // while (i < 20) {
  //   print(i.toString() + text1);
  //   i += 2;
  // }
  // print(i.toString() + text1);
  // print('LOOPING KEDUA');
  // while (i >= 2) {
  //   print(i.toString() + text2);
  //   i -= 2;
  // }
  ///soal 2
  // print("OUTPUT");
  // var santai = " - Santai";
  // var berkualitas = " - Berkualitas";
  // var loveCoding = " - I Love Coding";
  // for (var i = 1; i <= 20; i++) {
  //   if (i % 2 != 1) {
  //     print(i.toString() + berkualitas);
  //   } else if (i % 3 == 0) {
  //     print(i.toString() + loveCoding);
  //   } else {
  //     print(i.toString() + santai);
  //   }
  // }

  ///Soal 3
  // var i = 1;
  // var j = 1;
  // var panjang = 8;
  // var lebar = 4;
  // var pagar = '';

  // while (j <= lebar) {
  //   // 9 <= 8
  //   while (i <= panjang) {
  //     // 1 <= 4
  //     pagar += '#';
  //     i++;
  //   }
  //   print(pagar); // ####
  //   pagar = ''; // ""
  //   i = 1; // ""
  //   j++;
  // }
  //soal 4
  int i = 1;
  int j = 1;
  var alas = 7;
  var tinggi = 7;
  var pagar = "";

  for (i = 1; i <= tinggi; i++) {
    for (j = 1; j <= i; j++) {
      pagar += "#";
    }
    print(pagar);
    pagar = "";
  }
}
