class OldSystem {
  void legacyMethod() => print('Old system method');
}

abstract class NewSystem {
  void newMethod();
}

class Adapter implements NewSystem {
  final OldSystem _oldSystem;

  Adapter(this._oldSystem);

  @override
  void newMethod() {
    _oldSystem.legacyMethod();
  }
}

void main() {
  var old = OldSystem();
  NewSystem adapted = Adapter(old);
  adapted.newMethod(); // Uses old method through new interface
}
