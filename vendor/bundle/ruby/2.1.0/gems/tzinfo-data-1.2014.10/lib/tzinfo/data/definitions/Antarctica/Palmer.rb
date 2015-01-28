# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Antarctica
        module Palmer
          include TimezoneDefinition
          
          timezone 'Antarctica/Palmer' do |tz|
            tz.offset :o0, 0, 0, :zzz
            tz.offset :o1, -14400, 3600, :ARST
            tz.offset :o2, -14400, 0, :ART
            tz.offset :o3, -10800, 0, :ART
            tz.offset :o4, -10800, 3600, :ARST
            tz.offset :o5, -14400, 0, :CLT
            tz.offset :o6, -14400, 3600, :CLST
            
            tz.transition 1965, 1, :o1, -157766400, 4877523, 2
            tz.transition 1965, 3, :o2, -152658000, 19510565, 8
            tz.transition 1965, 10, :o1, -132955200, 7317146, 3
            tz.transition 1966, 3, :o2, -121122000, 19513485, 8
            tz.transition 1966, 10, :o1, -101419200, 7318241, 3
            tz.transition 1967, 4, :o2, -86821200, 19516661, 8
            tz.transition 1967, 10, :o1, -71092800, 7319294, 3
            tz.transition 1968, 4, :o2, -54766800, 19519629, 8
            tz.transition 1968, 10, :o1, -39038400, 7320407, 3
            tz.transition 1969, 4, :o2, -23317200, 19522541, 8
            tz.transition 1969, 10, :o3, -7588800, 7321499, 3
            tz.transition 1974, 1, :o4, 128142000
            tz.transition 1974, 5, :o3, 136605600
            tz.transition 1982, 5, :o5, 389070000
            tz.transition 1982, 10, :o6, 403070400
            tz.transition 1983, 3, :o5, 416372400
            tz.transition 1983, 10, :o6, 434520000
            tz.transition 1984, 3, :o5, 447822000
            tz.transition 1984, 10, :o6, 466574400
            tz.transition 1985, 3, :o5, 479271600
            tz.transition 1985, 10, :o6, 498024000
            tz.transition 1986, 3, :o5, 510721200
            tz.transition 1986, 10, :o6, 529473600
            tz.transition 1987, 4, :o5, 545194800
            tz.transition 1987, 10, :o6, 560923200
            tz.transition 1988, 3, :o5, 574225200
            tz.transition 1988, 10, :o6, 591768000
            tz.transition 1989, 3, :o5, 605674800
            tz.transition 1989, 10, :o6, 624427200
            tz.transition 1990, 3, :o5, 637729200
            tz.transition 1990, 9, :o6, 653457600
            tz.transition 1991, 3, :o5, 668574000
            tz.transition 1991, 10, :o6, 687326400
            tz.transition 1992, 3, :o5, 700628400
            tz.transition 1992, 10, :o6, 718776000
            tz.transition 1993, 3, :o5, 732078000
            tz.transition 1993, 10, :o6, 750225600
            tz.transition 1994, 3, :o5, 763527600
            tz.transition 1994, 10, :o6, 781675200
            tz.transition 1995, 3, :o5, 794977200
            tz.transition 1995, 10, :o6, 813729600
            tz.transition 1996, 3, :o5, 826426800
            tz.transition 1996, 10, :o6, 845179200
            tz.transition 1997, 3, :o5, 859690800
            tz.transition 1997, 10, :o6, 876628800
            tz.transition 1998, 3, :o5, 889930800
            tz.transition 1998, 9, :o6, 906868800
            tz.transition 1999, 4, :o5, 923194800
            tz.transition 1999, 10, :o6, 939528000
            tz.transition 2000, 3, :o5, 952830000
            tz.transition 2000, 10, :o6, 971582400
            tz.transition 2001, 3, :o5, 984279600
            tz.transition 2001, 10, :o6, 1003032000
            tz.transition 2002, 3, :o5, 1015729200
            tz.transition 2002, 10, :o6, 1034481600
            tz.transition 2003, 3, :o5, 1047178800
            tz.transition 2003, 10, :o6, 1065931200
            tz.transition 2004, 3, :o5, 1079233200
            tz.transition 2004, 10, :o6, 1097380800
            tz.transition 2005, 3, :o5, 1110682800
            tz.transition 2005, 10, :o6, 1128830400
            tz.transition 2006, 3, :o5, 1142132400
            tz.transition 2006, 10, :o6, 1160884800
            tz.transition 2007, 3, :o5, 1173582000
            tz.transition 2007, 10, :o6, 1192334400
            tz.transition 2008, 3, :o5, 1206846000
            tz.transition 2008, 10, :o6, 1223784000
            tz.transition 2009, 3, :o5, 1237086000
            tz.transition 2009, 10, :o6, 1255233600
            tz.transition 2010, 4, :o5, 1270350000
            tz.transition 2010, 10, :o6, 1286683200
            tz.transition 2011, 5, :o5, 1304823600
            tz.transition 2011, 8, :o6, 1313899200
            tz.transition 2012, 4, :o5, 1335668400
            tz.transition 2012, 9, :o6, 1346558400
            tz.transition 2013, 4, :o5, 1367118000
            tz.transition 2013, 9, :o6, 1378612800
            tz.transition 2014, 4, :o5, 1398567600
            tz.transition 2014, 9, :o6, 1410062400
            tz.transition 2015, 4, :o5, 1430017200
            tz.transition 2015, 9, :o6, 1441512000
            tz.transition 2016, 4, :o5, 1461466800
            tz.transition 2016, 9, :o6, 1472961600
            tz.transition 2017, 4, :o5, 1492916400
            tz.transition 2017, 9, :o6, 1504411200
            tz.transition 2018, 4, :o5, 1524970800
            tz.transition 2018, 9, :o6, 1535860800
            tz.transition 2019, 4, :o5, 1556420400
            tz.transition 2019, 9, :o6, 1567915200
            tz.transition 2020, 4, :o5, 1587870000
            tz.transition 2020, 9, :o6, 1599364800
            tz.transition 2021, 4, :o5, 1619319600
            tz.transition 2021, 9, :o6, 1630814400
            tz.transition 2022, 4, :o5, 1650769200
            tz.transition 2022, 9, :o6, 1662264000
            tz.transition 2023, 4, :o5, 1682218800
            tz.transition 2023, 9, :o6, 1693713600
            tz.transition 2024, 4, :o5, 1714273200
            tz.transition 2024, 9, :o6, 1725768000
            tz.transition 2025, 4, :o5, 1745722800
            tz.transition 2025, 9, :o6, 1757217600
            tz.transition 2026, 4, :o5, 1777172400
            tz.transition 2026, 9, :o6, 1788667200
            tz.transition 2027, 4, :o5, 1808622000
            tz.transition 2027, 9, :o6, 1820116800
            tz.transition 2028, 4, :o5, 1840071600
            tz.transition 2028, 9, :o6, 1851566400
            tz.transition 2029, 4, :o5, 1872126000
            tz.transition 2029, 9, :o6, 1883016000
            tz.transition 2030, 4, :o5, 1903575600
            tz.transition 2030, 9, :o6, 1915070400
            tz.transition 2031, 4, :o5, 1935025200
            tz.transition 2031, 9, :o6, 1946520000
            tz.transition 2032, 4, :o5, 1966474800
            tz.transition 2032, 9, :o6, 1977969600
            tz.transition 2033, 4, :o5, 1997924400
            tz.transition 2033, 9, :o6, 2009419200
            tz.transition 2034, 4, :o5, 2029374000
            tz.transition 2034, 9, :o6, 2040868800
            tz.transition 2035, 4, :o5, 2061428400
            tz.transition 2035, 9, :o6, 2072318400
            tz.transition 2036, 4, :o5, 2092878000
            tz.transition 2036, 9, :o6, 2104372800
            tz.transition 2037, 4, :o5, 2124327600
            tz.transition 2037, 9, :o6, 2135822400
            tz.transition 2038, 4, :o5, 2155777200, 19724309, 8
            tz.transition 2038, 9, :o6, 2167272000, 7397015, 3
            tz.transition 2039, 4, :o5, 2187226800, 19727221, 8
            tz.transition 2039, 9, :o6, 2198721600, 7398107, 3
            tz.transition 2040, 4, :o5, 2219281200, 19730189, 8
            tz.transition 2040, 9, :o6, 2230171200, 7399199, 3
            tz.transition 2041, 4, :o5, 2250730800, 19733101, 8
            tz.transition 2041, 9, :o6, 2262225600, 7400312, 3
            tz.transition 2042, 4, :o5, 2282180400, 19736013, 8
            tz.transition 2042, 9, :o6, 2293675200, 7401404, 3
            tz.transition 2043, 4, :o5, 2313630000, 19738925, 8
            tz.transition 2043, 9, :o6, 2325124800, 7402496, 3
            tz.transition 2044, 4, :o5, 2345079600, 19741837, 8
            tz.transition 2044, 9, :o6, 2356574400, 7403588, 3
            tz.transition 2045, 4, :o5, 2376529200, 19744749, 8
            tz.transition 2045, 9, :o6, 2388024000, 7404680, 3
            tz.transition 2046, 4, :o5, 2408583600, 19747717, 8
            tz.transition 2046, 9, :o6, 2419473600, 7405772, 3
            tz.transition 2047, 4, :o5, 2440033200, 19750629, 8
            tz.transition 2047, 9, :o6, 2451528000, 7406885, 3
            tz.transition 2048, 4, :o5, 2471482800, 19753541, 8
            tz.transition 2048, 9, :o6, 2482977600, 7407977, 3
            tz.transition 2049, 4, :o5, 2502932400, 19756453, 8
            tz.transition 2049, 9, :o6, 2514427200, 7409069, 3
            tz.transition 2050, 4, :o5, 2534382000, 19759365, 8
            tz.transition 2050, 9, :o6, 2545876800, 7410161, 3
            tz.transition 2051, 4, :o5, 2565831600, 19762277, 8
            tz.transition 2051, 9, :o6, 2577326400, 7411253, 3
            tz.transition 2052, 4, :o5, 2597886000, 19765245, 8
            tz.transition 2052, 9, :o6, 2609380800, 7412366, 3
            tz.transition 2053, 4, :o5, 2629335600, 19768157, 8
            tz.transition 2053, 9, :o6, 2640830400, 7413458, 3
            tz.transition 2054, 4, :o5, 2660785200, 19771069, 8
            tz.transition 2054, 9, :o6, 2672280000, 7414550, 3
            tz.transition 2055, 4, :o5, 2692234800, 19773981, 8
            tz.transition 2055, 9, :o6, 2703729600, 7415642, 3
            tz.transition 2056, 4, :o5, 2723684400, 19776893, 8
            tz.transition 2056, 9, :o6, 2735179200, 7416734, 3
            tz.transition 2057, 4, :o5, 2755738800, 19779861, 8
            tz.transition 2057, 9, :o6, 2766628800, 7417826, 3
            tz.transition 2058, 4, :o5, 2787188400, 19782773, 8
            tz.transition 2058, 9, :o6, 2798683200, 7418939, 3
            tz.transition 2059, 4, :o5, 2818638000, 19785685, 8
            tz.transition 2059, 9, :o6, 2830132800, 7420031, 3
            tz.transition 2060, 4, :o5, 2850087600, 19788597, 8
            tz.transition 2060, 9, :o6, 2861582400, 7421123, 3
            tz.transition 2061, 4, :o5, 2881537200, 19791509, 8
            tz.transition 2061, 9, :o6, 2893032000, 7422215, 3
            tz.transition 2062, 4, :o5, 2912986800, 19794421, 8
            tz.transition 2062, 9, :o6, 2924481600, 7423307, 3
            tz.transition 2063, 4, :o5, 2945041200, 19797389, 8
            tz.transition 2063, 9, :o6, 2955931200, 7424399, 3
            tz.transition 2064, 4, :o5, 2976490800, 19800301, 8
          end
        end
      end
    end
  end
end
