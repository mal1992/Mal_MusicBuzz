
       jQuery(document).ready(function ($) {

           $('#checkbox').change(function () {
               setInterval(function () {
                   moveRight();
               }, 3000);
           });

           var count = $('#loop ul li').length;
           var swidth = $('#loop ul li').width();
           var sheight = $('#loop ul li').height();
           var forLoop = count * swidth;

           $('#loop').css({ width: swidth, height: sheight });

           $('#loop ul').css({ width: forLoop, marginLeft: -swidth });

           $('#loop ul li:last-child').prependTo('#loop ul');

           function moveLeft() {
               $('#loop ul').animate({
                   left: +swidth
               }, 200, function () {
                   $('#loop ul li:last-child').prependTo('#loop ul');
                   $('#loop ul').css('left', '');
               });
           };

           function moveRight() {
               $('#loop ul').animate({
                   left: -swidth
               }, 200, function () {
                   $('#loop ul li:first-child').appendTo('#loop ul');
                   $('#loop ul').css('left', '');
               });
           };

           $('a.goPrev').click(function () {
               moveLeft();
           });

           $('a.goNext').click(function () {
               moveRight();
           });

       });


