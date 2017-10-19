import React from 'react';
import { Link } from 'react-router-dom';
import queryString from 'query-string';
import axios from 'axios';

class PresidentsDisplay extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      president: ''
    }
  }

  presidentKoLekarAao(id) {
    axios.get(`/api/presidents/${id}`)
    .then(response => {
      this.setState({
        president: response.data
      });
    })
    .catch(error => {
      console.error(error);
    })
  }

  setPresidentIdFromQueryString(ps) {
    this.psParams = queryString.parse(ps);
    if (this.psParams.president) {
      // match the presidentId to the url
      this.presidentId = Number(this.psParams.president);
    } else {
      this.presidentId = this.props.presidentStartingId;
      // Update the url with the president id
      this.props.history.push(`/?president=${this.presidentId}`);
    }
  }

  componentDidMount() {
    this.setPresidentIdFromQueryString(this.props.location.search);
    this.presidentKoLekarAao(this.presidentId);
  }

  componentWillReceiveProps (nextProps) {
    this.setPresidentIdFromQueryString(nextProps.location.search);
    this.presidentKoLekarAao(this.presidentId);
  }

  render() {
    const nextPresidentId = this.state.president.next_id;
    const prevPresidentId = this.state.president.prev_id;
    return(
      <div>
        <h1>{this.state.president.name}</h1>
        <img src={this.state.president.url} />
        <p>{this.state.president.in_office_start}</p>
        <p>{this.state.president.in_office_end}</p>
        {prevPresidentId &&
          <Link to={`/?president=${prevPresidentId}`} >
            Previous
          </Link> }
        {nextPresidentId &&
          <Link to={`/?president=${nextPresidentId}`} >
            Next
          </Link> }
      </div>
    );
  }
}

export default PresidentsDisplay
