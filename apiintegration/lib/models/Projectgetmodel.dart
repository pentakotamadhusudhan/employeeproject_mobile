class Projectgetmodel {
  Projectgetmodel({
      this.regId,
      this.title,
      this.description,});

  Projectgetmodel.fromJson(dynamic json) {
    regId = json['regId'];
    title = json['title'];
    description = json['description'];
  }
  String? regId;
  String? title;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['regId'] = regId;
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}