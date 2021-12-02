const express = require("express");
const app = express();
app.get("/", (req, res) => {
  const date = new Date().toString();
  console.log(`request at ${date}`);
  res.send(`<h1>Hi Kenny at ${date}</h1>`);
});
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`listening on port ${port}`));
