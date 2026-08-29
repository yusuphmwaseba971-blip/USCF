
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

using Plugin.Firebase.Firestore;

namespace CCT_USCF.Services;

/// <summary>
/// ONE-TIME FIRESTORE SEEDER
///
/// Seeds TCU-listed branch / institutional records into:
///
///     Firestore
///         branches
///
/// Each document contains:
///
///     Id
///     Name
///     RegionId
///     DistrictId
///
/// RegionId and DistrictId correspond to the region and
/// district seeders already created in CCT-USCF.
///
/// SOURCE:
/// Tanzania Commission for Universities (TCU)
/// University Institutions Approved to Operate in Tanzania
/// as of March 26, 2026.
///
/// IMPORTANT:
/// Run this seeder once.
/// After successful seeding, remove/disable the call that
/// executes SeedTanzaniaUniversitiesAsync().
/// </summary>
public class FirebaseUniversitySeedService
{
    private readonly IFirebaseFirestore _firestore;

    public FirebaseUniversitySeedService(
        IFirebaseFirestore firestore)
    {
        _firestore = firestore;
    }

    // =========================================================
    // SEED TCU UNIVERSITY INSTITUTIONS
    // =========================================================

    public async Task SeedTanzaniaUniversitiesAsync()
    {
        /*
         * Format:
         *
         * Id
         * RegionId
         * DistrictId
         * Name
         *
         * The names follow the TCU March 2026 document.
         */

        var institutions =
            new List<(int Id, int RegionId, int DistrictId, string Name)>
        {
            // =================================================
            // ARUSHA
            // RegionId = 1
            // DistrictId = 1002 Arusha City
            // =================================================

            (
                100001,
                1,
                1002,
                "Nelson Mandela African Institution of Science and Technology (NM-AIST)"
            ),

            (
                100002,
                1,
                1002,
                "Tumaini University Makumira (TUMA)"
            ),

            (
                100003,
                1,
                1002,
                "University of Arusha (UoA)"
            ),

            (
                100004,
                1,
                1002,
                "St. Augustine University of Tanzania, Arusha Centre"
            ),

            // =================================================
            // DAR ES SALAAM
            // RegionId = 2
            // DistrictId = 2001 Dar es Salaam City
            // =================================================

            (
                200001,
                2,
                2001,
                "University of Dar es Salaam (UDSM)"
            ),

            (
                200002,
                2,
                2001,
                "Open University of Tanzania (OUT)"
            ),

            (
                200003,
                2,
                2001,
                "Muhimbili University of Health and Allied Sciences (MUHAS)"
            ),

            (
                200004,
                2,
                2001,
                "Ardhi University (ARU)"
            ),

            (
                200005,
                2,
                2001,
                "Kairuki University (KU), formerly HKMU"
            ),

            (
                200006,
                2,
                2001,
                "Aga Khan University (AKU)"
            ),

            (
                200007,
                2,
                2001,
                "St. Joseph University in Tanzania (SJUIT)"
            ),

            (
                200008,
                2,
                2001,
                "Kampala International University in Tanzania (KIUT)"
            ),

            (
                200009,
                2,
                2001,
                "United African University of Tanzania (UAUT)"
            ),

            (
                200010,
                2,
                2001,
                "Dar es Salaam Tumaini University (DarTU), formerly TUDARCo"
            ),

            (
                200011,
                2,
                2001,
                "Rabininsia University (RU)"
            ),

            (
                200012,
                2,
                2001,
                "University of Medical Sciences and Technology (UMST)"
            ),

            (
                200013,
                2,
                2001,
                "Hikmah University of East Africa (HUEA)"
            ),

            (
                200014,
                2,
                2001,
                "Dar es Salaam University College of Education (DUCE)"
            ),

            (
                200015,
                2,
                2001,
                "Mzumbe University – Dar es Salaam Campus College (MU – Dar es Salaam Campus College)"
            ),

            (
                200016,
                2,
                2001,
                "St. Joseph University College of Health and Allied Sciences (SJCHAS)"
            ),

            (
                200017,
                2,
                2001,
                "St. Augustine University of Tanzania, Dar es Salaam Centre"
            ),

            // =================================================
            // DODOMA
            // RegionId = 3
            // DistrictId = 3004 Dodoma City
            // =================================================

            (
                300001,
                3,
                3004,
                "University of Dodoma (UDOM)"
            ),

            (
                300002,
                3,
                3004,
                "St. John's University of Tanzania (SJUT)"
            ),

            // =================================================
            // IRINGA
            // RegionId = 5
            // DistrictId = 5002 Iringa Municipal
            // =================================================

            (
                500001,
                5,
                5002,
                "University of Iringa (UoI)"
            ),

            (
                500002,
                5,
                5002,
                "Ruaha Catholic University (RUCU)"
            ),

            (
                500003,
                5,
                5002,
                "Mkwawa University College of Education (MUCE)"
            ),

            // =================================================
            // KATAVI
            // RegionId = 7
            // DistrictId = 7002 Mpanda Municipal
            // =================================================

            (
                700001,
                7,
                7002,
                "Sokoine University of Agriculture – Mizengo Pinda Campus College (SUA – MPC)"
            ),

            // =================================================
            // KILIMANJARO
            // RegionId = 9
            // DistrictId = 9003 Moshi Municipal
            // =================================================

            (
                900001,
                9,
                9003,
                "Moshi Cooperative University (MoCU)"
            ),

            (
                900002,
                9,
                9003,
                "Mwenge Catholic University (MWECAU)"
            ),

            (
                900003,
                9,
                9003,
                "KCMC University"
            ),

            (
                900004,
                9,
                9003,
                "Stefano Moshi Memorial University College (SMMUCo)"
            ),

            (
                900005,
                9,
                9003,
                "Stefano Moshi Memorial University College, Mwika Centre"
            ),

            // MWECAU Hedaru is in Same District
            (
                900006,
                9,
                9006,
                "Mwenge Catholic University, Hedaru Campus College (MWECAU-HCC)"
            ),

            // =================================================
            // LINDI
            // RegionId = 10
            // DistrictId = 10003 Lindi Municipal
            // =================================================

            // UDSM-Lindi Campus is listed by TCU in the
            // registered institutions database.
            // It is not part of the March 26, 2026 approved
            // PDF's detailed institution list, therefore
            // intentionally NOT seeded here.
            //
            // This keeps this seeder strictly aligned to the
            // March 2026 approved PDF.
            // =================================================

            // =================================================
            // MBEYA
            // RegionId = 13
            // DistrictId = 13006 Mbeya City
            // =================================================

            (
                130001,
                13,
                13006,
                "Mbeya University of Science and Technology (MUST)"
            ),

            (
                130002,
                13,
                13006,
                "Teofilo Kisanji University (TEKU)"
            ),

            (
                130003,
                13,
                13006,
                "Catholic University of Mbeya (CUoM), formerly CUCoM"
            ),

            (
                130004,
                13,
                13006,
                "Mzumbe University – Mbeya Campus College (MU – Mbeya Campus College)"
            ),

            (
                130005,
                13,
                13006,
                "Mbeya College of Health and Allied Sciences (MCHAS)"
            ),

            // =================================================
            // MOROGORO
            // RegionId = 14
            // DistrictId = 14007 Morogoro Municipal
            // =================================================

            (
                140001,
                14,
                14007,
                "Sokoine University of Agriculture (SUA)"
            ),

            (
                140002,
                14,
                14007,
                "Mzumbe University (MU)"
            ),

            (
                140003,
                14,
                14007,
                "Muslim University of Morogoro (MUM)"
            ),

            (
                140004,
                14,
                14007,
                "Jordan University College (JUCo)"
            ),

            (
                140005,
                14,
                14007,
                "St. Francis University College of Health and Allied Sciences (SFUCHAS)"
            ),

            // =================================================
            // MTWARA
            // RegionId = 15
            // DistrictId = 15004 Mtwara Municipal
            // =================================================

            (
                150001,
                15,
                15004,
                "Stella Maris Mtwara University College (STeMMUCo)"
            ),

            (
                150002,
                15,
                15004,
                "Mbeya University of Science and Technology – Mtwara Campus College of Technical Education (MUST – MCCTE)"
            ),

            // =================================================
            // MWANZA
            // RegionId = 16
            // DistrictId = 16006 Mwanza City
            // =================================================

            (
                160001,
                16,
                16006,
                "St. Augustine University of Tanzania (SAUT)"
            ),

            (
                160002,
                16,
                16006,
                "Catholic University of Health and Allied Sciences (CUHAS)"
            ),

            (
                160003,
                16,
                16006,
                "Mwanza University (MzU)"
            ),

            // =================================================
            // RUKWA
            // RegionId = 21
            // DistrictId = 21002 Nkasi
            // =================================================

            (
                210001,
                21,
                21002,
                "Mbeya University of Science and Technology – Rukwa Campus College (MUST – RC)"
            ),

            // =================================================
            // SHINYANGA
            // RegionId = 23
            // DistrictId = 23004 Shinyanga
            // =================================================

            (
                230001,
                23,
                23004,
                "Kizumbi Institute of Cooperative Business Education (KICoB)"
            ),

            // =================================================
            // TABORA
            // RegionId = 27
            // DistrictId = 27006 Tabora Municipal
            // =================================================

            (
                270001,
                27,
                27006,
                "Archbishop Mihayo University College of Tabora (AMUCTA)"
            ),

            // =================================================
            // TANGA / MWANGA-MOSHI AREA
            // =================================================
            //
            // No Tanga-head-office institution appears in the
            // March 26, 2026 approved-university PDF.
            //
            // Therefore none is inserted here.
            // =================================================

            // =================================================
            // ZANZIBAR
            // =================================================

            /*
             * Your existing region/district structure uses:
             *
             * Region 29 = Pemba North
             * Region 30 = Pemba South
             * Region 31 = Zanzibar West
             *
             * However, TCU gives "Zanzibar" as the head office
             * for SUZA, SUMAIT, ZU and IMS without specifying
             * the district in the March 2026 document.
             *
             * Therefore these records are placed under the
             * Zanzibar West structure currently available in
             * your application.
             *
             * IMPORTANT:
             * Before production, correct the Zanzibar district
             * structure to include Mjini if you want exact
             * district-level Zanzibar registration.
             */

            (
                310001,
                31,
                31001,
                "State University of Zanzibar (SUZA)"
            ),

            (
                310002,
                31,
                31001,
                "Abdulrahman Al-Sumait University (SUMAIT)"
            ),

            (
                310003,
                31,
                31001,
                "Zanzibar University (ZU)"
            ),

            (
                310004,
                31,
                31001,
                "Institute of Marine Sciences (IMS)"
            ),

            // =================================================
            // OTHER TCU MARCH 2026 INSTITUTIONS
            // =================================================

            (
                120001,
                12,
                12005,
                "Mwalimu Nyerere University of Agriculture and Technology (MNUAT)"
            ),

            (
                200018,
                2,
                2001,
                "University of Medical Sciences and Technology (UMST)"
            )
        };

        // =====================================================
        // FIRESTORE COLLECTION
        // =====================================================

        var collection =
            _firestore.GetCollection("branches");

        // =====================================================
        // WRITE INSTITUTIONS
        // =====================================================

        foreach (var institution in institutions)
        {
            try
            {
                var data =
                    new Dictionary<string, object>
                    {
                        ["Id"] = institution.Id,
                        ["Name"] = institution.Name,
                        ["RegionId"] = institution.RegionId,
                        ["DistrictId"] = institution.DistrictId
                    };

                await collection
                    .GetDocument(institution.Id.ToString())
                    .SetDataAsync(data);

                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE UNIVERSITY SEED] " +
                    $"{institution.Id} | " +
                    $"{institution.Name} | " +
                    $"RegionId={institution.RegionId} | " +
                    $"DistrictId={institution.DistrictId}");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE UNIVERSITY SEED ERROR] " +
                    $"{institution.Id} - " +
                    $"{institution.Name}");

                System.Diagnostics.Debug.WriteLine(ex);

                throw;
            }
        }

        System.Diagnostics.Debug.WriteLine(
            "[FIREBASE UNIVERSITY SEED] SUCCESS: " +
            "TCU university institutions have been seeded.");
    }
}
