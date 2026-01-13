Class HIS.Doctor Extends %Persistent
{

Property DNo As %String [ Required ];

Property FirstName As %String;

Property LastName As %String;

Property DOB As %Date;

Property Gender As %String;

Property Department As %String;

Property Tel As %String;

Property Introduction As %String(MAXLEN = 500);

/// Embedding of introduction
/// you should have embedding config record in %Embedding.Config first:
Property IntroEmbedding As %Embedding(MODEL = "OpenAI", SOURCE = "Introduction");

Index DNoIdx On DNo [ Unique ];

Storage Default
{
<Data name="DoctorDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DNo</Value>
</Value>
<Value name="3">
<Value>FirstName</Value>
</Value>
<Value name="4">
<Value>LastName</Value>
</Value>
<Value name="5">
<Value>DOB</Value>
</Value>
<Value name="6">
<Value>Gender</Value>
</Value>
<Value name="7">
<Value>Department</Value>
</Value>
<Value name="8">
<Value>Tel</Value>
</Value>
<Value name="9">
<Value>Introduction</Value>
</Value>
<Value name="10">
<Value>IntroEmbedding</Value>
</Value>
</Data>
<DataLocation>^HIS.DoctorD</DataLocation>
<DefaultData>DoctorDefaultData</DefaultData>
<IdLocation>^HIS.DoctorD</IdLocation>
<IndexLocation>^HIS.DoctorI</IndexLocation>
<StreamLocation>^HIS.DoctorS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
