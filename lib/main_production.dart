import 'app/common/configs/flavor_config.dart';
import 'main.dart';

Future<void> main() async {
  FlavourConstants.setEnvironment(Environment.prod);
  await initApp();
}
