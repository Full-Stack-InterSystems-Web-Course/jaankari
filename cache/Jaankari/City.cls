Class Jaankari.City Extends (%Persistent, %Populate)
{

Property Name As %String;

Property Longitude As %String;

Property Latitude As %String;

Property Description As %String(MAXLEN = 5000);

Property Weather As %String;

Storage Default
{
<Data name="CityDefaultData">
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
<DataLocation>^Jaankari.CityD</DataLocation>
<DefaultData>CityDefaultData</DefaultData>
<IdLocation>^Jaankari.CityD</IdLocation>
<IndexLocation>^Jaankari.CityI</IndexLocation>
<StreamLocation>^Jaankari.CityS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

Index NewIndex1 On Name [ Unique ];

}
