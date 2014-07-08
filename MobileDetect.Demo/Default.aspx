<%@ Page Language="C#" AutoEventWireup="true" %>

<%
    MobileDetect.MobileDetect mobileDetect = new MobileDetect.MobileDetect(null, null);

    //mobileDetect.IsMobile();

    mobileDetect.Is("AndroidOS", null, null);
%>

UserAgent:<%=mobileDetect.GetUserAgent()%>

<br>
IsMobile:<%=mobileDetect.IsMobile(null,null)%>

<%foreach (string key in MobileDetect.MobileDetect.GetProperties().Keys){%>
    <%=key+":"+mobileDetect.GetVersion(key)+"\t"+mobileDetect.GetVersionFloat(key)%>
    <br>
<% }%>
<br>

<br>

<br>
