; ModuleID = 'XMLRangeFactory.cpp'
source_filename = "XMLRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

$_ZN11xercesc_2_712ArrayJanitorIiED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_715XMLRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLRangeFactoryE, ptr @_ZN11xercesc_2_715XMLRangeFactoryD2Ev, ptr @_ZN11xercesc_2_715XMLRangeFactoryD0Ev, ptr @_ZN11xercesc_2_715XMLRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZN11xercesc_2_7L16gWhitespaceCharsE = internal unnamed_addr constant [6 x i16] [i16 0, i16 32, i16 9, i16 13, i16 10, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L10fgXMLSpaceE = internal constant [12 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_7L11gDigitCharsE = internal unnamed_addr constant [32 x i16] [i16 48, i16 57, i16 1632, i16 1641, i16 1776, i16 1785, i16 2406, i16 2415, i16 2534, i16 2543, i16 2662, i16 2671, i16 2790, i16 2799, i16 2918, i16 2927, i16 3047, i16 3055, i16 3174, i16 3183, i16 3302, i16 3311, i16 3430, i16 3439, i16 3664, i16 3673, i16 3792, i16 3801, i16 3872, i16 3881, i16 0, i16 0], align 16
@_ZN11xercesc_2_7L10fgXMLDigitE = internal constant [12 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L10gBaseCharsE = internal constant [354 x i16] [i16 65, i16 90, i16 97, i16 122, i16 192, i16 214, i16 216, i16 246, i16 248, i16 255, i16 256, i16 305, i16 308, i16 318, i16 321, i16 328, i16 330, i16 382, i16 384, i16 451, i16 461, i16 496, i16 500, i16 501, i16 506, i16 535, i16 592, i16 680, i16 699, i16 705, i16 904, i16 906, i16 910, i16 929, i16 931, i16 974, i16 976, i16 982, i16 994, i16 1011, i16 1025, i16 1036, i16 1038, i16 1103, i16 1105, i16 1116, i16 1118, i16 1153, i16 1168, i16 1220, i16 1223, i16 1224, i16 1227, i16 1228, i16 1232, i16 1259, i16 1262, i16 1269, i16 1272, i16 1273, i16 1329, i16 1366, i16 1377, i16 1414, i16 1488, i16 1514, i16 1520, i16 1522, i16 1569, i16 1594, i16 1601, i16 1610, i16 1649, i16 1719, i16 1722, i16 1726, i16 1728, i16 1742, i16 1744, i16 1747, i16 1765, i16 1766, i16 2309, i16 2361, i16 2392, i16 2401, i16 2437, i16 2444, i16 2447, i16 2448, i16 2451, i16 2472, i16 2474, i16 2480, i16 2486, i16 2489, i16 2524, i16 2525, i16 2527, i16 2529, i16 2544, i16 2545, i16 2565, i16 2570, i16 2575, i16 2576, i16 2579, i16 2600, i16 2602, i16 2608, i16 2610, i16 2611, i16 2613, i16 2614, i16 2616, i16 2617, i16 2649, i16 2652, i16 2674, i16 2676, i16 2693, i16 2699, i16 2703, i16 2705, i16 2707, i16 2728, i16 2730, i16 2736, i16 2738, i16 2739, i16 2741, i16 2745, i16 2821, i16 2828, i16 2831, i16 2832, i16 2835, i16 2856, i16 2858, i16 2864, i16 2866, i16 2867, i16 2870, i16 2873, i16 2908, i16 2909, i16 2911, i16 2913, i16 2949, i16 2954, i16 2958, i16 2960, i16 2962, i16 2965, i16 2969, i16 2970, i16 2974, i16 2975, i16 2979, i16 2980, i16 2984, i16 2986, i16 2990, i16 2997, i16 2999, i16 3001, i16 3077, i16 3084, i16 3086, i16 3088, i16 3090, i16 3112, i16 3114, i16 3123, i16 3125, i16 3129, i16 3168, i16 3169, i16 3205, i16 3212, i16 3214, i16 3216, i16 3218, i16 3240, i16 3242, i16 3251, i16 3253, i16 3257, i16 3296, i16 3297, i16 3333, i16 3340, i16 3342, i16 3344, i16 3346, i16 3368, i16 3370, i16 3385, i16 3424, i16 3425, i16 3585, i16 3630, i16 3634, i16 3635, i16 3648, i16 3653, i16 3713, i16 3714, i16 3719, i16 3720, i16 3732, i16 3735, i16 3737, i16 3743, i16 3745, i16 3747, i16 3754, i16 3755, i16 3757, i16 3758, i16 3762, i16 3763, i16 3776, i16 3780, i16 3904, i16 3911, i16 3913, i16 3945, i16 4256, i16 4293, i16 4304, i16 4342, i16 4354, i16 4355, i16 4357, i16 4359, i16 4363, i16 4364, i16 4366, i16 4370, i16 4436, i16 4437, i16 4447, i16 4449, i16 4461, i16 4462, i16 4466, i16 4467, i16 4526, i16 4527, i16 4535, i16 4536, i16 4540, i16 4546, i16 7680, i16 7835, i16 7840, i16 7929, i16 7936, i16 7957, i16 7960, i16 7965, i16 7968, i16 8005, i16 8008, i16 8013, i16 8016, i16 8023, i16 8031, i16 8061, i16 8064, i16 8116, i16 8118, i16 8124, i16 8130, i16 8132, i16 8134, i16 8140, i16 8144, i16 8147, i16 8150, i16 8155, i16 8160, i16 8172, i16 8178, i16 8180, i16 8182, i16 8188, i16 8490, i16 8491, i16 8576, i16 8578, i16 12353, i16 12436, i16 12449, i16 12538, i16 12549, i16 12588, i16 -21504, i16 -10333, i16 0, i16 902, i16 908, i16 986, i16 988, i16 990, i16 992, i16 1369, i16 1749, i16 2365, i16 2482, i16 2654, i16 2701, i16 2749, i16 2784, i16 2877, i16 2972, i16 3294, i16 3632, i16 3716, i16 3722, i16 3725, i16 3749, i16 3751, i16 3760, i16 3773, i16 4352, i16 4361, i16 4412, i16 4414, i16 4416, i16 4428, i16 4430, i16 4432, i16 4441, i16 4451, i16 4453, i16 4455, i16 4457, i16 4469, i16 4510, i16 4520, i16 4523, i16 4538, i16 4587, i16 4592, i16 4601, i16 8025, i16 8027, i16 8029, i16 8126, i16 8486, i16 8494, i16 0], align 16
@_ZN11xercesc_2_7L17gIdeographicCharsE = internal unnamed_addr constant [7 x i16] [i16 12321, i16 12329, i16 19968, i16 -24667, i16 0, i16 12295, i16 0], align 2
@_ZN11xercesc_2_7L15gCombiningCharsE = internal constant [163 x i16] [i16 768, i16 837, i16 864, i16 865, i16 1155, i16 1158, i16 1425, i16 1441, i16 1443, i16 1465, i16 1467, i16 1469, i16 1473, i16 1474, i16 1611, i16 1618, i16 1750, i16 1756, i16 1757, i16 1759, i16 1760, i16 1764, i16 1767, i16 1768, i16 1770, i16 1773, i16 2305, i16 2307, i16 2366, i16 2380, i16 2385, i16 2388, i16 2402, i16 2403, i16 2433, i16 2435, i16 2496, i16 2500, i16 2503, i16 2504, i16 2507, i16 2509, i16 2530, i16 2531, i16 2624, i16 2626, i16 2631, i16 2632, i16 2635, i16 2637, i16 2672, i16 2673, i16 2689, i16 2691, i16 2750, i16 2757, i16 2759, i16 2761, i16 2763, i16 2765, i16 2817, i16 2819, i16 2878, i16 2883, i16 2887, i16 2888, i16 2891, i16 2893, i16 2902, i16 2903, i16 2946, i16 2947, i16 3006, i16 3010, i16 3014, i16 3016, i16 3018, i16 3021, i16 3073, i16 3075, i16 3134, i16 3140, i16 3142, i16 3144, i16 3146, i16 3149, i16 3157, i16 3158, i16 3202, i16 3203, i16 3262, i16 3268, i16 3270, i16 3272, i16 3274, i16 3277, i16 3285, i16 3286, i16 3330, i16 3331, i16 3390, i16 3395, i16 3398, i16 3400, i16 3402, i16 3405, i16 3636, i16 3642, i16 3655, i16 3662, i16 3764, i16 3769, i16 3771, i16 3772, i16 3784, i16 3789, i16 3864, i16 3865, i16 3953, i16 3972, i16 3974, i16 3979, i16 3984, i16 3989, i16 3993, i16 4013, i16 4017, i16 4023, i16 8400, i16 8412, i16 12330, i16 12335, i16 0, i16 1471, i16 1476, i16 1648, i16 2364, i16 2381, i16 2492, i16 2494, i16 2495, i16 2519, i16 2562, i16 2620, i16 2622, i16 2623, i16 2748, i16 2876, i16 3031, i16 3415, i16 3633, i16 3761, i16 3893, i16 3895, i16 3897, i16 3902, i16 3903, i16 3991, i16 4025, i16 8417, i16 12441, i16 12442, i16 0], align 16
@_ZN11xercesc_2_7L14gExtenderCharsE = internal constant [16 x i16] [i16 12337, i16 12341, i16 12445, i16 12446, i16 12540, i16 12542, i16 0, i16 183, i16 720, i16 721, i16 903, i16 1600, i16 3654, i16 3782, i16 12293, i16 0], align 16
@_ZN11xercesc_2_7L13fgXMLNameCharE = internal constant [15 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 78, i16 97, i16 109, i16 101, i16 67, i16 104, i16 97, i16 114, i16 0], align 16
@_ZN11xercesc_2_7L20fgXMLInitialNameCharE = internal constant [22 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 73, i16 110, i16 105, i16 116, i16 105, i16 97, i16 108, i16 78, i16 97, i16 109, i16 101, i16 67, i16 104, i16 97, i16 114, i16 0], align 16
@_ZN11xercesc_2_7L9fgXMLWordE = internal constant [11 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L13fgXMLCategoryE = internal constant [4 x i16] [i16 88, i16 77, i16 76, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715XMLRangeFactoryE = dso_local constant [33 x i8] c"N11xercesc_2_715XMLRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_715XMLRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8

@_ZN11xercesc_2_715XMLRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XMLRangeFactoryC2Ev
@_ZN11xercesc_2_715XMLRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XMLRangeFactoryD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !51, !range !55, !noundef !56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %431, !prof !57

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !58, !range !55, !noundef !56
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15, !prof !59

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !47
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %19 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32), !prof !65
  tail call void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %23, i32 noundef 8)
  br label %24

24:                                               ; preds = %15, %24
  %25 = phi i64 [ 0, %15 ], [ %31, %24 ]
  %26 = phi i16 [ 32, %15 ], [ %34, %24 ]
  %27 = phi ptr [ getelementptr inbounds ([6 x i16], ptr @_ZN11xercesc_2_7L16gWhitespaceCharsE, i64 0, i64 1), %15 ], [ %33, %24 ]
  %28 = zext i16 %26 to i32
  %29 = or disjoint i64 %25, 1
  %30 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 %28, ptr %30, align 4, !tbaa !66
  %31 = add nuw nsw i64 %25, 2
  %32 = getelementptr inbounds i32, ptr %23, i64 %29
  store i32 %28, ptr %32, align 4, !tbaa !66
  %33 = getelementptr inbounds i16, ptr %27, i64 1
  %34 = load i16, ptr %33, align 2, !tbaa !68
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %24, !prof !70, !llvm.loop !71

36:                                               ; preds = %24
  %37 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %18, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !57

40:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %18)
  br label %41

41:                                               ; preds = %36, %40
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, ptr noundef nonnull %18, i1 noundef zeroext false)
  %42 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %43 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef %42)
  %44 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48, !prof !57

47:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %43)
  br label %48

48:                                               ; preds = %41, %47
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, ptr noundef nonnull %43, i1 noundef zeroext true)
  %49 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef 120), !prof !65
  tail call void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %49, ptr noundef %54, i32 noundef 30)
  br label %59

55:                                               ; preds = %59
  %56 = getelementptr inbounds i16, ptr %62, i64 2
  %57 = load i16, ptr %56, align 2, !tbaa !68
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %83, label %69, !prof !57

59:                                               ; preds = %48, %59
  %60 = phi i64 [ 0, %48 ], [ %65, %59 ]
  %61 = phi i16 [ 48, %48 ], [ %67, %59 ]
  %62 = phi ptr [ @_ZN11xercesc_2_7L11gDigitCharsE, %48 ], [ %63, %59 ]
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = zext i16 %61 to i32
  %65 = add nuw nsw i64 %60, 1
  %66 = getelementptr inbounds i32, ptr %54, i64 %60
  store i32 %64, ptr %66, align 4, !tbaa !66
  %67 = load i16, ptr %63, align 2, !tbaa !68
  %68 = icmp eq i64 %65, 30
  br i1 %68, label %55, label %59, !prof !77, !llvm.loop !78

69:                                               ; preds = %55, %69
  %70 = phi i16 [ %81, %69 ], [ %57, %55 ]
  %71 = phi ptr [ %80, %69 ], [ %56, %55 ]
  %72 = phi i32 [ %77, %69 ], [ 30, %55 ]
  %73 = zext i16 %70 to i32
  %74 = or disjoint i32 %72, 1
  %75 = zext i32 %72 to i64
  %76 = getelementptr inbounds i32, ptr %54, i64 %75
  store i32 %73, ptr %76, align 4, !tbaa !66
  %77 = add i32 %72, 2
  %78 = zext i32 %74 to i64
  %79 = getelementptr inbounds i32, ptr %54, i64 %78
  store i32 %73, ptr %79, align 4, !tbaa !66
  %80 = getelementptr inbounds i16, ptr %71, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !68
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %69, !prof !57, !llvm.loop !71

