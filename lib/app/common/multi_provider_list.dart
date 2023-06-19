import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../modules/home/providers/home_provider.dart';

/// DO NOT EDIT THIS LINE. This is code generated via package:vega_cli/vega_cli.dart
/// Do not remove trailing comma in [providerList]
/// Changes in structure of this file will cause error running command `vega create page`
class MultiProviderList {
  static List<SingleChildWidget> providerList = [
    ChangeNotifierProvider(create: (_) => HomeProvider()),
  ];
}
