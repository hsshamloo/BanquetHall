using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ReserveDateAndCapacity
/// </summary>
public class ReserveDateAndCapacity
{
    private int numberOfGuest;

    public int NumberOfGuest
    {
        get { return numberOfGuest; }
        set { numberOfGuest = value; }
    }

    private DateTime reserveDate;

    public DateTime ReserveDate
    {
        get { return reserveDate; }
        set { reserveDate = value; }
    }

	public ReserveDateAndCapacity()
	{
		
	}
    private string persianDate;

    public string PersianDate
    {
        get { return persianDate; }
        set { persianDate = value; }
    }
}