83:                                               ; preds = %69, %55
  %84 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %49, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !74
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88, !prof !57

87:                                               ; preds = %83
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %49)
  br label %88

88:                                               ; preds = %83, %87
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, ptr noundef nonnull %49, i1 noundef zeroext false)
  %89 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %90 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %49, ptr noundef nonnull %17, ptr noundef %89)
  %91 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %90, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !74
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95, !prof !57

94:                                               ; preds = %88
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %90)
  br label %95

95:                                               ; preds = %88, %94
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, ptr noundef nonnull %90, i1 noundef zeroext true)
  br label %96

96:                                               ; preds = %96, %95
  %97 = phi ptr [ @_ZN11xercesc_2_7L10gBaseCharsE, %95 ], [ %98, %96 ]
  %98 = getelementptr inbounds i16, ptr %97, i64 1
  %99 = load i16, ptr %98, align 2, !tbaa !68
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %96, !prof !79, !llvm.loop !80

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i64
  %103 = sub i64 %102, ptrtoint (ptr @_ZN11xercesc_2_7L10gBaseCharsE to i64)
  %104 = lshr exact i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = and i64 %104, 4294967295
  %107 = getelementptr inbounds i16, ptr @_ZN11xercesc_2_7L10gBaseCharsE, i64 %106
  %108 = getelementptr inbounds i16, ptr %107, i64 1
  %109 = load i16, ptr %108, align 2, !tbaa !68
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %122, label %111, !prof !59

