$(document).ready(function() {
    $.ajax({
        url: "https://swapi-api.alx-tools.com/api/films/?format=json",
        type: "GET",
        success: function(result) {
            result.results.forEach(function(movie) {
                $("#list_movies").append("<li>" + movie.title + "</li>");
            });
        },
        error: function(xhr, status, error) {
            console.error("Error fetching movie data:", error);
        }
    });
});

