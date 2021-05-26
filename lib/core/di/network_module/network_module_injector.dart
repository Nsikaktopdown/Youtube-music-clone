// ignore: implementation_imports
import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';

part 'network_module_injector.g.dart';

abstract class NetworkModuleInjector {

  static Container container;

   void setup() {
    container = Container();
    _$NetworkModuleInjector().configure();
  }

  static final resolve = container.resolve;

  @Register.factory(Dio)
  void configure();

}

NetworkModuleInjector networkModuleInjector() => _$NetworkModuleInjector();