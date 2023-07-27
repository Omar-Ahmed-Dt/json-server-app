const express = require('express');
const app = express();

const jsonData = {
    id: "1",
    message: "Hello World"
};

app.get('/', (req, res) => {
    res.json(jsonData);
});

const port = 3000;
app.listen(port, () => {
    console.log(`App 1 is running on http://localhost:${port}`);
});
