import 'dart:convert';

import 'package:async_redux/async_redux.dart';
import 'package:domain_objects/entities.dart';
import 'package:domain_objects/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bewell_pro_core/application/redux/actions/misc_state_actions/save_event_action.dart';
import 'package:bewell_pro_core/application/redux/actions/misc_state_actions/send_event_action.dart';
import 'package:bewell_pro_core/application/redux/actions/user_state_actions/batch_update_user_state_action.dart';
import 'package:bewell_pro_core/application/redux/states/app_state.dart';
import 'package:http/http.dart';

import '../../../../mocks/mocks.dart';
import '../../../../mocks/test_helpers.dart';

void main() {
  testWidgets(
    'should retry sending an event after a period of time',
    (WidgetTester tester) async {
      await tester.runAsync(() async {
        final StoreTester<AppState> storeTester = createStoreTester();

        final MockShortSILGraphQlClient client =
            MockShortSILGraphQlClient.withResponse(
          'idToken',
          'endpoint',
          Response(
              json.encode(
                <String, dynamic>{
                  'data': <String, bool>{'processEvent': false}
                },
              ),
              200),
        );

        storeTester.dispatch(BatchUpdateUserStateAction(
            auth: AuthCredentialResponse(uid: 'some-uid')));

        final TestInfo<AppState> info =
            await storeTester.waitUntil(BatchUpdateUserStateAction);

        expect(info.state.userState!.auth!.uid, 'some-uid');
        expect(info.dispatchCount, 1);

        storeTester.dispatch(
          SendEventAction(
            client: client,
            eventName: 'some event',
            retryPeriod: 2,
            eventPayload: <String, dynamic>{'eventData': 'some data'},
          ),
        );

        final TestInfoList<AppState> sendEventInfo =
            await storeTester.waitAll(<Type>[SendEventAction, SaveEventAction]);

        expect(sendEventInfo, isNotEmpty);
        expect(
            storeTester.state.miscState!.eventState!.eventName, 'some event');

        await tester.pump(const Duration(seconds: 5));

        final TestInfoList<AppState> resendEventInfo =
            await storeTester.waitAll(<Type>[SendEventAction, SaveEventAction]);
        expect(resendEventInfo, isNotEmpty);
      });
    },
  );

  testWidgets(
    'should fail to send an event when retrying if it is not in state',
    (WidgetTester tester) async {
      await tester.runAsync(() async {
        final StoreTester<AppState> storeTester = createStoreTester();

        final MockShortSILGraphQlClient client =
            MockShortSILGraphQlClient.withResponse(
          'idToken',
          'endpoint',
          Response(
              json.encode(
                <String, dynamic>{
                  'data': <String, bool>{'processEvent': false}
                },
              ),
              200),
        );

        storeTester.dispatch(BatchUpdateUserStateAction(
            auth: AuthCredentialResponse(uid: 'some-uid')));

        final TestInfo<AppState> info =
            await storeTester.waitUntil(BatchUpdateUserStateAction);

        expect(info.state.userState!.auth!.uid, 'some-uid');
        expect(info.dispatchCount, 1);

        storeTester.dispatch(
          SendEventAction(
            client: client,
            eventName: 'some event',
            retryPeriod: 2,
            eventPayload: <String, dynamic>{'eventData': 'some data'},
          ),
        );

        final TestInfoList<AppState> sendEventInfo =
            await storeTester.waitAll(<Type>[SendEventAction, SaveEventAction]);

        expect(sendEventInfo, isNotEmpty);
        expect(
            storeTester.state.miscState!.eventState!.eventName, 'some event');

        storeTester.dispatch(
            SaveEventAction(eventName: UNKNOWN, eventPayload: UNKNOWN));

        final TestInfo<AppState> saveInfo =
            await storeTester.waitUntil(SaveEventAction);

        expect(saveInfo.dispatchCount, 4);

        await tester.pump(const Duration(seconds: 5));
      });
    },
  );
}
