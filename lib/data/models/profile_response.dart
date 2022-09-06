class ProfileResponse {
  ProfileResponse({
    required this.status,
    required this.code,
    required this.data,
  });
  late final String status;
  late final int code;
  late final Data data;
  
  ProfileResponse.fromJson(Map<String, dynamic> json){
    status = json['status'];
    code = json['code'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['code'] = code;
    map['data'] = data.toJson();
    return map;
  }
}

class Data {
  Data({
    required this.code,
    required this.firstName,
     this.lastName,
    required this.userName,
    required this.motherTongue,
    required this.dob,
    required this.doj,
    required this.gender,
     this.email,
    required this.phone,
     this.bloodGroup,
     this.religion,
     this.caste,
     this.subcaste,
    required this.maritalStatus,
    required this.maritalStatusId,
     this.jobType,
    required this.nationality,
     this.salarytype,
     this.designation,
     this.qualification,
     this.experiences,
     this.whatsappNo,
     this.landLineNo,
    required this.photo,
    required this.permanentAddress,
    required this.residentialAddress,
    required this.passportDetail,
    required this.busDetail,
    required this.bankDetail,
  });
  late final String code;
  late final String firstName;
  late final String? lastName;
  late final String userName;
  late final String motherTongue;
  late final String dob;
  late final String doj;
  late final String gender;
  late final String? email;
  late final String phone;
  late final String? bloodGroup;
  late final String? religion;
  late final String? caste;
  late final String? subcaste;
  late final String maritalStatus;
  late final int maritalStatusId;
  late final String? jobType;
  late final String nationality;
  late final String? salarytype;
  late final String? designation;
  late final String? qualification;
  late final String? experiences;
  late final String? whatsappNo;
  late final String? landLineNo;
  late final String photo;
  late final PermanentAddress permanentAddress;
  late final ResidentialAddress residentialAddress;
  late final List<dynamic> passportDetail;
  late final List<dynamic> busDetail;
  late final List<dynamic> bankDetail;
  
  Data.fromJson(Map<String, dynamic> json){
    code = json['code'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userName = json['user_name'];
    motherTongue = json['mother_tongue'];
    dob = json['dob'];
    doj = json['doj'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    bloodGroup = json['blood_group'];
    religion = json['religion'];
    caste = json['caste'];
    subcaste = json['subcaste'];
    maritalStatus = json['marital_status'];
    maritalStatusId = json['marital_status_id'];
    jobType = json['job_type'];
    nationality = json['nationality'];
    salarytype = json['salarytype'];
    designation = json['designation'];
    qualification = json['qualification'];
    experiences = json['experiences'];
    whatsappNo = json['whatsapp_no'];
    landLineNo = json['land_line_no'];
    photo = json['photo'];
    permanentAddress = PermanentAddress.fromJson(json['permanent_address']);
    residentialAddress = ResidentialAddress.fromJson(json['residential_address']);
    passportDetail = List.castFrom<dynamic, dynamic>(json['passport_detail']);
    busDetail = List.castFrom<dynamic, dynamic>(json['bus_detail']);
    bankDetail = List.castFrom<dynamic, dynamic>(json['bank_detail']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['user_name'] = userName;
    map['mother_tongue'] = motherTongue;
    map['dob'] = dob;
    map['doj'] = doj;
    map['gender'] = gender;
    map['email'] = email;
    map['phone'] = phone;
    map['blood_group'] = bloodGroup;
    map['religion'] = religion;
    map['caste'] = caste;
    map['subcaste'] = subcaste;
    map['marital_status'] = maritalStatus;
    map['marital_status_id'] = maritalStatusId;
    map['job_type'] = jobType;
    map['nationality'] = nationality;
    map['salarytype'] = salarytype;
    map['designation'] = designation;
    map['qualification'] = qualification;
    map['experiences'] = experiences;
    map['whatsapp_no'] = whatsappNo;
    map['land_line_no'] = landLineNo;
    map['photo'] = photo;
    map['permanent_address'] = permanentAddress.toJson();
    map['residential_address'] = residentialAddress.toJson();
    map['passport_detail'] = passportDetail;
    map['bus_detail'] = busDetail;
    map['bank_detail'] = bankDetail;
    return map;
  }
}

class PermanentAddress {
  PermanentAddress({
    required this.address,
     this.city,
    required this.country,
    required this.state,
    required this.countryId,
    required this.stateId,
     this.pinCode,
  });
  late final String address;
  late final String? city;
  late final String country;
  late final String state;
  late final int countryId;
  late final int stateId;
  late final String? pinCode;
  
  PermanentAddress.fromJson(Map<String, dynamic> json){
    address = json['address'];
    city = json['city'];
    country = json['country'];
    state = json['state'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    pinCode = json['pin_code'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['city'] = city;
    map['country'] = country;
    map['state'] = state;
    map['country_id'] = countryId;
    map['state_id'] = stateId;
    map['pin_code'] = pinCode;
    return map;
  }
}

class ResidentialAddress {
  ResidentialAddress({
    required this.address,
     this.city,
    required this.country,
    required this.state,
    required this.countryId,
    required this.stateId,
     this.pinCode,
  });
  late final String address;
  late final String? city;
  late final String country;
  late final String state;
  late final int countryId;
  late final int stateId;
  late final String? pinCode;
  
  ResidentialAddress.fromJson(Map<String, dynamic> json){
    address = json['address'];
    city = json['city'];
    country = json['country'];
    state = json['state'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    pinCode = json['pin_code'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['city'] = city;
    map['country'] = country;
    map['state'] = state;
    map['country_id'] = countryId;
    map['state_id'] = stateId;
    map['pin_code'] = pinCode;
    return map;
  }
}