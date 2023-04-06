/// As a base class you can use Ens.Request or Grongier.JsonTraceViewer.Request
///
/// With Ens.Request you will see messages in xml format in Message Viewer
/// With Grongier.JsonTraceViewer.Request you will see messages in json format
///
/// Class Grongier.JsonTraceViewer.Request - is one of the classes from package "objectscript-json-trace-viewer" (published on https://openexchange.intersystems.com/package/JsonTraceViewer)
/// Classes from "objectscript-json-trace-viewer" package are designed to show Request and Response messages in json format.
Class dc.Demo.PostMessage Extends Grongier.JsonTraceViewer.Request
{

Property ToEmailAddress As %String;

Property Found As %String;

Property Post As dc.Reddit.Post;

Storage Default
{
<Data name="PostMessageDefaultData">
<Subscript>"PostMessage"</Subscript>
<Value name="1">
<Value>ToEmailAddress</Value>
</Value>
<Value name="2">
<Value>Post</Value>
</Value>
<Value name="3">
<Value>Found</Value>
</Value>
</Data>
<DefaultData>PostMessageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
