using System;
using System.Reflection;

namespace Dip_SWD_EndSem1Challenge.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}