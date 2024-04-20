import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Weather Forecast",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue[200],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter City Name",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Pushkin 154, Taraz',
                style: TextStyle(color: Colors.grey[700], fontSize: 24.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Friday, April 19, 2024',
                style: TextStyle(color: Colors.blue[900], fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny,
                    size: 100.0,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: <Widget>[
                      Text(
                        '14°F',
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        'LIGHT SNOW',
                        style: TextStyle(color: Colors.grey, fontSize: 25.0),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.ac_unit, size: 50.0, color: Colors.blue[900]),
                      Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        'km/hr',
                        style:
                            TextStyle(color: Colors.blue[900], fontSize: 24.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: <Widget>[
                      Icon(Icons.ac_unit, size: 50.0, color: Colors.blue[900]),
                      Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        '%',
                        style:
                            TextStyle(color: Colors.blue[900], fontSize: 24.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: <Widget>[
                      Icon(Icons.ac_unit, size: 50.0, color: Colors.blue[900]),
                      Text(
                        '20',
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        '%',
                        style:
                            TextStyle(color: Colors.blue[900], fontSize: 24.0),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                '7 Day Weather Forecast',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              _buildWeatherForecastCards(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherForecastCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildWeatherForecastCard1(),
        _buildWeatherForecastCard2(),
        _buildWeatherForecastCard3(),
      ],
    );
  }

  Widget _buildWeatherForecastCard1() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // All corners are circular
      ),
      margin: EdgeInsets.only(left: 10, right: 5),
      width: 150,
      height: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Friday"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '6°F',
                style: TextStyle(
                  color: Colors.blue[200],
                ), // Change color to blue[200]
              ),
              Icon(
                Icons.wb_sunny,
                color: Colors.yellow,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildWeatherForecastCard2() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // All corners are circular
      ),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 150,
      height: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Saturday"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '5°F',
                style: TextStyle(
                  color: Colors.blue[200],
                ), // Change color to blue[200]
              ),
              Icon(
                Icons.wb_cloudy,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildWeatherForecastCard3() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // All corners are circular
      ),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 150,
      height: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sunday"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '3°F',
                style: TextStyle(
                  color: Colors.blue[200],
                ), // Change color to blue[200]
              ),
              Icon(
                Icons.wb_cloudy,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
