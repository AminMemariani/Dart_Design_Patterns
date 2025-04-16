abstract class Observer {
  void update(String message);
}

class ConcreteObserver implements Observer {
  final String name;

  ConcreteObserver(this.name);

  @override
  void update(String message) {
    print('$name received: $message');
  }
}

class Subject {
  final List<Observer> _observers = [];

  void attach(Observer observer) => _observers.add(observer);
  void detach(Observer observer) => _observers.remove(observer);

  void notify(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}

void main() {
  var subject = Subject();
  var o1 = ConcreteObserver('Observer 1');
  var o2 = ConcreteObserver('Observer 2');

  subject.attach(o1);
  subject.attach(o2);

  subject.notify('Event happened!');
}
