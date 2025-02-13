; ModuleID = 'XMLRangeFactory.cpp'
source_filename = "XMLRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

$_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIiEC2EPiPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIiE6orphanEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIiED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIiE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIiE5resetEPi = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_715XMLRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLRangeFactoryE, ptr @_ZN11xercesc_2_715XMLRangeFactoryD2Ev, ptr @_ZN11xercesc_2_715XMLRangeFactoryD0Ev, ptr @_ZN11xercesc_2_715XMLRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715XMLRangeFactoryE = dso_local constant [33 x i8] c"N11xercesc_2_715XMLRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_715XMLRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8
@_ZN11xercesc_2_7L16gWhitespaceCharsE = internal constant [6 x i16] [i16 0, i16 32, i16 9, i16 13, i16 10, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L10fgXMLSpaceE = internal constant [12 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 83, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xercesc_2_7L11gDigitCharsE = internal constant [32 x i16] [i16 48, i16 57, i16 1632, i16 1641, i16 1776, i16 1785, i16 2406, i16 2415, i16 2534, i16 2543, i16 2662, i16 2671, i16 2790, i16 2799, i16 2918, i16 2927, i16 3047, i16 3055, i16 3174, i16 3183, i16 3302, i16 3311, i16 3430, i16 3439, i16 3664, i16 3673, i16 3792, i16 3801, i16 3872, i16 3881, i16 0, i16 0], align 16
@_ZN11xercesc_2_7L10fgXMLDigitE = internal constant [12 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 68, i16 105, i16 103, i16 105, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L10gBaseCharsE = internal constant [354 x i16] [i16 65, i16 90, i16 97, i16 122, i16 192, i16 214, i16 216, i16 246, i16 248, i16 255, i16 256, i16 305, i16 308, i16 318, i16 321, i16 328, i16 330, i16 382, i16 384, i16 451, i16 461, i16 496, i16 500, i16 501, i16 506, i16 535, i16 592, i16 680, i16 699, i16 705, i16 904, i16 906, i16 910, i16 929, i16 931, i16 974, i16 976, i16 982, i16 994, i16 1011, i16 1025, i16 1036, i16 1038, i16 1103, i16 1105, i16 1116, i16 1118, i16 1153, i16 1168, i16 1220, i16 1223, i16 1224, i16 1227, i16 1228, i16 1232, i16 1259, i16 1262, i16 1269, i16 1272, i16 1273, i16 1329, i16 1366, i16 1377, i16 1414, i16 1488, i16 1514, i16 1520, i16 1522, i16 1569, i16 1594, i16 1601, i16 1610, i16 1649, i16 1719, i16 1722, i16 1726, i16 1728, i16 1742, i16 1744, i16 1747, i16 1765, i16 1766, i16 2309, i16 2361, i16 2392, i16 2401, i16 2437, i16 2444, i16 2447, i16 2448, i16 2451, i16 2472, i16 2474, i16 2480, i16 2486, i16 2489, i16 2524, i16 2525, i16 2527, i16 2529, i16 2544, i16 2545, i16 2565, i16 2570, i16 2575, i16 2576, i16 2579, i16 2600, i16 2602, i16 2608, i16 2610, i16 2611, i16 2613, i16 2614, i16 2616, i16 2617, i16 2649, i16 2652, i16 2674, i16 2676, i16 2693, i16 2699, i16 2703, i16 2705, i16 2707, i16 2728, i16 2730, i16 2736, i16 2738, i16 2739, i16 2741, i16 2745, i16 2821, i16 2828, i16 2831, i16 2832, i16 2835, i16 2856, i16 2858, i16 2864, i16 2866, i16 2867, i16 2870, i16 2873, i16 2908, i16 2909, i16 2911, i16 2913, i16 2949, i16 2954, i16 2958, i16 2960, i16 2962, i16 2965, i16 2969, i16 2970, i16 2974, i16 2975, i16 2979, i16 2980, i16 2984, i16 2986, i16 2990, i16 2997, i16 2999, i16 3001, i16 3077, i16 3084, i16 3086, i16 3088, i16 3090, i16 3112, i16 3114, i16 3123, i16 3125, i16 3129, i16 3168, i16 3169, i16 3205, i16 3212, i16 3214, i16 3216, i16 3218, i16 3240, i16 3242, i16 3251, i16 3253, i16 3257, i16 3296, i16 3297, i16 3333, i16 3340, i16 3342, i16 3344, i16 3346, i16 3368, i16 3370, i16 3385, i16 3424, i16 3425, i16 3585, i16 3630, i16 3634, i16 3635, i16 3648, i16 3653, i16 3713, i16 3714, i16 3719, i16 3720, i16 3732, i16 3735, i16 3737, i16 3743, i16 3745, i16 3747, i16 3754, i16 3755, i16 3757, i16 3758, i16 3762, i16 3763, i16 3776, i16 3780, i16 3904, i16 3911, i16 3913, i16 3945, i16 4256, i16 4293, i16 4304, i16 4342, i16 4354, i16 4355, i16 4357, i16 4359, i16 4363, i16 4364, i16 4366, i16 4370, i16 4436, i16 4437, i16 4447, i16 4449, i16 4461, i16 4462, i16 4466, i16 4467, i16 4526, i16 4527, i16 4535, i16 4536, i16 4540, i16 4546, i16 7680, i16 7835, i16 7840, i16 7929, i16 7936, i16 7957, i16 7960, i16 7965, i16 7968, i16 8005, i16 8008, i16 8013, i16 8016, i16 8023, i16 8031, i16 8061, i16 8064, i16 8116, i16 8118, i16 8124, i16 8130, i16 8132, i16 8134, i16 8140, i16 8144, i16 8147, i16 8150, i16 8155, i16 8160, i16 8172, i16 8178, i16 8180, i16 8182, i16 8188, i16 8490, i16 8491, i16 8576, i16 8578, i16 12353, i16 12436, i16 12449, i16 12538, i16 12549, i16 12588, i16 -21504, i16 -10333, i16 0, i16 902, i16 908, i16 986, i16 988, i16 990, i16 992, i16 1369, i16 1749, i16 2365, i16 2482, i16 2654, i16 2701, i16 2749, i16 2784, i16 2877, i16 2972, i16 3294, i16 3632, i16 3716, i16 3722, i16 3725, i16 3749, i16 3751, i16 3760, i16 3773, i16 4352, i16 4361, i16 4412, i16 4414, i16 4416, i16 4428, i16 4430, i16 4432, i16 4441, i16 4451, i16 4453, i16 4455, i16 4457, i16 4469, i16 4510, i16 4520, i16 4523, i16 4538, i16 4587, i16 4592, i16 4601, i16 8025, i16 8027, i16 8029, i16 8126, i16 8486, i16 8494, i16 0], align 16
@_ZN11xercesc_2_7L17gIdeographicCharsE = internal constant [7 x i16] [i16 12321, i16 12329, i16 19968, i16 -24667, i16 0, i16 12295, i16 0], align 2
@_ZN11xercesc_2_7L15gCombiningCharsE = internal constant [163 x i16] [i16 768, i16 837, i16 864, i16 865, i16 1155, i16 1158, i16 1425, i16 1441, i16 1443, i16 1465, i16 1467, i16 1469, i16 1473, i16 1474, i16 1611, i16 1618, i16 1750, i16 1756, i16 1757, i16 1759, i16 1760, i16 1764, i16 1767, i16 1768, i16 1770, i16 1773, i16 2305, i16 2307, i16 2366, i16 2380, i16 2385, i16 2388, i16 2402, i16 2403, i16 2433, i16 2435, i16 2496, i16 2500, i16 2503, i16 2504, i16 2507, i16 2509, i16 2530, i16 2531, i16 2624, i16 2626, i16 2631, i16 2632, i16 2635, i16 2637, i16 2672, i16 2673, i16 2689, i16 2691, i16 2750, i16 2757, i16 2759, i16 2761, i16 2763, i16 2765, i16 2817, i16 2819, i16 2878, i16 2883, i16 2887, i16 2888, i16 2891, i16 2893, i16 2902, i16 2903, i16 2946, i16 2947, i16 3006, i16 3010, i16 3014, i16 3016, i16 3018, i16 3021, i16 3073, i16 3075, i16 3134, i16 3140, i16 3142, i16 3144, i16 3146, i16 3149, i16 3157, i16 3158, i16 3202, i16 3203, i16 3262, i16 3268, i16 3270, i16 3272, i16 3274, i16 3277, i16 3285, i16 3286, i16 3330, i16 3331, i16 3390, i16 3395, i16 3398, i16 3400, i16 3402, i16 3405, i16 3636, i16 3642, i16 3655, i16 3662, i16 3764, i16 3769, i16 3771, i16 3772, i16 3784, i16 3789, i16 3864, i16 3865, i16 3953, i16 3972, i16 3974, i16 3979, i16 3984, i16 3989, i16 3993, i16 4013, i16 4017, i16 4023, i16 8400, i16 8412, i16 12330, i16 12335, i16 0, i16 1471, i16 1476, i16 1648, i16 2364, i16 2381, i16 2492, i16 2494, i16 2495, i16 2519, i16 2562, i16 2620, i16 2622, i16 2623, i16 2748, i16 2876, i16 3031, i16 3415, i16 3633, i16 3761, i16 3893, i16 3895, i16 3897, i16 3902, i16 3903, i16 3991, i16 4025, i16 8417, i16 12441, i16 12442, i16 0], align 16
@_ZN11xercesc_2_7L14gExtenderCharsE = internal constant [16 x i16] [i16 12337, i16 12341, i16 12445, i16 12446, i16 12540, i16 12542, i16 0, i16 183, i16 720, i16 721, i16 903, i16 1600, i16 3654, i16 3782, i16 12293, i16 0], align 16
@_ZN11xercesc_2_7L13fgXMLNameCharE = internal constant [15 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 78, i16 97, i16 109, i16 101, i16 67, i16 104, i16 97, i16 114, i16 0], align 16
@_ZN11xercesc_2_7L20fgXMLInitialNameCharE = internal constant [22 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 73, i16 110, i16 105, i16 116, i16 105, i16 97, i16 108, i16 78, i16 97, i16 109, i16 101, i16 67, i16 104, i16 97, i16 114, i16 0], align 16
@_ZN11xercesc_2_7L9fgXMLWordE = internal constant [11 x i16] [i16 120, i16 109, i16 108, i16 58, i16 105, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 16
@_ZN11xercesc_2_7L13fgXMLCategoryE = internal constant [4 x i16] [i16 88, i16 77, i16 76, i16 0], align 2

@_ZN11xercesc_2_715XMLRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XMLRangeFactoryC2Ev
@_ZN11xercesc_2_715XMLRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XMLRangeFactoryD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_715XMLRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !57, !range !62, !noundef !63
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !64

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLCategoryE) #10
  store i8 1, ptr %3, align 1, !tbaa !57
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !65, !range !62, !noundef !63
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %167, !prof !64

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 1, !tbaa !57, !range !62, !noundef !63
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15, !prof !66

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !67
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) #10
  br label %15

15:                                               ; preds = %11, %7
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #10
  %17 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_7L16gWhitespaceCharsE) #10
  %18 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #10
  %19 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %20 = zext i32 %17 to i64
  %21 = shl nuw nsw i64 %20, 2
  %22 = load ptr, ptr %19, align 8, !tbaa !67
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %21) #10
  tail call void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %25, i32 noundef %17) #10
  tail call fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr noundef %25, ptr noundef nonnull @_ZN11xercesc_2_7L16gWhitespaceCharsE, i32 noundef 0) #10
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %18) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, ptr noundef nonnull %18, i1 noundef zeroext false) #10
  %26 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %27 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef %26) #10
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %27) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLSpaceE, ptr noundef nonnull %27, i1 noundef zeroext true) #10
  %28 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #10
  %29 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_7L11gDigitCharsE) #10
  %30 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %31 = zext i32 %29 to i64
  %32 = shl nuw nsw i64 %31, 2
  %33 = load ptr, ptr %30, align 8, !tbaa !67
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %32) #10
  tail call void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef %36, i32 noundef %29) #10
  tail call fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr noundef %36, ptr noundef nonnull @_ZN11xercesc_2_7L11gDigitCharsE, i32 noundef 0) #10
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %28) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, ptr noundef nonnull %28, i1 noundef zeroext false) #10
  %37 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %38 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %28, ptr noundef nonnull %16, ptr noundef %37) #10
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %38) #10
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L10fgXMLDigitE, ptr noundef nonnull %38, i1 noundef zeroext true) #10
  %39 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_7L10gBaseCharsE) #10
  %40 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_7L17gIdeographicCharsE) #10
  %41 = add i32 %40, %39
  %42 = add i32 %41, %29
  %43 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 2
  %46 = load ptr, ptr %43, align 8, !tbaa !67
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  call void @_ZN11xercesc_2_712ArrayJanitorIiEC2EPiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %49, ptr noundef %50) #10
  call fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr noundef %49, ptr noundef nonnull @_ZN11xercesc_2_7L10gBaseCharsE, i32 noundef 0) #10
  call fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr noundef %49, ptr noundef nonnull @_ZN11xercesc_2_7L17gIdeographicCharsE, i32 noundef %39) #10
  %51 = zext i32 %39 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = zext i32 %40 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %54, ptr align 4 %36, i64 %32, i1 false)
  %55 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #10
          to label %56 unwind label %168

