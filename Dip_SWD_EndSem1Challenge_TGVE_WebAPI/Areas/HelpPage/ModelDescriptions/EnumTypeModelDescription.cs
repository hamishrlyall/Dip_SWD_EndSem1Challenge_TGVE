using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace Dip_SWD_EndSem1Challenge_TGVE_WebAPI.Areas.HelpPage.ModelDescriptions
{
    public class EnumTypeModelDescription : ModelDescription
    {
        public EnumTypeModelDescription()
        {
            Values = new Collection<EnumValueDescription>();
        }

        public Collection<EnumValueDescription> Values { get; private set; }
    }
}