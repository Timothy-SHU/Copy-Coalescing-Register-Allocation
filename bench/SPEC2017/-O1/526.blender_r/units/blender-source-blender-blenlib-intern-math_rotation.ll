; ModuleID = 'blender/source/blender/blenlib/intern/math_rotation.c'
source_filename = "blender/source/blender/blenlib/intern/math_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RotOrderInfo = type { [3 x i16], i16 }
%struct.DualQuat = type { [4 x float], [4 x float], [4 x [4 x float]], float }

@.str = private unnamed_addr constant [25 x i8] c"%s: %.3f %.3f %.3f %.3f\0A\00", align 1
@rotOrders = internal unnamed_addr constant [6 x %struct.RotOrderInfo] [%struct.RotOrderInfo { [3 x i16] [i16 0, i16 1, i16 2], i16 0 }, %struct.RotOrderInfo { [3 x i16] [i16 0, i16 2, i16 1], i16 1 }, %struct.RotOrderInfo { [3 x i16] [i16 1, i16 0, i16 2], i16 1 }, %struct.RotOrderInfo { [3 x i16] [i16 1, i16 2, i16 0], i16 0 }, %struct.RotOrderInfo { [3 x i16] [i16 2, i16 0, i16 1], i16 0 }, %struct.RotOrderInfo { [3 x i16] [i16 2, i16 1, i16 0], i16 1 }], align 16
@__const.quat_apply_track.quat_track = private unnamed_addr constant [6 x [4 x float]] [[4 x float] [float 0x3FE6A09E60000000, float 0.000000e+00, float 0xBFE6A09E60000000, float 0.000000e+00], [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 0x3FE6A09E60000000, float 0.000000e+00, float 0.000000e+00, float 0x3FE6A09E60000000], [4 x float] [float 0x3FE6A09E60000000, float 0.000000e+00, float 0x3FE6A09E60000000, float 0.000000e+00], [4 x float] [float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 5.000000e-01], [4 x float] [float 0.000000e+00, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0.000000e+00]], align 16
@__const.quat_apply_track.q = private unnamed_addr constant [4 x float] [float 0x3FE6A09E60000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@_axis_convert_lut = internal unnamed_addr constant [23 x [24 x i32]] [[24 x i32] [i32 2248, i32 1232, i32 736, i32 2792, i32 1793, i32 1297, i32 281, i32 2857, i32 1666, i32 2186, i32 154, i32 674, i32 2059, i32 1043, i32 547, i32 2603, i32 1604, i32 1108, i32 92, i32 2668, i32 1861, i32 2381, i32 349, i32 869], [24 x i32] [i32 2760, i32 2256, i32 1248, i32 744, i32 1857, i32 2385, i32 345, i32 873, i32 1794, i32 2826, i32 282, i32 1314, i32 2571, i32 2067, i32 1059, i32 555, i32 1668, i32 2196, i32 156, i32 684, i32 1605, i32 2637, i32 93, i32 1125], [24 x i32] [i32 1224, i32 720, i32 2784, i32 2280, i32 1665, i32 657, i32 153, i32 2217, i32 1602, i32 1098, i32 90, i32 2658, i32 1035, i32 531, i32 2595, i32 2091, i32 1860, i32 852, i32 348, i32 2412, i32 1797, i32 1293, i32 285, i32 2853], [24 x i32] [i32 712, i32 2768, i32 2272, i32 1256, i32 1601, i32 2641, i32 89, i32 1129, i32 1858, i32 842, i32 346, i32 2402, i32 523, i32 2579, i32 2083, i32 1067, i32 1796, i32 2836, i32 284, i32 1324, i32 1669, i32 653, i32 157, i32 2213], [24 x i32] [i32 1800, i32 2832, i32 288, i32 1320, i32 2241, i32 2769, i32 729, i32 1257, i32 2370, i32 1866, i32 858, i32 354, i32 1611, i32 2643, i32 99, i32 1131, i32 2052, i32 2580, i32 540, i32 1068, i32 2181, i32 1677, i32 669, i32 165], [24 x i32] [i32 2824, i32 272, i32 1312, i32 1832, i32 2369, i32 337, i32 857, i32 1897, i32 2050, i32 2570, i32 538, i32 1058, i32 2635, i32 83, i32 1123, i32 1643, i32 2180, i32 148, i32 668, i32 1708, i32 2245, i32 2765, i32 733, i32 1253], [24 x i32] [i32 1288, i32 1808, i32 2848, i32 296, i32 2177, i32 1681, i32 665, i32 169, i32 2242, i32 1226, i32 730, i32 2786, i32 1099, i32 1619, i32 2659, i32 107, i32 2372, i32 1876, i32 860, i32 364, i32 2053, i32 1037, i32 541, i32 2597], [24 x i32] [i32 264, i32 1296, i32 1824, i32 2856, i32 2049, i32 1041, i32 537, i32 2601, i32 2178, i32 138, i32 666, i32 1698, i32 75, i32 1107, i32 1635, i32 2667, i32 2244, i32 1236, i32 732, i32 2796, i32 2373, i32 333, i32 861, i32 1893], [24 x i32] [i32 1864, i32 848, i32 352, i32 2408, i32 2753, i32 721, i32 1241, i32 2281, i32 2626, i32 1610, i32 1114, i32 98, i32 1675, i32 659, i32 163, i32 2219, i32 2564, i32 532, i32 1052, i32 2092, i32 2821, i32 1805, i32 1309, i32 293], [24 x i32] [i32 2376, i32 1872, i32 864, i32 360, i32 2817, i32 1809, i32 1305, i32 297, i32 2754, i32 2250, i32 1242, i32 738, i32 2187, i32 1683, i32 675, i32 171, i32 2628, i32 1620, i32 1116, i32 108, i32 2565, i32 2061, i32 1053, i32 549], [24 x i32] [i32 840, i32 336, i32 2400, i32 1896, i32 2625, i32 81, i32 1113, i32 1641, i32 2562, i32 522, i32 1050, i32 2082, i32 651, i32 147, i32 2211, i32 1707, i32 2820, i32 276, i32 1308, i32 1836, i32 2757, i32 717, i32 1245, i32 2277], [24 x i32] [i32 328, i32 2384, i32 1888, i32 872, i32 2561, i32 2065, i32 1049, i32 553, i32 2818, i32 266, i32 1306, i32 1826, i32 139, i32 2195, i32 1699, i32 683, i32 2756, i32 2260, i32 1244, i32 748, i32 2629, i32 77, i32 1117, i32 1637], [24 x i32] [i32 1672, i32 2192, i32 160, i32 680, i32 1217, i32 2257, i32 2777, i32 745, i32 1282, i32 1802, i32 2842, i32 290, i32 1867, i32 2387, i32 355, i32 875, i32 1028, i32 2068, i32 2588, i32 556, i32 1093, i32 1613, i32 2653, i32 101], [24 x i32] [i32 2184, i32 144, i32 672, i32 1704, i32 1281, i32 273, i32 2841, i32 1833, i32 1026, i32 2058, i32 2586, i32 546, i32 2379, i32 339, i32 867, i32 1899, i32 1092, i32 84, i32 2652, i32 1644, i32 1221, i32 2253, i32 2781, i32 741], [24 x i32] [i32 648, i32 1680, i32 2208, i32 168, i32 1089, i32 1617, i32 2649, i32 105, i32 1218, i32 714, i32 2778, i32 2274, i32 843, i32 1875, i32 2403, i32 363, i32 1284, i32 1812, i32 2844, i32 300, i32 1029, i32 525, i32 2589, i32 2085], [24 x i32] [i32 136, i32 656, i32 1696, i32 2216, i32 1025, i32 529, i32 2585, i32 2089, i32 1090, i32 74, i32 2650, i32 1634, i32 331, i32 851, i32 1891, i32 2411, i32 1220, i32 724, i32 2780, i32 2284, i32 1285, i32 269, i32 2845, i32 1829], [24 x i32] [i32 1608, i32 1104, i32 96, i32 2664, i32 705, i32 1233, i32 2265, i32 2793, i32 642, i32 1674, i32 2202, i32 162, i32 1803, i32 1299, i32 291, i32 2859, i32 516, i32 1044, i32 2076, i32 2604, i32 837, i32 1869, i32 2397, i32 357], [24 x i32] [i32 2632, i32 1616, i32 1120, i32 104, i32 833, i32 1873, i32 2393, i32 361, i32 706, i32 2762, i32 2266, i32 1250, i32 2827, i32 1811, i32 1315, i32 299, i32 644, i32 1684, i32 2204, i32 172, i32 517, i32 2573, i32 2077, i32 1061], [24 x i32] [i32 1096, i32 80, i32 2656, i32 1640, i32 641, i32 145, i32 2201, i32 1705, i32 514, i32 1034, i32 2074, i32 2594, i32 1291, i32 275, i32 2851, i32 1835, i32 836, i32 340, i32 2396, i32 1900, i32 709, i32 1229, i32 2269, i32 2789], [24 x i32] [i32 72, i32 2640, i32 1632, i32 1128, i32 513, i32 2577, i32 2073, i32 1065, i32 834, i32 330, i32 2394, i32 1890, i32 267, i32 2835, i32 1827, i32 1323, i32 708, i32 2772, i32 2268, i32 1260, i32 645, i32 141, i32 2205, i32 1701], [24 x i32] [i32 2056, i32 2576, i32 544, i32 1064, i32 257, i32 2833, i32 1817, i32 1321, i32 322, i32 2378, i32 1882, i32 866, i32 2251, i32 2771, i32 739, i32 1259, i32 68, i32 2644, i32 1628, i32 1132, i32 133, i32 2189, i32 1693, i32 677], [24 x i32] [i32 2568, i32 528, i32 1056, i32 2088, i32 321, i32 849, i32 1881, i32 2409, i32 66, i32 2634, i32 1626, i32 1122, i32 2763, i32 723, i32 1251, i32 2283, i32 132, i32 660, i32 1692, i32 2220, i32 261, i32 2829, i32 1821, i32 1317], [24 x i32] [i32 1032, i32 2064, i32 2592, i32 552, i32 129, i32 2193, i32 1689, i32 681, i32 258, i32 1290, i32 1818, i32 2850, i32 1227, i32 2259, i32 2787, i32 747, i32 324, i32 2388, i32 1884, i32 876, i32 69, i32 1101, i32 1629, i32 2661]], align 16
@_axis_convert_matrix = internal global [23 x [3 x [3 x float]]] [[3 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]], [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00]], [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00]], [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00]], [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @unit_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @unit_qt(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_qt_qt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_zero_qt(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds float, ptr %0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %8, %4, %1
  %18 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %16, %12 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fneg float %7
  %11 = fmul float %9, %10
  %12 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %11)
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fneg float %14
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %16, float %12)
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %2, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fneg float %20
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %22, float %18)
  %25 = fmul float %5, %7
  %26 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %14, float %22, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %23, float %16, float %27)
  %29 = fmul float %5, %14
  %30 = tail call float @llvm.fmuladd.f32(float %4, float %16, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %20, float %9, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %10, float %22, float %31)
  %33 = fmul float %5, %20
  %34 = tail call float @llvm.fmuladd.f32(float %4, float %22, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %7, float %16, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %17, float %9, float %35)
  %37 = getelementptr inbounds float, ptr %0, i64 3
  store float %36, ptr %37, align 4, !tbaa !34
  store float %24, ptr %0, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %39, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_qt_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fneg float %4
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fneg float %8
  %12 = fmul float %10, %11
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %12)
  %14 = getelementptr inbounds float, ptr %0, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fneg float %15
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %17, float %13)
  %20 = load float, ptr %0, align 4, !tbaa !34
  %21 = fmul float %8, %17
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %6, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %10, float %22)
  %24 = fmul float %6, %15
  %25 = tail call float @llvm.fmuladd.f32(float %20, float %10, float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %5, float %17, float %25)
  %27 = fmul float %4, %10
  %28 = tail call float @llvm.fmuladd.f32(float %20, float %17, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %11, float %6, float %28)
  store float %29, ptr %16, align 4, !tbaa !34
  store float %23, ptr %1, align 4, !tbaa !34
  store float %26, ptr %9, align 4, !tbaa !34
  %30 = load float, ptr %3, align 4, !tbaa !34
  %31 = fneg float %30
  %32 = load float, ptr %0, align 4, !tbaa !34
  %33 = fmul float %23, %32
  %34 = tail call float @llvm.fmuladd.f32(float %19, float %31, float %33)
  %35 = load float, ptr %14, align 4, !tbaa !34
  %36 = fneg float %26
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %35, float %34)
  %38 = load float, ptr %7, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %29, float %38, float %37)
  %40 = fneg float %38
  %41 = fmul float %26, %32
  %42 = tail call float @llvm.fmuladd.f32(float %19, float %40, float %41)
  %43 = fneg float %29
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %30, float %42)
  %45 = tail call float @llvm.fmuladd.f32(float %23, float %35, float %44)
  %46 = fneg float %35
  %47 = fmul float %29, %32
  %48 = tail call float @llvm.fmuladd.f32(float %19, float %46, float %47)
  %49 = fneg float %23
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %38, float %48)
  %51 = tail call float @llvm.fmuladd.f32(float %26, float %30, float %50)
  store float %51, ptr %16, align 4, !tbaa !34
  store float %39, ptr %1, align 4, !tbaa !34
  store float %45, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @conjugate_qt_qt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fneg float %9
  %11 = getelementptr inbounds float, ptr %0, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fneg float %13
  %15 = getelementptr inbounds float, ptr %0, i64 3
  store float %14, ptr %15, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @conjugate_qt(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds float, ptr %0, i64 1
  %3 = load float, ptr %2, align 4, !tbaa !34
  %4 = fneg float %3
  store float %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  store float %7, ptr %5, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fneg float %9
  store float %10, ptr %8, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dot_qtqt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  %16 = getelementptr inbounds float, ptr %0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %15)
  ret float %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @invert_qt(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  %10 = getelementptr inbounds float, ptr %0, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = fneg float %4
  store float %15, ptr %3, align 4, !tbaa !34
  %16 = fneg float %8
  store float %16, ptr %7, align 4, !tbaa !34
  %17 = fneg float %11
  store float %17, ptr %10, align 4, !tbaa !34
  %18 = fdiv float 1.000000e+00, %12
  %19 = fmul float %2, %18
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = fmul float %18, %15
  store float %20, ptr %3, align 4, !tbaa !34
  %21 = fmul float %18, %16
  store float %21, ptr %7, align 4, !tbaa !34
  %22 = fmul float %18, %17
  store float %22, ptr %10, align 4, !tbaa !34
  br label %23

23:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_qt_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #1 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = fmul float %3, %1
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, %1
  store float %7, ptr %5, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %9, %1
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %0, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %12, %1
  store float %13, ptr %11, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @invert_qt_qt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = fmul float %5, %5
  %14 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %13)
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %14)
  %16 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %15)
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = fneg float %5
  store float %19, ptr %6, align 4, !tbaa !34
  %20 = fneg float %8
  store float %20, ptr %9, align 4, !tbaa !34
  %21 = fneg float %11
  store float %21, ptr %12, align 4, !tbaa !34
  %22 = fdiv float 1.000000e+00, %16
  %23 = fmul float %3, %22
  store float %23, ptr %0, align 4, !tbaa !34
  %24 = fmul float %22, %19
  store float %24, ptr %6, align 4, !tbaa !34
  %25 = fmul float %22, %20
  store float %25, ptr %9, align 4, !tbaa !34
  %26 = fmul float %22, %21
  store float %26, ptr %12, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sub_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = fneg float %4
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %2, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr %1, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fneg float %14
  %16 = fmul float %7, %15
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %5, float %16)
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fneg float %19
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %9, float %17)
  %22 = getelementptr inbounds float, ptr %1, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fneg float %23
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %11, float %21)
  %26 = fmul float %14, %5
  %27 = tail call float @llvm.fmuladd.f32(float %12, float %7, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %19, float %11, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %24, float %9, float %28)
  %30 = fmul float %19, %5
  %31 = tail call float @llvm.fmuladd.f32(float %12, float %9, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %23, float %7, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %15, float %11, float %32)
  %34 = fmul float %23, %5
  %35 = tail call float @llvm.fmuladd.f32(float %12, float %11, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %14, float %9, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %20, float %7, float %36)
  %38 = getelementptr inbounds float, ptr %0, i64 3
  store float %37, ptr %38, align 4, !tbaa !34
  store float %25, ptr %0, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %0, i64 1
  store float %29, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %0, i64 2
  store float %33, ptr %40, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mul_fac_qt_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = fcmp ugt float %3, -1.000000e+00
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = fcmp ult float %3, 1.000000e+00
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call float @acosf(float noundef %3) #17
  br label %9

9:                                                ; preds = %2, %5, %7
  %10 = phi float [ %8, %7 ], [ 0x400921FB60000000, %2 ], [ 0.000000e+00, %5 ]
  %11 = fmul float %10, %1
  %12 = tail call float @cosf(float noundef %11) #17
  %13 = tail call float @sinf(float noundef %11) #17
  store float %12, ptr %0, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %17, %17
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %18)
  %20 = getelementptr inbounds float, ptr %0, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %19)
  %23 = fcmp ogt float %22, 0x38AA95A5C0000000
  br i1 %23, label %24, label %33

24:                                               ; preds = %9
  %25 = tail call float @sqrtf(float noundef %22) #17
  %26 = fdiv float 1.000000e+00, %25
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = fmul float %27, %26
  store float %28, ptr %14, align 4, !tbaa !34
  %29 = load float, ptr %16, align 4, !tbaa !34
  %30 = fmul float %26, %29
  store float %30, ptr %16, align 4, !tbaa !34
  %31 = load float, ptr %20, align 4, !tbaa !34
  %32 = fmul float %26, %31
  br label %34

