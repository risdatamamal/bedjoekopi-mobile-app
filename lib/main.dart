import 'package:bedjoekopi/cubit/coffee_cubit.dart';
import 'package:bedjoekopi/cubit/transaction_cubit.dart';
import 'package:bedjoekopi/cubit/user_cubit.dart';
import 'package:bedjoekopi/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserCubit(),
        ),
        BlocProvider(
          create: (_) => CoffeeCubit(),
        ),
        BlocProvider(
          create: (_) => TransactionCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInPage(),
      ),
    );
  }
}
