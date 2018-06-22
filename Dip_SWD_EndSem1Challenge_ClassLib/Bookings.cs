using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dip_SWD_EndSem1Challenge_ClassLib
{
    public class Bookings
    {

        public class Booking
        {
            public int ClientID { get; set; }
            public string TourName { get; set; }
            public string EventMonth { get; set; }
            public int EventDay { get; set; }
            public int EventYear { get; set; }
            public int Payment { get; set; }
            public DateTime DateBooked { get; set; }

            public List<Booking> BookingsLst { get; set; }
        }
    }
}
