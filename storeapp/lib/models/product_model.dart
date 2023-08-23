class Productmodel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
    final String cat;
  final String image;


  Productmodel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.cat,
      required this.image,
      });
  factory Productmodel.fromjson(jsondata) {
    return Productmodel(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        cat: jsondata['category'],
        image: jsondata['image'],
        );
  }
}