56:                                               ; preds = %15
  %57 = call fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_7L15gCombiningCharsE) #10
  %58 = call fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef nonnull @_ZN11xercesc_2_7L14gExtenderCharsE) #10
  %59 = add i32 %57, %42
  %60 = add i32 %59, %58
  %61 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %62 = add i32 %60, 8
  %63 = zext i32 %62 to i64
  %64 = shl nuw nsw i64 %63, 2
  %65 = load ptr, ptr %61, align 8, !tbaa !67
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %61, i64 noundef %64) #10
          to label %69 unwind label %170

69:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %55, ptr noundef %68, i32 noundef %62) #10
          to label %70 unwind label %170

70:                                               ; preds = %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %68, ptr align 4 %49, i64 %45, i1 false)
  call fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr noundef %68, ptr noundef nonnull @_ZN11xercesc_2_7L15gCombiningCharsE, i32 noundef %42) #10
  call fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr noundef %68, ptr noundef nonnull @_ZN11xercesc_2_7L14gExtenderCharsE, i32 noundef %59) #10
  %71 = add i32 %60, 1
  %72 = zext i32 %60 to i64
  %73 = getelementptr inbounds i32, ptr %68, i64 %72
  store i32 45, ptr %73, align 4, !tbaa !71
  %74 = add i32 %60, 2
  %75 = zext i32 %71 to i64
  %76 = getelementptr inbounds i32, ptr %68, i64 %75
  store i32 45, ptr %76, align 4, !tbaa !71
  %77 = add i32 %60, 3
  %78 = zext i32 %74 to i64
  %79 = getelementptr inbounds i32, ptr %68, i64 %78
  store i32 58, ptr %79, align 4, !tbaa !71
  %80 = add i32 %60, 4
  %81 = zext i32 %77 to i64
  %82 = getelementptr inbounds i32, ptr %68, i64 %81
  store i32 58, ptr %82, align 4, !tbaa !71
  %83 = add i32 %60, 5
  %84 = zext i32 %80 to i64
  %85 = getelementptr inbounds i32, ptr %68, i64 %84
  store i32 46, ptr %85, align 4, !tbaa !71
  %86 = add i32 %60, 6
  %87 = zext i32 %83 to i64
  %88 = getelementptr inbounds i32, ptr %68, i64 %87
  store i32 46, ptr %88, align 4, !tbaa !71
  %89 = add i32 %60, 7
  %90 = zext i32 %86 to i64
  %91 = getelementptr inbounds i32, ptr %68, i64 %90
  store i32 95, ptr %91, align 4, !tbaa !71
  %92 = zext i32 %89 to i64
  %93 = getelementptr inbounds i32, ptr %68, i64 %92
  store i32 95, ptr %93, align 4, !tbaa !71
  %94 = load ptr, ptr %55, align 8, !tbaa !67
  %95 = getelementptr inbounds ptr, ptr %94, i64 14
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(72) %55) #10
          to label %97 unwind label %170

