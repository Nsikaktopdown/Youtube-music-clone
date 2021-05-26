


import 'package:dio/dio.dart';
import 'package:youtube_music_clone/core/data/local/sharedpreference.dart';
import 'package:youtube_music_clone/user/features/account/data/datasources/account_remote_datasource_impl.dart';
import 'package:youtube_music_clone/user/features/account/data/reposities.dart/account_repository_lmpl.dart';
import 'package:youtube_music_clone/user/features/account/domain/repository/account_repository.dart';
import 'package:youtube_music_clone/user/features/account/domain/usecases/login_user.dart';


import 'package:kiwi/kiwi.dart';

part 'user_module_injector.g.dart';

abstract class UserModuleInjector {

  static Container container;
  static final resolve = container.resolve;


  void setup() {
    container = Container();
    _$UserModuleInjector().configure();
  }

  
  @Register.factory(AccountRemoteDatasource, from: AccountRemoteDatasourceImpl)
  @Register.factory(AccountRepository, from: AccountRepositorylmpl)
  @Register.singleton(SharedPreference)
  @Register.singleton(LoginUserUserCase)
  
  void configure();

}

UserModuleInjector userModuleInjector() => _$UserModuleInjector();
