
import 'dart:convert';

Prescription prescriptionFromJson(String str) => Prescription.fromJson(json.decode(str));

String prescriptionToJson(Prescription data) => json.encode(data.toJson());


class Prescription
{
  int id;
  String patientName;
  String prescriptionTitle;
  String prescriptionDetails;
  DateTime prescriptionDate;
  String docSignature;
  String consultationTime;

  Prescription({required this.id, required this.patientName, required this.prescriptionTitle, required this.prescriptionDetails, required this.prescriptionDate, required this.docSignature, required this.consultationTime});


  factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
    id: json["id"],
    patientName: json["patientName"],
    prescriptionTitle: json["prescriptionTitle"],
    prescriptionDetails: json["prescriptionDetails"],
    prescriptionDate: json["prescriptionDate"],
    docSignature: json["docSignature"],
    consultationTime: json["consultationTime"],
  );


  Map<String, dynamic> toJson() => {
    "id": id,
    "patientName": patientName,
    "prescriptionTitle": prescriptionTitle,
    "prescriptionDetails": prescriptionDetails,
    "prescriptionDate": prescriptionDate,
    "docSignature": docSignature,
    "consultationTime": consultationTime,
  };

}

class PrescriptionError {
  int code;
  Object message;

  PrescriptionError({required this.code, required this.message});
}

