import 'package:counter_app_mvc/Features/Counter/counter_model.dart';

class CounterController {
  late CounterModel _model;
  CounterController(){
    _model = CounterModel();
  }


  CounterModel get model => _model;
}
