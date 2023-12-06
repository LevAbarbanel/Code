<%@ Page Title="" Language="C#" MasterPageFile="~/LevCode.Master" AutoEventWireup="true" CodeBehind="P3Python.aspx.cs" Inherits="LevCodMas.P3Python" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/pythoncss.css" />
    <script defer="defer" src="script/pythonjs.js"></script>
    <style>
        body {
            color: darkslategrey;
        }
        .bot {
            margin-top: 560px;
            margin-right: 760px;
            position: absolute;
            background-color: lightgreen;
            color: forestgreen;
            width: 150px;
            border-radius: 12px;
            
        }
        p,h2 {
            text-align: right;
            margin-left: 800px;
        }
        .co {
            font-family: inherit;
            font-size: 100%;
        }
        .ths {
            text-align: left;
            margin-left: 260px;
            margin-top: 50px;
            font-size: 28px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="co"> </div>

    <h3 class="ths">התנסו</h3>
    <textarea  id="code" class="co" placeholder="Write your Python code here..." style="float: left; resize:none; height: 495px; width:300px;  direction: ltr;">print('hello World')</textarea>
    <button class="bot" onclick="cher()"><a href="#">הרץ</a></button>
    <h2>שפת Python</h2>
    <p>
        פייתון (באנגלית: Python) היא שפת תכנות עילית דינמית למטרות כלליות מהנפוצות ביותר, 
        ומדורגת באופן עקבי כאחת משפות התכנות הפופולריות 
        ביותר פייתון תוכננה תוך שימת דגש על קריאוּת 
        הקוד, וכוללת מבנים המיועדים 
        לאפשר ביטוי של תוכניות מורכבות בדרך קצרה וברורה. אחד המאפיינים הבולטים בתחביר השפה הוא השימוש בהזחה 
        להגדרת בלוקים של קוד (ללא שימוש בסוגריים או במילים שמורות לצורך כך, כמו ברוב השפות הנפוצות).
    </p>
    <br /><br /><br />
    <h2>מקור השם</h2>
    <p>
        שם השפה "פייתון" נבחר כמחווה לקבוצה הקומית הבריטית 
        "מונטי פייתון" עקב כך שחידו ואן רוסום, יוצר השפה, היה מעריץ שלהם, אזכורים למונטי פייתון מופיעים
        גם בקוד ובתרבות של פייתון. לדוגמה, המשתנים
        המטא-תחביריים שנמצאים בספרות של שפת פייתון הם "spam" ו"eggs", כאזכור לבדיחה שמופיעה בפרקים הראשונים של מונטי פייתון, במקום "foo" ו"bar" שנמצאים בשימוש ברוב שפות התכנות[17]. בנוסף, התיעוד הרשמי של פייתון מכיל אזכורים שונים לבדיחות של מונטי
        פייתון..
    </p>
    <script>
        document.getElementById('co').innerHTML = "<py-script> print('hello World') </py-script>";
        function cher() {
            var code = document.getElementById('code').value;
            document.getElementById('co').innerHTML = "<py-script>" + code + "</py-script>";

        }
        
    </script>
    
</asp:Content>
