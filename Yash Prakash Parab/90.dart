// Function with named parameters having default values
void configureSettings({
  String theme = 'Light',
  bool notifications = true,
  int fontSize = 14,
  String language = 'English',
}) {
  print('--- App Settings ---');
  print('Theme        : $theme');
  print('Notifications: ${notifications ? "Enabled" : "Disabled"}');
  print('Font Size    : ${fontSize}pt');
  print('Language     : $language');
  print('--------------------');
}

void main() {
  print('--- Named Parameters with Default Values Demonstration ---\n');

  print('1. Calling configureSettings() without arguments (Uses all defaults):');
  configureSettings();

  print('\n2. Calling configureSettings() with partial named arguments:');
  configureSettings(theme: 'Dark', fontSize: 18);

  print('\n3. Calling configureSettings() overriding all named arguments:');
  configureSettings(
    theme: 'Solarized Dark',
    notifications: false,
    fontSize: 16,
    language: 'Spanish',
  );
}
