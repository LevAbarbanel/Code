<%@ Page Title="" Language="C#" MasterPageFile="~/LevCode.Master" AutoEventWireup="true" CodeBehind="P2Html.aspx.cs" Inherits="LevCodMas.P2Html" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        div {
            text-align: right;
            color: darkslategrey;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bod">
         <br />
     <br />
        <h2 style="text-align: left; margin-left: 250px">התנסו!</h2>
         <iframe id="output" class="ou" style="float: left; width: 500px; height: 500px; background-color: white;"></iframe>
     <textarea id="code" class="co" placeholder="Write your HTML code here..." style="float: left; height: 495px; width:300px;  direction: ltr; "></textarea>
     <h2>שפת HTML</h2>
     <p style="margin-left: 910px; ">
         HTML (ראשי
         תיבות באנגלית: Hyper Text Markup Language; בעברית: שְׂפַת סִימָנֵי עֲרִיכָה לְתַמְלִיל-עָל[1]) שפת תגיות לתצוגה ועיצוב 
         דפי אינטרנט ותוכן 
         לתצוגה בדפדפן. 
         זו שפת התגיות המרכזית בעולם האינטרנט, המהווה שלד למרבית עמודי התוכן באינטרנט. השפה
         מאפשרת עיצוב תוכן בצורה מהירה, קלה ללימוד באופן יחסי וקלה לכתיבה.
     </p>
     <br /><br />
     <h2>היסטוריה</h2>
        <p style="margin-left: 910px;">
            "האבא" (המקור) של HTML הוא תקן שנקרא SGML המיועד להעברת מסמכים אלקטרוניים וניהול מסמכים.
            זהו תקן בעל עושר תחבירי וגמישות, אבל זו הייתה ונשארה בעייתו הגדולה ביותר. רק מתכנת בעל רקע וניסיון יכול 
            לעצב מסמך שיעמוד בחוקי התקן. לקחו מ-SGML מספר הגדרות ותגיות, הגדירו מספר מבנים פשוטים ויצרו את HTML, שהשימוש 
            בו התפשט במהרה. HTML נכתבת בצורה של תגיות, התחומות בסוגריים משולשים. הדפדפן איננו מציג תגיות אלו, אלא משתמש בהן
            כדי לפרש כיצד להציג את תוכן הדף. 
        </p>
        <h2>יצירת דפי HTML </h2>
        <p style="margin-left: 910px; ">
            דפי HTML נוצרים לרוב בצורה אוטומטית
            על ידי מערכות ניהול תוכן, אולם אפשר ליצור אותם גם בעזרת כל עורך 
            טקסט (אפילו פנקס הרשימות של מערכת חלונות). ישנם גם לא מעט עורכי טקסט שמיועדים לעריכת דפי HTML
            . יש גם אפשרות לערוך דף HTML כמסמך מלל עשיר בממשק של מעבד תמלילים – 
            אם בתוכנת מעבד תמלילים שיכולה לשמור את תוכנו של המסמך כמסמך HTML ואם זו מערכת ניהול תוכן שמספקת ממשק WYSIWYG לעריכת דפים. 
        </p>
 </div>
 <script>


     var l = document.getElementById('code').innerHTML = "<html>\n\t<head>\n\t  <style>  \n\t   \n\t   \n\t  </style>  \n\t</head >\n\t<body>\n\t   \n\t   \n\t   \n\t</body>\n</html>";
     var codeInput = document.getElementById('code');
     var outputFrame = document.getElementById('output');
     


     codeInput.addEventListener('input', function () {
         var code = codeInput.value;

         var iframeDoc = outputFrame.contentWindow.document;

         iframeDoc.open();
         iframeDoc.write(code);
         iframeDoc.close();
     });

     codeInput.addEventListener('keydown', function (e) {
         if (e.key === 'Tab') {
             e.preventDefault(); 

             var cursorPos = codeInput.selectionStart;

             codeInput.value = codeInput.value.substring(0, cursorPos) + '    ' + codeInput.value.substring(cursorPos);

             codeInput.setSelectionRange(cursorPos + 4, cursorPos + 4);
         }   
     });
     
     
 </script>
</asp:Content>
