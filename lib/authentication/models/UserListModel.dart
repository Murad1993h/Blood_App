class UserListModel {
  UserListModel({
    this.userList,
  });

  UserListModel.fromJson(dynamic json) {
    if (json['list'] != null) {
      userList = [];
      json['list'].forEach((v) {
        userList?.add(UserList.fromJson(v));
      });
    }
  }

  List<UserList>? userList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (userList != null) {
      map['list'] = userList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class UserList {
  UserList({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.donorId,
    this.twoFactorConfirmedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.createdAt,
    this.updatedAt,
    this.profilePhotoUrl,
    this.donorDetails,
  });

  UserList.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    donorId = json['donor_id'];
    twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    currentTeamId = json['current_team_id'];
    profilePhotoPath = json['profile_photo_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    profilePhotoUrl = json['profile_photo_url'];
    donorDetails = json['donor_details'] != null ? DonorDetails.fromJson(json['donor_details']) : null;
  }

  num? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? donorId;
  dynamic twoFactorConfirmedAt;
  dynamic currentTeamId;
  dynamic profilePhotoPath;
  String? createdAt;
  String? updatedAt;
  String? profilePhotoUrl;
  DonorDetails? donorDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['donor_id'] = donorId;
    map['two_factor_confirmed_at'] = twoFactorConfirmedAt;
    map['current_team_id'] = currentTeamId;
    map['profile_photo_path'] = profilePhotoPath;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['profile_photo_url'] = profilePhotoUrl;
    if (donorDetails != null) {
      map['donor_details'] = donorDetails?.toJson();
    }
    return map;
  }
}

class DonorDetails {
  DonorDetails({
    this.id,
    this.donateCheck,
    this.lastDonateDate,
    this.firstName,
    this.lastName,
    this.email,
    this.mobile,
    this.userId,
    this.password,
    this.bloodGroup,
    this.birthDate,
    this.age,
    this.gender,
    this.divisionId,
    this.districtId,
    this.thanaId,
    this.occupation,
    this.universityId,
    this.hospitalId,
    this.referId,
    this.interestedWork,
    this.groupCheck,
    this.groupId,
    this.agree,
    this.image,
    this.liveAddressCheck,
    this.address,
    this.addressLatitude,
    this.addressLongitude,
    this.weight,
    this.height,
    this.nidNo,
    this.facebookId,
    this.instagramId,
    this.youtubeId,
    this.linkedInId,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  DonorDetails.fromJson(dynamic json) {
    id = json['id'];
    donateCheck = json['donate_check'];
    lastDonateDate = json['last_donate_date'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    mobile = json['mobile'];
    userId = json['user_id'];
    password = json['password'];
    bloodGroup = json['blood_group'];
    birthDate = json['birth_date'];
    age = json['age'];
    gender = json['gender'];
    divisionId = json['division_id'];
    districtId = json['district_id'];
    thanaId = json['thana_id'];
    occupation = json['occupation'];
    universityId = json['university_id'];
    hospitalId = json['hospital_id'];
    referId = json['refer_id'];
    interestedWork = json['interested_work'];
    groupCheck = json['group_check'];
    groupId = json['group_id'];
    agree = json['agree'];
    image = json['image'];
    liveAddressCheck = json['live_address_check'];
    address = json['address'];
    addressLatitude = json['address_latitude'];
    addressLongitude = json['address_longitude'];
    weight = json['weight'];
    height = json['height'];
    nidNo = json['nid_no'];
    facebookId = json['facebook_id'];
    instagramId = json['instagram_id'];
    youtubeId = json['youtube_id'];
    linkedInId = json['linkedIn_id'];
    status = json['status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  num? id;
  String? donateCheck;
  String? lastDonateDate;
  String? firstName;
  String? lastName;
  String? email;
  String? mobile;
  dynamic userId;
  dynamic password;
  String? bloodGroup;
  String? birthDate;
  String? age;
  String? gender;
  String? divisionId;
  String? districtId;
  String? thanaId;
  String? occupation;
  String? universityId;
  String? hospitalId;
  String? referId;
  String? interestedWork;
  String? groupCheck;
  String? groupId;
  String? agree;
  dynamic image;
  dynamic liveAddressCheck;
  dynamic address;
  dynamic addressLatitude;
  dynamic addressLongitude;
  dynamic weight;
  dynamic height;
  dynamic nidNo;
  dynamic facebookId;
  dynamic instagramId;
  dynamic youtubeId;
  dynamic linkedInId;
  num? status;
  num? createdBy;
  num? updatedBy;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['donate_check'] = donateCheck;
    map['last_donate_date'] = lastDonateDate;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['mobile'] = mobile;
    map['user_id'] = userId;
    map['password'] = password;
    map['blood_group'] = bloodGroup;
    map['birth_date'] = birthDate;
    map['age'] = age;
    map['gender'] = gender;
    map['division_id'] = divisionId;
    map['district_id'] = districtId;
    map['thana_id'] = thanaId;
    map['occupation'] = occupation;
    map['university_id'] = universityId;
    map['hospital_id'] = hospitalId;
    map['refer_id'] = referId;
    map['interested_work'] = interestedWork;
    map['group_check'] = groupCheck;
    map['group_id'] = groupId;
    map['agree'] = agree;
    map['image'] = image;
    map['live_address_check'] = liveAddressCheck;
    map['address'] = address;
    map['address_latitude'] = addressLatitude;
    map['address_longitude'] = addressLongitude;
    map['weight'] = weight;
    map['height'] = height;
    map['nid_no'] = nidNo;
    map['facebook_id'] = facebookId;
    map['instagram_id'] = instagramId;
    map['youtube_id'] = youtubeId;
    map['linkedIn_id'] = linkedInId;
    map['status'] = status;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
