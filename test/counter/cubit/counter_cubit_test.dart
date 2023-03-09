import 'package:bloc_test/bloc_test.dart';
import 'package:counter_injectable/counter/counter.dart';
import 'package:counter_injectable/di/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    configureDependencies(environment: unitTest);
  });

  group('CounterCubit', () {
    blocTest<CounterCubit, int>(
      'emits [5] when increment is called',
      build: () => getIt.get<CounterCubit>(),
      act: (cubit) => cubit.increment(),
      expect: () => [equals(5)],
    );

    blocTest<CounterCubit, int>(
      'emits [-5] when decrement is called',
      build: () => getIt.get<CounterCubit>(),
      act: (cubit) => cubit.decrement(),
      expect: () => [equals(-5)],
    );
  });
}