97:                                               ; preds = %70
  %98 = load ptr, ptr %55, align 8, !tbaa !67
  %99 = getelementptr inbounds ptr, ptr %98, i64 15
  %100 = load ptr, ptr %99, align 8
  invoke void %100(ptr noundef nonnull align 8 dereferenceable(72) %55) #10
          to label %101 unwind label %170

101:                                              ; preds = %97
  invoke void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %55) #10
          to label %102 unwind label %170

102:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, ptr noundef nonnull %55, i1 noundef zeroext false) #10
          to label %103 unwind label %170

103:                                              ; preds = %102
  %104 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %105 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %55, ptr noundef nonnull %16, ptr noundef %104) #10
          to label %106 unwind label %170

106:                                              ; preds = %103
  invoke void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %105) #10
          to label %107 unwind label %170

107:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L13fgXMLNameCharE, ptr noundef nonnull %105, i1 noundef zeroext true) #10
          to label %108 unwind label %170

108:                                              ; preds = %107
  %109 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #10
          to label %110 unwind label %170

110:                                              ; preds = %108
  %111 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %112 = add i32 %41, 4
  %113 = zext i32 %112 to i64
  %114 = shl nuw nsw i64 %113, 2
  %115 = load ptr, ptr %111, align 8, !tbaa !67
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  %118 = invoke noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %111, i64 noundef %114) #10
          to label %119 unwind label %172

