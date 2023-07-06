import 'package:flutter/material.dart';
import 'package:mobilebankingapp/Screens/home.dart';
import 'package:mobilebankingapp/Screens/register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
              'assets/images/nobgmobilebank.png',
              width: 200,
              height: 200,
            ),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mobile Bank',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                onTap: () {
                  // Update username text style when tapped
                  // You can set any desired text style properties
                  // Here, we set the color to black
                  TextStyle usernameTextStyle = TextStyle(
                    color: Colors.black,
                  );
                },
                decoration: InputDecoration(
                  labelText: 'Account Code Number',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                onTap: () {
                  // Update password text style when tapped
                  // You can set any desired text style properties
                  // Here, we set the color to black
                  TextStyle passwordTextStyle = TextStyle(
                    color: Colors.black,
                  );
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Access Code',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Perform sign up logic here

                      // Navigate to the Register
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform login authentication
                      // Add your login logic here

                      // Navigate to the HomeScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
