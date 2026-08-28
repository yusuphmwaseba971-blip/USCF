
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

using Plugin.Firebase.Firestore;

namespace CCT_USCF.Services;

/// <summary>
/// ONE-TIME FIRESTORE SEEDER
///
/// Creates all 31 regions of Tanzania in:
///
/// Firestore
///     regions
///
/// Each document contains:
///     Id
///     Name
///
/// This matches the structure expected by AuthService.
/// 
/// IMPORTANT:
/// Run this only once.
/// After successful seeding, remove/disable the call
/// to SeedTanzaniaRegionsAsync().
/// </summary>
public class FirebaseSeedService
{
    private readonly IFirebaseFirestore _firestore;

    public FirebaseSeedService(
        IFirebaseFirestore firestore)
    {
        _firestore = firestore;
    }

    /// <summary>
    /// Creates all 31 Tanzania regions.
    /// </summary>
    public async Task SeedTanzaniaRegionsAsync()
    {
        // =====================================================
        // TANZANIA — 31 REGIONS
        // =====================================================

        var regions = new List<(int Id, string Name)>
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
        // CREATE EACH REGION
        // =====================================================

        foreach (var region in regions)
        {
            try
            {
                // -------------------------------------------------
                // Document ID
                //
                // Using region ID as document ID makes the
                // records predictable and prevents duplicates
                // when this method is accidentally run again.
                // -------------------------------------------------

                var documentId =
                    region.Id.ToString();

                var data =
                    new Dictionary<string, object>
                    {
                        ["Id"] = region.Id,

                        ["Name"] = region.Name
                    };

                await collection
                    .GetDocument(documentId)
                    .SetDataAsync(data);

                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE SEED] Region created: " +
                    $"{region.Id} - {region.Name}");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE SEED] Failed: " +
                    $"{region.Id} - {region.Name}");

                System.Diagnostics.Debug.WriteLine(ex);

                throw;
            }
        }

        // =====================================================
        // SUCCESS
        // =====================================================

        System.Diagnostics.Debug.WriteLine(
            "[FIREBASE SEED] SUCCESS: " +
            "All 31 Tanzania regions have been created.");
    }
}
