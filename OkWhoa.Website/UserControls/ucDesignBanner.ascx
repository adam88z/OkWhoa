<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucDesignBanner.ascx.vb" Inherits="ucDesignBanner" %>


    <!-- this creates boxes in the space above the BODY (body top margin = 230px) -->


<div style="width:90%; max-width:1400px; background-color:#FCF8F3;height:200px;margin:0 auto; position:relative;">



<%-- <a href="/default.asp" ></a>--%>
  <div class="clouds" style="background-color:pink;overflow:hidden;top:6%;left:1%;">
    <div id="cycler1" class="cycler">
        <img src="images/layout/home_07.jpg" alt="&nbsp;"  class="active" />
        <img src="images/layout/home_01.jpg" alt="&nbsp;" />
        <img src="images/layout/home_02.jpg" alt="&nbsp;" />
        <img src="images/layout/home_03.jpg" alt="&nbsp;" />
        <img src="images/layout/home_04.jpg" alt="&nbsp;" />
        <img src="images/layout/home_05.jpg" alt="&nbsp;" />
        <img src="images/layout/home_06.jpg" alt="&nbsp;" />
        <img src="images/layout/home_08.jpg" alt="&nbsp;" />
    </div>
	<!--<div class="yoink testAnimation" >Home</div> -->
  </div>


<%--<a href="/urls/default.asp" ></a>--%>
  <div class="clouds" style="background-color:pink;overflow:hidden;top:1.5%; left:22%;">
    <div id="cycler2" class="cycler">
        <img src="images/layout/web_development_09.jpg" alt="&nbsp;"  class="active" />
        <img src="images/layout/web_development_01.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_02.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_03.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_04.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_05.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_06.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_07.jpg" alt="&nbsp;" />
        <img src="images/layout/web_development_08.jpg" alt="&nbsp;" />

    </div>
  </div>


<%--<a href="/portfolio_final/index.htm"></a>--%>
  <div class="clouds" style="background-color:#FFE0A8;  overflow:hidden;  top:3%; left:42%;">
    <div id="cycler3" class="cycler">
        <img src="images/layout/media_09.jpg" alt="&nbsp;" class="active" /> 
        <img src="images/layout/media_01.jpg" alt="&nbsp;" />
        <img src="images/layout/media_02.jpg" alt="&nbsp;" />
        <img src="images/layout/media_03.jpg" alt="&nbsp;" />
        <img src="images/layout/media_04.jpg" alt="&nbsp;" />
        <img src="images/layout/media_05.jpg" alt="&nbsp;" />
        <img src="images/layout/media_06.jpg" alt="&nbsp;" />
        <img src="images/layout/media_07.jpg" alt="&nbsp;" />
        <img src="images/layout/media_08.jpg" alt="&nbsp;" />
    </div>
    <div class="yoink testAnimation" >Photography</div><!---->
  </div>


<%--<a href="/design_examples/examples_banners.asp"></a>--%>
  <div class="clouds" style="background-color:#EAFFAA; overflow:hidden;top:7%; left:62%;">
    <div id="cycler4" class="cycler">
        <img src="images/layout/design_13.jpg" alt="&nbsp;" class="active" />
        <img src="images/layout/design_01.jpg" alt="&nbsp;" />
		<img src="images/layout/design_02.jpg" alt="&nbsp;" />
        <img src="images/layout/design_03.jpg" alt="&nbsp;" />
        <img src="images/layout/design_04.jpg" alt="&nbsp;" />
        <img src="images/layout/design_05.jpg" alt="&nbsp;" />
        <img src="images/layout/design_06.jpg" alt="&nbsp;" />
        <img src="images/layout/design_07.jpg" alt="&nbsp;" />
        <img src="images/layout/design_08.jpg" alt="&nbsp;" />
        <img src="images/layout/design_09.jpg" alt="&nbsp;" />
        <img src="images/layout/design_10.jpg" alt="&nbsp;" />
        <img src="images/layout/design_11.jpg" alt="&nbsp;" />
		<img src="images/layout/design_12.jpg" alt="&nbsp;" />
		<img src="images/layout/design_14.jpg" alt="&nbsp;" />
    </div>
  </div>


<%--<a href="/references/references.asp"></a>--%>
  <div class="clouds" style="background-color:#B9FFE4;overflow:hidden;top:2.5%; left:82%; ">
    <div id="cycler5" class="cycler">
        <img src="images/layout/analysis_07.jpg" alt="&nbsp;" class="active" /> 
        <img src="images/layout/analysis_06.jpg" alt="&nbsp;" />
        <img src="images/layout/analysis_08.jpg" alt="&nbsp;" />
        <img src="images/layout/analysis_09.jpg" alt="&nbsp;" />
        <img src="images/layout/analysis_02.jpg" alt="&nbsp;" />
        <img src="images/layout/analysis_03.jpg" alt="&nbsp;" />
        <img src="images/layout/analysis_04.jpg" alt="&nbsp;" />
        <img src="images/layout/analysis_05.jpg" alt="&nbsp;" />
    </div>
  </div>


</div>
<!-- end container div -->

  <!-- the following script uses the jQuery script to fade a stack of images in and out http://www.simonbattersby.com/blog/simple-jquery-image-crossfade/-->
<script type="text/javascript">
    function cycleImages(container) {
        var $active = container.find('.active');
        var $next = ($active.next().length > 0) ? $active.next() : container.find('img:first');
        $next.css('z-index', 2);//move the next image up the pile

        $active.fadeOut(4500, function () {//fade out the top image 
            $active.css('z-index', 1).show().removeClass('active');//reset the z-index and unhide the image
            $next.css('z-index', 3).addClass('active');//make the next image the top one
        });
    }

    $(document).ready(function () {
        setInterval(function () { cycleImages($('#cycler1')) }, 7500);
        setInterval(function () { cycleImages($('#cycler2')) }, 6850);
        setInterval(function () { cycleImages($('#cycler3')) }, 7050);
        setInterval(function () { cycleImages($('#cycler4')) }, 5800);
        setInterval(function () { cycleImages($('#cycler5')) }, 6200);
        /*setInterval(function () { cycleImages($('#cycler6')) }, 4200);
        setInterval(function () { cycleImages($('#cycler7')) }, 4800);
        setInterval(function () { cycleImages($('#cycler8')) }, 6800);*/ /* cycler 6 7 and 8 appear to be unused.*/
    })
</script>





