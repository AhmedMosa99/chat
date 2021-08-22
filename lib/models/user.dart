import 'dart:convert';

class User {
  String name;
  String email;
  String password;
  int age;
  User({
     this.name,
     this.email,
     this.password,
     this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      password: map['password'],
      age: map['age'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