33:                                               ; preds = %9
  store float 0.000000e+00, ptr %14, align 4, !tbaa !34
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %24, %33
  %35 = phi float [ 0.000000e+00, %33 ], [ %32, %24 ]
  store float %35, ptr %20, align 4, !tbaa !34
  %36 = load float, ptr %14, align 4, !tbaa !34
  %37 = fmul float %13, %36
  store float %37, ptr %14, align 4, !tbaa !34
  %38 = load float, ptr %16, align 4, !tbaa !34
  %39 = fmul float %13, %38
  store float %39, ptr %16, align 4, !tbaa !34
  %40 = fmul float %13, %35
  store float %40, ptr %20, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @quat_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = fmul double %4, 0x3FF6A09E667F3BCD
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = fmul double %8, 0x3FF6A09E667F3BCD
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3FF6A09E667F3BCD
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fpext float %15 to double
  %17 = fmul double %16, 0x3FF6A09E667F3BCD
  %18 = fmul double %5, %9
  %19 = fmul double %5, %13
  %20 = fmul double %5, %17
  %21 = fmul double %9, %9
  %22 = fmul double %9, %13
  %23 = fmul double %9, %17
  %24 = fmul double %13, %13
  %25 = fmul double %13, %17
  %26 = fmul double %17, %17
  %27 = fsub double 1.000000e+00, %24
  %28 = fsub double %27, %26
  %29 = fptrunc double %28 to float
  store float %29, ptr %0, align 4, !tbaa !34
  %30 = fadd double %22, %20
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = fsub double %23, %19
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fsub double %22, %20
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = fsub double 1.000000e+00, %21
  %40 = fsub double %39, %26
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = fadd double %18, %25
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = fadd double %19, %23
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fsub double %25, %18
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = fsub double %39, %24
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @quat_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = fmul double %4, 0x3FF6A09E667F3BCD
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = fmul double %8, 0x3FF6A09E667F3BCD
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3FF6A09E667F3BCD
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fpext float %15 to double
  %17 = fmul double %16, 0x3FF6A09E667F3BCD
  %18 = fmul double %5, %9
  %19 = fmul double %5, %13
  %20 = fmul double %5, %17
  %21 = fmul double %9, %9
  %22 = fmul double %9, %13
  %23 = fmul double %9, %17
  %24 = fmul double %13, %13
  %25 = fmul double %13, %17
  %26 = fmul double %17, %17
  %27 = fsub double 1.000000e+00, %24
  %28 = fsub double %27, %26
  %29 = fptrunc double %28 to float
  store float %29, ptr %0, align 4, !tbaa !34
  %30 = fadd double %22, %20
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = fsub double %23, %19
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 0.000000e+00, ptr %36, align 4, !tbaa !34
  %37 = fsub double %22, %20
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %38, ptr %39, align 4, !tbaa !34
  %40 = fsub double 1.000000e+00, %21
  %41 = fsub double %40, %26
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = fadd double %18, %25
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %47, align 4, !tbaa !34
  %48 = fadd double %19, %23
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fsub double %25, %18
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = fsub double %40, %24
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %58 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %58, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_quat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #17
  call void @normalize_m3(ptr noundef nonnull %3) #17
  %4 = load float, ptr %3, align 16, !tbaa !34
  %5 = fadd float %4, 1.000000e+00
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 1
  %8 = load float, ptr %7, align 16, !tbaa !34
  %9 = fadd float %5, %8
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  %12 = load float, ptr %11, align 16, !tbaa !34
  %13 = fadd float %9, %12
  %14 = fpext float %13 to double
  %15 = fmul double %14, 2.500000e-01
  %16 = fcmp ogt double %15, 0x3F1A36E2E0000000
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = call double @sqrt(double noundef %15) #17
  %19 = fptrunc double %18 to float
  store float %19, ptr %0, align 4, !tbaa !34
  %20 = fmul double %18, 4.000000e+00
  %21 = fdiv double 1.000000e+00, %20
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = fpext float %26 to double
  %28 = fmul double %21, %27
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds float, ptr %0, i64 1
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = load float, ptr %10, align 8, !tbaa !34
  %32 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !34
  %34 = fsub float %31, %33
  %35 = fpext float %34 to double
  %36 = fmul double %21, %35
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %6, align 4, !tbaa !34
  %42 = fsub float %40, %41
  br label %138

43:                                               ; preds = %2
  %44 = fcmp ogt float %4, %8
  %45 = fcmp ogt float %4, %12
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = fsub float %5, %8
  %49 = fsub float %48, %12
  %50 = call float @sqrtf(float noundef %49) #17
  %51 = fmul float %50, 2.000000e+00
  %52 = fpext float %51 to double
  %53 = fmul float %51, 2.500000e-01
  %54 = getelementptr inbounds float, ptr %0, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fdiv double 1.000000e+00, %52
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fsub float %57, %59
  %61 = fpext float %60 to double
  %62 = fmul double %55, %61
  %63 = fptrunc double %62 to float
  store float %63, ptr %0, align 4, !tbaa !34
  %64 = load float, ptr %6, align 4, !tbaa !34
  %65 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = fadd float %64, %66
  %68 = fpext float %67 to double
  %69 = fmul double %55, %68
  %70 = fptrunc double %69 to float
  %71 = getelementptr inbounds float, ptr %0, i64 2
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = load float, ptr %10, align 8, !tbaa !34
  %73 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %74 = load float, ptr %73, align 8, !tbaa !34
  %75 = fadd float %72, %74
  br label %138

76:                                               ; preds = %43
  %77 = fcmp ogt float %8, %12
  br i1 %77, label %78, label %108

78:                                               ; preds = %76
  %79 = fadd float %8, 1.000000e+00
  %80 = fsub float %79, %4
  %81 = fsub float %80, %12
  %82 = call float @sqrtf(float noundef %81) #17
  %83 = fmul float %82, 2.000000e+00
  %84 = fpext float %83 to double
  %85 = fmul float %83, 2.500000e-01
  %86 = getelementptr inbounds float, ptr %0, i64 2
  store float %85, ptr %86, align 4, !tbaa !34
  %87 = fdiv double 1.000000e+00, %84
  %88 = load float, ptr %10, align 8, !tbaa !34
  %89 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %90 = load float, ptr %89, align 8, !tbaa !34
  %91 = fsub float %88, %90
  %92 = fpext float %91 to double
  %93 = fmul double %87, %92
  %94 = fptrunc double %93 to float
  store float %94, ptr %0, align 4, !tbaa !34
  %95 = load float, ptr %6, align 4, !tbaa !34
  %96 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = fadd float %95, %97
  %99 = fpext float %98 to double
  %100 = fmul double %87, %99
  %101 = fptrunc double %100 to float
  %102 = getelementptr inbounds float, ptr %0, i64 1
  store float %101, ptr %102, align 4, !tbaa !34
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = fadd float %104, %106
  br label %138

108:                                              ; preds = %76
  %109 = fadd float %12, 1.000000e+00
  %110 = fsub float %109, %4
  %111 = fsub float %110, %8
  %112 = call float @sqrtf(float noundef %111) #17
  %113 = fmul float %112, 2.000000e+00
  %114 = fpext float %113 to double
  %115 = fmul float %113, 2.500000e-01
  %116 = getelementptr inbounds float, ptr %0, i64 3
  store float %115, ptr %116, align 4, !tbaa !34
  %117 = fdiv double 1.000000e+00, %114
  %118 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !34
  %120 = load float, ptr %6, align 4, !tbaa !34
  %121 = fsub float %119, %120
  %122 = fpext float %121 to double
  %123 = fmul double %117, %122
  %124 = fptrunc double %123 to float
  store float %124, ptr %0, align 4, !tbaa !34
  %125 = load float, ptr %10, align 8, !tbaa !34
  %126 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %127 = load float, ptr %126, align 8, !tbaa !34
  %128 = fadd float %125, %127
  %129 = fpext float %128 to double
  %130 = fmul double %117, %129
  %131 = fptrunc double %130 to float
  %132 = getelementptr inbounds float, ptr %0, i64 1
  store float %131, ptr %132, align 4, !tbaa !34
  %133 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !34
  %135 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !34
  %137 = fadd float %134, %136
  br label %138

138:                                              ; preds = %47, %108, %78, %17
  %139 = phi float [ %75, %47 ], [ %137, %108 ], [ %107, %78 ], [ %42, %17 ]
  %140 = phi double [ %55, %47 ], [ %117, %108 ], [ %87, %78 ], [ %21, %17 ]
  %141 = phi i64 [ 3, %47 ], [ 2, %108 ], [ 3, %78 ], [ 3, %17 ]
  %142 = fpext float %139 to double
  %143 = fmul double %140, %142
  %144 = fptrunc double %143 to float
  %145 = getelementptr inbounds float, ptr %0, i64 %141
  store float %144, ptr %145, align 4, !tbaa !34
  %146 = load float, ptr %0, align 4, !tbaa !34
  %147 = getelementptr inbounds float, ptr %0, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !34
  %149 = fmul float %148, %148
  %150 = call float @llvm.fmuladd.f32(float %146, float %146, float %149)
  %151 = getelementptr inbounds float, ptr %0, i64 2
  %152 = load float, ptr %151, align 4, !tbaa !34
  %153 = call float @llvm.fmuladd.f32(float %152, float %152, float %150)
  %154 = getelementptr inbounds float, ptr %0, i64 3
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = call float @llvm.fmuladd.f32(float %155, float %155, float %153)
  %157 = call float @sqrtf(float noundef %156) #17
  %158 = fcmp une float %157, 0.000000e+00
  br i1 %158, label %159, label %169

159:                                              ; preds = %138
  %160 = fdiv float 1.000000e+00, %157
  %161 = load float, ptr %0, align 4, !tbaa !34
  %162 = fmul float %160, %161
  store float %162, ptr %0, align 4, !tbaa !34
  %163 = load float, ptr %147, align 4, !tbaa !34
  %164 = fmul float %160, %163
  store float %164, ptr %147, align 4, !tbaa !34
  %165 = load float, ptr %151, align 4, !tbaa !34
  %166 = fmul float %160, %165
  store float %166, ptr %151, align 4, !tbaa !34
  %167 = load float, ptr %154, align 4, !tbaa !34
  %168 = fmul float %160, %167
  store float %168, ptr %154, align 4, !tbaa !34
  br label %170

169:                                              ; preds = %138
  store float 1.000000e+00, ptr %147, align 4, !tbaa !34
  store float 0.000000e+00, ptr %154, align 4, !tbaa !34
  store float 0.000000e+00, ptr %151, align 4, !tbaa !34
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %170

170:                                              ; preds = %159, %169
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret void
}

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @normalize_m3(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normalize_qt(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  %10 = getelementptr inbounds float, ptr %0, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = tail call float @sqrtf(float noundef %12) #17
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = fdiv float 1.000000e+00, %13
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fmul float %16, %17
  store float %18, ptr %0, align 4, !tbaa !34
  %19 = load float, ptr %3, align 4, !tbaa !34
  %20 = fmul float %16, %19
  store float %20, ptr %3, align 4, !tbaa !34
  %21 = load float, ptr %7, align 4, !tbaa !34
  %22 = fmul float %16, %21
  store float %22, ptr %7, align 4, !tbaa !34
  %23 = load float, ptr %10, align 4, !tbaa !34
  %24 = fmul float %16, %23
  store float %24, ptr %10, align 4, !tbaa !34
  br label %26

25:                                               ; preds = %1
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %25, %15
  ret float %13
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_quat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef %1) #17
  call void @mat3_to_quat(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_quat_is_ok(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #17
  call void @normalize_m3(ptr noundef nonnull %3) #17
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = load float, ptr %6, align 8, !tbaa !34
  %10 = fmul float %9, %9
  %11 = call float @llvm.fmuladd.f32(float %8, float %8, float %10)
  %12 = fcmp ogt float %11, 0x38AA95A5C0000000
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = fneg float %9
  %15 = call float @sqrtf(float noundef %11) #17
  %16 = fdiv float 1.000000e+00, %15
  %17 = fmul float %8, %16
  %18 = fmul float %16, %14
  %19 = fmul float %16, 0.000000e+00
  br label %20

20:                                               ; preds = %2, %13
  %21 = phi float [ %18, %13 ], [ 0.000000e+00, %2 ]
  %22 = phi float [ %17, %13 ], [ 0.000000e+00, %2 ]
  %23 = phi float [ %19, %13 ], [ 0.000000e+00, %2 ]
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  %25 = load float, ptr %24, align 16, !tbaa !34
  %26 = fcmp ugt float %25, -1.000000e+00
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = fcmp ult float %25, 1.000000e+00
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = call float @acosf(float noundef %25) #17
  %31 = fmul float %30, 5.000000e-01
  br label %32

32:                                               ; preds = %20, %27, %29
  %33 = phi float [ %31, %29 ], [ 0x3FF921FB60000000, %20 ], [ 0.000000e+00, %27 ]
  %34 = call float @cosf(float noundef %33) #17
  %35 = call float @sinf(float noundef %33) #17
  %36 = fneg float %22
  %37 = fmul float %35, %36
  %38 = fneg float %21
  %39 = fmul float %35, %38
  %40 = fneg float %23
  %41 = fmul float %35, %40
  %42 = fpext float %34 to double
  %43 = fmul double %42, 0x3FF6A09E667F3BCD
  %44 = fpext float %37 to double
  %45 = fmul double %44, 0x3FF6A09E667F3BCD
  %46 = fpext float %39 to double
  %47 = fmul double %46, 0x3FF6A09E667F3BCD
  %48 = fpext float %41 to double
  %49 = fmul double %48, 0x3FF6A09E667F3BCD
  %50 = fmul double %43, %45
  %51 = fmul double %43, %47
  %52 = fmul double %43, %49
  %53 = fmul double %45, %45
  %54 = fmul double %45, %47
  %55 = fmul double %45, %49
  %56 = fmul double %47, %47
  %57 = fmul double %47, %49
  %58 = fmul double %49, %49
  %59 = fsub double 1.000000e+00, %56
  %60 = fsub double %59, %58
  %61 = fptrunc double %60 to float
  store float %61, ptr %4, align 16, !tbaa !34
  %62 = fadd double %54, %52
  %63 = fptrunc double %62 to float
  %64 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = fsub double %55, %51
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %66, ptr %67, align 8, !tbaa !34
  %68 = fsub double %54, %52
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds [3 x float], ptr %4, i64 1
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = fsub double 1.000000e+00, %53
  %72 = fsub double %71, %58
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 1
  store float %73, ptr %74, align 16, !tbaa !34
  %75 = fadd double %50, %57
  %76 = fptrunc double %75 to float
  %77 = getelementptr inbounds [3 x float], ptr %4, i64 1, i64 2
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = fadd double %51, %55
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds [3 x float], ptr %4, i64 2
  store float %79, ptr %80, align 8, !tbaa !34
  %81 = fsub double %57, %50
  %82 = fptrunc double %81 to float
  %83 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 1
  store float %82, ptr %83, align 4, !tbaa !34
  %84 = fsub double %71, %56
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds [3 x float], ptr %4, i64 2, i64 2
  store float %85, ptr %86, align 16, !tbaa !34
  %87 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #17
  %88 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = load float, ptr %3, align 16, !tbaa !34
  %91 = call float @atan2f(float noundef %89, float noundef %90) #17
  %92 = fmul float %91, 5.000000e-01
  %93 = call float @cosf(float noundef %92) #17
  %94 = call float @sinf(float noundef %92) #17
  %95 = fneg float %37
  %96 = fmul float %37, -0.000000e+00
  %97 = call float @llvm.fmuladd.f32(float %34, float %93, float %96)
  %98 = fneg float %39
  %99 = call float @llvm.fmuladd.f32(float %98, float 0.000000e+00, float %97)
  %100 = fneg float %41
  %101 = call float @llvm.fmuladd.f32(float %100, float %94, float %99)
  %102 = fmul float %37, %93
  %103 = call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %102)
  %104 = call float @llvm.fmuladd.f32(float %39, float %94, float %103)
  %105 = call float @llvm.fmuladd.f32(float %100, float 0.000000e+00, float %104)
  %106 = fmul float %39, %93
  %107 = call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %106)
  %108 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %107)
  %109 = call float @llvm.fmuladd.f32(float %95, float %94, float %108)
  %110 = fmul float %41, %93
  %111 = call float @llvm.fmuladd.f32(float %34, float %94, float %110)
  %112 = call float @llvm.fmuladd.f32(float %37, float 0.000000e+00, float %111)
  %113 = call float @llvm.fmuladd.f32(float %98, float 0.000000e+00, float %112)
  %114 = getelementptr inbounds float, ptr %0, i64 3
  store float %113, ptr %114, align 4, !tbaa !34
  store float %101, ptr %0, align 4, !tbaa !34
  %115 = getelementptr inbounds float, ptr %0, i64 1
  store float %105, ptr %115, align 4, !tbaa !34
  %116 = getelementptr inbounds float, ptr %0, i64 2
  store float %109, ptr %116, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  ret void
}

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normalize_qt_qt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = fmul float %5, %5
  %14 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %13)
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %14)
  %16 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %15)
  %17 = tail call float @sqrtf(float noundef %16) #17
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = fdiv float 1.000000e+00, %17
  %21 = load float, ptr %0, align 4, !tbaa !34
  %22 = fmul float %20, %21
  store float %22, ptr %0, align 4, !tbaa !34
  %23 = load float, ptr %6, align 4, !tbaa !34
  %24 = fmul float %20, %23
  store float %24, ptr %6, align 4, !tbaa !34
  %25 = load float, ptr %9, align 4, !tbaa !34
  %26 = fmul float %20, %25
  store float %26, ptr %9, align 4, !tbaa !34
  %27 = load float, ptr %12, align 4, !tbaa !34
  %28 = fmul float %20, %27
  store float %28, ptr %12, align 4, !tbaa !34
  br label %30

29:                                               ; preds = %2
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %19, %29
  ret float %17
}

; Function Attrs: nounwind uwtable
define dso_local void @rotation_between_vecs_to_mat3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fneg float %10
  %14 = fmul float %12, %13
  %15 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %14)
  store float %15, ptr %4, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = fneg float %17
  %19 = fmul float %8, %18
  %20 = tail call float @llvm.fmuladd.f32(float %10, float %16, float %19)
  %21 = getelementptr inbounds float, ptr %4, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = fneg float %6
  %23 = fmul float %16, %22
  %24 = tail call float @llvm.fmuladd.f32(float %17, float %12, float %23)
  %25 = getelementptr inbounds float, ptr %4, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = fmul float %20, %20
  %27 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = fcmp ogt float %28, 0x38AA95A5C0000000
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = tail call float @sqrtf(float noundef %28) #17
  %32 = fdiv float 1.000000e+00, %31
  %33 = load float, ptr %4, align 4, !tbaa !34
  %34 = fmul float %33, %32
  store float %34, ptr %4, align 4, !tbaa !34
  %35 = load float, ptr %21, align 4, !tbaa !34
  %36 = fmul float %32, %35
  store float %36, ptr %21, align 4, !tbaa !34
  %37 = load float, ptr %25, align 4, !tbaa !34
  %38 = fmul float %32, %37
  br label %40

39:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %21, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %30, %39
  %41 = phi float [ 0.000000e+00, %39 ], [ %38, %30 ]
  %42 = phi float [ 0.000000e+00, %39 ], [ %31, %30 ]
  store float %41, ptr %25, align 4, !tbaa !34
  %43 = load float, ptr %1, align 4, !tbaa !34
  %44 = load float, ptr %2, align 4, !tbaa !34
  %45 = load float, ptr %5, align 4, !tbaa !34
  %46 = load float, ptr %11, align 4, !tbaa !34
  %47 = fmul float %45, %46
  %48 = tail call float @llvm.fmuladd.f32(float %43, float %44, float %47)
  %49 = load float, ptr %9, align 4, !tbaa !34
  %50 = load float, ptr %7, align 4, !tbaa !34
  %51 = tail call float @llvm.fmuladd.f32(float %49, float %50, float %48)
  %52 = fcmp ogt float %42, 0x3E80000000000000
  br i1 %52, label %53, label %92

53:                                               ; preds = %40, %113
  %54 = phi float [ %42, %40 ], [ 0.000000e+00, %113 ]
  %55 = phi float [ %51, %40 ], [ -1.000000e+00, %113 ]
  %56 = fsub float 1.000000e+00, %55
  %57 = load float, ptr %4, align 4, !tbaa !34
  %58 = fmul float %54, %57
  %59 = load float, ptr %21, align 4, !tbaa !34
  %60 = fmul float %54, %59
  %61 = load float, ptr %25, align 4, !tbaa !34
  %62 = fmul float %54, %61
  %63 = fmul float %57, %57
  %64 = fmul float %56, %63
  %65 = fmul float %57, %59
  %66 = fmul float %56, %65
  %67 = fmul float %59, %59
  %68 = fmul float %56, %67
  %69 = fmul float %57, %61
  %70 = fmul float %56, %69
  %71 = fmul float %59, %61
  %72 = fmul float %56, %71
  %73 = fmul float %61, %61
  %74 = fmul float %56, %73
  %75 = fadd float %55, %64
  store float %75, ptr %0, align 4, !tbaa !34
  %76 = fadd float %66, %62
  %77 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = fsub float %70, %60
  %79 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %78, ptr %79, align 4, !tbaa !34
  %80 = fsub float %66, %62
  %81 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %80, ptr %81, align 4, !tbaa !34
  %82 = fadd float %55, %68
  %83 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %82, ptr %83, align 4, !tbaa !34
  %84 = fadd float %58, %72
  %85 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = fadd float %60, %70
  %87 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %86, ptr %87, align 4, !tbaa !34
  %88 = fsub float %72, %58
  %89 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %88, ptr %89, align 4, !tbaa !34
  %90 = fadd float %55, %74
  %91 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %90, ptr %91, align 4, !tbaa !34
  br label %115

