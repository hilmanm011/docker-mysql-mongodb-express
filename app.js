const express = require('express');
const bodyParser = require('body-parser');
const authRoutes = require('./routes/auth');
const postRoutes = require('./routes/posts');

require('./models/mongodb'); // Connect to MongoDB

const app = express();

app.use(bodyParser.json());
app.use('/auth', authRoutes);
app.use('/posts', postRoutes);

const PORT = 4000;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
