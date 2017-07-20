Class Jaankari.Hotel Extends (%Persistent, %Populate)
{

Property City As Jaankari.City;

Property Name As %String(MAXLEN = 100);

Property Longitude As %Numeric;

Property Latitude As %Numeric;

Property Rating As %Numeric;

Property Address As %String(MAXLEN = 400);

Property State As %String;

Property Country As %String;

Property Image As %String(MAXLEN = 200);

Storage Default
{
<Data name="HotelDefaultData">
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
<Value>Services</Value>
</Value>
<Value name="7">
<Value>Rating</Value>
</Value>
<Value name="8">
<Value>Schemes</Value>
</Value>
<Value name="9">
<Value>City</Value>
</Value>
<Value name="10">
<Value>Address</Value>
</Value>
<Value name="11">
<Value>Image</Value>
</Value>
<Value name="12">
<Value>State</Value>
</Value>
<Value name="13">
<Value>Country</Value>
</Value>
<Value name="14">
<Value>CountryIsoCode</Value>
</Value>
<Value name="15">
<Value>PinCode</Value>
</Value>
<Value name="16">
<Value>CompanyName</Value>
</Value>
<Value name="17">
<Value>FormerName</Value>
</Value>
<Value name="18">
<Value>AgodaID</Value>
</Value>
<Value name="19">
<Value>AgodaCity</Value>
</Value>
</Data>
<DataLocation>^Jaankari.HotelD</DataLocation>
<DefaultData>HotelDefaultData</DefaultData>
<IdLocation>^Jaankari.HotelD</IdLocation>
<IndexLocation>^Jaankari.HotelI</IndexLocation>
<StreamLocation>^Jaankari.HotelS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

Property AgodaID As %Integer;

Property AgodaCity As %String(MAXLEN = 50);

}
