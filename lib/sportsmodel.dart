import 'dart:convert';
class SportsModel {
  String createOn;
  String updatedOn;
  int id;
  List<String> images;
  var files;
  String name;
  List<String> dayOfWeeksOpen;
  String openTime;
  String closeTime;
  int slotTimeSize;
  num costPerSlot;
  var active;
  var establishment;
  Sports sports;

  SportsModel(
      {this.createOn,
        this.updatedOn,
        this.id,
        this.images,
        this.files,
        this.name,
        this.dayOfWeeksOpen,
        this.openTime,
        this.closeTime,
        this.slotTimeSize,
        this.costPerSlot,
        this.active,
        this.establishment,
        this.sports});

  SportsModel.fromJson(Map<String, dynamic> json) {
    createOn = json['createOn'];
    updatedOn = json['updatedOn'];
    id = json['id'];
    images =  json['images']!=null? json['images'].cast<String>():[];
    files = json['files'];
    name = json['name'];
    dayOfWeeksOpen = json['dayOfWeeksOpen'].cast<String>();
    openTime = json['openTime'];
    closeTime = json['closeTime'];
    slotTimeSize = json['slotTimeSize'];
    costPerSlot = json['costPerSlot'];
    active = json['active'];
    establishment = json['establishment'];
    sports =
    json['sports'] != null ? new Sports.fromJson(json['sports']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createOn'] = this.createOn;
    data['updatedOn'] = this.updatedOn;
    data['id'] = this.id;
    data['images'] = this.images;
    data['files'] = this.files;
    data['name'] = this.name;
    data['dayOfWeeksOpen'] = this.dayOfWeeksOpen;
    data['openTime'] = this.openTime;
    data['closeTime'] = this.closeTime;
    data['slotTimeSize'] = this.slotTimeSize;
    data['costPerSlot'] = this.costPerSlot;
    data['active'] = this.active;
    data['establishment'] = this.establishment;
    if (this.sports != null) {
      data['sports'] = this.sports.toJson();
    }
    return data;
  }
}

class Sports {
  var createOn;
  var updatedOn;
  int id;
  String name;
  String iconWhiteUrl;
  String iconBlackUrl;

  Sports(
      {this.createOn,
        this.updatedOn,
        this.id,
        this.name,
        this.iconWhiteUrl,
        this.iconBlackUrl});

  Sports.fromJson(Map<String, dynamic> json) {
    createOn = json['createOn'];
    updatedOn = json['updatedOn'];
    id = json['id'];
    name = json['name'];
    iconWhiteUrl = json['iconWhiteUrl'];
    iconBlackUrl = json['iconBlackUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createOn'] = this.createOn;
    data['updatedOn'] = this.updatedOn;
    data['id'] = this.id;
    data['name'] = this.name;
    data['iconWhiteUrl'] = this.iconWhiteUrl;
    data['iconBlackUrl'] = this.iconBlackUrl;
    return data;
  }
}
