import 'package:redux/redux.dart';
import 'package:reduxexample/add_item.dart';
import 'package:reduxexample/addremove_item.dart';
import 'package:reduxexample/remove_item.dart';

Iterable<String> addItemReducer(
  Iterable<String> previousItems,
  AddItemAction action,
) =>
    previousItems + action.item;

Iterable<String> removeItemReducer(
  Iterable<String> previousItems,
  RemoveItemAction action,
) =>
    previousItems - action.item;

Reducer<Iterable<String>> itemsReducer = combineReducers<Iterable<String>>([
  TypedReducer<Iterable<String>, AddItemAction>(addItemReducer).call,
  TypedReducer<Iterable<String>, RemoveItemAction>(removeItemReducer).call,
]);
