<%@ Page Title="" Language="C#" MasterPageFile="~/LevCode.Master" AutoEventWireup="true" CodeBehind="P1Home.aspx.cs" Inherits="LevCodMas.P1Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .co {
            direction: ltr;
            width: 300px;
            height: 400px;
            float: left;
        }
        .ou {
            width: 300px;
            height: 400px;
            float: left;
        }
        h2,h1 {
            text-align: right;
        }
        p {
                text-align: right;
                margin-left: 910px;
                direction: rtl;
        }
        img {
            border-radius: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
    <h1>אתר התכנות של לב</h1>
    <p>
        אתר התכנות של לב עוסק בהסבר והדגמה של שפות תכנות שונות. מטרת האתר היא לגרום לחשיפה של שפות התכנות השונות.
    </p>
    <br /><br /><br />
    <img src="pic/Html.gif" style="float: left; width: 600px; margin-left: 100px;" />
    <h2>HTML</h2>
    <p>
        HTML (ראשי
        תיבות באנגלית: Hyper Text Markup Language; בעברית: שְׂפַת סִימָנֵי עֲרִיכָה לְתַמְלִיל-עָל[1]) שפת תגיות לתצוגה ועיצוב 
        דפי אינטרנט ותוכן 
        לתצוגה בדפדפן. 
        זו שפת התגיות המרכזית בעולם האינטרנט, המהווה שלד למרבית עמודי התוכן באינטרנט. השפה
        מאפשרת עיצוב תוכן בצורה מהירה, קלה ללימוד באופן יחסי וקלה לכתיבה.
        </p>
    <br /><br /><br /><br /><br /><br /><br /><br />
    <img src="pic/Csharp.gif" style="float: left;  width: 600px; margin-left: 100px; "/>
        <h2>C#</h2>

      <p>
      C# (נהוג לבטא C Sharp או
          "סִי שַׁארפּ") היא שפת תכנות עילית
          מרובת-פרדיגמות, מונחית עצמים בעיקרה, המשלבת רעיונות כמו טיפוסיות חזקה,
          אימפרטיביות, הצהרתיות, פונקציונליות, פרוצדורליות וגנריות. 
          השפה פותחה על ידי "מיקרוסופט" בשנת 2000 כחלק מפרויקט דוט נט 
          ותוקננה בשנים 2005 ו-2006 על ידי ארגון התקינה
          Ecma כתקן ECMA-334 ועל ידי ארגון התקינה הבין-לאומי כתקן ISO/IEC 23270:2006.
  </p>
        <br /><br /><br /><br /><br /><br /><br /><br />
    <img src="pic/Python.gif" style="float: left;  width: 600px; margin-left: 100px; "/>
        <h2>Python</h2>

      <p>
      פייתון (באנגלית: Python) היא שפת תכנות עילית דינמית למטרות כלליות מהנפוצות ביותר, 
      ומדורגת באופן עקבי כאחת משפות התכנות הפופולריות 
      ביותר פייתון תוכננה תוך שימת דגש על קריאוּת 
      הקוד, וכוללת מבנים המיועדים 
      לאפשר ביטוי של תוכניות מורכבות בדרך קצרה וברורה. אחד המאפיינים הבולטים בתחביר השפה הוא השימוש בהזחה 
      להגדרת בלוקים של קוד (ללא שימוש בסוגריים או במילים שמורות לצורך כך, כמו ברוב השפות הנפוצות).
  </p>
</asp:Content>

