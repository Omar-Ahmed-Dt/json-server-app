const express = require('express');
const app = express();

const jsonData = {
    id: "1",
    message: "Hello World"
};

app.get('/json', (req, res) => {
    res.json(jsonData);
});

const port = 3000;
app.listen(port, () => {
    console.log(`JSON Server App listening at http://localhost:${port}`);
});
