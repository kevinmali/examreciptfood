class resipes {
  String name;
  String steps;
  String images;

  resipes({required this.name, required this.steps, required this.images});

  factory resipes.frommap({required Map data}) {
    return resipes(
        name: data['name'], steps: data['steps'], images: data['images']);
  }
}
