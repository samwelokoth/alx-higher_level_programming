$(document).ready(function() {
    $.ajax({
        url: "https://swapi-api.alx-tools.com/api/people/5/?format=json",
        type: "GET",
        success: function(result) {
            $("#character").text(result.name);
        },
        error: function(xhr, status, error) {
            console.error("Error fetching character data:", error);
        }
    });
});

