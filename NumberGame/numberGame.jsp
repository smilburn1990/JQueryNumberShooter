<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sum Smash</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<style type="text/css">
            body {
                cursor: url('img/target.gif');
                background: lightblue;
            }
            #stat span, #stat a {
                text-decoration: none;
                font-size: 28px;
                background: #d3d3d3;
                padding: 2px 10px;
                color: #333333;
                -webkit-border-radius: .2em;
                -moz-border-radius: .2em;
                border-radius: .2em;
                opacity: 0.8;
                filter:alpha(opacity=80);
            }
            
            #stat a:hover {
                background: #999999;
            }
            
			#main-container {
			    height: 436px;
			    width: 836px;
			}
            
            #container {
                background: url("http://thumbs.imagekind.com/member/eb3bcd71-6665-4cbc-8b54-e0163c4174da/uploadedartwork/650X650/016304d7-d6cf-4d38-b82f-ac46eb7f97fa.jpg") repeat scroll right top #FFFFFF;
                border: 5px solid lightblue;
                border-radius: 0.5em 0.5em 0.5em 0.5em;
                cursor: crosshair;
                height: 350px;
                left: 67px;
                margin: 0 auto;
                padding: 20px 50px;
                position: absolute;
                top: 49px;
                width: 600px;
                border: solid 2pt green;
                overflow: hidden;
            }
            
			#message {
			    background: none repeat scroll 0 0 #999999;
			    border: 2px solid #999999;
			    color: white;
			    font-family: arial;
			    font-size: 47px;
			    height: 352px;
			    left: 67px;
			    line-height: 66px;
			    margin: 0 auto;
			    opacity: 0.8;
			    padding: 20px 50px;
			    position: absolute;
			    text-align: center;
			    top: 49px;
			    width: 601px;
			}
			
            .character {
                background-position: center center;
                background-repeat: no-repeat;
                background-size: contain;
                border: 2px solid white;
                border-radius: 0.5em 0.5em 0.5em 0.5em;
                cursor: crosshair;
                display: none;
                height: 50px;
                position: absolute;
                width: 50px;
                background-color: rgba(255, 255, 255, 0.5);
            }
            .character:hover {
                opacity: 0.6;
                filter:alpha(opacity=60);
            }
            #char1.right {
                background-image: url("http://www.clker.com/cliparts/C/G/j/0/u/S/animal-number-one-md.png");
            }
            #char2.right {
                background-image: url("http://www.clker.com/cliparts/H/f/T/n/Q/j/animal-number-two-md.png");
            }
            #char3.right {
                background-image: url("http://www.clker.com/cliparts/I/D/Z/Z/a/w/animal-number-three-md.png");
            }
            #char4.right {
                background-image: url("http://www.clker.com/cliparts/h/F/I/Y/O/p/animal-number-four-md.png");
            }
            #char5.right {
                background-image: url("http://www.clker.com/cliparts/9/g/b/m/E/I/animal-number-five-md.png");
            }
            #char6.right {
                background-image: url("http://www.clker.com/cliparts/y/F/a/C/o/K/animal-number-six-md.png");
            }
            #char7.right {
                background-image: url("http://www.clker.com/cliparts/E/C/r/G/E/Y/animal-number-seven-md.png");
            }
            #char8.right {
                background-image: url("http://www.clker.com/cliparts/d/A/t/d/0/y/animal-number-eight-md.png");
            }
            #char9.right {
                background-image: url("http://www.clker.com/cliparts/m/m/l/n/G/V/animal-number-nine-md.png");
            }
            #char10.right {
                background-image: url("http://www.clker.com/cliparts/m/b/i/U/C/L/number-animal-zero-md.png");
            }
            #char1.wrong {
                background-image: url("http://www.clker.com/cliparts/C/G/j/0/u/S/animal-number-one-md.png");
            }
            #char2.wrong {
                background-image: url("http://www.clker.com/cliparts/H/f/T/n/Q/j/animal-number-two-md.png");
            }
            #char3.wrong {
                background-image: url("http://www.clker.com/cliparts/I/D/Z/Z/a/w/animal-number-three-md.png");
            }
            #char4.wrong {
                background-image: url("http://www.clker.com/cliparts/h/F/I/Y/O/p/animal-number-four-md.png");
            }
            #char5.wrong {
                background-image: url("http://www.clker.com/cliparts/9/g/b/m/E/I/animal-number-five-md.png");
            }
            #char6.wrong {
                background-image: url("http://www.clker.com/cliparts/y/F/a/C/o/K/animal-number-six-md.png");
            }
            #char7.wrong {
                background-image: url("http://www.clker.com/cliparts/E/C/r/G/E/Y/animal-number-seven-md.png");
            }
            #char8.wrong {
                background-image: url("http://www.clker.com/cliparts/d/A/t/d/0/y/animal-number-eight-md.png");
            }
            #char9.wrong {
                background-image: url("http://www.clker.com/cliparts/m/m/l/n/G/V/animal-number-nine-md.png");
            }
            #char10.wrong {
                background-image: url("http://www.clker.com/cliparts/m/b/i/U/C/L/number-animal-zero-md.png");
            }
            #char11.clock.up {
                background-image: url("http://www.clker.com/cliparts/9/w/e/P/Y/a/stop-watch-blue-md.png");
            }
            #char12.clock.down {
                background-image: url("http://www.clker.com/cliparts/q/2/O/r/k/g/stop-watch-red-md.png");
            }
            #char13.freeze {
        		background-image: url("http://www.clker.com/cliparts/5/2/8/f/12401722811949981659Kliponius_Snowflake_(stylized).svg.med.png");
   			}

            #btnstart {
    			color: -moz-html-cellhighlight;
   				cursor: pointer;
    			font-family: arial;
    			font-size: 21pt;
    			left: 338px;
    			position: absolute;
    			text-align: center;
    			top: 448px;
			}
			.game_settings {
    			color: -moz-html-cellhighlight;
    			cursor: pointer;
   			 	font-family: arial;
    			font-size: 21pt;
    			left: 338px;
    			position: absolute;
    			text-align: center;
    			top: 232px;
    			z-index: 1;
    			left: 263px;
    			
			}
			.game_settings > div {
    			display: inline;
			}
			
			input {
			    font-size: 28px;
			}
            #hit {
                color: white;
                font-family: arial;
                font-size: 35pt;
                left: 110px;
                position: absolute;
                text-align: center;
                top: 6px;
                border: 1pt solid black;
            }
            #miss {
                color: white;
                font-family: arial;
                font-size: 35pt;
                left: 594px;
                position: absolute;
                text-align: center;
                top: 6px;
                border: 1pt solid black;
            }
            #target {
    			border: 1pt solid black;
    			color: white;
    			font-family: arial;
    			font-size: 35pt;
    			left: 248px;
    			position: absolute;
    			text-align: center;
    			top: 6px;
    			width: 233px;
			}
            #timer {
    			border: 1pt solid black;
    			color: white;
    			font-family: arial;
    			font-size: 35pt;
    			left: 522px;
    			position: absolute;
    			text-align: center;
    			top: 6px;
    			width: 30px;
			}
