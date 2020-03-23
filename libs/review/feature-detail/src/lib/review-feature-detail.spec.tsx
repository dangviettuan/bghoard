import React from 'react';
import { render } from '@testing-library/react';

import ReviewFeatureDetail from './review-feature-detail';

describe(' ReviewFeatureDetail', () => {
  it('should render successfully', () => {
    const { baseElement } = render(<ReviewFeatureDetail />);
    expect(baseElement).toBeTruthy();
  });
});