119:                                              ; preds = %110
  invoke void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %109, ptr noundef %118, i32 noundef %112) #10
          to label %120 unwind label %172

120:                                              ; preds = %119
  %121 = zext i32 %41 to i64
  %122 = shl nuw nsw i64 %121, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %118, ptr align 4 %49, i64 %122, i1 false)
  %123 = add i32 %41, 1
  %124 = getelementptr inbounds i32, ptr %118, i64 %121
  store i32 58, ptr %124, align 4, !tbaa !71
  %125 = add i32 %41, 2
  %126 = zext i32 %123 to i64
  %127 = getelementptr inbounds i32, ptr %118, i64 %126
  store i32 58, ptr %127, align 4, !tbaa !71
  %128 = add i32 %41, 3
  %129 = zext i32 %125 to i64
  %130 = getelementptr inbounds i32, ptr %118, i64 %129
  store i32 95, ptr %130, align 4, !tbaa !71
  %131 = zext i32 %128 to i64
  %132 = getelementptr inbounds i32, ptr %118, i64 %131
  store i32 95, ptr %132, align 4, !tbaa !71
  %133 = load ptr, ptr %109, align 8, !tbaa !67
  %134 = getelementptr inbounds ptr, ptr %133, i64 14
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(72) %109) #10
          to label %136 unwind label %172

