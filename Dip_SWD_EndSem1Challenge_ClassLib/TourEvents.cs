using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dip_SWD_EndSem1Challenge_ClassLib
{
    public class TourEvents
    {
        public class TourEvent
        {
            public string TourName { get; set; }
            public string EventMonth { get; set; }
            public int EventDay { get; set; }
            public int EventYear { get; set; }
            public int Fee { get; set; }


            public List<TourEvent> TourEventsList { get; set; }
        }
    }
}
