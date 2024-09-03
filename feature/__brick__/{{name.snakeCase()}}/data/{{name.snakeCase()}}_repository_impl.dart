import 'package:{{package_name}}/src/common/data_state/data_state.dart';
import 'package:{{package_name}}/src/common/network/base_api_repository.dart';
import 'package:{{package_name}}/src/features/{{name.snakeCase()}}/data/datasource/{{name.snakeCase()}}_api.dart';
import 'package:{{package_name}}/src/features/{{name.snakeCase()}}/domain/{{name.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/models/{{name.snakeCase()}}_model.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/mapper/{{name.snakeCase()}}_mapper.dart';
import 'package:retrofit/retrofit.dart';

class {{name.pascalCase()}}Impl extends BaseApiRepository implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}Api _api;
  {{name.pascalCase()}}Impl(
    this._api,
  );

  @override
  Future<DataState<{{name.pascalCase()}}Model>> {{name}}() =>
      getStateOf<{{name.pascalCase()}}Model>(
        request: () => _api.{{name}}().then(
            (value) => HttpResponse(value.data.toModel(), value.response)),
      );
}
