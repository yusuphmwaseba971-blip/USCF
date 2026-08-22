using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public class Branch
{
    [Key]
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string Name { get; set; } = string.Empty;

    public int DistrictId { get; set; }
    public District? District { get; set; }
}
