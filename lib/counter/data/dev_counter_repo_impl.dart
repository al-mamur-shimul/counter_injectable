import 'package:counter_injectable/counter/domain/repository/counter_repository.dart';
import 'package:counter_injectable/di/injection_container.dart';
import 'package:injectable/injectable.dart';

@development
@Injectable(as: CounterRepository)
class DevCounterRepoImpl implements CounterRepository {
  @override
  int decrementValueBy() {
    return 2;
  }

  @override
  int incrementValueBy() {
    return 2;
  }
}
