/// Subclass
Class Audit.Registry Extends Audit.Log
{

Property RegistrationID As %String;

Property OldStatus As %String;

Property NewStatus As %String;

Storage Default
{
<Data name="RegistryDefaultData">
<Subscript>"Registry"</Subscript>
<Value name="1">
<Value>RegistrationID</Value>
</Value>
<Value name="2">
<Value>OldStatus</Value>
</Value>
<Value name="3">
<Value>NewStatus</Value>
</Value>
</Data>
<DefaultData>RegistryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
