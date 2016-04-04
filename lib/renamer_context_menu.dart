import 'package:angular2/angular2.dart';

/*
 *
 *   <greeter *showMenu="showMenu; grom 'figa'; #l=gromd">
     <div tuko>{{l}}</div>
   </greeter>

 */

@Directive(
  selector: '[showMenu]'
)
class ContextMenu  {
  TemplateRef templateRef;
  ViewContainerRef viewContainerRef;
  ContextMenu(this.templateRef, this.viewContainerRef);
  String grom;

  @Input() set showMenu(bool condition) {
    if (condition) {
      EmbeddedViewRef view = viewContainerRef.createEmbeddedView(templateRef);
      print('grom: ${grom}');
      view.setLocal('gromd', grom);
    } else {
      viewContainerRef.clear();
    }
  }
  @Input() set showMenuGrom(String val) {
    grom = val;
    print('Grom!: ${val}');
  }
}
