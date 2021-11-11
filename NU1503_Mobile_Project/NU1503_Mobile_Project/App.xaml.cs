using NU1503_Mobile_Project.Services;
using NU1503_Mobile_Project.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace NU1503_Mobile_Project
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            MainPage = new AppShell();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
