import 'package:reduxexample/app_state.dart';
import 'package:reduxexample/item_filter_reducer.dart';
import 'package:reduxexample/reducer.dart';

AppState appStateReducer(AppState oldState, action) => AppState(
      items: itemsReducer(oldState.items, action),
      filter: itemFilterReducer(oldState, action),
    );
