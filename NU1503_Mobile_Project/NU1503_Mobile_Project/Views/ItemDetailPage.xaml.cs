using NU1503_Mobile_Project.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace NU1503_Mobile_Project.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}