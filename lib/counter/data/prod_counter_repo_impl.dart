import 'package:counter_injectable/counter/domain/repository/counter_repository.dart';
import 'package:counter_injectable/di/injection_container.dart';
import 'package:injectable/injectable.dart';

@production
@Injectable(as: CounterRepository)
class ProdCounterRepoImpl implements CounterRepository {
  @override
  int decrementValueBy() {
    return 3;
  }

  @override
  int incrementValueBy() {
    return 3;
  }
}
