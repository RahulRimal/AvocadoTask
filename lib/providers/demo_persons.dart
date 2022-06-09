import 'package:flutter/cupertino.dart';

import '../data/demo_person_api.dart';
import '../models/api_status.dart';
import '../models/demo_person.dart';

class DemoPersons with ChangeNotifier
{
  List<DemoPerson> _people = [
   
  ];

  DemoPersonError? _personError;

  
  // getter
  List<DemoPerson> get getPeople {
    return [..._people];
  }

  // Setter
  setPeople(List<DemoPerson> newPeople) {
    _people = newPeople;
    notifyListeners();
  }

  setPerson(DemoPerson newPerson)
  {
    _people.add(newPerson);
    // notifyListeners();
  }

  // Set prescription error
  setPersonError(DemoPersonError personError) {
    _personError = personError;
    notifyListeners();
  }

  getPerson() async {
    
    var response = await DemoPersonApi.getDemoPerson();

    if (response is Success) {
      setPerson(response.response as DemoPerson);
    }
    if (response is Failure) {
      DemoPersonError personError = DemoPersonError(
        code: response.code,
        message: response.errorResponse,
      );
      setPersonError(personError);
    }
    // notifyListeners();
  }

}