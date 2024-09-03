import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_dto.g.dart';

@JsonSerializable(createToJson: false)
class {{name.pascalCase()}}Dto extends Equatable {
  const {{name.pascalCase()}}Dto({});
  factory {{name.pascalCase()}}Dto.fromJson(Map<String, dynamic> json) =>
    _${{name.pascalCase()}}DtoFromJson(json);

   @override
  List<Object> get props => [];
}
