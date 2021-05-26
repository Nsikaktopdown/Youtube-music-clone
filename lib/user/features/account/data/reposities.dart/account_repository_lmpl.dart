import 'package:dartz/dartz.dart';
import 'package:youtube_music_clone/core/data/local/sharedpreference.dart';
import 'package:youtube_music_clone/core/error/faliure.dart';
import 'package:youtube_music_clone/user/features/account/data/datasources/account_remote_datasource_impl.dart';
import 'package:youtube_music_clone/user/features/account/domain/repository/account_repository.dart';

class AccountRepositorylmpl extends AccountRepository {
  final AccountRemoteDatasource accountRemoteDatasource;
  final SharedPreference _sharedPreference;

  AccountRepositorylmpl(this.accountRemoteDatasource, this._sharedPreference);

  @override
  Future<Either<Failure, void>> login(String email, String password) {
    return accountRemoteDatasource.login(email, password);
  }
}
