import React from 'react';
import _ from 'lodash';

const CONSTANTS = {
  PORT: 8666
}

export const Index = () => {
  const appPort = _.get(CONSTANTS, 'PORT', 1234);

  return <div>This is not a real application (dhu) running on port {appPort}</div>;
}