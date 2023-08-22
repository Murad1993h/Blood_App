class HospitalModel {
  HospitalModel({
    List<Data>? data,
  }) {
    _data = data;
  }

  HospitalModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;
  HospitalModel copyWith({
    List<Data>? data,
  }) =>
      HospitalModel(
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
    String? divisionId,
    String? districtId,
    String? thanaId,
    String? image,
    String? address,
    String? addressLatitude,
    String? addressLongitude,
    String? discount,
    dynamic websiteUrl,
    num? bloodBank,
    String? description,
    num? status,
    num? createdBy,
    num? updatedBy,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _mobile = mobile;
    _divisionId = divisionId;
    _districtId = districtId;
    _thanaId = thanaId;
    _image = image;
    _address = address;
    _addressLatitude = addressLatitude;
    _addressLongitude = addressLongitude;
    _discount = discount;
    _websiteUrl = websiteUrl;
    _bloodBank = bloodBank;
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
    _divisionId = json['division_id'];
    _districtId = json['district_id'];
    _thanaId = json['thana_id'];
    _image = json['image'];
    _address = json['address'];
    _addressLatitude = json['address_latitude'];
    _addressLongitude = json['address_longitude'];
    _discount = json['discount'];
    _websiteUrl = json['website_url'];
    _bloodBank = json['blood_bank'];
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
  String? _divisionId;
  String? _districtId;
  String? _thanaId;
  String? _image;
  String? _address;
  String? _addressLatitude;
  String? _addressLongitude;
  String? _discount;
  dynamic _websiteUrl;
  num? _bloodBank;
  String? _description;
  num? _status;
  num? _createdBy;
  num? _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  Data copyWith({
    num? id,
    String? name,
    String? mobile,
    String? divisionId,
    String? districtId,
    String? thanaId,
    String? image,
    String? address,
    String? addressLatitude,
    String? addressLongitude,
    String? discount,
    dynamic websiteUrl,
    num? bloodBank,
    String? description,
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
        divisionId: divisionId ?? _divisionId,
        districtId: districtId ?? _districtId,
        thanaId: thanaId ?? _thanaId,
        image: image ?? _image,
        address: address ?? _address,
        addressLatitude: addressLatitude ?? _addressLatitude,
        addressLongitude: addressLongitude ?? _addressLongitude,
        discount: discount ?? _discount,
        websiteUrl: websiteUrl ?? _websiteUrl,
        bloodBank: bloodBank ?? _bloodBank,
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
  String? get divisionId => _divisionId;
  String? get districtId => _districtId;
  String? get thanaId => _thanaId;
  String? get image => _image;
  String? get address => _address;
  String? get addressLatitude => _addressLatitude;
  String? get addressLongitude => _addressLongitude;
  String? get discount => _discount;
  dynamic get websiteUrl => _websiteUrl;
  num? get bloodBank => _bloodBank;
  String? get description => _description;
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
    map['division_id'] = _divisionId;
    map['district_id'] = _districtId;
    map['thana_id'] = _thanaId;
    map['image'] = _image;
    map['address'] = _address;
    map['address_latitude'] = _addressLatitude;
    map['address_longitude'] = _addressLongitude;
    map['discount'] = _discount;
    map['website_url'] = _websiteUrl;
    map['blood_bank'] = _bloodBank;
    map['description'] = _description;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
