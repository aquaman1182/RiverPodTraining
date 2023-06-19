import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = StateProvider((ref) {
  return FirebaseAuth.instance.currentUser;
});

final infoTextProvider = StateProvider((ref) {
  return '';
});

final emailProvider = StateProvider((ref) {
  return '';
});

final passwordProvider = StateProvider((ref) {
  return '';
});

final messageProvider = StateProvider((ref) {
  return '';
});

final postsQueryProvider = StateProvider((ref) {
  return FirebaseFirestore.instance
    .collection('posts')
    .orderBy('date')
    .snapshots();
});
