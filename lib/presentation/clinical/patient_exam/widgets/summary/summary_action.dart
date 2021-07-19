import 'dart:async';

import 'package:app_wrapper/app_wrapper.dart';
import 'package:async_redux/async_redux.dart';
import 'package:domain_objects/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_client/graph_utils.dart';
import 'package:bewell_pro_core/application/redux/flags/flags.dart';
import 'package:bewell_pro_core/application/redux/states/app_state.dart';

class SummaryAction extends ReduxAction<AppState> {
  SummaryAction({
    this.doctorsEmail,
    this.phoneNumber,
    required this.disabled,
    required this.context,
  });

  final String? doctorsEmail;
  final String? phoneNumber;
  final bool disabled;
  final BuildContext context;

  @override
  void before() {
    // show a loading indicator
    dispatch(WaitAction<AppState>.add(summaryExamFlag));
  }

  @override
  Future<AppState?> reduce() async {
    if (!disabled) {
      final String phoneNumber = StoreProvider.state<AppState>(context)!
          .userState!
          .userProfile!
          .primaryPhoneNumber!
          .getValue();

      await SILGraphQlUtils().sendOtp(
        client: AppWrapperBase.of(context)!.graphQLClient,
        phoneNumber: phoneNumber,
        email: doctorsEmail == UNKNOWNEMAIL ? null : doctorsEmail,
        logTitle: 'Exam summary : send OTP',
      );
    }

    return null;
  }

  @override
  void after() {
    // remove the loading indicator
    dispatch(WaitAction<AppState>.remove(summaryExamFlag));
  }
}
