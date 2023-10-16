class ProfileModel {
  ProfileModel({
    String? message,
    Profile? profile,
  }) {
    _message = message;
    _profile = profile;
  }

  ProfileModel.fromJson(dynamic json) {
    _message = json['message'];
    _profile = json['profile'] != null ? Profile.fromJson(json['profile']) : null;
  }
  String? _message;
  Profile? _profile;

  String? get message => _message;
  Profile? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_profile != null) {
      map['profile'] = _profile?.toJson();
    }
    return map;
  }
}

class Profile {
  Profile({
    num? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    String? donorId,
    dynamic twoFactorConfirmedAt,
    dynamic currentTeamId,
    dynamic profilePhotoPath,
    String? createdAt,
    String? updatedAt,
    String? profilePhotoUrl,
    DonorDetails? donorDetails,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _donorId = donorId;
    _twoFactorConfirmedAt = twoFactorConfirmedAt;
    _currentTeamId = currentTeamId;
    _profilePhotoPath = profilePhotoPath;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _profilePhotoUrl = profilePhotoUrl;
    _donorDetails = donorDetails;
  }

  Profile.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _donorId = json['donor_id'];
    _twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    _currentTeamId = json['current_team_id'];
    _profilePhotoPath = json['profile_photo_path'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _profilePhotoUrl = json['profile_photo_url'];
    _donorDetails = json['donor_details'] != null ? DonorDetails.fromJson(json['donor_details']) : null;
  }
  num? _id;
  String? _name;
  String? _email;
  dynamic _emailVerifiedAt;
  String? _donorId;
  dynamic _twoFactorConfirmedAt;
  dynamic _currentTeamId;
  dynamic _profilePhotoPath;
  String? _createdAt;
  String? _updatedAt;
  String? _profilePhotoUrl;
  DonorDetails? _donorDetails;

  num? get id => _id;
  String? get name => _name;
  String? get email => _email;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get donorId => _donorId;
  dynamic get twoFactorConfirmedAt => _twoFactorConfirmedAt;
  dynamic get currentTeamId => _currentTeamId;
  dynamic get profilePhotoPath => _profilePhotoPath;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get profilePhotoUrl => _profilePhotoUrl;
  DonorDetails? get donorDetails => _donorDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['email_verified_at'] = _emailVerifiedAt;
    map['donor_id'] = _donorId;
    map['two_factor_confirmed_at'] = _twoFactorConfirmedAt;
    map['current_team_id'] = _currentTeamId;
    map['profile_photo_path'] = _profilePhotoPath;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['profile_photo_url'] = _profilePhotoUrl;
    if (_donorDetails != null) {
      map['donor_details'] = _donorDetails?.toJson();
    }
    return map;
  }
}

