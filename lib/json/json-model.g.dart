// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json-model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dog _$DogFromJson(Map<String, dynamic> json) {
  return Dog(
    name: json['name'] as String,
    breed: json['breed'] as String,
  );
}

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
      'name': instance.name,
      'breed': instance.breed,
    };

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    dogs: (json['dogs'] as List)
        ?.map((e) => e == null ? null : Dog.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    county: json['county'] as String ?? 'bucks',
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'county': instance.county,
      'dogs': instance.dogs,
    };