92:                                               ; preds = %40
  %93 = fcmp ogt float %51, 0.000000e+00
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void @unit_m3(ptr noundef %0) #17
  br label %115

95:                                               ; preds = %92
  call void @ortho_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %1) #17
  %96 = load float, ptr %4, align 4, !tbaa !34
  %97 = load float, ptr %21, align 4, !tbaa !34
  %98 = fmul float %97, %97
  %99 = call float @llvm.fmuladd.f32(float %96, float %96, float %98)
  %100 = load float, ptr %25, align 4, !tbaa !34
  %101 = call float @llvm.fmuladd.f32(float %100, float %100, float %99)
  %102 = fcmp ogt float %101, 0x38AA95A5C0000000
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = call float @sqrtf(float noundef %101) #17
  %105 = fdiv float 1.000000e+00, %104
  %106 = load float, ptr %4, align 4, !tbaa !34
  %107 = fmul float %106, %105
  store float %107, ptr %4, align 4, !tbaa !34
  %108 = load float, ptr %21, align 4, !tbaa !34
  %109 = fmul float %105, %108
  store float %109, ptr %21, align 4, !tbaa !34
  %110 = load float, ptr %25, align 4, !tbaa !34
  %111 = fmul float %105, %110
  br label %113

112:                                              ; preds = %95
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %21, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %103, %112
  %114 = phi float [ 0.000000e+00, %112 ], [ %111, %103 ]
  store float %114, ptr %25, align 4, !tbaa !34
  br label %53

115:                                              ; preds = %94, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @axis_angle_normalized_to_mat3_ex(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = fmul float %6, %2
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %9, %2
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %12, %2
  %14 = fmul float %6, %6
  %15 = fmul float %5, %14
  %16 = fmul float %6, %9
  %17 = fmul float %5, %16
  %18 = fmul float %9, %9
  %19 = fmul float %5, %18
  %20 = fmul float %6, %12
  %21 = fmul float %5, %20
  %22 = fmul float %9, %12
  %23 = fmul float %5, %22
  %24 = fmul float %12, %12
  %25 = fmul float %5, %24
  %26 = fadd float %15, %3
  store float %26, ptr %0, align 4, !tbaa !34
  %27 = fadd float %17, %13
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = fsub float %21, %10
  %30 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = fsub float %17, %13
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = fadd float %19, %3
  %34 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = fadd float %7, %23
  %36 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = fadd float %10, %21
  %38 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = fsub float %23, %7
  %40 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %39, ptr %40, align 4, !tbaa !34
  %41 = fadd float %25, %3
  %42 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  ret void
}

declare void @unit_m3(ptr noundef) local_unnamed_addr #8

declare void @ortho_v3_v3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @rotation_between_vecs_to_quat(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fneg float %10
  %14 = fmul float %12, %13
  %15 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %14)
  store float %15, ptr %4, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = fneg float %17
  %19 = fmul float %8, %18
  %20 = tail call float @llvm.fmuladd.f32(float %10, float %16, float %19)
  %21 = getelementptr inbounds float, ptr %4, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = fneg float %6
  %23 = fmul float %16, %22
  %24 = tail call float @llvm.fmuladd.f32(float %17, float %12, float %23)
  %25 = getelementptr inbounds float, ptr %4, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = fmul float %20, %20
  %27 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = fcmp ogt float %28, 0x38AA95A5C0000000
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = tail call float @sqrtf(float noundef %28) #17
  %32 = fdiv float 1.000000e+00, %31
  %33 = load float, ptr %4, align 4, !tbaa !34
  %34 = fmul float %33, %32
  store float %34, ptr %4, align 4, !tbaa !34
  %35 = load float, ptr %21, align 4, !tbaa !34
  %36 = fmul float %32, %35
  store float %36, ptr %21, align 4, !tbaa !34
  %37 = load float, ptr %25, align 4, !tbaa !34
  %38 = fmul float %32, %37
  %39 = fcmp ogt float %31, 0x3E80000000000000
  store float %38, ptr %25, align 4, !tbaa !34
  br i1 %39, label %41, label %54

40:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %21, align 4, !tbaa !34
  store float 0.000000e+00, ptr %25, align 4, !tbaa !34
  br label %54

41:                                               ; preds = %30
  %42 = tail call float @angle_normalized_v3v3(ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %43 = fmul float %42, 5.000000e-01
  %44 = tail call float @sinf(float noundef %43) #17
  %45 = tail call float @cosf(float noundef %43) #17
  store float %45, ptr %0, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %0, i64 1
  %47 = load float, ptr %4, align 4, !tbaa !34
  %48 = fmul float %44, %47
  store float %48, ptr %46, align 4, !tbaa !34
  %49 = load float, ptr %21, align 4, !tbaa !34
  %50 = fmul float %44, %49
  %51 = getelementptr inbounds float, ptr %0, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = load float, ptr %25, align 4, !tbaa !34
  %53 = fmul float %44, %52
  br label %96

54:                                               ; preds = %40, %30
  %55 = load float, ptr %1, align 4, !tbaa !34
  %56 = load float, ptr %2, align 4, !tbaa !34
  %57 = load float, ptr %5, align 4, !tbaa !34
  %58 = load float, ptr %11, align 4, !tbaa !34
  %59 = fmul float %57, %58
  %60 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %59)
  %61 = load float, ptr %9, align 4, !tbaa !34
  %62 = load float, ptr %7, align 4, !tbaa !34
  %63 = tail call float @llvm.fmuladd.f32(float %61, float %62, float %60)
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %66 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %66, align 4, !tbaa !34
  %67 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %67, align 4, !tbaa !34
  br label %96

68:                                               ; preds = %54
  call void @ortho_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %1) #17
  %69 = load float, ptr %4, align 4, !tbaa !34
  %70 = load float, ptr %21, align 4, !tbaa !34
  %71 = fmul float %70, %70
  %72 = call float @llvm.fmuladd.f32(float %69, float %69, float %71)
  %73 = load float, ptr %25, align 4, !tbaa !34
  %74 = call float @llvm.fmuladd.f32(float %73, float %73, float %72)
  %75 = fcmp ogt float %74, 0x38AA95A5C0000000
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = call float @sqrtf(float noundef %74) #17
  %78 = fdiv float 1.000000e+00, %77
  %79 = load float, ptr %4, align 4, !tbaa !34
  %80 = fmul float %79, %78
  %81 = load float, ptr %21, align 4, !tbaa !34
  %82 = fmul float %78, %81
  %83 = load float, ptr %25, align 4, !tbaa !34
  %84 = fmul float %78, %83
  %85 = fcmp une float %77, 0.000000e+00
  br label %86

86:                                               ; preds = %76, %68
  %87 = phi float [ %84, %76 ], [ 0.000000e+00, %68 ]
  %88 = phi float [ %82, %76 ], [ 0.000000e+00, %68 ]
  %89 = phi float [ %80, %76 ], [ 0.000000e+00, %68 ]
  %90 = phi i1 [ %85, %76 ], [ false, %68 ]
  %91 = getelementptr inbounds float, ptr %0, i64 2
  br i1 %90, label %92, label %94

92:                                               ; preds = %86
  store float 0xBE6777A5C0000000, ptr %0, align 4, !tbaa !34
  %93 = getelementptr inbounds float, ptr %0, i64 1
  store float %89, ptr %93, align 4, !tbaa !34
  store float %88, ptr %91, align 4, !tbaa !34
  br label %96

94:                                               ; preds = %86
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %95 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %95, align 4, !tbaa !34
  store float 0.000000e+00, ptr %91, align 4, !tbaa !34
  br label %96

96:                                               ; preds = %94, %92, %65, %41
  %97 = phi i64 [ 1, %94 ], [ 3, %92 ], [ 1, %65 ], [ 3, %41 ]
  %98 = phi float [ 0.000000e+00, %94 ], [ %87, %92 ], [ 0.000000e+00, %65 ], [ %53, %41 ]
  %99 = getelementptr inbounds float, ptr %0, i64 %97
  store float %98, ptr %99, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @axis_angle_normalized_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = fmul float %2, 5.000000e-01
  %5 = tail call float @sinf(float noundef %4) #17
  %6 = tail call float @cosf(float noundef %4) #17
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fmul float %5, %8
  store float %9, ptr %7, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %5, %11
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %5, %15
  %17 = getelementptr inbounds float, ptr %0, i64 3
  store float %16, ptr %17, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @axis_angle_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %8)
  %12 = fcmp ogt float %11, 0x38AA95A5C0000000
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = tail call float @sqrtf(float noundef %11) #17
  %15 = fdiv float 1.000000e+00, %14
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = fmul float %16, %15
  %18 = load float, ptr %5, align 4, !tbaa !34
  %19 = fmul float %15, %18
  %20 = load float, ptr %9, align 4, !tbaa !34
  %21 = fmul float %15, %20
  %22 = fcmp une float %14, 0.000000e+00
  br label %23

23:                                               ; preds = %3, %13
  %24 = phi float [ %21, %13 ], [ 0.000000e+00, %3 ]
  %25 = phi float [ %19, %13 ], [ 0.000000e+00, %3 ]
  %26 = phi float [ %17, %13 ], [ 0.000000e+00, %3 ]
  %27 = phi i1 [ %22, %13 ], [ false, %3 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = fmul float %2, 5.000000e-01
  %30 = tail call float @sinf(float noundef %29) #17
  %31 = tail call float @cosf(float noundef %29) #17
  store float %31, ptr %0, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %0, i64 1
  %33 = fmul float %26, %30
  store float %33, ptr %32, align 4, !tbaa !34
  %34 = fmul float %25, %30
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fmul float %24, %30
  br label %40

37:                                               ; preds = %23
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i64 [ 1, %37 ], [ 3, %28 ]
  %42 = phi float [ 0.000000e+00, %37 ], [ %36, %28 ]
  %43 = getelementptr inbounds float, ptr %0, i64 %41
  store float %42, ptr %43, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rotation_between_quats_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fneg float %9
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fneg float %12
  %14 = fmul float %6, %6
  %15 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %14)
  %16 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %15)
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %16)
  %18 = fdiv float 1.000000e+00, %17
  %19 = fmul float %4, %18
  %20 = fmul float %18, %7
  %21 = fmul float %18, %10
  %22 = fmul float %18, %13
  %23 = load float, ptr %2, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fneg float %20
  %27 = fmul float %25, %26
  %28 = tail call float @llvm.fmuladd.f32(float %19, float %23, float %27)
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fneg float %21
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %30, float %28)
  %33 = getelementptr inbounds float, ptr %2, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fneg float %22
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %34, float %32)
  %37 = fmul float %23, %20
  %38 = tail call float @llvm.fmuladd.f32(float %19, float %25, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %21, float %34, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %30, float %39)
  %41 = fmul float %23, %21
  %42 = tail call float @llvm.fmuladd.f32(float %19, float %30, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %22, float %25, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %26, float %34, float %43)
  %45 = fmul float %23, %22
  %46 = tail call float @llvm.fmuladd.f32(float %19, float %34, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %20, float %30, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %31, float %25, float %47)
  %49 = getelementptr inbounds float, ptr %0, i64 3
  store float %48, ptr %49, align 4, !tbaa !34
  store float %36, ptr %0, align 4, !tbaa !34
  %50 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %0, i64 2
  store float %44, ptr %51, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_qt(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp ugt float %2, -1.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = fcmp ult float %2, 1.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = tail call float @acosf(float noundef %2) #17
  %8 = fmul float %7, 2.000000e+00
  br label %9

9:                                                ; preds = %1, %4, %6
  %10 = phi float [ %8, %6 ], [ 0x401921FB60000000, %1 ], [ 0.000000e+00, %4 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_qt(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %4, %4
  %10 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %9)
  %11 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %11)
  %13 = tail call float @sqrtf(float noundef %12) #17
  %14 = fcmp une float %13, 0.000000e+00
  %15 = fdiv float 1.000000e+00, %13
  %16 = fmul float %2, %15
  %17 = select i1 %14, float %16, float 0.000000e+00
  %18 = fcmp ugt float %17, -1.000000e+00
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = fcmp ult float %17, 1.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = tail call float @acosf(float noundef %17) #17
  %23 = fmul float %22, 2.000000e+00
  br label %24

24:                                               ; preds = %1, %19, %21
  %25 = phi float [ %23, %21 ], [ 0x401921FB60000000, %1 ], [ 0.000000e+00, %19 ]
  ret float %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_qtqt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %5, %5
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %12)
  %14 = fdiv float 1.000000e+00, %13
  %15 = fmul float %3, %14
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fmul float %5, %14
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %7, %14
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float %21)
  %26 = getelementptr inbounds float, ptr %1, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %9, %14
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %27, float %25)
  %30 = fcmp ugt float %29, -1.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = fcmp ult float %29, 1.000000e+00
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = tail call float @acosf(float noundef %29) #17
  %35 = fmul float %34, 2.000000e+00
  br label %36

36:                                               ; preds = %2, %31, %33
  %37 = phi float [ %35, %33 ], [ 0x401921FB60000000, %2 ], [ 0.000000e+00, %31 ]
  ret float %37
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_qtqt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %5, %5
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %12)
  %14 = tail call float @sqrtf(float noundef %13) #17
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = fdiv float 1.000000e+00, %14
  %18 = fmul float %3, %17
  %19 = fmul float %5, %17
  %20 = fmul float %7, %17
  %21 = fmul float %9, %17
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi float [ %21, %16 ], [ 0.000000e+00, %2 ]
  %24 = phi float [ %20, %16 ], [ 0.000000e+00, %2 ]
  %25 = phi float [ %19, %16 ], [ 1.000000e+00, %2 ]
  %26 = phi float [ %18, %16 ], [ 0.000000e+00, %2 ]
  %27 = load float, ptr %1, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds float, ptr %1, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fmul float %29, %29
  %35 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %36)
  %38 = tail call float @sqrtf(float noundef %37) #17
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = fdiv float 1.000000e+00, %38
  %42 = fmul float %27, %41
  %43 = fmul float %29, %41
  %44 = fmul float %31, %41
  %45 = fmul float %33, %41
  br label %46

46:                                               ; preds = %22, %40
  %47 = phi float [ %45, %40 ], [ 0.000000e+00, %22 ]
  %48 = phi float [ %44, %40 ], [ 0.000000e+00, %22 ]
  %49 = phi float [ %43, %40 ], [ 1.000000e+00, %22 ]
  %50 = phi float [ %42, %40 ], [ 0.000000e+00, %22 ]
  %51 = fmul float %25, %25
  %52 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %53)
  %55 = fdiv float 1.000000e+00, %54
  %56 = fmul float %26, %55
  %57 = fmul float %25, %55
  %58 = fmul float %57, %49
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %50, float %58)
  %60 = fmul float %24, %55
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %48, float %59)
  %62 = fmul float %23, %55
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %47, float %61)
  %64 = fcmp ugt float %63, -1.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %46
  %66 = fcmp ult float %63, 1.000000e+00
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = tail call float @acosf(float noundef %63) #17
  %69 = fmul float %68, 2.000000e+00
  br label %70

70:                                               ; preds = %46, %65, %67
  %71 = phi float [ %69, %67 ], [ 0x401921FB60000000, %46 ], [ 0.000000e+00, %65 ]
  ret float %71
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @vec_to_quat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #5 {
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %11)
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %12)
  %16 = tail call float @sqrtf(float noundef %15) #17
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %175, label %18

18:                                               ; preds = %4
  %19 = icmp sgt i16 %2, 2
  %20 = load float, ptr %1, align 4, !tbaa !34
  br i1 %19, label %21, label %25

21:                                               ; preds = %18
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = load float, ptr %13, align 4, !tbaa !34
  %24 = add nsw i16 %2, -3
  br label %31

25:                                               ; preds = %18
  %26 = fneg float %20
  %27 = load float, ptr %9, align 4, !tbaa !34
  %28 = fneg float %27
  %29 = load float, ptr %13, align 4, !tbaa !34
  %30 = fneg float %29
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi float [ %22, %21 ], [ %28, %25 ]
  %33 = phi float [ %20, %21 ], [ %26, %25 ]
  %34 = phi float [ %23, %21 ], [ %30, %25 ]
  %35 = phi i16 [ %24, %21 ], [ %2, %25 ]
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = fneg float %34
  %39 = tail call float @llvm.fabs.f32(float %32)
  %40 = tail call float @llvm.fabs.f32(float %34)
  %41 = fadd float %39, %40
  %42 = fcmp olt float %41, 0x3F1A36E2E0000000
  %43 = select i1 %42, float 1.000000e+00, float %38
  br label %59

44:                                               ; preds = %31
  %45 = icmp eq i16 %35, 1
  %46 = tail call float @llvm.fabs.f32(float %33)
  br i1 %45, label %47, label %53

47:                                               ; preds = %44
  %48 = fneg float %33
  %49 = tail call float @llvm.fabs.f32(float %34)
  %50 = fadd float %46, %49
  %51 = fcmp olt float %50, 0x3F1A36E2E0000000
  %52 = select i1 %51, float 1.000000e+00, float %48
  br label %59

53:                                               ; preds = %44
  %54 = fneg float %32
  %55 = tail call float @llvm.fabs.f32(float %32)
  %56 = fadd float %55, %46
  %57 = fcmp olt float %56, 0x3F1A36E2E0000000
  %58 = select i1 %57, float 1.000000e+00, float %54
  br label %59

59:                                               ; preds = %47, %53, %37
  %60 = phi float [ 0.000000e+00, %37 ], [ %34, %47 ], [ %58, %53 ]
  %61 = phi float [ %43, %37 ], [ 0.000000e+00, %47 ], [ %33, %53 ]
  %62 = phi float [ %32, %37 ], [ %52, %47 ], [ 0.000000e+00, %53 ]
  %63 = phi float [ %33, %37 ], [ %32, %47 ], [ %34, %53 ]
  %64 = fdiv float %63, %16
  %65 = fmul float %61, %61
  %66 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %62, float %62, float %66)
  %68 = fcmp ogt float %67, 0x38AA95A5C0000000
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = tail call float @sqrtf(float noundef %67) #17
  %71 = fdiv float 1.000000e+00, %70
  %72 = fmul float %60, %71
  %73 = fmul float %61, %71
  %74 = fmul float %62, %71
  br label %75

75:                                               ; preds = %59, %69
  %76 = phi float [ %72, %69 ], [ 0.000000e+00, %59 ]
  %77 = phi float [ %73, %69 ], [ 0.000000e+00, %59 ]
  %78 = phi float [ %74, %69 ], [ 0.000000e+00, %59 ]
  %79 = fcmp ugt float %64, -1.000000e+00
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = fcmp ult float %64, 1.000000e+00
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = tail call float @acosf(float noundef %64) #17
  %84 = fmul float %83, 5.000000e-01
  br label %85

