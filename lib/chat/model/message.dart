import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String id;
  final String content;
  final DateTime createdAt;

  Message({
    required this.id,
    required this.content,
    required this.createdAt,
  });

  factory Message.fromJson(DocumentSnapshot doc) {
    Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
    return Message(
      id: json['id'] as String? ?? 'unknown',
      content: json['message'] as String? ?? 'No content',
      createdAt: (json['createdAt'] as Timestamp).toDate(),
    );
  }
}
