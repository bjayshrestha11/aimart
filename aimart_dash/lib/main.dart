import 'package:aimart_dash/views/products/editProductView.dart';
import 'package:aimart_dash/views/views.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/bindings.dart';
import 'config/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ai-Mart Dashboard",
      initialBinding: InitialBinding(),
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Pallete.primaryCol,
        backgroundColor: Pallete.backgroundColor,
      ),
      themeMode: ThemeMode.light,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Wrapper(), binding: WrapperBinding()),
        GetPage(name: "/addProduct", page: () => AddProductView()),
        GetPage(
            name: "/editProduct/:id",
            page: () => EditProductView(),
            binding: EditProducBinding()),
      ],
    );
  }
}
