using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectI3332
{
    public partial class project : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ajouterbtn_Click(object sender, EventArgs e)
        {
            decimal x = Convert.ToDecimal(ListBox2.Items.Count.ToString());
            if (x <= 4)
            {
                if (ListBox1.SelectedItem.ToString() != "-- Code --")
                {
                    decimal s = Convert.ToDecimal(labelbtn.Text);
                    decimal d = Convert.ToDecimal(textboxbtn.Text);
                    if (ListBox2.Items.Contains(ListBox1.SelectedItem))
                    {
                        s = d;
                    }
                    else
                    {
                        s += d;
                        labelbtn.Text = s.ToString();

                        if (s <= 15)
                        {
                            ListBox2.Items.Remove("-- Code --");
                            ListBox2.Items.Insert(0, string.Format(ListBox1.Text + " admet le nombre de credit " + labelbtn.Text));
                            ListBox2.Items.Insert(0, string.Format("-- Code --"));
                        }
                        else
                        {
                            labelbtn.Text = "number is Greater then 15";
                        }
                    }
                }
            }
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            decimal s = Convert.ToDecimal(labelbtn.Text);
            decimal d = Convert.ToDecimal(textboxbtn.Text);

            if (ListBox2.SelectedItem.ToString() != "-- Code --")
            {
                ListBox2.Items.Remove(ListBox2.SelectedItem);
                s -= d;
                labelbtn.Text = s.ToString();
            }
        }

        protected void deleteallbtn_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Clear();
            ListBox2.Items.Insert(0, string.Format("-- Code --"));
            decimal s = 0;
            labelbtn.Text = s.ToString();
        }

        protected void upbtn_Click(object sender, EventArgs e)
        {
            var index = ListBox2.Items.IndexOf(ListBox2.SelectedItem);
            var prevInd = index - 1;
            var tmp = ListBox2.SelectedItem.Text;
            if (index < 2)
            {
                return;
            }
            ListBox2.Items[index].Text = ListBox2.Items[prevInd].Text;
            ListBox2.Items[prevInd].Text = tmp;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void downbtn_Click(object sender, EventArgs e)
        {
            var index = ListBox2.Items.IndexOf(ListBox2.SelectedItem);
            var next = index + 1;
            var tmp = ListBox2.SelectedItem.Text;
            if (index < 1 || next > ListBox2.Items.Count-1)
            {
                return;
            }
            ListBox2.Items[index].Text = ListBox2.Items[next].Text;
            ListBox2.Items[next].Text = tmp;
        }
    }       
}