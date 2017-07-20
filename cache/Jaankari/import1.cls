Class Jaankari.import1
{

ClassMethod importHotels(HT)
{
	/*set ROW = "hotel_id NUMERIC(5),chain_id NUMERIC(5),chain_name VARCHAR(200),brand_id INT(11),brand_name VARCHAR(200),hotel_name VARCHAR(200),hotel_formerly_name VARCHAR(200),,addressline1 VARCHAR(400),,zipcode VARCHAR(20),city VARCHAR(30),state VARCHAR(30),country VARCHAR(30),countryisocode VARCHAR(3),star_rating Numeric(5,2),longitude Numeric(10,6),latitude Numeric(10,6),,,,,,,,photo1 VARCHAR(100)" //,,checkin TIME,checkout TIME,,,,,,,,,,,rates_from NUMERIC(20),,,,,,rates_currency VARCHAR(11)"
	do ##class(%SQL.Util.Procedures).CSVTOCLASS(1,ROW,HT, ",", """",0,"Import.Hotel")*/
	
	
	/*&sql(Insert into Jaankari.Hotel (AgodaID,Address,AgodaCity,Country,Latitude,Longitude,Name,Rating,State,Image) 
	select hotel_id,addressline1,city,country,latitude,longitude,hotel_name,star_rating,state,photo1  
	from Import.Hotel where countryisocode= 'IN')*/
}

ClassMethod city()
{
	&sql(Truncate table Jaankari.city)
	&sql(Insert INTO Jaankari.City (Name) SELECT Distinct(AgodaCity) FROM Jaankari.Hotel)
	&sql(Declare CitiesCursor CURSOR for
	 select ID,Name FROM Jaankari.city)
	 &sql(Open CitiesCursor)
	 while (1) {
		&sql(fetch CitiesCursor INTO :id, :name)	
		quit:(SQLCODE '=0) 
		&sql(UPDATE Jaankari.Hotel SET City=:id WHERE AgodaCity=:name)
	 }
	 &sql(CLOSE CitiesCursor)
}

}
