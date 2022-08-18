import 'package:flut_app/bloc/person.dart';
import 'package:flutter/foundation.dart' show immutable;

const person1Url =
    "http://127.0.0.1:5500/BigProjects/flut_app3/api/persons1.json";
const person2Url =
    "http://127.0.0.1:5500/BigProjects/flut_app3/api/persons2.json";

typedef PersonsLoader = Future<Iterable<Person>> Function(String url);

@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonAction implements LoadAction {
  final String url;
  final PersonsLoader loader;
  const LoadPersonAction({required this.url, required this.loader}) : super();
}
