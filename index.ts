import { exec } from "node:child_process";
import express from "express";

const app = express();
const port = 3000;

app.get("/start", (req, res) => {
    exec("./start.sh");
    res.send("Done");
});

app.get("/shutdown", (req, res) => {
    exec("./shutdown.sh");
    res.send("Done");
});

app.listen(port, () => {
    console.log("Now listening on port " + port);
});
