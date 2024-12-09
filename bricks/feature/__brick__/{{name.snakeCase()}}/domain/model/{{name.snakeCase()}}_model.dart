import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_model.freezed.dart';

@freezed
class {{name.pascalCase()}}Model with _${{name.pascalCase()}}Model {
  const factory {{name.pascalCase()}}Model({
  }) = _{{name.pascalCase()}}Model;
}