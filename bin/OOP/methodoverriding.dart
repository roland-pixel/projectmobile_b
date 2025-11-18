class ortu {

  String? nama;
  int? umur;

  void hobi(){
    print('mancing');
  }
}

class anak extends ortu {

  void hobi(){
    print('main game');
  }
}

void main() {
  var ortu1 =ortu();
  ortu1.hobi();

  var anak1 = anak();
  anak1.hobi();
  }