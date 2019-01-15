class Message {
  int id;
  String content;
  String fromPerson;
  String toPerson;
  DateTime dateTime;
  int jouneryId;

  Message(
      {this.id,
      this.content,
      this.fromPerson,
      this.toPerson,
      this.dateTime,
      this.jouneryId});

  Message.fromJson(Map<String, dynamic> json)
      : this.id = json['id'],
        this.content = json['content'],
        this.fromPerson = json['fromPerson'],
        this.toPerson = json['toPerson'],
        this.dateTime=json['dateTime'],
        this.jouneryId=json['jouneryId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'content': content,
        'fromPerson': fromPerson,
        'toPerson': toPerson,
        'dateTime':dateTime,
        'jouneryId':jouneryId,
      };

  Object toMap() {
    return {
      'id': id,
      'content': content,
      'fromPerson': fromPerson,
      'toPerson': toPerson,
      'dateTime': dateTime,
      'jouneryId': jouneryId
    };
  }
}
