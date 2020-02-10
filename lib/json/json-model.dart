import 'package:json_annotation/json_annotation.dart';

part 'json-model.g.dart';


@JsonSerializable()
class Dog {
  final String name;
  final String breed;

  Dog({this.name, this.breed});
  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
  Map<String, dynamic> toJson() => _$DogToJson(this);
}


@JsonSerializable()
class Person {
  final String firstName;
  final String lastName;

  @JsonKey(defaultValue: "bucks")
  final String county;

  @JsonKey(nullable: true)
  final List<Dog> dogs;

  Person({this.firstName, this.lastName, this.dogs,this.county});
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}