class Sectionmodel {
  Sectionmodel({
      this.message, 
      this.result, 
      this.hasError, 
      this.status,});

  Sectionmodel.fromJson(dynamic json) {
    message = json['Message'];
    result = json['Result'] != null ? json['Result'].cast<String>() : [];
    hasError = json['HasError'];
    status = json['Status'];
  }
  String? message;
  List<String>? result;
  bool? hasError;
  int? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Message'] = message;
    map['Result'] = result;
    map['HasError'] = hasError;
    map['Status'] = status;
    return map;
  }

}