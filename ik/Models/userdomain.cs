using System.DirectoryServices.AccountManagement;

namespace ik.Models
{
    [DirectoryRdnPrefix("CN")]
    [DirectoryObjectClass("user")]
    public class UserPrincipalExtended : UserPrincipal
    {
        public UserPrincipalExtended(PrincipalContext context)
            : base(context)
        {
        }

        public UserPrincipalExtended(PrincipalContext context, string samAccountName, string password, bool enabled)
            : base(context, samAccountName, password, enabled)
        {
        }

        //[DirectoryProperty("title")]
        //public string Title
        //{
        //    get
        //    {
        //        if (ExtensionGet("title").Length != 1)
        //            return null;

        //        return (string)ExtensionGet("title")[0];
        //    }

        //    set
        //    {
        //        ExtensionSet("title", value);
        //    }
        //}

        [DirectoryProperty("pager")]
        public string Pager
        {
            get
            {
                if (ExtensionGet("pager").Length != 1)
                    return null;

                return (string)ExtensionGet("pager")[0];
            }

            set
            {
                ExtensionSet("pager", value);
            }
        }

        public static new UserPrincipalExtended FindByIdentity(PrincipalContext context, string identityValue)
        {
            return (UserPrincipalExtended)FindByIdentityWithType(context, typeof(UserPrincipalExtended), identityValue);
        }

        public static new UserPrincipalExtended FindByIdentity(PrincipalContext context, IdentityType identityType, string identityValue)
        {
            return (UserPrincipalExtended)FindByIdentityWithType(context, typeof(UserPrincipalExtended), identityType, identityValue);
        }
    }
}