using System.Collections.Generic;

public class AppUser
{
    public string Username { get; set; }
    public string Password { get; set; }

    public static List<AppUser> Users = new List<AppUser>();

    public static bool Register(string username, string password)
    {
        if (Users.Exists(u => u.Username == username))
            return false;

        Users.Add(new AppUser { Username = username, Password = password });
        return true;
    }

    public static bool Login(string username, string password)
    {
        return Users.Exists(u => u.Username == username && u.Password == password);
    }
}
