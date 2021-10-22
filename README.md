# Weather App ⛅
**HomeScreen is not fully completed. Also database is not implemented - there is a mock instead for now.*

This is a weather application based on the ios weather app. Great design makes this application look and feel great. User can firstly checkout the weather for his current location with the forcast up to 24 hours. Then there is an option to find any city in the world and display its current weather and its forecast. Every city that was checked out by the user is saved into the memory that is displayed as a list on one of the screens. List of cities is provided with basic current weather information. User can choose one of the cities from the list to check its current weather with more information, and its weather forecast.


https://user-images.githubusercontent.com/55239853/138523722-54ed2ca8-48b5-4ef1-a8a7-03dccf7f680b.mp4


# Features ⚙️ 

- Beautiful UI,
- The application uses Bloc State managment,
- Use of a Hydrated Bloc for loading the last checked out cities in order to not show the loading screen,
- Autocomplete in the textfield with highlighted letters that match the query and city name,
- Option to remove a city from the saved list,
- Weather is fethed mostly in the background, so that user isn't stuck at the loading screen,
- Connecting to the external API,
- Working with JSON rensponse.