111:                                              ; preds = %101, %111
  %112 = phi ptr [ %113, %111 ], [ %108, %101 ]
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = load i16, ptr %113, align 2, !tbaa !68
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %111, !prof !81, !llvm.loop !80

116:                                              ; preds = %111
  %117 = ptrtoint ptr %113 to i64
  %118 = ptrtoint ptr %108 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, -2
  br label %122

122:                                              ; preds = %116, %101
  %123 = phi i32 [ %121, %116 ], [ 0, %101 ]
  %124 = add i32 %123, %105
  %125 = add i32 %124, 6
  %126 = add i32 %124, 36
  %127 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %128 = zext i32 %126 to i64
  %129 = shl nuw nsw i64 %128, 2
  %130 = load ptr, ptr %127, align 8, !tbaa !47
  %131 = getelementptr inbounds ptr, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8
  %133 = tail call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %127, i64 noundef %129), !prof !65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %134 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  store ptr %133, ptr %3, align 8, !tbaa !82
  %135 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !84
  br label %141

136:                                              ; preds = %141
  %137 = getelementptr inbounds i16, ptr %144, i64 2
  %138 = load i16, ptr %137, align 2, !tbaa !68
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %152, !prof !85

140:                                              ; preds = %152, %136
  br label %170

141:                                              ; preds = %122, %141
  %142 = phi i16 [ 65, %122 ], [ %150, %141 ]
  %143 = phi i32 [ 0, %122 ], [ %147, %141 ]
  %144 = phi ptr [ @_ZN11xercesc_2_7L10gBaseCharsE, %122 ], [ %145, %141 ]
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = zext i16 %142 to i32
  %147 = add i32 %143, 1
  %148 = zext i32 %143 to i64
  %149 = getelementptr inbounds i32, ptr %133, i64 %148
  store i32 %146, ptr %149, align 4, !tbaa !66
  %150 = load i16, ptr %145, align 2, !tbaa !68
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %136, label %141, !prof !79, !llvm.loop !78

152:                                              ; preds = %136, %152
  %153 = phi i16 [ %164, %152 ], [ %138, %136 ]
  %154 = phi ptr [ %163, %152 ], [ %137, %136 ]
  %155 = phi i32 [ %160, %152 ], [ %147, %136 ]
  %156 = zext i16 %153 to i32
  %157 = add i32 %155, 1
  %158 = zext i32 %155 to i64
  %159 = getelementptr inbounds i32, ptr %133, i64 %158
  store i32 %156, ptr %159, align 4, !tbaa !66
  %160 = add i32 %155, 2
  %161 = zext i32 %157 to i64
  %162 = getelementptr inbounds i32, ptr %133, i64 %161
  store i32 %156, ptr %162, align 4, !tbaa !66
  %163 = getelementptr inbounds i16, ptr %154, i64 1
  %164 = load i16, ptr %163, align 2, !tbaa !68
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %140, label %152, !prof !86, !llvm.loop !71

166:                                              ; preds = %170
  %167 = getelementptr inbounds i16, ptr %173, i64 2
  %168 = load i16, ptr %167, align 2, !tbaa !68
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %195, label %181, !prof !85

170:                                              ; preds = %140, %170
  %171 = phi i16 [ %179, %170 ], [ 12321, %140 ]
  %172 = phi i32 [ %176, %170 ], [ %124, %140 ]
  %173 = phi ptr [ %174, %170 ], [ @_ZN11xercesc_2_7L17gIdeographicCharsE, %140 ]
  %174 = getelementptr inbounds i16, ptr %173, i64 1
  %175 = zext i16 %171 to i32
  %176 = add i32 %172, 1
  %177 = zext i32 %172 to i64
  %178 = getelementptr inbounds i32, ptr %133, i64 %177
  store i32 %175, ptr %178, align 4, !tbaa !66
  %179 = load i16, ptr %174, align 2, !tbaa !68
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %166, label %170, !prof !87, !llvm.loop !78

181:                                              ; preds = %166, %181
  %182 = phi i16 [ %193, %181 ], [ %168, %166 ]
  %183 = phi ptr [ %192, %181 ], [ %167, %166 ]
  %184 = phi i32 [ %189, %181 ], [ %176, %166 ]
  %185 = zext i16 %182 to i32
  %186 = add i32 %184, 1
  %187 = zext i32 %184 to i64
  %188 = getelementptr inbounds i32, ptr %133, i64 %187
  store i32 %185, ptr %188, align 4, !tbaa !66
  %189 = add i32 %184, 2
  %190 = zext i32 %186 to i64
  %191 = getelementptr inbounds i32, ptr %133, i64 %190
  store i32 %185, ptr %191, align 4, !tbaa !66
  %192 = getelementptr inbounds i16, ptr %183, i64 1
  %193 = load i16, ptr %192, align 2, !tbaa !68
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %195, label %181, !prof !88, !llvm.loop !71

