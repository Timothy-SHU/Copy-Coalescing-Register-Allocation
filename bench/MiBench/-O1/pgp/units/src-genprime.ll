; ModuleID = 'src/genprime.c'
source_filename = "src/genprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_precision = external local_unnamed_addr global i16, align 2
@primetable = internal unnamed_addr constant [1029 x i16] [i16 2, i16 3, i16 5, i16 7, i16 11, i16 13, i16 17, i16 19, i16 23, i16 29, i16 31, i16 37, i16 41, i16 43, i16 47, i16 53, i16 59, i16 61, i16 67, i16 71, i16 73, i16 79, i16 83, i16 89, i16 97, i16 101, i16 103, i16 107, i16 109, i16 113, i16 127, i16 131, i16 137, i16 139, i16 149, i16 151, i16 157, i16 163, i16 167, i16 173, i16 179, i16 181, i16 191, i16 193, i16 197, i16 199, i16 211, i16 223, i16 227, i16 229, i16 233, i16 239, i16 241, i16 251, i16 257, i16 263, i16 269, i16 271, i16 277, i16 281, i16 283, i16 293, i16 307, i16 311, i16 313, i16 317, i16 331, i16 337, i16 347, i16 349, i16 353, i16 359, i16 367, i16 373, i16 379, i16 383, i16 389, i16 397, i16 401, i16 409, i16 419, i16 421, i16 431, i16 433, i16 439, i16 443, i16 449, i16 457, i16 461, i16 463, i16 467, i16 479, i16 487, i16 491, i16 499, i16 503, i16 509, i16 521, i16 523, i16 541, i16 547, i16 557, i16 563, i16 569, i16 571, i16 577, i16 587, i16 593, i16 599, i16 601, i16 607, i16 613, i16 617, i16 619, i16 631, i16 641, i16 643, i16 647, i16 653, i16 659, i16 661, i16 673, i16 677, i16 683, i16 691, i16 701, i16 709, i16 719, i16 727, i16 733, i16 739, i16 743, i16 751, i16 757, i16 761, i16 769, i16 773, i16 787, i16 797, i16 809, i16 811, i16 821, i16 823, i16 827, i16 829, i16 839, i16 853, i16 857, i16 859, i16 863, i16 877, i16 881, i16 883, i16 887, i16 907, i16 911, i16 919, i16 929, i16 937, i16 941, i16 947, i16 953, i16 967, i16 971, i16 977, i16 983, i16 991, i16 997, i16 1009, i16 1013, i16 1019, i16 1021, i16 1031, i16 1033, i16 1039, i16 1049, i16 1051, i16 1061, i16 1063, i16 1069, i16 1087, i16 1091, i16 1093, i16 1097, i16 1103, i16 1109, i16 1117, i16 1123, i16 1129, i16 1151, i16 1153, i16 1163, i16 1171, i16 1181, i16 1187, i16 1193, i16 1201, i16 1213, i16 1217, i16 1223, i16 1229, i16 1231, i16 1237, i16 1249, i16 1259, i16 1277, i16 1279, i16 1283, i16 1289, i16 1291, i16 1297, i16 1301, i16 1303, i16 1307, i16 1319, i16 1321, i16 1327, i16 1361, i16 1367, i16 1373, i16 1381, i16 1399, i16 1409, i16 1423, i16 1427, i16 1429, i16 1433, i16 1439, i16 1447, i16 1451, i16 1453, i16 1459, i16 1471, i16 1481, i16 1483, i16 1487, i16 1489, i16 1493, i16 1499, i16 1511, i16 1523, i16 1531, i16 1543, i16 1549, i16 1553, i16 1559, i16 1567, i16 1571, i16 1579, i16 1583, i16 1597, i16 1601, i16 1607, i16 1609, i16 1613, i16 1619, i16 1621, i16 1627, i16 1637, i16 1657, i16 1663, i16 1667, i16 1669, i16 1693, i16 1697, i16 1699, i16 1709, i16 1721, i16 1723, i16 1733, i16 1741, i16 1747, i16 1753, i16 1759, i16 1777, i16 1783, i16 1787, i16 1789, i16 1801, i16 1811, i16 1823, i16 1831, i16 1847, i16 1861, i16 1867, i16 1871, i16 1873, i16 1877, i16 1879, i16 1889, i16 1901, i16 1907, i16 1913, i16 1931, i16 1933, i16 1949, i16 1951, i16 1973, i16 1979, i16 1987, i16 1993, i16 1997, i16 1999, i16 2003, i16 2011, i16 2017, i16 2027, i16 2029, i16 2039, i16 2053, i16 2063, i16 2069, i16 2081, i16 2083, i16 2087, i16 2089, i16 2099, i16 2111, i16 2113, i16 2129, i16 2131, i16 2137, i16 2141, i16 2143, i16 2153, i16 2161, i16 2179, i16 2203, i16 2207, i16 2213, i16 2221, i16 2237, i16 2239, i16 2243, i16 2251, i16 2267, i16 2269, i16 2273, i16 2281, i16 2287, i16 2293, i16 2297, i16 2309, i16 2311, i16 2333, i16 2339, i16 2341, i16 2347, i16 2351, i16 2357, i16 2371, i16 2377, i16 2381, i16 2383, i16 2389, i16 2393, i16 2399, i16 2411, i16 2417, i16 2423, i16 2437, i16 2441, i16 2447, i16 2459, i16 2467, i16 2473, i16 2477, i16 2503, i16 2521, i16 2531, i16 2539, i16 2543, i16 2549, i16 2551, i16 2557, i16 2579, i16 2591, i16 2593, i16 2609, i16 2617, i16 2621, i16 2633, i16 2647, i16 2657, i16 2659, i16 2663, i16 2671, i16 2677, i16 2683, i16 2687, i16 2689, i16 2693, i16 2699, i16 2707, i16 2711, i16 2713, i16 2719, i16 2729, i16 2731, i16 2741, i16 2749, i16 2753, i16 2767, i16 2777, i16 2789, i16 2791, i16 2797, i16 2801, i16 2803, i16 2819, i16 2833, i16 2837, i16 2843, i16 2851, i16 2857, i16 2861, i16 2879, i16 2887, i16 2897, i16 2903, i16 2909, i16 2917, i16 2927, i16 2939, i16 2953, i16 2957, i16 2963, i16 2969, i16 2971, i16 2999, i16 3001, i16 3011, i16 3019, i16 3023, i16 3037, i16 3041, i16 3049, i16 3061, i16 3067, i16 3079, i16 3083, i16 3089, i16 3109, i16 3119, i16 3121, i16 3137, i16 3163, i16 3167, i16 3169, i16 3181, i16 3187, i16 3191, i16 3203, i16 3209, i16 3217, i16 3221, i16 3229, i16 3251, i16 3253, i16 3257, i16 3259, i16 3271, i16 3299, i16 3301, i16 3307, i16 3313, i16 3319, i16 3323, i16 3329, i16 3331, i16 3343, i16 3347, i16 3359, i16 3361, i16 3371, i16 3373, i16 3389, i16 3391, i16 3407, i16 3413, i16 3433, i16 3449, i16 3457, i16 3461, i16 3463, i16 3467, i16 3469, i16 3491, i16 3499, i16 3511, i16 3517, i16 3527, i16 3529, i16 3533, i16 3539, i16 3541, i16 3547, i16 3557, i16 3559, i16 3571, i16 3581, i16 3583, i16 3593, i16 3607, i16 3613, i16 3617, i16 3623, i16 3631, i16 3637, i16 3643, i16 3659, i16 3671, i16 3673, i16 3677, i16 3691, i16 3697, i16 3701, i16 3709, i16 3719, i16 3727, i16 3733, i16 3739, i16 3761, i16 3767, i16 3769, i16 3779, i16 3793, i16 3797, i16 3803, i16 3821, i16 3823, i16 3833, i16 3847, i16 3851, i16 3853, i16 3863, i16 3877, i16 3881, i16 3889, i16 3907, i16 3911, i16 3917, i16 3919, i16 3923, i16 3929, i16 3931, i16 3943, i16 3947, i16 3967, i16 3989, i16 4001, i16 4003, i16 4007, i16 4013, i16 4019, i16 4021, i16 4027, i16 4049, i16 4051, i16 4057, i16 4073, i16 4079, i16 4091, i16 4093, i16 4099, i16 4111, i16 4127, i16 4129, i16 4133, i16 4139, i16 4153, i16 4157, i16 4159, i16 4177, i16 4201, i16 4211, i16 4217, i16 4219, i16 4229, i16 4231, i16 4241, i16 4243, i16 4253, i16 4259, i16 4261, i16 4271, i16 4273, i16 4283, i16 4289, i16 4297, i16 4327, i16 4337, i16 4339, i16 4349, i16 4357, i16 4363, i16 4373, i16 4391, i16 4397, i16 4409, i16 4421, i16 4423, i16 4441, i16 4447, i16 4451, i16 4457, i16 4463, i16 4481, i16 4483, i16 4493, i16 4507, i16 4513, i16 4517, i16 4519, i16 4523, i16 4547, i16 4549, i16 4561, i16 4567, i16 4583, i16 4591, i16 4597, i16 4603, i16 4621, i16 4637, i16 4639, i16 4643, i16 4649, i16 4651, i16 4657, i16 4663, i16 4673, i16 4679, i16 4691, i16 4703, i16 4721, i16 4723, i16 4729, i16 4733, i16 4751, i16 4759, i16 4783, i16 4787, i16 4789, i16 4793, i16 4799, i16 4801, i16 4813, i16 4817, i16 4831, i16 4861, i16 4871, i16 4877, i16 4889, i16 4903, i16 4909, i16 4919, i16 4931, i16 4933, i16 4937, i16 4943, i16 4951, i16 4957, i16 4967, i16 4969, i16 4973, i16 4987, i16 4993, i16 4999, i16 5003, i16 5009, i16 5011, i16 5021, i16 5023, i16 5039, i16 5051, i16 5059, i16 5077, i16 5081, i16 5087, i16 5099, i16 5101, i16 5107, i16 5113, i16 5119, i16 5147, i16 5153, i16 5167, i16 5171, i16 5179, i16 5189, i16 5197, i16 5209, i16 5227, i16 5231, i16 5233, i16 5237, i16 5261, i16 5273, i16 5279, i16 5281, i16 5297, i16 5303, i16 5309, i16 5323, i16 5333, i16 5347, i16 5351, i16 5381, i16 5387, i16 5393, i16 5399, i16 5407, i16 5413, i16 5417, i16 5419, i16 5431, i16 5437, i16 5441, i16 5443, i16 5449, i16 5471, i16 5477, i16 5479, i16 5483, i16 5501, i16 5503, i16 5507, i16 5519, i16 5521, i16 5527, i16 5531, i16 5557, i16 5563, i16 5569, i16 5573, i16 5581, i16 5591, i16 5623, i16 5639, i16 5641, i16 5647, i16 5651, i16 5653, i16 5657, i16 5659, i16 5669, i16 5683, i16 5689, i16 5693, i16 5701, i16 5711, i16 5717, i16 5737, i16 5741, i16 5743, i16 5749, i16 5779, i16 5783, i16 5791, i16 5801, i16 5807, i16 5813, i16 5821, i16 5827, i16 5839, i16 5843, i16 5849, i16 5851, i16 5857, i16 5861, i16 5867, i16 5869, i16 5879, i16 5881, i16 5897, i16 5903, i16 5923, i16 5927, i16 5939, i16 5953, i16 5981, i16 5987, i16 6007, i16 6011, i16 6029, i16 6037, i16 6043, i16 6047, i16 6053, i16 6067, i16 6073, i16 6079, i16 6089, i16 6091, i16 6101, i16 6113, i16 6121, i16 6131, i16 6133, i16 6143, i16 6151, i16 6163, i16 6173, i16 6197, i16 6199, i16 6203, i16 6211, i16 6217, i16 6221, i16 6229, i16 6247, i16 6257, i16 6263, i16 6269, i16 6271, i16 6277, i16 6287, i16 6299, i16 6301, i16 6311, i16 6317, i16 6323, i16 6329, i16 6337, i16 6343, i16 6353, i16 6359, i16 6361, i16 6367, i16 6373, i16 6379, i16 6389, i16 6397, i16 6421, i16 6427, i16 6449, i16 6451, i16 6469, i16 6473, i16 6481, i16 6491, i16 6521, i16 6529, i16 6547, i16 6551, i16 6553, i16 6563, i16 6569, i16 6571, i16 6577, i16 6581, i16 6599, i16 6607, i16 6619, i16 6637, i16 6653, i16 6659, i16 6661, i16 6673, i16 6679, i16 6689, i16 6691, i16 6701, i16 6703, i16 6709, i16 6719, i16 6733, i16 6737, i16 6761, i16 6763, i16 6779, i16 6781, i16 6791, i16 6793, i16 6803, i16 6823, i16 6827, i16 6829, i16 6833, i16 6841, i16 6857, i16 6863, i16 6869, i16 6871, i16 6883, i16 6899, i16 6907, i16 6911, i16 6917, i16 6947, i16 6949, i16 6959, i16 6961, i16 6967, i16 6971, i16 6977, i16 6983, i16 6991, i16 6997, i16 7001, i16 7013, i16 7019, i16 7027, i16 7039, i16 7043, i16 7057, i16 7069, i16 7079, i16 7103, i16 7109, i16 7121, i16 7127, i16 7129, i16 7151, i16 7159, i16 7177, i16 7187, i16 7193, i16 7207, i16 7211, i16 7213, i16 7219, i16 7229, i16 7237, i16 7243, i16 7247, i16 7253, i16 7283, i16 7297, i16 7307, i16 7309, i16 7321, i16 7331, i16 7333, i16 7349, i16 7351, i16 7369, i16 7393, i16 7411, i16 7417, i16 7433, i16 7451, i16 7457, i16 7459, i16 7477, i16 7481, i16 7487, i16 7489, i16 7499, i16 7507, i16 7517, i16 7523, i16 7529, i16 7537, i16 7541, i16 7547, i16 7549, i16 7559, i16 7561, i16 7573, i16 7577, i16 7583, i16 7589, i16 7591, i16 7603, i16 7607, i16 7621, i16 7639, i16 7643, i16 7649, i16 7669, i16 7673, i16 7681, i16 7687, i16 7691, i16 7699, i16 7703, i16 7717, i16 7723, i16 7727, i16 7741, i16 7753, i16 7757, i16 7759, i16 7789, i16 7793, i16 7817, i16 7823, i16 7829, i16 7841, i16 7853, i16 7867, i16 7873, i16 7877, i16 7879, i16 7883, i16 7901, i16 7907, i16 7919, i16 7927, i16 7933, i16 7937, i16 7949, i16 7951, i16 7963, i16 7993, i16 8009, i16 8011, i16 8017, i16 8039, i16 8053, i16 8059, i16 8069, i16 8081, i16 8087, i16 8089, i16 8093, i16 8101, i16 8111, i16 8117, i16 8123, i16 8147, i16 8161, i16 8167, i16 8171, i16 8179, i16 8191, i16 0], align 16
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @randomprime(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [130 x i16], align 16
  %4 = alloca [130 x i16], align 16
  %5 = alloca [130 x i16], align 16
  %6 = sext i16 %1 to i32
  %7 = add nsw i32 %6, -2
  %8 = trunc i32 %7 to i16
  tail call void @mp_init(ptr noundef %0, i16 noundef zeroext 0) #7
  %9 = icmp sgt i16 %8, 15
  br i1 %9, label %10, label %27

10:                                               ; preds = %2, %22
  %11 = phi i16 [ %25, %22 ], [ %8, %2 ]
  %12 = phi ptr [ %24, %22 ], [ %0, %2 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %19, %13 ], [ 0, %10 ]
  %15 = phi i8 [ %20, %13 ], [ 2, %10 ]
  %16 = shl i32 %14, 8
  %17 = and i32 %16, 16776960
  %18 = tail call i32 @trueRandByte() #7
  %19 = add nsw i32 %17, %18
  %20 = add nsw i8 %15, -1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !5

22:                                               ; preds = %13
  %23 = trunc i32 %19 to i16
  %24 = getelementptr inbounds i16, ptr %12, i64 1
  store i16 %23, ptr %12, align 2, !tbaa !7
  %25 = add nsw i16 %11, -16
  %26 = icmp sgt i16 %11, 31
  br i1 %26, label %10, label %27, !llvm.loop !11

27:                                               ; preds = %22, %2
  %28 = phi ptr [ %0, %2 ], [ %24, %22 ]
  %29 = phi i16 [ %8, %2 ], [ %25, %22 ]
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27, %31
  %32 = phi i32 [ %37, %31 ], [ 0, %27 ]
  %33 = phi i8 [ %38, %31 ], [ 2, %27 ]
  %34 = shl i32 %32, 8
  %35 = and i32 %34, 16776960
  %36 = tail call i32 @trueRandByte() #7
  %37 = add nsw i32 %35, %36
  %38 = add nsw i8 %33, -1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %31, !llvm.loop !5

40:                                               ; preds = %31
  %41 = trunc i32 %37 to i16
  %42 = zext nneg i16 %29 to i32
  %43 = shl nsw i32 -1, %42
  %44 = trunc i32 %43 to i16
  %45 = xor i16 %44, -1
  %46 = and i16 %41, %45
  store i16 %46, ptr %28, align 2, !tbaa !7
  br label %47

47:                                               ; preds = %27, %40
  %48 = add i16 %1, 15
  %49 = and i16 %48, 15
  %50 = shl nuw i16 1, %49
  %51 = add nsw i32 %6, 15
  %52 = ashr i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i16, ptr %0, i64 %53
  %55 = getelementptr i16, ptr %54, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !7
  %57 = or i16 %56, %50
  store i16 %57, ptr %55, align 2, !tbaa !7
  %58 = and i32 %7, 15
  %59 = shl nuw nsw i32 1, %58
  %60 = add nsw i32 %6, 14
  %61 = ashr i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i16, ptr %0, i64 %62
  %64 = getelementptr i16, ptr %63, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !7
  %66 = trunc i32 %59 to i16
  %67 = or i16 %65, %66
  store i16 %67, ptr %64, align 2, !tbaa !7
  %68 = tail call zeroext i8 @mp_inc(ptr noundef %0) #7
  %69 = tail call signext i16 @significance(ptr noundef %0) #7
  %70 = icmp slt i16 %69, 2
  br i1 %70, label %71, label %84

71:                                               ; preds = %47
  %72 = load i16, ptr %0, align 2, !tbaa !7
  br label %79

73:                                               ; preds = %79
  %74 = add i16 %81, 1
  %75 = sext i16 %74 to i64
  %76 = getelementptr inbounds [1029 x i16], ptr @primetable, i64 0, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !7
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %84, label %79, !llvm.loop !12

79:                                               ; preds = %73, %71
  %80 = phi i16 [ 2, %71 ], [ %77, %73 ]
  %81 = phi i16 [ 0, %71 ], [ %74, %73 ]
  %82 = icmp ult i16 %80, %72
  br i1 %82, label %73, label %83

83:                                               ; preds = %79
  tail call void @mp_init(ptr noundef nonnull %0, i16 noundef zeroext %80) #7
  br label %197

84:                                               ; preds = %73, %47
  %85 = load i16, ptr @global_precision, align 2, !tbaa !7
  %86 = sext i16 %85 to i64
  %87 = getelementptr inbounds i16, ptr %0, i64 %86
  %88 = getelementptr inbounds i16, ptr %87, i64 -1
  %89 = load i16, ptr %88, align 2, !tbaa !7
  %90 = icmp slt i16 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  tail call void @mp_init(ptr noundef %0, i16 noundef zeroext 2) #7
  br label %197

92:                                               ; preds = %84
  %93 = load i16, ptr %0, align 2, !tbaa !7
  %94 = or i16 %93, 3
  store i16 %94, ptr %0, align 2, !tbaa !7
  %95 = load i16, ptr @global_precision, align 2, !tbaa !7
  %96 = tail call i32 @countbits(ptr noundef nonnull %0) #7
  %97 = add nsw i32 %96, 19
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr @global_precision, align 2, !tbaa !7
  %100 = tail call noalias dereferenceable_or_null(2058) ptr @malloc(i64 noundef 2058) #8
  br label %101

101:                                              ; preds = %101, %92
  %102 = phi i16 [ 3, %92 ], [ %110, %101 ]
  %103 = phi i64 [ 1, %92 ], [ %108, %101 ]
  %104 = phi i16 [ 1, %92 ], [ %107, %101 ]
  %105 = tail call zeroext i16 @mp_shortmod(ptr noundef nonnull %0, i16 noundef zeroext %102) #7
  %106 = getelementptr inbounds i16, ptr %100, i64 %103
  store i16 %105, ptr %106, align 2, !tbaa !7
  %107 = add i16 %104, 1
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds [1029 x i16], ptr @primetable, i64 0, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !7
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !13

112:                                              ; preds = %101
  %113 = load i16, ptr @global_precision, align 2, !tbaa !7
  %114 = shl i16 %113, 7
  %115 = zext i16 %114 to i32
  %116 = or disjoint i16 %114, 4
  br label %117

117:                                              ; preds = %170, %112
  %118 = phi i32 [ %172, %170 ], [ 0, %112 ]
  %119 = phi i16 [ %171, %170 ], [ 0, %112 ]
  br label %126

120:                                              ; preds = %126
  %121 = add i16 %129, 1
  %122 = sext i16 %121 to i64
  %123 = getelementptr inbounds [1029 x i16], ptr @primetable, i64 0, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !7
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %126, !llvm.loop !14

126:                                              ; preds = %120, %117
  %127 = phi i16 [ 3, %117 ], [ %124, %120 ]
  %128 = phi i64 [ 1, %117 ], [ %122, %120 ]
  %129 = phi i16 [ 1, %117 ], [ %121, %120 ]
  %130 = getelementptr inbounds i16, ptr %100, i64 %128
  %131 = load i16, ptr %130, align 2, !tbaa !7
  %132 = zext i16 %131 to i32
  %133 = add nuw nsw i32 %118, %132
  %134 = zext i16 %127 to i32
  %135 = urem i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %170, label %120

137:                                              ; preds = %120
  %138 = add i16 %119, 1
  %139 = load ptr, ptr @stdout, align 8, !tbaa !15
  %140 = call i32 @putc(i32 noundef 46, ptr noundef %139)
  %141 = load ptr, ptr @stdout, align 8, !tbaa !15
  %142 = call i32 @fflush(ptr noundef %141)
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #7
  %143 = load i16, ptr @global_precision, align 2, !tbaa !7
  %144 = sext i16 %143 to i32
  %145 = shl nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 1 %0, i64 %146, i1 false)
  %147 = call zeroext i8 @mp_dec(ptr noundef nonnull %5) #7
  br label %148

