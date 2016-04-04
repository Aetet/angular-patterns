import 'package:angular2/core.dart';
import 'package:angular_patterns/greeter.dart';
import 'package:angular_patterns/directives/outside_directive.dart';
import 'package:angular_patterns/context_menu_holder.dart';
import 'package:angular_patterns/portal/directives/portal_directive.dart';

@Component(
  selector: 'my-app',
  directives: const [Greeter, OutsideClickDirective, PortalDirective, ContextMenuHolder],
  template: """
  <h1>Crivets, {{name}}!</h1>
  <greeter *portal="'wow';portalInId: '10';portalOutId: '8';isShow: true">
  </greeter>
  <div (click)=changeContext()>Change context</div>
  <context-menu-holder></context-menu-holder>
"""
)
class AppComponent {
  @Input() String name = 'John';
  bool showMenu = true;
  AppComponent() {
  }
  changeContext() {
    showMenu = !showMenu;
  }
}
