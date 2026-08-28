
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

using Plugin.Firebase.Firestore;

namespace CCT_USCF.Services;

/// <summary>
/// ONE-TIME FIRESTORE SEEDER
///
/// Seeds Tanzania districts/councils into:
///
///     Firestore
///         districts
///
/// Each document contains:
///     Id
///     Name
///     RegionId
///
/// RegionId matches the region IDs already created
/// by SeedTanzaniaRegionsAsync().
///
/// IMPORTANT:
/// Run this once.
/// After successful seeding, remove the call that executes
/// SeedTanzaniaDistrictsAsync().
/// </summary>
public class FirebaseSeedService
{
    private readonly IFirebaseFirestore _firestore;

    public FirebaseSeedService(
        IFirebaseFirestore firestore)
    {
        _firestore = firestore;
    }

    // =========================================================
    // SEED TANZANIA DISTRICTS / COUNCILS
    // =========================================================

    public async Task SeedTanzaniaDistrictsAsync()
    {
        /*
         * Format:
         *
         * Id
         * RegionId
         * Name
         *
         * RegionId corresponds to the 31-region list already
         * created in the application.
         */

        var districts = new List<(int Id, int RegionId, string Name)>
        {
            // =================================================
            // 1. ARUSHA
            // RegionId = 1
            // =================================================

            (1001, 1, "Arusha"),
            (1002, 1, "Arusha City"),
            (1003, 1, "Karatu"),
            (1004, 1, "Longido"),
            (1005, 1, "Meru"),
            (1006, 1, "Monduli"),
            (1007, 1, "Ngorongoro"),

            // =================================================
            // 2. DAR ES SALAAM
            // RegionId = 2
            // =================================================

            (2001, 2, "Dar es Salaam City"),
            (2002, 2, "Kinondoni"),
            (2003, 2, "Ubungo"),
            (2004, 2, "Kigamboni"),
            (2005, 2, "Temeke"),

            // =================================================
            // 3. DODOMA
            // RegionId = 3
            // =================================================

            (3001, 3, "Bahi"),
            (3002, 3, "Chamwino"),
            (3003, 3, "Chemba"),
            (3004, 3, "Dodoma City"),
            (3005, 3, "Kondoa"),
            (3006, 3, "Kondoa Town"),
            (3007, 3, "Kongwa"),
            (3008, 3, "Mpwapwa"),

            // =================================================
            // 4. GEITA
            // RegionId = 4
            // =================================================

            (4001, 4, "Bukombe"),
            (4002, 4, "Chato"),
            (4003, 4, "Geita"),
            (4004, 4, "Geita Town"),
            (4005, 4, "Mbogwe"),
            (4006, 4, "Nyang'hwale"),

            // =================================================
            // 5. IRINGA
            // RegionId = 5
            // =================================================

            (5001, 5, "Iringa"),
            (5002, 5, "Iringa Municipal"),
            (5003, 5, "Kilolo"),
            (5004, 5, "Mafinga Town"),
            (5005, 5, "Mufindi"),

            // =================================================
            // 6. KAGERA
            // RegionId = 6
            // =================================================

            (6001, 6, "Biharamulo"),
            (6002, 6, "Bukoba"),
            (6003, 6, "Bukoba Municipal"),
            (6004, 6, "Karagwe"),
            (6005, 6, "Kyerwa"),
            (6006, 6, "Missenyi"),
            (6007, 6, "Muleba"),
            (6008, 6, "Ngara"),

            // =================================================
            // 7. KATAVI
            // RegionId = 7
            // =================================================

            (7001, 7, "Mlele"),
            (7002, 7, "Mpanda Municipal"),
            (7003, 7, "Mpimbwe"),
            (7004, 7, "Nsimbo"),
            (7005, 7, "Tanganyika"),

            // =================================================
            // 8. KIGOMA
            // RegionId = 8
            // =================================================

            (8001, 8, "Buhigwe"),
            (8002, 8, "Kakonko"),
            (8003, 8, "Kasulu"),
            (8004, 8, "Kasulu Town"),
            (8005, 8, "Kibondo"),
            (8006, 8, "Kigoma"),
            (8007, 8, "Kigoma-Ujiji Municipal"),
            (8008, 8, "Uvinza"),

            // =================================================
            // 9. KILIMANJARO
            // RegionId = 9
            // =================================================

            (9001, 9, "Hai"),
            (9002, 9, "Moshi"),
            (9003, 9, "Moshi Municipal"),
            (9004, 9, "Mwanga"),
            (9005, 9, "Rombo"),
            (9006, 9, "Same"),
            (9007, 9, "Siha"),

            // =================================================
            // 10. LINDI
            // RegionId = 10
            // =================================================

            (10001, 10, "Kilwa"),
            (10002, 10, "Lindi Municipal"),
            (10003, 10, "Liwale"),
            (10004, 10, "Mtama"),
            (10005, 10, "Nachingwea"),
            (10006, 10, "Ruangwa"),

            // =================================================
            // 11. MANYARA
            // RegionId = 11
            // =================================================

            (11001, 11, "Babati"),
            (11002, 11, "Babati Town"),
            (11003, 11, "Hanang"),
            (11004, 11, "Kiteto"),
            (11005, 11, "Mbulu"),
            (11006, 11, "Mbulu Town"),
            (11007, 11, "Simanjiro"),

            // =================================================
            // 12. MARA
            // RegionId = 12
            // =================================================

            (12001, 12, "Bunda"),
            (12002, 12, "Bunda Town"),
            (12003, 12, "Butiama"),
            (12004, 12, "Musoma"),
            (12005, 12, "Musoma Municipal"),
            (12006, 12, "Rorya"),
            (12007, 12, "Serengeti"),
            (12008, 12, "Tarime"),
            (12009, 12, "Tarime Town"),

            // =================================================
            // 13. MBEYA
            // RegionId = 13
            // =================================================

            (13001, 13, "Busokelo"),
            (13002, 13, "Chunya"),
            (13003, 13, "Kyela"),
            (13004, 13, "Mbarali"),
            (13005, 13, "Mbeya"),
            (13006, 13, "Mbeya City"),
            (13007, 13, "Rungwe"),

            // =================================================
            // 14. MOROGORO
            // RegionId = 14
            // =================================================

            (14001, 14, "Gairo"),
            (14002, 14, "Ifakara Town"),
            (14003, 14, "Kilosa"),
            (14004, 14, "Malinyi"),
            (14005, 14, "Mlimba"),
            (14006, 14, "Morogoro"),
            (14007, 14, "Morogoro Municipal"),
            (14008, 14, "Mvomero"),
            (14009, 14, "Ulanga"),

            // =================================================
            // 15. MTWARA
            // RegionId = 15
            // =================================================

            (15001, 15, "Masasi"),
            (15002, 15, "Masasi Town"),
            (15003, 15, "Mtwara"),
            (15004, 15, "Mtwara Municipal"),
            (15005, 15, "Nanyamba Town"),
            (15006, 15, "Nanyumbu"),
            (15007, 15, "Newala"),
            (15008, 15, "Newala Town"),
            (15009, 15, "Tandahimba"),

            // =================================================
            // 16. MWANZA
            // RegionId = 16
            // =================================================

            (16001, 16, "Buchosa"),
            (16002, 16, "Ilemela Municipal"),
            (16003, 16, "Kwimba"),
            (16004, 16, "Magu"),
            (16005, 16, "Misungwi"),
            (16006, 16, "Mwanza City"),
            (16007, 16, "Sengerema"),
            (16008, 16, "Ukerewe"),

            // =================================================
            // 17. NJOMBE
            // RegionId = 17
            // =================================================

            (17001, 17, "Ludewa"),
            (17002, 17, "Makambako Town"),
            (17003, 17, "Makete"),
            (17004, 17, "Njombe"),
            (17005, 17, "Njombe Town"),
            (17006, 17, "Wanging'ombe"),

            // =================================================
            // 18. PEMBA NORTH
            // RegionId = 18
            // =================================================

            (18001, 18, "Micheweni"),
            (18002, 18, "Wete"),

            // =================================================
            // 19. PEMBA SOUTH
            // RegionId = 19
            // =================================================

            (19001, 19, "Chake Chake"),
            (19002, 19, "Mkoani"),

            // =================================================
            // 20. PWANI
            // RegionId = 20
            // =================================================

            (20001, 20, "Bagamoyo"),
            (20002, 20, "Chalinze"),
            (20003, 20, "Kibaha"),
            (20004, 20, "Kibaha Town"),
            (20005, 20, "Kibiti"),
            (20006, 20, "Kisarawe"),
            (20007, 20, "Mafia"),
            (20008, 20, "Mkuranga"),
            (20009, 20, "Rufiji"),

            // =================================================
            // 21. RUKWA
            // RegionId = 21
            // =================================================

            (21001, 21, "Kalambo"),
            (21002, 21, "Nkasi"),
            (21003, 21, "Sumbawanga"),
            (21004, 21, "Sumbawanga Municipal"),

            // =================================================
            // 22. RUVUMA
            // RegionId = 22
            // =================================================

            (22001, 22, "Madaba"),
            (22002, 22, "Mbinga"),
            (22003, 22, "Mbinga Town"),
            (22004, 22, "Namtumbo"),
            (22005, 22, "Nyasa"),
            (22006, 22, "Songea"),
            (22007, 22, "Songea Municipal"),
            (22008, 22, "Tunduru"),

            // =================================================
            // 23. SHINYANGA
            // RegionId = 23
            // =================================================

            (23001, 23, "Kahama Town"),
            (23002, 23, "Kishapu"),
            (23003, 23, "Msalala"),
            (23004, 23, "Shinyanga"),
            (23005, 23, "Shinyanga Municipal"),
            (23006, 23, "Ushetu"),

            // =================================================
            // 24. SIMIYU
            // RegionId = 24
            // =================================================

            (24001, 24, "Bariadi"),
            (24002, 24, "Bariadi Town"),
            (24003, 24, "Busega"),
            (24004, 24, "Itilima"),
            (24005, 24, "Maswa"),
            (24006, 24, "Meatu"),

            // =================================================
            // 25. SINGIDA
            // RegionId = 25
            // =================================================

            (25001, 25, "Ikungi"),
            (25002, 25, "Iramba"),
            (25003, 25, "Itigi"),
            (25004, 25, "Manyoni"),
            (25005, 25, "Mkalama"),
            (25006, 25, "Singida"),
            (25007, 25, "Singida Municipal"),

            // =================================================
            // 26. SONGWE
            // RegionId = 26
            // =================================================

            (26001, 26, "Ileje"),
            (26002, 26, "Mbozi"),
            (26003, 26, "Momba"),
            (26004, 26, "Songwe"),
            (26005, 26, "Tunduma Town"),

            // =================================================
            // 27. TABORA
            // RegionId = 27
            // =================================================

            (27001, 27, "Igunga"),
            (27002, 27, "Kaliua"),
            (27003, 27, "Nzega"),
            (27004, 27, "Nzega Town"),
            (27005, 27, "Sikonge"),
            (27006, 27, "Tabora Municipal"),
            (27007, 27, "Urambo"),
            (27008, 27, "Uyui"),

            // =================================================
            // 28. TANGA
            // RegionId = 28
            // =================================================

            (28001, 28, "Bumbuli"),
            (28002, 28, "Handeni"),
            (28003, 28, "Handeni Town"),
            (28004, 28, "Kilindi"),
            (28005, 28, "Korogwe"),
            (28006, 28, "Korogwe Town"),
            (28007, 28, "Lushoto"),
            (28008, 28, "Mkinga"),
            (28009, 28, "Muheza"),
            (28010, 28, "Pangani"),
            (28011, 28, "Tanga City"),

            // =================================================
            // 29. ZANZIBAR NORTH
            // RegionId = 29
            // =================================================

            (29001, 29, "Kaskazini A"),
            (29002, 29, "Kaskazini B"),

            // =================================================
            // 30. ZANZIBAR SOUTH
            // RegionId = 30
            // =================================================

            (30001, 30, "Kati"),
            (30002, 30, "Kusini"),

            // =================================================
            // 31. ZANZIBAR WEST
            // RegionId = 31
            // =================================================

            (31001, 31, "Magharibi A"),
            (31002, 31, "Magharibi B")
        };

        // =====================================================
        // FIRESTORE COLLECTION
        // =====================================================

        var collection =
            _firestore.GetCollection("districts");

        // =====================================================
        // SEED
        // =====================================================

        foreach (var district in districts)
        {
            try
            {
                var data =
                    new Dictionary<string, object>
                    {
                        ["Id"] = district.Id,
                        ["Name"] = district.Name,
                        ["RegionId"] = district.RegionId
                    };

                await collection
                    .GetDocument(district.Id.ToString())
                    .SetDataAsync(data);

                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE SEED] District created: " +
                    $"{district.Id} - " +
                    $"{district.Name} - " +
                    $"RegionId: {district.RegionId}");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE SEED] Failed district: " +
                    $"{district.Id} - {district.Name}");

                System.Diagnostics.Debug.WriteLine(ex);

                throw;
            }
        }

        System.Diagnostics.Debug.WriteLine(
            "[FIREBASE SEED] SUCCESS: " +
            "Tanzania districts have been created.");
    }
}
