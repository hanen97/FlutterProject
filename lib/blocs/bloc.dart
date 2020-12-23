import 'dart:async';
import 'validators.dart';
class Bloc extends Object with Validator{
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();


  //set data
  Function(String) get changeEmail=>_emailController.sink.add;
  Function(String) get changePassword=>_passwordController.sink.add;
  
  
  //get Data
  Stream<String>  get email=>_emailController.stream.transform(validateEmail);
  Stream<String>  get password=>_passwordController.stream.transform(validatePassword);

 dispose(){
   _emailController.close();
   _passwordController.close();

 }
}

//final bloc=Bloc();