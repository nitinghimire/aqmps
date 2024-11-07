import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final String username;
  final String password;
  final String email;

  User(
    this.username,
    this.password,
    this.email,
  );

//example usage for decoding:
//final userMap = jsonDecode(jsonString) as Map<String, dynamic>;
//final user = User.fromJson(userMap);
  factory User.fromjson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'username': String username,
        'password': String password,
        'email': String email,
      } =>
        User(
          username,
          password,
          email,
        ),
      _ => throw const FormatException("Failed to load User"),
    };
  }

//String json = jsonEncode(user);
  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
        'email': email,
      };
}

Future<User> fetchUser() async {
  final response = await http.get(Uri.parse("some url"));

  if (response.statusCode == 200) {
    return User.fromjson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception("Failed to receive http response");
  }
}

// to use to build a widget use some kind of builder called futurebuilder that has
// something called a snapshot and the basis of that build different widgets for loading, loaded and errors
// and example:
// FutureBuilder<User>(
//   future: futureUser,
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       return Text(snapshot.data!.title);
//     } else if (snapshot.hasError) {
//       return Text('${snapshot.error}');
//     }

//     // By default, show a loading spinner.
//     return const CircularProgressIndicator();
//   },
// ) 
