using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public class Region
{
    [Key]
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string Name { get; set; } = string.Empty;

    public ICollection<District>? Districts { get; set; }
}
