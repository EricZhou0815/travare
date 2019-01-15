

class Profile {
  String _avatar;
  String _firstName;
  String _lastName;
  String _city;
  String _country;
  String _about;
  String _email;
  String _mobile;
  int _greenLevel;
  bool _isNotificationOn;

  String get avatar{
      return this._avatar;
  }

  set avatar(String afileName){
     this._avatar=afileName;
  }

  String get firstName{
      return this._firstName;
  }

  set firstName(String aName){
     this._firstName=aName;
  }

  String get lasttName{
      return this._lastName;
  }

  set lastName(String aName){
     this._lastName=aName;
  }

  String get city{
      return this._city;
  }

  set city(String aCity){
     this._city=aCity;
  }

  String get country{
      return this._country;
  }

  set country(String aCountry){
     this._country=aCountry;
  }

  String get about{
      return this._about;
  }

  set about(String anAbout){
     this._about=anAbout;
  }

  String get email{
      return this._email;
  }

  set email(String anEmail){
     this._email=anEmail;
  }

  String get mobile{
      return this._mobile;
  }

  set mobile(String aMobile){
     this._mobile=aMobile;
  }

  int get greenLevel{
      return this._greenLevel;
  }

  set greenLevel(int aLevel){
     this._greenLevel=aLevel;
  }

  bool get isNoficicationOn{
      return this._isNotificationOn;
  }

  set isNotificationOn(bool an){
     this._isNotificationOn=an;
  }

   Profile(this._avatar,this._firstName,this._lastName,this._city,this._country,this._about,this._email,this._mobile,this._greenLevel,this._isNotificationOn);

    //receive json data
  Profile.fromJson(Map<String, dynamic> json):
    _avatar=json['avatar'],
    _firstName=json['firstName'],
    _lastName=json['lastName'],
    _city=json['city'],
    _country=json['country'],
    _about=json['about'],
    _email=json['email'],
    _mobile=json['mobile'],
    _greenLevel=json['greenLevel'],
    _isNotificationOn=json['isNotificationOn'];

  //convert to json data
  Map <String, dynamic> toJson()=>{
    'avatar':_avatar,
    'firstName':_firstName,
    'lastName':_lastName,
    'city':_city,
    'country':_country,
    'about':_about,
    'email':_email,
    'mobile':_mobile,
    'greenLevel':greenLevel,
    'isNotificationOn':_isNotificationOn,
  }; 

}


