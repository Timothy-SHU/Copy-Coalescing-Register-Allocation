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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @unit_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @unit_qt(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load <2 x float>, ptr %5, align 4, !tbaa !34
  %7 = fneg <2 x float> %6
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fneg float %9
  %11 = load <4 x float>, ptr %2, align 4, !tbaa !34
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %13 = shufflevector <2 x float> %7, <2 x float> %6, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %14 = insertelement <4 x float> %13, float %9, i64 3
  %15 = fmul <4 x float> %12, %14
  %16 = insertelement <4 x float> poison, float %4, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %11, <4 x float> %15)
  %19 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 3, i32 1>
  %20 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = shufflevector <4 x float> %19, <4 x float> %20, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %22 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 2>
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %22, <4 x float> %18)
  %24 = insertelement <4 x float> poison, float %10, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> %20, <4 x i32> <i32 0, i32 poison, i32 4, i32 5>
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %27 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %27, <4 x float> %23)
  store <4 x float> %28, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_qt_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fneg float %4
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = load float, ptr %0, align 4, !tbaa !34
  %11 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %12 = load <2 x float>, ptr %6, align 4, !tbaa !34
  %13 = fneg <2 x float> %12
  %14 = extractelement <2 x float> %13, i64 0
  %15 = extractelement <2 x float> %11, i64 1
  %16 = fmul float %15, %14
  %17 = extractelement <2 x float> %11, i64 0
  %18 = tail call float @llvm.fmuladd.f32(float %5, float %17, float %16)
  %19 = extractelement <2 x float> %13, i64 1
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %9, float %18)
  %21 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %22 = fmul <2 x float> %11, %21
  %23 = extractelement <2 x float> %22, i64 0
  %24 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %5, float %9, float %24)
  %26 = insertelement <2 x float> %12, float %4, i64 1
  %27 = insertelement <2 x float> %11, float %9, i64 0
  %28 = fmul <2 x float> %26, %27
  %29 = insertelement <2 x float> poison, float %10, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x float> %11, float %9, i64 1
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %28)
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %11, <2 x float> %33)
  %35 = extractelement <2 x float> %34, i64 0
  store float %35, ptr %8, align 4, !tbaa !34
  %36 = extractelement <2 x float> %34, i64 1
  store float %36, ptr %1, align 4, !tbaa !34
  store float %25, ptr %7, align 4, !tbaa !34
  %37 = load float, ptr %3, align 4, !tbaa !34
  %38 = load float, ptr %0, align 4, !tbaa !34
  %39 = load <2 x float>, ptr %6, align 4, !tbaa !34
  %40 = insertelement <2 x float> %39, float %37, i64 1
  %41 = fneg <2 x float> %40
  %42 = insertelement <2 x float> %34, float %25, i64 0
  %43 = insertelement <2 x float> poison, float %38, i64 0
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %45 = fmul <2 x float> %42, %44
  %46 = insertelement <2 x float> poison, float %20, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %41, <2 x float> %45)
  %49 = insertelement <2 x float> %34, float %25, i64 1
  %50 = fneg <2 x float> %49
  %51 = insertelement <2 x float> %39, float %37, i64 0
  %52 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %51, <2 x float> %48)
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %54 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %39, <2 x float> %53)
  %55 = extractelement <2 x float> %39, i64 1
  %56 = fneg float %55
  %57 = fmul float %35, %38
  %58 = tail call float @llvm.fmuladd.f32(float %20, float %56, float %57)
  %59 = fneg float %36
  %60 = extractelement <2 x float> %39, i64 0
  %61 = tail call float @llvm.fmuladd.f32(float %59, float %60, float %58)
  %62 = tail call float @llvm.fmuladd.f32(float %25, float %37, float %61)
  store float %62, ptr %8, align 4, !tbaa !34
  store <2 x float> %54, ptr %1, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @conjugate_qt(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds float, ptr %0, i64 1
  %3 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %4 = fneg <2 x float> %3
  store <2 x float> %4, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  store float %7, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @invert_qt(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = tail call float @dot_qtqt(ptr noundef %0, ptr noundef %0) #18
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @conjugate_qt(ptr noundef %0) #18
  %5 = fdiv float 1.000000e+00, %2
  tail call void @mul_qt_fl(ptr noundef %0, float noundef %5) #18
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mul_qt_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #1 {
  %3 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <4 x float> poison, float %1, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = fmul <4 x float> %3, %5
  store <4 x float> %6, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @invert_qt_qt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  tail call void @copy_qt_qt(ptr noundef %0, ptr noundef %1) #18
  tail call void @invert_qt(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @sub_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 16, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %9 = load <2 x float>, ptr %7, align 4, !tbaa !34
  store <2 x float> %9, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %11, ptr %12, align 4, !tbaa !34
  call void @mul_qt_qtqt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mul_fac_qt_fl(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = tail call fastcc float @saacos(float noundef %3) #18
  %5 = fmul float %4, %1
  %6 = tail call float @cosf(float noundef %5) #20
  %7 = tail call float @sinf(float noundef %5) #20
  store float %6, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = tail call fastcc float @normalize_v3(ptr noundef nonnull %8) #18
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %7) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #6 !PGOFuncName !38 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #20
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !39 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #1 !PGOFuncName !40 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @quat_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  tail call fastcc void @quat_to_mat3_no_error(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @quat_to_mat3_no_error(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !41 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = fmul double %4, 0x3FF6A09E667F3BCD
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = fmul double %8, 0x3FF6A09E667F3BCD
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = fmul double %9, %9
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %13 = load <2 x float>, ptr %10, align 4, !tbaa !34
  %14 = fpext <2 x float> %13 to <2 x double>
  %15 = fmul <2 x double> %14, <double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD>
  %16 = insertelement <2 x double> poison, double %5, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %19 = fmul <2 x double> %17, %18
  %20 = insertelement <2 x double> poison, double %9, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x double> %21, %15
  %23 = extractelement <2 x double> %15, i64 0
  %24 = extractelement <2 x double> %15, i64 1
  %25 = fmul double %23, %24
  %26 = fmul double %24, %24
  %27 = fadd <2 x double> %22, %19
  %28 = fsub <2 x double> %22, %19
  %29 = shufflevector <2 x double> %27, <2 x double> %28, <2 x i32> <i32 0, i32 3>
  %30 = fptrunc <2 x double> %29 to <2 x float>
  store <2 x float> %30, ptr %12, align 4, !tbaa !34
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %32 = fsub double 1.000000e+00, %11
  %33 = insertelement <2 x double> %22, double %32, i64 1
  %34 = insertelement <2 x double> %19, double %26, i64 1
  %35 = fsub <2 x double> %33, %34
  %36 = fptrunc <2 x double> %35 to <2 x float>
  store <2 x float> %36, ptr %31, align 4, !tbaa !34
  %37 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %38 = insertelement <2 x double> %22, double %25, i64 0
  %39 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %40 = insertelement <2 x double> %18, double %5, i64 0
  %41 = insertelement <2 x double> %18, double %9, i64 0
  %42 = fmul <2 x double> %40, %41
  %43 = extractelement <2 x double> %42, i64 1
  %44 = fsub double 1.000000e+00, %43
  %45 = fsub double %44, %26
  %46 = fptrunc double %45 to float
  store float %46, ptr %0, align 4, !tbaa !34
  %47 = shufflevector <2 x double> %42, <2 x double> %19, <2 x i32> <i32 0, i32 3>
  %48 = fadd <2 x double> %47, %38
  %49 = fptrunc <2 x double> %48 to <2 x float>
  store <2 x float> %49, ptr %37, align 4, !tbaa !34
  %50 = insertelement <2 x double> poison, double %25, i64 0
  %51 = insertelement <2 x double> %50, double %32, i64 1
  %52 = fsub <2 x double> %51, %42
  %53 = fptrunc <2 x double> %52 to <2 x float>
  store <2 x float> %53, ptr %39, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @quat_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = fmul double %4, 0x3FF6A09E667F3BCD
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = fmul double %8, 0x3FF6A09E667F3BCD
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = fmul double %9, %9
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %13 = load <2 x float>, ptr %10, align 4, !tbaa !34
  %14 = fpext <2 x float> %13 to <2 x double>
  %15 = fmul <2 x double> %14, <double 0x3FF6A09E667F3BCD, double 0x3FF6A09E667F3BCD>
  %16 = insertelement <2 x double> poison, double %5, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %19 = fmul <2 x double> %17, %18
  %20 = insertelement <2 x double> poison, double %9, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x double> %21, %15
  %23 = extractelement <2 x double> %15, i64 0
  %24 = extractelement <2 x double> %15, i64 1
  %25 = fmul double %23, %24
  %26 = fmul double %24, %24
  %27 = fadd <2 x double> %22, %19
  %28 = fsub <2 x double> %22, %19
  %29 = shufflevector <2 x double> %27, <2 x double> %28, <2 x i32> <i32 0, i32 3>
  %30 = fptrunc <2 x double> %29 to <2 x float>
  store <2 x float> %30, ptr %12, align 4, !tbaa !34
  %31 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 0.000000e+00, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %33 = fsub double 1.000000e+00, %11
  %34 = insertelement <2 x double> %22, double %33, i64 1
  %35 = insertelement <2 x double> %19, double %26, i64 1
  %36 = fsub <2 x double> %34, %35
  %37 = fptrunc <2 x double> %36 to <2 x float>
  store <2 x float> %37, ptr %32, align 4, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %39 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  %40 = fadd <2 x double> %19, %22
  %41 = extractelement <2 x double> %40, i64 1
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds [4 x float], ptr %0, i64 2
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %45 = insertelement <2 x double> %18, double %5, i64 0
  %46 = insertelement <2 x double> %18, double %9, i64 0
  %47 = fmul <2 x double> %45, %46
  %48 = extractelement <2 x double> %47, i64 1
  %49 = fsub double 1.000000e+00, %48
  %50 = fsub double %49, %26
  %51 = fptrunc double %50 to float
  store float %51, ptr %0, align 4, !tbaa !34
  %52 = extractelement <2 x double> %47, i64 0
  %53 = fadd double %52, %25
  %54 = fptrunc double %53 to float
  store float %54, ptr %38, align 4, !tbaa !34
  %55 = insertelement <2 x double> poison, double %25, i64 0
  %56 = insertelement <2 x double> %55, double %33, i64 1
  %57 = fsub <2 x double> %56, %47
  %58 = fptrunc <2 x double> %57 to <2 x float>
  store <2 x float> %58, ptr %44, align 4, !tbaa !34
  %59 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %60, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_quat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #20
  call void @normalize_m3(ptr noundef nonnull %3) #20
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
  %18 = call double @sqrt(double noundef %15) #20
  %19 = fmul double %18, 4.000000e+00
  %20 = fdiv double 1.000000e+00, %19
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %22, %24
  %26 = fpext float %25 to double
  %27 = fmul double %20, %26
  %28 = insertelement <2 x double> poison, double %18, i64 0
  %29 = insertelement <2 x double> %28, double %27, i64 1
  %30 = fptrunc <2 x double> %29 to <2 x float>
  store <2 x float> %30, ptr %0, align 4, !tbaa !34
  %31 = load float, ptr %10, align 8, !tbaa !34
  %32 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !34
  %34 = fsub float %31, %33
  %35 = fpext float %34 to double
  %36 = fmul double %20, %35
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %6, align 4, !tbaa !34
  %42 = fsub float %40, %41
  br label %136

43:                                               ; preds = %2
  %44 = fcmp ogt float %4, %8
  %45 = fcmp ogt float %4, %12
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = fsub float %5, %8
  %49 = fsub float %48, %12
  %50 = call float @sqrtf(float noundef %49) #20
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
  br label %136

76:                                               ; preds = %43
  %77 = fcmp ogt float %8, %12
  br i1 %77, label %78, label %107

78:                                               ; preds = %76
  %79 = fadd float %8, 1.000000e+00
  %80 = fsub float %79, %4
  %81 = fsub float %80, %12
  %82 = call float @sqrtf(float noundef %81) #20
  %83 = fmul float %82, 2.000000e+00
  %84 = fpext float %83 to double
  %85 = fmul float %83, 2.500000e-01
  %86 = getelementptr inbounds float, ptr %0, i64 2
  store float %85, ptr %86, align 4, !tbaa !34
  %87 = fdiv double 1.000000e+00, %84
  %88 = load float, ptr %10, align 8, !tbaa !34
  %89 = load <4 x float>, ptr %6, align 4
  %90 = shufflevector <4 x float> %89, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %91 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %92 = load <2 x float>, ptr %91, align 4, !tbaa !34
  %93 = insertelement <2 x float> %90, float %88, i64 1
  %94 = fsub <2 x float> %93, %92
  %95 = fadd <2 x float> %93, %92
  %96 = shufflevector <2 x float> %94, <2 x float> %95, <2 x i32> <i32 1, i32 2>
  %97 = fpext <2 x float> %96 to <2 x double>
  %98 = insertelement <2 x double> poison, double %87, i64 0
  %99 = shufflevector <2 x double> %98, <2 x double> poison, <2 x i32> zeroinitializer
  %100 = fmul <2 x double> %99, %97
  %101 = fptrunc <2 x double> %100 to <2 x float>
  store <2 x float> %101, ptr %0, align 4, !tbaa !34
  %102 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = fadd float %103, %105
  br label %136

107:                                              ; preds = %76
  %108 = fadd float %12, 1.000000e+00
  %109 = fsub float %108, %4
  %110 = fsub float %109, %8
  %111 = call float @sqrtf(float noundef %110) #20
  %112 = fmul float %111, 2.000000e+00
  %113 = fpext float %112 to double
  %114 = fmul float %112, 2.500000e-01
  %115 = getelementptr inbounds float, ptr %0, i64 3
  store float %114, ptr %115, align 4, !tbaa !34
  %116 = fdiv double 1.000000e+00, %113
  %117 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %118 = load <4 x float>, ptr %6, align 4
  %119 = shufflevector <4 x float> %118, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %120 = load float, ptr %10, align 8, !tbaa !34
  %121 = load <2 x float>, ptr %117, align 4, !tbaa !34
  %122 = insertelement <2 x float> %119, float %120, i64 1
  %123 = fsub <2 x float> %121, %122
  %124 = fadd <2 x float> %121, %122
  %125 = shufflevector <2 x float> %123, <2 x float> %124, <2 x i32> <i32 0, i32 3>
  %126 = fpext <2 x float> %125 to <2 x double>
  %127 = insertelement <2 x double> poison, double %116, i64 0
  %128 = shufflevector <2 x double> %127, <2 x double> poison, <2 x i32> zeroinitializer
  %129 = fmul <2 x double> %128, %126
  %130 = fptrunc <2 x double> %129 to <2 x float>
  store <2 x float> %130, ptr %0, align 4, !tbaa !34
  %131 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !34
  %133 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !34
  %135 = fadd float %132, %134
  br label %136

136:                                              ; preds = %47, %107, %78, %17
  %137 = phi float [ %75, %47 ], [ %135, %107 ], [ %106, %78 ], [ %42, %17 ]
  %138 = phi double [ %55, %47 ], [ %116, %107 ], [ %87, %78 ], [ %20, %17 ]
  %139 = phi i64 [ 3, %47 ], [ 2, %107 ], [ 3, %78 ], [ 3, %17 ]
  %140 = fpext float %137 to double
  %141 = fmul double %138, %140
  %142 = fptrunc double %141 to float
  %143 = getelementptr inbounds float, ptr %0, i64 %139
  store float %142, ptr %143, align 4, !tbaa !34
  %144 = call float @normalize_qt(ptr noundef nonnull %0) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normalize_qt(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = tail call float @dot_qtqt(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #20
  %4 = fcmp une float %3, 0.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = fdiv float 1.000000e+00, %3
  tail call void @mul_qt_fl(ptr noundef %0, float noundef %6) #18
  br label %8

7:                                                ; preds = %1
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %7, %5
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_quat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef %1) #20
  call void @mat3_to_quat(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_quat_is_ok(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #20
  call void @normalize_m3(ptr noundef nonnull %3) #20
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  store float %11, ptr %8, align 8, !tbaa !34
  %12 = load float, ptr %9, align 8, !tbaa !34
  %13 = fneg float %12
  %14 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %15, align 8, !tbaa !34
  %16 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #18
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  %18 = load float, ptr %17, align 16, !tbaa !34
  %19 = call fastcc float @saacos(float noundef %18) #18
  %20 = fmul float %19, 5.000000e-01
  %21 = call float @cosf(float noundef %20) #20
  %22 = call float @sinf(float noundef %20) #20
  store float %21, ptr %6, align 16, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %24 = load <2 x float>, ptr %8, align 8, !tbaa !34
  %25 = fneg <2 x float> %24
  %26 = insertelement <2 x float> poison, float %22, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fmul <2 x float> %27, %25
  store <2 x float> %28, ptr %23, align 4, !tbaa !34
  %29 = load float, ptr %15, align 8, !tbaa !34
  %30 = fneg float %29
  %31 = fmul float %22, %30
  %32 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float %31, ptr %32, align 4, !tbaa !34
  call fastcc void @quat_to_mat3_no_error(ptr noundef nonnull %4, ptr noundef nonnull %6) #18
  %33 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  %34 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %3, align 16, !tbaa !34
  %37 = call float @atan2f(float noundef %35, float noundef %36) #20
  %38 = fmul float %37, 5.000000e-01
  %39 = call float @cosf(float noundef %38) #20
  %40 = call float @sinf(float noundef %38) #20
  store float %39, ptr %7, align 16, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float %40, ptr %42, align 4, !tbaa !34
  call void @mul_qt_qtqt(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normalize_qt_qt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  tail call void @copy_qt_qt(ptr noundef %0, ptr noundef %1) #18
  %3 = tail call float @normalize_qt(ptr noundef %0) #18
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rotation_between_vecs_to_mat3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #18
  %5 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #18
  %6 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #18
  %7 = fcmp ogt float %5, 0x3E80000000000000
  br i1 %7, label %8, label %11

8:                                                ; preds = %3, %14
  %9 = phi float [ %5, %3 ], [ 0.000000e+00, %14 ]
  %10 = phi float [ %6, %3 ], [ -1.000000e+00, %14 ]
  call void @axis_angle_normalized_to_mat3_ex(ptr noundef %0, ptr noundef nonnull %4, float noundef %9, float noundef %10) #18
  br label %16

11:                                               ; preds = %3
  %12 = fcmp ogt float %6, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @unit_m3(ptr noundef %0) #20
  br label %16

14:                                               ; preds = %11
  call void @ortho_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #20
  %15 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #18
  br label %8

16:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !42 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !34
  %15 = load float, ptr %8, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = load float, ptr %6, align 4, !tbaa !34
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = load float, ptr %4, align 4, !tbaa !34
  %26 = load float, ptr %2, align 4, !tbaa !34
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !43 {
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
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @axis_angle_normalized_to_mat3_ex(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = fsub float 1.000000e+00, %3
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %7
  %9 = fmul float %5, %8
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %11 = insertelement <4 x float> poison, float %7, i64 0
  %12 = insertelement <4 x float> poison, float %5, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = insertelement <2 x float> poison, float %5, i64 0
  %15 = insertelement <2 x float> %14, float %7, i64 1
  %16 = insertelement <4 x float> poison, float %3, i64 2
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %18 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %19 = insertelement <2 x float> poison, float %2, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %18, %20
  %22 = fmul <2 x float> %18, %18
  %23 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %11, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %26 = insertelement <4 x float> %23, float %7, i64 3
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %28 = fmul <4 x float> %25, %27
  %29 = fmul <4 x float> %13, %28
  %30 = insertelement <2 x float> %22, float %2, i64 1
  %31 = fmul <2 x float> %15, %30
  %32 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %33 = insertelement <2 x float> %32, float %3, i64 0
  %34 = fadd <2 x float> %33, %31
  store <2 x float> %34, ptr %0, align 4, !tbaa !34
  %35 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x float> %16, <4 x float> %35, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %37 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %38 = shufflevector <4 x float> %36, <4 x float> %37, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %39 = shufflevector <4 x float> %38, <4 x float> %35, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %40 = fsub <4 x float> %29, %39
  %41 = fadd <4 x float> %29, %39
  %42 = shufflevector <4 x float> %40, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %42, ptr %10, align 4, !tbaa !34
  %43 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %44 = fadd <2 x float> %43, %21
  %45 = fsub <2 x float> %43, %21
  %46 = shufflevector <2 x float> %44, <2 x float> %45, <2 x i32> <i32 1, i32 2>
  store <2 x float> %46, ptr %17, align 4, !tbaa !34
  %47 = fadd float %9, %3
  %48 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %47, ptr %48, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ortho_v3_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rotation_between_vecs_to_quat(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #18
  %5 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #18
  %6 = fcmp ogt float %5, 0x3E80000000000000
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call float @angle_normalized_v3v3(ptr noundef %1, ptr noundef %2) #20
  call void @axis_angle_normalized_to_quat(ptr noundef %0, ptr noundef nonnull %4, float noundef %8) #18
  br label %14

9:                                                ; preds = %3
  %10 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #18
  %11 = fcmp ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @unit_qt(ptr noundef %0) #18
  br label %14

13:                                               ; preds = %9
  call void @ortho_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #20
  call void @axis_angle_to_quat(ptr noundef %0, ptr noundef nonnull %4, float noundef 0x400921FB60000000) #18
  br label %14

14:                                               ; preds = %12, %13, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @axis_angle_normalized_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = fmul float %2, 5.000000e-01
  %5 = tail call float @sinf(float noundef %4) #20
  %6 = tail call float @cosf(float noundef %4) #20
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  tail call fastcc void @mul_v3_v3fl(ptr noundef nonnull %7, ptr noundef %1, float noundef %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @axis_angle_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #18
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @axis_angle_normalized_to_quat(ptr noundef %0, ptr noundef nonnull %4, float noundef %2) #18
  br label %9

8:                                                ; preds = %3
  tail call void @unit_qt(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rotation_between_quats_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @conjugate_qt_qt(ptr noundef nonnull %4, ptr noundef %1) #18
  %5 = call float @dot_qtqt(ptr noundef nonnull %4, ptr noundef nonnull %4) #18
  %6 = fdiv float 1.000000e+00, %5
  call void @mul_qt_fl(ptr noundef nonnull %4, float noundef %6) #18
  call void @mul_qt_qtqt(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_qt(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = tail call fastcc float @saacos(float noundef %2) #18
  %4 = fmul float %3, 2.000000e+00
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_qt(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = call float @normalize_qt_qt(ptr noundef nonnull %2, ptr noundef %0) #18
  %4 = call float @angle_normalized_qt(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_qtqt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @rotation_between_quats_to_quat(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #18
  %4 = call float @angle_normalized_qt(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_qtqt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = call float @normalize_qt_qt(ptr noundef nonnull %3, ptr noundef %0) #18
  %6 = call float @normalize_qt_qt(ptr noundef nonnull %4, ptr noundef %1) #18
  %7 = call float @angle_normalized_qtqt(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @vec_to_quat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  tail call void @unit_qt(ptr noundef %0) #18
  %9 = tail call fastcc float @len_v3(ptr noundef %1) #18
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %138, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i16 %2, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #18
  %14 = add nsw i16 %2, -3
  br label %16

15:                                               ; preds = %11
  call fastcc void @negate_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #18
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i16 [ %14, %13 ], [ %2, %15 ]
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %23 = load <2 x float>, ptr %21, align 4, !tbaa !34
  %24 = extractelement <2 x float> %23, i64 1
  %25 = fneg float %24
  store float %25, ptr %20, align 4, !tbaa !34
  %26 = extractelement <2 x float> %23, i64 0
  store float %26, ptr %22, align 4, !tbaa !34
  %27 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %23)
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %29 = fadd <2 x float> %28, %27
  %30 = extractelement <2 x float> %29, i64 0
  %31 = fcmp olt float %30, 0x3F1A36E2E0000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store float 1.000000e+00, ptr %20, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %32, %19
  %34 = load float, ptr %6, align 8, !tbaa !34
  %35 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %36 = insertelement <2 x float> %35, float %34, i64 0
  br label %68

37:                                               ; preds = %16
  %38 = icmp eq i16 %17, 1
  %39 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  br i1 %38, label %40, label %53

40:                                               ; preds = %37
  %41 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %42 = load float, ptr %41, align 8, !tbaa !34
  store float %42, ptr %5, align 4, !tbaa !34
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %43, align 4, !tbaa !34
  %44 = tail call float @llvm.fabs.f32(float %42)
  %45 = load <2 x float>, ptr %6, align 8, !tbaa !34
  %46 = extractelement <2 x float> %45, i64 0
  %47 = fneg float %46
  %48 = tail call float @llvm.fabs.f32(float %46)
  %49 = fadd float %44, %48
  %50 = fcmp olt float %49, 0x3F1A36E2E0000000
  %51 = select i1 %50, float 1.000000e+00, float %47
  store float %51, ptr %39, align 4, !tbaa !34
  %52 = extractelement <2 x float> %45, i64 1
  br label %68

53:                                               ; preds = %37
  %54 = load <2 x float>, ptr %6, align 8, !tbaa !34
  %55 = extractelement <2 x float> %54, i64 1
  %56 = fneg float %55
  store float %56, ptr %5, align 4, !tbaa !34
  %57 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %58 = extractelement <2 x float> %54, i64 0
  store float %58, ptr %57, align 4, !tbaa !34
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  %59 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %54)
  %60 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %61 = fadd <2 x float> %60, %59
  %62 = extractelement <2 x float> %61, i64 0
  %63 = fcmp olt float %62, 0x3F1A36E2E0000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  br label %65

65:                                               ; preds = %64, %53
  %66 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %67 = load float, ptr %66, align 8, !tbaa !34
  br label %68

68:                                               ; preds = %40, %65, %33
  %69 = phi float [ %24, %33 ], [ %42, %40 ], [ %67, %65 ]
  %70 = phi float [ %34, %33 ], [ %52, %40 ], [ %67, %65 ]
  %71 = phi <2 x float> [ %36, %33 ], [ %45, %40 ], [ %54, %65 ]
  %72 = fdiv float %70, %9
  %73 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #18
  %74 = tail call fastcc float @saacos(float noundef %72) #18
  call void @axis_angle_normalized_to_quat(ptr noundef %0, ptr noundef nonnull %5, float noundef %74) #18
  %75 = icmp eq i16 %17, %3
  br i1 %75, label %138, label %76

76:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %77 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  call void @quat_to_mat3(ptr noundef nonnull %7, ptr noundef %0) #18
  br i1 %18, label %78, label %94

78:                                               ; preds = %76
  %79 = icmp eq i16 %3, 1
  br i1 %79, label %80, label %87

80:                                               ; preds = %78
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %82 = load float, ptr %81, align 16, !tbaa !34
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = tail call float @atan2f(float noundef %82, float noundef %84) #20
  %86 = fmul float %85, 5.000000e-01
  br label %127

87:                                               ; preds = %78
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %91 = load float, ptr %90, align 16, !tbaa !34
  %92 = tail call float @atan2f(float noundef %89, float noundef %91) #20
  %93 = fmul float %92, -5.000000e-01
  br label %127

94:                                               ; preds = %76
  %95 = icmp eq i16 %17, 1
  %96 = icmp eq i16 %3, 0
  br i1 %95, label %97, label %110

97:                                               ; preds = %94
  br i1 %96, label %98, label %104

98:                                               ; preds = %97
  %99 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %100 = load float, ptr %99, align 16, !tbaa !34
  %101 = load float, ptr %77, align 8, !tbaa !34
  %102 = tail call float @atan2f(float noundef %100, float noundef %101) #20
  %103 = fmul float %102, -5.000000e-01
  br label %127

104:                                              ; preds = %97
  %105 = load float, ptr %77, align 8, !tbaa !34
  %106 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %107 = load float, ptr %106, align 16, !tbaa !34
  %108 = tail call float @atan2f(float noundef %105, float noundef %107) #20
  %109 = fmul float %108, 5.000000e-01
  br label %127

110:                                              ; preds = %94
  br i1 %96, label %111, label %119

111:                                              ; preds = %110
  %112 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !34
  %114 = fneg float %113
  %115 = load float, ptr %77, align 8, !tbaa !34
  %116 = fneg float %115
  %117 = tail call float @atan2f(float noundef %114, float noundef %116) #20
  %118 = fmul float %117, 5.000000e-01
  br label %127

119:                                              ; preds = %110
  %120 = load float, ptr %77, align 8, !tbaa !34
  %121 = fneg float %120
  %122 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = fneg float %123
  %125 = tail call float @atan2f(float noundef %121, float noundef %124) #20
  %126 = fmul float %125, -5.000000e-01
  br label %127

127:                                              ; preds = %104, %98, %119, %111, %80, %87
  %128 = phi float [ %86, %80 ], [ %93, %87 ], [ %103, %98 ], [ %109, %104 ], [ %118, %111 ], [ %126, %119 ]
  %129 = tail call float @cosf(float noundef %128) #20
  %130 = tail call float @sinf(float noundef %128) #20
  %131 = fdiv float %130, %9
  store float %129, ptr %8, align 16, !tbaa !34
  %132 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %133 = insertelement <2 x float> poison, float %131, i64 0
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  %135 = fmul <2 x float> %134, %71
  store <2 x float> %135, ptr %132, align 4, !tbaa !34
  %136 = fmul float %131, %69
  %137 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float %136, ptr %137, align 4, !tbaa !34
  call void @mul_qt_qtqt(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #19
  br label %138

138:                                              ; preds = %68, %127, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !44 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !45 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !46 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @interp_dot_slerp(float noundef %0, float noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = tail call float @llvm.fabs.f32(float %1)
  %5 = fcmp olt float %4, 0x3FEFFF2E40000000
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call float @acosf(float noundef %1) #20
  %8 = tail call float @sinf(float noundef %7) #20
  %9 = fsub float 1.000000e+00, %0
  %10 = fmul float %9, %7
  %11 = tail call float @sinf(float noundef %10) #20
  %12 = fdiv float %11, %8
  store float %12, ptr %2, align 4, !tbaa !34
  %13 = fmul float %7, %0
  %14 = tail call float @sinf(float noundef %13) #20
  %15 = fdiv float %14, %8
  br label %18

16:                                               ; preds = %3
  %17 = fsub float 1.000000e+00, %0
  store float %17, ptr %2, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %16, %6
  %19 = phi float [ %15, %6 ], [ %0, %16 ]
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @interp_qt_qtqt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #5 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = tail call float @dot_qtqt(ptr noundef %1, ptr noundef %2) #18
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = fneg float %7
  call fastcc void @negate_v4_v4(ptr noundef nonnull %5, ptr noundef %1) #18
  br label %12

11:                                               ; preds = %4
  call void @copy_qt_qt(ptr noundef nonnull %5, ptr noundef %1) #18
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi float [ %10, %9 ], [ %7, %11 ]
  call void @interp_dot_slerp(float noundef %3, float noundef %13, ptr noundef nonnull %6) #18
  %14 = load float, ptr %6, align 4, !tbaa !34
  %15 = load float, ptr %5, align 16, !tbaa !34
  %16 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = load float, ptr %2, align 4, !tbaa !34
  %19 = fmul float %17, %18
  %20 = tail call float @llvm.fmuladd.f32(float %14, float %15, float %19)
  store float %20, ptr %0, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fmul float %17, %24
  %26 = tail call float @llvm.fmuladd.f32(float %14, float %22, float %25)
  %27 = getelementptr inbounds float, ptr %0, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %29 = load float, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fmul float %17, %31
  %33 = tail call float @llvm.fmuladd.f32(float %14, float %29, float %32)
  %34 = getelementptr inbounds float, ptr %0, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %2, i64 3
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fmul float %17, %38
  %40 = tail call float @llvm.fmuladd.f32(float %14, float %36, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 3
  store float %40, ptr %41, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !47 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fneg float %14
  %16 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %16, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tri_to_quat_ex(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) local_unnamed_addr #8 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %4) #18
  %12 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %9, align 4, !tbaa !34
  %14 = load float, ptr %6, align 4, !tbaa !34
  %15 = fneg float %14
  %16 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %17, align 4, !tbaa !34
  %18 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #18
  %19 = load float, ptr %9, align 4, !tbaa !34
  %20 = fcmp oeq float %19, 0.000000e+00
  %21 = load float, ptr %16, align 4
  %22 = fcmp oeq float %21, 0.000000e+00
  %23 = select i1 %20, i1 %22, i1 false
  %24 = select i1 %23, float 1.000000e+00, float %19
  %25 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call fastcc float @saacos(float noundef %26) #18
  %28 = fmul float %27, -5.000000e-01
  %29 = tail call float @cosf(float noundef %28) #20
  %30 = tail call float @sinf(float noundef %28) #20
  store float %29, ptr %7, align 16, !tbaa !34
  %31 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %32 = insertelement <2 x float> poison, float %30, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = insertelement <2 x float> poison, float %24, i64 0
  %35 = insertelement <2 x float> %34, float %21, i64 1
  %36 = fmul <2 x float> %33, %35
  store <2 x float> %36, ptr %31, align 4, !tbaa !34
  %37 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  call void @quat_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %7) #18
  %38 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %10) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1) #18
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %6) #20
  store float 0.000000e+00, ptr %25, align 4, !tbaa !34
  %39 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #18
  %40 = load float, ptr %12, align 4, !tbaa !34
  %41 = load float, ptr %6, align 4, !tbaa !34
  %42 = call float @atan2f(float noundef %40, float noundef %41) #20
  %43 = fmul float %42, 5.000000e-01
  %44 = call float @cosf(float noundef %43) #20
  %45 = call float @sinf(float noundef %43) #20
  store float %44, ptr %8, align 16, !tbaa !34
  %46 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float %45, ptr %47, align 4, !tbaa !34
  call void @mul_qt_qtqt(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !48 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @tri_to_quat(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = call float @normal_tri_v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  call void @tri_to_quat_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %6
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
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
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10, double noundef %13) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #1 !PGOFuncName !49 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !50 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @quat_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = tail call float @acosf(float noundef %4) #20
  %6 = tail call float @sinf(float noundef %5) #20
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @axis_angle_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #8 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef %2, float noundef %3) #18
  call void @quat_to_eulO(ptr noundef %0, i16 noundef signext %1, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @quat_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @quat_to_mat3(ptr noundef nonnull %4, ptr noundef %2) #18
  call void @mat3_to_eulO(ptr noundef %0, i16 noundef signext %1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) local_unnamed_addr #5 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @eulO_to_quat(ptr noundef nonnull %5, ptr noundef %2, i16 noundef signext %3) #18
  call void @quat_to_axis_angle(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_quat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = alloca [3 x double], align 16
  %5 = sext i16 %2 to i64
  %6 = icmp slt i16 %2, 1
  %7 = add nsw i64 %5, -1
  %8 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %7
  %9 = select i1 %6, ptr @rotOrders, ptr %8
  %10 = load i16, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !51
  %13 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 2
  %14 = load i16, ptr %13, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %15 = sext i16 %10 to i64
  %16 = getelementptr inbounds float, ptr %1, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %17, 5.000000e-01
  %19 = fpext float %18 to double
  %20 = sext i16 %12 to i64
  %21 = getelementptr inbounds float, ptr %1, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.RotOrderInfo, ptr %9, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !53
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, float 5.000000e-01, float -5.000000e-01
  %27 = fmul float %22, %26
  %28 = fpext float %27 to double
  %29 = sext i16 %14 to i64
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fmul float %31, 5.000000e-01
  %33 = fpext float %32 to double
  %34 = tail call double @cos(double noundef %19) #20
  %35 = tail call double @cos(double noundef %28) #20
  %36 = tail call double @cos(double noundef %33) #20
  %37 = tail call double @sin(double noundef %19) #20
  %38 = tail call double @sin(double noundef %28) #20
  %39 = tail call double @sin(double noundef %33) #20
  %40 = fmul double %34, %36
  %41 = fmul double %34, %39
  %42 = fmul double %36, %37
  %43 = fmul double %37, %39
  %44 = fneg double %38
  %45 = fmul double %41, %44
  %46 = tail call double @llvm.fmuladd.f64(double %35, double %42, double %45)
  %47 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %15
  store double %46, ptr %47, align 8, !tbaa !55
  %48 = fmul double %40, %38
  %49 = tail call double @llvm.fmuladd.f64(double %35, double %43, double %48)
  %50 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %20
  store double %49, ptr %50, align 8, !tbaa !55
  %51 = fmul double %42, %44
  %52 = tail call double @llvm.fmuladd.f64(double %35, double %41, double %51)
  %53 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %29
  store double %52, ptr %53, align 8, !tbaa !55
  %54 = fmul double %38, %43
  %55 = tail call double @llvm.fmuladd.f64(double %35, double %40, double %54)
  %56 = load double, ptr %4, align 16, !tbaa !55
  %57 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %58 = load <2 x double>, ptr %57, align 8, !tbaa !55
  %59 = insertelement <4 x double> poison, double %55, i64 0
  %60 = insertelement <4 x double> %59, double %56, i64 1
  %61 = shufflevector <2 x double> %58, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %62 = shufflevector <4 x double> %60, <4 x double> %61, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %63 = fptrunc <4 x double> %62 to <4 x float>
  store <4 x float> %63, ptr %0, align 4, !tbaa !34
  br i1 %25, label %69, label %64

64:                                               ; preds = %3
  %65 = getelementptr float, ptr %0, i64 %20
  %66 = getelementptr float, ptr %65, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = fneg float %67
  store float %68, ptr %66, align 4, !tbaa !34
  br label %69

69:                                               ; preds = %64, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @axis_angle_normalized_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #5 {
  %4 = tail call float @sinf(float noundef %2) #20
  %5 = tail call float @cosf(float noundef %2) #20
  tail call void @axis_angle_normalized_to_mat3_ex(ptr noundef %0, ptr noundef %1, float noundef %4, float noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @axis_angle_to_mat3(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #18
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @unit_m3(ptr noundef %0) #20
  br label %9

8:                                                ; preds = %3
  call void @axis_angle_normalized_to_mat3(ptr noundef %0, ptr noundef nonnull %4, float noundef %2) #18
  br label %9

9:                                                ; preds = %8, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @axis_angle_to_mat4(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @axis_angle_to_mat3(ptr noundef nonnull %4, ptr noundef %1, float noundef %2) #18
  call void @unit_m4(ptr noundef %0) #20
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @mat3_to_quat(ptr noundef nonnull %4, ptr noundef %2) #18
  call void @quat_to_axis_angle(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_axis_angle(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @mat4_to_quat(ptr noundef nonnull %4, ptr noundef %2) #18
  call void @quat_to_axis_angle(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @axis_angle_to_mat3_single(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #6 {
  %4 = tail call float @cosf(float noundef %2) #20
  %5 = tail call float @sinf(float noundef %2) #20
  switch i8 %1, label %30 [
    i8 88, label %6
    i8 89, label %11
    i8 90, label %18
  ]

6:                                                ; preds = %3
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %4, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %5, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = fneg float %5
  br label %25

11:                                               ; preds = %3
  store float %4, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = fneg float %5
  %14 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 2
  store float %5, ptr %17, align 4, !tbaa !34
  br label %25

18:                                               ; preds = %3
  store float %4, ptr %0, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %5, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %20, align 4, !tbaa !34
  %21 = fneg float %5
  %22 = getelementptr inbounds [3 x float], ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %4, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store <2 x float> zeroinitializer, ptr %24, align 4, !tbaa !34
  br label %25

25:                                               ; preds = %6, %11, %18
  %26 = phi float [ 0.000000e+00, %18 ], [ 0.000000e+00, %11 ], [ %10, %6 ]
  %27 = phi float [ 1.000000e+00, %18 ], [ %4, %11 ], [ %4, %6 ]
  %28 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store float %26, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  store float %27, ptr %29, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @angle_to_mat2(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = tail call float @cosf(float noundef %1) #20
  %4 = tail call float @sinf(float noundef %1) #20
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eul_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = tail call double @cos(double noundef %4) #20
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = tail call double @cos(double noundef %8) #20
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = tail call double @cos(double noundef %12) #20
  %14 = load float, ptr %1, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = tail call double @sin(double noundef %15) #20
  %17 = load float, ptr %6, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = tail call double @sin(double noundef %18) #20
  %20 = load float, ptr %10, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = tail call double @sin(double noundef %21) #20
  %23 = fmul double %5, %13
  %24 = fmul double %5, %22
  %25 = fneg double %24
  %26 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %27 = insertelement <2 x double> poison, double %9, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = insertelement <2 x double> poison, double %13, i64 0
  %30 = insertelement <2 x double> %29, double %22, i64 1
  %31 = fmul <2 x double> %28, %30
  %32 = fptrunc <2 x double> %31 to <2 x float>
  store <2 x float> %32, ptr %0, align 4, !tbaa !34
  %33 = insertelement <2 x double> poison, double %16, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = fmul <2 x double> %34, %30
  %36 = extractelement <2 x double> %35, i64 1
  %37 = tail call double @llvm.fmuladd.f64(double %19, double %23, double %36)
  %38 = insertelement <2 x double> poison, double %19, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = insertelement <2 x double> poison, double %25, i64 0
  %41 = insertelement <2 x double> %40, double %23, i64 1
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %35, <2 x double> %41)
  %43 = extractelement <2 x double> %35, i64 0
  %44 = fneg double %43
  %45 = tail call double @llvm.fmuladd.f64(double %19, double %24, double %44)
  %46 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %47 = fptrunc double %19 to float
  %48 = fneg float %47
  %49 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fmul double %9, %16
  %51 = shufflevector <2 x double> %42, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %52 = insertelement <4 x double> %51, double %50, i64 2
  %53 = insertelement <4 x double> %52, double %37, i64 3
  %54 = fptrunc <4 x double> %53 to <4 x float>
  store <4 x float> %54, ptr %26, align 4, !tbaa !34
  %55 = fmul double %5, %9
  %56 = insertelement <2 x double> poison, double %45, i64 0
  %57 = insertelement <2 x double> %56, double %55, i64 1
  %58 = fptrunc <2 x double> %57 to <2 x float>
  store <2 x float> %58, ptr %46, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eul_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = tail call double @cos(double noundef %4) #20
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fpext float %7 to double
  %9 = tail call double @cos(double noundef %8) #20
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = tail call double @cos(double noundef %12) #20
  %14 = load float, ptr %1, align 4, !tbaa !34
  %15 = fpext float %14 to double
  %16 = tail call double @sin(double noundef %15) #20
  %17 = load float, ptr %6, align 4, !tbaa !34
  %18 = fpext float %17 to double
  %19 = tail call double @sin(double noundef %18) #20
  %20 = load float, ptr %10, align 4, !tbaa !34
  %21 = fpext float %20 to double
  %22 = tail call double @sin(double noundef %21) #20
  %23 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %25 = insertelement <2 x double> poison, double %9, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = insertelement <2 x double> poison, double %13, i64 0
  %28 = insertelement <2 x double> %27, double %22, i64 1
  %29 = fmul <2 x double> %26, %28
  %30 = fptrunc <2 x double> %29 to <2 x float>
  store <2 x float> %30, ptr %0, align 4, !tbaa !34
  %31 = insertelement <2 x double> poison, double %16, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x double> %32, %28
  %34 = insertelement <2 x double> poison, double %19, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = extractelement <2 x double> %33, i64 0
  %37 = fneg double %36
  %38 = insertelement <2 x double> poison, double %5, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = fmul <2 x double> %39, %28
  %41 = extractelement <2 x double> %40, i64 1
  %42 = fneg double %41
  %43 = insertelement <2 x double> poison, double %42, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> %40, <2 x i32> <i32 0, i32 2>
  %45 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %33, <2 x double> %44)
  %46 = fptrunc <2 x double> %45 to <2 x float>
  store <2 x float> %46, ptr %23, align 4, !tbaa !34
  %47 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %48 = insertelement <2 x double> %47, double %37, i64 1
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %40, <2 x double> %48)
  %50 = fptrunc <2 x double> %49 to <2 x float>
  store <2 x float> %50, ptr %24, align 4, !tbaa !34
  %51 = fptrunc double %19 to float
  %52 = fneg float %51
  %53 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = fmul double %9, %16
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul double %5, %9
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %61 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  store float 0.000000e+00, ptr %61, align 4, !tbaa !34
  %62 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 0.000000e+00, ptr %62, align 4, !tbaa !34
  %63 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %63, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_eul(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call fastcc void @mat3_to_eul2(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %5 = load <2 x float>, ptr %3, align 8, !tbaa !34
  %6 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %5)
  %7 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %8 = load float, ptr %7, align 8, !tbaa !34
  %9 = load <2 x float>, ptr %4, align 8, !tbaa !34
  %10 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %9)
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %12 = load float, ptr %11, align 8, !tbaa !34
  %13 = shufflevector <2 x float> %6, <2 x float> %10, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x float> %6, <2 x float> %10, <2 x i32> <i32 1, i32 3>
  %15 = fadd <2 x float> %13, %14
  %16 = insertelement <2 x float> poison, float %8, i64 0
  %17 = insertelement <2 x float> %16, float %12, i64 1
  %18 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %17)
  %19 = fadd <2 x float> %15, %18
  %20 = extractelement <2 x float> %19, i64 0
  %21 = extractelement <2 x float> %19, i64 1
  %22 = fcmp ogt float %20, %21
  %23 = select i1 %22, ptr %4, ptr %3
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mat3_to_eul2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !PGOFuncName !57 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @mat3_to_quat(ptr noundef nonnull %4, ptr noundef %0) #18
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  call void @normalize_m3_m3(ptr noundef nonnull %5, ptr noundef %0) #20
  %6 = load float, ptr %5, align 16, !tbaa !34
  %7 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = call float @hypotf(float noundef %6, float noundef %8) #20
  %10 = fcmp ogt float %9, 0x3EC0000000000000
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  %15 = load float, ptr %14, align 16, !tbaa !34
  %16 = call float @atan2f(float noundef %13, float noundef %15) #20
  store float %16, ptr %1, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %18 = load float, ptr %17, align 8, !tbaa !34
  %19 = fneg float %18
  %20 = call float @atan2f(float noundef %19, float noundef %9) #20
  %21 = getelementptr inbounds float, ptr %1, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = load float, ptr %7, align 4, !tbaa !34
  %23 = load float, ptr %5, align 16, !tbaa !34
  %24 = call float @atan2f(float noundef %22, float noundef %23) #20
  %25 = getelementptr inbounds float, ptr %1, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = load float, ptr %12, align 4, !tbaa !34
  %27 = fneg float %26
  %28 = load float, ptr %14, align 16, !tbaa !34
  %29 = fneg float %28
  %30 = call float @atan2f(float noundef %27, float noundef %29) #20
  store float %30, ptr %2, align 4, !tbaa !34
  %31 = load float, ptr %17, align 8, !tbaa !34
  %32 = fneg float %31
  %33 = fneg float %9
  %34 = call float @atan2f(float noundef %32, float noundef %33) #20
  %35 = getelementptr inbounds float, ptr %2, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = load float, ptr %7, align 4, !tbaa !34
  %37 = fneg float %36
  %38 = load float, ptr %5, align 16, !tbaa !34
  %39 = fneg float %38
  %40 = call float @atan2f(float noundef %37, float noundef %39) #20
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  br label %55

42:                                               ; preds = %3
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fneg float %44
  %46 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %47 = load float, ptr %46, align 16, !tbaa !34
  %48 = call float @atan2f(float noundef %45, float noundef %47) #20
  store float %48, ptr %1, align 4, !tbaa !34
  %49 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %50 = load float, ptr %49, align 8, !tbaa !34
  %51 = fneg float %50
  %52 = call float @atan2f(float noundef %51, float noundef %9) #20
  %53 = getelementptr inbounds float, ptr %1, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %54, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %1) #18
  br label %55

55:                                               ; preds = %42, %11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_eul(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef %1) #20
  call void @normalize_m3(ptr noundef nonnull %3) #20
  call void @mat3_to_eul(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @quat_to_eul(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @quat_to_mat3(ptr noundef nonnull %3, ptr noundef %1) #18
  call void @mat3_to_eul(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eul_to_quat(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fmul float %3, 5.000000e-01
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fmul float %9, 5.000000e-01
  %11 = tail call float @cosf(float noundef %4) #20
  %12 = tail call float @cosf(float noundef %7) #20
  %13 = tail call float @cosf(float noundef %10) #20
  %14 = tail call float @sinf(float noundef %4) #20
  %15 = tail call float @sinf(float noundef %7) #20
  %16 = tail call float @sinf(float noundef %10) #20
  %17 = fneg float %15
  %18 = insertelement <4 x float> poison, float %11, i64 0
  %19 = insertelement <4 x float> %18, float %13, i64 1
  %20 = insertelement <4 x float> %19, float %14, i64 2
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %22 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %23 = insertelement <4 x float> %22, float %16, i64 2
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %25 = fmul <4 x float> %21, %24
  %26 = insertelement <4 x float> poison, float %15, i64 0
  %27 = insertelement <4 x float> %26, float %17, i64 1
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %29 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %30 = fmul <4 x float> %28, %29
  %31 = insertelement <4 x float> poison, float %12, i64 0
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %33 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %25, <4 x float> %30)
  store <4 x float> %33, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rotate_eul(ptr nocapture noundef %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #19
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %8, align 8, !tbaa !34
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !34
  switch i8 %1, label %12 [
    i8 88, label %9
    i8 89, label %10
  ]

9:                                                ; preds = %3
  store float %2, ptr %4, align 8, !tbaa !34
  br label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %2, ptr %11, align 4, !tbaa !34
  br label %13

12:                                               ; preds = %3
  store float %2, ptr %8, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %10, %12, %9
  call void @eul_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  call void @eul_to_mat3(ptr noundef nonnull %6, ptr noundef %0) #18
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  call void @mat3_to_eul(ptr noundef %0, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @compatible_eul(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
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
  br i1 %31, label %32, label %4, !llvm.loop !58

32:                                               ; preds = %29
  %33 = load float, ptr %3, align 4, !tbaa !34
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp ogt float %34, 0x40099999A0000000
  %36 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp olt float %38, 0x3FF99999A0000000
  %40 = select i1 %35, i1 %39, i1 false
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
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

51:                                               ; preds = %46, %32, %41
  %52 = fcmp ogt float %38, 0x40099999A0000000
  %53 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = tail call float @llvm.fabs.f32(float %54)
  br i1 %52, label %56, label %66

56:                                               ; preds = %51
  %57 = fcmp olt float %55, 0x3FF99999A0000000
  %58 = fcmp olt float %34, 0x3FF99999A0000000
  %59 = and i1 %58, %57
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = fcmp ogt float %37, 0.000000e+00
  %62 = getelementptr inbounds float, ptr %0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = select i1 %61, float 0xC01921FB60000000, float 0x401921FB60000000
  %65 = fadd float %63, %64
  store float %65, ptr %62, align 4, !tbaa !34
  br label %66

66:                                               ; preds = %60, %51, %56
  %67 = fcmp ogt float %55, 0x40099999A0000000
  %68 = fcmp olt float %34, 0x3FF99999A0000000
  %69 = and i1 %68, %67
  %70 = fcmp olt float %38, 0x3FF99999A0000000
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = fcmp ogt float %54, 0.000000e+00
  %74 = getelementptr inbounds float, ptr %0, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = select i1 %73, float 0xC01921FB60000000, float 0x401921FB60000000
  %77 = fadd float %75, %76
  store float %77, ptr %74, align 4, !tbaa !34
  br label %78

78:                                               ; preds = %72, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_compatible_eul(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @mat3_to_eul2(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @compatible_eul(ptr noundef nonnull %4, ptr noundef %1) #18
  call void @compatible_eul(ptr noundef nonnull %5, ptr noundef %1) #18
  %6 = load <2 x float>, ptr %4, align 8, !tbaa !34
  %7 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %8 = fsub <2 x float> %6, %7
  %9 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %8)
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %11 = load float, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %15 = fsub <2 x float> %14, %7
  %16 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %15)
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %18 = load float, ptr %17, align 8, !tbaa !34
  %19 = shufflevector <2 x float> %9, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %20 = shufflevector <2 x float> %9, <2 x float> %16, <2 x i32> <i32 1, i32 3>
  %21 = fadd <2 x float> %19, %20
  %22 = insertelement <2 x float> poison, float %11, i64 0
  %23 = insertelement <2 x float> %22, float %18, i64 1
  %24 = insertelement <2 x float> poison, float %13, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fsub <2 x float> %23, %25
  %27 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %26)
  %28 = fadd <2 x float> %21, %27
  %29 = extractelement <2 x float> %28, i64 0
  %30 = extractelement <2 x float> %28, i64 1
  %31 = fcmp ogt float %29, %30
  %32 = select i1 %31, ptr %5, ptr %4
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %32) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @mat3_to_eulo2(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %1) #18
  %6 = load <2 x float>, ptr %4, align 8, !tbaa !34
  %7 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %6)
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %9 = load float, ptr %8, align 8, !tbaa !34
  %10 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %11 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %10)
  %12 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !34
  %14 = shufflevector <2 x float> %7, <2 x float> %11, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <2 x float> %7, <2 x float> %11, <2 x i32> <i32 1, i32 3>
  %16 = fadd <2 x float> %14, %15
  %17 = insertelement <2 x float> poison, float %9, i64 0
  %18 = insertelement <2 x float> %17, float %13, i64 1
  %19 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %18)
  %20 = fadd <2 x float> %16, %19
  %21 = extractelement <2 x float> %20, i64 0
  %22 = extractelement <2 x float> %20, i64 1
  %23 = fcmp ogt float %21, %22
  %24 = select i1 %23, ptr %5, ptr %4
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_mat3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = sext i16 %2 to i64
  %5 = icmp slt i16 %2, 1
  %6 = add nsw i64 %4, -1
  %7 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %6
  %8 = select i1 %5, ptr @rotOrders, ptr %7
  %9 = load i16, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds [3 x i16], ptr %8, i64 0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !51
  %12 = getelementptr inbounds [3 x i16], ptr %8, i64 0, i64 2
  %13 = load i16, ptr %12, align 4, !tbaa !51
  %14 = getelementptr inbounds %struct.RotOrderInfo, ptr %8, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !53
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
  %38 = phi i64 [ %34, %30 ], [ %26, %20 ]
  %39 = phi i64 [ %31, %30 ], [ %22, %20 ]
  %40 = phi float [ %36, %30 ], [ %29, %20 ]
  %41 = phi float [ %33, %30 ], [ %25, %20 ]
  %42 = phi float [ %19, %30 ], [ %21, %20 ]
  %43 = fpext float %42 to double
  %44 = fpext float %41 to double
  %45 = fpext float %40 to double
  %46 = tail call double @cos(double noundef %43) #20
  %47 = tail call double @cos(double noundef %44) #20
  %48 = tail call double @cos(double noundef %45) #20
  %49 = tail call double @sin(double noundef %43) #20
  %50 = tail call double @sin(double noundef %44) #20
  %51 = tail call double @sin(double noundef %45) #20
  %52 = fmul double %46, %48
  %53 = fmul double %46, %51
  %54 = fmul double %48, %49
  %55 = fmul double %49, %51
  %56 = fmul double %47, %48
  %57 = fptrunc double %56 to float
  %58 = getelementptr inbounds [3 x float], ptr %0, i64 %17, i64 %17
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fneg double %53
  %60 = tail call double @llvm.fmuladd.f64(double %50, double %54, double %59)
  %61 = fptrunc double %60 to float
  %62 = getelementptr inbounds [3 x float], ptr %0, i64 %39, i64 %17
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = tail call double @llvm.fmuladd.f64(double %50, double %52, double %55)
  %64 = fptrunc double %63 to float
  %65 = getelementptr inbounds [3 x float], ptr %0, i64 %38, i64 %17
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul double %47, %51
  %67 = fptrunc double %66 to float
  %68 = getelementptr inbounds [3 x float], ptr %0, i64 %17, i64 %39
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = tail call double @llvm.fmuladd.f64(double %50, double %55, double %52)
  %70 = fptrunc double %69 to float
  %71 = getelementptr inbounds [3 x float], ptr %0, i64 %39, i64 %39
  store float %70, ptr %71, align 4, !tbaa !34
  %72 = fneg double %54
  %73 = tail call double @llvm.fmuladd.f64(double %50, double %53, double %72)
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds [3 x float], ptr %0, i64 %38, i64 %39
  store float %74, ptr %75, align 4, !tbaa !34
  %76 = fptrunc double %50 to float
  %77 = fneg float %76
  %78 = getelementptr inbounds [3 x float], ptr %0, i64 %17, i64 %38
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = fmul double %47, %49
  %80 = fptrunc double %79 to float
  %81 = getelementptr inbounds [3 x float], ptr %0, i64 %39, i64 %38
  store float %80, ptr %81, align 4, !tbaa !34
  %82 = fmul double %46, %47
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds [3 x float], ptr %0, i64 %38, i64 %38
  store float %83, ptr %84, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @eulO_to_mat4(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #8 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @normalize_m3(ptr noundef nonnull %4) #20
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef %1, i16 noundef signext %2) #18
  call void @copy_m4_m3(ptr noundef %0, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mat3_to_eulo2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i16 noundef signext %3) unnamed_addr #8 !PGOFuncName !60 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = sext i16 %3 to i64
  %7 = icmp slt i16 %3, 1
  %8 = add nsw i64 %6, -1
  %9 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %8
  %10 = select i1 %7, ptr @rotOrders, ptr %9
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !51
  %14 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %15 = load i16, ptr %14, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @normalize_m3_m3(ptr noundef nonnull %5, ptr noundef %0) #20
  %16 = sext i16 %11 to i64
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = sext i16 %13 to i64
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = call float @hypotf(float noundef %18, float noundef %21) #20
  %23 = fcmp ogt float %22, 0x3EC0000000000000
  %24 = sext i16 %15 to i64
  br i1 %23, label %25, label %58

25:                                               ; preds = %4
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %19, i64 %24
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %24, i64 %24
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = call float @atan2f(float noundef %27, float noundef %29) #20
  %31 = getelementptr inbounds float, ptr %1, i64 %16
  store float %30, ptr %31, align 4, !tbaa !34
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %24
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fneg float %33
  %35 = call float @atan2f(float noundef %34, float noundef %22) #20
  %36 = getelementptr inbounds float, ptr %1, i64 %19
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = load float, ptr %20, align 4, !tbaa !34
  %38 = load float, ptr %17, align 4, !tbaa !34
  %39 = call float @atan2f(float noundef %37, float noundef %38) #20
  %40 = getelementptr inbounds float, ptr %1, i64 %24
  store float %39, ptr %40, align 4, !tbaa !34
  %41 = load float, ptr %26, align 4, !tbaa !34
  %42 = fneg float %41
  %43 = load float, ptr %28, align 4, !tbaa !34
  %44 = fneg float %43
  %45 = call float @atan2f(float noundef %42, float noundef %44) #20
  %46 = getelementptr inbounds float, ptr %2, i64 %16
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = load float, ptr %32, align 4, !tbaa !34
  %48 = fneg float %47
  %49 = fneg float %22
  %50 = call float @atan2f(float noundef %48, float noundef %49) #20
  %51 = getelementptr inbounds float, ptr %2, i64 %19
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = load float, ptr %20, align 4, !tbaa !34
  %53 = fneg float %52
  %54 = load float, ptr %17, align 4, !tbaa !34
  %55 = fneg float %54
  %56 = call float @atan2f(float noundef %53, float noundef %55) #20
  %57 = getelementptr inbounds float, ptr %2, i64 %24
  store float %56, ptr %57, align 4, !tbaa !34
  br label %72

58:                                               ; preds = %4
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %24, i64 %19
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = fneg float %60
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %19, i64 %19
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = call float @atan2f(float noundef %61, float noundef %63) #20
  %65 = getelementptr inbounds float, ptr %1, i64 %16
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 %16, i64 %24
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = fneg float %67
  %69 = call float @atan2f(float noundef %68, float noundef %22) #20
  %70 = getelementptr inbounds float, ptr %1, i64 %19
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %1, i64 %24
  store float 0.000000e+00, ptr %71, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %1) #18
  br label %72

72:                                               ; preds = %58, %25
  %73 = getelementptr inbounds %struct.RotOrderInfo, ptr %10, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !53
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call fastcc void @negate_v3(ptr noundef nonnull %1) #18
  call fastcc void @negate_v3(ptr noundef %2) #18
  br label %77

77:                                               ; preds = %76, %72
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_eulO(ptr nocapture noundef writeonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef %2) #20
  call void @normalize_m3(ptr noundef nonnull %4) #20
  call void @mat3_to_eulO(ptr noundef %0, i16 noundef signext %1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat3_to_compatible_eulO(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @mat3_to_eulo2(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %2) #18
  call void @compatible_eul(ptr noundef nonnull %5, ptr noundef %1) #18
  call void @compatible_eul(ptr noundef nonnull %6, ptr noundef %1) #18
  %7 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %8 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %9 = fsub <2 x float> %7, %8
  %10 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %9)
  %11 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %12 = load float, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load <2 x float>, ptr %6, align 8, !tbaa !34
  %16 = fsub <2 x float> %15, %8
  %17 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %16)
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %19 = load float, ptr %18, align 8, !tbaa !34
  %20 = shufflevector <2 x float> %10, <2 x float> %17, <2 x i32> <i32 0, i32 2>
  %21 = shufflevector <2 x float> %10, <2 x float> %17, <2 x i32> <i32 1, i32 3>
  %22 = fadd <2 x float> %20, %21
  %23 = insertelement <2 x float> poison, float %12, i64 0
  %24 = insertelement <2 x float> %23, float %19, i64 1
  %25 = insertelement <2 x float> poison, float %14, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fsub <2 x float> %24, %26
  %28 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %27)
  %29 = fadd <2 x float> %22, %28
  %30 = extractelement <2 x float> %29, i64 0
  %31 = extractelement <2 x float> %29, i64 1
  %32 = fcmp ogt float %30, %31
  %33 = select i1 %32, ptr %6, ptr %5
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %33) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_compatible_eulO(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %3) #20
  call void @normalize_m3(ptr noundef nonnull %5) #20
  call void @mat3_to_compatible_eulO(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rotate_eulO(ptr nocapture noundef %0, i16 noundef signext %1, i8 noundef zeroext %2, float noundef %3) local_unnamed_addr #8 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #19
  call fastcc void @zero_v3(ptr noundef nonnull %5) #18
  switch i8 %2, label %12 [
    i8 88, label %9
    i8 89, label %10
  ]

9:                                                ; preds = %4
  store float %3, ptr %5, align 4, !tbaa !34
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %3, ptr %11, align 4, !tbaa !34
  br label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %3, ptr %13, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %10, %12, %9
  call void @eulO_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %5, i16 noundef signext %1) #18
  call void @eulO_to_mat3(ptr noundef nonnull %7, ptr noundef %0, i16 noundef signext %1) #18
  call void @mul_m3_m3m3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  call void @mat3_to_eulO(ptr noundef %0, i16 noundef signext %1, ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !61 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @eulO_to_gimbal_axis(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = sext i16 %2 to i64
  %7 = icmp slt i16 %2, 1
  %8 = add nsw i64 %6, -1
  %9 = getelementptr inbounds [6 x %struct.RotOrderInfo], ptr @rotOrders, i64 0, i64 %8
  %10 = select i1 %7, ptr @rotOrders, ptr %9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef %1, i16 noundef signext %2) #18
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 %12
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %12
  call fastcc void @copy_v3_v3(ptr noundef %13, ptr noundef nonnull %14) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #18
  %15 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %12
  store float 0.000000e+00, ptr %15, align 4, !tbaa !34
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext %2) #18
  %16 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !51
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 %18
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %18
  call fastcc void @copy_v3_v3(ptr noundef %19, ptr noundef nonnull %20) #18
  %21 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %22 = load i16, ptr %21, align 4, !tbaa !51
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds [3 x float], ptr %0, i64 %23
  tail call fastcc void @zero_v3(ptr noundef %24) #18
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 %23, i64 %23
  store float 1.000000e+00, ptr %25, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mat4_to_dquat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #19
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %1) #20
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  %14 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %15 = fadd <2 x float> %14, <float -1.000000e+00, float -1.000000e+00>
  store <2 x float> %15, ptr %4, align 8, !tbaa !34
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !34
  %18 = fadd float %17, -1.000000e+00
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %18, ptr %19, align 8, !tbaa !34
  %20 = call float @determinant_m4(ptr noundef %2) #20
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = call fastcc float @len_v3(ptr noundef nonnull %4) #18
  %24 = fcmp ogt float %23, 0x3F1A36E2E0000000
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #19
  call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %7) #20
  call void @orthogonalize_m4(ptr noundef nonnull %13, i32 noundef 1) #20
  call void @mat4_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %13) #18
  call void @quat_to_mat4(ptr noundef nonnull %9, ptr noundef nonnull %6) #18
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %27) #18
  %28 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef %1) #20
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %8) #20
  %29 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %7) #20
  %30 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  call void @_va_mul_m4_series_4(ptr noundef nonnull %30, ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %8) #20
  %31 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %31, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #19
  br label %34

32:                                               ; preds = %22
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef %2) #20
  %33 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %33, align 4, !tbaa !62
  br label %34

34:                                               ; preds = %32, %25
  call void @mat4_to_quat(ptr noundef nonnull %0, ptr noundef nonnull %11) #18
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  %36 = load float, ptr %35, align 16, !tbaa !34
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 2
  %40 = load float, ptr %39, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1
  %42 = fneg float %40
  %43 = fneg float %36
  %44 = fneg float %38
  %45 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %46 = insertelement <4 x float> poison, float %38, i64 0
  %47 = insertelement <4 x float> %46, float %44, i64 1
  %48 = shufflevector <4 x float> %47, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %49 = fmul <4 x float> %45, %48
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %51 = insertelement <4 x float> poison, float %36, i64 0
  %52 = insertelement <4 x float> %51, float %43, i64 1
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %54 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %45, <4 x float> %50)
  %55 = shufflevector <4 x float> %54, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %56 = insertelement <4 x float> poison, float %40, i64 0
  %57 = insertelement <4 x float> %56, float %42, i64 1
  %58 = shufflevector <4 x float> %57, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %59 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %45, <4 x float> %55)
  %60 = fmul <4 x float> %59, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -5.000000e-01>
  %61 = shufflevector <4 x float> %60, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %61, ptr %41, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare float @determinant_m4(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @orthogonalize_m4(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @dquat_to_mat4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @copy_qt_qt(ptr noundef nonnull %3, ptr noundef %1) #18
  %4 = call float @dot_qtqt(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  %5 = tail call float @sqrtf(float noundef %4) #20
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = fdiv float 1.000000e+00, %5
  call void @mul_qt_fl(ptr noundef nonnull %3, float noundef %8) #18
  br label %9

9:                                                ; preds = %7, %2
  call void @quat_to_mat4(ptr noundef %0, ptr noundef nonnull %3) #18
  %10 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fneg float %11
  %13 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = load float, ptr %3, align 16, !tbaa !34
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %18)
  %20 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fneg float %21
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float %19)
  %26 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %29 = load float, ptr %28, align 8, !tbaa !34
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %25)
  %31 = fmul float %30, 2.000000e+00
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 3
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = load float, ptr %10, align 4, !tbaa !34
  %34 = fneg float %33
  %35 = load float, ptr %15, align 4, !tbaa !34
  %36 = fmul float %23, %35
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %29, float %36)
  %38 = load float, ptr %20, align 4, !tbaa !34
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %17, float %37)
  %40 = load float, ptr %26, align 4, !tbaa !34
  %41 = fneg float %40
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %14, float %39)
  %43 = fmul float %42, 2.000000e+00
  %44 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = load float, ptr %10, align 4, !tbaa !34
  %46 = fneg float %45
  %47 = load float, ptr %15, align 4, !tbaa !34
  %48 = fneg float %47
  %49 = fmul float %29, %48
  %50 = tail call float @llvm.fmuladd.f32(float %46, float %23, float %49)
  %51 = load float, ptr %20, align 4, !tbaa !34
  %52 = tail call float @llvm.fmuladd.f32(float %51, float %14, float %50)
  %53 = load float, ptr %26, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %17, float %52)
  %55 = fmul float %54, 2.000000e+00
  %56 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_weighted_dq_dq(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #8 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call float @dot_qtqt(ptr noundef %1, ptr noundef %0) #18
  %6 = fcmp uge float %5, 0.000000e+00
  %7 = fneg float %2
  %8 = select i1 %6, float %2, float %7
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = load float, ptr %0, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %10)
  store float %11, ptr %0, align 4, !tbaa !34
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %15)
  store float %16, ptr %14, align 4, !tbaa !34
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %8, float %18, float %20)
  store float %21, ptr %19, align 4, !tbaa !34
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %23, float %25)
  store float %26, ptr %24, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = tail call float @llvm.fmuladd.f32(float %8, float %28, float %30)
  store float %31, ptr %29, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = tail call float @llvm.fmuladd.f32(float %8, float %33, float %35)
  store float %36, ptr %34, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %38, float %40)
  store float %41, ptr %39, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 1, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1, i64 3
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = tail call float @llvm.fmuladd.f32(float %8, float %43, float %45)
  store float %46, ptr %44, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 3
  %48 = load float, ptr %47, align 4, !tbaa !62
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %51 = fneg float %8
  %52 = select i1 %6, float %2, float %51
  %53 = getelementptr inbounds %struct.DualQuat, ptr %1, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %53) #20
  call void @mul_m4_fl(ptr noundef nonnull %4, float noundef %52) #20
  %54 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  call void @add_m4_m4m4(ptr noundef nonnull %54, ptr noundef nonnull %54, ptr noundef nonnull %4) #20
  %55 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  %56 = load float, ptr %55, align 4, !tbaa !62
  %57 = fadd float %52, %56
  store float %57, ptr %55, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %58

58:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_fl(ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @add_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @normalize_dq(ptr noundef %0, float noundef %1) local_unnamed_addr #8 {
  %3 = fdiv float 1.000000e+00, %1
  tail call void @mul_qt_fl(ptr noundef %0, float noundef %3) #18
  %4 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 1
  tail call void @mul_qt_fl(ptr noundef nonnull %4, float noundef %3) #18
  %5 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !62
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = fsub float %1, %6
  %10 = fcmp une float %9, 0.000000e+00
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fadd float %9, %13
  store float %14, ptr %12, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2, i64 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %9, %16
  store float %17, ptr %15, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2, i64 2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fadd float %9, %19
  store float %20, ptr %18, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2, i64 3, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fadd float %9, %22
  store float %23, ptr %21, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %11, %8
  %25 = getelementptr inbounds %struct.DualQuat, ptr %0, i64 0, i32 2
  tail call void @mul_m4_fl(ptr noundef nonnull %25, float noundef %3) #20
  store float 1.000000e+00, ptr %5, align 4, !tbaa !62
  br label %26

26:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mul_v3m3_dq(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %8 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 1, i64 2
  %15 = fneg float %9
  %16 = fmul float %6, %9
  %17 = fneg float %16
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %23 = fmul float %9, %9
  %24 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %23)
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %26 = tail call float @dot_qtqt(ptr noundef nonnull %2, ptr noundef nonnull %2) #18
  %27 = fcmp ogt float %26, 0.000000e+00
  %28 = fdiv float 1.000000e+00, %26
  %29 = select i1 %27, float %28, float %26
  %30 = fneg float %11
  %31 = load <2 x float>, ptr %7, align 4, !tbaa !34
  %32 = load <2 x float>, ptr %14, align 4, !tbaa !34
  %33 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %34 = extractelement <2 x float> %31, i64 0
  %35 = fmul <2 x float> %31, %31
  %36 = extractelement <2 x float> %35, i64 0
  %37 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %36)
  %38 = extractelement <2 x float> %31, i64 1
  %39 = fneg float %38
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %38, float %37)
  %41 = tail call float @llvm.fmuladd.f32(float %15, float %9, float %40)
  store float %41, ptr %4, align 16, !tbaa !34
  %42 = tail call float @llvm.fmuladd.f32(float %34, float %38, float %17)
  %43 = fmul float %42, 2.000000e+00
  store float %43, ptr %18, align 4, !tbaa !34
  %44 = fmul float %38, %38
  %45 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %44)
  %46 = shufflevector <2 x float> %32, <2 x float> %31, <2 x i32> <i32 0, i32 2>
  %47 = fneg <2 x float> %46
  %48 = extractelement <2 x float> %47, i64 1
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %34, float %45)
  %50 = tail call float @llvm.fmuladd.f32(float %15, float %9, float %49)
  store float %50, ptr %20, align 16, !tbaa !34
  %51 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %52 = insertelement <2 x float> %33, float %9, i64 1
  %53 = insertelement <2 x float> poison, float %6, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %54, %31
  %56 = extractelement <2 x float> %55, i64 0
  %57 = fneg float %56
  %58 = tail call float @llvm.fmuladd.f32(float %38, float %9, float %57)
  %59 = fmul float %58, 2.000000e+00
  store float %59, ptr %21, align 4, !tbaa !34
  %60 = fneg <2 x float> %55
  %61 = insertelement <2 x float> %60, float %16, i64 0
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> %52, <2 x float> %61)
  %63 = fmul <2 x float> %62, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %63, ptr %19, align 4, !tbaa !34
  %64 = insertelement <2 x float> poison, float %9, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %65, <2 x float> %55)
  %67 = fmul <2 x float> %66, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %67, ptr %22, align 4, !tbaa !34
  %68 = tail call float @llvm.fmuladd.f32(float %48, float %34, float %24)
  %69 = tail call float @llvm.fmuladd.f32(float %39, float %38, float %68)
  store float %69, ptr %25, align 16, !tbaa !34
  %70 = insertelement <2 x float> %53, float %9, i64 1
  %71 = insertelement <2 x float> poison, float %13, i64 0
  %72 = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> zeroinitializer
  %73 = fmul <2 x float> %70, %72
  %74 = insertelement <2 x float> poison, float %30, i64 0
  %75 = shufflevector <2 x float> %74, <2 x float> poison, <2 x i32> zeroinitializer
  %76 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %75, <2 x float> %31, <2 x float> %73)
  %77 = insertelement <2 x float> %32, float %9, i64 0
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %77, <2 x float> %76)
  %79 = shufflevector <2 x float> %78, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %80 = insertelement <2 x float> %31, float %6, i64 0
  %81 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %80, <2 x float> %32, <2 x float> %79)
  %82 = fmul <2 x float> %81, <float 2.000000e+00, float 2.000000e+00>
  %83 = shufflevector <2 x float> %82, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %84 = fmul <2 x float> %31, %32
  %85 = extractelement <2 x float> %84, i64 0
  %86 = tail call float @llvm.fmuladd.f32(float %30, float %9, float %85)
  %87 = extractelement <2 x float> %32, i64 1
  %88 = tail call float @llvm.fmuladd.f32(float %6, float %87, float %86)
  %89 = fneg float %13
  %90 = tail call float @llvm.fmuladd.f32(float %89, float %38, float %88)
  %91 = fmul float %90, 2.000000e+00
  %92 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 3
  %93 = load float, ptr %92, align 4, !tbaa !62
  %94 = fcmp une float %93, 0.000000e+00
  br i1 %94, label %95, label %97

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 2
  tail call void @mul_m4_v3(ptr noundef nonnull %96, ptr noundef %0) #20
  br label %97