148:                                              ; preds = %160, %137
  %149 = phi i64 [ 0, %137 ], [ %165, %160 ]
  %150 = getelementptr inbounds [1029 x i16], ptr @primetable, i64 0, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !7
  call void @mp_init(ptr noundef nonnull %3, i16 noundef zeroext %151) #7
  %152 = call i32 @mp_modexp(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %0) #7
  %153 = icmp sgt i32 %152, -1
  %154 = load i16, ptr %4, align 16
  %155 = icmp eq i16 %154, 1
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %169

157:                                              ; preds = %148
  %158 = call signext i16 @significance(ptr noundef nonnull %4) #7
  %159 = icmp sgt i16 %158, 1
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr @stdout, align 8, !tbaa !15
  %162 = call i32 @putc(i32 noundef 42, ptr noundef %161)
  %163 = load ptr, ptr @stdout, align 8, !tbaa !15
  %164 = call i32 @fflush(ptr noundef %163)
  %165 = add nuw nsw i64 %149, 1
  %166 = icmp eq i64 %165, 4
  br i1 %166, label %167, label %148, !llvm.loop !17

167:                                              ; preds = %160
  %168 = trunc i32 %118 to i16
  call void @mp_init(ptr noundef nonnull %3, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %4, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %5, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #7
  br label %178

169:                                              ; preds = %157, %148
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #7
  br label %170

170:                                              ; preds = %126, %169
  %171 = phi i16 [ %138, %169 ], [ %119, %126 ]
  %172 = add nuw nsw i32 %118, 4
  %173 = call zeroext i8 @mp_inc(ptr noundef nonnull %0) #7
  %174 = call zeroext i8 @mp_inc(ptr noundef nonnull %0) #7
  %175 = call zeroext i8 @mp_inc(ptr noundef nonnull %0) #7
  %176 = call zeroext i8 @mp_inc(ptr noundef nonnull %0) #7
  %177 = icmp ugt i32 %172, %115
  br i1 %177, label %178, label %117, !llvm.loop !18

178:                                              ; preds = %170, %167
  %179 = phi i16 [ %168, %167 ], [ %116, %170 ]
  %180 = phi i16 [ %138, %167 ], [ %171, %170 ]
  %181 = load ptr, ptr @stdout, align 8, !tbaa !15
  %182 = call i32 @putc(i32 noundef 32, ptr noundef %181)
  br label %183

183:                                              ; preds = %183, %178
  %184 = phi i64 [ 0, %178 ], [ %188, %183 ]
  %185 = phi i16 [ 0, %178 ], [ %187, %183 ]
  %186 = getelementptr inbounds i16, ptr %100, i64 %184
  store i16 0, ptr %186, align 2, !tbaa !7
  %187 = add i16 %185, 1
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds [1029 x i16], ptr @primetable, i64 0, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !7
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %192, label %183, !llvm.loop !19

192:                                              ; preds = %183
  call void @free(ptr noundef %100) #7
  store i16 %95, ptr @global_precision, align 2, !tbaa !7
  %193 = icmp ugt i16 %179, %114
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = icmp slt i16 %180, 1
  %196 = select i1 %195, i32 -13, i32 -14
  br label %197

197:                                              ; preds = %83, %91, %192, %194
  %198 = phi i32 [ 0, %83 ], [ 0, %91 ], [ %196, %194 ], [ 0, %192 ]
  ret i32 %198
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_gcd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x [130 x i16]], align 16
  call void @llvm.lifetime.start.p0(i64 780, ptr nonnull %4) #7
  %5 = load i16, ptr @global_precision, align 2, !tbaa !7
  %6 = sext i16 %5 to i32
  %7 = shl nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %2, i64 %8, i1 false)
  %9 = getelementptr inbounds [3 x [130 x i16]], ptr %4, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %9, ptr align 1 %1, i64 %8, i1 false)
  br label %10

