<%@ Page Title="" Language="C#" MasterPageFile="~/LevCode.Master" AutoEventWireup="true" CodeBehind="P7GamesPhy.aspx.cs" Inherits="LevCodMas.P7GamesPhy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
          display: block;
          margin-left: auto;
          margin-right: auto;
        }
        .answer {
            display: none;

        }
        input {
            font-size: 18px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
         <img src="pic/Car.png" id="car" style="position: relative; margin-left: 1510px; width:15%;"/> 
      <br /><br /><br /><br /><br /><br />
         <img src="pic/Sir.png" width="1200" style=" margin-top: -240px; position:absolute; margin-right: 800px;" />
      <h3  class="abc" style="margin-top: -160px; position: absolute; margin-right: 976px; font-size: 34px" id="al" >A</h3>
      <h3 class="abc" style="margin-top: -160px; position: absolute; margin-right: 976px; font-size: 34px" id="bl" >B</h3>
      <h3  class="abc" style="margin-top: -160px; position: absolute; margin-right: 976px; font-size: 34px " id="cl" >C</h3>

  </div>

    <div dir="ltr" style="text-align: center">
             <div>
                 iX	   <input  id="a1"  /> 

             </div>
         <br />
             <div>
                fX	   <input  id="a2"/> 

            </div>
         <br />
             <div>
                ∆X	   <input  id="a3" /> 

            </div>
        <br />
             <div>
                sum	  <input  id="a4" /> 

            </div>
    </div>
    <button onclick="check()" style="width: 200px;  height: 50px; background-color: lightgreen;" >הגשה</button>
    <button onclick="window.location.href=window.location.href" style="float: inherit; margin-top: 20px"><img src="pic/ref.png" style="  width: 40px"/></button>
    <h2 id="output"> </h2>
    <br /><br /><br /><br />
    <script>
        var iX = Math.floor(Math.random() * (14)) + 2;;
        var mX = Math.floor(Math.random() * (14)) + 2;;
        var fX = Math.floor(Math.random() * (14)) + 2;;
        while (fX > iX) {
            var iX = Math.floor(Math.random() * (14)) + 2;;
            var fX = Math.floor(Math.random() * (14)) + 2;;

        }
        iA = 8 - iX;
        iB = 8 - mX;
        iC = 8 - fX;
        var carElement = document.getElementById('car');
        var currentMarginLeft = parseInt(carElement.style.marginLeft || 0, 10);
        carElement.style.marginLeft = (currentMarginLeft - 72 * (iX - 0.25)) + 'px';

        var aElement = document.getElementById('al');
        var cMr1 = parseInt(aElement.style.marginRight || 0, 10);
        aElement.style.marginRight = (cMr1 + 67 * (iX - 0.148)) + 'px';

        var bElement = document.getElementById('bl');
        var cMr2 = parseInt(bElement.style.marginRight || 0, 10);
        bElement.style.marginRight = (cMr2 + 67 * (mX - 0.148)) + 'px';

        var cElement = document.getElementById('cl');
        var cMr3 = parseInt(cElement.style.marginRight || 0, 10);
        cElement.style.marginRight = (cMr3 + 67 * (fX - 0.148)) + 'px';
        if (iB > iA) {
            carElement.style.transform = 'scaleX(-1)';
            carElement.style.marginLeft = (currentMarginLeft - 72 * (iX - 0.25)) -148 + 'px';

        }
        function check() {
            var a1 = document.getElementById('a1').value;
            var a2 = document.getElementById('a2').value;
            var a3 = document.getElementById('a3').value;
            var a4 = document.getElementById('a4').value;
            var out = document.getElementById('output').innerHTML = '';
            var del = Math.abs(iC - iA);
            var sum = Math.abs(iB-iA) + Math.abs(iC-iB);
            if (a1 != "" && a2 != "" && a3 != "" && a4 != "") {

                if (a1 == iA) {
                    document.getElementById('output').innerHTML += 'נקודה התחלתית נכונה, ';
                }
                else {
                    document.getElementById('output').innerHTML += 'נקודה התחלתית לא נכונה, ';
                }
                if (a2 == iC) {
                    document.getElementById('output').innerHTML += 'נקודה סופית נכונה, ';
                }
                else {
                    document.getElementById('output').innerHTML += 'נקודה סופית לא נכונה, ';
                }
                if (a3 == del) {
                    document.getElementById('output').innerHTML += 'העתק נכון, ';
                }
                else {
                    document.getElementById('output').innerHTML += 'העתק לא נכון, ';
                }
                if (a4 == sum) {
                    document.getElementById('output').innerHTML += 'דרך נכונה. ';
                }
                else {
                    document.getElementById('output').innerHTML += 'דרך לא נכונה.  ';
                }


            }

            else {
                document.getElementById('output').innerHTML = 'יש למלא את כל התשובות לפני ההגשה';

            }
        }
        
    </script>
</asp:Content>
