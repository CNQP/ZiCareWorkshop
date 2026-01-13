Class HIS.Patient Extends %Persistent
{

Property PNo As %String [ Required ];

/// National ID
Property NID As %String;

Property FirstName As %String;

Property LastName As %String;

Property DOB As %Date;

Property Gender As %String;

Property Address As %String;

Property Tel As %String;

Index PNoIdx On PNo [ Unique ];

Storage Default
{
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PNo</Value>
</Value>
<Value name="3">
<Value>NID</Value>
</Value>
<Value name="4">
<Value>FirstName</Value>
</Value>
<Value name="5">
<Value>LastName</Value>
</Value>
<Value name="6">
<Value>DOB</Value>
</Value>
<Value name="7">
<Value>Gender</Value>
</Value>
<Value name="8">
<Value>Address</Value>
</Value>
<Value name="9">
<Value>Tel</Value>
</Value>
</Data>
<DataLocation>^HIS.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^HIS.PatientD</IdLocation>
<IndexLocation>^HIS.PatientI</IndexLocation>
<StreamLocation>^HIS.PatientS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
