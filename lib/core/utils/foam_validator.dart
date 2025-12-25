import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

String? Function(String?) requiredValidator(BuildContext context) {
  return FormBuilderValidators.required();
}

String? Function(String?) numericValidator(BuildContext context) {
  return FormBuilderValidators.numeric(
      errorText: "Please enter a Numeric value");
}

String? passwordValidator(String? value, BuildContext context) {
  final String? requiredValidation = requiredValidator(context)(value);
  if (requiredValidation != null) {
    return requiredValidation;
  }

  final bool hasUppercase = RegExp(r'[A-Z]').hasMatch(value ?? '');
  if (!hasUppercase) {
    return "Password must contain at least one uppercase letter";
  }

  // Regular expression for lowercase letter
  final bool hasLowercase = RegExp(r'[a-z]').hasMatch(value ?? '');
  if (!hasLowercase) {
    return "Password must contain at least one lowercase letter";
  }

  // Regular expression for special character
  final bool hasSpecialCharacter =
      RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value ?? '');
  if (!hasSpecialCharacter) {
    return "Password must contain at least one special character";
  }

  // Check for minimum length
  if (value != null && value.length < 8) {
    return "Password must be at least 8 characters long";
  }

  return null;
}

String? emailValidator(String? value, BuildContext context) {
  final String? requiredValidation = requiredValidator(context)(value);
  if (requiredValidation != null) {
    return requiredValidation;
  }

  final String? emailValidation = FormBuilderValidators.email(
      errorText: "Please enter a valid email")(value);
  if (emailValidation != null) {
    return emailValidation;
  }

  return null;
}

String? projectNameValidator(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return "Please enter the name of your project (min 10 characters)";
  } else if (value.length < 10) {
    return "Please enter the name of your project (min 10 characters)";
  }

  final String? requiredValidation = requiredValidator(context)(value);
  if (requiredValidation != null) {
    return requiredValidation;
  }

  return null;
}

String? projectDescriptionValidator(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return "Please enter the description of project ";
  }

  final String? requiredValidation = requiredValidator(context)(value);
  if (requiredValidation != null) {
    return requiredValidation;
  }

  return null;
}

String? validateAdBudget(String? value) {
  if (value == null || value.isEmpty) {
    return 'Budget is required';
  }

  final double? budget = double.tryParse(value);

  if (budget == null) {
    return 'Please enter a valid number';
  }

  if (budget < 20 || budget > 10000) {
    return 'Budget should be between 20 USD and less than 10,000 USD';
  }

  return null;
}

String? customMaxCharacterValidator(
    String? value, int limit, BuildContext context) {
  if (value == null || value.isEmpty) {
    return "This field cannot be empty.";
  }
  if (value.length > limit) {
    return "The input must not exceed $limit characters";
  }
  return null;
}

String? customUrlValidator(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return "This field cannot be empty.";
  }

  final RegExp urlPattern = RegExp(r'^(https?:\/\/)?'
      r'([\w\-]+\.)+[a-zA-Z]{2,}'
      r'(\/[^\s]*)?$');

  if (!urlPattern.hasMatch(value)) {
    return "Please enter a valid URL";
  }

  return null;
}

String? customValidator(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return "This field cannot be empty.";
  }
  return null;
}

String? customEndDateValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "End Date must be after \nstart date.";
  }
  return null;
}

String? customEndTimeValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "End time must be after \nstart time.";
  }
  return null;
}

String? customStartTimeValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "Start time must be before \nend time.";
  }
  return null;
}