97:                                               ; preds = %95, %3
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef %0) #20
  %98 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %99 = fadd <2 x float> %83, %98
  %100 = insertelement <2 x float> poison, float %29, i64 0
  %101 = shufflevector <2 x float> %100, <2 x float> poison, <2 x i32> zeroinitializer
  %102 = fmul <2 x float> %101, %99
  store <2 x float> %102, ptr %0, align 4, !tbaa !34
  %103 = getelementptr inbounds float, ptr %0, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = fadd float %91, %104
  %106 = fmul float %29, %105
  store float %106, ptr %103, align 4, !tbaa !34
  %107 = icmp eq ptr %1, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %97
  %109 = load float, ptr %92, align 4, !tbaa !62
  %110 = fcmp une float %109, 0.000000e+00
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.DualQuat, ptr %2, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %112) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  br label %114

113:                                              ; preds = %108
  call void @copy_m3_m3(ptr noundef nonnull %1, ptr noundef nonnull %4) #20
  br label %114

114:                                              ; preds = %113, %111
  call void @mul_m3_fl(ptr noundef nonnull %1, float noundef %29) #20
  br label %115

115:                                              ; preds = %114, %97
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_fl(ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_dq_dq(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(100) %1, i64 100, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @quat_apply_track(ptr nocapture noundef %0, i16 noundef signext %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = alloca [4 x float], align 16
  %5 = sext i16 %1 to i64
  %6 = getelementptr inbounds [6 x [4 x float]], ptr @__const.quat_apply_track.quat_track, i64 0, i64 %5
  tail call void @mul_qt_qtqt(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6) #18
  %7 = icmp sgt i16 %1, 2
  %8 = add nsw i16 %1, -3
  %9 = select i1 %7, i16 %8, i16 %1
  %10 = sext i16 %2 to i32
  %11 = sext i16 %9 to i32
  %12 = sub nsw i32 2, %11
  %13 = ashr i32 %12, 1
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.quat_apply_track.q, i64 16, i1 false)
  %16 = icmp eq i16 %9, 1
  %17 = select i1 %16, float 0x3FE6A09E60000000, float 0xBFE6A09E60000000
  %18 = add nsw i32 %11, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %19
  store float %17, ptr %20, align 4, !tbaa !34
  call void @mul_qt_qtqt(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %21

21:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @vec_apply_track(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #1 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %0) #18
  switch i16 %1, label %33 [
    i16 0, label %4
    i16 5, label %23
    i16 4, label %18
    i16 3, label %11
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fneg float %9
  br label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fneg float %16
  br label %29

18:                                               ; preds = %2
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fneg float %20
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = load float, ptr %3, align 4, !tbaa !34
  br label %29

23:                                               ; preds = %2
  %24 = load float, ptr %3, align 4, !tbaa !34
  %25 = fneg float %24
  store float %25, ptr %0, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fneg float %27
  br label %29

29:                                               ; preds = %4, %11, %18, %23
  %30 = phi i64 [ 1, %23 ], [ 2, %18 ], [ 2, %11 ], [ 2, %4 ]
  %31 = phi float [ %28, %23 ], [ %22, %18 ], [ %17, %11 ], [ %10, %4 ]
  %32 = getelementptr inbounds float, ptr %0, i64 %30
  store float %31, ptr %32, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @focallength_to_fov(float noundef %0, float noundef %1) local_unnamed_addr #6 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fdiv float %3, %0
  %5 = tail call float @atanf(float noundef %4) #20
  %6 = fmul float %5, 2.000000e+00
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @fov_to_focallength(float noundef %0, float noundef %1) local_unnamed_addr #6 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fmul float %0, 5.000000e-01
  %5 = tail call float @tanf(float noundef %4) #20
  %6 = fdiv float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @angle_wrap_rad(float noundef %0) local_unnamed_addr #14 {
  %2 = fadd float %0, 0x400921FB60000000
  %3 = tail call fastcc float @mod_inline(float noundef %2, float noundef 0x401921FB60000000) #18
  %4 = fadd float %3, 0xC00921FB60000000
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @mod_inline(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !64 {
  %3 = fdiv float %0, %1
  %4 = tail call float @llvm.floor.f32(float %3)
  %5 = fneg float %1
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %4, float %0)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @angle_wrap_deg(float noundef %0) local_unnamed_addr #14 {
  %2 = fadd float %0, 1.800000e+02
  %3 = tail call fastcc float @mod_inline(float noundef %2, float noundef 3.600000e+02) #18
  %4 = fadd float %3, -1.800000e+02
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @angle_compat_rad(float noundef %0, float noundef %1) local_unnamed_addr #14 {
  %3 = fsub float %1, %0
  %4 = fdiv float %3, 0x400921FB60000000
  %5 = fadd float %4, 5.000000e-01
  %6 = tail call float @llvm.floor.f32(float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 0x400921FB60000000, float %0)
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mat3_from_axis_conversion(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %0, %2
  %7 = icmp eq i32 %1, %3
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @unit_m3(ptr noundef %4) #20
  br label %41

10:                                               ; preds = %5
  %11 = tail call fastcc i32 @_axis_signed(i32 noundef %0) #18
  %12 = tail call fastcc i32 @_axis_signed(i32 noundef %1) #18
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @_axis_signed(i32 noundef %2) #18
  %16 = tail call fastcc i32 @_axis_signed(i32 noundef %3) #18
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  tail call void @unit_m3(ptr noundef %4) #20
  br label %41

19:                                               ; preds = %14
  %20 = shl i32 %1, 3
  %21 = shl i32 %2, 6
  %22 = shl i32 %3, 9
  %23 = or i32 %20, %21
  %24 = or i32 %23, %22
  %25 = or i32 %24, %0
  br label %26

26:                                               ; preds = %19, %38
  %27 = phi i64 [ 0, %19 ], [ %39, %38 ]
  br label %31

28:                                               ; preds = %31
  %29 = add nuw nsw i64 %32, 1
  %30 = icmp eq i64 %29, 24
  br i1 %30, label %38, label %31, !llvm.loop !65

31:                                               ; preds = %26, %28
  %32 = phi i64 [ 0, %26 ], [ %29, %28 ]
  %33 = getelementptr inbounds [23 x [24 x i32]], ptr @_axis_convert_lut, i64 0, i64 %27, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !66
  %35 = icmp eq i32 %34, %25
  br i1 %35, label %36, label %28

36:                                               ; preds = %31
  %37 = getelementptr inbounds [23 x [3 x [3 x float]]], ptr @_axis_convert_matrix, i64 0, i64 %27
  tail call void @copy_m3_m3(ptr noundef %4, ptr noundef nonnull %37) #20
  br label %41

38:                                               ; preds = %28
  %39 = add nuw nsw i64 %27, 1
  %40 = icmp eq i64 %39, 23
  br i1 %40, label %41, label %26, !llvm.loop !68

41:                                               ; preds = %38, %36, %18, %9
  %42 = phi i32 [ 0, %9 ], [ 0, %18 ], [ 1, %36 ], [ 0, %38 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @_axis_signed(i32 noundef %0) unnamed_addr #14 !PGOFuncName !69 {
  %2 = icmp slt i32 %0, 3
  %3 = add nsw i32 %0, -3
  %4 = select i1 %2, i32 %0, i32 %3
  ret i32 %4
}

; Function Attrs: optsize
declare void @normalize_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !70 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"math_rotation.c:saacos"}
!39 = !{!"math_rotation.c:normalize_v3"}
!40 = !{!"math_rotation.c:mul_v3_fl"}
!41 = !{!"math_rotation.c:quat_to_mat3_no_error"}
!42 = !{!"math_rotation.c:cross_v3_v3v3"}
!43 = !{!"math_rotation.c:dot_v3v3"}
!44 = !{!"math_rotation.c:len_v3"}
!45 = !{!"math_rotation.c:copy_v3_v3"}
!46 = !{!"math_rotation.c:negate_v3_v3"}
!47 = !{!"math_rotation.c:negate_v4_v4"}
!48 = !{!"math_rotation.c:sub_v3_v3v3"}
!49 = !{!"math_rotation.c:mul_v3_v3fl"}
!50 = !{!"math_rotation.c:normalize_v3_v3"}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !36, i64 0}
!53 = !{!54, !52, i64 6}
!54 = !{!"RotOrderInfo", !36, i64 0, !52, i64 6}
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !36, i64 0}
!57 = !{!"math_rotation.c:mat3_to_eul2"}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"math_rotation.c:mat3_to_eulo2"}
!61 = !{!"math_rotation.c:zero_v3"}
!62 = !{!63, !35, i64 96}
!63 = !{!"DualQuat", !36, i64 0, !36, i64 16, !36, i64 32, !35, i64 96}
!64 = !{!"math_rotation.c:mod_inline"}
!65 = distinct !{!65, !59}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !36, i64 0}
!68 = distinct !{!68, !59}
!69 = !{!"math_rotation.c:_axis_signed"}
!70 = !{!"math_rotation.c:negate_v3"}