136:                                              ; preds = %120
  %137 = load ptr, ptr %109, align 8, !tbaa !67
  %138 = getelementptr inbounds ptr, ptr %137, i64 15
  %139 = load ptr, ptr %138, align 8
  invoke void %139(ptr noundef nonnull align 8 dereferenceable(72) %109) #10
          to label %140 unwind label %172

140:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %109) #10
          to label %141 unwind label %172

141:                                              ; preds = %140
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, ptr noundef nonnull %109, i1 noundef zeroext false) #10
          to label %142 unwind label %172

142:                                              ; preds = %141
  %143 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %144 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %109, ptr noundef nonnull %16, ptr noundef %143) #10
          to label %145 unwind label %172

145:                                              ; preds = %142
  invoke void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %144) #10
          to label %146 unwind label %172

146:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L20fgXMLInitialNameCharE, ptr noundef nonnull %144, i1 noundef zeroext true) #10
          to label %147 unwind label %172

147:                                              ; preds = %146
  %148 = invoke noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false) #10
          to label %149 unwind label %172

149:                                              ; preds = %147
  invoke void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72) %148, ptr noundef %49, i32 noundef %42) #10
          to label %150 unwind label %172

150:                                              ; preds = %149
  invoke void @_ZN11xercesc_2_712ArrayJanitorIiE6orphanEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
          to label %151 unwind label %172

