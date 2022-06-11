import 'dart:convert';

Signup SignupFromJson(String? str) => Signup.fromJson(json.decode(str!));

String SignupToJson(Signup data) => json.encode(data.toJson());

class Signup {
  Signup({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  String accessToken;
  String refreshToken;
  User user;

  factory Signup.fromJson(Map<String, dynamic> json) => Signup(
    accessToken: json["access_token"],
    refreshToken: json["refresh_token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "refresh_token": refreshToken,
    "user": user.toJson(),
  };
}

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
  });

  int id;
  String firstName;
  String lastName;
  String username;
  String email;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
    "email": email,
  };
}