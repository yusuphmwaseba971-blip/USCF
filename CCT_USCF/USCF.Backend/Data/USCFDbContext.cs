using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/locations")]
public class LocationsController : ControllerBase
{
    private readonly USCFDbContext _db;

    public LocationsController(USCFDbContext db)
    {
        _db = db;
    }

    [HttpGet("regions")]
    public async Task<IActionResult> GetRegions()
    {
        var regions = await _db.Regions
            .AsNoTracking()
            .OrderBy(x => x.Name)
            .Select(x => new
            {
                x.Id,
                x.Name
            })
            .ToListAsync();

        return Ok(regions);
    }

    [HttpGet("districts/{regionId:int}")]
    public async Task<IActionResult> GetDistricts(int regionId)
    {
        var districts = await _db.Districts
            .AsNoTracking()
            .Where(x => x.RegionId == regionId)
            .OrderBy(x => x.Name)
            .Select(x => new
            {
                x.Id,
                x.Name
            })
            .ToListAsync();

        return Ok(districts);
    }

    [HttpGet("branches/{districtId:int}")]
    public async Task<IActionResult> GetBranches(int districtId)
    {
        var branches = await _db.Branches
            .AsNoTracking()
            .Where(x => x.DistrictId == districtId)
            .OrderBy(x => x.Name)
            .Select(x => new
            {
                x.Id,
                x.Name
            })
            .ToListAsync();

        return Ok(branches);
    }
}