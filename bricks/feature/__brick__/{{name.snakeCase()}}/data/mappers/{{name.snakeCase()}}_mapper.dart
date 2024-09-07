import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/data/dto/{{name.snakeCase()}}_dto.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/model/{{name.snakeCase()}}_model.dart';


extension {{name.pascalCase()}}Mapper on {{name.pascalCase()}}Dto {
  {{name.pascalCase()}}Model toModel() => {{name.pascalCase()}}Model();
}
