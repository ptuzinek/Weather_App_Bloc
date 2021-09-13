import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/data/constants/city_names.dart';
import 'package:weather_app_bloc/data/models/city.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();
  final CityService cityService = CityService();
  String _selectedCity = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Form(
        key: this._formKey,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Text('What is your favorite city?'),
              TypeAheadFormField<City>(
                textFieldConfiguration: TextFieldConfiguration(
                    controller: this._typeAheadController,
                    decoration: InputDecoration(labelText: 'City')),
                suggestionsCallback: (pattern) {
                  return cityService.getSuggestions(pattern.trim());
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    //title: Text(suggestion),
                    title: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: suggestion.text1,
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: suggestion.text2,
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: suggestion.text3,
                            style: TextStyle(color: Colors.grey)),
                      ]),
                    ),
                  );
                },
                transitionBuilder: (context, suggestionsBox, controller) {
                  return suggestionsBox;
                },
                onSuggestionSelected: (City suggestion) {
                  this._typeAheadController.text =
                      suggestion.text1 + suggestion.text2 + suggestion.text3;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please select a city';
                  }
                },
                onSaved: (value) => this._selectedCity = value!,
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                child: Text('Submit'),
                onPressed: () {
                  if (this._formKey.currentState!.validate()) {
                    this._formKey.currentState!.save();
                  }
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
