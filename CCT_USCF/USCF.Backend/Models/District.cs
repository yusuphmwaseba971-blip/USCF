using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace USCF.Backend.Models;

public class District
{
    [Key]
    public int Id { get; set; }

    [Required]
    [MaxLength(200)]
    public string Name { get; set; } = string.Empty;

    public int RegionId { get; set; }
    public Region? Region { get; set; }

    public ICollection<Branch>? Branches { get; set; }
}
