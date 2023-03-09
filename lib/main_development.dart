import 'package:counter_injectable/app/app.dart';
import 'package:counter_injectable/bootstrap.dart';
import 'package:counter_injectable/di/injection_container.dart';

void main() {
  configureDependencies(environment: development);
  bootstrap(() => const App());
}
