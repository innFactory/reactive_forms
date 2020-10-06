// Copyright 2020 Joan Pablo Jiménez Milian. All rights reserved.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.

import 'package:reactive_forms/reactive_forms.dart';

/// Validator that validates if control's value is a numeric value.
class NumberValidator extends Validator<dynamic> {
  /// The regex expression of a numeric string value.
  static final RegExp numberRegex = new RegExp(r'^-?[0-9]+$');

  @override
  Map<String, dynamic> validate(AbstractControl<dynamic> control) {
    return (control.value == null) ||
            !(numberRegex.hasMatch(control.value.toString()))
        ? {ValidationMessage.number: true}
        : null;
  }
}
