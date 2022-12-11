class Shopping {
  String shopping_resim_adi;
  double shopping_fiyat;
  int indirim;
  String baslik;
  String aciklama;
  int count;

  Shopping(this.shopping_resim_adi, this.shopping_fiyat, this.indirim,
      this.baslik, this.aciklama, this.count);
} //Sın

class Provider {
  static List<Shopping> cartList = [];
}
