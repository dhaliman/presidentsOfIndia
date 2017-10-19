import React from 'react';
import {
  BrowserRouter as Router,
  Route
} from 'react-router-dom';
import PresidentsDisplay from './PresidentsDisplay';

const App = (props) => (
  <Router presidentStartingId={props.presidentStartingId} >
    <div>
      <Route
        path='/'
        presidentStartingId={props.presidentStartingId}
        component={(routeProps) => <PresidentsDisplay {...props} {...routeProps}/>}
      />
    </div>
  </Router>
)

export default App;