85:                                               ; preds = %75, %80, %82
  %86 = phi float [ %84, %82 ], [ 0x3FF921FB60000000, %75 ], [ 0.000000e+00, %80 ]
  %87 = tail call float @sinf(float noundef %86) #17
  %88 = tail call float @cosf(float noundef %86) #17
  store float %88, ptr %0, align 4, !tbaa !34
  %89 = fmul float %76, %87
  store float %89, ptr %7, align 4, !tbaa !34
  %90 = fmul float %77, %87
  store float %90, ptr %6, align 4, !tbaa !34
  %91 = fmul float %78, %87
  store float %91, ptr %5, align 4, !tbaa !34
  %92 = icmp eq i16 %35, %3
  br i1 %92, label %175, label %93

93:                                               ; preds = %85
  %94 = fpext float %88 to double
  %95 = fmul double %94, 0x3FF6A09E667F3BCD
  %96 = fpext float %89 to double
  %97 = fmul double %96, 0x3FF6A09E667F3BCD
  %98 = fpext float %90 to double
  %99 = fmul double %98, 0x3FF6A09E667F3BCD
  %100 = fpext float %91 to double
  %101 = fmul double %100, 0x3FF6A09E667F3BCD
  %102 = fmul double %95, %97
  %103 = fmul double %95, %99
  %104 = fmul double %97, %97
  %105 = fmul double %97, %101
  %106 = fmul double %99, %99
  %107 = fmul double %99, %101
  %108 = fsub double 1.000000e+00, %104
  %109 = fadd double %103, %105
  %110 = fptrunc double %109 to float
  %111 = fsub double %107, %102
  %112 = fptrunc double %111 to float
  %113 = fsub double %108, %106
  %114 = fptrunc double %113 to float
  br i1 %36, label %115, label %123

115:                                              ; preds = %93
  %116 = icmp eq i16 %3, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = tail call float @atan2f(float noundef %114, float noundef %112) #17
  %119 = fmul float %118, 5.000000e-01
  br label %144

120:                                              ; preds = %115
  %121 = tail call float @atan2f(float noundef %112, float noundef %114) #17
  %122 = fmul float %121, -5.000000e-01
  br label %144

123:                                              ; preds = %93
  %124 = icmp eq i16 %35, 1
  %125 = icmp eq i16 %3, 0
  br i1 %124, label %126, label %133

126:                                              ; preds = %123
  br i1 %125, label %127, label %130

127:                                              ; preds = %126
  %128 = tail call float @atan2f(float noundef %114, float noundef %110) #17
  %129 = fmul float %128, -5.000000e-01
  br label %144

130:                                              ; preds = %126
  %131 = tail call float @atan2f(float noundef %110, float noundef %114) #17
  %132 = fmul float %131, 5.000000e-01
  br label %144

133:                                              ; preds = %123
  br i1 %125, label %134, label %139

134:                                              ; preds = %133
  %135 = fneg float %112
  %136 = fneg float %110
  %137 = tail call float @atan2f(float noundef %135, float noundef %136) #17
  %138 = fmul float %137, 5.000000e-01
  br label %144

139:                                              ; preds = %133
  %140 = fneg float %110
  %141 = fneg float %112
  %142 = tail call float @atan2f(float noundef %140, float noundef %141) #17
  %143 = fmul float %142, -5.000000e-01
  br label %144

144:                                              ; preds = %130, %127, %139, %134, %117, %120
  %145 = phi float [ %119, %117 ], [ %122, %120 ], [ %129, %127 ], [ %132, %130 ], [ %138, %134 ], [ %143, %139 ]
  %146 = tail call float @cosf(float noundef %145) #17
  %147 = tail call float @sinf(float noundef %145) #17
  %148 = fdiv float %147, %16
  %149 = fmul float %33, %148
  %150 = fmul float %32, %148
  %151 = fmul float %34, %148
  %152 = load float, ptr %0, align 4, !tbaa !34
  %153 = load float, ptr %7, align 4, !tbaa !34
  %154 = fneg float %149
  %155 = fmul float %153, %154
  %156 = tail call float @llvm.fmuladd.f32(float %146, float %152, float %155)
  %157 = load float, ptr %6, align 4, !tbaa !34
  %158 = fneg float %150
  %159 = tail call float @llvm.fmuladd.f32(float %158, float %157, float %156)
  %160 = load float, ptr %5, align 4, !tbaa !34
  %161 = fneg float %151
  %162 = tail call float @llvm.fmuladd.f32(float %161, float %160, float %159)
  %163 = fmul float %152, %149
  %164 = tail call float @llvm.fmuladd.f32(float %146, float %153, float %163)
  %165 = tail call float @llvm.fmuladd.f32(float %150, float %160, float %164)
  %166 = tail call float @llvm.fmuladd.f32(float %161, float %157, float %165)
  %167 = fmul float %152, %150
  %168 = tail call float @llvm.fmuladd.f32(float %146, float %157, float %167)
  %169 = tail call float @llvm.fmuladd.f32(float %151, float %153, float %168)
  %170 = tail call float @llvm.fmuladd.f32(float %154, float %160, float %169)
  %171 = fmul float %152, %151
  %172 = tail call float @llvm.fmuladd.f32(float %146, float %160, float %171)
  %173 = tail call float @llvm.fmuladd.f32(float %149, float %157, float %172)
  %174 = tail call float @llvm.fmuladd.f32(float %158, float %153, float %173)
  store float %174, ptr %5, align 4, !tbaa !34
  store float %162, ptr %0, align 4, !tbaa !34
  store float %166, ptr %7, align 4, !tbaa !34
  store float %170, ptr %6, align 4, !tbaa !34
  br label %175

175:                                              ; preds = %85, %144, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @interp_dot_slerp(float noundef %0, float noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  %4 = tail call float @llvm.fabs.f32(float %1)
  %5 = fcmp olt float %4, 0x3FEFFF2E40000000
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call float @acosf(float noundef %1) #17
  %8 = tail call float @sinf(float noundef %7) #17
  %9 = fsub float 1.000000e+00, %0
  %10 = fmul float %9, %7
  %11 = tail call float @sinf(float noundef %10) #17
  %12 = fdiv float %11, %8
  store float %12, ptr %2, align 4, !tbaa !34
  %13 = fmul float %7, %0
  %14 = tail call float @sinf(float noundef %13) #17
  %15 = fdiv float %14, %8
  br label %18

16:                                               ; preds = %3
  %17 = fsub float 1.000000e+00, %0
  store float %17, ptr %2, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %16, %6
  %19 = phi float [ %0, %16 ], [ %15, %6 ]
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @interp_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #5 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %11)
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds float, ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %17)
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = fneg float %22
  %26 = fneg float %5
  %27 = fneg float %8
  %28 = fneg float %14
  %29 = fneg float %19
  br label %30

30:                                               ; preds = %4, %24
  %31 = phi float [ %29, %24 ], [ %19, %4 ]
  %32 = phi float [ %28, %24 ], [ %14, %4 ]
  %33 = phi float [ %27, %24 ], [ %8, %4 ]
  %34 = phi float [ %26, %24 ], [ %5, %4 ]
  %35 = phi float [ %25, %24 ], [ %22, %4 ]
  %36 = tail call float @llvm.fabs.f32(float %35)
  %37 = fcmp olt float %36, 0x3FEFFF2E40000000
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = tail call float @acosf(float noundef %35) #17
  %40 = tail call float @sinf(float noundef %39) #17
  %41 = fsub float 1.000000e+00, %3
  %42 = fmul float %41, %39
  %43 = tail call float @sinf(float noundef %42) #17
  %44 = fdiv float %43, %40
  %45 = fmul float %39, %3
  %46 = tail call float @sinf(float noundef %45) #17
  %47 = fdiv float %46, %40
  br label %50

48:                                               ; preds = %30
  %49 = fsub float 1.000000e+00, %3
  br label %50

50:                                               ; preds = %38, %48
  %51 = phi float [ %47, %38 ], [ %3, %48 ]
  %52 = phi float [ %44, %38 ], [ %49, %48 ]
  %53 = load float, ptr %2, align 4, !tbaa !34
  %54 = fmul float %51, %53
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %34, float %54)
  store float %55, ptr %0, align 4, !tbaa !34
  %56 = load float, ptr %9, align 4, !tbaa !34
  %57 = fmul float %51, %56
  %58 = tail call float @llvm.fmuladd.f32(float %52, float %33, float %57)
  %59 = getelementptr inbounds float, ptr %0, i64 1
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = load float, ptr %15, align 4, !tbaa !34
  %61 = fmul float %51, %60
  %62 = tail call float @llvm.fmuladd.f32(float %52, float %32, float %61)
  %63 = getelementptr inbounds float, ptr %0, i64 2
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = load float, ptr %20, align 4, !tbaa !34
  %65 = fmul float %51, %64
  %66 = tail call float @llvm.fmuladd.f32(float %52, float %31, float %65)
  %67 = getelementptr inbounds float, ptr %0, i64 3
  store float %66, ptr %67, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @add_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #1 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %5)
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %3, float %11, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %3, float %17, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %2, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %3, float %23, float %21)
  %25 = getelementptr inbounds float, ptr %0, i64 3
  store float %24, ptr %25, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tri_to_quat_ex(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) local_unnamed_addr #7 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  %9 = load float, ptr %4, align 4, !tbaa !34
  store float %9, ptr %6, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %4, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %6, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %4, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %6, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = fmul float %9, %9
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %16)
  %18 = fcmp ogt float %17, 0x38AA95A5C0000000
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = fneg float %9
  %21 = tail call float @sqrtf(float noundef %17) #17
  %22 = fdiv float 1.000000e+00, %21
  %23 = fmul float %11, %22
  %24 = fmul float %22, %20
  br label %25

25:                                               ; preds = %5, %19
  %26 = phi float [ %24, %19 ], [ 0.000000e+00, %5 ]
  %27 = phi float [ %23, %19 ], [ 0.000000e+00, %5 ]
  %28 = fcmp oeq float %27, 0.000000e+00
  %29 = fcmp oeq float %26, 0.000000e+00
  %30 = select i1 %28, i1 %29, i1 false
  %31 = select i1 %30, float 1.000000e+00, float %27
  %32 = load float, ptr %15, align 4, !tbaa !34
  %33 = fcmp ugt float %32, -1.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = fcmp ult float %32, 1.000000e+00
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = tail call float @acosf(float noundef %32) #17
  %38 = fmul float %37, -5.000000e-01
  br label %39

39:                                               ; preds = %25, %34, %36
  %40 = phi float [ %38, %36 ], [ 0xBFF921FB60000000, %25 ], [ -0.000000e+00, %34 ]
  %41 = tail call float @cosf(float noundef %40) #17
  %42 = tail call float @sinf(float noundef %40) #17
  %43 = fmul float %31, %42
  %44 = fmul float %26, %42
  %45 = fpext float %41 to double
  %46 = fmul double %45, 0x3FF6A09E667F3BCD
  %47 = fpext float %43 to double
  %48 = fmul double %47, 0x3FF6A09E667F3BCD
  %49 = fpext float %44 to double
  %50 = fmul double %49, 0x3FF6A09E667F3BCD
  %51 = fmul double %46, %48
  %52 = fmul double %46, %50
  %53 = fmul double %46, 0.000000e+00
  %54 = fmul double %48, %48
  %55 = fmul double %48, %50
  %56 = fmul double %48, 0.000000e+00
  %57 = fmul double %50, %50
  %58 = fmul double %50, 0.000000e+00
  %59 = fsub double 1.000000e+00, %57
  %60 = fptrunc double %59 to float
  store float %60, ptr %7, align 16, !tbaa !34
  %61 = fadd double %53, %55
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = fsub double %56, %52
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %65, ptr %66, align 8, !tbaa !34
  %67 = fsub double %55, %53
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds [3 x float], ptr %7, i64 1
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = fsub double 1.000000e+00, %54
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 1
  store float %71, ptr %72, align 16, !tbaa !34
  %73 = fadd double %51, %58
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 2
  store float %74, ptr %75, align 4, !tbaa !34
  %76 = fadd double %52, %56
  %77 = fptrunc double %76 to float
  %78 = getelementptr inbounds [3 x float], ptr %7, i64 2
  store float %77, ptr %78, align 8, !tbaa !34
  %79 = fsub double %58, %51
  %80 = fptrunc double %79 to float
  %81 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 1
  store float %80, ptr %81, align 4, !tbaa !34
  %82 = fsub double %70, %57
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 2
  store float %83, ptr %84, align 16, !tbaa !34
  %85 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %86 = load float, ptr %2, align 4, !tbaa !34
  %87 = load float, ptr %1, align 4, !tbaa !34
  %88 = fsub float %86, %87
  store float %88, ptr %6, align 4, !tbaa !34
  %89 = getelementptr inbounds float, ptr %2, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %1, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = fsub float %90, %92
  store float %93, ptr %12, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %2, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = getelementptr inbounds float, ptr %1, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = fsub float %95, %97
  store float %98, ptr %15, align 4, !tbaa !34
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #17
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %99 = load float, ptr %6, align 4, !tbaa !34
  %100 = load float, ptr %12, align 4, !tbaa !34
  %101 = fmul float %100, %100
  %102 = call float @llvm.fmuladd.f32(float %99, float %99, float %101)
  %103 = fcmp ogt float %102, 0x38AA95A5C0000000
  br i1 %103, label %104, label %113

104:                                              ; preds = %39
  %105 = call float @sqrtf(float noundef %102) #17
  %106 = fdiv float 1.000000e+00, %105
  %107 = load float, ptr %6, align 4, !tbaa !34
  %108 = fmul float %107, %106
  store float %108, ptr %6, align 4, !tbaa !34
  %109 = load float, ptr %12, align 4, !tbaa !34
  %110 = fmul float %106, %109
  store float %110, ptr %12, align 4, !tbaa !34
  %111 = load float, ptr %15, align 4, !tbaa !34
  %112 = fmul float %106, %111
  br label %114

113:                                              ; preds = %39
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  br label %114

114:                                              ; preds = %104, %113
  %115 = phi float [ 0.000000e+00, %113 ], [ %112, %104 ]
  store float %115, ptr %15, align 4, !tbaa !34
  %116 = load float, ptr %12, align 4, !tbaa !34
  %117 = load float, ptr %6, align 4, !tbaa !34
  %118 = call float @atan2f(float noundef %116, float noundef %117) #17
  %119 = fmul float %118, 5.000000e-01
  %120 = call float @cosf(float noundef %119) #17
  %121 = call float @sinf(float noundef %119) #17
  %122 = fneg float %43
  %123 = fmul float %43, -0.000000e+00
  %124 = call float @llvm.fmuladd.f32(float %41, float %120, float %123)
  %125 = fneg float %44
  %126 = call float @llvm.fmuladd.f32(float %125, float 0.000000e+00, float %124)
  %127 = call float @llvm.fmuladd.f32(float %121, float -0.000000e+00, float %126)
  %128 = fmul float %43, %120
  %129 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %128)
  %130 = call float @llvm.fmuladd.f32(float %44, float %121, float %129)
  %131 = fmul float %44, %120
  %132 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %131)
  %133 = fadd float %132, 0.000000e+00
  %134 = call float @llvm.fmuladd.f32(float %122, float %121, float %133)
  %135 = fmul float %120, 0.000000e+00
  %136 = call float @llvm.fmuladd.f32(float %41, float %121, float %135)
  %137 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %136)
  %138 = call float @llvm.fmuladd.f32(float %125, float 0.000000e+00, float %137)
  %139 = getelementptr inbounds float, ptr %0, i64 3
  store float %138, ptr %139, align 4, !tbaa !34
  store float %127, ptr %0, align 4, !tbaa !34
  %140 = getelementptr inbounds float, ptr %0, i64 1
  store float %130, ptr %140, align 4, !tbaa !34
  %141 = getelementptr inbounds float, ptr %0, i64 2
  store float %134, ptr %141, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @tri_to_quat(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %6 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  call void @tri_to_quat_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  ret float %6
}

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_qt(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fpext float %12 to double
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10, double noundef %13)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @quat_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = tail call float @acosf(float noundef %4) #17
  %6 = tail call float @sinf(float noundef %5) #17
  %7 = fmul float %5, 2.000000e+00
  store float %7, ptr %1, align 4, !tbaa !34
  %8 = tail call float @llvm.fabs.f32(float %6)
  %9 = fcmp olt float %8, 0x3F40624DE0000000
  %10 = select i1 %9, float 1.000000e+00, float %6
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fdiv float %12, %10
  store float %13, ptr %0, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fdiv float %15, %10
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fdiv float %19, %10
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @axis_angle_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #7 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %11)
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %12)
  %16 = fcmp ogt float %15, 0x38AA95A5C0000000
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = tail call float @sqrtf(float noundef %15) #17
  %19 = fdiv float 1.000000e+00, %18
  %20 = load float, ptr %2, align 4, !tbaa !34
  %21 = fmul float %20, %19
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %19, %22
  %24 = load float, ptr %13, align 4, !tbaa !34
  %25 = fmul float %19, %24
  %26 = fcmp une float %18, 0.000000e+00
  br label %27

27:                                               ; preds = %17, %4
  %28 = phi float [ %25, %17 ], [ 0.000000e+00, %4 ]
  %29 = phi float [ %23, %17 ], [ 0.000000e+00, %4 ]
  %30 = phi float [ %21, %17 ], [ 0.000000e+00, %4 ]
  %31 = phi i1 [ %26, %17 ], [ false, %4 ]
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = fmul float %3, 5.000000e-01
  %34 = tail call float @sinf(float noundef %33) #17
  %35 = tail call float @cosf(float noundef %33) #17
  %36 = fmul float %30, %34
  %37 = fmul float %29, %34
  %38 = fmul float %28, %34
  %39 = fpext float %35 to double
  %40 = fmul double %39, 0x3FF6A09E667F3BCD
  %41 = fpext float %36 to double
  %42 = fmul double %41, 0x3FF6A09E667F3BCD
  %43 = fpext float %37 to double
  %44 = fmul double %43, 0x3FF6A09E667F3BCD
  %45 = fpext float %38 to double
  %46 = fmul double %45, 0x3FF6A09E667F3BCD
  br label %47

