import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(radius: 50, child: Icon(Icons.person, size: 90)),
                SizedBox(height: 15),
                Text(
                  "Welcome back",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),

                Text(
                  "sign in to continue",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.grey.shade300),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 5),
                            Text("contine with email"),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 12),
                    // icon 2
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.grey.shade300),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.apple),
                            SizedBox(width: 5),
                            Text("contine with Apple"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text("or"),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 12),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Email address",
                    prefixIcon: Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.visibility_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  height: 50,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300),
                  ),
                  child: Text(
                    "Login in ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    MaterialButton(onPressed: () {}, child: Text("Sign up")),
                  ],
                ),

                SizedBox(height: 10),
                TextButton(onPressed: () {}, child: Text("forgot passward")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
