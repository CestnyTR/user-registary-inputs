using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace internetProgramciligiFinal
{
    public class metotlar
    {
        VtEntity1 vt = new VtEntity1();
        public bool controlUser(string userName, string password)
        {

            var kullanici = vt.User.Where(p => p.userName == userName && p.password == password).ToList();
            if (kullanici.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool addUser(UserData veriler)
        {

            vt.UserData.Add(veriler);
            vt.SaveChanges();
            return true;
        }
        public List<UserData> listUser()
        {
            return vt.UserData.ToList();
        }

        public bool UpdateUser(UserData kl)
        {
            var kullanici = vt.UserData.Where(p => p.ID == kl.ID).SingleOrDefault();
            kullanici.name = kl.name;
            kullanici.surName = kl.surName;
            kullanici.e_mail = kl.e_mail;
            vt.SaveChanges();
            return true;
        }
        public bool deleteUser(UserData kl)
        {
            var silinecek = vt.UserData.Where(p => p.ID == kl.ID).SingleOrDefault();
            vt.UserData.Remove(silinecek);
            vt.SaveChanges();
            return true;
        }
    }
}


