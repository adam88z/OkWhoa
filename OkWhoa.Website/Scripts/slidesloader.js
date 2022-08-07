/* Onload     -------------------------------------------*/
var pictureSize = "medium";
var resizeWidth = 700;
// from debounce code example:
var w = document.querySelector("#width"),
        h = document.querySelector("#height"),
    c = document.querySelector("#calls"),
    timeout = false, // holder for timeout id
    delay = 2250, // delay after event is "complete" to run callback
    calls = 0;

window.onload = function () {  /* run the function to initialize the page */

    var widthHeightBlock = document.getElementById('widthHeightBlock');
    var widthHeightText = '<div style="width:49%;float:left;border:1px dotted red;padding:.2em;"><p id="selector" >window.innerWidth = ' + resizeWidth + '</p></div> <div style="width:49%;float:left;border:1px dotted green;padding:.2em;"><p id="gluten" >pictureSize = ' + pictureSize + '</p></div>';
    widthHeightBlock.innerHTML = widthHeightText;

    function buildList() {
        checkwindowsize();
        //document.writeln("<p><b>resizeWidth</b> after checkwindowsize().   " + resizeWidth + " - pictureSize = " + pictureSize + "</p>");

        slides(); // go build the lines of code
    }

    function checkwindowsize() {

        /*var el = document.getElementByClass('carousel');*/

        if (window.innerWidth >= 1600) { pictureSize = "large" };
        if (window.innerWidth > 800 & window.innerWidth < 1600) { pictureSize = "medium" };
        if (window.innerWidth > 600 & window.innerWidth < 800) { pictureSize = "small" };
        if (window.innerWidth <= 600) { pictureSize = "tiny" };

        resizeWidth = window.innerWidth;

        //document.writeln("<p><i>inside</i> checkwindowsize().   " + resizeWidth + " - " +pictureSize + "</p>");

        sputum = document.getElementById("selector");
        sputum.innerHTML = "resizeWidth = " + resizeWidth;

        gluten = document.getElementById("gluten"); //
        gluten.innerHTML = "pictureSize = " + pictureSize;

        return resizeWidth;

    }  // end checkwindowsize()

    function slides() {

        var slide = "slide-";
        var slideSequence = ['a', 'b', 'c', 'd', 'e']; //this array must be adjusted each time images are added or removed
        // code to empty the div that holds the carousel and then write a new carousel
        var carouselContent = document.getElementById('carouselHolder');
        var carouselNewContent = "<p>HonkyMonkey</p>";
        carouselNewContent = '<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="min-height: 300px; border: 3px dotted red;"><div class="carousel-inner">';
        

        for (var i = 0; i < slideSequence.length; i++) {
            slide = slide + i;
            //document.write("<p> slideSequence = " + slideSequence[i] + "</p>");
            if (i == 0) {
                carouselNewContent = carouselNewContent + '<div class="carousel-item active"><img class="d-block w-100"  src="images/portfolio/' + pictureSize + '/image__' + slideSequence[i] + '.jpg" alt="First slide"></div>';
                //document.write(picture);
            }
            else {
                carouselNewContent = carouselNewContent + '<div class="carousel-item       "><img class="d-block w-100"  src="images/portfolio/' + pictureSize + '/image__' + slideSequence[i] + '.jpg" alt="' + slide + '"></div>';
                //document.write(picture);
            }
            slide = "slide-";
        }

        carouselNewContent = carouselNewContent + '</div><!--end carousel-inner--></div><!--end carouselExampleControls-->';

        carouselContent.innerHTML = carouselNewContent;

    }  // end slides()


    // window.resize event listener
    window.addEventListener('resize', function () {
    // clear the timeout
    clearTimeout(timeout);
    // start timing for event "completion"
    timeout = setTimeout(buildList, delay);
    // from debounce code example:

    });


} // end of window.onload 
