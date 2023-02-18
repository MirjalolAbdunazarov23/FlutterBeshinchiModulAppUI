import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modul_besh/Utils/constants/AppColors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text(
                  'My Wallet',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0131AF)),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Owning your money',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: _CustomTextField(
                        controller: TextEditingController(), hintText: 'Login'),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: _CustomTextField(
                        controller: TextEditingController(),
                        hintText: 'Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextButton(
                      onPressed: () {}, child: const Text('forgot password')),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: CupertinoButton(
                      color: const Color(0xff0131AF),
                      borderRadius: BorderRadius.circular(15),
                      onPressed: () {},
                      child: Text(
                        'Connecting'.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0131AF)),
                      )),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  const _CustomTextField({required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffEFF3FF),
          hintText: hintText,
          enabled: true,
          hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff0131AF)),
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: .0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(15)),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: .0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: .0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: .0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
