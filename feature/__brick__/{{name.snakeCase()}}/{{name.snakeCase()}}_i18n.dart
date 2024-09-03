import 'package:intl/intl.dart';

class {{name.pascalCase()}}I18n {
  static String get newText => Intl.message(
        'New text',
        name: '{{name.snakeCase()}}_newText',
      );
}
