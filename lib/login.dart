import 'package:flutter/material.dart';
import 'package:foodelo_demo/widgets/clipper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  // FocusNodes
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(() => setState(() {}));
    _passwordFocus.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /// 🔹 Wave background with image
          ClipPath(
            clipper: WaveClipper(),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset('assets/images/t10.jpeg', fit: BoxFit.cover),
            ),
          ),

          /// 🔹 Login form
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 200),

                /// Title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 75,
                      height: 3,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 149, 90, 226),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                /// Email Field
                TextField(
                  focusNode: _emailFocus,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Foodelo@mail.com",
                    labelStyle: TextStyle(
                      color:
                          _emailFocus.hasFocus
                              ? const Color.fromARGB(255, 149, 90, 226)
                              : Colors.black,
                      fontWeight:
                          _emailFocus.hasFocus
                              ? FontWeight.bold
                              : FontWeight.normal,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 149, 90, 226),
                        width: 2.5,
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                /// Password Field
                TextField(
                  focusNode: _passwordFocus,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color:
                          _passwordFocus.hasFocus
                              ? const Color.fromARGB(255, 149, 90, 226)
                              : Colors.black,
                      fontWeight:
                          _passwordFocus.hasFocus
                              ? FontWeight.bold
                              : FontWeight.normal,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 149, 90, 226),
                        width: 2.5,
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                /// Remember me + Forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (val) {
                            setState(() {
                              _rememberMe = val ?? false;
                            });
                          },
                        ),
                        const Text("Remember me"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                /// Terms
                const Text.rich(
                  TextSpan(
                    text: "By continuing, you agree to our ",
                    children: [
                      TextSpan(
                        text: "Terms of Services",
                        style: TextStyle(color: Colors.teal),
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(color: Colors.teal),
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),

                const SizedBox(height: 20),

                /// Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 149, 90, 226),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Divider
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("or", style: TextStyle(color: Colors.grey)),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 20),

                /// Google Login Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: Colors.white,
                    ),
                    icon: Image.asset("assets/images/search.png", height: 20),
                    label: const Text(
                      "Continue with Google",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
