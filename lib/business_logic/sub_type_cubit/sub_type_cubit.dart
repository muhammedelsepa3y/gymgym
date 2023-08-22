import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/business_logic/sub_type_cubit/sub_type_states.dart';

class SubtypeCubit extends Cubit<SubtypeStates> {
  SubtypeCubit() : super(InitialState());

  static SubtypeCubit get(context) => BlocProvider.of<SubtypeCubit>(context);

  bool is_selected = false;
  void isSelected() {
    is_selected = !is_selected;
    emit(ChangeSelectedState());
  }
}
