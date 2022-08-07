<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucMenuDesign.ascx.vb" Inherits="UserControls_ucMenuDesign" %>


 <script>
     $(document).ready(function () {

         $('#designcontent').load('design/design_active.html #content');


         $('#designhome').click(function () {
             $('#designcontent').load('design/design_active.html #content');
             preventDefault();
         });

         $('#designbanners').click(function () {
             $('#designcontent').load('design/design_banners.html #content');
             preventDefault();
         });

         $('#designprint').click(function () {
             $('#designcontent').load('design/design_print.html #content');
             preventDefault();
         });

         $('#designwebsites').click(function () {
             $('#designcontent').load('design/design_websites.html #content');
             preventDefault();
         });

     });

    </script>


                            <a  id="designhome"         class="active" href="#">active</a>
                            <a  id="designbanners"      class="" href="#">Banners</a>
                            <a  id="designprint"        class="" href="#">Print</a>
                            <a  id="designwebsites"     class="" href="#">Websites</a>
                            



