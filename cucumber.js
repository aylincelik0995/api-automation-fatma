let options = [
    '--require ./steps/*.steps.js',
    '--format progress',
    '--publish-quiet'
    ].join(' ');

let run_features = [
    './features/', 
    options,
    ].join(' ');


module.exports = {
    test_runner: run_features
};