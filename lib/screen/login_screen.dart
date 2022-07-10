import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_log_app/providers/authentication_state_provider.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _userName = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ProgressHUD(
          child: Builder(
            builder: (context) => Form(
              key: _formKey,
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(child: Icon(Icons.movie, size: 100, color: Colors.blue,)),
                          const Spacer(flex: 1),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              controller: _userName,
                              autocorrect: true,
                              enableSuggestions: true,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (value) {},
                              decoration: InputDecoration(
                                hintText: 'User Name',
                                hintStyle:
                                    const TextStyle(color: Colors.black54),
                                icon: Icon(Icons.account_circle,
                                    color: Colors.blue.shade700, size: 24),
                                alignLabelWithHint: true,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Invalid User Name!';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              controller: _password,
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is too short!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle:
                                    const TextStyle(color: Colors.black54),
                                icon: Icon(CupertinoIcons.lock_circle,
                                    color: Colors.blue.shade700, size: 24),
                                alignLabelWithHint: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(top: 32.0),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: double.infinity,
                                child:
                                    Consumer(builder: (consumer, ref, child) {
                                  return MaterialButton(
                                    onPressed: () async {
                                      if (!_formKey.currentState!.validate()) {
                                        return;
                                      }
                                      final progress = ProgressHUD.of(context);
                                      progress?.showWithText('Loading...');
                                      await ref
                                          .read(authenticationStateProvider
                                              .notifier)
                                          .loginAccount(
                                              _userName.text, _password.text)
                                          .catchError((e) {
                                        progress?.dismiss();
                                        progress?.showWithText(e.toString());
                                        Future.delayed(Duration(seconds: 3),
                                            () {
                                          progress?.dismiss();
                                        });
                                      });
                                    },
                                    child: Text(
                                      'Sign in with the movie database',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    textColor: Colors.blue.shade700,
                                    textTheme: ButtonTextTheme.primary,
                                    minWidth: 100,
                                    padding: const EdgeInsets.all(18),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(
                                          color: Colors.blue.shade700),
                                    ),
                                  );
                                })),
                            const Spacer(),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
