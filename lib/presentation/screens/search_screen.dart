import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app_bloc/business_logic/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_bloc/business_logic/cubits/favorite_cities_cubit/favorite_cities_cubit.dart';
import 'package:weather_app_bloc/data/data_providers/city_names_provider.dart';
import 'package:weather_app_bloc/data/models/city_suggestion.dart';

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
    return Scaffold(
      backgroundColor: Colors.black, //Color(0xFF464660),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle
            .light, // this makes status bar text color black
        backgroundColor: Colors.black, //Color(0xFF464660),
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              color: Color(0xFF2B2B2B),
              child: Form(
                key: this._formKey,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 8, right: 15, left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Which city you want to check?'),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: TypeAheadFormField<CitySuggestion>(
                              key: ValueKey('TextField'),
                              suggestionsBoxVerticalOffset: 15,
                              suggestionsBoxDecoration:
                                  SuggestionsBoxDecoration(
                                      color: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      elevation: 0,
                                      offsetX: 30),
                              textFieldConfiguration: TextFieldConfiguration(
                                cursorColor: Colors.white70,
                                controller: this._typeAheadController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.circular(12)),
                                  contentPadding: EdgeInsets.only(),
                                  filled: true,
                                  fillColor: Colors.grey[800],
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 4, left: 10),
                                    child: Icon(
                                      Icons.search,
                                      size: 22,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  hintText: 'Search',
                                  // labelText: 'City',
                                ),
                              ),
                              suggestionsCallback: (pattern) {
                                return cityService
                                    .getSuggestions(pattern.trim());
                              },
                              itemBuilder: (context, suggestion) {
                                return ListTile(
                                  title: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: suggestion.text1,
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey[500],
                                          )),
                                      TextSpan(
                                          text: suggestion.text2,
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                          )),
                                      TextSpan(
                                          text: suggestion.text3,
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey[500],
                                          )),
                                    ]),
                                  ),
                                );
                              },
                              transitionBuilder:
                                  (context, suggestionsBox, controller) {
                                return suggestionsBox;
                              },
                              onSuggestionSelected:
                                  (CitySuggestion suggestion) {
                                final String cityName = suggestion.text1 +
                                    suggestion.text2 +
                                    suggestion.text3;
                                this._typeAheadController.text = cityName;
                                BlocProvider.of<WeatherBloc>(context).add(
                                    CityWeatherRequested(cityName: cityName));
                                BlocProvider.of<FavoriteCitiesCubit>(context)
                                    .addCityToFavorite(cityName);
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
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: MaterialButton(
                                key: ValueKey('cancelButton'),
                                child: Text('Cancel'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              color: Colors.grey[600],
            ),
            Expanded(
              child: Container(
                color: Color(0xFF171010),
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
