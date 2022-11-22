import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:we_travel/features/account/domain/app_user.dart';

final db = FirebaseFirestore.instance;

/// users コレクションの参照。
final appUsersRef = db.collection('users').withConverter(
      fromFirestore: (ds, _) => AppUser.fromDocumentSnapshot(ds),
      toFirestore: (obj, _) => obj.toJson(),
    );

/// users ドキュメントの参照。
DocumentReference<AppUser> appUserRef({
  required String userId,
}) =>
    appUsersRef.doc(userId);
