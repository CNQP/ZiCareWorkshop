Class HIS.Department Extends %Persistent
{

Property DNo As %String [ Required ];

Property Name As %String;

Index DNoIdx On DNo [ Unique ];

Storage Default
{
<Data name="DepartmentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DNo</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^HIS.DepartmentD</DataLocation>
<DefaultData>DepartmentDefaultData</DefaultData>
<IdLocation>^HIS.DepartmentD</IdLocation>
<IndexLocation>^HIS.DepartmentI</IndexLocation>
<StreamLocation>^HIS.DepartmentS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
