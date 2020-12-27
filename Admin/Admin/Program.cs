using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Admin
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            try
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                Application.Run(new Menu());
            }
            catch(Exception ex)
            {
                MessageBox.Show("Lỗi: " + ex.ToString(), "Thông báo lỗi", MessageBoxButtons.OK);
            }
           
        }
    }
}
