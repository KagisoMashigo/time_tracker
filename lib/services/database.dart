import 'package:flutter/foundation.dart';
import 'package:time_tracker_flutter_course/core/data/models/job.dart';
import 'package:time_tracker_flutter_course/services/api_path.dart';
import 'package:time_tracker_flutter_course/services/firestore_service.dart';

abstract class Database {
  Future<void> createJob(Job job);

  Stream<List<Job>> jobsStream();

  // Future<void> deleteJob(Job job);

  // Future<void> setEntry(Job job);

  // Future<void> deleteEntry(Job job);

  // Stream<List<Job>> jobStream();

  // Stream<List<Entry>> entriesStream({Job job});

}

class FirestoreDatabase implements Database {
  FirestoreDatabase({@required this.uid}) : assert(uid != null);

  final String uid;

  // Private contructor that only allows one instance of the class to be created
  final _service = FirestoreService.instance;

  Future<void> createJob(Job job) => _service.setData(
        path: APIPath.job(uid, 'job_abc'),
        data: job.toMap(),
      );

  Stream<List<Job>> jobsStream() => _service.collectionStream(
        path: APIPath.jobs(uid),
        builder: (data) => Job.fromMap(data),
      );
}
