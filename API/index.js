const express = require('express');
const app = express();

const PORT = 5000;

app.get('/', (req, res) => {
    res.status(200).send("Movie Locator API");
});

app.listen(PORT, () => {
    console.log(`Server is running on ${PORT}`);
});