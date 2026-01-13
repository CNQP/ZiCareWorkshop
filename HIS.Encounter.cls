Class HIS.Encounter Extends %Persistent
{

Property ENo As %String [ Required ];

Property Department As HIS.Department;

Property Type As %String;

Property Appointment As HIS.Appointment;

Property Patient As HIS.Patient;

Property Status As %String;

Property TimeArrive As %TimeStamp;

Property TimeBegin As %TimeStamp;

Property TimeEnd As %TimeStamp;

Index ENoIdx On ENo [ Unique ];

Storage Default
{
<Data name="EncounterDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ENo</Value>
</Value>
<Value name="3">
<Value>Department</Value>
</Value>
<Value name="4">
<Value>Type</Value>
</Value>
<Value name="5">
<Value>Appointment</Value>
</Value>
<Value name="6">
<Value>Patient</Value>
</Value>
<Value name="7">
<Value>Status</Value>
</Value>
<Value name="8">
<Value>TimeArrive</Value>
</Value>
<Value name="9">
<Value>TimeBegin</Value>
</Value>
<Value name="10">
<Value>TimeEnd</Value>
</Value>
</Data>
<DataLocation>^HIS.EncounterD</DataLocation>
<DefaultData>EncounterDefaultData</DefaultData>
<IdLocation>^HIS.EncounterD</IdLocation>
<IndexLocation>^HIS.EncounterI</IndexLocation>
<StreamLocation>^HIS.EncounterS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
