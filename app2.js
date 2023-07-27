const axios = require('axios');
const express = require('express');
const app = express();

const reverseMessage = (message) => {
    return message.split('').reverse().join('');
};

app.get('/', async (req, res) => {
    try {
        const response = await axios.get('http://app1:3000');
        const jsonData = response.data;
        const reversedMessage = reverseMessage(jsonData.message);
        res.send(`<h1>${reversedMessage}</h1>`);
    } catch (error) {
        res.status(500).send('Error fetching data from App 1');
    }
});

const port = 3001;
app.listen(port, () => {
    console.log(`App 2 is running on http://localhost:${port}`);
});
