Class Jaankari.Places Extends (%Persistent, %Populate)
{

Property Name As %String;

Property Longitude As %String;

Property Latitude As %String;

Property Description As %String;

Property Ticket As %String;

Storage Default
{
<Data name="PlacesDefaultData">
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
<Value>Ticket</Value>
</Value>
</Data>
<DataLocation>^Jaankari.PlacesD</DataLocation>
<DefaultData>PlacesDefaultData</DefaultData>
<IdLocation>^Jaankari.PlacesD</IdLocation>
<IndexLocation>^Jaankari.PlacesI</IndexLocation>
<StreamLocation>^Jaankari.PlacesS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
