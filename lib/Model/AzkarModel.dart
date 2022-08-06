class AzkarModel
{
  AzkarObject? arabia;
  AzkarModel.fromJson(dynamic json)
  {
    arabia = AzkarObject.fromjson(json);
  }

}
class AzkarObject
{
  List<DataObject>dataObject=[];

  AzkarObject.fromjson(dynamic json)
  {
    json['العربية'].forEach((e)
    {
      dataObject.add(DataObject.fromJson(e));
    });
  }

}
class DataObject
{
  int? id;
  var text;
  var title;
  var audio;
  DataObject.fromJson(dynamic json)
  {
    id= json['ID'];
    text= json['TEXT'];
    audio= json['AUDIO_URL'];
    title= json['TITLE'];
  }

}
