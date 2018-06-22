using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Windows;
using Newtonsoft.Json;
using Dip_SWD_EndSem1Challenge_ClassLib;
using static Dip_SWD_EndSem1Challenge_ClassLib.TourEvents;

namespace Dip_SWD_EndSem1Challenge_ClassLib
{
    public partial class DataAccess
    {
        public HttpClient client = new HttpClient();
        public HttpResponseMessage ResponseMessage;

        public DataAccess()
        {
            client.BaseAddress = new Uri("http://dipswdendsem1challenge20180622014556.azurewebsites.net/");
        }

        public async Task<List<TourEvent>> AllTourEvents()
        {
            ResponseMessage = await client.GetAsync("TourEvents/AllTourEvents");
            return JsonConvert.DeserializeObject<List<TourEvent>>(await ResponseMessage.Content.ReadAsStringAsync());
        }
        public async Task <Bookings> GetBookings(string TourName)
        {
            return JsonConvert.DeserializeObject<Bookings>(await ResponseMessage.Content.ReadAsStringAsync());
        }
    }
}
