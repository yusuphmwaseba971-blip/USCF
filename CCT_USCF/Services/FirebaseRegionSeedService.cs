
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Plugin.Firebase.Firestore;

namespace CCT_USCF.Services;

/// <summary>
/// ONE-TIME FIRESTORE SEEDER
///
/// Creates the 31 regions of Tanzania in:
///
///     Firestore
///         regions
///
/// Each document contains:
///     Id
///     Name
///
/// Document ID = Region Id
///
/// Example:
///     regions/1
///         Id   = 1
///         Name = Arusha
///
/// IMPORTANT:
/// Run this seeder once.
/// After the regions have been created successfully,
/// remove/disable the code that calls this seeder.
/// </summary>
public class FirebaseRegionSeedService
{
    private readonly IFirebaseFirestore _firestore;

    public FirebaseRegionSeedService(
        IFirebaseFirestore firestore)
    {
        _firestore = firestore;
    }

    // =========================================================
    // SEED TANZANIA REGIONS
    // =========================================================

    public async Task SeedTanzaniaRegionsAsync()
    {
        // =====================================================
        // TANZANIA — 31 REGIONS
        // =====================================================

        var regions =
            new List<(int Id, string Name)>
            {
                (1,  "Arusha"),
                (2,  "Dar es Salaam"),
                (3,  "Dodoma"),
                (4,  "Geita"),
                (5,  "Iringa"),
                (6,  "Kagera"),
                (7,  "Katavi"),
                (8,  "Kigoma"),
                (9,  "Kilimanjaro"),
                (10, "Lindi"),
                (11, "Manyara"),
                (12, "Mara"),
                (13, "Mbeya"),
                (14, "Morogoro"),
                (15, "Mtwara"),
                (16, "Mwanza"),
                (17, "Njombe"),
                (18, "Pemba North"),
                (19, "Pemba South"),
                (20, "Pwani"),
                (21, "Rukwa"),
                (22, "Ruvuma"),
                (23, "Shinyanga"),
                (24, "Simiyu"),
                (25, "Singida"),
                (26, "Songwe"),
                (27, "Tabora"),
                (28, "Tanga"),
                (29, "Zanzibar North"),
                (30, "Zanzibar South"),
                (31, "Zanzibar West")
            };

        // =====================================================
        // FIRESTORE COLLECTION
        // =====================================================

        var collection =
            _firestore.GetCollection("regions");

        // =====================================================
        // CREATE / UPDATE REGIONS
        // =====================================================

        foreach (var region in regions)
        {
            try
            {
                var data =
                    new Dictionary<string, object>
                    {
                        ["Id"] = region.Id,
                        ["Name"] = region.Name
                    };

                await collection
                    .GetDocument(region.Id.ToString())
                    .SetDataAsync(data);

                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE REGION SEED] " +
                    $"Created: {region.Id} - {region.Name}");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE REGION SEED ERROR] " +
                    $"Region: {region.Id} - {region.Name}");

                System.Diagnostics.Debug.WriteLine(ex);

                throw;
            }
        }

        // =====================================================
        // SUCCESS
        // =====================================================

        System.Diagnostics.Debug.WriteLine(
            "[FIREBASE REGION SEED] SUCCESS: " +
            "All 31 Tanzania regions have been created.");
    }
}
