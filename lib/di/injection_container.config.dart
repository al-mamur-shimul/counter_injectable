// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:counter_injectable/counter/data/dev_counter_repo_impl.dart'
    as _i4;
import 'package:counter_injectable/counter/data/prod_counter_repo_impl.dart'
    as _i5;
import 'package:counter_injectable/counter/data/stg_counter_repo_impl.dart'
    as _i6;
import 'package:counter_injectable/counter/data/test_counter_repo_impl.dart'
    as _i7;
import 'package:counter_injectable/counter/domain/repository/counter_repository.dart'
    as _i3;
import 'package:counter_injectable/counter/view/cubit/counter_cubit.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _development = 'development';
const String _production = 'production';
const String _staging = 'staging';
const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.CounterRepository>(
      () => _i4.DevCounterRepoImpl(),
      registerFor: {_development},
    );
    gh.factory<_i3.CounterRepository>(
      () => _i5.ProdCounterRepoImpl(),
      registerFor: {_production},
    );
    gh.factory<_i3.CounterRepository>(
      () => _i6.StgCounterRepoImpl(),
      registerFor: {_staging},
    );
    gh.factory<_i3.CounterRepository>(
      () => _i7.TestCounterRepositoryImpl(),
      registerFor: {_test},
    );
    gh.factory<_i8.CounterCubit>(
        () => _i8.CounterCubit(gh<_i3.CounterRepository>()));
    return this;
  }
}
