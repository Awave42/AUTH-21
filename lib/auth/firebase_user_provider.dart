import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Auth21FirebaseUser {
  Auth21FirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

Auth21FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Auth21FirebaseUser> auth21FirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Auth21FirebaseUser>((user) => currentUser = Auth21FirebaseUser(user));
