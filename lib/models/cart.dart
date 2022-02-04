class Cart{
  String imgUrl;
  String name;
  num price;
  num quantity;

  Cart(this.imgUrl, this.name, this.price, this.quantity);


  static List<Cart> generateCartItems(){
    return [
      Cart(
        'assets/images/round.png',
        'your dish',
        40,
        3,
      ),
      Cart(
        'assets/images/round.png',
        'your dish',
        40,
        3,
      ),
      Cart(
        'assets/images/round.png',
        'your dish',
        40,
        3,
      ),
      Cart(
        'assets/images/round.png',
        'your dish',
        40,
        3,
      ),
    ];
  }
}