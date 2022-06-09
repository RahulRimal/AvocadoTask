import 'package:avocado_flutter_task/models/prescription.dart';
import 'package:flutter/material.dart';

class Prescriptions with ChangeNotifier
{

  List<Prescription> prescriptions = [
    Prescription(
      id: 1,
      patientName: "Samyam Bahadur BC",
      prescriptionTitle: "High Fever & Cough",
      prescriptionDetails: "Nothing to worry",
      // prescriptionDate: "2022/02/28",
      prescriptionDate: DateTime(2022, 02, 28),
      docSignature: "7845448545444444",
      consultationTime: "10:30"
    ),
    Prescription(
      id: 1,
      patientName: "Rahul Rimal",
      prescriptionTitle: "Common Cold",
      prescriptionDetails: "Prescription consultation",
      prescriptionDate: DateTime(2022, 01, 21),
      docSignature: "7844555644444",
      consultationTime: "07:30"
    ),

    Prescription(
      id: 1,
      patientName: "Surendra Mainali",
      prescriptionTitle: "Covid-19",
      prescriptionDetails: "Sever Case",
      prescriptionDate: DateTime(2021, 11, 02),
      docSignature: "7844555644444",
      consultationTime: "07:30"
    ),
  ];

  PrescriptionError? _prescriptionError;

  
  // getter
  List<Prescription> get getPrescriptions {
    return [...prescriptions];
  }

  // Setter
  setPrescriptions(List<Prescription> newPrescriptions) {
    prescriptions = newPrescriptions;
    notifyListeners();
  }

  // Set prescription error
  setPrescriptionError(PrescriptionError prescriptionError) {
    _prescriptionError = prescriptionError;
    notifyListeners();
  }


}