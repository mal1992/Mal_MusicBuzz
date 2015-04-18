var squaresize = 75;
var initialvalue = false
var TableValue = true;
var column = row = 2
$(document).ready(function () {

    next(column, row);

});


function next(c, r) {

    if (!TableValue)
        return;

    TableValue = false;
   
    $(".placeholder").fadeOut(1000,
				
				function () {
				    $(".placeholder").empty();

				  
				    $(".board").animate({ height: ((squaresize + 8) * r) + "px", width: ((squaresize + 8) * c) + "px" }, 1000,
                                       
                                        function () {
                                            for (i = 0; i < (c * r) ; i++)
                                                $(".placeholder").append(displayshape("circle", squaresize));
                                            $(".placeholder").fadeIn(200);

                                            checkForSelected();
                                        }
                                    )
				}
	 );
}


function displayshape(kind, r) {
    return $("<div>").addClass("shape " + kind).width(r).height(r).click(function () {
        if (initialvalue) {
            if ($(this).attr("selected") == "selected")
                $(this).addClass("selected");
            else
                $(this).addClass("wrong");

            var totalSelected = $(".shape[selected='selected']").length

            if (($(".selected").length + $(".wrong").length) >= totalSelected) {
                initialvalue = false;
                $(".shape[selected='selected']:not(.selected)").addClass("selected");

                if ($(".wrong").length == 0) {
                    alert("You Cleared this level ! :D Lets try how good you are at the next level ! ");


                    if (column == row)
                        column++;
                    else if (column > row)
                        row++;

                    if (column > 6) {
                        column = 6;
                        row = 6;
                    }
                }
                next(column, row);
            }
        }
    });
}

function checkForSelected() {

    var count = 0;
    var length = $(".placeholder > .shape").length


    for (count = 0; count < Math.ceil(length / 3) ;) {
        var random = Math.ceil(Math.random() * length);
        if (random < length) {
            if (!$(".placeholder > .shape").eq(random).hasClass("selected")) {
                $(".placeholder > .shape").eq(random).addClass("selected").attr("selected", "selected");;
                count++;
            }
        }
    }
    window.setTimeout(hideSquare, 1200)
}

function hideSquare() {

    $(".placeholder > .shape").removeClass("selected");
    initialvalue = true;
    TableValue = true;
}