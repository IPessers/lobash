import React from 'react';
import _ from 'lodash';

export const ComponentSub1B = (props) => {
    const randomValue = _.get(props, 'randomValue');

    return <div>The random value found is: {randomValue}</div>
}