using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Principal;
using WebAPIBanThuoc.Areas.ADMIN.Models;

namespace WebAPIBanThuoc.Security
{
    public class CustomPrincipal : IPrincipal
    {
        private Account Account;
        public CustomPrincipal(Account account)
        {
            this.Account = account;
            this.Identity = new GenericIdentity(account.MaQT.ToString());
        }

        public IIdentity Identity
        {
            get;
            set;
        }

        public bool IsInRole(string role)
        {
            var roles = role.Split(new char[] { ',' });
            var a = this.Account.Role.RoleName;
            bool kq = roles.Any(r => this.Account.Role.RoleName.Contains(r));
            return kq;
        }
    }
}