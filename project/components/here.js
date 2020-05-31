var _ = require('lodash');

function start(param) {
  if (_.isEmpty(param)) {
    console.log('Failed to run with empty parameters');
    return;
  }

  const value = _.get(param, 'value', 'HAHAHA it was empty');
  console.log(value);
}