Class Jaankari.import3
{

ClassMethod importTrains(TR)
{
	/*set ROW = "TrainNo VARCHAR(20),trainName VARCHAR(50),,stationCode VARCHAR(50),StationName VARCHAR(50),Arrivaltime VARCHAR(30),Departuretime VARCHAR(30),Distance NUMERIC(30),SourceStationCode VARCHAR(11),sourceStationName VARCHAR(50),DestinationstationCode VARCHAR(50),DestinationStationName VARCHAR(50)"
	do ##class(%SQL.Util.Procedures).CSVTOCLASS(1,ROW,TR, ",", """",0,"Import.Train")*/
	
	
	&sql(Insert into Jaankari.Transport (TransportNumber,TransportName,Scode,Sname,Distance,DepartureTime,ArrivalTime,SStationCode,SStationName,DStationCode,DStationName) 
	select TrainNo,trainName,StationCode,StationName,Distance,Departuretime,Arrivaltime,SourceStationCode,DestinationstationCode,DestinationStationName 
	from Import.Train)
	return 1
}

}
