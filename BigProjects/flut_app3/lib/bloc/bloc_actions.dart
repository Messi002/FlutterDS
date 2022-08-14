import 'package:flutter/foundation.dart' show immutable;

const Person1Url = "http://127.0.0.1:5500/BigProjects/flut_app3/api/persons1.json";
const Person2Url = "http://127.0.0.1:5500/BigProjects/flut_app3/api/persons2.json";




@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonAction implements LoadAction {
  final String url;

  const LoadPersonAction({required this.url}) : super();
}

