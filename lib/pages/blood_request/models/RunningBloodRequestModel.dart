class RunningBloodRequestModel {
  RunningBloodRequestModel({
    this.message,
    this.requestList,
  });

  RunningBloodRequestModel.fromJson(dynamic json) {
    message = json['message'];
    if (json['requestList'] != null) {
      requestList = [];
      json['requestList'].forEach((v) {
        requestList?.add(RunningRequestList.fromJson(v));
      });
    }
  }

  String? message;
  List<RunningRequestList>? requestList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (requestList != null) {
      map['requestList'] = requestList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class RunningRequestList {
  RunningRequestList({
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

  RunningRequestList.fromJson(dynamic json) {
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
  String? time;
  String? divisionId;
  String? districtId;
  String? hospitalName;
  String? contactNumber;
  String? requestType;
  String? description;
  num? status;
  String? paymentStatus;
  String? paymentAmount;
  var donorResponse;
  num? createdBy;
  num? updatedBy;
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
