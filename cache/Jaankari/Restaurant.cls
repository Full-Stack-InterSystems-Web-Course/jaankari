Class Jaankari.Restaurant Extends (%Persistent, %Populate)
{

Property Name As %String;

Property Longitude As %String;

Property Latitude As %String;

Property Payment As %String;

Property Menu As %String;

Property Rating As %String;

Storage Default
{
<Data name="RestaurantDefaultData">
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
<Value>Payment</Value>
</Value>
<Value name="6">
<Value>Menu</Value>
</Value>
<Value name="7">
<Value>Rating</Value>
</Value>
</Data>
<DataLocation>^Jaankari.RestaurantD</DataLocation>
<DefaultData>RestaurantDefaultData</DefaultData>
<IdLocation>^Jaankari.RestaurantD</IdLocation>
<IndexLocation>^Jaankari.RestaurantI</IndexLocation>
<StreamLocation>^Jaankari.RestaurantS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
