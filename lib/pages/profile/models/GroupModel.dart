class GroupModel {
  GroupModel({
    List<Data>? data,
  }) {
    _data = data;
  }

  GroupModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;
  GroupModel copyWith({
    List<Data>? data,
  }) =>
      GroupModel(
        data: data ?? _data,
      );
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Data {
  Data({
    num? id,
    String? name,
    String? mobile,
    String? groupAdminId,
    dynamic divisionId,
    dynamic districtId,
    dynamic thanaId,
    String? address,
    String? addressLatitude,
    String? addressLongitude,
    String? image,
    dynamic websiteUrl,
    dynamic description,
    num? status,
    num? createdBy,
    num? updatedBy,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _mobile = mobile;
    _groupAdminId = groupAdminId;
    _divisionId = divisionId;
    _districtId = districtId;
    _thanaId = thanaId;
    _address = address;
    _addressLatitude = addressLatitude;
    _addressLongitude = addressLongitude;
    _image = image;
    _websiteUrl = websiteUrl;
    _description = description;
    _status = status;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _mobile = json['mobile'];
    _groupAdminId = json['group_admin_id'];
    _divisionId = json['division_id'];
    _districtId = json['district_id'];
    _thanaId = json['thana_id'];
    _address = json['address'];
    _addressLatitude = json['address_latitude'];
    _addressLongitude = json['address_longitude'];
    _image = json['image'];
    _websiteUrl = json['website_url'];
    _description = json['description'];
    _status = json['status'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _mobile;
  String? _groupAdminId;
  dynamic _divisionId;
  dynamic _districtId;
  dynamic _thanaId;
  String? _address;
  String? _addressLatitude;
  String? _addressLongitude;
  String? _image;
  dynamic _websiteUrl;
  dynamic _description;
  num? _status;
  num? _createdBy;
  num? _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  Data copyWith({
    num? id,
    String? name,
    String? mobile,
    String? groupAdminId,
    dynamic divisionId,
    dynamic districtId,
    dynamic thanaId,
    String? address,
    String? addressLatitude,
    String? addressLongitude,
    String? image,
    dynamic websiteUrl,
    dynamic description,
    num? status,
    num? createdBy,
    num? updatedBy,
    String? createdAt,
    String? updatedAt,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        mobile: mobile ?? _mobile,
        groupAdminId: groupAdminId ?? _groupAdminId,
        divisionId: divisionId ?? _divisionId,
        districtId: districtId ?? _districtId,
        thanaId: thanaId ?? _thanaId,
        address: address ?? _address,
        addressLatitude: addressLatitude ?? _addressLatitude,
        addressLongitude: addressLongitude ?? _addressLongitude,
        image: image ?? _image,
        websiteUrl: websiteUrl ?? _websiteUrl,
        description: description ?? _description,
        status: status ?? _status,
        createdBy: createdBy ?? _createdBy,
        updatedBy: updatedBy ?? _updatedBy,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  String? get name => _name;
  String? get mobile => _mobile;
  String? get groupAdminId => _groupAdminId;
  dynamic get divisionId => _divisionId;
  dynamic get districtId => _districtId;
  dynamic get thanaId => _thanaId;
  String? get address => _address;
  String? get addressLatitude => _addressLatitude;
  String? get addressLongitude => _addressLongitude;
  String? get image => _image;
  dynamic get websiteUrl => _websiteUrl;
  dynamic get description => _description;
  num? get status => _status;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['mobile'] = _mobile;
    map['group_admin_id'] = _groupAdminId;
    map['division_id'] = _divisionId;
    map['district_id'] = _districtId;
    map['thana_id'] = _thanaId;
    map['address'] = _address;
    map['address_latitude'] = _addressLatitude;
    map['address_longitude'] = _addressLongitude;
    map['image'] = _image;
    map['website_url'] = _websiteUrl;
    map['description'] = _description;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
