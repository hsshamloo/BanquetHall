using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;
using System.Data.SqlClient;


/// <summary>
/// This Class is used to 
/// 1. Register new user 
/// 2. Login to Web site
/// 3. Retrive the PassWord
/// 4. Delet the user
/// 
/// </summary>
public class RegisterAnLogIn
{
    DataClassesDataContext context = new DataClassesDataContext();
    public RegisterAnLogIn()
    {
    }
    
    public string registerUser(Members newMember)
    {
        try
        {
            if (((from user in context.AuthenticationTables
                  where user.Email.Equals(newMember.email)
                  select user).Count<AuthenticationTable>()) != 0)
            {
                return "این کاربر پیش از این ثبت نام نموده است";

            }

            else
            {
                DateTime dd = DateTime.Now;
                string userId = "User" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                    dd.Millisecond.ToString()+ dd.Millisecond.ToString();
                AuthenticationTable aut = new AuthenticationTable
                {
                    UserId = userId,
                    Password = newMember.password,
                    Email = newMember.email
                };
                MembershipTable mt = new MembershipTable
            {
                UserId = userId,
                RoleType = newMember.roleType,
                FName = newMember.fName,
                LName = newMember.lName,
                Email = newMember.email,
                TelphoneNumber = newMember.telphoneNumber,
                City = newMember.city,
                Country = newMember.country,
                Gender = newMember.gender,
                Province = newMember.province,
                Address = newMember.address,
                RegisterDate = newMember.RegisterDate,
            };
                context.AuthenticationTables.InsertOnSubmit(aut);
                context.MembershipTables.InsertOnSubmit(mt);
                context.SubmitChanges();
                return "کاربر با موفقیت ثبت گردید";
            }

        }
        catch (SqlException x)
        {
            return x.Message + " " + x.Source + " Exeption Error";
        }

    }
    public int logInToSystem(string userName, string passWord)
    {

        int validUserValue = 0;
        try
        {
            int validUserAndPassWord = (from userAndPass in context.AuthenticationTables
                                        where (userAndPass.Email.Equals(userName)
                                        || userAndPass.UserId.Equals(userName))
                                        && userAndPass.Password.Equals(passWord)
                                        select userAndPass).Count<AuthenticationTable>();

            int validUserOrEmail = (from emailOrEmail in context.AuthenticationTables
                                    where (emailOrEmail.Email.Equals(userName)
                                    || emailOrEmail.UserId.Equals(userName))
                                    select emailOrEmail).Count<AuthenticationTable>();

            validUserValue = validUserAndPassWord + validUserOrEmail;

            return validUserValue;

        }
        catch (Exception x)
        {

            return 3;

        }
    }
    public Members retriveUserInformation(string userName)
    {
        Members validUser = new Members();
        try
        {
            var infoOfvalidUser = from retrivedUser in context.MembershipTables
                                  where retrivedUser.Email.Equals(userName) ||
                                  retrivedUser.UserId.Equals(userName)
                                  select retrivedUser;


            foreach (var information in infoOfvalidUser)
            {
                validUser.userId = information.UserId;
                validUser.fName = information.FName;
                validUser.lName = information.LName;
                validUser.gender = information.Gender;
                validUser.country = information.Country;
                validUser.province = information.Province;
                validUser.city = information.City;
                validUser.address = information.Address;
                validUser.roleType = information.RoleType;
                validUser.email = information.Email;
                validUser.telphoneNumber = information.TelphoneNumber;


            }
            return validUser;
        }
        catch (Exception)
        {

            return validUser;
        }
    }

    public string UpdatePassWord(string email, string passWord)
    {
        

        try 
	{	        
		 var passWordToUpdate = context.AuthenticationTables.First(
            aut => aut.Email == email);
         passWordToUpdate.Password = passWord;
         context.SubmitChanges();
         return "رمز عبور با موفقیت تغییر پیدا کرد ";

	}
	catch (Exception x)
	{

        return "خطا در هنگام تغییر رمز عبور" + x.Message;
	}
       
    }

    public string retriveOldPassWord(string email)
    {
        try
        {
            var passWordToUpdate = context.AuthenticationTables.First(
          aut => aut.Email == email);
            return passWordToUpdate.Password;
        }
        catch (Exception x)
        {

            return "خطا در هنگام فراخوانی رمز عبور" + x.Message;
        }
       
    }

}
