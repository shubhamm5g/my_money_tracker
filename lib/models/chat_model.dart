class ChatModel {
  final int id;
  final String message;
  final String date;

  ChatModel({required this.id, required this.message, required this.date});

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      ChatModel(id: json['id'], message: json['message'], date: json['date']);

  Map<String, dynamic> toJson() => {'id': id, 'message': message, 'date': date};
}
