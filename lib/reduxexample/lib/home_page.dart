import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart' as redux;
import 'package:reduxexample/add_item.dart';
import 'package:reduxexample/app_state.dart';
import 'package:reduxexample/appstate_reducer.dart';
import 'package:reduxexample/changefiltertypeaction.dart';
import 'package:reduxexample/item_filter.dart';
import 'package:reduxexample/remove_item.dart';

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
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: StoreProvider(
        store: store,
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    store.dispatch(
                      ChangeFilterTypeAction(ItemFilter.all),
                    );
                  },
                  child: const Text(
                    'All',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    store.dispatch(
                      ChangeFilterTypeAction(ItemFilter.shortTexts),
                    );
                  },
                  child: const Text(
                    'Short items',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    store.dispatch(
                      ChangeFilterTypeAction(ItemFilter.longTexts),
                    );
                  },
                  child: const Text(
                    'Long items',
                  ),
                ),
              ],
            ),
            TextField(
              controller: textController,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    final text = textController.text;
                    store.dispatch(
                      AddItemAction(text),
                    );
                    textController.clear();
                  },
                  child: const Text(
                    'Add',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final text = textController.text;
                    store.dispatch(
                      RemoveItemAction(text),
                    );
                    textController.clear();
                  },
                  child: const Text(
                    'Remove',
                  ),
                ),
              ],
            ),
            StoreConnector<AppState, Iterable<String>>(
              converter: (store) => store.state.filteredItems,
              builder: (context, items) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items.elementAt(index);
                      return ListTile(
                        title: Text(item),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
