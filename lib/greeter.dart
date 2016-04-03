import 'package:angular2/angular2.dart';
import 'package:angular_patterns/directives/outside_directive.dart';


@Component(
  selector: 'greeter',
  directives: const [NgFor, OutsideClickDirective],
  host: const {
    '(clickOutside)': r'handleOutsider($event)'
  },
  template: r"""

  <ul>
    <li *ngFor="#item of items">
      {{item}}
    </li>
  </ul>
  <div
    [myHighlight]="'Licker'"
    [some]="'yellow'"
    [any]="'bar'" >
    <div (click)=handleClick($event)>preventer</div>
    <div>Predator</div>
  </div>
  """
)
class Greeter {
  @Input() List<String> items = ['1', '2', '3'];
  Greeter() {
  }
  handleClick(e) {
    e.stopPropagation();
  }
  handleOutsider(e) {
    print('Wow something outside came here! ${e.target}');
  }
}
