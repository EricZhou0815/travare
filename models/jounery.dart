
class Location{
  String _placeName;
  double _langtitude;
  double _longtitude;

  //placeName getter/setter
  String get place{
      return this._placeName;
  }

  set location(String alocation){
     this._placeName=alocation;
  }

  //langtitude getter/setter
  double get lang{
      return this._langtitude;
  }

  set lang(double alangtitude){
     this._langtitude=alangtitude;
  }

  //longtitude getter/setter
  double get long{
      return this._longtitude;
  }

  set long(double alongtitude){
     this._longtitude=alongtitude;
  } 

  Location(this._placeName,this._langtitude,this._longtitude);
}


class Jounery{
  int _id;
  Location _fromLocation;
  Location _toLocation;
  DateTime _dateTime;
  int _numberOfPeople;
  String _publisher;
  String _role;
  String _status;
  int _co2Reduction;
  int _userId;

  //id getter/setter
  int get id{
      return this._id;
  }

  set id(int aId){
     this._id=aId;
  } 

  //fromLocation getter/setter
  Location get from{
      return this._fromLocation;
  }

  set from(Location aPlace){
     this._fromLocation=aPlace;
  } 

  //toLocation getter/setter
  Location get to{
      return this._toLocation;
  }

  set to(Location aPlace){
     this._toLocation=aPlace;
  } 

  //dateTime getter/setter
  DateTime get time{
      return this._dateTime;
  }

  set time(DateTime adateTime){
     this._dateTime=adateTime;
  } 

  //numberOfPeople getter/setter
  int get numberOfPeople{
      return this._numberOfPeople;
  }

  set numberOfPeople(int number){
     this._numberOfPeople=number;
  }

  //publisher getter/setter
  String get publisher{
      return this._publisher;
  }

  set publisher(String aPublisher){
     this._publisher=aPublisher;
  } 

  //role getter/setter
  String get role{
      return this._role;
  }

  set role(String aRole){
     this._role=aRole;
  } 

  //role getter/setter
  String get status{
      return this._status;
  }

  set status(String aStatus){
     this._status=aStatus;
  }

  //co2Reduction getter/setter
  int get co2Reduction{
      return this._co2Reduction;
  }

  set co2Reduction(int aReduction){
     this._co2Reduction=aReduction;
  }

  //userId getter/setter
  int get userId{
      return this._userId;
  }

  set userID(int aUserId){
     this._userId=aUserId;
  }

  Jounery(this._fromLocation,this._toLocation,this._dateTime,this._numberOfPeople,this._publisher,this._role,this._status,this._co2Reduction,this._id);

  //receive json data
  Jounery.fromJson(Map<String, dynamic> json):
    _fromLocation=json['formLocation'],
    _toLocation=json['toLocation'],
    _dateTime=json['dateTime'],
    _numberOfPeople=json['numberOfPeople'],
    _publisher=json['publihser'],
    _role=json['role'],
    _status=json['status'],
    _co2Reduction=json['co2Reduction'],
    _userId=json['userId'];

  //convert to json data
  Map <String, dynamic> toJson()=>{
    'fromLocation':_fromLocation,
    'toLocation':_toLocation,
    'dateTime':_dateTime,
    'numberOfPeople':_numberOfPeople,
    'publisher':_publisher,
    'role':_role,
    'status':_status,
    'co2Reduction':_co2Reduction,
    'userId':_userId,
  }; 
}

