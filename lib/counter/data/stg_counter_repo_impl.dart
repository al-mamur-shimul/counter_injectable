import 'package:counter_injectable/counter/domain/repository/counter_repository.dart';
import 'package:counter_injectable/di/injection_container.dart';
import 'package:injectable/injectable.dart';

@staging
@Injectable(as: CounterRepository)
class StgCounterRepoImpl implements CounterRepository {
  @override
  int decrementValueBy() {
    return 1;
  }

  @override
  int incrementValueBy() {
    return 1;
  }
}
