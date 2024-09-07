import 'package:dio/dio.dart' hide Headers;
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/data/dto/{{name.snakeCase()}}_dto.dart';
import 'package:retrofit/retrofit.dart';

part '../../../../../../feature/__brick__/{{name.snakeCase()}}/data/datasource/{{name.snakeCase()}}_api.g.dart';

@RestApi(baseUrl: String.fromEnvironment('HOST'))
abstract class {{name.pascalCase()}}Api {
  factory {{name.pascalCase()}}Api(Dio dio, {String baseUrl}) = _{{name.pascalCase()}}Api;

  @GET('/url-name')
  Future<HttpResponse<{{name.pascalCase()}}Dto>> fetch{{name.pascalCase()}}();
}
