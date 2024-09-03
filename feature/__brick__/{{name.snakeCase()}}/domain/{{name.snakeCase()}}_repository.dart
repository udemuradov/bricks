import 'package:{{project_name}}/src/common/data_state/data_state.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/models/{{name.snakeCase()}}_model.dart';

abstract class {{name.pascalCase()}}Repository {
  Future<DataState<{{name.pascalCase()}}Model>> {{name}}();
}