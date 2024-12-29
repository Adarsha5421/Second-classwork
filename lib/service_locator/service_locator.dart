import 'package:classassignment2/bloc/area_of_circle_bloc.dart';
import 'package:classassignment2/bloc/simple_interest_bloc.dart';
import 'package:classassignment2/bloc/student_bloc.dart';
import 'package:classassignment2/cubit/dashboard_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
  _initCubit();
}

void _initBloc() {
  serviceLocator
      .registerFactory<SimpleInterestBloc>(() => SimpleInterestBloc());
  serviceLocator.registerFactory<AreaOfCircleBloc>(() => AreaOfCircleBloc());
  serviceLocator.registerFactory<StudentBloc>(() => StudentBloc());
}

_initCubit() {
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator<SimpleInterestBloc>(),
      serviceLocator<AreaOfCircleBloc>(),
      serviceLocator<StudentBloc>(),
    ),
  );
}