47:                                               ; preds = %27, %32
  %48 = phi double [ %46, %32 ], [ 0.000000e+00, %27 ]
  %49 = phi double [ %44, %32 ], [ 0.000000e+00, %27 ]
  %50 = phi double [ %42, %32 ], [ 0.000000e+00, %27 ]
  %51 = phi double [ %40, %32 ], [ 0x3FF6A09E667F3BCD, %27 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  %52 = fmul double %50, %51
  %53 = fmul double %49, %51
  %54 = fmul double %48, %51
  %55 = fmul double %50, %50
  %56 = fmul double %49, %50
  %57 = fmul double %48, %50
  %58 = fmul double %49, %49
  %59 = fmul double %48, %49
  %60 = fmul double %48, %48
  %61 = fsub double 1.000000e+00, %58
  %62 = fsub double %61, %60
  %63 = fptrunc double %62 to float
  store float %63, ptr %7, align 16, !tbaa !34
  %64 = fadd double %56, %54
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %65, ptr %66, align 4, !tbaa !34
  %67 = fsub double %57, %53
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %68, ptr %69, align 8, !tbaa !34
  %70 = fsub double %56, %54
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds [3 x float], ptr %7, i64 1
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = fsub double 1.000000e+00, %55
  %74 = fsub double %73, %60
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 1
  store float %75, ptr %76, align 16, !tbaa !34
  %77 = fadd double %59, %52
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 2
  store float %78, ptr %79, align 4, !tbaa !34
  %80 = fadd double %57, %53
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds [3 x float], ptr %7, i64 2
  store float %81, ptr %82, align 8, !tbaa !34
  %83 = fsub double %59, %52
  %84 = fptrunc double %83 to float
  %85 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = fsub double %73, %58
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 2
  store float %87, ptr %88, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call fastcc void @mat3_to_eulo2(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %1)
  %89 = load float, ptr %5, align 4, !tbaa !34
  %90 = call float @llvm.fabs.f32(float %89)
  %91 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = call float @llvm.fabs.f32(float %92)
  %94 = fadd float %90, %93
  %95 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !34
  %97 = call float @llvm.fabs.f32(float %96)
  %98 = fadd float %94, %97
  %99 = load float, ptr %6, align 4, !tbaa !34
  %100 = call float @llvm.fabs.f32(float %99)
  %101 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = call float @llvm.fabs.f32(float %102)
  %104 = fadd float %100, %103
  %105 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = call float @llvm.fabs.f32(float %106)
  %108 = fadd float %104, %107
  %109 = fcmp ogt float %98, %108
  %110 = getelementptr inbounds float, ptr %0, i64 1
  %111 = getelementptr inbounds float, ptr %0, i64 2
  %112 = select i1 %109, float %99, float %89
  %113 = select i1 %109, float %102, float %92
  %114 = select i1 %109, float %106, float %96
  store float %112, ptr %0, align 4, !tbaa !34
  store float %113, ptr %110, align 4, !tbaa !34
  store float %114, ptr %111, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @quat_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = fmul double %8, 0x3FF6A09E667F3BCD
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = fmul double %12, 0x3FF6A09E667F3BCD
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fpext float %15 to double
  %17 = fmul double %16, 0x3FF6A09E667F3BCD
  %18 = getelementptr inbounds float, ptr %2, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fpext float %19 to double
  %21 = fmul double %20, 0x3FF6A09E667F3BCD
  %22 = fmul double %9, %13
  %23 = fmul double %9, %17
  %24 = fmul double %9, %21
  %25 = fmul double %13, %13
  %26 = fmul double %13, %17
  %27 = fmul double %13, %21
  %28 = fmul double %17, %17
  %29 = fmul double %17, %21
  %30 = fmul double %21, %21
  %31 = fsub double 1.000000e+00, %28
  %32 = fsub double %31, %30
  %33 = fptrunc double %32 to float
  store float %33, ptr %6, align 16, !tbaa !34
  %34 = fadd double %26, %24
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = fsub double %27, %23
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %38, ptr %39, align 8, !tbaa !34
  %40 = fsub double %26, %24
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds [3 x float], ptr %6, i64 1
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = fsub double 1.000000e+00, %25
  %44 = fsub double %43, %30
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 1
  store float %45, ptr %46, align 16, !tbaa !34
  %47 = fadd double %22, %29
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fadd double %23, %27
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds [3 x float], ptr %6, i64 2
  store float %51, ptr %52, align 8, !tbaa !34
  %53 = fsub double %29, %22
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 1
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = fsub double %43, %28
  %57 = fptrunc double %56 to float
  %58 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 2
  store float %57, ptr %58, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call fastcc void @mat3_to_eulo2(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %1)
  %59 = load float, ptr %4, align 4, !tbaa !34
  %60 = call float @llvm.fabs.f32(float %59)
  %61 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = call float @llvm.fabs.f32(float %62)
  %64 = fadd float %60, %63
  %65 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = call float @llvm.fabs.f32(float %66)
  %68 = fadd float %64, %67
  %69 = load float, ptr %5, align 4, !tbaa !34
  %70 = call float @llvm.fabs.f32(float %69)
  %71 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fadd float %70, %73
  %75 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = call float @llvm.fabs.f32(float %76)
  %78 = fadd float %74, %77
  %79 = fcmp ogt float %68, %78
  %80 = getelementptr inbounds float, ptr %0, i64 1
  %81 = getelementptr inbounds float, ptr %0, i64 2
  %82 = select i1 %79, float %69, float %59
  %83 = select i1 %79, float %72, float %62
  %84 = select i1 %79, float %76, float %66
  store float %82, ptr %0, align 4, !tbaa !34
  store float %83, ptr %80, align 4, !tbaa !34
  store float %84, ptr %81, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) local_unnamed_addr #5 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @eulO_to_quat(ptr noundef nonnull %5, ptr noundef %2, i16 noundef signext %3)
  %6 = load float, ptr %5, align 16, !tbaa !34
  %7 = tail call float @acosf(float noundef %6) #17
  %8 = tail call float @sinf(float noundef %7) #17
  %9 = fmul float %7, 2.000000e+00
  store float %9, ptr %1, align 4, !tbaa !34
  %10 = tail call float @llvm.fabs.f32(float %8)
  %11 = fcmp olt float %10, 0x3F40624DE0000000
  %12 = select i1 %11, float 1.000000e+00, float %8
  %13 = getelementptr inbounds float, ptr %5, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fdiv float %14, %12
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %5, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !34
  %18 = fdiv float %17, %12
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %5, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fdiv float %21, %12
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_quat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = alloca [3 x double], align 16
  %5 = sext i16 %2 to i64
  %6 = icmp slt i16 %2, 1
  %7 = add nsw i64 %5, -1
  %8 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %7
  %9 = select i1 %6, ptr @rotOrders, ptr %8
  %10 = load i16, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !38
  %13 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 2
  %14 = load i16, ptr %13, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %15 = sext i16 %10 to i64
  %16 = getelementptr inbounds float, ptr %1, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %17, 5.000000e-01
  %19 = fpext float %18 to double
  %20 = sext i16 %12 to i64
  %21 = getelementptr inbounds float, ptr %1, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.RotOrderInfo, ptr %9, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !40
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, float 5.000000e-01, float -5.000000e-01
  %27 = fmul float %22, %26
  %28 = fpext float %27 to double
  %29 = sext i16 %14 to i64
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fmul float %31, 5.000000e-01
  %33 = fpext float %32 to double
  %34 = tail call double @cos(double noundef %19) #17
  %35 = tail call double @cos(double noundef %28) #17
  %36 = tail call double @cos(double noundef %33) #17
  %37 = tail call double @sin(double noundef %19) #17
  %38 = tail call double @sin(double noundef %28) #17
  %39 = tail call double @sin(double noundef %33) #17
  %40 = fmul double %34, %36
  %41 = fmul double %34, %39
  %42 = fmul double %36, %37
  %43 = fmul double %37, %39
  %44 = fneg double %38
  %45 = fmul double %41, %44
  %46 = tail call double @llvm.fmuladd.f64(double %35, double %42, double %45)
  %47 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %15
  store double %46, ptr %47, align 8, !tbaa !42
  %48 = fmul double %40, %38
  %49 = tail call double @llvm.fmuladd.f64(double %35, double %43, double %48)
  %50 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %20
  store double %49, ptr %50, align 8, !tbaa !42
  %51 = fmul double %42, %44
  %52 = tail call double @llvm.fmuladd.f64(double %35, double %41, double %51)
  %53 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %29
  store double %52, ptr %53, align 8, !tbaa !42
  %54 = fmul double %38, %43
  %55 = tail call double @llvm.fmuladd.f64(double %35, double %40, double %54)
  %56 = fptrunc double %55 to float
  store float %56, ptr %0, align 4, !tbaa !34
  %57 = load double, ptr %4, align 16, !tbaa !42
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds float, ptr %0, i64 1
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %61 = load double, ptr %60, align 8, !tbaa !42
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds float, ptr %0, i64 2
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %65 = load double, ptr %64, align 16, !tbaa !42
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds float, ptr %0, i64 3
  store float %66, ptr %67, align 4, !tbaa !34
  br i1 %25, label %73, label %68

68:                                               ; preds = %3
  %69 = getelementptr float, ptr %0, i64 %20
  %70 = getelementptr float, ptr %69, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = fneg float %71
  store float %72, ptr %70, align 4, !tbaa !34
  br label %73

73:                                               ; preds = %68, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @axis_angle_normalized_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = tail call float @sinf(float noundef %2) #17
  %5 = tail call float @cosf(float noundef %2) #17
  %6 = fsub float 1.000000e+00, %5
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fmul float %4, %7
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %4, %10
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %4, %13
  %15 = fmul float %7, %7
  %16 = fmul float %6, %15
  %17 = fmul float %7, %10
  %18 = fmul float %6, %17
  %19 = fmul float %10, %10
  %20 = fmul float %6, %19
  %21 = fmul float %7, %13
  %22 = fmul float %6, %21
  %23 = fmul float %10, %13
  %24 = fmul float %6, %23
  %25 = fmul float %13, %13
  %26 = fmul float %6, %25
  %27 = fadd float %5, %16
  store float %27, ptr %0, align 4, !tbaa !34
  %28 = fadd float %18, %14
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = fsub float %22, %11
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = fsub float %18, %14
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = fadd float %5, %20
  %35 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fadd float %8, %24
  %37 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = fadd float %11, %22
  %39 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  %40 = fsub float %24, %8
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fadd float %5, %26
  %43 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %42, ptr %43, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @axis_angle_to_mat3(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %8)
  %12 = fcmp ogt float %11, 0x38AA95A5C0000000
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = tail call float @sqrtf(float noundef %11) #17
  %15 = fdiv float 1.000000e+00, %14
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = fmul float %16, %15
  %18 = load float, ptr %5, align 4, !tbaa !34
  %19 = fmul float %15, %18
  %20 = load float, ptr %9, align 4, !tbaa !34
  %21 = fmul float %15, %20
  %22 = fcmp oeq float %14, 0.000000e+00
  br label %23

