part of '{{name.snakeCase()}}_bloc.dart';

sealed class {{name.pascalCase()}}Event extends Equatable {
  const {{name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}

class {{name.pascalCase()}}FetchEvent extends {{name.pascalCase()}}Event{
  const {{name.pascalCase()}}FetchEvent();

  @override
  List<Object> get props => [];
}