import 'dart:io';

int calculate() {
  return 6 * 7;
}

// Process.runを使わずに済むAPIがある場合はそちらを使うべき
Future<void> runAsyncCommand() async {
  final result = await Process.run('touch', ['bar.txt']);
  print('exitCode: ${result.exitCode}');
  print('stdout: ${result.stdout}');
  print('stderr: ${result.stderr}');
}

void runSyncCommand() {
  final result = Process.runSync('touch', ['foo.txt']);
  print('exitCode: ${result.exitCode}');
  print('stdout: ${result.stdout}');
  print('stderr: ${result.stderr}');
}
