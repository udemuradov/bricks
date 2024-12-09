import 'package:{{project_name}}/core/utils/exception_handling.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/data/datasource/{{name.snakeCase()}}_api.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/data/mappers/{{name.snakeCase()}}_mapper.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/{{name.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/model/{{name.snakeCase()}}_model.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}Api _api;
  {{name.pascalCase()}}RepositoryImpl(
    this._api,
  );

  @override
  Future<{{name.pascalCase()}}Model> fetch{{name.pascalCase()}}() async {
    try {
      return await _api.fetch{{name.pascalCase()}}().then(
        (value) => value.toModel(),
      );
    } catch (e) {
      throw onApiException(e);
    }
  }
}
