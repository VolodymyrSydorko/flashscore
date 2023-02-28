import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:flashscore/app_state_wrapper.dart';
import 'package:flashscore/router/index.dart';
import 'package:flashscore/services/index.dart';
import 'package:flashscore/styles/index.dart';

class Flashscore extends StatelessWidget {
  Flashscore({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AppStateWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flashscore',
        theme: AppTheme.getAppTheme(context),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [RouterObserver()],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
