import 'package:dartz/dartz.dart';
import 'package:youtube_music_clone/core/error/faliure.dart';

abstract class AccountRepository {
  Future<Either<Failure, void>>login(String email, String password);
}
