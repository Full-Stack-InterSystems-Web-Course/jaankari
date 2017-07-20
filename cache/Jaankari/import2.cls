Class Jaankari.import2
{

ClassMethod ImportCity()
{
	
	
	&sql(Insert into Jaankari.City (Name) 
	select  AgodaCity 
	from Jaankari.Hotel)
	
	
	return 1
}

}
