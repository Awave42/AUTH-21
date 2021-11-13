import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HealthAndSafetyFirebaseUser {
  HealthAndSafetyFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

HealthAndSafetyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HealthAndSafetyFirebaseUser> healthAndSafetyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HealthAndSafetyFirebaseUser>(
            (user) => currentUser = HealthAndSafetyFirebaseUser(user));
