class MyResponseModel {
  MyResponseModel({
    this.data,
  });

  MyResponseModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(MyResponseData.fromJson(v));
      });
    }
  }

  List<MyResponseData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class MyResponseData {
  MyResponseData({
    this.id,
    this.requestId,
    this.requestBy,
    this.user,
    this.donorId,
    this.status,
    this.paymentCode,
    this.donorPaidStatus,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.donor,
    this.giver,
  });

  MyResponseData.fromJson(dynamic json) {
    id = json['id'];
    requestId = json['request_id'];
    requestBy = json['request_by'];
    user = json['user'];
    donorId = json['donor_id'];
    status = json['status'];
    paymentCode = json['payment_code'];
    donorPaidStatus = json['donor_paid_status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    donor = json['donor'] != null ? Donor.fromJson(json['donor']) : null;
    giver = json['giver'] != null ? Giver.fromJson(json['giver']) : null;
  }

  num? id;
  String? requestId;
  String? requestBy;
  String? user;
  String? donorId;
  num? status;
  dynamic paymentCode;
  num? donorPaidStatus;
  num? createdBy;
  num? updatedBy;
  String? createdAt;
  String? updatedAt;
  Donor? donor;
  Giver? giver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['request_id'] = requestId;
    map['request_by'] = requestBy;
    map['user'] = user;
    map['donor_id'] = donorId;
    map['status'] = status;
    map['payment_code'] = paymentCode;
    map['donor_paid_status'] = donorPaidStatus;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    if (donor != null) {
      map['donor'] = donor?.toJson();
    }
    if (giver != null) {
      map['giver'] = giver?.toJson();
    }
    return map;
  }
}

class Giver {
  Giver({
    this.id,
    this.requestBy,
    this.patientName,
    this.patientProblem,
    this.age,
    this.gender,
    this.bloodGroup,
    this.bloodQuantity,
    this.date,
    this.time,
    this.divisionId,
    this.districtId,
    this.hospitalName,
    this.contactNumber,
    this.requestType,
    this.description,
    this.status,
    this.paymentStatus,
    this.paymentAmount,
    this.donorResponse,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  Giver.fromJson(dynamic json) {
    id = json['id'];
    requestBy = json['request_by'];
    patientName = json['patient_name'];
    patientProblem = json['patient_problem'];
    age = json['age'];
    gender = json['gender'];
    bloodGroup = json['blood_group'];
    bloodQuantity = json['blood_quantity'];
    date = json['date'];
    time = json['time'];
    divisionId = json['division_id'];
    districtId = json['district_id'];
    hospitalName = json['hospital_name'];
    contactNumber = json['contact_number'];
    requestType = json['request_type'];
    description = json['description'];
    status = json['status'];
    paymentStatus = json['payment_status'];
    paymentAmount = json['payment_amount'];
    donorResponse = json['donor_response'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  num? id;
  num? requestBy;
  String? patientName;
  String? patientProblem;
  String? age;
  String? gender;
  String? bloodGroup;
  String? bloodQuantity;
  String? date;
  dynamic time;
  String? divisionId;
  String? districtId;
  String? hospitalName;
  String? contactNumber;
  String? requestType;
  String? description;
  num? status;
  dynamic paymentStatus;
  String? paymentAmount;
  dynamic donorResponse;
  dynamic createdBy;
  dynamic updatedBy;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['request_by'] = requestBy;
    map['patient_name'] = patientName;
    map['patient_problem'] = patientProblem;
    map['age'] = age;
    map['gender'] = gender;
    map['blood_group'] = bloodGroup;
    map['blood_quantity'] = bloodQuantity;
    map['date'] = date;
    map['time'] = time;
    map['division_id'] = divisionId;
    map['district_id'] = districtId;
    map['hospital_name'] = hospitalName;
    map['contact_number'] = contactNumber;
    map['request_type'] = requestType;
    map['description'] = description;
    map['status'] = status;
    map['payment_status'] = paymentStatus;
    map['payment_amount'] = paymentAmount;
    map['donor_response'] = donorResponse;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}

class Donor {
  Donor({
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

  Donor.fromJson(dynamic json) {
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
  dynamic lastDonateDate;
  String? firstName;
  String? lastName;
  String? email;
  String? mobile;
  String? userId;
  String? password;
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
  String? address;
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
  dynamic createdBy;
  dynamic updatedBy;
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
