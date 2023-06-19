import '../common/const.dart';
import '../services/service_config.dart';

abstract class ProviderHelper {
  final ServiceConfig serviceConfig = ServiceConfig();
  ScreenState screenState = ScreenState.loaded;

  void pageInit() {}

  void pageDispose() {}

  void updateScreenState(ScreenState state);
}
