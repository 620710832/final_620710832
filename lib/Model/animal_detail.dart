class animaldetail {
  final int id;
  final String name;
  final String image;

  animaldetail({
    required this.id,
    required this.name,
    required this.image,
  });

  factory animaldetail.fromJson(Map<String, dynamic> json) {
    return animaldetail(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }

  animaldetail.fromJson2(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['image'];
}