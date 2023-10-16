class UniversityModel {
  UniversityModel({
    this.data,
  });

  UniversityModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(UniversityData.fromJson(v));
      });
    }
  }

  List<UniversityData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class UniversityData {
  UniversityData({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.divisionId,
    this.districtId,
    this.thanaId,
    this.image,
    this.address,
    this.addressLatitude,
    this.addressLongitude,
    this.discount,
    this.websiteUrl,
    this.description,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  UniversityData.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    divisionId = json['division_id'];
    districtId = json['district_id'];
    thanaId = json['thana_id'];
    image = json['image'];
    address = json['address'];
    addressLatitude = json['address_latitude'];
    addressLongitude = json['address_longitude'];
    discount = json['discount'];
    websiteUrl = json['website_url'];
    description = json['description'];
    status = json['status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  num? id;
  String? name;
  String? mobile;
  dynamic email;
  String? divisionId;
  String? districtId;
  String? thanaId;
  String? image;
  String? address;
  String? addressLatitude;
  String? addressLongitude;
  String? discount;
  String? websiteUrl;
  String? description;
  num? status;
  num? createdBy;
  num? updatedBy;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['division_id'] = divisionId;
    map['district_id'] = districtId;
    map['thana_id'] = thanaId;
    map['image'] = image;
    map['address'] = address;
    map['address_latitude'] = addressLatitude;
    map['address_longitude'] = addressLongitude;
    map['discount'] = discount;
    map['website_url'] = websiteUrl;
    map['description'] = description;
    map['status'] = status;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
