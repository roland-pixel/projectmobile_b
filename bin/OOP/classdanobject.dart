class car{

  String namaMobil = "Toyota";
  String? branMobil;
  final String namaNegara = "Jepang";

  void tampilkanDataMobil(String brandMobil){
    print('Ini adalah Mobil $namaMobil dengan brand $brandMobil Dari negara $namaNegara');
  }

}

void main(){
  var Mobil1 = car();
  Mobil1.tampilkanDataMobil("Avanza");
}