10:                                               ; preds = %19, %3
  %11 = phi i16 [ 1, %3 ], [ %32, %19 ]
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds [3 x [130 x i16]], ptr %4, i64 0, i64 %12
  %14 = load i16, ptr %13, align 4, !tbaa !7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call signext i16 @significance(ptr noundef nonnull %13) #7
  %18 = icmp sgt i16 %17, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %10, %16
  %20 = sext i16 %11 to i32
  %21 = icmp eq i16 %11, 2
  %22 = add nsw i32 %20, 1
  %23 = select i1 %21, i32 0, i32 %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x [130 x i16]], ptr %4, i64 0, i64 %24
  %26 = icmp eq i16 %11, 0
  %27 = add nsw i32 %20, -1
  %28 = sext i32 %27 to i64
  %29 = select i1 %26, i64 2, i64 %28
  %30 = getelementptr inbounds [3 x [130 x i16]], ptr %4, i64 0, i64 %29
  %31 = call i32 @mp_mod(ptr noundef nonnull %25, ptr noundef nonnull %30, ptr noundef nonnull %13) #7
  %32 = trunc i32 %23 to i16
  br label %10, !llvm.loop !20

33:                                               ; preds = %16
  %34 = sext i16 %11 to i32
  %35 = icmp eq i16 %11, 0
  %36 = add nsw i32 %34, -1
  %37 = sext i32 %36 to i64
  %38 = select i1 %35, i64 2, i64 %37
  %39 = getelementptr inbounds [3 x [130 x i16]], ptr %4, i64 0, i64 %38
  %40 = load i16, ptr @global_precision, align 2, !tbaa !7
  %41 = sext i16 %40 to i32
  %42 = shl nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 4 %39, i64 %43, i1 false)
  call void @mp_init(ptr noundef nonnull %39, i16 noundef zeroext 0) #7
  %44 = icmp eq i16 %11, 2
  %45 = add nsw i32 %34, 1
  %46 = sext i32 %45 to i64
  %47 = select i1 %44, i64 0, i64 %46
  %48 = getelementptr inbounds [3 x [130 x i16]], ptr %4, i64 0, i64 %47
  call void @mp_init(ptr noundef nonnull %48, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 780, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare signext i16 @significance(ptr noundef) local_unnamed_addr #3

declare i32 @mp_mod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mp_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @mp_inv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [130 x i16], align 16
  %5 = alloca [130 x i16], align 16
  %6 = alloca [3 x [130 x i16]], align 16
  %7 = alloca [3 x [130 x i16]], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 780, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 780, ptr nonnull %7) #7
  %8 = load i16, ptr @global_precision, align 2, !tbaa !7
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr align 1 %2, i64 %11, i1 false)
  %12 = getelementptr inbounds [3 x [130 x i16]], ptr %6, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %12, ptr align 1 %1, i64 %11, i1 false)
  call void @mp_init(ptr noundef nonnull %7, i16 noundef zeroext 0) #7
  %13 = getelementptr inbounds [3 x [130 x i16]], ptr %7, i64 0, i64 1
  call void @mp_init(ptr noundef nonnull %13, i16 noundef zeroext 1) #7
  br label %14

