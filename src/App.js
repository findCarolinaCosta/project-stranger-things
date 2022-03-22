import React from 'react';
import './App.css';

import { config } from 'dotenv';
import StrangerThings from './components/StrangerThings';

config();

const { REACT_APP_IS_DEVELOPMENT } = process.env;

function App() {
  return (
    <div className="App">
      {REACT_APP_IS_DEVELOPMENT === 'true' && <h1>Em desenvolvimento</h1>}
      <StrangerThings />
    </div>
  );
}

export default App;
