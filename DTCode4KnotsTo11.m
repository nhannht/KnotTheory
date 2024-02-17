BeginPackage["KnotTheory`DTCode4KnotsTo11`", {"KnotTheory`"}]
Echo[KnotTheory::loading, "DTCode4KnotsTo11`"]

Begin["`Private`"]

DTStringsTo11 = {
  "bca", "bcda", "bdeac", "cdeab", "bdeafc", "bdefac", "bdfeac",
  "bdefagc", "bdfagce", "befgadc", "begfadc", "cefgabd", "cefgbad",
  "defgabc", "bdegahcf", "bdfagche", "bdfaghce", "bdfahgce",
  "bdgeahcf", "befgahcd", "befgahdc", "befghacd", "befghadc",
  "beghfadc", "behgfadc", "cdefghab", "cdfaghbe", "cdfgbhae",
  "cdgfbhae", "cefghbad", "cefhgbad", "cfehgbad", "bdFaGCHE",
  "bdFagChe", "bdFaGHCE", "bdegahcif", "bdegahicf", "bdegaihcf",
  "bdfahcieg", "bdfahgcie", "bdfgahiec", "bdgahicfe", "bdgaihcfe",
  "bdgeahicf", "bdgeaihcf", "bdgfahiec", "befgaihcd", "befgaihdc",
  "befghacid", "befghaidc", "befhadicg", "befhgaidc", "begfhacid",
  "beghaidcf", "beghfaicd", "beghfaidc", "behgaidcf", "bfghiaecd",
  "bfghiaedc", "bfhigadec", "bfhigaedc", "bfihgaedc", "cdehgibaf",
  "cegfhaibd", "cegibhadf", "cegibhdaf", "cegihadbf", "cfghiabed",
  "cfghibaed", "cfgihabed", "cfgihbaed", "chgfbaied", "dfghiabce",
  "dfghiacbe", "dfhgibace", "efghiabcd", "bdeGaHCIF", "bdeGahCif",
  "bdegaHcIF", "bdeGaHICF", "beGFHaCID", "beGFhaCid", "cdehgIbaF",
  "cEGfHAiBD", "bdegahicjf", "bdegaicjfh", "bdegaihcjf", "bdehaijcgf",
  "bdehajicgf", "bdfagicjeh", "bdfahciejg", "bdfahcijeg", "bdfahcjieg",
  "bdfaigcjeh", "bdfgahjiec", "bdfiahjceg", "bdgahicjef", "bdgahicjfe",
  "bdgahijcef", "bdgahijcfe", "bdgaihcfje", "bdgaijhcfe", "bdgajihcfe",
  "bdgeaicjfh", "bdgfahjiec", "bdheaijcgf", "bdheajicgf", "bdifahjceg",
  "befghajidc", "befgiacjdh", "befgiahcjd", "befhadijcg", "befhadjicg",
  "befhajcidg", "befhajdicg", "befhgajidc", "befhiajcdg", "befhiajdcg",
  "befhjadicg", "begfahijdc", "begfiacjdh", "begfiahcjd", "beghadijfc",
  "beghaidcjf", "beghaijcdf", "beghaijdcf", "beghajicdf", "beghajidcf",
  "begiahcjdf", "begiahdjfc", "begiahjdfc", "behfadijcg", "behfadjicg",
  "behgadijfc", "behgaidcjf", "behgajdicf", "behifajdcg", "beihfajdcg",
  "bfghiaejdc", "bfghiajcde", "bfghiajced", "bfghiajedc", "bfghijacde",
  "bfghijaced", "bfghijaedc", "bfghjiadce", "bfgihaejdc", "bfgihajedc",
  "bfgihjaedc", "bfhgiadjec", "bfhgiajced", "bfhigaejcd", "bfhigaejdc",
  "bfhijgaecd", "bfhijgaedc", "bfhjiadceg", "bfijghaedc", "bfijhgaedc",
  "bfjihgaedc", "cdeghijabf", "cdeghjiabf", "cdfahbijeg", "cdgahibjef",
  "cdgahibjfe", "cdgahijbef", "cdgahijbfe", "cdghbijaef", "cdghbijafe",
  "cdgihbjeaf", "cdhgbijaef", "cdhgbijafe", "cdighbjaef", "cefgihjabd",
  "cefjihdabg", "cegahijdbf", "cegahjidbf", "ceghaibjdf", "ceghbiajfd",
  "ceghibjadf", "cegiahjbdf", "cegihbjadf", "cehgaidjbf", "cehgibjafd",
  "cehjgaibdf", "cehjgbiafd", "ceifbhjdag", "ceigahjdbf", "ceighbjdaf",
  "ceihgbjdaf", "cejghibdaf", "cfghiabjde", "cfghiabjed", "cfghibajed",
  "cfghijbade", "cfghijbaed", "cfgijhbaed", "cfgjihbaed", "cgfhijbade",
  "cgfhijbaed", "cgfijhbaed", "cgfjihbaed", "chfgibjade", "chfgibjaed",
  "chigabjdef", "defghijabc", "deghaijcbf", "dehgaijcbf", "bdeGahiCjf",
  "bdeGaHICJF", "bdeGaICJFH", "bdfaGIcJEH", "bdFagiCjeh", "bdFaGICJEH",
  "bdfaHcIEJG", "bdFahCiejg", "bdFaHCIEJG", "bdfaHcIJEG", "bdFahCijeg",
  "bdFaHCIJEG", "bdFaHCJIEG", "bdFIaHJCEG", "bdgaHIcJEF", "bdGahiCjef",
  "bdGaHICJEF", "bdgaHIcJFE", "bdGahiCjfe", "bdGaHICJFE", "bdGaHIJCEF",
  "bdGaHIJCFE", "bdIFaHJCEG", "beGfahiJdC", "beGHaiDCjf", "beGHaIDCJF",
  "beGHaIJCDF", "beghaIJdcF", "beGHaijDCf", "beGHaIJDCF", "bfHgIadJEC",
  "bfhGiaDjec", "bfHGIaDJEC", "cdeghIJabF", "cdeghJIabF", "cdfaHbIJEG",
  "cdgihbJeaF", "cEFgIHjABD", "ceghibJadF", "cegihbJadF", "cEHgAIdjBF",
  "cEIgAHjdBf", "bdegahjckfi", "bdegaicjfkh", "bdegaicjkfh",
  "bdegaickjfh", "bdegajhckfi", "bdehaijcgkf", "bdehaijckfg",
  "bdehaijckgf", "bdehaijkcfg", "bdehaijkcgf", "bdehajicgkf",
  "bdehajkicgf", "bdehakjicgf", "bdfagicjekh", "bdfagicjkeh",
  "bdfagickjeh", "bdfahcjekgi", "bdfahcjiekg", "bdfahicjkge",
  "bdfaicjkehg", "bdfaickjehg", "bdfaigcjkeh", "bdfaigckjeh",
  "bdfaihcjkge", "bdfaijcekgh", "bdfajicekgh", "bdfgaikjehc",
  "bdfhaijkecg", "bdfhaikjecg", "bdfiahjcekg", "bdgahickjef",
  "bdgahickjfe", "bdgahijcekf", "bdgahijckfe", "bdgahikcjfe",
  "bdgahjcfkei", "bdgahjickfe", "bdgaihjcekf", "bdgaijckfeh",
  "bdgaijhckef", "bdgaijhckfe", "bdgajhcfkei", "bdgajhcifke",
  "bdgajhicfke", "bdgajickfeh", "bdgajihcfke", "bdgajkicfhe",
  "bdgeahjckfi", "bdgeaicjkfh", "bdgeaickjfh", "bdgeajhckfi",
  "bdgfaikjehc", "bdghaijkefc", "bdghaijkfec", "bdhaijkcgef",
  "bdhaijkcgfe", "bdhajkicfge", "bdhajkicgfe", "bdhakjicgfe",
  "bdheaijckfg", "bdheaijckgf", "bdheaijkcfg", "bdheaijkcgf",
  "bdheajkicgf", "bdheakjicgf", "bdhfaijkecg", "bdhfaikjecg",
  "bdhgaijkefc", "bdhgaijkfec", "bdifahjcekg", "befgakijcdh",
  "befgakijdch", "befghaijkcd", "befgiacjkdh", "befgiackjdh",
  "befgiajdkch", "befgiakjdhc", "befgjahckdi", "befgjaidkch",
  "befgkaijcdh", "befgkaijdch", "befhakijcgd", "befhakijdgc",
  "befhakjicgd", "befhakjidgc", "befhiajcdkg", "befhiajdckg",
  "befhiajkdcg", "befhiakcjdg", "befhiakjdcg", "befhjakidcg",
  "befhkaijdgc", "befhkajidgc", "befiadjkchg", "befiadkjchg",
  "befigakdjch", "befihajkdcg", "befihakjdcg", "befjhaidkcg",
  "befjhakdgci", "begfajikcdh", "begfiacjkdh", "begfiackjdh",
  "begfjahckdi", "beghajdckfi", "beghajicdkf", "beghajidckf",
  "beghajkicdf", "beghajkidcf", "beghakjicdf", "beghakjidcf",
  "beghiajckfd", "beghiajkdfc", "begiahckjdf", "begiajckfdh",
  "begiajdkcfh", "begiakdjchf", "begifadjkch", "begifadkjch",
  "begifakcjdh", "begifakdjch", "begihajkdfc", "begjadikcfh",
  "begjahdkfci", "begjahidkcf", "begjahkdfci", "begjakidfch",
  "begjhacfkdi", "begjhaikfcd", "begjhaikfdc", "begkiajcdfh",
  "behfiajckdg", "behgajdckfi", "behgajdickf", "behgfaijkdc",
  "behgiadjkfc", "behgiajckfd", "behgiajkfdc", "behiajkdcgf",
  "behiakjdcgf", "behifadjkgc", "behifajkcdg", "behifajkdcg",
  "behifakjcdg", "behifakjdcg", "behigajkcfd", "behjakidfcg",
  "behjfaickdg", "behjfaidkgc", "behjfaikdgc", "behjgaikfcd",
  "behjgaikfdc", "beifadjkchg", "beifadkjchg", "beifahjdkgc",
  "beifgadjkch", "beifhajdkcg", "beigahjdkcf", "beigakdjchf",
  "beigakjdfch", "beigfadjkch", "beighacjkfd", "beighajdkfc",
  "beighajkfcd", "beihajkdcgf", "beihakjdcgf", "beihfadjkgc",
  "beihgajdkfc", "beihgajkcfd", "beijahcdkgf", "beijakcdfgh",
  "beikgajdcfh", "bejgadikcfh", "bfghiakcjde", "bfghiakcjed",
  "bfghiakjdce", "bfghiakjdec", "bfghiakjedc", "bfghijacdke",
  "bfghijacked", "bfghijadcke", "bfghijakdec", "bfghijakedc",
  "bfghikajdec", "bfghikajedc", "bfghjaeckdi", "bfghjakdcei",
  "bfghjiacked", "bfghkiajecd", "bfgihakjdce", "bfgijaekcdh",
  "bfgijaekdch", "bfgijhakedc", "bfgjhiakecd", "bfgjihakedc",
  "bfgjkiadech", "bfhgiadkjec", "bfhgiakcjed", "bfhgijacked",
  "bfhgjaeckdi", "bfhgjiacked", "bfhigjadcke", "bfhijakecdg",
  "bfhijakedcg", "bfhijgaekdc", "bfhijgakcde", "bfhijgakced",
  "bfhijgakedc", "bfhjgiadkec", "bfhjigaekdc", "bfhjigakedc",
  "bfhkiadcjeg", "bfhkiajecgd", "bfhkjiacged", "bfighakjecd",
  "bfigjakdech", "bfigjhadkce", "bfihjgadkec", "bfihjgakced",
  "bfijgaekdch", "bfijghaekcd", "bfijghaekdc", "bfijhakdecg",
  "bfijhakedcg", "bfijhgaekcd", "bfijhgaekdc", "bfikhadjecg",
  "bfikjgadceh", "bfjigaekdch", "bfjihakedcg", "bgeficajkdh",
  "bgehkiajcfd", "bgejkiadcfh", "bghijkafcde", "bghijkafced",
  "bghijkafedc", "bghikjafdce", "bghjikafedc", "bgijkcadefh",
  "bgijkhaefcd", "bgijkhaefdc", "bgijkhafecd", "bgijkhafedc",
  "bgikhjadfce", "bgjkhiafedc", "bgjkihafedc", "bgkjihafedc",
  "cdeihjkbagf", "cdeihkjbagf", "cdfagibjkeh", "cdfahibjkge",
  "cdfaihbjkge", "cdfaijbekgh", "cdfajibekgh", "cdfjhikbeag",
  "cdfjihkbeag", "cdgahijbkfe", "cdgahjibkfe", "cdgaijbkfeh",
  "cdgajibkfeh", "cdghbijakfe", "cdghbjiakfe", "cdhajkibfge",
  "cdhgbijakfe", "cdhgbjiakfe", "cefghikjbad", "cefgjikdbah",
  "cefijhkbadg", "cefjhikdbag", "cefjihkbadg", "cefkhidjbag",
  "cefkihjbagd", "ceghjbiakfd", "cegiajkbfdh", "cegjaibkfdh",
  "cegjbiakdfh", "cehfbijkadg", "cehfbikjadg", "cehfiajkbdg",
  "cehfiakjbdg", "cehfjaibkdg", "cehgbijkafd", "cehgiajkbfd",
  "cehgjbiakdf", "cehgjiakfbd", "cehigajbkfd", "cehijadbkfg",
  "cehijbdakgf", "cehjbidkafg", "cehjiadkbfg", "cehkbijadfg",
  "cehkbijadgf", "cehkbijdafg", "cehkbijdagf", "cehkiajdbfg",
  "cehkiajdbgf", "cehkjiadfbg", "ceiahjkbdgf", "ceiahkjbdgf",
  "ceigajkdfbh", "ceighbkjfad", "ceigjbkdfah", "ceikhbdjfag",
  "cejgaidkfbh", "cfekhijdbag", "cfghijbaked", "cfghjibaked",
  "cfgijabkedh", "cfgijbakedh", "cfgjiabkedh", "cfgjibakedh",
  "cfhgijakbed", "cfhgjiakbed", "cfhigbjkade", "cfhikbjeadg",
  "cfhjkbieagd", "cfhjkiaebgd", "cfhkiajbdge", "cfhkibjadeg",
  "cfhkibjaedg", "cfhkijadbeg", "cfhkjbidaeg", "cfhkjbieagd",
  "cfhkjiadbeg", "cfhkjiaebgd", "cfigkbjdeah", "cfihgbjkaed",
  "cfihkbjdaeg", "cfikgbjdaeh", "cfikhbjdeag", "cfikhbjedag",
  "cgeiakjbfdh", "cgfhjibaked", "cghijkabfde", "cghijkabfed",
  "cghijkbafde", "cghijkbafed", "cghjkiabefd", "cghjkiabfed",
  "cghjkibaefd", "cghjkibafed", "cghkjiabfed", "cghkjibafed",
  "cgihjkbdafe", "cgihkjbdafe", "chfijbkeadg", "chfjibkeadg",
  "cihfbajkedg", "cihfbakjedg", "cihgbajkefd", "cihgjbakfde",
  "cihgjbakfed", "dfhikbjaceg", "dfhjaikcbeg", "dghijkabcfe",
  "dghijkacbfe", "dghijkcbafe", "dghikjabcfe", "dghikjacbfe",
  "dghikjcbafe", "dgihjkbacfe", "dgihkjbacfe", "dhgikjcbafe",
  "eghijkabcdf", "eghijkabdcf", "eghijkbadcf", "fghijkabcde",
  "bdegaHJcKFI", "bdeGahjCkfi", "bdeGaHJCKFI", "bdegaicJfKH",
  "bdegaIcjFkh", "bdegaIcJFKH", "bdeGaiCjfkh", "bdeGaICJFKH",
  "bdegaIcJKFH", "bdeGaiCjkfh", "bdeGaICJKFH", "bdeGaICKJFH",
  "bdehaIJcKFG", "bdeHaijCkfg", "bdeHaIJCKFG", "bdehaIJcKGF",
  "bdeHaijCkgf", "bdeHaIJCKGF", "bdeHaIJKCFG", "bdeHaIJKCGF",
  "bdfaGIcJEKH", "bdFagiCjekh", "bdFaGICJEKH", "bdfagIcJKEH",
  "bdfaGIcJKEH", "bdFagiCjkeh", "bdFaGICJKEH", "bdfaGIcKJEH",
  "bdFagiCkjeh", "bdFaGICKJEH", "bdfaHcJEKGI", "bdFahCjekgi",
  "bdFaHCJEKGI", "bdfaHIcJKGE", "bdFahiCjkge", "bdFaHICJKGE",
  "bdFaICJKEHG", "bdFaICKJEHG", "bdfaIHcJKGE", "bdFaihCjkge",
  "bdFaIHCJKGE", "bdfaIJcEKGH", "bdFaijCekgh", "bdFaIJCEKGH",
  "bdfaJIcEKGH", "bdFajiCekgh", "bdFaJICEKGH", "bdFHaIJKECG",
  "bdFHaIKJECG", "bdFIaHJCEKG", "bdgaHIcKJEF", "bdGahiCkjef",
  "bdGaHICKJEF", "bdgaHIcKJFE", "bdGahiCkjfe", "bdGaHICKJFE",
  "bdGaHIJCEKF", "bdgaHIJcKFE", "bdGahijCkfe", "bdGaHIJCKFE",
  "bdGaHIKCJFE", "bdgaHJIcKFE", "bdGahjiCkfe", "bdGaHJICKFE",
  "bdgaihJceKF", "bdgaIHjcEkf", "bdgaIHJcEKF", "bdGaihjCekf",
  "bdGaIHJCEKF", "bdGaIJCKFEH", "bdgaJhcifKE", "bdGajhCifke",
  "bdGajHCIFke", "bdGaJhCifKE", "bdGaJHCIFKE", "bdgaJhicfKE",
  "bdGajHICFke", "bdGaJHICFKE", "bdGaJICKFEH", "bdgeaIcJKFH",
  "bdHaJKICFGE", "bdHFaIJKECG", "bdHFaIKJECG", "bdIFaHJCEKG",
  "befGhaIjkCd", "befGHaIJKCD", "befgiajdKcH", "befhiaJcdKG",
  "befHIajCDkg", "befhiaJdcKG", "befHIajDCkg", "befJHaIDKCG",
  "begFaJikcDh", "begfajiKcdH", "begFaJiKcDH", "beGFaJIKCDH",
  "begfIacJKDH", "beGFiaCjkdh", "beGFIaCJKDH", "begfIacKJDH",
  "beGFiaCkjdh", "beGFIaCKJDH", "begfJahcKDI", "beGHaJKICDF",
  "beghaJKidcF", "beGHajkIDCf", "beGHaJKIDCF", "beGHiajCkfd",
  "beGhiajKdfC", "begHIajkDfc", "beGHIaJKDFC", "begiajdKcfH",
  "beGihajKdfC", "begihaJkdFc", "begIHajkDfc", "beGIHajKDfC",
  "beGIHaJKDFC", "beGjaHIDKcF", "begJahidkCf", "beGJaHIDKCF",
  "beHFiaJCkdG", "beHFIaJCKDG", "beHGfaIJKDC", "behGIaDjkFc",
  "beHIgajkCfd", "beIFaHJDKGC", "beiFHaJDkcG", "beIGHaCJKFD",
  "beIGHaJDKFC", "beIGHaJKFCD", "beiHGajDkfc", "beIHGaJDKFC",
  "beIJaHCDKGF", "beIKGaJDCFH", "bfgHkIaJECd", "bfHgiadKjeC",
  "bfHGijaCked", "bfHGIJaCKED", "bfhgJIacKED", "bfHGjiaCked",
  "bfHGJIaCKED", "bfHJGIaDKEC", "bfHkIaJECGd", "bfiGhakJecD",
  "bgEJKiaDCfH", "bgejkIadcFh", "bgEJKIaDCFH", "bgIJKCaDEFH",
  "cdeihJKbaGF", "cdeihKJbaGF", "cdfaHIbJKGE", "cdfaIJbEKGH",
  "cdfjhiKbeaG", "cdfjHIkbEag", "cdfjihKbeaG", "cEfghIkjBad",
  "cEFgHIkjBAd", "cefijhKbadG", "cefIJhkbaDg", "cEfjhIkdBag",
  "cefjihKbadG", "cEfkhIdjBag", "cEFkHIdjBAg", "cEghJBIakFD",
  "cEghjBiakfd", "ceGiajkBfdh", "cegjaIbkFdh", "cegjbIakdFh",
  "cEHfIAjkBDg", "cehfiaKJbdG", "cEHfIAkjBDg", "ceHfjaiBkdg",
  "cEhfjAibkdg", "cEhgjBiakdf", "cEHgJIAkFBD", "ceHijadBkfg",
  "cEhijAdbkfg", "cEhijBdakgf", "cEJgAIdkFBh", "cFHgIJAkBED",
  "cFHgJIAkBED", "cFhigBjkade", "cGeIakjBfDh", "cGeiakjBfdh",
  "cihgJbakfDE"
}

Module[
  {K, Type, dts, at, n, k, dt, t},
  at = 0;
  Do[
    Type = {Alternating, NonAlternating}[[t]];
    Do[
      dts = DTStringsTo11[[++at]];
      K = Knot[n, Type, k];
      dt = If[# >= 97, 2(# - 96), -2(# - 64)] & /@ ToCharacterCode[dts];
      dt = DTCode @@ dt;
      DTCode[K] = dt,
      {k, NumberOfKnots[n, Type]}
    ],
    {n, 3, 11}, {t, 2}
  ]
]

Clear[DTStringsTo11]

End[]; EndPackage[]