</style>
<script type="text/javascript">
var miss = 0;
var hit = 0;
var attempted = 0;
var count = 60;
window.cont = 300;
window.lastrand = -1;
var check;
var play;
var total = Math.ceil(Math.random() * 10);
var countdown = null;

function createPlusSum(total) {
    console.log(total)
    var int1 = Math.ceil(Math.random() * total);
    var int2 = total - int1;
    $('#target').html(int1 + ' + ' + int2 + ' = ?');
}

function createTakeSum(total) {
    console.log(total)
    var int1 = Math.ceil(Math.random() * total);
    var int2 = total + int1;
    $('#target').html(int2 + ' - ' + int1 + ' = ?');
}

function createSum() {
    total = Math.ceil(Math.random() * 10);
    if (Math.random() > 0.5) {
        createTakeSum(total);
    } else {
        createPlusSum(total)
    }
}

$(document).ready(function () {

    $('#target').hide();
    $('#timer').hide();
    
    function correctlabels() {

        createSum(total);

        $('.character').each(function (index, character) {
            var $this = $(this);

            if (total != parseInt(this.getAttribute("value"))) {
                $this.addClass("wrong");
                $this.removeClass("right");
            } else {
                $this.addClass("right");
                $this.removeClass("wrong");
            }
        });
    }
    $(".game_settings").find('input').click(function () {
    

        switch($(this).attr('class')) {
              case 'easy':
                AnimationSpeed = 7000;
                break;
              case 'medium':
                AnimationSpeed = 5000;
                break;
              case 'hard':
                AnimationSpeed = 3000;
                break;
            }
            startplay();
     });

    //function to start the game
    function timer() {
            if (count == 0) {
                count = 60;
                clearInterval(countdown);
                clearInterval(play);
                //$("#btnstart").bind("click", startplay);
                // show the final message
                var containerPos = $('#container').offset();
                $("#message").animate({
                    top: containerPos.top,
                    left: containerPos.left
                }, 'fast', function() {
                    setTimeout(function() {
                    $('.character').hide();
                    $(".game_settings").show();
                    $("#message").html('Thank you for playing. </br> You answered </br>' + hit + '/' + attempted + ' correctly. </br> Select a mode to start again.').fadeIn('slow');
                }, 500);
            });
        }
        $('#timer').text(count--);
    }


    function startplay() {
        correctlabels();
        $('#target').show();
        $('#timer').show();
        $('#container').clone();
        $("#message").fadeOut('slow');
        $("#miss").html("Wrong: 0");
        $("#hit").html("Right: 0");
        miss = 0;
        hit = 0;
        $(".game_settings").hide();
        $(".game_settings").unbind("click");
        play = setInterval(function () {
            if (window.cont) {
                window.cont--;
                scramble();
            }
        }, 500);

        //clears the previous game, shows message and resets the timer
        countdown = setInterval(function () {
            if (count == 0) {
                count = 60;
                clearInterval(countdown);
                clearInterval(play);
                $(".game_settings").bind("click", startplay);
                // show the final message
                var containerPos = $('#container').offset();
                $("#message").animate({
                    top: containerPos.top,
                    left: containerPos.left
                }, 'fast', function () {
                    setTimeout(function () {
                    	$('.character').hide();
                    	$(".game_settings").show().css("top", "368px");
                        $("#message").html('Thank you for playing. </br> You answered </br>' + hit + '/' + attempted + ' correctly. </br> Select a mode to start again.').fadeIn('slow');
                    }, 500);
                });
            }
            $('#timer').text(count--);
        }, 1000);
    }


    $(".character").click(clickThrottled(function () {
        $(this).stop(true);
        if ($(this).hasClass("number")) {
            if ($(this).hasClass("wrong")) {
                $(this).effect("bounce", {
                    times: 2,
                    direction: 'left'
                }, 400, function () {
                    $(this).hide("scale", {}, 400);
                });
                miss++;
                attempted++;
                $("#miss").html("Wrong: " + miss);
            } else if ($(this).hasClass("right")) {
                $(this).effect("explode", 400);
                hit++;
                attempted++;
                $("#hit").html("Right: " + hit);
                correctlabels();
            }
        }
    }));

    $(".character").click(clickThrottled(function () {
        if ($(this).hasClass("clock")) {
            if ($(this).hasClass("up")) {
                $(this).effect("explode", 400);
                count += 5;
            } else if ($(this).hasClass("down")) {
                $(this).effect("bounce", {
                    times: 2,
                    direction: 'left'
                }, 400, function () {
                    $(this).hide("scale", {}, 400);
                });
                count -= 5;
            }
            $('#timer').text(count);
        }
    }));

    $('.character').click(clickThrottled(function () {
        if ($(this).hasClass("freeze")) {
            $(this).effect("explode", 400);
            $('.character').stop(true).delay('3000').animate({
                'top': '-55px'
            }, 3000).fadeOut(100);
            window.clearInterval(countdown);
            window.setTimeout(function () {
                countdown = window.setInterval(timer, 1000);
            }, 3000);
        }
    }));

    function clickThrottled(fn) {
        var click = true;
        return function () {
            if (click) {
                click = false;
                fn.apply(this, arguments);
                setTimeout(function () {
                    click = true;
                }, 500);
            }
        };
    }

    function randomFromTo(from, to) {
        return Math.floor(Math.random() * (to - from + 1) + from);
    }

    function scramble() {
        var children = $('#container').children();
        var randomId = randomFromTo(1, children.length);
        moveRandom("char" + randomId);
    }

    var currentMoving = [];

    function moveRandom(id) {
        // If this one's already animating, skip it
        if ($.inArray(id, currentMoving) !== -1) {
            return;
        }

        // Mark this one as animating
        currentMoving.push(id);

        var cPos = $('#container').offset();
        var cHeight = $('#container').height();
        var cWidth = $('#container').width();
        var bWidth = $('#' + id).width();

        var bHeight = $('#' + id).css('top', '395px').fadeIn(100).animate({
            'top': '-55px'
        }, AnimationSpeed).fadeOut(100);

        maxWidth = cPos.left + cWidth - bWidth;
        minWidth = cPos.left;
        newWidth = randomFromTo(minWidth, maxWidth);

        $('#' + id).css({
            left: newWidth
        }).fadeIn(100, function () {
            setTimeout(function () {
                $('#' + id).fadeOut(100);

                // Mark this as no longer animating                
                var ix = $.inArray(id, currentMoving);
                if (ix !== -1) {
                    currentMoving.splice(ix, 1);
                }
                window.cont++;
            }, 100);
        });
    }
});
</script>
</head>
<body>
<div id="main-container">
<div id="stat">
	<span id="hit">Right: 0</span>
	<span id="target"></span>
	<span id="miss">Wrong: 0</span>
	<span id="timer">60</span>

<div class="game_settings">
	<div><input class="easy" type="button" value="Easy"></div>
	<div><input class="medium" type="button" value="Medium"></div>
	<div><input class="hard" type="button" value="Hard"></div>
</div>

<div id="container">
	<div id="char1" class="character number" value="1"></div>
	<div id="char2" class="character number" value="2"></div>
	<div id="char3" class="character number" value="3"></div>
	<div id="char4" class="character number" value="4"></div>
	<div id="char5" class="character number" value="5"></div>
	<div id="char6" class="character number" value="6"></div>
	<div id="char7" class="character number" value="7"></div>
	<div id="char8" class="character number" value="8"></div>
	<div id="char9" class="character number" value="9"></div>
	<div id="char10" class="character number" value="10"></div>
	<div id="char11" class="character clock up"></div>
	<div id="char12" class="character clock down"></div>
	<div id="char13" class="character freeze"></div>
</div>
</div>
<div id="message">
</div>
</body>
</html>