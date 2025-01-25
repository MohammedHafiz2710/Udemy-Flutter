

class WeatherStates {}

class NoWeatherStates extends WeatherStates {}

class WeatherLoadedStates extends WeatherStates {
  WeatherLoadedStates();
}

class WeatherFailureStates extends WeatherStates {
  final String error;
  WeatherFailureStates(this.error);
}
