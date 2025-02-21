import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:registration/login/model/login_req.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final log = Logger();

  LoginBloc() : super(LoginState.initial) {
    on<InitializeLogin>(_onInitializeLoginToState);
    on<OnChangeFormValue>(_onChangeFormValue);
    on<SubmitLogin>(_onSubmitLogin);
  }

  Future<void> _onInitializeLoginToState(
    InitializeLogin event,
    Emitter<LoginState> emit,
  ) async {
    try {
      log.d('LoginBloc :: _onInitializeLoginToState :: Event: $event');
      emit(state.copyWith(status: LoginStatus.loading));
      emit(state.copyWith(status: LoginStatus.loaded));
    } catch (error) {
      log.e('LoginBloc::_onInitializeLoginToState::Error: $error');
      emit(state.copyWith(
        status: LoginStatus.failure,
        message: error.toString(),
      ));
    }
  }

  void _onChangeFormValue(OnChangeFormValue event, Emitter<LoginState> emit) {
    log.d("LoginPageBloc::_onChangeFormValue::formValues:${event.formValues}");
    emit(state.copyWith(status: LoginStatus.changing));
    LoginReqModel loginReqModel = LoginReqModel.fromMap(event.formValues);
    emit(state.copyWith(
        status: LoginStatus.changed, loginReqModel: loginReqModel));
  }

  Future<void> _onSubmitLogin(
    SubmitLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      log.d("LoginPageBloc::_onSubmitLogin::$event");
      await Future.delayed(const Duration(seconds: 1));
      if (state.loginReqModel?.email == "jesi@gmail.com" &&
          state.loginReqModel?.password == "password") {
        emit(state.copyWith(
            status: LoginStatus.success, message: "Login Successfull."));
      } else {
        emit(state.copyWith(
            status: LoginStatus.failure, message: "Invalid Email or Password"));
      }
    } catch (error) {
      log.e('LoginPageBloc::_onSubmitLogin::Error: $error');
      emit(state.copyWith(
        status: LoginStatus.failure,
        message: error.toString(),
      ));
    }
  }
}
