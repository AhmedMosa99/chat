import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gsg2_firebase/models/user.dart';

class FirestoreHelper {
  FirestoreHelper._();
  static FirestoreHelper firestoreHelper = FirestoreHelper._();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  addUser(User user) {
    Future<DocumentReference<Map<String, dynamic>>> users =
        FirebaseFirestore.instance.collection('users').add(user.toMap());
    return users;
  }
}
