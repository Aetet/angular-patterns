import 'package:angular2/platform/browser.dart';
import 'package:angular_patterns/app.dart';
import 'package:angular_patterns/directives/portal/service/portal_service.dart';
main() {
  bootstrap(AppComponent, [PortalService]);
}
