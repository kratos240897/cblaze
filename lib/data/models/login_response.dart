class LoginResponse {
  LoginResponse({
    required this.status,
    required this.code,
    required this.data,
  });
  late final String status;
  late final int code;
  late final Data data;
  
  LoginResponse.fromJson(Map<String, dynamic> json){
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
    required this.token,
    required this.id,
    required this.uuid,
    required this.code,
     this.email,
    required this.username,
    required this.phone,
    required this.photo,
    required this.tokenType,
    required this.message,
    required this.expiresAt,
    required this.academicId,
    required this.settings,
  });
  late final String token;
  late final int id;
  late final String uuid;
  late final String code;
  late final String? email;
  late final String username;
  late final String phone;
  late final String photo;
  late final String tokenType;
  late final String message;
  late final String expiresAt;
  late final int academicId;
  late final Settings settings;
  
  Data.fromJson(Map<String, dynamic> json){
    token = json['token'];
    id = json['id'];
    uuid = json['uuid'];
    code = json['code'];
    email = json['email'];
    username = json['username'];
    phone = json['phone'];
    photo = json['photo'];
    tokenType = json['token_type'];
    message = json['message'];
    expiresAt = json['expires_at'];
    academicId = json['academic_id'];
    settings = Settings.fromJson(json['settings']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['id'] = id;
    map['uuid'] = uuid;
    map['code'] = code;
    map['email'] = email;
    map['username'] = username;
    map['phone'] = phone;
    map['photo'] = photo;
    map['token_type'] = tokenType;
    map['message'] = message;
    map['expires_at'] = expiresAt;
    map['academic_id'] = academicId;
    map['settings'] = settings.toJson();
    return map;
  }
}

class Settings {
  Settings({
    required this.staffHomeworkApprovalType,
    required this.classTeacherHomeworkApprovalType,
    required this.staffClassTestApprovalType,
    required this.classClassTestApprovalType,
    required this.payrollMenuType,
  });
  late final int staffHomeworkApprovalType;
  late final int classTeacherHomeworkApprovalType;
  late final int staffClassTestApprovalType;
  late final int classClassTestApprovalType;
  late final int payrollMenuType;
  
  Settings.fromJson(Map<String, dynamic> json){
    staffHomeworkApprovalType = json['staff_homework_approval_type'];
    classTeacherHomeworkApprovalType = json['class_teacher_homework_approval_type'];
    staffClassTestApprovalType = json['staff_class_test_approval_type'];
    classClassTestApprovalType = json['class_class_test_approval_type'];
    payrollMenuType = json['payroll_menu_type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['staff_homework_approval_type'] = staffHomeworkApprovalType;
    data['class_teacher_homework_approval_type'] = classTeacherHomeworkApprovalType;
    data['staff_class_test_approval_type'] = staffClassTestApprovalType;
    data['class_class_test_approval_type'] = classClassTestApprovalType;
    data['payroll_menu_type'] = payrollMenuType;
    return data;
  }
}