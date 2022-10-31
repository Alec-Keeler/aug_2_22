// Phase 2
const {
  getAllArtists,
  getLatestArtist,
  getArtistByArtistId,
  addArtist,
  editArtistByArtistId,
  deleteArtistByArtistId,
  getAlbumsForLatestArtist,
  getAlbumsByArtistId,
  getAlbumByAlbumId,
  addAlbumByArtistId,
  editAlbumByAlbumId,
  deleteAlbumByAlbumId,
  getFilteredAlbums,
  getSongsByArtistId,
  getSongsByAlbumId,
  getSongBySongId,
  addSongByAlbumId,
  editSongBySongId,
  deleteSongBySongId
} = require('./data');

const express = require('express');
const app = express();

// Your code here
app.use(express.json());

app.use((req, res, next) => {
  console.log('Body:', req.body);
  next();
});

// Components of an end point
// 1. method: get, post, put/patch, delete, use, all
// 2. path/url: string, regular expression, array of strings/regexes
// 3. middleware: functions, array of functions
// 4. response: json, send, redirect, render


app.get('/artists', (req, res) => {
  res.json(getAllArtists())
})

app.post('/artists', (req, res) => {
  res.status(201)
  res.json(addArtist(req.body))
})

const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));