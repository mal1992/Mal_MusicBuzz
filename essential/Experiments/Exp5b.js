function findvideo() {
    document.getElementById("videoframe").innerHTML = "displaying......Please wait";
    var query = document.getElementById("query").value;
    query = encodeURIComponent(query);
    var jsonpURL = "http://gdata.youtube.com/feeds/videos?vq=" + query + "&max-results=8&alt=json-in-script&callback=displayvideo";
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = jsonpURL;
    var head = document.getElementsByTagName("head")[0];
    head.appendChild(script);
}

function displayvideo(data) {
    var html = '';
    if (data.feed.openSearch$totalResults.$t > 0) {
        var videos = data.feed.entry;
        for (var i = 0; i < videos.length; i++) {
            html += videos[i].content.$t;
        }
    } else {
        html += "<p> videos not found</p>";
    }
    document.getElementById("videoframe").innerHTML = html;
}