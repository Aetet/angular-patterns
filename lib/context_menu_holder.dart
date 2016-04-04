import 'package:angular2/angular2.dart';

@Component(
  selector: 'context-menu-holder',
  directives: const [],
  providers: const [],
  template: """
  <div>Holder</div>
"""
)
class ContextMenuHolder implements AfterContentInit, OnDestroy {
  ContextMenuHolder(ViewContainerRef ref) {

  }

  @override
  ngAfterContentInit() {
    // TODO: implement ngAfterContentInit
  }

  @override
  ngOnDestroy() {
    // TODO: implement ngOnDestroy
  }
}