23:                                               ; preds = %3, %13
  %24 = phi float [ %21, %13 ], [ 0.000000e+00, %3 ]
  %25 = phi float [ %19, %13 ], [ 0.000000e+00, %3 ]
  %26 = phi float [ %17, %13 ], [ 0.000000e+00, %3 ]
  %27 = phi i1 [ %22, %13 ], [ true, %3 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @unit_m3(ptr noundef %0) #17
  br label %65

29:                                               ; preds = %23
  %30 = tail call float @sinf(float noundef %2) #17
  %31 = tail call float @cosf(float noundef %2) #17
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %26, %30
  %34 = fmul float %25, %30
  %35 = fmul float %24, %30
  %36 = fmul float %26, %26
  %37 = fmul float %36, %32
  %38 = fmul float %25, %26
  %39 = fmul float %38, %32
  %40 = fmul float %25, %25
  %41 = fmul float %40, %32
  %42 = fmul float %24, %26
  %43 = fmul float %42, %32
  %44 = fmul float %24, %25
  %45 = fmul float %44, %32
  %46 = fmul float %24, %24
  %47 = fmul float %46, %32
  %48 = fadd float %31, %37
  store float %48, ptr %0, align 4, !tbaa !34
  %49 = fadd float %35, %39
  %50 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fsub float %43, %34
  %52 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fsub float %39, %35
  %54 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fadd float %31, %41
  %56 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fadd float %33, %45
  %58 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fadd float %34, %43
  %60 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fsub float %45, %33
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = fadd float %31, %47
  %64 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  br label %65

65:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @axis_angle_to_mat4(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @axis_angle_to_mat3(ptr noundef nonnull %4, ptr noundef %1, float noundef %2)
  call void @unit_m4(ptr noundef %0) #17
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #8

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @mat3_to_quat(ptr noundef nonnull %4, ptr noundef %2)
  %5 = load float, ptr %4, align 16, !tbaa !34
  %6 = tail call float @acosf(float noundef %5) #17
  %7 = tail call float @sinf(float noundef %6) #17
  %8 = fmul float %6, 2.000000e+00
  store float %8, ptr %1, align 4, !tbaa !34
  %9 = tail call float @llvm.fabs.f32(float %7)
  %10 = fcmp olt float %9, 0x3F40624DE0000000
  %11 = select i1 %10, float 1.000000e+00, float %7
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fdiv float %13, %11
  store float %14, ptr %0, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %4, i64 2
  %16 = load float, ptr %15, align 8, !tbaa !34
  %17 = fdiv float %16, %11
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %4, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fdiv float %20, %11
  %22 = getelementptr inbounds float, ptr %0, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef %2) #17
  call void @mat3_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  %6 = load float, ptr %5, align 16, !tbaa !34
  %7 = call float @acosf(float noundef %6) #17
  %8 = call float @sinf(float noundef %7) #17
  %9 = fmul float %7, 2.000000e+00
  store float %9, ptr %1, align 4, !tbaa !34
  %10 = call float @llvm.fabs.f32(float %8)
  %11 = fcmp olt float %10, 0x3F40624DE0000000
  %12 = select i1 %11, float 1.000000e+00, float %8
  %13 = getelementptr inbounds float, ptr %5, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fdiv float %14, %12
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %5, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !34
  %18 = fdiv float %17, %12
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %5, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fdiv float %21, %12
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @axis_angle_to_mat3_single(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #9 {
  %4 = tail call float @cosf(float noundef %2) #17
  %5 = tail call float @sinf(float noundef %2) #17
  switch i8 %1, label %35 [
    i8 88, label %6
    i8 89, label %14
    i8 90, label %22
  ]

6:                                                ; preds = %3
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %4, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %5, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = fneg float %5
  br label %30

14:                                               ; preds = %3
  store float %4, ptr %0, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  %16 = fneg float %5
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %5, ptr %21, align 4, !tbaa !34
  br label %30

22:                                               ; preds = %3
  store float %4, ptr %0, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %5, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !34
  %25 = fneg float %5
  %26 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %4, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %6, %14, %22
  %31 = phi float [ 0.000000e+00, %22 ], [ 0.000000e+00, %14 ], [ %13, %6 ]
  %32 = phi float [ 1.000000e+00, %22 ], [ %4, %14 ], [ %4, %6 ]
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %31, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %32, ptr %34, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @angle_to_mat2(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #9 {
  %3 = tail call float @cosf(float noundef %1) #17
  %4 = tail call float @sinf(float noundef %1) #17
  store float %3, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  store float %4, ptr %5, align 4, !tbaa !34
  %6 = fneg float %4
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [2 x float], ptr %0, i64 1, i64 1
  store float %3, ptr %8, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eul_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = tail call double @cos(double noundef %4) #17
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = tail call double @cos(double noundef %8) #17
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = tail call double @cos(double noundef %12) #17
  %14 = load float, ptr %1, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = tail call double @sin(double noundef %15) #17
  %17 = load float, ptr %6, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = tail call double @sin(double noundef %18) #17
  %20 = load float, ptr %10, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = tail call double @sin(double noundef %21) #17
  %23 = fmul double %5, %13
  %24 = fmul double %5, %22
  %25 = fmul double %13, %16
  %26 = fmul double %16, %22
  %27 = fmul double %9, %13
  %28 = fptrunc double %27 to float
  store float %28, ptr %0, align 4, !tbaa !34
  %29 = fneg double %24
  %30 = tail call double @llvm.fmuladd.f64(double %19, double %25, double %29)
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = tail call double @llvm.fmuladd.f64(double %19, double %23, double %26)
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fmul double %9, %22
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = tail call double @llvm.fmuladd.f64(double %19, double %26, double %23)
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fneg double %25
  %43 = tail call double @llvm.fmuladd.f64(double %19, double %24, double %42)
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = fptrunc double %19 to float
  %47 = fneg float %46
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul double %9, %16
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = fmul double %5, %9
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eul_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = tail call double @cos(double noundef %4) #17
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = tail call double @cos(double noundef %8) #17
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = tail call double @cos(double noundef %12) #17
  %14 = load float, ptr %1, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = tail call double @sin(double noundef %15) #17
  %17 = load float, ptr %6, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = tail call double @sin(double noundef %18) #17
  %20 = load float, ptr %10, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = tail call double @sin(double noundef %21) #17
  %23 = fmul double %5, %13
  %24 = fmul double %5, %22
  %25 = fmul double %13, %16
  %26 = fmul double %16, %22
  %27 = fmul double %9, %13
  %28 = fptrunc double %27 to float
  store float %28, ptr %0, align 4, !tbaa !34
  %29 = fneg double %24
  %30 = tail call double @llvm.fmuladd.f64(double %19, double %25, double %29)
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = tail call double @llvm.fmuladd.f64(double %19, double %23, double %26)
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fmul double %9, %22
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = tail call double @llvm.fmuladd.f64(double %19, double %26, double %23)
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fneg double %25
  %43 = tail call double @llvm.fmuladd.f64(double %19, double %24, double %42)
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = fptrunc double %19 to float
  %47 = fneg float %46
  %48 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul double %9, %16
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = fmul double %5, %9
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 0.000000e+00, ptr %57, align 4, !tbaa !34
  %58 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %58, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_eul(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call fastcc void @mat3_to_eul2(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %5 = load float, ptr %3, align 4, !tbaa !34
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fabs.f32(float %8)
  %10 = fadd float %6, %9
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = tail call float @llvm.fabs.f32(float %12)
  %14 = fadd float %10, %13
  %15 = load float, ptr %4, align 4, !tbaa !34
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fadd float %16, %19
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fadd float %20, %23
  %25 = fcmp ogt float %14, %24
  %26 = getelementptr inbounds float, ptr %0, i64 1
  %27 = getelementptr inbounds float, ptr %0, i64 2
  %28 = select i1 %25, float %15, float %5
  %29 = select i1 %25, float %18, float %8
  %30 = select i1 %25, float %22, float %12
  store float %28, ptr %0, align 4, !tbaa !34
  store float %29, ptr %26, align 4, !tbaa !34
  store float %30, ptr %27, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mat3_to_eul2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @mat3_to_quat(ptr noundef nonnull %4, ptr noundef %0)
  %6 = load float, ptr %4, align 16, !tbaa !34
  %7 = fpext float %6 to double
  %8 = fmul double %7, 0x3FF6A09E667F3BCD
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FF6A09E667F3BCD
  %13 = getelementptr inbounds float, ptr %4, i64 2
  %14 = load float, ptr %13, align 8, !tbaa !34
  %15 = fpext float %14 to double
  %16 = fmul double %15, 0x3FF6A09E667F3BCD
  %17 = getelementptr inbounds float, ptr %4, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fpext float %18 to double
  %20 = fmul double %19, 0x3FF6A09E667F3BCD
  %21 = fmul double %8, %12
  %22 = fmul double %8, %16
  %23 = fmul double %8, %20
  %24 = fmul double %12, %12
  %25 = fmul double %12, %16
  %26 = fmul double %12, %20
  %27 = fmul double %16, %16
  %28 = fmul double %16, %20
  %29 = fmul double %20, %20
  %30 = fsub double 1.000000e+00, %27
  %31 = fsub double %30, %29
  %32 = fptrunc double %31 to float
  store float %32, ptr %5, align 16, !tbaa !34
  %33 = fadd double %25, %23
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fsub double %26, %22
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %37, ptr %38, align 8, !tbaa !34
  %39 = fsub double %25, %23
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [3 x float], ptr %5, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fsub double 1.000000e+00, %24
  %43 = fsub double %42, %29
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 1
  store float %44, ptr %45, align 16, !tbaa !34
  %46 = fadd double %21, %28
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fadd double %22, %26
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 2
  store float %50, ptr %51, align 8, !tbaa !34
  %52 = fsub double %28, %21
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fsub double %42, %27
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 2
  store float %56, ptr %57, align 16, !tbaa !34
  call void @normalize_m3_m3(ptr noundef nonnull %5, ptr noundef %0) #17
  %58 = load float, ptr %5, align 16, !tbaa !34
  %59 = load float, ptr %35, align 4, !tbaa !34
  %60 = call float @hypotf(float noundef %58, float noundef %59) #17
  %61 = fcmp ogt float %60, 0x3EC0000000000000
  br i1 %61, label %62, label %89

62:                                               ; preds = %3
  %63 = load float, ptr %48, align 4, !tbaa !34
  %64 = load float, ptr %57, align 16, !tbaa !34
  %65 = call float @atan2f(float noundef %63, float noundef %64) #17
  store float %65, ptr %1, align 4, !tbaa !34
  %66 = load float, ptr %38, align 8, !tbaa !34
  %67 = fneg float %66
  %68 = call float @atan2f(float noundef %67, float noundef %60) #17
  %69 = getelementptr inbounds float, ptr %1, i64 1
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = load float, ptr %35, align 4, !tbaa !34
  %71 = load float, ptr %5, align 16, !tbaa !34
  %72 = call float @atan2f(float noundef %70, float noundef %71) #17
  %73 = getelementptr inbounds float, ptr %1, i64 2
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = load float, ptr %48, align 4, !tbaa !34
  %75 = fneg float %74
  %76 = load float, ptr %57, align 16, !tbaa !34
  %77 = fneg float %76
  %78 = call float @atan2f(float noundef %75, float noundef %77) #17
  store float %78, ptr %2, align 4, !tbaa !34
  %79 = load float, ptr %38, align 8, !tbaa !34
  %80 = fneg float %79
  %81 = fneg float %60
  %82 = call float @atan2f(float noundef %80, float noundef %81) #17
  %83 = getelementptr inbounds float, ptr %2, i64 1
  store float %82, ptr %83, align 4, !tbaa !34
  %84 = load float, ptr %35, align 4, !tbaa !34
  %85 = fneg float %84
  %86 = load float, ptr %5, align 16, !tbaa !34
  %87 = fneg float %86
  %88 = call float @atan2f(float noundef %85, float noundef %87) #17
  br label %103

89:                                               ; preds = %3
  %90 = load float, ptr %54, align 4, !tbaa !34
  %91 = fneg float %90
  %92 = load float, ptr %45, align 16, !tbaa !34
  %93 = call float @atan2f(float noundef %91, float noundef %92) #17
  store float %93, ptr %1, align 4, !tbaa !34
  %94 = load float, ptr %38, align 8, !tbaa !34
  %95 = fneg float %94
  %96 = call float @atan2f(float noundef %95, float noundef %60) #17
  %97 = getelementptr inbounds float, ptr %1, i64 1
  store float %96, ptr %97, align 4, !tbaa !34
  %98 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %98, align 4, !tbaa !34
  %99 = load float, ptr %1, align 4, !tbaa !34
  store float %99, ptr %2, align 4, !tbaa !34
  %100 = load float, ptr %97, align 4, !tbaa !34
  %101 = getelementptr inbounds float, ptr %2, i64 1
  store float %100, ptr %101, align 4, !tbaa !34
  %102 = load float, ptr %98, align 4, !tbaa !34
  br label %103

103:                                              ; preds = %89, %62
  %104 = phi float [ %102, %89 ], [ %88, %62 ]
  %105 = getelementptr inbounds float, ptr %2, i64 2
  store float %104, ptr %105, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_eul(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %1) #17
  call void @normalize_m3(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call fastcc void @mat3_to_eul2(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = load float, ptr %3, align 4, !tbaa !34
  %7 = call float @llvm.fabs.f32(float %6)
  %8 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = call float @llvm.fabs.f32(float %9)
  %11 = fadd float %7, %10
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = call float @llvm.fabs.f32(float %13)
  %15 = fadd float %11, %14
  %16 = load float, ptr %4, align 4, !tbaa !34
  %17 = call float @llvm.fabs.f32(float %16)
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = call float @llvm.fabs.f32(float %19)
  %21 = fadd float %17, %20
  %22 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = call float @llvm.fabs.f32(float %23)
  %25 = fadd float %21, %24
  %26 = fcmp ogt float %15, %25
  %27 = getelementptr inbounds float, ptr %0, i64 1
  %28 = getelementptr inbounds float, ptr %0, i64 2
  %29 = select i1 %26, float %16, float %6
  %30 = select i1 %26, float %19, float %9
  %31 = select i1 %26, float %23, float %13
  store float %29, ptr %0, align 4, !tbaa !34
  store float %30, ptr %27, align 4, !tbaa !34
  store float %31, ptr %28, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @quat_to_eul(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = fmul double %7, 0x3FF6A09E667F3BCD
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FF6A09E667F3BCD
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = fmul double %15, 0x3FF6A09E667F3BCD
  %17 = getelementptr inbounds float, ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fpext float %18 to double
  %20 = fmul double %19, 0x3FF6A09E667F3BCD
  %21 = fmul double %8, %12
  %22 = fmul double %8, %16
  %23 = fmul double %8, %20
  %24 = fmul double %12, %12
  %25 = fmul double %12, %16
  %26 = fmul double %12, %20
  %27 = fmul double %16, %16
  %28 = fmul double %16, %20
  %29 = fmul double %20, %20
  %30 = fsub double 1.000000e+00, %27
  %31 = fsub double %30, %29
  %32 = fptrunc double %31 to float
  store float %32, ptr %5, align 16, !tbaa !34
  %33 = fadd double %25, %23
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fsub double %26, %22
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %37, ptr %38, align 8, !tbaa !34
  %39 = fsub double %25, %23
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [3 x float], ptr %5, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fsub double 1.000000e+00, %24
  %43 = fsub double %42, %29
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 1
  store float %44, ptr %45, align 16, !tbaa !34
  %46 = fadd double %21, %28
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fadd double %22, %26
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 2
  store float %50, ptr %51, align 8, !tbaa !34
  %52 = fsub double %28, %21
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 1
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fsub double %42, %27
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 2
  store float %56, ptr %57, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call fastcc void @mat3_to_eul2(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %58 = load float, ptr %3, align 4, !tbaa !34
  %59 = call float @llvm.fabs.f32(float %58)
  %60 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = fadd float %59, %62
  %64 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = call float @llvm.fabs.f32(float %65)
  %67 = fadd float %63, %66
  %68 = load float, ptr %4, align 4, !tbaa !34
  %69 = call float @llvm.fabs.f32(float %68)
  %70 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = call float @llvm.fabs.f32(float %71)
  %73 = fadd float %69, %72
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = call float @llvm.fabs.f32(float %75)
  %77 = fadd float %73, %76
  %78 = fcmp ogt float %67, %77
  %79 = getelementptr inbounds float, ptr %0, i64 1
  %80 = getelementptr inbounds float, ptr %0, i64 2
  %81 = select i1 %78, float %68, float %58
  %82 = select i1 %78, float %71, float %61
  %83 = select i1 %78, float %75, float %65
  store float %81, ptr %0, align 4, !tbaa !34
  store float %82, ptr %79, align 4, !tbaa !34
  store float %83, ptr %80, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eul_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fmul float %3, 5.000000e-01
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %9, 5.000000e-01
  %11 = tail call float @cosf(float noundef %4) #17
  %12 = tail call float @cosf(float noundef %7) #17
  %13 = tail call float @cosf(float noundef %10) #17
  %14 = tail call float @sinf(float noundef %4) #17
  %15 = tail call float @sinf(float noundef %7) #17
  %16 = tail call float @sinf(float noundef %10) #17
  %17 = fmul float %11, %13
  %18 = fmul float %11, %16
  %19 = fmul float %13, %14
  %20 = fmul float %14, %16
  %21 = fmul float %15, %20
  %22 = tail call float @llvm.fmuladd.f32(float %12, float %17, float %21)
  store float %22, ptr %0, align 4, !tbaa !34
  %23 = fneg float %15
  %24 = fmul float %18, %23
  %25 = tail call float @llvm.fmuladd.f32(float %12, float %19, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = fmul float %17, %15
  %28 = tail call float @llvm.fmuladd.f32(float %12, float %20, float %27)
  %29 = getelementptr inbounds float, ptr %0, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = fmul float %19, %23
  %31 = tail call float @llvm.fmuladd.f32(float %12, float %18, float %30)
  %32 = getelementptr inbounds float, ptr %0, i64 3
  store float %31, ptr %32, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rotate_eul(ptr nocapture noundef %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  switch i8 %1, label %11 [
    i8 88, label %13
    i8 89, label %9
  ]

9:                                                ; preds = %3
  %10 = fpext float %2 to double
  br label %13

11:                                               ; preds = %3
  %12 = fpext float %2 to double
  br label %13

13:                                               ; preds = %3, %9, %11
  %14 = phi double [ %12, %11 ], [ 0.000000e+00, %9 ], [ 0.000000e+00, %3 ]
  %15 = phi double [ 0.000000e+00, %11 ], [ %10, %9 ], [ 0.000000e+00, %3 ]
  %16 = phi float [ 0.000000e+00, %11 ], [ 0.000000e+00, %9 ], [ %2, %3 ]
  %17 = fpext float %16 to double
  %18 = tail call double @cos(double noundef %17) #17
  %19 = tail call double @cos(double noundef %15) #17
  %20 = tail call double @cos(double noundef %14) #17
  %21 = tail call double @sin(double noundef %17) #17
  %22 = tail call double @sin(double noundef %15) #17
  %23 = tail call double @sin(double noundef %14) #17
  %24 = fmul double %18, %20
  %25 = fmul double %18, %23
  %26 = fmul double %20, %21
  %27 = fmul double %21, %23
  %28 = fmul double %19, %20
  %29 = fptrunc double %28 to float
  store float %29, ptr %6, align 16, !tbaa !34
  %30 = fneg double %25
  %31 = tail call double @llvm.fmuladd.f64(double %22, double %26, double %30)
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds [3 x float], ptr %6, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = tail call double @llvm.fmuladd.f64(double %22, double %24, double %27)
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 2
  store float %35, ptr %36, align 8, !tbaa !34
  %37 = fmul double %19, %23
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %38, ptr %39, align 4, !tbaa !34
  %40 = tail call double @llvm.fmuladd.f64(double %22, double %27, double %24)
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 1
  store float %41, ptr %42, align 16, !tbaa !34
  %43 = fneg double %26
  %44 = tail call double @llvm.fmuladd.f64(double %22, double %25, double %43)
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 1
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fptrunc double %22 to float
  %48 = fneg float %47
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %48, ptr %49, align 8, !tbaa !34
  %50 = fmul double %19, %21
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 2
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul double %18, %19
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 2
  store float %54, ptr %55, align 16, !tbaa !34
  %56 = load float, ptr %0, align 4, !tbaa !34
  %57 = fpext float %56 to double
  %58 = tail call double @cos(double noundef %57) #17
  %59 = getelementptr inbounds float, ptr %0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = fpext float %60 to double
  %62 = tail call double @cos(double noundef %61) #17
  %63 = getelementptr inbounds float, ptr %0, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fpext float %64 to double
  %66 = tail call double @cos(double noundef %65) #17
  %67 = load float, ptr %0, align 4, !tbaa !34
  %68 = fpext float %67 to double
  %69 = tail call double @sin(double noundef %68) #17
  %70 = load float, ptr %59, align 4, !tbaa !34
  %71 = fpext float %70 to double
  %72 = tail call double @sin(double noundef %71) #17
  %73 = load float, ptr %63, align 4, !tbaa !34
  %74 = fpext float %73 to double
  %75 = tail call double @sin(double noundef %74) #17
  %76 = fmul double %58, %66
  %77 = fmul double %58, %75
  %78 = fmul double %66, %69
  %79 = fmul double %69, %75
  %80 = fmul double %62, %66
  %81 = fptrunc double %80 to float
  store float %81, ptr %7, align 16, !tbaa !34
  %82 = fneg double %77
  %83 = tail call double @llvm.fmuladd.f64(double %72, double %78, double %82)
  %84 = fptrunc double %83 to float
  %85 = getelementptr inbounds [3 x float], ptr %7, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = tail call double @llvm.fmuladd.f64(double %72, double %76, double %79)
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds [3 x float], ptr %7, i64 2
  store float %87, ptr %88, align 8, !tbaa !34
  %89 = fmul double %62, %75
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %90, ptr %91, align 4, !tbaa !34
  %92 = tail call double @llvm.fmuladd.f64(double %72, double %79, double %76)
  %93 = fptrunc double %92 to float
  %94 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 1
  store float %93, ptr %94, align 16, !tbaa !34
  %95 = fneg double %78
  %96 = tail call double @llvm.fmuladd.f64(double %72, double %77, double %95)
  %97 = fptrunc double %96 to float
  %98 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 1
  store float %97, ptr %98, align 4, !tbaa !34
  %99 = fptrunc double %72 to float
  %100 = fneg float %99
  %101 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %100, ptr %101, align 8, !tbaa !34
  %102 = fmul double %62, %69
  %103 = fptrunc double %102 to float
  %104 = getelementptr inbounds [3 x float], ptr %7, i64 1, i64 2
  store float %103, ptr %104, align 4, !tbaa !34
  %105 = fmul double %58, %62
  %106 = fptrunc double %105 to float
  %107 = getelementptr inbounds [3 x float], ptr %7, i64 2, i64 2
  store float %106, ptr %107, align 16, !tbaa !34
  call void @mul_m3_m3m3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call fastcc void @mat3_to_eul2(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %108 = load float, ptr %4, align 4, !tbaa !34
  %109 = call float @llvm.fabs.f32(float %108)
  %110 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = call float @llvm.fabs.f32(float %111)
  %113 = fadd float %109, %112
  %114 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !34
  %116 = call float @llvm.fabs.f32(float %115)
  %117 = fadd float %113, %116
  %118 = load float, ptr %5, align 4, !tbaa !34
  %119 = call float @llvm.fabs.f32(float %118)
  %120 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !34
  %122 = call float @llvm.fabs.f32(float %121)
  %123 = fadd float %119, %122
  %124 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !34
  %126 = call float @llvm.fabs.f32(float %125)
  %127 = fadd float %123, %126
  %128 = fcmp ogt float %117, %127
  %129 = select i1 %128, float %118, float %108
  %130 = select i1 %128, float %121, float %111
  %131 = select i1 %128, float %125, float %115
  store float %129, ptr %0, align 4, !tbaa !34
  store float %130, ptr %59, align 4, !tbaa !34
  store float %131, ptr %63, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret void
}

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @compatible_eul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  br label %4

4:                                                ; preds = %2, %29
  %5 = phi i64 [ 0, %2 ], [ %30, %29 ]
  %6 = getelementptr inbounds float, ptr %0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %5
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = fcmp ogt float %10, 0x4014666660000000
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = fdiv float %10, 0x401921FB60000000
  %15 = fadd float %14, 5.000000e-01
  %16 = tail call float @llvm.floor.f32(float %15)
  %17 = fneg float %16
  br label %24

18:                                               ; preds = %4
  %19 = fcmp olt float %10, 0xC014666660000000
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = fdiv float %10, 0x401921FB60000000
  %22 = fsub float 5.000000e-01, %21
  %23 = tail call float @llvm.floor.f32(float %22)
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi float [ %23, %20 ], [ %17, %13 ]
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 0x401921FB60000000, float %7)
  store float %26, ptr %6, align 4, !tbaa !34
  %27 = load float, ptr %8, align 4, !tbaa !34
  %28 = fsub float %26, %27
  store float %28, ptr %11, align 4, !tbaa !34
  br label %29

29:                                               ; preds = %24, %18
  %30 = add nuw nsw i64 %5, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %4, !llvm.loop !44

32:                                               ; preds = %29
  %33 = load float, ptr %3, align 4, !tbaa !34
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ogt float %34, 0x40099999A0000000
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fcmp olt float %39, 0x3FF99999A0000000
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = fcmp olt float %44, 0x3FF99999A0000000
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = fcmp ogt float %33, 0.000000e+00
  %48 = load float, ptr %0, align 4, !tbaa !34
  %49 = select i1 %47, float 0xC01921FB60000000, float 0x401921FB60000000
  %50 = fadd float %48, %49
  store float %50, ptr %0, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %46, %41, %36, %32
  %52 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fcmp ogt float %54, 0x40099999A0000000
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = tail call float @llvm.fabs.f32(float %58)
  %60 = fcmp olt float %59, 0x3FF99999A0000000
  %61 = fcmp olt float %34, 0x3FF99999A0000000
  %62 = and i1 %61, %60
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = fcmp ogt float %53, 0.000000e+00
  %65 = getelementptr inbounds float, ptr %0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = select i1 %64, float 0xC01921FB60000000, float 0x401921FB60000000
  %68 = fadd float %66, %67
  store float %68, ptr %65, align 4, !tbaa !34
  br label %69

69:                                               ; preds = %63, %56, %51
  %70 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fcmp ogt float %72, 0x40099999A0000000
  %74 = fcmp olt float %34, 0x3FF99999A0000000
  %75 = and i1 %74, %73
  %76 = fcmp olt float %54, 0x3FF99999A0000000
  %77 = and i1 %76, %75
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = fcmp ogt float %71, 0.000000e+00
  %80 = getelementptr inbounds float, ptr %0, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = select i1 %79, float 0xC01921FB60000000, float 0x401921FB60000000
  %83 = fadd float %81, %82
  store float %83, ptr %80, align 4, !tbaa !34
  br label %84

84:                                               ; preds = %78, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_compatible_eul(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call fastcc void @mat3_to_eul2(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @compatible_eul(ptr noundef nonnull %4, ptr noundef %1)
  call void @compatible_eul(ptr noundef nonnull %5, ptr noundef %1)
  %6 = load float, ptr %4, align 4, !tbaa !34
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = tail call float @llvm.fabs.f32(float %8)
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %11, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fadd float %9, %15
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fadd float %16, %22
  %24 = load float, ptr %5, align 4, !tbaa !34
  %25 = fsub float %24, %7
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %13
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fadd float %26, %30
  %32 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %33, %20
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fadd float %31, %35
  %37 = fcmp ogt float %23, %36
  %38 = getelementptr inbounds float, ptr %0, i64 1
  %39 = getelementptr inbounds float, ptr %0, i64 2
  %40 = select i1 %37, float %24, float %6
  %41 = select i1 %37, float %28, float %11
  %42 = select i1 %37, float %33, float %18
  store float %40, ptr %0, align 4, !tbaa !34
  store float %41, ptr %38, align 4, !tbaa !34
  store float %42, ptr %39, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call fastcc void @mat3_to_eulo2(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %1)
  %6 = load float, ptr %4, align 4, !tbaa !34
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fadd float %7, %10
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fadd float %11, %14
  %16 = load float, ptr %5, align 4, !tbaa !34
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = fadd float %17, %20
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fabs.f32(float %23)
  %25 = fadd float %21, %24
  %26 = fcmp ogt float %15, %25
  %27 = getelementptr inbounds float, ptr %0, i64 1
  %28 = getelementptr inbounds float, ptr %0, i64 2
  %29 = select i1 %26, float %16, float %6
  %30 = select i1 %26, float %19, float %9
  %31 = select i1 %26, float %23, float %13
  store float %29, ptr %0, align 4, !tbaa !34
  store float %30, ptr %27, align 4, !tbaa !34
  store float %31, ptr %28, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = sext i16 %2 to i64
  %5 = icmp slt i16 %2, 1
  %6 = add nsw i64 %4, -1
  %7 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %6
  %8 = select i1 %5, ptr @rotOrders, ptr %7
  %9 = load i16, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds [3 x i16], ptr %8, i64 0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !38
  %12 = getelementptr inbounds [3 x i16], ptr %8, i64 0, i64 2
  %13 = load i16, ptr %12, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.RotOrderInfo, ptr %8, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !40
  %16 = icmp eq i16 %15, 0
  %17 = sext i16 %9 to i64
  %18 = getelementptr inbounds float, ptr %1, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !34
  br i1 %16, label %30, label %20

20:                                               ; preds = %3
  %21 = fneg float %19
  %22 = sext i16 %11 to i64
  %23 = getelementptr inbounds float, ptr %1, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fneg float %24
  %26 = sext i16 %13 to i64
  %27 = getelementptr inbounds float, ptr %1, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fneg float %28
  br label %37

30:                                               ; preds = %3
  %31 = sext i16 %11 to i64
  %32 = getelementptr inbounds float, ptr %1, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = sext i16 %13 to i64
  %35 = getelementptr inbounds float, ptr %1, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %30, %20
  %38 = phi float [ %29, %20 ], [ %36, %30 ]
  %39 = phi float [ %25, %20 ], [ %33, %30 ]
  %40 = phi float [ %21, %20 ], [ %19, %30 ]
  %41 = fpext float %40 to double
  %42 = fpext float %39 to double
  %43 = fpext float %38 to double
  %44 = tail call double @cos(double noundef %41) #17
  %45 = tail call double @cos(double noundef %42) #17
  %46 = tail call double @cos(double noundef %43) #17
  %47 = tail call double @sin(double noundef %41) #17
  %48 = tail call double @sin(double noundef %42) #17
  %49 = tail call double @sin(double noundef %43) #17
  %50 = fmul double %44, %46
  %51 = fmul double %44, %49
  %52 = fmul double %46, %47
  %53 = fmul double %47, %49
  %54 = fmul double %45, %46
  %55 = fptrunc double %54 to float
  %56 = sext i16 %9 to i64
  %57 = getelementptr inbounds [3 x float], ptr %0, i64 %56, i64 %56
  store float %55, ptr %57, align 4, !tbaa !34
  %58 = fneg double %51
  %59 = tail call double @llvm.fmuladd.f64(double %48, double %52, double %58)
  %60 = fptrunc double %59 to float
  %61 = sext i16 %11 to i64
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 %61, i64 %56
  store float %60, ptr %62, align 4, !tbaa !34
  %63 = tail call double @llvm.fmuladd.f64(double %48, double %50, double %53)
  %64 = fptrunc double %63 to float
  %65 = sext i16 %13 to i64
  %66 = getelementptr inbounds [3 x float], ptr %0, i64 %65, i64 %56
  store float %64, ptr %66, align 4, !tbaa !34
  %67 = fmul double %45, %49
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds [3 x float], ptr %0, i64 %56, i64 %61
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = tail call double @llvm.fmuladd.f64(double %48, double %53, double %50)
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds [3 x float], ptr %0, i64 %61, i64 %61
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = fneg double %52
  %74 = tail call double @llvm.fmuladd.f64(double %48, double %51, double %73)
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds [3 x float], ptr %0, i64 %65, i64 %61
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = fptrunc double %48 to float
  %78 = fneg float %77
  %79 = getelementptr inbounds [3 x float], ptr %0, i64 %56, i64 %65
  store float %78, ptr %79, align 4, !tbaa !34
  %80 = fmul double %45, %47
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds [3 x float], ptr %0, i64 %61, i64 %65
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = fmul double %44, %45
  %84 = fptrunc double %83 to float
  %85 = getelementptr inbounds [3 x float], ptr %0, i64 %65, i64 %65
  store float %84, ptr %85, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @eulO_to_mat4(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #7 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @normalize_m3(ptr noundef nonnull %4) #17
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef %1, i16 noundef signext %2)
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mat3_to_eulo2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) unnamed_addr #7 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = sext i16 %3 to i64
  %7 = icmp slt i16 %3, 1
  %8 = add nsw i64 %6, -1
  %9 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %8
  %10 = select i1 %7, ptr @rotOrders, ptr %9
  %11 = load i16, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !38
  %14 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %15 = load i16, ptr %14, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @normalize_m3_m3(ptr noundef nonnull %5, ptr noundef %0) #17
  %16 = sext i16 %11 to i64
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = sext i16 %13 to i64
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = call float @hypotf(float noundef %18, float noundef %21) #17
  %23 = fcmp ogt float %22, 0x3EC0000000000000
  %24 = sext i16 %15 to i64
  br i1 %23, label %25, label %57

25:                                               ; preds = %4
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %19, i64 %24
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %24, i64 %24
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = call float @atan2f(float noundef %27, float noundef %29) #17
  %31 = getelementptr inbounds float, ptr %1, i64 %16
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %24
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fneg float %33
  %35 = call float @atan2f(float noundef %34, float noundef %22) #17
  %36 = getelementptr inbounds float, ptr %1, i64 %19
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = load float, ptr %20, align 4, !tbaa !34
  %38 = load float, ptr %17, align 4, !tbaa !34
  %39 = call float @atan2f(float noundef %37, float noundef %38) #17
  %40 = getelementptr inbounds float, ptr %1, i64 %24
  store float %39, ptr %40, align 4, !tbaa !34
  %41 = load float, ptr %26, align 4, !tbaa !34
  %42 = fneg float %41
  %43 = load float, ptr %28, align 4, !tbaa !34
  %44 = fneg float %43
  %45 = call float @atan2f(float noundef %42, float noundef %44) #17
  %46 = getelementptr inbounds float, ptr %2, i64 %16
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = load float, ptr %32, align 4, !tbaa !34
  %48 = fneg float %47
  %49 = fneg float %22
  %50 = call float @atan2f(float noundef %48, float noundef %49) #17
  %51 = getelementptr inbounds float, ptr %2, i64 %19
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = load float, ptr %20, align 4, !tbaa !34
  %53 = fneg float %52
  %54 = load float, ptr %17, align 4, !tbaa !34
  %55 = fneg float %54
  %56 = call float @atan2f(float noundef %53, float noundef %55) #17
  br label %77

57:                                               ; preds = %4
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %24, i64 %19
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fneg float %59
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %19, i64 %19
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = call float @atan2f(float noundef %60, float noundef %62) #17
  %64 = getelementptr inbounds float, ptr %1, i64 %16
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %24
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = fneg float %66
  %68 = call float @atan2f(float noundef %67, float noundef %22) #17
  %69 = getelementptr inbounds float, ptr %1, i64 %19
  store float %68, ptr %69, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %1, i64 %24
  store float 0.000000e+00, ptr %70, align 4, !tbaa !34
  %71 = load float, ptr %1, align 4, !tbaa !34
  store float %71, ptr %2, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %1, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %2, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = getelementptr inbounds float, ptr %1, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  br label %77

77:                                               ; preds = %57, %25
  %78 = phi i64 [ 2, %57 ], [ %24, %25 ]
  %79 = phi float [ %76, %57 ], [ %56, %25 ]
  %80 = getelementptr inbounds float, ptr %2, i64 %78
  store float %79, ptr %80, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct.RotOrderInfo, ptr %10, i64 0, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !40
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %77
  %85 = load float, ptr %1, align 4, !tbaa !34
  %86 = fneg float %85
  store float %86, ptr %1, align 4, !tbaa !34
  %87 = getelementptr inbounds float, ptr %1, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !34
  %89 = fneg float %88
  store float %89, ptr %87, align 4, !tbaa !34
  %90 = getelementptr inbounds float, ptr %1, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = fneg float %91
  store float %92, ptr %90, align 4, !tbaa !34
  %93 = load float, ptr %2, align 4, !tbaa !34
  %94 = fneg float %93
  store float %94, ptr %2, align 4, !tbaa !34
  %95 = getelementptr inbounds float, ptr %2, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !34
  %97 = fneg float %96
  store float %97, ptr %95, align 4, !tbaa !34
  %98 = getelementptr inbounds float, ptr %2, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = fneg float %99
  store float %100, ptr %98, align 4, !tbaa !34
  br label %101

101:                                              ; preds = %84, %77
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef %2) #17
  call void @normalize_m3(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call fastcc void @mat3_to_eulo2(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %1)
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = call float @llvm.fabs.f32(float %7)
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = call float @llvm.fabs.f32(float %10)
  %12 = fadd float %8, %11
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = call float @llvm.fabs.f32(float %14)
  %16 = fadd float %12, %15
  %17 = load float, ptr %5, align 4, !tbaa !34
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = call float @llvm.fabs.f32(float %20)
  %22 = fadd float %18, %21
  %23 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = call float @llvm.fabs.f32(float %24)
  %26 = fadd float %22, %25
  %27 = fcmp ogt float %16, %26
  %28 = getelementptr inbounds float, ptr %0, i64 1
  %29 = getelementptr inbounds float, ptr %0, i64 2
  %30 = select i1 %27, float %17, float %7
  %31 = select i1 %27, float %20, float %10
  %32 = select i1 %27, float %24, float %14
  store float %30, ptr %0, align 4, !tbaa !34
  store float %31, ptr %28, align 4, !tbaa !34
  store float %32, ptr %29, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat3_to_compatible_eulO(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #7 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call fastcc void @mat3_to_eulo2(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %2)
  call void @compatible_eul(ptr noundef nonnull %5, ptr noundef %1)
  call void @compatible_eul(ptr noundef nonnull %6, ptr noundef %1)
  %7 = load float, ptr %5, align 4, !tbaa !34
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fsub float %7, %8
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %12, %14
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = fadd float %10, %16
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fadd float %17, %23
  %25 = load float, ptr %6, align 4, !tbaa !34
  %26 = fsub float %25, %8
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %14
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fadd float %27, %31
  %33 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %21
  %36 = tail call float @llvm.fabs.f32(float %35)
  %37 = fadd float %32, %36
  %38 = fcmp ogt float %24, %37
  %39 = getelementptr inbounds float, ptr %0, i64 1
  %40 = getelementptr inbounds float, ptr %0, i64 2
  %41 = select i1 %38, float %25, float %7
  %42 = select i1 %38, float %29, float %12
  %43 = select i1 %38, float %34, float %19
  store float %41, ptr %0, align 4, !tbaa !34
  store float %42, ptr %39, align 4, !tbaa !34
  store float %43, ptr %40, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_compatible_eulO(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #7 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %3) #17
  call void @normalize_m3(ptr noundef nonnull %5) #17
  call void @mat3_to_compatible_eulO(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rotate_eulO(ptr nocapture noundef %0, i16 noundef signext %1, i8 noundef zeroext %2, float noundef %3) local_unnamed_addr #7 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  switch i8 %2, label %15 [
    i8 88, label %13
    i8 89, label %14
  ]

13:                                               ; preds = %4
  store float %3, ptr %7, align 4, !tbaa !34
  br label %16

14:                                               ; preds = %4
  store float %3, ptr %11, align 4, !tbaa !34
  br label %16

15:                                               ; preds = %4
  store float %3, ptr %12, align 4, !tbaa !34
  br label %16

16:                                               ; preds = %14, %15, %13
  call void @eulO_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %7, i16 noundef signext %1)
  call void @eulO_to_mat3(ptr noundef nonnull %9, ptr noundef %0, i16 noundef signext %1)
  call void @mul_m3_m3m3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call fastcc void @mat3_to_eulo2(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %1)
  %17 = load float, ptr %5, align 4, !tbaa !34
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = call float @llvm.fabs.f32(float %20)
  %22 = fadd float %18, %21
  %23 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = call float @llvm.fabs.f32(float %24)
  %26 = fadd float %22, %25
  %27 = load float, ptr %6, align 4, !tbaa !34
  %28 = call float @llvm.fabs.f32(float %27)
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = call float @llvm.fabs.f32(float %30)
  %32 = fadd float %28, %31
  %33 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = call float @llvm.fabs.f32(float %34)
  %36 = fadd float %32, %35
  %37 = fcmp ogt float %26, %36
  %38 = getelementptr inbounds float, ptr %0, i64 1
  %39 = getelementptr inbounds float, ptr %0, i64 2
  %40 = select i1 %37, float %27, float %17
  %41 = select i1 %37, float %30, float %20
  %42 = select i1 %37, float %34, float %24
  store float %40, ptr %0, align 4, !tbaa !34
  store float %41, ptr %38, align 4, !tbaa !34
  store float %42, ptr %39, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_gimbal_axis(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = sext i16 %2 to i64
  %7 = icmp slt i16 %2, 1
  %8 = add nsw i64 %6, -1
  %9 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %8
  %10 = select i1 %7, ptr @rotOrders, ptr %9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef %1, i16 noundef signext %2)
  %11 = load i16, ptr %10, align 8, !tbaa !38
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 %12
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %12
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %13, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %14, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %13, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %14, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %13, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = load float, ptr %1, align 4, !tbaa !34
  store float %22, ptr %5, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %5, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %5, i64 2
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %12
  store float 0.000000e+00, ptr %29, align 4, !tbaa !34
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %2)
  %30 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !38
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 %32
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %32
  %35 = load float, ptr %34, align 4, !tbaa !34
  store float %35, ptr %33, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %34, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %33, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %34, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds float, ptr %33, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %43 = load i16, ptr %42, align 4, !tbaa !38
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 %44
  store float 0.000000e+00, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %45, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %45, i64 2
  store float 0.000000e+00, ptr %47, align 4, !tbaa !34
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 %44, i64 %44
  store float 1.000000e+00, ptr %48, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mat4_to_dquat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %1) #17
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %15 = load float, ptr %6, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = call float @determinant_m4(ptr noundef %2) #17
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = fadd float %19, -1.000000e+00
  %24 = fadd float %17, -1.000000e+00
  %25 = fadd float %15, -1.000000e+00
  %26 = fmul float %24, %24
  %27 = call float @llvm.fmuladd.f32(float %25, float %25, float %26)
  %28 = call float @llvm.fmuladd.f32(float %23, float %23, float %27)
  %29 = call float @sqrtf(float noundef %28) #17
  %30 = fcmp ogt float %29, 0x3F1A36E2E0000000
  br i1 %30, label %31, label %101

31:                                               ; preds = %22, %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #17
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %8) #17
  call void @orthogonalize_m4(ptr noundef nonnull %14, i32 noundef 1) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %14) #17
  call void @mat3_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  %32 = load float, ptr %7, align 16, !tbaa !34
  %33 = fpext float %32 to double
  %34 = fmul double %33, 0x3FF6A09E667F3BCD
  %35 = getelementptr inbounds float, ptr %7, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fpext float %36 to double
  %38 = fmul double %37, 0x3FF6A09E667F3BCD
  %39 = getelementptr inbounds float, ptr %7, i64 2
  %40 = load float, ptr %39, align 8, !tbaa !34
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3FF6A09E667F3BCD
  %43 = getelementptr inbounds float, ptr %7, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fpext float %44 to double
  %46 = fmul double %45, 0x3FF6A09E667F3BCD
  %47 = fmul double %34, %38
  %48 = fmul double %34, %42
  %49 = fmul double %34, %46
  %50 = fmul double %38, %38
  %51 = fmul double %38, %42
  %52 = fmul double %38, %46
  %53 = fmul double %42, %42
  %54 = fmul double %42, %46
  %55 = fmul double %46, %46
  %56 = fsub double 1.000000e+00, %53
  %57 = fsub double %56, %55
  %58 = fptrunc double %57 to float
  store float %58, ptr %10, align 16, !tbaa !34
  %59 = fadd double %51, %49
  %60 = fptrunc double %59 to float
  %61 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = fsub double %52, %48
  %63 = fptrunc double %62 to float
  %64 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  store float %63, ptr %64, align 8, !tbaa !34
  %65 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  store float 0.000000e+00, ptr %65, align 4, !tbaa !34
  %66 = fsub double %51, %49
  %67 = fptrunc double %66 to float
  %68 = getelementptr inbounds [4 x float], ptr %10, i64 1
  store float %67, ptr %68, align 16, !tbaa !34
  %69 = fsub double 1.000000e+00, %50
  %70 = fsub double %69, %55
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds [4 x float], ptr %10, i64 1, i64 1
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = fadd double %47, %54
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds [4 x float], ptr %10, i64 1, i64 2
  store float %74, ptr %75, align 8, !tbaa !34
  %76 = getelementptr inbounds [4 x float], ptr %10, i64 1, i64 3
  store float 0.000000e+00, ptr %76, align 4, !tbaa !34
  %77 = fadd double %48, %52
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds [4 x float], ptr %10, i64 2
  store float %78, ptr %79, align 16, !tbaa !34
  %80 = fsub double %54, %47
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds [4 x float], ptr %10, i64 2, i64 1
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = fsub double %69, %53
  %84 = fptrunc double %83 to float
  %85 = getelementptr inbounds [4 x float], ptr %10, i64 2, i64 2
  store float %84, ptr %85, align 8, !tbaa !34
  %86 = getelementptr inbounds [4 x float], ptr %10, i64 2, i64 3
  %87 = getelementptr inbounds [4 x float], ptr %10, i64 3, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %87, align 4, !tbaa !34
  %88 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %89 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %90 = load float, ptr %89, align 16, !tbaa !34
  store float %90, ptr %88, align 16, !tbaa !34
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !34
  %93 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 1
  store float %92, ptr %93, align 4, !tbaa !34
  %94 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 2
  %95 = load float, ptr %94, align 8, !tbaa !34
  %96 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 2
  store float %95, ptr %96, align 8, !tbaa !34
  %97 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef %1) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %9) #17
  %98 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %8) #17
  %99 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  call void @_va_mul_m4_series_4(ptr noundef nonnull %99, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %9) #17
  %100 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %100, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #17
  br label %103

101:                                              ; preds = %22
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef %2) #17
  %102 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %102, align 4, !tbaa !47
  br label %103

103:                                              ; preds = %101, %31
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %12) #17
  call void @mat3_to_quat(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  %104 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3
  %105 = load float, ptr %104, align 16, !tbaa !34
  %106 = getelementptr inbounds float, ptr %0, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %0, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fmul float %109, %111
  %113 = call float @llvm.fmuladd.f32(float %105, float %107, float %112)
  %114 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 2
  %115 = load float, ptr %114, align 8, !tbaa !34
  %116 = getelementptr inbounds float, ptr %0, i64 3
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = call float @llvm.fmuladd.f32(float %115, float %117, float %113)
  %119 = fmul float %118, -5.000000e-01
  %120 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1
  store float %119, ptr %120, align 4, !tbaa !34
  %121 = load float, ptr %0, align 4, !tbaa !34
  %122 = fmul float %109, %117
  %123 = call float @llvm.fmuladd.f32(float %105, float %121, float %122)
  %124 = fneg float %115
  %125 = call float @llvm.fmuladd.f32(float %124, float %111, float %123)
  %126 = fmul float %125, 5.000000e-01
  %127 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 1
  store float %126, ptr %127, align 4, !tbaa !34
  %128 = fneg float %105
  %129 = fmul float %109, %121
  %130 = call float @llvm.fmuladd.f32(float %128, float %117, float %129)
  %131 = call float @llvm.fmuladd.f32(float %115, float %107, float %130)
  %132 = fmul float %131, 5.000000e-01
  %133 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 2
  store float %132, ptr %133, align 4, !tbaa !34
  %134 = fneg float %109
  %135 = fmul float %107, %134
  %136 = call float @llvm.fmuladd.f32(float %105, float %111, float %135)
  %137 = call float @llvm.fmuladd.f32(float %115, float %121, float %136)
  %138 = fmul float %137, 5.000000e-01
  %139 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 3
  store float %138, ptr %139, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #8

declare float @determinant_m4(ptr noundef) local_unnamed_addr #8

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @orthogonalize_m4(ptr noundef, i32 noundef) local_unnamed_addr #8

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @dquat_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %5, %5
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %12)
  %14 = tail call float @sqrtf(float noundef %13) #17
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = fdiv float 1.000000e+00, %14
  %18 = fmul float %3, %17
  %19 = fmul float %5, %17
  %20 = fmul float %7, %17
  %21 = fmul float %9, %17
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi float [ %21, %16 ], [ %9, %2 ]
  %24 = phi float [ %20, %16 ], [ %7, %2 ]
  %25 = phi float [ %19, %16 ], [ %5, %2 ]
  %26 = phi float [ %18, %16 ], [ %3, %2 ]
  %27 = fpext float %26 to double
  %28 = fmul double %27, 0x3FF6A09E667F3BCD
  %29 = fpext float %25 to double
  %30 = fmul double %29, 0x3FF6A09E667F3BCD
  %31 = fpext float %24 to double
  %32 = fmul double %31, 0x3FF6A09E667F3BCD
  %33 = fpext float %23 to double
  %34 = fmul double %33, 0x3FF6A09E667F3BCD
  %35 = fmul double %30, %28
  %36 = fmul double %32, %28
  %37 = fmul double %34, %28
  %38 = fmul double %30, %30
  %39 = fmul double %32, %30
  %40 = fmul double %34, %30
  %41 = fmul double %32, %32
  %42 = fmul double %34, %32
  %43 = fmul double %34, %34
  %44 = fsub double 1.000000e+00, %41
  %45 = fsub double %44, %43
  %46 = fptrunc double %45 to float
  store float %46, ptr %0, align 4, !tbaa !34
  %47 = fadd double %39, %37
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fsub double %40, %36
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 0.000000e+00, ptr %53, align 4, !tbaa !34
  %54 = fsub double %39, %37
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fsub double 1.000000e+00, %38
  %58 = fsub double %57, %43
  %59 = fptrunc double %58 to float
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = fadd double %42, %35
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %64, align 4, !tbaa !34
  %65 = fadd double %40, %36
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = fsub double %42, %35
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = fsub double %57, %41
  %72 = fptrunc double %71 to float
  %73 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %75 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %75, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = fneg float %77
  %79 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = fmul float %26, %80
  %82 = tail call float @llvm.fmuladd.f32(float %78, float %25, float %81)
  %83 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = fneg float %84
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %23, float %82)
  %87 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 3
  %88 = load float, ptr %87, align 4, !tbaa !34
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %24, float %86)
  %90 = fmul float %89, 2.000000e+00
  %91 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %90, ptr %91, align 4, !tbaa !34
  %92 = load float, ptr %76, align 4, !tbaa !34
  %93 = fneg float %92
  %94 = load float, ptr %79, align 4, !tbaa !34
  %95 = fmul float %23, %94
  %96 = tail call float @llvm.fmuladd.f32(float %93, float %24, float %95)
  %97 = load float, ptr %83, align 4, !tbaa !34
  %98 = tail call float @llvm.fmuladd.f32(float %97, float %26, float %96)
  %99 = load float, ptr %87, align 4, !tbaa !34
  %100 = fneg float %99
  %101 = tail call float @llvm.fmuladd.f32(float %100, float %25, float %98)
  %102 = fmul float %101, 2.000000e+00
  %103 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %102, ptr %103, align 4, !tbaa !34
  %104 = load float, ptr %76, align 4, !tbaa !34
  %105 = fneg float %104
  %106 = load float, ptr %79, align 4, !tbaa !34
  %107 = fneg float %106
  %108 = fmul float %24, %107
  %109 = tail call float @llvm.fmuladd.f32(float %105, float %23, float %108)
  %110 = load float, ptr %83, align 4, !tbaa !34
  %111 = tail call float @llvm.fmuladd.f32(float %110, float %25, float %109)
  %112 = load float, ptr %87, align 4, !tbaa !34
  %113 = tail call float @llvm.fmuladd.f32(float %112, float %26, float %111)
  %114 = fmul float %113, 2.000000e+00
  %115 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %114, ptr %115, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_weighted_dq_dq(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #7 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %11)
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds float, ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %0, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %17)
  %23 = fcmp uge float %22, 0.000000e+00
  %24 = fneg float %2
  %25 = select i1 %23, float %2, float %24
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %5, float %6)
  store float %26, ptr %0, align 4, !tbaa !34
  %27 = load float, ptr %7, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float %10)
  store float %28, ptr %9, align 4, !tbaa !34
  %29 = load float, ptr %13, align 4, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %25, float %29, float %16)
  store float %30, ptr %15, align 4, !tbaa !34
  %31 = load float, ptr %18, align 4, !tbaa !34
  %32 = tail call float @llvm.fmuladd.f32(float %25, float %31, float %21)
  store float %32, ptr %20, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = tail call float @llvm.fmuladd.f32(float %25, float %34, float %36)
  store float %37, ptr %35, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = tail call float @llvm.fmuladd.f32(float %25, float %39, float %41)
  store float %42, ptr %40, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = tail call float @llvm.fmuladd.f32(float %25, float %44, float %46)
  store float %47, ptr %45, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 3
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = tail call float @llvm.fmuladd.f32(float %25, float %49, float %51)
  store float %52, ptr %50, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !47
  %55 = fcmp une float %54, 0.000000e+00
  br i1 %55, label %56, label %64

56:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %57 = fneg float %25
  %58 = select i1 %23, float %2, float %57
  %59 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %59) #17
  call void @mul_m4_fl(ptr noundef nonnull %4, float noundef %58) #17
  %60 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  call void @add_m4_m4m4(ptr noundef nonnull %60, ptr noundef nonnull %60, ptr noundef nonnull %4) #17
  %61 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !47
  %63 = fadd float %58, %62
  store float %63, ptr %61, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %64

64:                                               ; preds = %56, %3
  ret void
}

declare void @mul_m4_fl(ptr noundef, float noundef) local_unnamed_addr #8

declare void @add_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @normalize_dq(ptr noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = fdiv float 1.000000e+00, %1
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %3, %7
  store float %8, ptr %6, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %3, %10
  store float %11, ptr %9, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %3, %13
  store float %14, ptr %12, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fmul float %3, %16
  store float %17, ptr %15, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %3, %19
  store float %20, ptr %18, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %3, %22
  store float %23, ptr %21, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fmul float %3, %25
  store float %26, ptr %24, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !47
  %29 = fcmp une float %28, 0.000000e+00
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = fsub float %1, %28
  %32 = fcmp une float %31, 0.000000e+00
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fadd float %31, %35
  store float %36, ptr %34, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2, i64 1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fadd float %31, %38
  store float %39, ptr %37, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2, i64 2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fadd float %31, %41
  store float %42, ptr %40, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2, i64 3, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fadd float %31, %44
  store float %45, ptr %43, align 4, !tbaa !34
  br label %46

46:                                               ; preds = %33, %30
  %47 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  tail call void @mul_m4_fl(ptr noundef nonnull %47, float noundef %3) #17
  store float 1.000000e+00, ptr %27, align 4, !tbaa !47
  br label %48

48:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mul_v3m3_dq(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %8, %8
  %22 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %21)
  %23 = fneg float %10
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %10, float %22)
  %25 = fneg float %12
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %12, float %24)
  store float %26, ptr %4, align 16, !tbaa !34
  %27 = fmul float %6, %12
  %28 = fneg float %27
  %29 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %28)
  %30 = fmul float %29, 2.000000e+00
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = fmul float %6, %10
  %33 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %32)
  %34 = fmul float %33, 2.000000e+00
  %35 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  store float %34, ptr %35, align 8, !tbaa !34
  %36 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %27)
  %37 = fmul float %36, 2.000000e+00
  %38 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = fmul float %10, %10
  %40 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %39)
  %41 = fneg float %8
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %8, float %40)
  %43 = tail call float @llvm.fmuladd.f32(float %25, float %12, float %42)
  %44 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %43, ptr %44, align 16, !tbaa !34
  %45 = fmul float %6, %8
  %46 = fneg float %45
  %47 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %46)
  %48 = fmul float %47, 2.000000e+00
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fneg float %32
  %51 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %50)
  %52 = fmul float %51, 2.000000e+00
  %53 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %52, ptr %53, align 8, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %12, float %45)
  %55 = fmul float %54, 2.000000e+00
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %12, %12
  %58 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %41, float %8, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %23, float %10, float %59)
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %60, ptr %61, align 16, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %22)
  %63 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %62)
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = fdiv float 1.000000e+00, %63
  %66 = select i1 %64, float %65, float %63
  %67 = fneg float %14
  %68 = fmul float %6, %16
  %69 = tail call float @llvm.fmuladd.f32(float %67, float %8, float %68)
  %70 = fneg float %18
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %12, float %69)
  %72 = tail call float @llvm.fmuladd.f32(float %10, float %20, float %71)
  %73 = fmul float %72, 2.000000e+00
  %74 = fmul float %12, %16
  %75 = tail call float @llvm.fmuladd.f32(float %67, float %10, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %41, float %20, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %76)
  %78 = fmul float %77, 2.000000e+00
  %79 = fmul float %8, %18
  %80 = tail call float @llvm.fmuladd.f32(float %67, float %12, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %6, float %20, float %80)
  %82 = fneg float %16
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %10, float %81)
  %84 = fmul float %83, 2.000000e+00
  %85 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 3
  %86 = load float, ptr %85, align 4, !tbaa !47
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %88, label %90

