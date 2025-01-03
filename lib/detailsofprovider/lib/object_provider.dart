import 'dart:async';

import 'package:detailsofprovider/base_object.dart';
import 'package:flutter/material.dart';

class ObjectProvider extends ChangeNotifier {
  late String id;
  late CheapObject _cheapObject;
  late StreamSubscription _cheapObjectStreamSubs;
  late ExpensiveObject _expensiveObject;
  late StreamSubscription _expensiveObjectStreamSubs;

  CheapObject get cheapObject => _cheapObject;
  ExpensiveObject get expensiveObject => _expensiveObject;
}
