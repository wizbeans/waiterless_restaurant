class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});


  static List<Food> generateRecommendFoods() {
    return [
      Food (
          'assets/images/round.png',
          'hello',
          'time',
          '4',
          3,
          '12',
          1,
          7,
          [
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
          ],
          'simply put',
          hightLight: true),

      Food (
          'assets/images/round.png',
          'hello',
          'time',
          '4',
          3,
          '12',
          1,
          7,
          [
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
          ],
          'simply put',
          hightLight: true),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food (
          'assets/images/round.png',
          'hello',
          'time',
          '4',
          3,
          '12',
          1,
          7,
          [
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
            {
              'Noodle': 'assets/images/round.png',
            },
          ],
          'simply put',
          hightLight: true),
    ];
  }

}