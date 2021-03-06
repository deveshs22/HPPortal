﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HPPortal.Web.MailService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MailService.MailServiceSoap")]
    public interface MailServiceSoap {
        
        // CODEGEN: Generating message contract since element name froms from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SendMailMessages", ReplyAction="*")]
        HPPortal.Web.MailService.SendMailMessagesResponse SendMailMessages(HPPortal.Web.MailService.SendMailMessagesRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SendMailMessages", ReplyAction="*")]
        System.Threading.Tasks.Task<HPPortal.Web.MailService.SendMailMessagesResponse> SendMailMessagesAsync(HPPortal.Web.MailService.SendMailMessagesRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class SendMailMessagesRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="SendMailMessages", Namespace="http://tempuri.org/", Order=0)]
        public HPPortal.Web.MailService.SendMailMessagesRequestBody Body;
        
        public SendMailMessagesRequest() {
        }
        
        public SendMailMessagesRequest(HPPortal.Web.MailService.SendMailMessagesRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class SendMailMessagesRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string froms;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string to;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string bcc;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string cc;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string subject;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=5)]
        public string body;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=6)]
        public string attachment1;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=7)]
        public string attachment2;
        
        public SendMailMessagesRequestBody() {
        }
        
        public SendMailMessagesRequestBody(string froms, string to, string bcc, string cc, string subject, string body, string attachment1, string attachment2) {
            this.froms = froms;
            this.to = to;
            this.bcc = bcc;
            this.cc = cc;
            this.subject = subject;
            this.body = body;
            this.attachment1 = attachment1;
            this.attachment2 = attachment2;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class SendMailMessagesResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="SendMailMessagesResponse", Namespace="http://tempuri.org/", Order=0)]
        public HPPortal.Web.MailService.SendMailMessagesResponseBody Body;
        
        public SendMailMessagesResponse() {
        }
        
        public SendMailMessagesResponse(HPPortal.Web.MailService.SendMailMessagesResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class SendMailMessagesResponseBody {
        
        public SendMailMessagesResponseBody() {
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface MailServiceSoapChannel : HPPortal.Web.MailService.MailServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class MailServiceSoapClient : System.ServiceModel.ClientBase<HPPortal.Web.MailService.MailServiceSoap>, HPPortal.Web.MailService.MailServiceSoap {
        
        public MailServiceSoapClient() {
        }
        
        public MailServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public MailServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public MailServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public MailServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        HPPortal.Web.MailService.SendMailMessagesResponse HPPortal.Web.MailService.MailServiceSoap.SendMailMessages(HPPortal.Web.MailService.SendMailMessagesRequest request) {
            return base.Channel.SendMailMessages(request);
        }
        
        public void SendMailMessages(string froms, string to, string bcc, string cc, string subject, string body, string attachment1, string attachment2) {
            HPPortal.Web.MailService.SendMailMessagesRequest inValue = new HPPortal.Web.MailService.SendMailMessagesRequest();
            inValue.Body = new HPPortal.Web.MailService.SendMailMessagesRequestBody();
            inValue.Body.froms = froms;
            inValue.Body.to = to;
            inValue.Body.bcc = bcc;
            inValue.Body.cc = cc;
            inValue.Body.subject = subject;
            inValue.Body.body = body;
            inValue.Body.attachment1 = attachment1;
            inValue.Body.attachment2 = attachment2;
            HPPortal.Web.MailService.SendMailMessagesResponse retVal = ((HPPortal.Web.MailService.MailServiceSoap)(this)).SendMailMessages(inValue);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<HPPortal.Web.MailService.SendMailMessagesResponse> HPPortal.Web.MailService.MailServiceSoap.SendMailMessagesAsync(HPPortal.Web.MailService.SendMailMessagesRequest request) {
            return base.Channel.SendMailMessagesAsync(request);
        }
        
        public System.Threading.Tasks.Task<HPPortal.Web.MailService.SendMailMessagesResponse> SendMailMessagesAsync(string froms, string to, string bcc, string cc, string subject, string body, string attachment1, string attachment2) {
            HPPortal.Web.MailService.SendMailMessagesRequest inValue = new HPPortal.Web.MailService.SendMailMessagesRequest();
            inValue.Body = new HPPortal.Web.MailService.SendMailMessagesRequestBody();
            inValue.Body.froms = froms;
            inValue.Body.to = to;
            inValue.Body.bcc = bcc;
            inValue.Body.cc = cc;
            inValue.Body.subject = subject;
            inValue.Body.body = body;
            inValue.Body.attachment1 = attachment1;
            inValue.Body.attachment2 = attachment2;
            return ((HPPortal.Web.MailService.MailServiceSoap)(this)).SendMailMessagesAsync(inValue);
        }
    }
}
