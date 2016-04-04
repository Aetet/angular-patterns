import 'package:angular2/angular2.dart';
import 'package:angular_patterns/directives/outside_directive.dart';


@Component(
  selector: 'greeter',
  directives: const [CORE_DIRECTIVES, OutsideClickDirective],
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
    *ngIf="showClickable"
    outsideClickable>
    <div (click)=handleClick($event)>preventer</div>
    <div>Predator</div>
  </div>
  <div (click)="clicker()">Show clickable!</div>
  <ng-content select="[tuko]"></ng-content>
  """
)
class Greeter implements AfterViewInit {
  bool showClickable = true;
  @Input() List<String> items = ['1', '2', '3'];
  String gromko;
  @Input() set grom(String val) {
    gromko = val;
    print('Greeter has grom: ${val}');
  }
  Greeter() {
  }
  handleClick(e) {
    e.stopPropagation();
  }
  clicker() {
    showClickable = !showClickable;
  }
  handleOutsider(e) {
    print('Wow something outside came here! ${e.target}');
  }

  @override
  ngAfterViewInit() {
    print('After all: ${gromko}');
    // TODO: implement ngAfterViewInit
  }
}
