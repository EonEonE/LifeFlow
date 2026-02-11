class AuthService {
  static final Map<String, String> _users = {
    'user@lifeflow.com': 'password123',
  };

  static bool registerUser(String email, String password) {
    final key = email.trim();
    if (_users.containsKey(key)) return false;
    _users[key] = password;
    return true;
  }

  static bool authenticate(String email, String password) {
    final key = email.trim();
    return _users.containsKey(key) && _users[key] == password;
  }

  static bool userExists(String email) => _users.containsKey(email.trim());
}
