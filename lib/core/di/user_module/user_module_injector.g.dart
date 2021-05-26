// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_module_injector.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$UserModuleInjector extends UserModuleInjector {
  void configure() {
    final Container container = Container();
    container
        .registerFactory<AccountRemoteDatasource, AccountRemoteDatasourceImpl>(
            (c) => AccountRemoteDatasourceImpl(c<Dio>()));
    container.registerFactory<AccountRepository, AccountRepositorylmpl>((c) =>
        AccountRepositorylmpl(
            c<AccountRemoteDatasource>(), c<SharedPreference>()));
    container.registerSingleton((c) => SharedPreference());
    container
        .registerSingleton((c) => LoginUserUserCase(c<AccountRepository>()));
  }
}
