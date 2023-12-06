<%@ Page Title="" Language="C#" MasterPageFile="~/LevCode.Master" AutoEventWireup="true" CodeBehind="P6GamesC.aspx.cs" Inherits="LevCodMas.P6Games" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tt {
              margin-left: auto;
              margin-right: auto;
              width: 600px;
              height: 300px;
              border: 1px solid black;

        }
        .tr2 {
            text-align: center;
            font-size: 34px;
            border: 1px solid black;
            color: black;
            border: 1px solid black;

        }
        .td2 {
            text-align: center;
            font-size: 28px;
            border: 1px solid black;
            background-color: #e5e5e5;
            color: black;
            border: 1px solid black;

        }
        .th2 {
            border: 1px solid black;
            background-color: #cacaca;

        }
        div{
            font-size: 28px;
        }
        input {
            font-size: 18px;

        }
        h3 {
            font-size: 28px;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <table class="tt">
        <tr class="tr2">
            <th class="th2">חומר</th>
            <th class="th2">טמפ' התכה</th>
            <th class="th2">טמפ' רתיחה</th>
        </tr>
        <tr class="tr2">
           <td class="td2">לבינטיון</td>
           <td class="td2" id="t1" dir="ltr"><% =randomtemp1 %></td>
            <td class="td2" id="t2" dir="ltr"><% =randomtemp2 %></td>
        </tr>
        <tr class="tr2">
           <td class="td2">אנפיסי</td>
           <td class="td2" id="t3" dir="ltr"><% =randomtemp3 %></td>
            <td class="td2" id="t4" dir="ltr"><% =randomtemp4 %></td>
        </tr>
        <tr class="tr2">
           <td class="td2">טריפי </td>
           <td class="td2" id="t5" dir="ltr"><% =randomtemp5 %></td>
            <td class="td2" id="t6" dir="ltr"><% =randomtemp6 %></td>
        </tr>
    </table>
    <br />
    <h3 dir="ltr">  סמנו מהו מצב הצבירה של כל חומר בטמפרטורה </h3>

    <h3> Celcius <% =randomtempQ %>° </h3>
    <div>
        לבנטיון   <input  id="a1" placeholder="מוצק/נוזל/גז"/> 
    </div>
    <div>
        אנפיסי   <input id="a2" placeholder="מוצק/נוזל/גז" /> 

    </div>
    <div>
        טריפי שליפ	   <input  id="a3" placeholder="מוצק/נוזל/גז" /> 

    </div>
    <br />
    <button onclick="check()" style="width: 200px;  height: 50px; background-color: lightgreen;" >הגשה</button>

  
                <button onclick="window.location.href=window.location.href" style="float: inherit;"><img src="pic/ref.png" style="  width: 40px"/></button>

    <h2 style="display: none;" id="temp"><% =randomtempQ %></h2>
    <h2 id="answer1"></h2>

  <script>
      var t1 = parseInt(document.getElementById('t1').innerHTML);
      var t2 = parseInt(document.getElementById('t2').innerHTML);
      var t3 = parseInt(document.getElementById('t3').innerHTML);
      var t4 = parseInt(document.getElementById('t4').innerHTML);
      var t5 = parseInt(document.getElementById('t5').innerHTML);
      var t6 = parseInt(document.getElementById('t6').innerHTML);
      var temp = parseInt(document.getElementById('temp').innerHTML);
      
      function check() {
          
          var a1 = document.getElementById('a1').value;
          var a2 = document.getElementById('a2').value;
          var a3 = document.getElementById('a3').value;
          var sumf = 3;
          var sumt = 0;
          if (a1 != "" && a2 != "" && a3 != "") {
              if (a1 == "גז" && temp > t2) {
                  sumt++;
                    } else {
                  if (a1 == "נוזל" && temp > t1 && temp < t2) {
                      sumt++;
                  } else {
                      if (a1 == "מוצק") {
                          sumt++;
                      } else {
                          sumf--;                      }
                  }
              }
              if (a2 == "גז" && temp > t4) {
                  sumt++;
              } else {
                  if (a2 == "נוזל" && temp > t3 && temp < t4) {
                      sumt++;
                  } else {
                      if (a2 == "מוצק") {
                          sumt++;
                      } else {
                          sumf--;                      }
                  }
              }
              if (a3 == "גז" && temp > t6) {
                  sumt++;
              } else {
                  if (a2 == "נוזל" && temp > t5 && temp < t6) {
                      sumt++;
                  } else {
                      if (a2 == "מוצק") {
                          sumt++;
                      } else {
                          sumf--;
                      }
                  }
              }
              if (sumt == 3) {
                  document.getElementById('answer1').innerHTML = 'וואלה יש פה עסק עם תותח.ית 3/3';

              }
              else {
                  document.getElementById('answer1').innerHTML = 'טוב, אף אחד לא מושלם... '+sumf+'/3';

              }
          }
          else {
              document.getElementById('answer1').innerHTML = 'יש למלא את כל התשובות לפני ההגשה';

          }
      }
  </script>


</asp:Content>
