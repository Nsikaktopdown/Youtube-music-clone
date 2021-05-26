import 'package:dio/dio.dart';
import 'package:youtube_music_clone/core/network/network_service.dart';

/**
 * This class handle remove datasource manipulation for user account
 */

abstract class AccountRemoteDatasource extends NetworkService {
  AccountRemoteDatasource(Dio dioClient) : super(dioClient);
  Future<void> login(String email, String password);
}

class AccountRemoteDatasourceImpl extends AccountRemoteDatasource {
  AccountRemoteDatasourceImpl(Dio dioClient) : super(dioClient);
  @override
  Future<void> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
