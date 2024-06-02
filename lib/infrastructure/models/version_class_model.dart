import 'package:session09_app_pokedex/domain/entities/version_class.dart';

class VersionClassModel {
  final String name;

  VersionClassModel({
    required this.name,
  });
  factory VersionClassModel.fromJson(Map<String, dynamic> json) =>
      VersionClassModel(
        name: json['name'],
      );

  VersionClass toVersionClassEntity() => VersionClass(name: name);
}