195:                                              ; preds = %181, %166
  %196 = zext i32 %124 to i64
  %197 = getelementptr inbounds i32, ptr %133, i64 %196
  %198 = getelementptr inbounds i32, ptr %197, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %198, ptr noundef nonnull align 4 dereferenceable(120) %54, i64 120, i1 false), !prof !89
  %199 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
          to label %200 unwind label %432, !prof !57

200:                                              ; preds = %195, %200
  %201 = phi ptr [ %202, %200 ], [ @_ZN11xercesc_2_7L15gCombiningCharsE, %195 ]
  %202 = getelementptr inbounds i16, ptr %201, i64 1
  %203 = load i16, ptr %202, align 2, !tbaa !68
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %205, label %200, !prof !90, !llvm.loop !80

205:                                              ; preds = %200
  %206 = ptrtoint ptr %202 to i64
  %207 = sub i64 %206, ptrtoint (ptr @_ZN11xercesc_2_7L15gCombiningCharsE to i64)
  %208 = lshr exact i64 %207, 1
  %209 = trunc i64 %208 to i32
  %210 = and i64 %208, 4294967295
  %211 = getelementptr inbounds i16, ptr @_ZN11xercesc_2_7L15gCombiningCharsE, i64 %210
  %212 = getelementptr inbounds i16, ptr %211, i64 1
  %213 = load i16, ptr %212, align 2, !tbaa !68
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %226, label %215, !prof !59

215:                                              ; preds = %205, %215
  %216 = phi ptr [ %217, %215 ], [ %212, %205 ]
  %217 = getelementptr inbounds i16, ptr %216, i64 1
  %218 = load i16, ptr %217, align 2, !tbaa !68
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %215, !prof !91, !llvm.loop !80

220:                                              ; preds = %215
  %221 = ptrtoint ptr %217 to i64
  %222 = ptrtoint ptr %212 to i64
  %223 = sub i64 %221, %222
  %224 = trunc i64 %223 to i32
  %225 = and i32 %224, -2
  br label %226

226:                                              ; preds = %205, %220
  %227 = phi i32 [ %225, %220 ], [ 0, %205 ]
  br label %228

228:                                              ; preds = %226, %228
  %229 = phi ptr [ %230, %228 ], [ getelementptr inbounds ([16 x i16], ptr @_ZN11xercesc_2_7L14gExtenderCharsE, i64 0, i64 7), %226 ]
  %230 = getelementptr inbounds i16, ptr %229, i64 1
  %231 = load i16, ptr %230, align 2, !tbaa !68
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %228, !prof !92, !llvm.loop !80

233:                                              ; preds = %228
  %234 = ptrtoint ptr %230 to i64
  %235 = trunc i64 %234 to i32
  %236 = sub i32 %235, ptrtoint (ptr getelementptr inbounds ([16 x i16], ptr @_ZN11xercesc_2_7L14gExtenderCharsE, i64 0, i64 7) to i32)
  %237 = and i32 %236, -2
  %238 = add i32 %126, %209
  %239 = add i32 %238, %227
  %240 = add i32 %239, 6
  %241 = add i32 %240, %237
  %242 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %243 = add i32 %241, 8
  %244 = zext i32 %243 to i64
  %245 = shl nuw nsw i64 %244, 2
  %246 = load ptr, ptr %242, align 8, !tbaa !47
  %247 = getelementptr inbounds ptr, ptr %246, i64 2
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef ptr %248(ptr noundef nonnull align 8 dereferenceable(8) %242, i64 noundef %245)
          to label %250 unwind label %434, !prof !65

250:                                              ; preds = %233
  invoke void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %199, ptr noundef %249, i32 noundef %243)
          to label %251 unwind label %434, !prof !57

251:                                              ; preds = %250
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %249, ptr align 4 %133, i64 %129, i1 false), !prof !93
  br label %257

252:                                              ; preds = %257
  %253 = getelementptr inbounds i16, ptr %260, i64 2
  %254 = load i16, ptr %253, align 2, !tbaa !68
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %268, !prof !85

256:                                              ; preds = %268, %252
  br label %286

257:                                              ; preds = %251, %257
  %258 = phi i16 [ 768, %251 ], [ %266, %257 ]
  %259 = phi i32 [ %126, %251 ], [ %263, %257 ]
  %260 = phi ptr [ @_ZN11xercesc_2_7L15gCombiningCharsE, %251 ], [ %261, %257 ]
  %261 = getelementptr inbounds i16, ptr %260, i64 1
  %262 = zext i16 %258 to i32
  %263 = add i32 %259, 1
  %264 = zext i32 %259 to i64
  %265 = getelementptr inbounds i32, ptr %249, i64 %264
  store i32 %262, ptr %265, align 4, !tbaa !66
  %266 = load i16, ptr %261, align 2, !tbaa !68
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %252, label %257, !prof !90, !llvm.loop !78