class DonorDetails {
  DonorDetails({
    num? id,
    String? donateCheck,
    String? lastDonateDate,
    String? firstName,
    String? lastName,
    String? email,
    String? mobile,
    String? userId,
    String? password,
    String? bloodGroup,
    String? birthDate,
    String? age,
    String? gender,
    String? divisionId,
    String? districtId,
    String? thanaId,
    String? occupation,
    dynamic universityId,
    String? hospitalId,
    String? referId,
    String? interestedWork,
    String? groupCheck,
    String? groupId,
    String? agree,
    String? image,
    num? liveAddressCheck,
    String? address,
    String? addressLatitude,
    String? addressLongitude,
    String? weight,
    String? height,
    String? nidNo,
    String? facebookId,
    String? instagramId,
    String? youtubeId,
    String? linkedInId,
    num? status,
    dynamic createdBy,
    dynamic updatedBy,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _donateCheck = donateCheck;
    _lastDonateDate = lastDonateDate;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _mobile = mobile;
    _userId = userId;
    _password = password;
    _bloodGroup = bloodGroup;
    _birthDate = birthDate;
    _age = age;
    _gender = gender;
    _divisionId = divisionId;
    _districtId = districtId;
    _thanaId = thanaId;
    _occupation = occupation;
    _universityId = universityId;
    _hospitalId = hospitalId;
    _referId = referId;
    _interestedWork = interestedWork;
    _groupCheck = groupCheck;
    _groupId = groupId;
    _agree = agree;
    _image = image;
    _liveAddressCheck = liveAddressCheck;
    _address = address;
    _addressLatitude = addressLatitude;
    _addressLongitude = addressLongitude;
    _weight = weight;
    _height = height;
    _nidNo = nidNo;
    _facebookId = facebookId;
    _instagramId = instagramId;
    _youtubeId = youtubeId;
    _linkedInId = linkedInId;
    _status = status;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  DonorDetails.fromJson(dynamic json) {
    _id = json['id'];
    _donateCheck = json['donate_check'];
    _lastDonateDate = json['last_donate_date'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _mobile = json['mobile'];
    _userId = json['user_id'];
    _password = json['password'];
    _bloodGroup = json['blood_group'];
    _birthDate = json['birth_date'];
    _age = json['age'];
    _gender = json['gender'];
    _divisionId = json['division_id'];
    _districtId = json['district_id'];
    _thanaId = json['thana_id'];
    _occupation = json['occupation'];
    _universityId = json['university_id'];
    _hospitalId = json['hospital_id'];
    _referId = json['refer_id'];
    _interestedWork = json['interested_work'];
    _groupCheck = json['group_check'];
    _groupId = json['group_id'];
    _agree = json['agree'];
    _image = json['image'];
    _liveAddressCheck = json['live_address_check'];
    _address = json['address'];
    _addressLatitude = json['address_latitude'];
    _addressLongitude = json['address_longitude'];
    _weight = json['weight'];
    _height = json['height'];
    _nidNo = json['nid_no'];
    _facebookId = json['facebook_id'];
    _instagramId = json['instagram_id'];
    _youtubeId = json['youtube_id'];
    _linkedInId = json['linkedIn_id'];
    _status = json['status'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _donateCheck;
  String? _lastDonateDate;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _mobile;
  String? _userId;
  String? _password;
  String? _bloodGroup;
  String? _birthDate;
  String? _age;
  String? _gender;
  String? _divisionId;
  String? _districtId;
  String? _thanaId;
  String? _occupation;
  dynamic _universityId;
  String? _hospitalId;
  String? _referId;
  String? _interestedWork;
  String? _groupCheck;
  String? _groupId;
  String? _agree;
  String? _image;
  num? _liveAddressCheck;
  String? _address;
  String? _addressLatitude;
  String? _addressLongitude;
  String? _weight;
  String? _height;
  String? _nidNo;
  String? _facebookId;
  String? _instagramId;
  String? _youtubeId;
  String? _linkedInId;
  num? _status;
  dynamic _createdBy;
  dynamic _updatedBy;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get donateCheck => _donateCheck;
  String? get lastDonateDate => _lastDonateDate;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get userId => _userId;
  String? get password => _password;
  String? get bloodGroup => _bloodGroup;
  String? get birthDate => _birthDate;
  String? get age => _age;
  String? get gender => _gender;
  String? get divisionId => _divisionId;
  String? get districtId => _districtId;
  String? get thanaId => _thanaId;
  String? get occupation => _occupation;
  dynamic get universityId => _universityId;
  String? get hospitalId => _hospitalId;
  String? get referId => _referId;
  String? get interestedWork => _interestedWork;
  String? get groupCheck => _groupCheck;
  String? get groupId => _groupId;
  String? get agree => _agree;
  String? get image => _image;
  num? get liveAddressCheck => _liveAddressCheck;
  String? get address => _address;
  String? get addressLatitude => _addressLatitude;
  String? get addressLongitude => _addressLongitude;
  String? get weight => _weight;
  String? get height => _height;
  String? get nidNo => _nidNo;
  String? get facebookId => _facebookId;
  String? get instagramId => _instagramId;
  String? get youtubeId => _youtubeId;
  String? get linkedInId => _linkedInId;
  num? get status => _status;
  dynamic get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['donate_check'] = _donateCheck;
    map['last_donate_date'] = _lastDonateDate;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['user_id'] = _userId;
    map['password'] = _password;
    map['blood_group'] = _bloodGroup;
    map['birth_date'] = _birthDate;
    map['age'] = _age;
    map['gender'] = _gender;
    map['division_id'] = _divisionId;
    map['district_id'] = _districtId;
    map['thana_id'] = _thanaId;
    map['occupation'] = _occupation;
    map['university_id'] = _universityId;
    map['hospital_id'] = _hospitalId;
    map['refer_id'] = _referId;
    map['interested_work'] = _interestedWork;
    map['group_check'] = _groupCheck;
    map['group_id'] = _groupId;
    map['agree'] = _agree;
    map['image'] = _image;
    map['live_address_check'] = _liveAddressCheck;
    map['address'] = _address;
    map['address_latitude'] = _addressLatitude;
    map['address_longitude'] = _addressLongitude;
    map['weight'] = _weight;
    map['height'] = _height;
    map['nid_no'] = _nidNo;
    map['facebook_id'] = _facebookId;
    map['instagram_id'] = _instagramId;
    map['youtube_id'] = _youtubeId;
    map['linkedIn_id'] = _linkedInId;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
