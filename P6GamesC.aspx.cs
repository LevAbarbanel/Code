using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LevCodMas
{
    public partial class P6Games : System.Web.UI.Page
    {
        public Random random = new Random();
        public int randomtemp1;
        public int randomtemp2;
        public int randomtemp3;
        public int randomtemp4;
        public int randomtemp5;
        public int randomtemp6;
        public int randomtempQ;

        protected void Page_Load(object sender, EventArgs e)
        {
            randomtempQ = random.Next(-2000, 2322);
            randomtemp1 = random.Next(-1000, 1322);
            randomtemp2 = random.Next(-500, 2222);
            while (randomtemp1 > randomtemp2)
            {
                randomtemp1 = random.Next(-1000, 1322);
            }
            randomtemp3 = random.Next(-1000, 1322);
            randomtemp4= random.Next(-500, 2222);
            while (randomtemp3 > randomtemp4)
            {
                randomtemp3 = random.Next(-1000, 1322);
            }
            randomtemp5 = random.Next(-1000, 1322);
            randomtemp6 = random.Next(-500, 2222);
            while (randomtemp5 > randomtemp6)
            {
                randomtemp5 = random.Next(-1000, 1322);
            }
        }
    }
}