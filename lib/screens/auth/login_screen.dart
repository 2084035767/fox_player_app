import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fox_player/di/service_locator.dart';
import 'package:fox_player/viewmodels/auth_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_hooks/signals_hooks.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<AuthViewModel>();
    final email = useSignal('');
    final password = useSignal('');

    // final canSubmit = useComputed(
    //   () => email.value.isNotEmpty && password.value.length >= 6,
    // );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fox Player',
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    autofocus: true,
                    onChanged: (v) {
                      email.value = v;
                    },
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    onChanged: (v) {
                      password.value = v;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (context.mounted) {
                  context.go('/home');
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