151:                                              ; preds = %150
  %152 = load ptr, ptr %148, align 8, !tbaa !67
  %153 = getelementptr inbounds ptr, ptr %152, i64 14
  %154 = load ptr, ptr %153, align 8
  invoke void %154(ptr noundef nonnull align 8 dereferenceable(72) %148) #10
          to label %155 unwind label %172

155:                                              ; preds = %151
  %156 = load ptr, ptr %148, align 8, !tbaa !67
  %157 = getelementptr inbounds ptr, ptr %156, i64 15
  %158 = load ptr, ptr %157, align 8
  invoke void %158(ptr noundef nonnull align 8 dereferenceable(72) %148) #10
          to label %159 unwind label %172

159:                                              ; preds = %155
  invoke void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %148) #10
          to label %160 unwind label %172

160:                                              ; preds = %159
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, ptr noundef nonnull %148, i1 noundef zeroext false) #10
          to label %161 unwind label %172

161:                                              ; preds = %160
  %162 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %163 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %148, ptr noundef nonnull %16, ptr noundef %162) #10
          to label %164 unwind label %172

164:                                              ; preds = %161
  invoke void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %163) #10
          to label %165 unwind label %172

165:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_7L9fgXMLWordE, ptr noundef nonnull %163, i1 noundef zeroext true) #10
          to label %166 unwind label %172

166:                                              ; preds = %165
  store i8 1, ptr %4, align 8, !tbaa !65
  call void @_ZN11xercesc_2_712ArrayJanitorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %167

167:                                              ; preds = %2, %166
  ret void

168:                                              ; preds = %15
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %174

170:                                              ; preds = %108, %107, %106, %103, %102, %101, %97, %70, %69, %56
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %174

172:                                              ; preds = %165, %164, %161, %160, %159, %155, %151, %150, %149, %147, %146, %145, %142, %141, %140, %136, %120, %119, %110
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %174

