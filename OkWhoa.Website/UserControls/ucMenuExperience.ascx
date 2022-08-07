<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucMenuExperience.ascx.vb" Inherits="UserControls_ucMenuExperience" %>
<%--Load content from existing ASP pages and display on this page--%>
   <script>
       $(document).ready(function () {
           
           $('#pageContent').load('experience/experience_RollsRoyce.html #experiencecontent');
               

           

           $('#RollsRoyce').click(function () {
               $('#pageContent').load('experience/experience_RollsRoyce.html #experiencecontent');
               preventDefault();
           });

           $('#KeystoneCollections').click(function () {
               $('#pageContent').load('experience/experience_Keystone.html #experiencecontent');
               preventDefault();
           });

           $('#ASCE').click(function () {
               $('#pageContent').load('experience/experience_ASCE.html #experiencecontent');
               preventDefault();
           });

           $('#BHP').click(function () {
               $('#pageContent').load('experience/experience_BHP.html #experiencecontent');
               preventDefault();
           });

           $('#ALCOA').click(function () {
               $('#pageContent').load('experience/experience_Alcoa.html #experiencecontent');
               preventDefault();
           });

           $('#UPMC').click(function () {
               $('#pageContent').load('experience/experience_UPMC.html #experiencecontent');
               preventDefault();
           });

           $('#Pitt').click(function () {
               $('#pageContent').load('experience/experience_Pitt.html #experiencecontent');
               preventDefault();
           });

           $('#HTA').click(function () {
               $('#pageContent').load('experience/experience_HTA.html #experiencecontent');
               preventDefault();
           });

           $('#Unison').click(function () {
               $('#pageContent').load('experience/experience_Unison.html #experiencecontent');
               preventDefault();
           });

           $('#Interior').click(function () {
               $('#pageContent').load('experience/experience_Interior.html #experiencecontent');
               preventDefault();
           });

           $('#USAF').click(function () {
               $('#pageContent').load('experience/experience_USAF.html #experiencecontent');
               preventDefault();
           });



           
       });

    </script>
<div class="submenuTitle">Work History </div>
<%--<nav class="nav flex-column">--%>
                            <a  id="RollsRoyce"             class="nav-link active" href="#">Rolls Royce</a>
                            <a  id="KeystoneCollections"    class="nav-link" href="#">Keystone Collections</a>
                            <a  id="ASCE"                   class="nav-link" href="#">American Society of Civil Engineers</a>
                            <a  id="BHP"                    class="nav-link" href="#">Big Heart Pet</a>
                            <a  id="ALCOA"                  class="nav-link" href="#">ALCOA</a>
                            <a  id="UPMC"                   class="nav-link" href="#">UPMC</a>
                            <a  id="Pitt"                   class="nav-link" href="#">University of Pittsburgh Department of Surgery</a>
                            <a  id="HTA"                    class="nav-link" href="#">High Technology Associates</a>
                            <a  id="Unison"                 class="nav-link" href="#">Unison Technology</a>
                            <a  id="Interior"               class="nav-link" href="#">Interior Energy Corporation</a>
                            <a  id="USAF"                   class="nav-link" href="#">United States Air Force</a>

                        <%--</nav>--%>

