library reseller_v1sandbox_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_reseller_v1sandbox_api/src/console_client.dart';

import "package:google_reseller_v1sandbox_api/reseller_v1sandbox_api_client.dart";

/** Lets you create and manage your customers and their subscriptions. */
@deprecated
class Reseller extends Client with ConsoleClient {

  /** OAuth Scope2: Manage users on your domain */
  static const String APPS_ORDER_SCOPE = "https://www.googleapis.com/auth/apps.order";

  /** OAuth Scope2: Manage users on your domain */
  static const String APPS_ORDER_READONLY_SCOPE = "https://www.googleapis.com/auth/apps.order.readonly";

  final oauth2.OAuth2Console auth;

  Reseller([oauth2.OAuth2Console this.auth]);
}
