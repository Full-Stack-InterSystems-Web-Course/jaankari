Class Rest.Dispatch Extends %CSP.REST
{

XData UrlMap
{
<Routes>
  <Route Url="/city/:cityname" Method="GET" Call="CityInfo" Cors="false" />
  <Route Url="/cities" Method="GET" Call="CityArray" Cors="false" />
 </Routes>
}

ClassMethod CityArray() As %Status
{
	set obj = {}
 	set obj.cities = []
	&sql(DECLARE CityCursor CURSOR FOR
 	SELECT Name
 	FROM Jaankari.City 
 	order by Name)
 	&sql(OPEN CityCursor)
 	while (1) {
 		set city = {}
 		&sql(FETCH CityCursor INTO :name)
 		quit:(SQLCODE'=0)
 		set city.name = name
 		if (city.name '=""){
 		  do obj.cities.%Push(city)
 		}
 	} 	
 	write obj.%ToJSON()
	return $$$OK
}

ClassMethod CityInfo(cityname As %String) As %Status
{
 	set obj = {}
 	set obj.hotels = []
 	
 	&sql(SELECT ID, Longitude,Latitude,Description 
 			INTO :id, :long, :lat, :descr
 	FROM Jaankari.City
 	WHERE Name = :cityname)
 	if (SQLCODE'=0) {
 		set obj.status = 0
 		set obj.message = "no city in DB "_cityname
 		write obj.%ToJSON()
 	    return $$$OK
 	} 	 	
 	 	
 	set obj.cityname = cityname
 	set obj.citydesr = descr
 	set obj.lat = lat
 	set obj.long = long
 	
 	
 	&sql(DECLARE MyCursor CURSOR FOR
 	SELECT Name, Longitude, Latitude, Rating, Image, Address
 	FROM Jaankari.Hotel 
 	WHERE City = :id)
 	&sql(OPEN MyCursor)
 	while (1) {
 		set hotel = {}
 		&sql(FETCH MyCursor INTO :hname, :hlong, :hlat, :hrating, :himage, :haddress)
 		quit:(SQLCODE'=0)
 		set hotel.type = "hotel"
 		set hotel.name = hname
 		set hotel.lat = hlat
 		set hotel.long=hlong
 		set hotel.rating=hrating
 		set hotel.image=himage
 		set hotel.address = haddress
 		do obj.hotels.%Push(hotel)
 	} 	
 	&sql(CLOSE MyCursor)
 	
 	write obj.%ToJSON()
 
 	return $$$OK
}

}
