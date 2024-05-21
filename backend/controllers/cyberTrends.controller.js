const axios = require("axios");
const cheerio = require("cheerio");
const { NEWS_API_KEY } = require("../config/env.config");

const cyberTrends = async (req, res) => {
  try {
    const { query, page = 1, pageSize = 10 } = req.body; 

    const response = await axios.get(
      `https://newsapi.org/v2/everything?q=${query}&apiKey=${NEWS_API_KEY}&page=${page}&pageSize=${pageSize}`
    );

    console.log(response.data);

    const newsData = response.data;
    res.json(newsData);
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Internal Server Error" });
  }
};
module.exports = cyberTrends;