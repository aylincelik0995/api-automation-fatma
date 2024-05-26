// cucumber.js
const common = [
    'tests/features/**/*.feature', // Specify our feature files
    '--require tests/step_definitions/**/*.js', // Load step definitions
].join(' ');

module.exports = {
    default: common,
};