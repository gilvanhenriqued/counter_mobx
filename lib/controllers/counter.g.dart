// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on CounterBase, Store {
  final _$numClickAtom = Atom(name: 'CounterBase.numClick');

  @override
  int get numClick {
    _$numClickAtom.reportRead();
    return super.numClick;
  }

  @override
  set numClick(int value) {
    _$numClickAtom.reportWrite(value, super.numClick, () {
      super.numClick = value;
    });
  }

  final _$CounterBaseActionController = ActionController(name: 'CounterBase');

  @override
  dynamic increment() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.increment');
    try {
      return super.increment();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
numClick: ${numClick}
    ''';
  }
}
