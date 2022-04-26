const APIURL =
  "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=04c35731a5ee918f014970082a0088b1&page=";

const IMGPATH = "https://image.tmdb.org/t/p/w1280";

const SEARCHAPI =
  "https://api.themoviedb.org/3/search/movie?&api_key=04c35731a5ee918f014970082a0088b1&query=";
const main = document.getElementById("main");

const form = document.getElementById("form");
const search = document.getElementById("search");

function get_movies(url) {
  var api = fetch(url);
  api
    .then((response) => response.json())
    .then((data) => {
      console.log(data.results);
      show_movies(data.results);
    });
}

function show_movies(data) {
  main.innerHTML = "";

  data.forEach((movies) => {
    const { title, overview, poster_path, vote_average } = movies;
    const moviesEl = document.createElement("div");
    moviesEl.classList.add("movies");
    moviesEl.innerHTML = `<div class="movies">
<img
  src="${IMGPATH + poster_path} "
  alt="${title}"/>
<div class="info">
  <h2>${title}</h2>
  <span class="${get_color(vote_average)}"> ${vote_average}</span>
</div>
<div class="view">
  <h3>overview</h3>
  ${overview}
</div>
</div>  `;

    main.appendChild(moviesEl);
  });
}

function get_color(vote) {
  if (vote <= 8 && vote > 5) {
    return "green";
  } else if (vote <= 5) {
    return "orange";
  } else {
    return "red";
  }
}

form.addEventListener("submit", (e) => {
  e.preventDefault();
  const search_movies = search.value;
  if (search_movies) {
    get_movies(SEARCHAPI + "&query=" + search_movies);
  } else {
    get_movies(APIURL);
  }
});
var i = 1;
window.onscroll = function () {
  if (document.body.scrollHeight <= window.innerHeight + window.scrollY) {
    i++;
    get_movies(APIURL + i);
  }
};
