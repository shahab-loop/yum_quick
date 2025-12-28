import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:yumquick/core/navigations/app_routes/app_routes.dart';
import 'package:yumquick/core/navigations/routes/routes.dart';
import 'package:yumquick/core/res/theme_manager/theme_manager.dart';
import 'package:yumquick/core/utils/size_utils.dart';
import 'package:yumquick/storage/local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GestureDetector(onTap: () {
          FocusScope.of(context).unfocus();
        },
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'yumquick',
            scrollBehavior: MyBehavior(),
            darkTheme: ThemeManager.darkTheme,
            locale: const Locale('en', 'US'),
            theme: ThemeManager.darkTheme,
            initialRoute: Routes.splashScreen,
            getPages: AppRoutes.pages,
          ),
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context,
      Widget child,
      ScrollableDetails details,
      ) {
    return child;
  }
}