const Post = require('../models/Post');

const createPost = async (req, res) => {
const { title, content } = req.body;
const { userId } = req.user;

const post = new Post({ title, content, userId });
    await post.save();

    res.status(201).json({ message: 'Post created', post });
};

module.exports = { createPost };
