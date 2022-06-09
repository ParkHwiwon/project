$(()=>{
    $.ajax({
        url:"php/kookje.php",
        dataType:"xml",
        success:function(data){
            var $items = $(data).find("item");

            if($items.length > 0){
                $items = $items.slice(0,20);
                var $ulTag = $("<ul/>");
                $.each($items, (idx, o)=>{
                    var $title = $(o).find("title").text();
                    var $link = $(o).find("link").text();
                    var $author = $(o).find("author").text();
                    var $data = $(o).find("pubDate").text();
                    var $content = $(o).find("description").text();


                    var $aTag = $("<a class='newstitle'/>").attr({"herf":$link, "target":"_blank"}).text($title);
                    var $liTag = $("<li class='newslist'/>").append($aTag);

                    var $p1Tag = $(`<p class='content'/>`).append($content);
                    var $p2Tag = $(`<p class='author'/>`).append($author);
                    var $p3Tag = $(`<p class='data'/>`).append($data);
                    var $divTag = $("<div class='toggle'/>").append($p1Tag, $p2Tag, $p3Tag);


                    $liTag.append($divTag);
                    $ulTag.append($liTag);
                });
                $(".wrap3").append($ulTag);

                
            }
        }
    });
});
