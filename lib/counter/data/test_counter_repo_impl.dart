import 'package:counter_injectable/counter/domain/repository/counter_repository.dart';
import 'package:counter_injectable/di/injection_container.dart';
import 'package:injectable/injectable.dart';

@unitTest
@Injectable(as: CounterRepository)
class TestCounterRepositoryImpl implements CounterRepository {
  @override
  int decrementValueBy() {
    return 5;
  }

  @override
  int incrementValueBy() {
    return 5;
  }
}
