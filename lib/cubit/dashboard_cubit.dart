import 'package:classassignment2/bloc/area_of_circle_bloc.dart';
import 'package:classassignment2/bloc/simple_interest_bloc.dart';
import 'package:classassignment2/bloc/student_bloc.dart';
import 'package:classassignment2/view/area_of_circle_view.dart';
import 'package:classassignment2/view/simple_intrest_view.dart';
import 'package:classassignment2/view/student_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._simpleInterestBloc,
    this._areaOfCircleBloc,
    this._studentBloc,
  ) : super(null);

  final SimpleInterestBloc _simpleInterestBloc;
  final AreaOfCircleBloc _areaOfCircleBloc;
  final StudentBloc _studentBloc;

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _simpleInterestBloc,
            child: SimpleInterestView(),
          ),
        ));
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaOfCircleBloc,
          child: AreaOfCircleView(),
        ),
      ),
    );
  }

  void openStudentListView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentBloc,
          child: StudentView(),
        ),
      ),
    );
  }
}
