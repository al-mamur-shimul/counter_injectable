import 'package:counter_injectable/di/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

const development = Environment('development');
const staging = Environment('staging');
const production = Environment('production');
const unitTest = Environment('test');

@injectable
void configureDependencies({required Environment environment}) =>
    getIt.init(environment: environment.name);
