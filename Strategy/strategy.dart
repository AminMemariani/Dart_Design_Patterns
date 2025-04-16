abstract class AuthStrategy {
  void authenticate(String username, String password);
}

class FirebaseAuthStrategy implements AuthStrategy {
  @override
  void authenticate(String username, String password) {
    print("Authenticating $username with Firebase");
  }
}

class MockAuthStrategy implements AuthStrategy {
  @override
  void authenticate(String username, String password) {
    print("Mock login for $username");
  }
}

class AuthContext {
  AuthStrategy _strategy;

  AuthContext(this._strategy);

  set strategy(AuthStrategy strategy) => _strategy = strategy;

  void login(String username, String password) {
    _strategy.authenticate(username, password);
  }
}

void main() {
  var auth = AuthContext(FirebaseAuthStrategy());
  auth.login('john', '1234');

  auth.strategy = MockAuthStrategy();
  auth.login('john', '1234');
}
