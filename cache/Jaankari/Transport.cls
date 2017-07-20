Class Jaankari.Transport Extends (%Persistent, %Populate)
{

Property TransportNumber As %String(MAXLEN = 50);

Property TransportName As %String(MAXLEN = 100);

Property SCode As %String;

Property SName As %String(MAXLEN = 100);

Property Distance As %Numeric;

Property DepartureTime As %String(MAXLEN = 100);

Property ArrivalTime As %String(MAXLEN = 100);

Property SStationCode As %String;

Property SStationName As %String(MAXLEN = 100);

Property DStationCode As %String;

Property DStationName As %String(MAXLEN = 100);

Storage Default
{
<Data name="TransportDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Type</Value>
</Value>
<Value name="3">
<Value>CompnanyName</Value>
</Value>
<Value name="4">
<Value>Address</Value>
</Value>
<Value name="5">
<Value>Payment</Value>
</Value>
<Value name="6">
<Value>Class</Value>
</Value>
<Value name="7">
<Value>DepartureTime</Value>
</Value>
<Value name="8">
<Value>ArrivalTime</Value>
</Value>
<Value name="9">
<Value>TotalTravellingTime</Value>
</Value>
<Value name="10">
<Value>TransportNumber</Value>
</Value>
<Value name="11">
<Value>TransportName</Value>
</Value>
<Value name="12">
<Value>SCode</Value>
</Value>
<Value name="13">
<Value>SName</Value>
</Value>
<Value name="14">
<Value>Distance</Value>
</Value>
<Value name="15">
<Value>SStationCode</Value>
</Value>
<Value name="16">
<Value>SStationName</Value>
</Value>
<Value name="17">
<Value>DStationCode</Value>
</Value>
<Value name="18">
<Value>DStationName</Value>
</Value>
</Data>
<DataLocation>^Jaankari.TransportD</DataLocation>
<DefaultData>TransportDefaultData</DefaultData>
<IdLocation>^Jaankari.TransportD</IdLocation>
<IndexLocation>^Jaankari.TransportI</IndexLocation>
<StreamLocation>^Jaankari.TransportS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