14:                                               ; preds = %23, %3
  %15 = phi i16 [ 1, %3 ], [ %45, %23 ]
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds [3 x [130 x i16]], ptr %6, i64 0, i64 %16
  %18 = load i16, ptr %17, align 4, !tbaa !7
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = call signext i16 @significance(ptr noundef nonnull %17) #7
  %22 = icmp sgt i16 %21, 1
  br i1 %22, label %23, label %46

23:                                               ; preds = %14, %20
  %24 = sext i16 %15 to i32
  %25 = icmp eq i16 %15, 2
  %26 = add nsw i32 %24, 1
  %27 = select i1 %25, i32 0, i32 %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x [130 x i16]], ptr %6, i64 0, i64 %28
  %30 = icmp eq i16 %15, 0
  %31 = add nsw i32 %24, -1
  %32 = sext i32 %31 to i64
  %33 = select i1 %30, i64 2, i64 %32
  %34 = getelementptr inbounds [3 x [130 x i16]], ptr %6, i64 0, i64 %33
  %35 = call i32 @mp_udiv(ptr noundef nonnull %29, ptr noundef nonnull %4, ptr noundef nonnull %34, ptr noundef nonnull %17) #7
  %36 = getelementptr inbounds [3 x [130 x i16]], ptr %7, i64 0, i64 %16
  %37 = call i32 @mp_mult(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %36) #7
  %38 = getelementptr inbounds [3 x [130 x i16]], ptr %7, i64 0, i64 %28
  %39 = getelementptr inbounds [3 x [130 x i16]], ptr %7, i64 0, i64 %33
  %40 = load i16, ptr @global_precision, align 2, !tbaa !7
  %41 = sext i16 %40 to i32
  %42 = shl nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %38, ptr nonnull align 4 %39, i64 %43, i1 false)
  %44 = call zeroext i8 @mp_subb(ptr noundef nonnull %38, ptr noundef nonnull %5, i8 noundef zeroext 0) #7
  %45 = trunc i32 %27 to i16
  br label %14, !llvm.loop !21

