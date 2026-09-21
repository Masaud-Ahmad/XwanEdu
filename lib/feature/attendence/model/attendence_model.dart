class AttendanceModel {
  final String name;
  final String rollNumber;
  bool isPresent;

  AttendanceModel({
    required this.name,
    required this.rollNumber,
    this.isPresent = true,
  });
}
