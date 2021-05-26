import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:youtube_music_clone/core/error/faliure.dart';
import 'package:youtube_music_clone/core/usecase/base_usecase.dart';
import 'package:youtube_music_clone/user/features/account/domain/models/user.dart';
import 'package:youtube_music_clone/user/features/account/domain/repository/account_repository.dart';

class LoginUserUserCase implements UseCase<void, Params> {
  final AccountRepository accountRepository;
  LoginUserUserCase(this.accountRepository);

  @override
  Future<Either<Failure, void>> action(Params params) async {
    return accountRepository.login(params.email, params.password);
  }
}

class Params extends Equatable {
  final String email;
  final String password;

  Params({@required this.email, @required this.password});

  @override
  List<Object> get props => [email, password];
}
