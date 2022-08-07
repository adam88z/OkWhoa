<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucAboutMe.ascx.vb" Inherits="masterpages_AboutMe" %>

<script>
     $(document).ready(function () {

         $('#aboutmecontent').load('aboutme/aboutme_Active.html #aboutMeContent');


         $('#aboutmeHome').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_Active.html #aboutMeContent',
              function (responseText, textStatus, XMLHttpRequest) {
                  if (textStatus == "success") {
                      modalAjax();
                  }
                  if (textStatus == "error") {
                      alert(modalstring);
                  }
              });
             preventDefault();
         });

         $('#aboutmeMusic').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_Music.html #aboutMeContent',
              function (responseText, textStatus, XMLHttpRequest) {
                  if (textStatus == "success") {
                      modalAjax();
                  }
                  if (textStatus == "error") {
                      alert(modalstring);
                  }
              });
             preventDefault();
         });

         $('#aboutmeVideo').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_Video.html #aboutMeContent',
                 function (responseText, textStatus, XMLHttpRequest) {
                     if (textStatus == "success") {
                         modalAjax();
                     }
                     if (textStatus == "error") {
                         alert(modalstring);
                     }
                 });
             preventDefault();
         });



         $('#aboutmeTrees').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_Trees.html #aboutMeContent',
              function (responseText, textStatus, XMLHttpRequest) {
                  if (textStatus == "success") {
                      modalAjax();
                  }
                  if (textStatus == "error") {
                      alert(modalstring);
                  }
              });
             preventDefault();
         });

         $('#aboutmeBackyard').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_Backyard.html #aboutMeContent',
              function (responseText, textStatus, XMLHttpRequest) {
                  if (textStatus == "success") {
                      modalAjax();
                  }
                  if (textStatus == "error") {
                      alert(modalstring);
                  }
              });
             preventDefault();
         });

         $('#aboutmeHomeImprovement').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_HomeImprovement.html #aboutMeContent',
              function (responseText, textStatus, XMLHttpRequest) {
                  if (textStatus == "success") {
                      modalAjax();
                  }
                  if (textStatus == "error") {
                      alert(modalstring);
                  }
              });
             preventDefault();
         });

         $('#aboutmeMilitary').click(function () {
             $('#aboutmecontent').load('aboutme/aboutme_Military.html #aboutMeContent',
              function (responseText, textStatus, XMLHttpRequest) {
                  if (textStatus == "success") {
                      modalAjax();
                  }
                  if (textStatus == "error") {
                      alert(modalstring);
                  }
              });
             preventDefault();
         });

         //this function, "modalAjax" is the single function that all the above ajax calls will run upon a successful ajax response.
         function modalAjax() {
             $("img").on('click', function () {
                 $("#mymodal").show();
                 var meeks = $(this).attr('src');
                 $("#innerModalImage").attr('src', meeks);

             })
             //$(this).mousedown(function() {
             //    $("#mymodal").hide();
             //});

             $(document).mouseup(function (e) {
                 if (!$("#myInnerModal").is(e.target) && $("#myInnerModal").has(e.target).length === 0) {
                     $('#mymodal').hide();
                 }
             })

         };


    //$("img").on('click', function () {
    //    var wasclicked = $(this).attr('src');
    //    alert('User clicked on "foo."' + wasclicked);
    //});


    //function innermodal(x) {

    //              var modalstring = "<div  id='innermodal' ><img src='";
    //              var modalstring = modalstring += $(x).attr('src');
    //              var modalstring = modalstring += "' />";
    //              alert(modalstring);
    //          }

    //          innermodal();

     }); //end document on ready function

</script>


                            <a  id="aboutmeHome"                 href="#">Home</a>
                            <a  id="aboutmeMusic"                href="#">Music</a>
                            <a  id="aboutmeVideo"                href="#">Video</a>
                            <a  id="aboutmeTrees"                href="#">Tree Climbing</a>
                            <a  id="aboutmeBackyard"             href="#">My Backyard</a>
                            <a  id="aboutmeHomeImprovement"      href="#">Home Improvement</a>
                            <a  id="aboutmeMilitary"             href="#">Military Service</a>
                            
                       
