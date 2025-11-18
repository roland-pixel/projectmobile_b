class car {
  String? namaMobil;
  String? branMobil;
  final String namaNegara = "Jepang";

  car(String namaMobil, String brandMobil) {
    this.namaMobil = namaMobil;
    this.branMobil = brandMobil;
  }

  void tampilkanDataMobil() {
    print(
        'Ini adalah Mobil $namaMobil dengan brand $branMobil Dari negara $namaNegara');
  }
}

void main() {
  var Mobil1 = car("Honda", "Civic");
  Mobil1.tampilkanDataMobil();
}
