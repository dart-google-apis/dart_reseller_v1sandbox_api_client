library reseller_v1sandbox_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_reseller_v1sandbox_api/src/cloud_api_browser.dart';
import "package:google_reseller_v1sandbox_api/reseller_v1sandbox_api_client.dart";

/** Lets you create and manage your customers and their subscriptions. */
class Reseller extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Reseller([oauth.OAuth2 this.auth]);
}
