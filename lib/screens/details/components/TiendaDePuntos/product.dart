class Product {
  final String image, title, description, price;
  final int  id;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
});

}

List<Product> products = [
  Product(
      id: 1,
      title: "Rappi",
      price: "30.000",
      description: "Cupon de Rappi valor de \$ 30.000",
      image: "assets/images/Rappi.png"
  ),
  Product(
      id: 2,
      title: "Uber",
      price: "20.000",
      description: "Cupon de Uber valor de \$ 20.000",
      image: "assets/images/Uber.png"
  ),
  Product(
      id: 3,
      title: "Didi",
      price: "15.000",
      description: "Cupon de Didi valor de \$ 15.000",
      image: "assets/images/Didi.png"
  ),
  Product(
      id: 4,
      title: "Didi Food",
      price: "10.000",
      description: "Cupon de Didi Food valor de \$ 10.000",
      image: "assets/images/DidiFood.png"
  ),
  Product(
      id: 5,
      title: "Merqueo",
      price: "20.000",
      description: "Cupon de Merqueo valor de \$ 20.000",
      image: "assets/images/Merqueo.png"
  ),
  Product(
    id: 6,
    title: "Amazon Prime Video",
    price: "15.000",
    description: "Cupon de Amazon Prime Video de 3 meses",
    image: "assets/images/Amazon_Prime.png"
  )
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