46:                                               ; preds = %20
  %47 = sext i16 %15 to i32
  %48 = icmp eq i16 %15, 0
  %49 = add nsw i32 %47, -1
  %50 = sext i32 %49 to i64
  %51 = select i1 %48, i64 2, i64 %50
  %52 = getelementptr inbounds [3 x [130 x i16]], ptr %7, i64 0, i64 %51
  %53 = load i16, ptr @global_precision, align 2, !tbaa !7
  %54 = sext i16 %53 to i32
  %55 = shl nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 4 %52, i64 %56, i1 false)
  %57 = load i16, ptr @global_precision, align 2, !tbaa !7
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds i16, ptr %0, i64 %58
  %60 = getelementptr inbounds i16, ptr %59, i64 -1
  %61 = load i16, ptr %60, align 2, !tbaa !7
  %62 = icmp slt i16 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = call zeroext i8 @mp_addc(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #7
  br label %65

65:                                               ; preds = %63, %46
  %66 = getelementptr inbounds [3 x [130 x i16]], ptr %6, i64 0, i64 %51
  call void @mp_init(ptr noundef nonnull %66, i16 noundef zeroext 0) #7
  %67 = icmp eq i16 %15, 2
  %68 = add nsw i32 %47, 1
  %69 = sext i32 %68 to i64
  %70 = select i1 %67, i64 0, i64 %69
  %71 = getelementptr inbounds [3 x [130 x i16]], ptr %6, i64 0, i64 %70
  call void @mp_init(ptr noundef nonnull %71, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %7, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %13, i16 noundef zeroext 0) #7
  %72 = getelementptr inbounds [3 x [130 x i16]], ptr %7, i64 0, i64 2
  call void @mp_init(ptr noundef nonnull %72, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %4, i16 noundef zeroext 0) #7
  call void @mp_init(ptr noundef nonnull %5, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 780, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 780, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #7
  ret void
}

declare i32 @mp_udiv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mp_mult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @mp_subb(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @mp_addc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @trueRandByte() local_unnamed_addr #3

declare zeroext i8 @mp_inc(ptr noundef) local_unnamed_addr #3

declare i32 @countbits(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare zeroext i16 @mp_shortmod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare zeroext i8 @mp_dec(ptr noundef) local_unnamed_addr #3

declare i32 @mp_modexp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
