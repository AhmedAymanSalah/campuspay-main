class GetDetailsRequestModel {
  String? fullName;
  String? fatherName;
  bool? fatherIsDead;
  String? fatherIncome;
  String? fatherJob;
  String? fatherState;
  bool? isResidentInFamilyHome;
  int? numberOfFamilyMembers;
  int? numberOfFamilyMembersInEdu;
  int? squadYear;
  String? collegeName;
  // ignore: unnecessary_question_mark
  String? dateOfBirth;
  double? cost;
  String? city;
  String? state;

  GetDetailsRequestModel(
      {this.fullName,
        this.fatherName,
        this.fatherIsDead,
        this.fatherIncome,
        this.fatherJob,
        this.fatherState,
        this.isResidentInFamilyHome,
        this.numberOfFamilyMembers,
        this.numberOfFamilyMembersInEdu,
        this.squadYear,
        this.collegeName,
        this.dateOfBirth,
        this.cost,
        this.city,
        this.state});

  GetDetailsRequestModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    fatherName = json['fatherName'];
    fatherIsDead = json['fatherIsDead'];
    fatherIncome = json['fatherIncome'];
    fatherJob = json['fatherJob'];
    fatherState = json['fatherState'];
    isResidentInFamilyHome = json['isResidentInFamilyHome'];
    numberOfFamilyMembers = json['numberOfFamilyMembers'];
    numberOfFamilyMembersInEdu = json['numberOfFamilyMembersInEdu'];
    squadYear = json['squad_Year'];
    collegeName = json['college_Name'];
    dateOfBirth = json['dateOfBirth'];
    cost = json['cost'];
    city = json['city'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['fatherName'] = this.fatherName;
    data['fatherIsDead'] = this.fatherIsDead;
    data['fatherIncome'] = this.fatherIncome;
    data['fatherJob'] = this.fatherJob;
    data['fatherState'] = this.fatherState;
    data['isResidentInFamilyHome'] = this.isResidentInFamilyHome;
    data['numberOfFamilyMembers'] = this.numberOfFamilyMembers;
    data['numberOfFamilyMembersInEdu'] = this.numberOfFamilyMembersInEdu;
    data['squad_Year'] = this.squadYear;
    data['college_Name'] = this.collegeName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['cost'] = this.cost;
    data['city'] = this.city;
    data['state'] = this.state;
    return data;
  }
}
