import 'package:angular2/core.dart';
import 'package:angular_patterns/greeter.dart';
import 'package:angular_patterns/directives/outside_directive.dart';

@Component(
  selector: 'my-app',
  directives: const [Greeter, OutsideClickDirective],
  template: """
<h1>Crivets, {{name}}!</h1>
<greeter
  [myHighlight]="'Licker'"
  [some]="'yellow'"
  [any]="'bar'"
  ></greeter>
"""
)
class AppComponent {
  @Input() String name = 'John';
  AppComponent() {
  }
}
