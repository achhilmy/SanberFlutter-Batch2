void main(List<String> args) {
  ///akan mengeksesusi baris yang success
  try {
    int hasil = 10;
    print("hasil pembagian: $hasil}");
  }

  ///akan mengeksekusi baris yang gagal
  catch (e) {
    print("gagal");
  }

  try {
    String teks = "12345";
    int hasil = int.parse(teks);
    print(hasil);
  } catch (e) {
    print("Gagal" + e.toString());
  } finally {
    print("Eksespsi gagal menconvert string ke int ");
  }

  ///try catch dengan finally
  try {
    print("Data dalam try");
  } catch (e) {
    print("Terjadi eksepsi");
  } finally {
    print("Blok finally akan dijalankan, terlepas dari eksepsi atau tidak");
  }
}

////kapan kita menggunakan handling error try catch
///1. saat membuat fungsi yang memiliki potensi berhasil dan gagal
///2. saat kita memproses data yang tidak valid
///3. saat kita membuat banyak cache dan perlu clean up 
///