268:                                              ; preds = %252, %268
  %269 = phi i16 [ %280, %268 ], [ %254, %252 ]
  %270 = phi ptr [ %279, %268 ], [ %253, %252 ]
  %271 = phi i32 [ %276, %268 ], [ %263, %252 ]
  %272 = zext i16 %269 to i32
  %273 = add i32 %271, 1
  %274 = zext i32 %271 to i64
  %275 = getelementptr inbounds i32, ptr %249, i64 %274
  store i32 %272, ptr %275, align 4, !tbaa !66
  %276 = add i32 %271, 2
  %277 = zext i32 %273 to i64
  %278 = getelementptr inbounds i32, ptr %249, i64 %277
  store i32 %272, ptr %278, align 4, !tbaa !66
  %279 = getelementptr inbounds i16, ptr %270, i64 1
  %280 = load i16, ptr %279, align 2, !tbaa !68
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %256, label %268, !prof !94, !llvm.loop !71

282:                                              ; preds = %286
  %283 = getelementptr inbounds i16, ptr %289, i64 2
  %284 = load i16, ptr %283, align 2, !tbaa !68
  %285 = icmp eq i16 %284, 0
  br i1 %285, label %311, label %297, !prof !85

286:                                              ; preds = %256, %286
  %287 = phi i16 [ %295, %286 ], [ 12337, %256 ]
  %288 = phi i32 [ %292, %286 ], [ %239, %256 ]
  %289 = phi ptr [ %290, %286 ], [ @_ZN11xercesc_2_7L14gExtenderCharsE, %256 ]
  %290 = getelementptr inbounds i16, ptr %289, i64 1
  %291 = zext i16 %287 to i32
  %292 = add i32 %288, 1
  %293 = zext i32 %288 to i64
  %294 = getelementptr inbounds i32, ptr %249, i64 %293
  store i32 %291, ptr %294, align 4, !tbaa !66
  %295 = load i16, ptr %290, align 2, !tbaa !68
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %282, label %286, !prof !95, !llvm.loop !78

297:                                              ; preds = %282, %297
  %298 = phi i16 [ %309, %297 ], [ %284, %282 ]
  %299 = phi ptr [ %308, %297 ], [ %283, %282 ]
  %300 = phi i32 [ %305, %297 ], [ %292, %282 ]
  %301 = zext i16 %298 to i32
  %302 = add i32 %300, 1
  %303 = zext i32 %300 to i64
  %304 = getelementptr inbounds i32, ptr %249, i64 %303
  store i32 %301, ptr %304, align 4, !tbaa !66
  %305 = add i32 %300, 2
  %306 = zext i32 %302 to i64
  %307 = getelementptr inbounds i32, ptr %249, i64 %306
  store i32 %301, ptr %307, align 4, !tbaa !66
  %308 = getelementptr inbounds i16, ptr %299, i64 1
  %309 = load i16, ptr %308, align 2, !tbaa !68
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %311, label %297, !prof !96, !llvm.loop !71

311:                                              ; preds = %297, %282
  %312 = add i32 %241, 1
  %313 = zext i32 %241 to i64
  %314 = getelementptr inbounds i32, ptr %249, i64 %313
  store i32 45, ptr %314, align 4, !tbaa !66
  %315 = add i32 %241, 2
  %316 = zext i32 %312 to i64
  %317 = getelementptr inbounds i32, ptr %249, i64 %316
  store i32 45, ptr %317, align 4, !tbaa !66
  %318 = add i32 %241, 3
  %319 = zext i32 %315 to i64
  %320 = getelementptr inbounds i32, ptr %249, i64 %319
  store i32 58, ptr %320, align 4, !tbaa !66
  %321 = add i32 %241, 4
  %322 = zext i32 %318 to i64
  %323 = getelementptr inbounds i32, ptr %249, i64 %322
  store i32 58, ptr %323, align 4, !tbaa !66
  %324 = add i32 %241, 5
  %325 = zext i32 %321 to i64
  %326 = getelementptr inbounds i32, ptr %249, i64 %325
  store i32 46, ptr %326, align 4, !tbaa !66
  %327 = add i32 %241, 6
  %328 = zext i32 %324 to i64
  %329 = getelementptr inbounds i32, ptr %249, i64 %328
  store i32 46, ptr %329, align 4, !tbaa !66
  %330 = add i32 %241, 7
  %331 = zext i32 %327 to i64
  %332 = getelementptr inbounds i32, ptr %249, i64 %331
  store i32 95, ptr %332, align 4, !tbaa !66
  %333 = zext i32 %330 to i64
  %334 = getelementptr inbounds i32, ptr %249, i64 %333
  store i32 95, ptr %334, align 4, !tbaa !66
  %335 = load ptr, ptr %199, align 8, !tbaa !47
  %336 = getelementptr inbounds ptr, ptr %335, i64 14
  %337 = load ptr, ptr %336, align 8
  invoke void %337(ptr noundef nonnull align 8 dereferenceable(72) %199)
          to label %338 unwind label %434, !prof !97

338:                                              ; preds = %311
  %339 = load ptr, ptr %199, align 8, !tbaa !47
  %340 = getelementptr inbounds ptr, ptr %339, i64 15
  %341 = load ptr, ptr %340, align 8
  invoke void %341(ptr noundef nonnull align 8 dereferenceable(72) %199)
          to label %342 unwind label %434, !prof !98

342:                                              ; preds = %338
  %343 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %199, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8, !tbaa !74
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %347, !prof !57

