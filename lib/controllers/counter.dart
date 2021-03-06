import 'package:mobx/mobx.dart';

// diretiva para criação automática da classe mobx
part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable 
  int numClick = 0;

  @action 
  increment() {
    numClick++;
  }
}

// flutter packages pub run build_runner build