import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login to your account",
                  style: GoogleFonts.lato(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 3,
                  width: 80,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(bottom: 60),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 118, 117, 117),
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 110, 109, 109),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 118, 117, 117),
                          fontWeight: FontWeight.bold),
                      suffixIcon: const Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 118, 117, 117),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text('Remember me',
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 118, 117, 117),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      //   Navigator.pushNamed(context, '/login'); // Add navigation here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Login',
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Login with Google',
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 118, 117, 117)),
                        children: [
                          TextSpan(
                            text: "Register",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register new account",
                  style: GoogleFonts.lato(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 3,
                  width: 80,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(bottom: 60),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 118, 117, 117),
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 110, 109, 109),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 118, 117, 117),
                          fontWeight: FontWeight.bold),
                      suffixIcon: const Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 118, 117, 117),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password Confirmation',
                      labelStyle: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 118, 117, 117),
                          fontWeight: FontWeight.bold),
                      suffixIcon: const Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 118, 117, 117),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'By creating an account, you agree to our ',
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 118, 117, 117),
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: GoogleFonts.lato(
                                color: Colors.blue, // Fixed the color value
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(
                      //     context, '/login'); // Add navigation here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Login',
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 60),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 118, 117, 117)),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
