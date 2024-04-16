class UserModel {
  bool? status;
  String? token;
  String? success;
  String? id;
  String? name;
  String? email;

  UserModel(
      {this.status, this.token, this.success, this.id, this.name, this.email});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    token = json['token'];
    success = json['Success'];
    id = json['Id'];
    name = json['Name'];
    email = json['Email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['token'] = token;
    data['Success'] = success;
    data['Id'] = id;
    data['Name'] = name;
    data['Email'] = email;
    return data;
  }
}
