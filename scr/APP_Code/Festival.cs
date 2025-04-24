using System;
using System.Collections.Generic;

public class Festival
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string ImageUrl { get; set; }

    public static List<Festival> GetFestivals()
    {
        return new List<Festival>
        {
            new Festival { Id = 1, Name = "Lễ hội Ok Om Bok", Description = "Lễ hội cúng trăng của người Khmer diễn ra vào tháng 10 âm lịch.", ImageUrl = "okombok.jpg" },
            new Festival { Id = 2, Name = "Lễ hội Chôl Chnăm Thmây", Description = "Tết cổ truyền mừng năm mới của người Khmer, thường diễn ra vào giữa tháng 4.", ImageUrl = "cholchnamthmay.jpg" },
            new Festival { Id = 3, Name = "Lễ hội Đôn-ta", Description = "Lễ tưởng nhớ tổ tiên và ông bà của người Khmer vào cuối tháng 8 âm lịch.", ImageUrl = "donta.jpg" }
        };
    }

    public static Festival GetFestivalById(int id)
    {
        return GetFestivals().Find(f => f.Id == id);
    }
}
