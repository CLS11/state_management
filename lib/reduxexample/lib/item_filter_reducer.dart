import 'package:reduxexample/app_state.dart';
import 'package:reduxexample/changefiltertypeaction.dart';
import 'package:reduxexample/item_filter.dart';

ItemFilter itemFilterReducer(
  AppState oldState,
  dynamic action,
) {
  if (action is ChangeFilterTypeAction) {
    return action.filter;
  } else {
    return oldState.filter;
  }
}
