import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/model/{{name.snakeCase()}}_model.dart';
import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/domain/{{name.snakeCase()}}_repository.dart';
import 'package:{{project_name}}/src/common/data_state/data_state.dart';
part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{name.pascalCase()}}Repository _{{name.camelCase()}}Repository;
  {{name.pascalCase()}}Bloc(
    this._{{name.camelCase()}}Repository,
  ) : super(const {{name.pascalCase()}}Loading()) {
    on<{{name.pascalCase()}}Event>(_fetch{{name.PascalCase()}});
  }

 void _fetch{{name.PascalCase()}}(
    {{name.pascalCase()}}Event event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    final DataState dataState = await _{{name.camelCase()}}Repository.fetch{{name.pascalCase()}}();
    if(dataState is DataSuccess){
      emit({{name.pascalCase()}}Success(
        data: dataState.data,
      ));
    } else{
      emit(const {{name.pascalCase()}}Failed());
    }
  }
}