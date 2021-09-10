import 'dart:convert';

class LessonsModel {
  final int? index;
  final String? title;
  final String? status;
  LessonsModel({
    this.index,
    this.title,
    this.status,
  });
  LessonsModel copyWith({
    int? index,
    String? title,
    String? status,
  }) {
    return LessonsModel(
      index: index ?? this.index,
      title: title ?? this.title,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'title': title,
      'status': status,
    };
  }

  factory LessonsModel.fromMap(Map<String, dynamic> map) {
    return LessonsModel(
      index: map['index'],
      title: map['title'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonsModel.fromJson(String source) =>
      LessonsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LessonsModel(index: $index, title: $title, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LessonsModel &&
        other.index == index &&
        other.title == title &&
        other.status == status;
  }

  @override
  int get hashCode {
    return index.hashCode ^ title.hashCode ^ status.hashCode;
  }
}
