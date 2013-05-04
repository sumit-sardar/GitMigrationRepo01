package testWebService;
import com.bea.control.ServiceControl;

import org.apache.beehive.controls.api.events.EventSet;
import org.apache.beehive.controls.api.bean.ControlExtension;

@ServiceControl.Location(urls = {"http://localhost:7001/ClickerWebService/ClickerWS"})
@ServiceControl.HttpSoapProtocol
@ServiceControl.SOAPBinding(style = ServiceControl.SOAPBinding.Style.DOCUMENT, use = ServiceControl.SOAPBinding.Use.LITERAL, parameterStyle = ServiceControl.SOAPBinding.ParameterStyle.WRAPPED)
@ServiceControl.WSDL(resourcePath = "testWebService/ClickerWSService.wsdl", service = "ClickerWSService")
@ControlExtension
public interface ClickerWSServiceControl extends ServiceControl
{
    static final long serialVersionUID = 1L;

    public java.lang.Integer authenticateUser(java.lang.String userName_arg,java.lang.String password_arg);

    public dto.OrgNode getUserTopNode(java.lang.String userName_arg);

   /** This event set interface provides support for the onAsyncFailure event.
    */
   @EventSet(unicast=true)
   public interface Callback extends ServiceControl.Callback {};
}