import 'package:{{project_name}}/src/features/{{name.snakeCase()}}/presentation/ui/{{name.snakeCase()}}_screen.dart';
import 'package:go_router/go_router.dart';

class {{name.pascalCase()}}RouteFactory {
  // final void Function(BuildContext context) onLogin;

  static const {{name.snakeCase()}} = '{{name.snakeCase()}}';


  GoRoute get build{{name.pascalCase()}} => GoRoute(
          path: '{{name.paramCase()}}',
          name: {{name.snakeCase()}},
          builder: (context, state) => {{name.pascalCase()}}Screen(),
          routes: []);
}
