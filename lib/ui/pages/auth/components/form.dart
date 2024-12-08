// import 'package:app/ui/providers/v2/auth/auth.dart';
import 'package:app/ui/widgets/index.dart' show CustomAppBar;
import 'package:flutter/material.dart';

import 'button.dart';

class FormPage extends StatelessWidget {
  FormPage(
      {super.key,
      required this.children,
      required this.action,
      required this.title,
      required this.actionText2,
      required this.actionText,
      this.action2});

  final List<Widget> children;
  final void Function() action;
  final void Function()? action2;
  final String title;
  final String actionText;
  final String actionText2;
  final formKey = GlobalKey<FormState>();

  void action_() {
    if (formKey.currentState!.validate()) {
      action();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      // backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 50),

                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  title,
                  style: const TextStyle(
                    // color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                Form(
                  key: formKey,
                  child: Column(children: children),
                ),

                const SizedBox(height: 10),

                // forgot password?
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // sign in button
                FormButton(
                  text: actionText,
                  onTap: action_,
                ),

                const SizedBox(height: 10),

                // or continue with
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or ',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: action2,
                      child: Text(
                        actionText2,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
