abstract class CounterStates {}
class CounterInitialstate extends CounterStates{}
class Counterplusstate extends CounterStates
{
 final int counter;

  Counterplusstate(this.counter);
}
class Counterminusstate extends CounterStates{
  final int counter;

  Counterminusstate(this.counter);
}