"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var app = (0, express_1.default)();
var port = 3000;
// GET 요청 핸들러 
app.get('/', function (req, res) {
    res.send("Hello World");
});
app.listen(port, function () {
    console.log("Server is running at http://localhost:".concat(port));
});
