
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Plugin.Firebase.Firestore;

namespace CCT_USCF.Services;

/// <summary>
/// ONE-TIME FIRESTORE UNIVERSITY SEEDER
///
/// Firestore collection:
///     universities
///
/// Each document contains ONLY:
///     Name
///     DistrictId
///     RegionId
///
/// Structure:
///
///     Region
///        ↓
///     District
///        ↓
///     University
///
/// University names are based on the TCU approved
/// university institutions list.
/// </summary>
public class FirebaseUniversitySeedService
{
    private readonly IFirebaseFirestore _firestore;

    public FirebaseUniversitySeedService(
        IFirebaseFirestore firestore)
    {
        _firestore = firestore;
    }

    public async Task SeedTanzaniaUniversitiesAsync()
    {
        // =====================================================
        // UNIVERSITY
        // ID
        // DISTRICT ID
        // REGION ID
        // NAME
        // =====================================================

        var universities =
            new List<(int Id, int DistrictId, int RegionId, string Name)>
        {
            // =================================================
            // ARUSHA REGION
            // =================================================

            (1, 1001, 1,
                "Nelson Mandela African Institution of Science and Technology"),

            (2, 1001, 1,
                "Tumaini University Makumira"),

            (3, 1001, 1,
                "University of Arusha"),

            // =================================================
            // DAR ES SALAAM REGION
            // =================================================

            (4, 2001, 2,
                "University of Dar es Salaam"),

            (5, 2001, 2,
                "Open University of Tanzania"),

            (6, 2001, 2,
                "Muhimbili University of Health and Allied Sciences"),

            (7, 2001, 2,
                "Ardhi University"),

            (8, 2001, 2,
                "Kairuki University"),

            (9, 2001, 2,
                "Aga Khan University"),

            (10, 2001, 2,
                "St. Joseph University in Tanzania"),

            (11, 2001, 2,
                "Kampala International University in Tanzania"),

            // =================================================
            // DODOMA REGION
            // =================================================

            (12, 3004, 3,
                "University of Dodoma"),

            (13, 3004, 3,
                "St. John's University of Tanzania"),

            // =================================================
            // IRINGA REGION
            // =================================================

            (14, 5002, 5,
                "University of Iringa"),

            (15, 5002, 5,
                "Ruaha Catholic University"),

            // =================================================
            // KILIMANJARO REGION
            // =================================================

            (16, 9002, 9,
                "Moshi Cooperative University"),

            (17, 9002, 9,
                "Mwenge Catholic University"),

            (18, 9002, 9,
                "KCMC University"),

            // =================================================
            // MBEYA REGION
            // =================================================

            (19, 1306, 13,
                "Mbeya University of Science and Technology"),

            (20, 1306, 13,
                "Teofilo Kisanji University"),

            (21, 1306, 13,
                "Catholic University of Mbeya"),

            // =================================================
            // MOROGORO REGION
            // =================================================

            (22, 1407, 14,
                "Sokoine University of Agriculture"),

            (23, 1407, 14,
                "Mzumbe University"),

            (24, 1407, 14,
                "Muslim University of Morogoro"),

            // =================================================
            // MWANZA REGION
            // =================================================

            (25, 1602, 16,
                "St. Augustine University of Tanzania"),

            (26, 1602, 16,
                "Catholic University of Health and Allied Sciences"),

            (27, 1602, 16,
                "Mwanza University"),

            // =================================================
            // RUKWA REGION
            // =================================================

            // Add a university here only if the TCU institution
            // is actually registered at this location.

            // =================================================
            // TABORA REGION
            // =================================================

            // Add TCU-approved institution if applicable.

            // =================================================
            // ZANZIBAR
            // =================================================

            (28, 2901, 29,
                "State University of Zanzibar"),

            (29, 2901, 29,
                "Abdulrahman Al-Sumait University"),

            (30, 2901, 29,
                "Zanzibar University")
        };

        // =====================================================
        // FIRESTORE COLLECTION
        // =====================================================

        var collection =
            _firestore.GetCollection("universities");

        // =====================================================
        // WRITE DATA
        // =====================================================

        foreach (var university in universities)
        {
            try
            {
                var data =
                    new Dictionary<string, object>
                    {
                        ["Name"] = university.Name,

                        ["DistrictId"] =
                            university.DistrictId,

                        ["RegionId"] =
                            university.RegionId
                    };

                await collection
                    .GetDocument(
                        university.Id.ToString())
                    .SetDataAsync(data);

                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE UNIVERSITY SEED] " +
                    $"{university.Name} | " +
                    $"DistrictId: {university.DistrictId} | " +
                    $"RegionId: {university.RegionId}");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE UNIVERSITY SEED ERROR] " +
                    $"{university.Name}");

                System.Diagnostics.Debug.WriteLine(ex);

                throw;
            }
        }

        System.Diagnostics.Debug.WriteLine(
            "[FIREBASE UNIVERSITY SEED] " +
            "SUCCESS");
    }
}
