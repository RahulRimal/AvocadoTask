


// I created this model to show the data that is being fetched from the API.


// Because the data from provided link couldn't be used for our use case and It didn't also allowed me to make my own json data so I created this file to show the data that is being fetched from the API.



import 'dart:convert';


DemoPerson demoPersonFromJson(String str) => DemoPerson.fromJson(json.decode(str));


class DemoPerson
{
  int id;
  String name;
  String username;
  String email;
  String phone;
  String address;
  

  DemoPerson(
      {
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.phone,
        required this.address,
      });

      
  factory DemoPerson.fromJson(Map<String, dynamic> json) => DemoPerson(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"]["street"] +" " + json["address"]["city"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "phone": phone,
    "address": address,
  };

  

}

class DemoPersonError {
  int code;
  Object message;

  DemoPersonError({required this.code, required this.message});
}

