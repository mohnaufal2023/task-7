// src/components/Portfolio.test.js
import { render, screen } from '@testing-library/react';
import Portfolio from './Portfolio';

describe('Portfolio Component', () => {
  test('renders project list correctly', () => {
    const projects = [{ id: 1, name: 'Project 1' }, { id: 2, name: 'Project 2' }];
    render(<Portfolio projects={projects} />);
    expect(screen.getByText('Project 1')).toBeInTheDocument();
    expect(screen.getByText('Project 2')).toBeInTheDocument();
  });
});
