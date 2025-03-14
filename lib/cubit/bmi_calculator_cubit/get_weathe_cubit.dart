import 'package:bmi_calculator/cubit/bmi_calculator_cubit/bmi_calculation_states_cubit_.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCalcultionCubit extends Cubit<BmiStates> {
  BmiCalcultionCubit(super.initialState);

  bmiCalculation({required double? height, required double? weight}) {
    if (height == null || weight == null) {
      emit(InitialState());
    } else {
      emit(CalculationState());
    }
  }
}
