import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/data/dto/{{name.snakeCase()}}_dto.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part '{{name.snakeCase()}}_api.g.dart';

@RestApi()
abstract class {{name.pascalCase()}}Api {
  factory {{name.pascalCase()}}Api(Dio dio) = _{{name.pascalCase()}}Api;

  @GET('/url')
  Future<{{name.pascalCase()}}Dto> fetch{{name.pascalCase()}}();
}
