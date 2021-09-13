import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/data/data_providers/city_names_provider.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Form(
        key: this._formKey,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Which city you want to check?'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: TypeAheadFormField<City>(
                      textFieldConfiguration: TextFieldConfiguration(
                          controller: this._typeAheadController,
                          decoration: InputDecoration(labelText: 'City')),
                      suggestionsCallback: (pattern) {
                        return cityService.getSuggestions(pattern.trim());
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
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
                        final String cityName = suggestion.text1 +
                            suggestion.text2 +
                            suggestion.text3;
                        this._typeAheadController.text = cityName;
                        BlocProvider.of<WeatherBloc>(context)
                            .add(CityWeatherRequested(cityName: cityName));
                        Navigator.pop(context);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please select a city';
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Flexible(
                    child: MaterialButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text('Cancel'),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
