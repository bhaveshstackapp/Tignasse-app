
String validateName(String value) {
  if (value == null || value.isEmpty) {
    return 'First name empty';
  } else if (value.length < 3) {
    return 'Min 3 charactor';
  } else
    return null;
}

String validateLast(String value) {
  if (value == null || value.isEmpty) {
    return 'Last name empty';
  } else if (value.length < 3) {
    return 'Min 3 charactor';
  } else
    return null;
}

String validateCompany(String value) {
  if (value == null || value.isEmpty) {
    return 'Compant name empty';
  } else if (value.length < 3) {
    return 'Min 3 charactor';
  } else
    return null;
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value == null || value.isEmpty) {
    return 'Email is empty';
  } else if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}

String validatePassword(String value) {
  if (value == null || value.isEmpty) {
    return 'Password is empty';
  } else if (value.length < 3)
    return 'Password must be more than 2 charater';
  else
    return null;
}


