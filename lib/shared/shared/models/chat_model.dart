import 'dart:convert';

class ChatModel {
  final String? name;
  final String? lastMessage;
  final String? photo;
  final String? status;
  final String? lastView;

  ChatModel({
    this.name,
    this.lastMessage,
    this.photo,
    this.status,
    this.lastView,
  });
  ChatModel copyWith({
    String? name,
    String? lastMessage,
    String? photo,
    String? status,
    String? lastView,
  }) {
    return ChatModel(
      name: name ?? this.name,
      lastMessage: lastMessage ?? this.lastMessage,
      photo: photo ?? this.photo,
      status: status ?? this.status,
      lastView: lastView ?? this.lastView,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'lastMessage': lastMessage,
      'photo': photo,
      'status': status,
      'lastView': lastView,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      name: map['name'],
      lastMessage: map['lastMessage'],
      photo: map['photo'],
      status: map['status'],
      lastView: map['lastView'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatModel(name: $name, lastMessage: $lastMessage, photo: $photo, status: $status, lastView: $lastView)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatModel &&
        other.name == name &&
        other.lastMessage == lastMessage &&
        other.photo == photo &&
        other.status == status &&
        other.lastView == lastView;
  }

  @override
  int get hashCode {
    return name.hashCode ^ lastMessage.hashCode ^ photo.hashCode ^ status.hashCode ^ lastView.hashCode;
  }
}
