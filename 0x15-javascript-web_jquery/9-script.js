$(document).ready(function() {
    $.ajax({
        url: "https://hellosalut.stefanbohacek.dev/?lang=fr",
        type: "GET",
        success: function(result) {
            $("#hello").text(result.hello);
        },
        error: function(xhr, status, error) {
            console.error("Error fetching translation:", error);
        }
    });
});

