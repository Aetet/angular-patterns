import 'package:angular2/angular2.dart';
import 'dart:html';

@Directive(
  selector: '[outsideClickable]'
)
class OutsideClickDirective implements AfterViewInit, OnDestroy {
  @Output('clickOutside') EventEmitter eventEmitter = new EventEmitter();

  ElementRef el;
  OutsideClickDirective(ElementRef el) {
    this.el = el;
  }

  @override
  ngAfterViewInit() {
    window.addEventListener('mousedown', onWindowClick);
    window.addEventListener('touchstart', onWindowClick);
  }

  ngOnDestroy() {
    window.removeEventListener('mousedown', onWindowClick);
    window.removeEventListener('touchstart', onWindowClick);
  }

  onWindowClick(MouseEvent e) {
    if (!el.nativeElement.contains(e.target)) {
      eventEmitter.emit(e);
    }
  }
}