346:                                              ; preds = %342
  invoke void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %199)
          to label %347 unwind label %434, !prof !57

347:                                              ; preds = %346, %342
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, ptr noundef nonnull %199, i1 noundef zeroext false)
          to label %348 unwind label %434, !prof !57

348:                                              ; preds = %347
  %349 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %350 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %199, ptr noundef nonnull %17, ptr noundef %349)
          to label %351 unwind label %434, !prof !57

351:                                              ; preds = %348
  %352 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %350, i64 0, i32 6
  %353 = load ptr, ptr %352, align 8, !tbaa !74
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %356, !prof !57

355:                                              ; preds = %351
  invoke void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %350)
          to label %356 unwind label %434, !prof !57

356:                                              ; preds = %355, %351
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, ptr noundef nonnull %350, i1 noundef zeroext true)
          to label %357 unwind label %434, !prof !57

357:                                              ; preds = %356
  %358 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
          to label %359 unwind label %434, !prof !57

359:                                              ; preds = %357
  %360 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %361 = add i32 %124, 10
  %362 = zext i32 %361 to i64
  %363 = shl nuw nsw i64 %362, 2
  %364 = load ptr, ptr %360, align 8, !tbaa !47
  %365 = getelementptr inbounds ptr, ptr %364, i64 2
  %366 = load ptr, ptr %365, align 8
  %367 = invoke noundef ptr %366(ptr noundef nonnull align 8 dereferenceable(8) %360, i64 noundef %363)
          to label %368 unwind label %436, !prof !65

368:                                              ; preds = %359
  invoke void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %358, ptr noundef %367, i32 noundef %361)
          to label %369 unwind label %436, !prof !57

369:                                              ; preds = %368
  %370 = zext i32 %125 to i64
  %371 = shl nuw nsw i64 %370, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %367, ptr align 4 %133, i64 %371, i1 false), !prof !93
  %372 = add i32 %124, 7
  %373 = getelementptr inbounds i32, ptr %367, i64 %370
  store i32 58, ptr %373, align 4, !tbaa !66
  %374 = add i32 %124, 8
  %375 = zext i32 %372 to i64
  %376 = getelementptr inbounds i32, ptr %367, i64 %375
  store i32 58, ptr %376, align 4, !tbaa !66
  %377 = add i32 %124, 9
  %378 = zext i32 %374 to i64
  %379 = getelementptr inbounds i32, ptr %367, i64 %378
  store i32 95, ptr %379, align 4, !tbaa !66
  %380 = zext i32 %377 to i64
  %381 = getelementptr inbounds i32, ptr %367, i64 %380
  store i32 95, ptr %381, align 4, !tbaa !66
  %382 = load ptr, ptr %358, align 8, !tbaa !47
  %383 = getelementptr inbounds ptr, ptr %382, i64 14
  %384 = load ptr, ptr %383, align 8
  invoke void %384(ptr noundef nonnull align 8 dereferenceable(72) %358)
          to label %385 unwind label %436, !prof !97

385:                                              ; preds = %369
  %386 = load ptr, ptr %358, align 8, !tbaa !47
  %387 = getelementptr inbounds ptr, ptr %386, i64 15
  %388 = load ptr, ptr %387, align 8
  invoke void %388(ptr noundef nonnull align 8 dereferenceable(72) %358)
          to label %389 unwind label %436, !prof !98

389:                                              ; preds = %385
  %390 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %358, i64 0, i32 6
  %391 = load ptr, ptr %390, align 8, !tbaa !74
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %394, !prof !57

393:                                              ; preds = %389
  invoke void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %358)
          to label %394 unwind label %436, !prof !57

394:                                              ; preds = %393, %389
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, ptr noundef nonnull %358, i1 noundef zeroext false)
          to label %395 unwind label %436, !prof !57

395:                                              ; preds = %394
  %396 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %397 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %358, ptr noundef nonnull %17, ptr noundef %396)
          to label %398 unwind label %436, !prof !57

398:                                              ; preds = %395
  %399 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %397, i64 0, i32 6
  %400 = load ptr, ptr %399, align 8, !tbaa !74
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %403, !prof !57

402:                                              ; preds = %398
  invoke void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %397)
          to label %403 unwind label %436, !prof !57

403:                                              ; preds = %402, %398
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, ptr noundef nonnull %397, i1 noundef zeroext true)
          to label %404 unwind label %436, !prof !57

404:                                              ; preds = %403
  %405 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false)
          to label %406 unwind label %436, !prof !57

406:                                              ; preds = %404
  invoke void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %405, ptr noundef %133, i32 noundef %126)
          to label %407 unwind label %436, !prof !57

407:                                              ; preds = %406
  store ptr null, ptr %3, align 8, !tbaa !82
  %408 = load ptr, ptr %405, align 8, !tbaa !47
  %409 = getelementptr inbounds ptr, ptr %408, i64 14
  %410 = load ptr, ptr %409, align 8
  invoke void %410(ptr noundef nonnull align 8 dereferenceable(72) %405)
          to label %411 unwind label %436, !prof !97

