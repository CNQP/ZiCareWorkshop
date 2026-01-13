/// Good for table partitioning
Class Audit.Log Extends %Persistent
{

Property AuditNo As %String;

Property Action As %String;

Property ActionBy As %String [ InitialExpression = {$UserName} ];

Property ActionTime As %TimeStamp [ InitialExpression = {$H} ];

Storage Default
{
<Data name="LogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AuditNo</Value>
</Value>
<Value name="3">
<Value>Action</Value>
</Value>
<Value name="4">
<Value>ActionBy</Value>
</Value>
<Value name="5">
<Value>ActionTime</Value>
</Value>
</Data>
<DataLocation>^Audit.LogD</DataLocation>
<DefaultData>LogDefaultData</DefaultData>
<IdLocation>^Audit.LogD</IdLocation>
<IndexLocation>^Audit.LogI</IndexLocation>
<StreamLocation>^Audit.LogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
