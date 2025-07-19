import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginPageWidget(),
        ),
        FFRoute(
          name: LoginPageWidget.routeName,
          path: LoginPageWidget.routePath,
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: RegisterPageWidget.routeName,
          path: RegisterPageWidget.routePath,
          builder: (context, params) => RegisterPageWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: BerberLoginPanelWidget.routeName,
          path: BerberLoginPanelWidget.routePath,
          builder: (context, params) => BerberLoginPanelWidget(),
        ),
        FFRoute(
          name: ShopRegisterPageWidget.routeName,
          path: ShopRegisterPageWidget.routePath,
          builder: (context, params) => ShopRegisterPageWidget(),
        ),
        FFRoute(
          name: DukkanLoginPageWidget.routeName,
          path: DukkanLoginPageWidget.routePath,
          builder: (context, params) => DukkanLoginPageWidget(),
        ),
        FFRoute(
          name: VerifyNumberPage0Widget.routeName,
          path: VerifyNumberPage0Widget.routePath,
          builder: (context, params) => VerifyNumberPage0Widget(),
        ),
        FFRoute(
          name: BerberShopownerChooseWidget.routeName,
          path: BerberShopownerChooseWidget.routePath,
          builder: (context, params) => BerberShopownerChooseWidget(),
        ),
        FFRoute(
          name: BerberRegisterPageWidget.routeName,
          path: BerberRegisterPageWidget.routePath,
          builder: (context, params) => BerberRegisterPageWidget(),
        ),
        FFRoute(
          name: UserRegistirationQuestionsWidget.routeName,
          path: UserRegistirationQuestionsWidget.routePath,
          builder: (context, params) => UserRegistirationQuestionsWidget(),
        ),
        FFRoute(
          name: VerifyNumberPage3Widget.routeName,
          path: VerifyNumberPage3Widget.routePath,
          builder: (context, params) => VerifyNumberPage3Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage6Widget.routeName,
          path: VerifyNumberPage6Widget.routePath,
          builder: (context, params) => VerifyNumberPage6Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage5Widget.routeName,
          path: VerifyNumberPage5Widget.routePath,
          builder: (context, params) => VerifyNumberPage5Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage1Widget.routeName,
          path: VerifyNumberPage1Widget.routePath,
          builder: (context, params) => VerifyNumberPage1Widget(),
        ),
        FFRoute(
          name: ForgotPassword2Widget.routeName,
          path: ForgotPassword2Widget.routePath,
          builder: (context, params) => ForgotPassword2Widget(),
        ),
        FFRoute(
          name: ForgotPassword1Widget.routeName,
          path: ForgotPassword1Widget.routePath,
          builder: (context, params) => ForgotPassword1Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage4Widget.routeName,
          path: VerifyNumberPage4Widget.routePath,
          builder: (context, params) => VerifyNumberPage4Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage7Widget.routeName,
          path: VerifyNumberPage7Widget.routePath,
          builder: (context, params) => VerifyNumberPage7Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage8Widget.routeName,
          path: VerifyNumberPage8Widget.routePath,
          builder: (context, params) => VerifyNumberPage8Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage2Widget.routeName,
          path: VerifyNumberPage2Widget.routePath,
          builder: (context, params) => VerifyNumberPage2Widget(),
        ),
        FFRoute(
          name: NewPasswordWidget.routeName,
          path: NewPasswordWidget.routePath,
          builder: (context, params) => NewPasswordWidget(),
        ),
        FFRoute(
          name: NewPassword1Widget.routeName,
          path: NewPassword1Widget.routePath,
          builder: (context, params) => NewPassword1Widget(),
        ),
        FFRoute(
          name: NewPassword2Widget.routeName,
          path: NewPassword2Widget.routePath,
          builder: (context, params) => NewPassword2Widget(),
        ),
        FFRoute(
          name: BasvuruAlinmistirWidget.routeName,
          path: BasvuruAlinmistirWidget.routePath,
          builder: (context, params) => BasvuruAlinmistirWidget(),
        ),
        FFRoute(
          name: BasvuruAlinmistir1Widget.routeName,
          path: BasvuruAlinmistir1Widget.routePath,
          builder: (context, params) => BasvuruAlinmistir1Widget(),
        ),
        FFRoute(
          name: KayitOlusturuldu2Widget.routeName,
          path: KayitOlusturuldu2Widget.routePath,
          builder: (context, params) => KayitOlusturuldu2Widget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'home_page')
              : HomePageWidget(),
        ),
        FFRoute(
          name: MapWidget.routeName,
          path: MapWidget.routePath,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'map') : MapWidget(),
        ),
        FFRoute(
          name: ShopPageWidget.routeName,
          path: ShopPageWidget.routePath,
          builder: (context, params) => ShopPageWidget(),
        ),
        FFRoute(
          name: BerbersecimWidget.routeName,
          path: BerbersecimWidget.routePath,
          builder: (context, params) => BerbersecimWidget(),
        ),
        FFRoute(
          name: RandevutarihWidget.routeName,
          path: RandevutarihWidget.routePath,
          builder: (context, params) => RandevutarihWidget(),
        ),
        FFRoute(
          name: HizmetsecimWidget.routeName,
          path: HizmetsecimWidget.routePath,
          builder: (context, params) => HizmetsecimWidget(),
        ),
        FFRoute(
          name: RandevuTalebiAlindiWidget.routeName,
          path: RandevuTalebiAlindiWidget.routePath,
          builder: (context, params) => RandevuTalebiAlindiWidget(),
        ),
        FFRoute(
          name: KullaniciProfiliWidget.routeName,
          path: KullaniciProfiliWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'kullanici_profili')
              : KullaniciProfiliWidget(),
        ),
        FFRoute(
          name: RandevularimWidget.routeName,
          path: RandevularimWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'randevularim')
              : RandevularimWidget(),
        ),
        FFRoute(
          name: NewPassword3Widget.routeName,
          path: NewPassword3Widget.routePath,
          builder: (context, params) => NewPassword3Widget(),
        ),
        FFRoute(
          name: VerifyNumberPage9Widget.routeName,
          path: VerifyNumberPage9Widget.routePath,
          builder: (context, params) => VerifyNumberPage9Widget(),
        ),
        FFRoute(
          name: SifreDegistirildiWidget.routeName,
          path: SifreDegistirildiWidget.routePath,
          builder: (context, params) => SifreDegistirildiWidget(),
        ),
        FFRoute(
          name: SifreDegistirildi3Widget.routeName,
          path: SifreDegistirildi3Widget.routePath,
          builder: (context, params) => SifreDegistirildi3Widget(),
        ),
        FFRoute(
          name: SifreDegistirild1Widget.routeName,
          path: SifreDegistirild1Widget.routePath,
          builder: (context, params) => SifreDegistirild1Widget(),
        ),
        FFRoute(
          name: SifreDegistirildi2Widget.routeName,
          path: SifreDegistirildi2Widget.routePath,
          builder: (context, params) => SifreDegistirildi2Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
