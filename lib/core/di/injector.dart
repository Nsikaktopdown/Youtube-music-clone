

import 'package:youtube_music_clone/core/di/network_module/network_module_injector.dart';
import 'package:youtube_music_clone/core/di/user_module/user_module_injector.dart';

void configureDependencies(){
  networkModuleInjector().setup();
  userModuleInjector().setup();
}