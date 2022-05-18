// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$counterAtom = Atom(name: 'HomeStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$immobilesAtom = Atom(name: 'HomeStoreBase.immobiles');

  @override
  List<Immobile> get immobiles {
    _$immobilesAtom.reportRead();
    return super.immobiles;
  }

  @override
  set immobiles(List<Immobile> value) {
    _$immobilesAtom.reportWrite(value, super.immobiles, () {
      super.immobiles = value;
    });
  }

  final _$getAllImmobilesAsyncAction =
      AsyncAction('HomeStoreBase.getAllImmobiles');

  @override
  Future<void> getAllImmobiles() {
    return _$getAllImmobilesAsyncAction.run(() => super.getAllImmobiles());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void setImmobiles(List<Immobile> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setImmobiles');
    try {
      return super.setImmobiles(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
immobiles: ${immobiles}
    ''';
  }
}
