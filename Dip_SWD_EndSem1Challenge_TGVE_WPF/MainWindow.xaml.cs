using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net.Http;
using Dip_SWD_EndSem1Challenge_TGVE_WPF.Models;
using Newtonsoft.Json;
using System.Net.Http.Headers;

namespace Dip_SWD_EndSem1Challenge_TGVE_WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        HttpClient client = new HttpClient();

        public MainWindow()
        {
            InitializeComponent();
        }

        public static async Task<List<dynamic>> GetEntityAsync(string path)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri("http://dipswdendsem1challenge20180622014556.azurewebsites.net/");

            string product = "";
            HttpResponseMessage response = await client.GetAsync(path);
            if (response.IsSuccessStatusCode)
            {
                product = await response.Content.ReadAsStringAsync();
            }
            var ListOfProducts = JsonConvert.DeserializeObject<List<dynamic>>(product);

            return ListOfProducts;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        { 
        private async void TourEventsButton_Click(object sender, RoutedEventArgs e)
        {
            client.BaseAddress = new Uri("http://dipswdendsem1challenge20180622014556.azurewebsites.net/");

            HttpResponseMessage httpResponseMessage = await client.GetAsync("posts");

            var content = await httpResponseMessage.Content.ReadAsStringAsync();

            var  tourEvents = JsonConvert.DeserializeObject<List<TourEvent>>(content);

            TourEvent p = new TourEvent
            {
                TourName = "North",
                EventMonth = "Jan",
                EventDay = 9,
                EventYear = 2016,
                Fee = 200
            };
            TourEvent p2 = new TourEvent
            {
                TourName = "North",
                EventMonth = "Feb",
                EventDay = 13,
                EventYear = 2016,
                Fee = 225,
            };

            string json = JsonConvert.SerializeObject(p);

            TourEventsList.Content = json;
        }
    }
}
