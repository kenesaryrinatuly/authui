import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/components.dart';
import 'package:flutter_auth_ui/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Upside(
                  imgUrl: "assets/images/login.png",
                ),
                const PageTitleBar(title: 'Sign up Avtobys'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          child: Column(
                            children: [
                              const RoundedInputField(
                                  hintText: "Email", icon: Icons.email),
                              const RoundedInputField(
                                  hintText: "Name", icon: Icons.person),
                              const RoundedPasswordField(),
                              RoundedButton(text: 'REGISTER', press: () {}),
                              const SizedBox(
                                height: 10,
                              ),

                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
