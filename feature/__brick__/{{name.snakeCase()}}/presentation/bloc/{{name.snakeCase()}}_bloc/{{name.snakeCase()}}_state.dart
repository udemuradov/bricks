part of '{{name.snakeCase()}}_bloc.dart';

class {{name.pascalCase()}}State extends Equatable {
  final bool isLoading;
  const {{name.pascalCase()}}State({this.isLoading = false});

  @override
  List<Object> get props => [isLoading];
}


class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {
  const {{name.pascalCase()}}Loading() : super(isLoading: true);
}

class {{name.pascalCase()}}Success extends {{name.pascalCase()}}State {
  final {{name.pascalCase()}}Model data;
  const {{name.pascalCase()}}Success({
    required this.data,
  }) : super();

    @override
  List<Object> get props => [data];
}

class {{name.pascalCase()}}Failed extends {{name.pascalCase()}}State {
  final String err;
  const {{name.pascalCase()}}Failed({
    this.err = 'bloc error',
  }) : super();

    @override
  List<Object> get props => [err];
}