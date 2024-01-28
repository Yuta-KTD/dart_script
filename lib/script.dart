import 'dart:io';

int calculate() {
  return 6 * 7;
}

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

// Process.runを使わずに済むAPIがある場合はそちらを使うべき
void createSyncFile() {
  final result = File('foo/bar/buzz.txt').createSync(recursive: true);
}
