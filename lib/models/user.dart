import 'authorisation.dart';

class User {
  int? id;
  String? name;
  String? email;
  Authorisation? authorisation;

  User({this.id, this.name, this.email, this.authorisation});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user']['id'],
      name: json['user']['name'],
      email: json['user']['email'],
      authorisation: json['user']['authorisation'],
    );
  }
}