88:                                               ; preds = %3
  %89 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 2
  tail call void @mul_m4_v3(ptr noundef nonnull %89, ptr noundef %0) #17
  br label %90

90:                                               ; preds = %88, %3
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef %0) #17
  %91 = load float, ptr %0, align 4, !tbaa !34
  %92 = fadd float %73, %91
  %93 = fmul float %66, %92
  store float %93, ptr %0, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %0, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fadd float %78, %95
  %97 = fmul float %66, %96
  store float %97, ptr %94, align 4, !tbaa !34
  %98 = getelementptr inbounds float, ptr %0, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !34
  %100 = fadd float %84, %99
  %101 = fmul float %66, %100
  store float %101, ptr %98, align 4, !tbaa !34
  %102 = icmp eq ptr %1, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %90
  %104 = load float, ptr %85, align 4, !tbaa !47
  %105 = fcmp une float %104, 0.000000e+00
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %107) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  br label %109

108:                                              ; preds = %103
  call void @copy_m3_m3(ptr noundef nonnull %1, ptr noundef nonnull %4) #17
  br label %109

109:                                              ; preds = %108, %106
  call void @mul_m3_fl(ptr noundef nonnull %1, float noundef %66) #17
  br label %110

110:                                              ; preds = %109, %90
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @mul_m3_fl(ptr noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_dq_dq(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(100) %1, i64 100, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @quat_apply_track(ptr nocapture noundef %0, i16 noundef signext %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = alloca [4 x float], align 16
  %5 = sext i16 %1 to i64
  %6 = getelementptr inbounds [6 x [4 x float]], ptr @__const.quat_apply_track.quat_track, i64 0, i64 %5
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = load float, ptr %6, align 16, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %6, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fneg float %10
  %14 = fmul float %12, %13
  %15 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %6, i64 2
  %19 = load float, ptr %18, align 8, !tbaa !34
  %20 = fneg float %17
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float %15)
  %22 = getelementptr inbounds float, ptr %0, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %6, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fneg float %23
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %25, float %21)
  %28 = fmul float %8, %10
  %29 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %17, float %25, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %26, float %19, float %30)
  %32 = fmul float %8, %17
  %33 = tail call float @llvm.fmuladd.f32(float %7, float %19, float %32)
  %34 = tail call float @llvm.fmuladd.f32(float %23, float %12, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %13, float %25, float %34)
  %36 = fmul float %8, %23
  %37 = tail call float @llvm.fmuladd.f32(float %7, float %25, float %36)
  %38 = tail call float @llvm.fmuladd.f32(float %10, float %19, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %20, float %12, float %38)
  store float %39, ptr %22, align 4, !tbaa !34
  store float %27, ptr %0, align 4, !tbaa !34
  store float %31, ptr %9, align 4, !tbaa !34
  store float %35, ptr %16, align 4, !tbaa !34
  %40 = icmp sgt i16 %1, 2
  %41 = add nsw i16 %1, -3
  %42 = select i1 %40, i16 %41, i16 %1
  %43 = sext i16 %2 to i32
  %44 = sext i16 %42 to i32
  %45 = sub nsw i32 2, %44
  %46 = ashr i32 %45, 1
  %47 = icmp eq i32 %46, %43
  br i1 %47, label %80, label %48

48:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.quat_apply_track.q, i64 16, i1 false)
  %49 = icmp eq i16 %42, 1
  %50 = select i1 %49, float 0x3FE6A09E60000000, float 0xBFE6A09E60000000
  %51 = add nsw i32 %44, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %52
  store float %50, ptr %53, align 4, !tbaa !34
  %54 = load float, ptr %4, align 16, !tbaa !34
  %55 = getelementptr inbounds float, ptr %4, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fneg float %31
  %58 = fmul float %56, %57
  %59 = tail call float @llvm.fmuladd.f32(float %27, float %54, float %58)
  %60 = getelementptr inbounds float, ptr %4, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !34
  %62 = fneg float %35
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %61, float %59)
  %64 = getelementptr inbounds float, ptr %4, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = fneg float %39
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %65, float %63)
  %68 = fmul float %31, %54
  %69 = tail call float @llvm.fmuladd.f32(float %27, float %56, float %68)
  %70 = tail call float @llvm.fmuladd.f32(float %35, float %65, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %66, float %61, float %70)
  %72 = fmul float %35, %54
  %73 = tail call float @llvm.fmuladd.f32(float %27, float %61, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %39, float %56, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %57, float %65, float %74)
  %76 = fmul float %39, %54
  %77 = tail call float @llvm.fmuladd.f32(float %27, float %65, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %31, float %61, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %62, float %56, float %78)
  store float %79, ptr %22, align 4, !tbaa !34
  store float %67, ptr %0, align 4, !tbaa !34
  store float %71, ptr %9, align 4, !tbaa !34
  store float %75, ptr %16, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %80

80:                                               ; preds = %48, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @vec_apply_track(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #1 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  switch i16 %1, label %17 [
    i16 0, label %8
    i16 5, label %14
    i16 4, label %12
    i16 3, label %10
  ]

8:                                                ; preds = %2
  store float %7, ptr %4, align 4, !tbaa !34
  %9 = fneg float %5
  store float %9, ptr %6, align 4, !tbaa !34
  br label %17

10:                                               ; preds = %2
  store float %7, ptr %4, align 4, !tbaa !34
  %11 = fneg float %5
  store float %11, ptr %6, align 4, !tbaa !34
  br label %17

12:                                               ; preds = %2
  %13 = fneg float %7
  store float %13, ptr %0, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  br label %17

14:                                               ; preds = %2
  %15 = fneg float %3
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = fneg float %5
  store float %16, ptr %4, align 4, !tbaa !34
  br label %17

17:                                               ; preds = %2, %14, %12, %10, %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @focallength_to_fov(float noundef %0, float noundef %1) local_unnamed_addr #9 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fdiv float %3, %0
  %5 = tail call float @atanf(float noundef %4) #17
  %6 = fmul float %5, 2.000000e+00
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @fov_to_focallength(float noundef %0, float noundef %1) local_unnamed_addr #9 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fmul float %0, 5.000000e-01
  %5 = tail call float @tanf(float noundef %4) #17
  %6 = fdiv float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @angle_wrap_rad(float noundef %0) local_unnamed_addr #14 {
  %2 = fadd float %0, 0x400921FB60000000
  %3 = fdiv float %2, 0x401921FB60000000
  %4 = tail call float @llvm.floor.f32(float %3)
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 0xC01921FB60000000, float %2)
  %6 = fadd float %5, 0xC00921FB60000000
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @angle_wrap_deg(float noundef %0) local_unnamed_addr #14 {
  %2 = fadd float %0, 1.800000e+02
  %3 = fdiv float %2, 3.600000e+02
  %4 = tail call float @llvm.floor.f32(float %3)
  %5 = tail call float @llvm.fmuladd.f32(float %4, float -3.600000e+02, float %2)
  %6 = fadd float %5, -1.800000e+02
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @angle_compat_rad(float noundef %0, float noundef %1) local_unnamed_addr #14 {
  %3 = fsub float %1, %0
  %4 = fdiv float %3, 0x400921FB60000000
  %5 = fadd float %4, 5.000000e-01
  %6 = tail call float @llvm.floor.f32(float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 0x400921FB60000000, float %0)
  ret float %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mat3_from_axis_conversion(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #7 {
  %6 = icmp eq i32 %0, %2
  %7 = icmp eq i32 %1, %3
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @unit_m3(ptr noundef %4) #17
  br label %49

10:                                               ; preds = %5
  %11 = icmp slt i32 %0, 3
  %12 = add nsw i32 %0, -3
  %13 = select i1 %11, i32 %0, i32 %12
  %14 = icmp slt i32 %1, 3
  %15 = add nsw i32 %1, -3
  %16 = select i1 %14, i32 %1, i32 %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = icmp slt i32 %2, 3
  %20 = add nsw i32 %2, -3
  %21 = select i1 %19, i32 %2, i32 %20
  %22 = icmp slt i32 %3, 3
  %23 = add nsw i32 %3, -3
  %24 = select i1 %22, i32 %3, i32 %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %10
  tail call void @unit_m3(ptr noundef %4) #17
  br label %49

27:                                               ; preds = %18
  %28 = shl i32 %1, 3
  %29 = shl i32 %2, 6
  %30 = shl i32 %3, 9
  %31 = or i32 %28, %29
  %32 = or i32 %31, %30
  %33 = or i32 %32, %0
  br label %34

34:                                               ; preds = %27, %46
  %35 = phi i64 [ 0, %27 ], [ %47, %46 ]
  br label %39

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, 24
  br i1 %38, label %46, label %39, !llvm.loop !49

39:                                               ; preds = %34, %36
  %40 = phi i64 [ 0, %34 ], [ %37, %36 ]
  %41 = getelementptr inbounds [23 x [24 x i32]], ptr @_axis_convert_lut, i64 0, i64 %35, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = icmp eq i32 %42, %33
  br i1 %43, label %44, label %36

44:                                               ; preds = %39
  %45 = getelementptr inbounds [23 x [3 x [3 x float]]], ptr @_axis_convert_matrix, i64 0, i64 %35
  tail call void @copy_m3_m3(ptr noundef %4, ptr noundef nonnull %45) #17
  br label %49

46:                                               ; preds = %36
  %47 = add nuw nsw i64 %35, 1
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %34, !llvm.loop !52

49:                                               ; preds = %46, %44, %26, %9
  %50 = phi i32 [ 0, %9 ], [ 0, %26 ], [ 1, %44 ], [ 0, %46 ]
  ret i32 %50
}

declare void @normalize_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !36, i64 0}
!40 = !{!41, !39, i64 6}
!41 = !{!"RotOrderInfo", !36, i64 0, !39, i64 6}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !35, i64 96}
!48 = !{!"DualQuat", !36, i64 0, !36, i64 16, !36, i64 32, !35, i64 96}
!49 = distinct !{!49, !45, !46}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !36, i64 0}
!52 = distinct !{!52, !45, !46}
