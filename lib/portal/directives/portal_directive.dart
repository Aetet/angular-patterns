import 'package:angular2/angular2.dart';
import 'package:angular_patterns/directives/portal/service/portal_service.dart';

@Directive(
  selector: '[portal]'
)
class PortalDirective implements AfterViewInit {
  TemplateRef templateRef;
  ViewContainerRef viewContainerRef;
  PortalService _portalService;
  PortalDirective(this.templateRef, this.viewContainerRef, this._portalService);

  @Input() String portal;
  @Input() bool portalIsShow;
  @Input() String portalPortalInId;
  @Input() String portalPortalOutId;

  ngAfterViewInit() {
    print('portalIsShow: $portalIsShow');
    print('portalId: $portalPortalInId');
    print('portalOutId: $portalPortalOutId');
  }
}
