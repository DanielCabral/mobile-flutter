import 'dart:convert';

class LessonsModel {
  final int? index;
  final String? title;
  final String? status;
  final String? url;
  LessonsModel({
    this.index,
    this.title,
    this.status,
    this.url,
  });
  LessonsModel copyWith({
    int? index,
    String? title,
    String? status,
    String? url,
  }) {
    return LessonsModel(
      index: index ?? this.index,
      title: title ?? this.title,
      status: status ?? this.status,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'title': title,
      'status': status,
      'url': url,
    };
  }

  factory LessonsModel.fromMap(Map<String, dynamic> map) {
    return LessonsModel(
      index: map['index'],
      title: map['title'],
      status: map['status'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LessonsModel.fromJson(String source) =>
      LessonsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LessonsModel(index: $index, title: $title, status: $status), url: $url';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LessonsModel &&
        other.index == index &&
        other.title == title &&
        other.status == status &&
        other.url == url;
  }

  @override
  int get hashCode {
    return index.hashCode ^ title.hashCode ^ status.hashCode ^ url.hashCode;
  }
}
