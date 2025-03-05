const express = require("express");

const server = express();

const PORT = process.env.PORT || 3000;

server.get("/", (req, res) => {
    return res.json({
        message: "Hello from node container"
    });
});

server.listen(PORT, () => {
    console.log(`server running on port ${PORT}`)
});