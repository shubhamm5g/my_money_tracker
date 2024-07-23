class TestingModel {
  final int? id;
  final String name;
  const TestingModel({required this.id, required this.name});
  factory TestingModel.fromJson(Map<String, dynamic> json) =>
      TestingModel(id: json['id'], name: json['name']);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