411:                                              ; preds = %407
  %412 = load ptr, ptr %405, align 8, !tbaa !47
  %413 = getelementptr inbounds ptr, ptr %412, i64 15
  %414 = load ptr, ptr %413, align 8
  invoke void %414(ptr noundef nonnull align 8 dereferenceable(72) %405)
          to label %415 unwind label %436, !prof !98

415:                                              ; preds = %411
  %416 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %405, i64 0, i32 6
  %417 = load ptr, ptr %416, align 8, !tbaa !74
  %418 = icmp eq ptr %417, null
  br i1 %418, label %419, label %420, !prof !57

419:                                              ; preds = %415
  invoke void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %405)
          to label %420 unwind label %436, !prof !57

420:                                              ; preds = %419, %415
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, ptr noundef nonnull %405, i1 noundef zeroext false)
          to label %421 unwind label %436, !prof !57

421:                                              ; preds = %420
  %422 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !64
  %423 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %405, ptr noundef nonnull %17, ptr noundef %422)
          to label %424 unwind label %436, !prof !57

424:                                              ; preds = %421
  %425 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %423, i64 0, i32 6
  %426 = load ptr, ptr %425, align 8, !tbaa !74
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %429, !prof !57

428:                                              ; preds = %424
  invoke void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %423)
          to label %429 unwind label %436, !prof !57

429:                                              ; preds = %428, %424
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, ptr noundef nonnull %423, i1 noundef zeroext true)
          to label %430 unwind label %436, !prof !57

430:                                              ; preds = %429
  store i8 1, ptr %4, align 8, !tbaa !51
  call void @_ZN11xercesc_2_712ArrayJanitorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %431

431:                                              ; preds = %2, %430
  ret void

432:                                              ; preds = %195
  %433 = landingpad { ptr, i32 }
          cleanup
  br label %438

434:                                              ; preds = %355, %346, %357, %356, %348, %347, %338, %311, %250, %233
  %435 = landingpad { ptr, i32 }
          cleanup
  br label %438

436:                                              ; preds = %428, %419, %402, %393, %429, %421, %420, %411, %407, %406, %404, %403, %395, %394, %385, %369, %368, %359
  %437 = landingpad { ptr, i32 }
          cleanup
  br label %438

438:                                              ; preds = %434, %436, %432
  %439 = phi { ptr, i32 } [ %433, %432 ], [ %437, %436 ], [ %435, %434 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  resume { ptr, i32 } %439
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !57

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #10
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #11
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !58, !range !55, !noundef !56
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !57

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE)
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE)
  store i8 1, ptr %3, align 1, !tbaa !58
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_715XMLRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715XMLRangeFactoryD0Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_715XMLRangeFactoryD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb, i64 5}
!39 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij, i64 5}
!40 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 10}
!41 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb, i64 10}
!42 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, i64 5}
!43 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_712ArrayJanitorIiED2Ev, i64 1}
!44 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 5}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !53, i64 8, !53, i64 9}
!53 = !{!"bool", !54, i64 0}
!54 = !{!"omnipotent char", !49, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!"branch_weights", i32 1, i32 0}
!58 = !{!52, !53, i64 9}
!59 = !{!"branch_weights", i32 0, i32 1}
!60 = !{!61, !62, i64 24}
!61 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !63, i64 32}
!62 = !{!"any pointer", !54, i64 0}
!63 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !62, i64 0}
!64 = !{!62, !62, i64 0}
!65 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !54, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"short", !54, i64 0}
!70 = !{!"branch_weights", i32 127, i32 385}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75, !62, i64 40}
!75 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !76, i64 0, !53, i64 24, !53, i64 25, !67, i64 28, !67, i64 32, !67, i64 36, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64}
!76 = !{!"_ZTSN11xercesc_2_75TokenE", !69, i64 8, !62, i64 16}
!77 = !{!"branch_weights", i32 1, i32 29}
!78 = distinct !{!78, !72, !73}
!79 = !{!"branch_weights", i32 1, i32 299}
!80 = distinct !{!80, !72, !73}
!81 = !{!"branch_weights", i32 1, i32 51}
!82 = !{!83, !62, i64 0}
!83 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIiEE", !62, i64 0, !62, i64 8}
!84 = !{!83, !62, i64 8}
!85 = !{!"branch_weights", i32 1, i32 127}
!86 = !{!"branch_weights", i32 127, i32 6529}
!87 = !{!"branch_weights", i32 1, i32 3}
!88 = !{!"branch_weights", i32 127, i32 1}
!89 = !{!"VP", i32 1, i64 1, i64 65, i64 1}
!90 = !{!"branch_weights", i32 1, i32 131}
!91 = !{!"branch_weights", i32 1, i32 28}
!92 = !{!"branch_weights", i32 1, i32 7}
!93 = !{!"VP", i32 1, i64 1, i64 513, i64 1}
!94 = !{!"branch_weights", i32 127, i32 3585}
!95 = !{!"branch_weights", i32 1, i32 5}
!96 = !{!"branch_weights", i32 127, i32 897}
!97 = !{!"VP", i32 0, i64 1, i64 -5250907211680155883, i64 1}
!98 = !{!"VP", i32 0, i64 1, i64 -467017113302997031, i64 1}
