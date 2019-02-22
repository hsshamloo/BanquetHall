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
using System.Collections.Generic;
using System.Collections;

/// <summary>
/// Summary description for Members
/// </summary>
public class Members
{
    DataClassesDataContext context = new DataClassesDataContext();

    private DateTime registerDate;

    public DateTime RegisterDate
    {
        get { return registerDate; }
        set { registerDate = value; }
    }

    private string _userId;
    public string userId
    {
        get { return _userId; }
        set { _userId = value; }
    }
    private string _password;
    public string password
    {
        get { return _password; }
        set { _password = value; }
    }
    private string _email;
    public string email
    {
        get { return _email; }
        set { _email = value; }
    }
    private string _gender;
    public string gender
    {
        get { return _gender; }
        set { _gender = value; }
    }
    private string _fName;
    public string fName
    {
        get { return _fName; }
        set { _fName = value; }
    }
    private string _lName;
    public string lName
    {
        get { return _lName; }
        set { _lName = value; }
    }
    private string _telphoneNumber;
    public string telphoneNumber
    {
        get { return _telphoneNumber; }
        set { _telphoneNumber = value; }

    }
    private string _country;

    public string country
    {
        get { return _country; }
        set { _country = value; }

    }
    private string _province;
    public string province
    {
        get { return _province; }
        set { _province = value; }
    }
    private string _city;
    public string city
    {
        get { return _city; }
        set { _city = value; }
    }
    private string _address;
    public string address
    {
        get { return _address; }
        set { _address = value; }
    }
    private string _roleType;
    public string roleType
    {
        get { return _roleType; }
        set { _roleType = value; }
    }

    public Members()
    {


    }

    public int updateUserInfo(Members OldInfo)
    {

        try
        {
            MembershipTable mbtObject = context.MembershipTables.First
           (meb => meb.UserId.Equals(OldInfo.userId));
            mbtObject.FName = OldInfo.fName;
            mbtObject.LName = OldInfo.lName;
            mbtObject.Gender = OldInfo.gender;
            mbtObject.TelphoneNumber = OldInfo.telphoneNumber;
            mbtObject.City = OldInfo.city;
            mbtObject.Province = OldInfo.province;
            mbtObject.Country = OldInfo.country;
            mbtObject.Address = OldInfo.address;
            return 1;
        }
        catch (Exception)
        {
            return 0;
        }


    }
    public Members retriveUserInfo(string memberEmail)
    {
        Members memberInforMation = null;
        int numberOfUser = (from userInfo in context.MembershipTables
                            where userInfo.Email == memberEmail
                            select userInfo).Count();

        if (numberOfUser != 0)
        {
            var memberInfo = context.MembershipTables.First(member =>
              member.Email == memberEmail);
            memberInforMation = new Members();
            memberInforMation.address = memberInfo.Address;
            memberInforMation.city = memberInfo.City;
            memberInforMation.country = memberInfo.Country;
            memberInforMation.fName = memberInfo.FName;
            memberInforMation.gender = memberInfo.Gender;
            memberInforMation.lName = memberInfo.LName;
            memberInforMation.province = memberInfo.Province;
            memberInforMation.RegisterDate = (DateTime)memberInfo.RegisterDate;
            memberInforMation.roleType = memberInfo.RoleType;
            memberInforMation.telphoneNumber = memberInfo.TelphoneNumber;
            memberInforMation.email = memberInfo.Email;
        }
        return memberInforMation;

    }
    public int updateUserRoleType(string email, string newRoleType)
    {
        try
        {
            var memberInfo = context.MembershipTables.First(mto => mto.Email
            == email);
            memberInfo.RoleType = newRoleType;
            context.SubmitChanges();
            return 0;
        }
        catch (Exception)
        {
            return -1;
        }
    }
    public int numberOfSameTypeRoleUser(string roleType)
    {
        int numerOfUser = 0;
        numerOfUser = (context.MembershipTables.Where(mto =>
            mto.RoleType == roleType)).Count();
        return numerOfUser;
    }
    public Array retriveUserEmailsWithSameRoleType(string roleType)
    {
        Array memberEmails = (from memberInfo in context.MembershipTables
                              where memberInfo.RoleType == roleType
                              select memberInfo.Email.ToString()).ToArray();
        return memberEmails;
    }
    public Array allAvailableRoleType(string denidedRoleType1, string denidedRoleType2)
    {
        
        var allRoleType = ((from roleTypeInfo in context.MembershipTables
                               select roleTypeInfo.RoleType.ToString()).Distinct()).ToArray();
        ArrayList list1 = new ArrayList();
        foreach (string role in allRoleType)
        {
            if (role.ToString() != denidedRoleType1)
            {
                list1.Add(role);
            }
        }

        //foreach (var obj in list1)
        //{
        //    if (obj.ToString() == denidedRoleType2)
        //    {
        //        list1.Remove(obj);
        //    }
        //}

        Array listOfRoleType = list1.ToArray();


        return listOfRoleType;
    }
    public string memberNameByEmail(string Email)
    {
        var memberNameInfo = context.MembershipTables.First(mem =>
            mem.Email == Email);
        string FisrstAndLastName =
            memberNameInfo.FName + " " + ""+
            memberNameInfo.LName;
        return FisrstAndLastName;
    }

    //public Array findEmailByNameAndRoleType(string fName, string lName, string roleTypeToRetrive)
    //{
    //    Array emailAvailable = (from emailInfo in context.MembershipTables
    //                            where emailInfo.FName == fName &&
    //                            emailInfo.LName == lName
    //                            && emailInfo.RoleType == roleTypeToRetrive
    //                            select emailInfo).ToArray();
    //    var emailInReseve = from reservePlaced in context.ReservationTables

    //}


}
