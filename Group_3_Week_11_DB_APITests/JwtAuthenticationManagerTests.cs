using Microsoft.VisualStudio.TestTools.UnitTesting;
using Group_3_Week_11_DB_API;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Group_3_Week_11_DB_API.Tests
{
    [TestClass()]
    public class JwtAuthenticationManagerTests
    {
        [TestMethod()]
        public void AuthenticateTestFail()
        {
            JwtAuthenticationManager manager = new JwtAuthenticationManager("fakekeynotlegit1111!");

            User user = new User
            {
                username = "testuser",
                password = "testpassword"
            };

            var ret = manager.Authenticate(user.username, user.password);

            Assert.IsNull(ret);
        }


        [TestMethod()]
        public void AuthenticateTestPass()
        {
            JwtAuthenticationManager manager = new JwtAuthenticationManager("fakekeynotlegit1111!");

            User user = new User
            {
                username = "test",
                password = "password"
            };

            var ret = manager.Authenticate(user.username, user.password);

            Assert.IsNotNull(ret);
        }
    }
}