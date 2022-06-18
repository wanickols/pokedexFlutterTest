import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WAN060122TestOneV01FirebaseUser {
  WAN060122TestOneV01FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

WAN060122TestOneV01FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WAN060122TestOneV01FirebaseUser>
    wAN060122TestOneV01FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WAN060122TestOneV01FirebaseUser>(
            (user) => currentUser = WAN060122TestOneV01FirebaseUser(user));
