// src/App.js

import React, { Component } from 'react';
import axios from 'axios';

const list = [
    {
        "lesson": 1,
        "title": "New Literacy",
        "content": "https://shrinking-world.com/unc/bacs200/01",
        "date": "2019-01-07",
        "course": 1
    },
    {
        "lesson": 2,
        "title": "Web Hosting",
        "content": "https://shrinking-world.com/unc/bacs200/02",
        "date": "2019-01-09",
        "course": 1
    },
    {
        "lesson": 3,
        "title": "WordPress",
        "content": "https://shrinking-world.com/unc/bacs200/03",
        "date": "2019-01-11",
        "course": 1
    }
]

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { list };
  }

  render() {
    return (
      <div>
        {
            this.state.list.map(item => (
                <div key={item.id}>
                    <h1>Lesson {item.lesson}. {item.title}</h1>
                    <p>Doc: {item.content}</p>
                    <p>Date: {item.date}</p>
                </div>
            ))
        }
      </div>
    );
  }
}

export default App;
