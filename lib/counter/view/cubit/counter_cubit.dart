import 'package:bloc/bloc.dart';
import 'package:counter_injectable/counter/domain/repository/counter_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterCubit extends Cubit<int> {
  CounterCubit(this.repository) : super(0);
  final CounterRepository repository;

  void increment() {
    emit(state + repository.incrementValueBy());
  }

  void decrement() {
    emit(state - repository.decrementValueBy());
  }
}
