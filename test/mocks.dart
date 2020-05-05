import 'package:mockito/mockito.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius/data/api_client.dart';
import 'package:sirius/model/app_state.dart';

class StoreMock extends Mock implements Store<AppState> {}

class ApiClientMock extends Mock implements ApiClient {}

class SharedPreferencesMock extends Mock implements SharedPreferences {}
