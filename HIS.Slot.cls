/// Good for Vector search about triage
Class HIS.Slot Extends %Persistent
{

Property SNo As %String [ Required ];

Property Specialty As %String;

Property Department As HIS.Department;

Property Doctor As HIS.Doctor;

/// Normal, Expert
Property Type As %String;

/// AM,PM
Property SlotTime As %String;

Property Occupied As %Boolean;

Property Status As %String;

Property Price As %Decimal;

Index SNoIdx On SNo [ Unique ];

Storage Default
{
<Data name="SlotDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SNo</Value>
</Value>
<Value name="3">
<Value>Specialty</Value>
</Value>
<Value name="4">
<Value>Department</Value>
</Value>
<Value name="5">
<Value>Doctor</Value>
</Value>
<Value name="6">
<Value>Type</Value>
</Value>
<Value name="7">
<Value>SlotTime</Value>
</Value>
<Value name="8">
<Value>Occupied</Value>
</Value>
<Value name="9">
<Value>Status</Value>
</Value>
<Value name="10">
<Value>Price</Value>
</Value>
</Data>
<DataLocation>^HIS.SlotD</DataLocation>
<DefaultData>SlotDefaultData</DefaultData>
<IdLocation>^HIS.SlotD</IdLocation>
<IndexLocation>^HIS.SlotI</IndexLocation>
<StreamLocation>^HIS.SlotS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
