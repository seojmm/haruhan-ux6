class UserModel {
  final String id;
  final String password;

  UserModel({
    required this.id,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], password: json['password']);
  }
}
