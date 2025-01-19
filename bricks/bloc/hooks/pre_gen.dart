import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final style = context.vars['style'];
  context.vars = {
    ...context.vars,
    'use_freezed_union': style == 'freezed_union',
    'use_equatable': style == 'equatable',
    'use_freezed_sealed': style == 'freezed_sealed',
  };
}
