// Mocks generated by Mockito 5.0.11 from annotations
// in bewell_pro_core/test/unit_tests/application/core/services/helpers_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;

import 'package:dart_fcm/src/fcm.dart' as _i3;
import 'package:dart_fcm/src/reminder_notification.dart' as _i8;
import 'package:dart_fcm/src/setup_on_message.dart' as _i11;
import 'package:firebase_messaging/firebase_messaging.dart' as _i12;
import 'package:firebase_messaging_platform_interface/src/notification_settings.dart'
    as _i6;
import 'package:flutter/src/widgets/framework.dart' as _i10;
import 'package:flutter_local_notifications/src/platform_specifics/android/notification_channel.dart'
    as _i7;
import 'package:flutter_local_notifications/src/platform_specifics/ios/initialization_settings.dart'
    as _i4;
import 'package:flutter_local_notifications/src/platform_specifics/macos/initialization_settings.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rxdart/src/subjects/behavior_subject.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeBehaviorSubject<T> extends _i1.Fake
    implements _i2.BehaviorSubject<T> {}

class _FakeSILFCM extends _i1.Fake implements _i3.SILFCM {}

class _FakeIOSInitializationSettings extends _i1.Fake
    implements _i4.IOSInitializationSettings {}

class _FakeMacOSInitializationSettings extends _i1.Fake
    implements _i5.MacOSInitializationSettings {}

class _FakeNotificationSettings extends _i1.Fake
    implements _i6.NotificationSettings {}

/// A class which mocks [SILFCM].
///
/// See the documentation for Mockito's code generation for more information.
class MockSILFCM extends _i1.Mock implements _i3.SILFCM {
  MockSILFCM() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set androidChannel(_i7.AndroidNotificationChannel? _androidChannel) =>
      super.noSuchMethod(Invocation.setter(#androidChannel, _androidChannel),
          returnValueForMissingStub: null);
  @override
  _i2.BehaviorSubject<_i8.ReminderNotification>
      get didReceiveLocalNotificationSubject => (super.noSuchMethod(
              Invocation.getter(#didReceiveLocalNotificationSubject),
              returnValue: _FakeBehaviorSubject<_i8.ReminderNotification>())
          as _i2.BehaviorSubject<_i8.ReminderNotification>);
  @override
  _i2.BehaviorSubject<String> get selectNotificationSubject =>
      (super.noSuchMethod(Invocation.getter(#selectNotificationSubject),
              returnValue: _FakeBehaviorSubject<String>())
          as _i2.BehaviorSubject<String>);
  @override
  _i9.Future<_i3.SILFCM> configure(
          {_i10.BuildContext? context, _i11.OnMessageCallback? callback}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #configure, [], {#context: context, #callback: callback}),
              returnValue: Future<_i3.SILFCM>.value(_FakeSILFCM()))
          as _i9.Future<_i3.SILFCM>);
  @override
  _i9.Future<void> listenOnDeviceTokenChanges(dynamic graphQLClient) =>
      (super.noSuchMethod(
          Invocation.method(#listenOnDeviceTokenChanges, [graphQLClient]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> onMessageSetup<T extends _i12.FirebaseMessaging>(
          {_i10.BuildContext? context, _i11.OnMessageCallback? callback}) =>
      (super.noSuchMethod(
          Invocation.method(
              #onMessageSetup, [], {#context: context, #callback: callback}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> initializeLocalNotifications() =>
      (super.noSuchMethod(Invocation.method(#initializeLocalNotifications, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<bool> onNotificationSelected(String? payload) =>
      (super.noSuchMethod(Invocation.method(#onNotificationSelected, [payload]),
          returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i4.IOSInitializationSettings initializeIOSInitializationSettings() =>
      (super.noSuchMethod(
              Invocation.method(#initializeIOSInitializationSettings, []),
              returnValue: _FakeIOSInitializationSettings())
          as _i4.IOSInitializationSettings);
  @override
  _i5.MacOSInitializationSettings initializeMacOSInitializationSettings() =>
      (super.noSuchMethod(
              Invocation.method(#initializeMacOSInitializationSettings, []),
              returnValue: _FakeMacOSInitializationSettings())
          as _i5.MacOSInitializationSettings);
  @override
  _i9.Future<_i6.NotificationSettings> requestIOSFCMMessagingPermission() =>
      (super.noSuchMethod(
              Invocation.method(#requestIOSFCMMessagingPermission, []),
              returnValue: Future<_i6.NotificationSettings>.value(
                  _FakeNotificationSettings()))
          as _i9.Future<_i6.NotificationSettings>);
  @override
  _i9.Future<_i6.NotificationSettings> requestMacOSFCMMessagingPermission() =>
      (super.noSuchMethod(
              Invocation.method(#requestMacOSFCMMessagingPermission, []),
              returnValue: Future<_i6.NotificationSettings>.value(
                  _FakeNotificationSettings()))
          as _i9.Future<_i6.NotificationSettings>);
  @override
  _i9.Future<String?> getDeviceToken() =>
      (super.noSuchMethod(Invocation.method(#getDeviceToken, []),
          returnValue: Future<String?>.value()) as _i9.Future<String?>);
  @override
  _i9.Future<void> resetToken() =>
      (super.noSuchMethod(Invocation.method(#resetToken, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Stream<String> onDeviceTokenRefresh() =>
      (super.noSuchMethod(Invocation.method(#onDeviceTokenRefresh, []),
          returnValue: Stream<String>.empty()) as _i9.Stream<String>);
}
