class Product {
  final String id, title, category, image, subTitle, description, price;

  Product({
    this.id,
    this.price,
    this.title,
    this.category,
    this.image,
    this.subTitle,
    this.description,
  });

  // It create an Category from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      category: json["category"],
      subTitle: json["subTitle"],
      description: json["description"],
    );
  }
}

// Our Demo Product
Product product = Product(
  id: "1",
  price: "Полная занятость",
  title: "Алексей Сенников",
  image: "assets/alexei.png",
  category: "Ярославль",
  subTitle: "Ключевые слова",
  description: description,
);

String description =
    "Выиграл хакатон; Готов работать и за небольшую зарплату; Важен коллектив";