174:                                              ; preds = %170, %172, %168
  %175 = phi { ptr, i32 } [ %169, %168 ], [ %173, %172 ], [ %171, %170 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %175
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #1 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XMLRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L11getTableLenEPKt(ptr noundef %0) unnamed_addr #0 !prof !76 !PGOFuncName !77 {
  %2 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #10
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds i16, ptr %0, i64 %3
  %5 = getelementptr inbounds i16, ptr %4, i64 1
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %5) #10
  %7 = shl i32 %6, 1
  %8 = add i32 %7, %2
  ret i32 %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZN11xercesc_2_7L10setupRangeEPiPKtj(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !prof !76 !PGOFuncName !78 {
  %4 = load i16, ptr %1, align 2, !tbaa !79
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %12, !prof !81

6:                                                ; preds = %12, %3
  %7 = phi ptr [ %1, %3 ], [ %16, %12 ]
  %8 = phi i32 [ %2, %3 ], [ %18, %12 ]
  %9 = getelementptr inbounds i16, ptr %7, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !79
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %37, label %23, !prof !81

12:                                               ; preds = %3, %12
  %13 = phi i16 [ %21, %12 ], [ %4, %3 ]
  %14 = phi i32 [ %18, %12 ], [ %2, %3 ]
  %15 = phi ptr [ %16, %12 ], [ %1, %3 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = zext i16 %13 to i32
  %18 = add i32 %14, 1
  %19 = zext i32 %14 to i64
  %20 = getelementptr inbounds i32, ptr %0, i64 %19
  store i32 %17, ptr %20, align 4, !tbaa !71
  %21 = load i16, ptr %16, align 2, !tbaa !79
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %6, label %12, !prof !82, !llvm.loop !83

23:                                               ; preds = %6, %23
  %24 = phi i16 [ %35, %23 ], [ %10, %6 ]
  %25 = phi ptr [ %34, %23 ], [ %9, %6 ]
  %26 = phi i32 [ %31, %23 ], [ %8, %6 ]
  %27 = zext i16 %24 to i32
  %28 = add i32 %26, 1
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds i32, ptr %0, i64 %29
  store i32 %27, ptr %30, align 4, !tbaa !71
  %31 = add i32 %26, 2
  %32 = zext i32 %28 to i64
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  store i32 %27, ptr %33, align 4, !tbaa !71
  %34 = getelementptr inbounds i16, ptr %25, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !79
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %23, !prof !85, !llvm.loop !86

37:                                               ; preds = %23, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !91

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIiEC2EPiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !92
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !94
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIiE6orphanEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !56 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIiE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIiE5resetEPi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !95 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !96

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !79
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !97

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !79
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !98, !llvm.loop !99

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !100 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIiE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !56 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  store ptr null, ptr %0, align 8, !tbaa !92
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIiE5resetEPi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !64

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !67
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #13
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !94
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!55}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!36 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 5}
!37 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_7L11getTableLenEPKt, i64 6}
!39 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb, i64 5}
!40 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij, i64 5}
!41 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_7L10setupRangeEPiPKtj, i64 6}
!42 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_710RangeToken9createMapEv, i64 10}
!43 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb, i64 10}
!44 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, i64 5}
!45 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_712ArrayJanitorIiEC2EPiPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_712ArrayJanitorIiE6orphanEv, i64 1}
!47 = !{ptr @_ZN11xercesc_2_715XMLRangeFactory11buildRangesEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_712ArrayJanitorIiED2Ev, i64 1}
!48 = !{ptr @_ZN11xercesc_2_715XMLRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715XMLRangeFactoryD2Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_7L11getTableLenEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 12}
!51 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!52 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIiEC2EPiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!53 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIiE6orphanEv, ptr @_ZN11xercesc_2_712ArrayJanitorIiE7releaseEv, i64 1}
!54 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIiED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorIiE5resetEPi, i64 1}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 1}
!57 = !{!58, !59, i64 9}
!58 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !59, i64 8, !59, i64 9}
!59 = !{!"bool", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!"branch_weights", i32 2, i32 1}
!65 = !{!58, !59, i64 8}
!66 = !{!"branch_weights", i32 1, i32 2}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !61, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"any pointer", !60, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !60, i64 0}
!73 = !{!74, !70, i64 24}
!74 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !75, i64 32}
!75 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !70, i64 0}
!76 = !{!"function_entry_count", i64 6}
!77 = !{!"XMLRangeFactory.cpp:_ZN11xercesc_2_7L11getTableLenEPKt"}
!78 = !{!"XMLRangeFactory.cpp:_ZN11xercesc_2_7L10setupRangeEPiPKtj"}
!79 = !{!80, !80, i64 0}
!80 = !{!"short", !60, i64 0}
!81 = !{!"branch_weights", i32 1, i32 223}
!82 = !{!"branch_weights", i32 223, i32 14913}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"branch_weights", i32 223, i32 2817}
!86 = distinct !{!86, !84}
!87 = !{!"function_entry_count", i64 1301042}
!88 = !{!89, !70, i64 40}
!89 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !90, i64 0, !59, i64 24, !59, i64 25, !72, i64 28, !72, i64 32, !72, i64 36, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64}
!90 = !{!"_ZTSN11xercesc_2_75TokenE", !80, i64 8, !70, i64 16}
!91 = !{!"branch_weights", i32 18, i32 1301026}
!92 = !{!93, !70, i64 0}
!93 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIiEE", !70, i64 0, !70, i64 8}
!94 = !{!93, !70, i64 8}
!95 = !{!"function_entry_count", i64 2453164456}
!96 = !{!"branch_weights", i32 1, i32 -1841802839}
!97 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!98 = !{!"branch_weights", i32 408669070, i32 -279908792}
!99 = distinct !{!99, !84}
!100 = !{!"function_entry_count", i64 5836268}
