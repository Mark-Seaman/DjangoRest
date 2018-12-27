// src/App.js

import React, { Component } from 'react';
import axios from 'axios';


class App extends Component {
    
    // Start with no lessons
    state = {
        lessons: []
    }

    // Request lessons from API
    componentDidMount() {
        this.getLessons();
    }

    // Get a list of lessons
    getLessons() {
        axios
            .get('http://127.0.0.1:8000/api/')
            .then(res => {
                this.setState({lessons: res.data});
            })
            .catch(err => {
                console.log(err);
            });
    }

    // Draw the view with for the list of lessons
    render() {
        return (
          <div>
            {
                this.state.lessons.map(item => (
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
