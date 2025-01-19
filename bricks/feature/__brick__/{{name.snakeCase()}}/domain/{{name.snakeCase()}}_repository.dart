import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/model/{{name.snakeCase()}}_model.dart';

abstract interface class {{name.pascalCase()}}Repository {
  Future<{{name.pascalCase()}}Model> fetch{{name.pascalCase()}}();
}