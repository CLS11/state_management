import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:redux/redux.dart' as redux;
import 'package:reduxexample/app_state.dart';
import 'package:reduxexample/appstate_reducer.dart';
import 'package:reduxexample/item_filter.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final redux.Store<AppState> store = redux.Store<AppState>(
      appStateReducer,
      initialState: const AppState(
        items: [],
        filter: ItemFilter.all,
      ),
    );
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
