import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import 'app/common/multi_provider_list.dart';
import 'app/routes/app_pages.dart';

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: MultiProviderList.providerList,
          child: MaterialApp(
            title: 'Flutter Web',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRoutes.instance.generateRoute,
          ),
        );
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: MultiProviderList.providerList,
//       child: MaterialApp(
//         title: 'Application',
//         debugShowCheckedModeBanner: false,
//         onGenerateRoute: AppRoutes.instance.generateRoute,
//       ),
//     );
//   }
// }
