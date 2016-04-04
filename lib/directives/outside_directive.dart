import 'package:angular2/angular2.dart';
import 'dart:html';

@Directive(
  selector: '[outsideClickable]',
  host: const {
    '(document:mousedown)': r'onWindowClick($event)',
    '(document:touchstart)': r'onWindowClick($event)'
  }
)
class OutsideClickDirective {
  @Output('clickOutside') EventEmitter eventEmitter = new EventEmitter();

  ElementRef el;
  ApplicationRef appRef;
  OutsideClickDirective(ElementRef el, ApplicationRef appRef) {
    this.el = el;
    this.appRef = appRef;
  }

  onWindowClick(Event e) {
    if (!el.nativeElement.contains(e.target)) {
      eventEmitter.emit(e);
    }
  }
}
