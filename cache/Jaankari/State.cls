Class Jaankari.State Extends (%Persistent, %Populate)
{

Property Name As %String;

Property Longitude As %String;

Property Latitude As %String;

Property Description As %String;

Property Weather As %String;

Storage Default
{
<Data name="StateDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Longitude</Value>
</Value>
<Value name="4">
<Value>Latitude</Value>
</Value>
<Value name="5">
<Value>Description</Value>
</Value>
<Value name="6">
<Value>Weather</Value>
</Value>
</Data>
<DataLocation>^Jaankari.StateD</DataLocation>
<DefaultData>StateDefaultData</DefaultData>
<IdLocation>^Jaankari.StateD</IdLocation>
<IndexLocation>^Jaankari.StateI</IndexLocation>
<StreamLocation>^Jaankari.StateS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
