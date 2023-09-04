using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class HotelHomePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ViewState["SelectedItems"] = new List<string>();
                ViewState["TotalAmount"] = 0;

                USName.Text = Session["username"] as string;
            }
        }

        protected void btnDosa_Click(object sender, EventArgs e)
        {
            AddToCart("Dosa", 25);
        }

        protected void btnPuri_Click(object sender, EventArgs e)
        {
            AddToCart("Puri", 15);
        }

        protected void btnIdly_Click(object sender, EventArgs e)
        {
            AddToCart("Idly With Vada", 10);
        }

        protected void btnRava_Click(object sender, EventArgs e)
        {
            AddToCart("Rava Idily", 20);
        }

        protected void btnOmlete_Click(object sender, EventArgs e)
        {
            AddToCart("Omlete", 10);
        }

        protected void btnTea_Click(object sender, EventArgs e)
        {
            AddToCart("Tea with Snacks", 10);
        }

        protected void btnBread_Click(object sender, EventArgs e)
        {
            AddToCart("Bread", 30);
        }

        protected void btnNoodles_Click(object sender, EventArgs e)
        {
            AddToCart("Noodles", 20);
        }

        protected void btnuttapam_Click(object sender, EventArgs e)
        {
            AddToCart("Onion Uttapam", 40);
        }

        protected void btnparatha_Click(object sender, EventArgs e)
        {
            AddToCart("Alu Paratha", 50);
        }

        protected void btnSpecialDosa_Click(object sender, EventArgs e)
        {
            AddToCart("Special Dosa", 25);
        }

        protected void btnVegitables_Click1(object sender, EventArgs e)
        {
            AddToCart("Vegetables Dish", 50);
        }

        private void AddToCart(string foodName, int foodPrice)
        {
            // Get the selected food item and its price

            // Add the selected item to the list
            List<string> selectedItems = ViewState["SelectedItems"] as List<string>;
            if (selectedItems == null)
            {
                selectedItems = new List<string>();
            }
            selectedItems.Add(foodName);
            ViewState["SelectedItems"] = selectedItems;

            // Calculate the total amount
            int totalAmount = (int)ViewState["TotalAmount"] + foodPrice;
            ViewState["TotalAmount"] = totalAmount;

            // Update the labels
            lblSelectedItem.Text = "Selected Items: " + string.Join(", ", selectedItems);
            lblTotalAmount.Text = "Total Amount: " + totalAmount + " RS";
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("LoginPage");
        }

        protected void BuyNow_Click(object sender, EventArgs e)
        {
            string TotalAmount = lblTotalAmount.Text;
            string SelectedItem = lblSelectedItem.Text;

            Session["Totalamount"] = TotalAmount;
            Session["SelectedItem"] = SelectedItem;
            string connectionStrings = System.Configuration.ConfigurationManager.ConnectionStrings["HotelStore"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionStrings))
            {

                using (SqlCommand cmd = new SqlCommand("ESP_HotelStore", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "HotelHomePage");
                    cmd.Parameters.AddWithValue("@TotalAmount", TotalAmount);
                    cmd.Parameters.AddWithValue("@SelectedItem", SelectedItem);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            Response.Redirect("PaymentPage.aspx");

            lblTotalAmount.Text = "Total Amount: ";
            lblOrderPlaced.Text = "Order placed successfully!";
        }

        protected void Dosaincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Dosa", 1, 25);
        }

        protected void DosaDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Dosa", -1, 25);
        }

        protected void Purincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Puri", 1, 15);
        }

        protected void PuriDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Puri", -1, 15);
        }

        protected void Idlyincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Idly With Vada", 1, 10);
        }

        protected void IdlyDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Idly With Vada", -1, 10);
        }

        protected void Ravaincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Rava Idily", 1, 20);
        }

        protected void RavaDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Rava Idily", -1, 20);
        }

        protected void Omleteincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Omlete", 1, 10);
        }

        protected void OmleteDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Omlete", -1, 10);
        }

        protected void Teaincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Tea with Snacks", 1, 10);
        }

        protected void TeaDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Tea with Snacks", -1, 10);
        }

        protected void Breadincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Bread", 1, 30);
        }

        protected void BreadDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Bread", -1, 30);
        }

        protected void Noodlesincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Noodles", 1, 20);
        }

        protected void NoodlesDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Noodles", -1, 20);
        }

        protected void uttapamincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Onion Uttapam", 1, 40);
        }

        protected void uttapamDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Onion Uttapam", -1, 40);
        }

        protected void parathaincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Alu Paratha", 1, 50);
        }

        protected void parathaDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Alu Paratha", -1, 50);
        }

        protected void SpecialDosaincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Special Dosa", 1, 25);
        }

        protected void SpecialDosaDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Special Dosa", -1, 25);
        }

        protected void Vegitablesincrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Vegetables Dish", 1, 50);
        }

        protected void VegitablesDecrement_Click(object sender, EventArgs e)
        {
            UpdateQuantity("Vegetables Dish", -1, 50);
        }

        protected void UpdateQuantity(string foodName, int foodPriceIncrement, int foodPrice)
        {
            List<string> selectedItems = ViewState["SelectedItems"] as List<string>;
            if (selectedItems == null)
            {
                selectedItems = new List<string>();
            }

            int quantity = selectedItems.Count(item => item == foodName);

            // Update the selected items list
            for (int i = selectedItems.Count - 1; i >= 0; i--)
            {
                if (selectedItems[i] == foodName)
                {
                    selectedItems.RemoveAt(i);
                }
            }

            for (int i = 0; i < quantity + foodPriceIncrement; i++)
            {
                selectedItems.Add(foodName);
            }

            ViewState["SelectedItems"] = selectedItems;

            // Calculate the total amount
            int totalAmount = (int)ViewState["TotalAmount"] + (foodPriceIncrement * Math.Abs(foodPrice));
            if (totalAmount < 0)
            {
                totalAmount = 0;
            }

            ViewState["TotalAmount"] = totalAmount;

            // Update the labels
            lblSelectedItem.Text = "Selected Items: " + string.Join(", ", selectedItems);
            lblTotalAmount.Text = "Total Amount: " + totalAmount + " RS";
        }
    }
}