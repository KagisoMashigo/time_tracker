import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

abstract class Database {
  // Future<void> setJob(Job job);
  Future<void> createJob(Map<String, dynamic> jobData);

  // Future<void> deleteJob(Job job);

  // Future<void> setEntry(Job job);

  // Future<void> deleteEntry(Job job);

  // Stream<List<Job>> jobStream();

  // Stream<List<Entry>> entriesStream({Job job});

}

class FirestoreDatabase implements Database {
  FirestoreDatabase({@required this.uid}) : assert(uid != null);

  final String uid;

  Future<void> createJob(Map<String, dynamic> jobData) async {
    final endpoint = "users/$uid/jobs/job_abc";
    final doucmentReference = FirebaseFirestore.instance.doc(endpoint);
    await doucmentReference.set(jobData);
  }
}
