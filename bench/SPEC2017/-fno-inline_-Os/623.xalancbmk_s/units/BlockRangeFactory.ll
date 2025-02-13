; ModuleID = 'BlockRangeFactory.cpp'
source_filename = "BlockRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

$_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

@_ZTVN11xercesc_2_717BlockRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717BlockRangeFactoryE, ptr @_ZN11xercesc_2_717BlockRangeFactoryD2Ev, ptr @_ZN11xercesc_2_717BlockRangeFactoryD0Ev, ptr @_ZN11xercesc_2_717BlockRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_717BlockRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717BlockRangeFactoryE = dso_local constant [35 x i8] c"N11xercesc_2_717BlockRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_717BlockRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717BlockRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8
@_ZN11xercesc_2_7L11blockRangesE = internal unnamed_addr constant [187 x i32] [i32 0, i32 127, i32 128, i32 255, i32 256, i32 383, i32 384, i32 591, i32 592, i32 687, i32 688, i32 767, i32 768, i32 879, i32 880, i32 1023, i32 1024, i32 1279, i32 1328, i32 1423, i32 1424, i32 1535, i32 1536, i32 1791, i32 1792, i32 1871, i32 1920, i32 1983, i32 2304, i32 2431, i32 2432, i32 2559, i32 2560, i32 2687, i32 2688, i32 2815, i32 2816, i32 2943, i32 2944, i32 3071, i32 3072, i32 3199, i32 3200, i32 3327, i32 3328, i32 3455, i32 3456, i32 3583, i32 3584, i32 3711, i32 3712, i32 3839, i32 3840, i32 4095, i32 4096, i32 4255, i32 4256, i32 4351, i32 4352, i32 4607, i32 4608, i32 4991, i32 5024, i32 5119, i32 5120, i32 5759, i32 5760, i32 5791, i32 5792, i32 5887, i32 6016, i32 6143, i32 6144, i32 6319, i32 7680, i32 7935, i32 7936, i32 8191, i32 8192, i32 8303, i32 8304, i32 8351, i32 8352, i32 8399, i32 8400, i32 8447, i32 8448, i32 8527, i32 8528, i32 8591, i32 8592, i32 8703, i32 8704, i32 8959, i32 8960, i32 9215, i32 9216, i32 9279, i32 9280, i32 9311, i32 9312, i32 9471, i32 9472, i32 9599, i32 9600, i32 9631, i32 9632, i32 9727, i32 9728, i32 9983, i32 9984, i32 10175, i32 10240, i32 10495, i32 11904, i32 12031, i32 12032, i32 12255, i32 12272, i32 12287, i32 12288, i32 12351, i32 12352, i32 12447, i32 12448, i32 12543, i32 12544, i32 12591, i32 12592, i32 12687, i32 12688, i32 12703, i32 12704, i32 12735, i32 12800, i32 13055, i32 13056, i32 13311, i32 13312, i32 19893, i32 19968, i32 40959, i32 40960, i32 42127, i32 42128, i32 42191, i32 44032, i32 55203, i32 57344, i32 63743, i32 63744, i32 64255, i32 64256, i32 64335, i32 64336, i32 65023, i32 65056, i32 65071, i32 65072, i32 65103, i32 65104, i32 65135, i32 65136, i32 65278, i32 65279, i32 65279, i32 65280, i32 65519, i32 66304, i32 66351, i32 66352, i32 66383, i32 66560, i32 66639, i32 118784, i32 119039, i32 119040, i32 119295, i32 119808, i32 120831, i32 131072, i32 173782, i32 194560, i32 195103, i32 917504, i32 917631, i32 0], align 16
@_ZN11xercesc_2_7L17fgBlockIsSpecialsE = internal constant [11 x i16] [i16 73, i16 115, i16 83, i16 112, i16 101, i16 99, i16 105, i16 97, i16 108, i16 115, i16 0], align 16
@_ZN11xercesc_2_7L19fgBlockIsPrivateUseE = internal constant [13 x i16] [i16 73, i16 115, i16 80, i16 114, i16 105, i16 118, i16 97, i16 116, i16 101, i16 85, i16 115, i16 101, i16 0], align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L12fgBlockNamesE = internal constant <{ <{ [12 x i16], [81 x i16] }>, <{ [19 x i16], [74 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [15 x i16], [78 x i16] }>, <{ [24 x i16], [69 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [11 x i16], [82 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }>, <{ i16, i16, i16, i16, i16, [88 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [36 x i16], [57 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ [11 x i16], [82 x i16] }>, <{ [25 x i16], [68 x i16] }>, <{ [15 x i16], [78 x i16] }>, <{ [20 x i16], [73 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [26 x i16], [67 x i16] }>, <{ [19 x i16], [74 x i16] }>, <{ [13 x i16], [80 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [24 x i16], [69 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [29 x i16], [64 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [15 x i16], [78 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [22 x i16], [71 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [16 x i16], [77 x i16] }>, <{ [34 x i16], [59 x i16] }>, <{ [26 x i16], [67 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [25 x i16], [68 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [18 x i16], [75 x i16] }>, <{ [29 x i16], [64 x i16] }>, <{ [18 x i16], [75 x i16] }>, <{ [32 x i16], [61 x i16] }>, <{ [22 x i16], [71 x i16] }>, <{ [13 x i16], [80 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [28 x i16], [65 x i16] }>, <{ [29 x i16], [64 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ [20 x i16], [73 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [19 x i16], [74 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [28 x i16], [65 x i16] }>, <{ [11 x i16], [82 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [25 x i16], [68 x i16] }>, <{ [14 x i16], [79 x i16] }>, <{ [33 x i16], [60 x i16] }>, <{ [32 x i16], [61 x i16] }>, <{ [38 x i16], [55 x i16] }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }> }> <{ <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 66, i16 97, i16 115, i16 105, i16 99, i16 76, i16 97, i16 116, i16 105, i16 110], [81 x i16] zeroinitializer }>, <{ [19 x i16], [74 x i16] }> <{ [19 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 45, i16 49, i16 83, i16 117, i16 112, i16 112, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116], [74 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100, i16 45, i16 65], [76 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100, i16 45, i16 66], [76 x i16] zeroinitializer }>, <{ [15 x i16], [78 x i16] }> <{ [15 x i16] [i16 73, i16 115, i16 73, i16 80, i16 65, i16 69, i16 120, i16 116, i16 101, i16 110, i16 115, i16 105, i16 111, i16 110, i16 115], [78 x i16] zeroinitializer }>, <{ [24 x i16], [69 x i16] }> <{ [24 x i16] [i16 73, i16 115, i16 83, i16 112, i16 97, i16 99, i16 105, i16 110, i16 103, i16 77, i16 111, i16 100, i16 105, i16 102, i16 105, i16 101, i16 114, i16 76, i16 101, i16 116, i16 116, i16 101, i16 114, i16 115], [69 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 67, i16 111, i16 109, i16 98, i16 105, i16 110, i16 105, i16 110, i16 103, i16 68, i16 105, i16 97, i16 99, i16 114, i16 105, i16 116, i16 105, i16 99, i16 97, i16 108, i16 77, i16 97, i16 114, i16 107, i16 115], [66 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 71, i16 114, i16 101, i16 101, i16 107, [86 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 67, i16 121, i16 114, i16 105, i16 108, i16 108, i16 105, i16 99], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 65, i16 114, i16 109, i16 101, i16 110, i16 105, i16 97, i16 110], [83 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 72, i16 101, i16 98, i16 114, i16 101, i16 119], [85 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 65, i16 114, i16 97, i16 98, i16 105, i16 99], [85 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 83, i16 121, i16 114, i16 105, i16 97, i16 99], [85 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 84, i16 104, i16 97, i16 97, i16 110, i16 97], [85 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 68, i16 101, i16 118, i16 97, i16 110, i16 97, i16 103, i16 97, i16 114, i16 105], [81 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 66, i16 101, i16 110, i16 103, i16 97, i16 108, i16 105], [84 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 71, i16 117, i16 114, i16 109, i16 117, i16 107, i16 104, i16 105], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 71, i16 117, i16 106, i16 97, i16 114, i16 97, i16 116, i16 105], [83 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 79, i16 114, i16 105, i16 121, i16 97, [86 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 84, i16 97, i16 109, i16 105, i16 108, [86 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 84, i16 101, i16 108, i16 117, i16 103, i16 117], [85 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 75, i16 97, i16 110, i16 110, i16 97, i16 100, i16 97], [84 x i16] zeroinitializer }>, <{ [11 x i16], [82 x i16] }> <{ [11 x i16] [i16 73, i16 115, i16 77, i16 97, i16 108, i16 97, i16 121, i16 97, i16 108, i16 97, i16 109], [82 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 83, i16 105, i16 110, i16 104, i16 97, i16 108, i16 97], [84 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }> <{ i16 73, i16 115, i16 84, i16 104, i16 97, i16 105, [87 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, [88 x i16] }> <{ i16 73, i16 115, i16 76, i16 97, i16 111, [88 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 84, i16 105, i16 98, i16 101, i16 116, i16 97, i16 110], [84 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 77, i16 121, i16 97, i16 110, i16 109, i16 97, i16 114], [84 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 71, i16 101, i16 111, i16 114, i16 103, i16 105, i16 97, i16 110], [83 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 72, i16 97, i16 110, i16 103, i16 117, i16 108, i16 74, i16 97, i16 109, i16 111], [81 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 69, i16 116, i16 104, i16 105, i16 111, i16 112, i16 105, i16 99], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 67, i16 104, i16 101, i16 114, i16 111, i16 107, i16 101, i16 101], [83 x i16] zeroinitializer }>, <{ [36 x i16], [57 x i16] }> <{ [36 x i16] [i16 73, i16 115, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 67, i16 97, i16 110, i16 97, i16 100, i16 105, i16 97, i16 110, i16 65, i16 98, i16 111, i16 114, i16 105, i16 103, i16 105, i16 110, i16 97, i16 108, i16 83, i16 121, i16 108, i16 108, i16 97, i16 98, i16 105, i16 99, i16 115], [57 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 79, i16 103, i16 104, i16 97, i16 109, [86 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 82, i16 117, i16 110, i16 105, i16 99, [86 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 75, i16 104, i16 109, i16 101, i16 114, [86 x i16] zeroinitializer }>, <{ [11 x i16], [82 x i16] }> <{ [11 x i16] [i16 73, i16 115, i16 77, i16 111, i16 110, i16 103, i16 111, i16 108, i16 105, i16 97, i16 110], [82 x i16] zeroinitializer }>, <{ [25 x i16], [68 x i16] }> <{ [25 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100, i16 65, i16 100, i16 100, i16 105, i16 116, i16 105, i16 111, i16 110, i16 97, i16 108], [68 x i16] zeroinitializer }>, <{ [15 x i16], [78 x i16] }> <{ [15 x i16] [i16 73, i16 115, i16 71, i16 114, i16 101, i16 101, i16 107, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100], [78 x i16] zeroinitializer }>, <{ [20 x i16], [73 x i16] }> <{ [20 x i16] [i16 73, i16 115, i16 71, i16 101, i16 110, i16 101, i16 114, i16 97, i16 108, i16 80, i16 117, i16 110, i16 99, i16 116, i16 117, i16 97, i16 116, i16 105, i16 111, i16 110], [73 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 83, i16 117, i16 112, i16 101, i16 114, i16 115, i16 99, i16 114, i16 105, i16 112, i16 116, i16 115, i16 97, i16 110, i16 100, i16 83, i16 117, i16 98, i16 115, i16 99, i16 114, i16 105, i16 112, i16 116, i16 115], [66 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 67, i16 117, i16 114, i16 114, i16 101, i16 110, i16 99, i16 121, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [76 x i16] zeroinitializer }>, <{ [26 x i16], [67 x i16] }> <{ [26 x i16] [i16 73, i16 115, i16 67, i16 111, i16 109, i16 98, i16 105, i16 110, i16 105, i16 110, i16 103, i16 77, i16 97, i16 114, i16 107, i16 115, i16 102, i16 111, i16 114, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [67 x i16] zeroinitializer }>, <{ [19 x i16], [74 x i16] }> <{ [19 x i16] [i16 73, i16 115, i16 76, i16 101, i16 116, i16 116, i16 101, i16 114, i16 108, i16 105, i16 107, i16 101, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [74 x i16] zeroinitializer }>, <{ [13 x i16], [80 x i16] }> <{ [13 x i16] [i16 73, i16 115, i16 78, i16 117, i16 109, i16 98, i16 101, i16 114, i16 70, i16 111, i16 114, i16 109, i16 115], [80 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 65, i16 114, i16 114, i16 111, i16 119, i16 115], [85 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 77, i16 97, i16 116, i16 104, i16 101, i16 109, i16 97, i16 116, i16 105, i16 99, i16 97, i16 108, i16 79, i16 112, i16 101, i16 114, i16 97, i16 116, i16 111, i16 114, i16 115], [70 x i16] zeroinitializer }>, <{ [24 x i16], [69 x i16] }> <{ [24 x i16] [i16 73, i16 115, i16 77, i16 105, i16 115, i16 99, i16 101, i16 108, i16 108, i16 97, i16 110, i16 101, i16 111, i16 117, i16 115, i16 84, i16 101, i16 99, i16 104, i16 110, i16 105, i16 99, i16 97, i16 108], [69 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 67, i16 111, i16 110, i16 116, i16 114, i16 111, i16 108, i16 80, i16 105, i16 99, i16 116, i16 117, i16 114, i16 101, i16 115], [76 x i16] zeroinitializer }>, <{ [29 x i16], [64 x i16] }> <{ [29 x i16] [i16 73, i16 115, i16 79, i16 112, i16 116, i16 105, i16 99, i16 97, i16 108, i16 67, i16 104, i16 97, i16 114, i16 97, i16 99, i16 116, i16 101, i16 114, i16 82, i16 101, i16 99, i16 111, i16 103, i16 110, i16 105, i16 116, i16 105, i16 111, i16 110], [64 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 69, i16 110, i16 99, i16 108, i16 111, i16 115, i16 101, i16 100, i16 65, i16 108, i16 112, i16 104, i16 97, i16 110, i16 117, i16 109, i16 101, i16 114, i16 105, i16 99, i16 115], [70 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 66, i16 111, i16 120, i16 68, i16 114, i16 97, i16 119, i16 105, i16 110, i16 103], [81 x i16] zeroinitializer }>, <{ [15 x i16], [78 x i16] }> <{ [15 x i16] [i16 73, i16 115, i16 66, i16 108, i16 111, i16 99, i16 107, i16 69, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116, i16 115], [78 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 71, i16 101, i16 111, i16 109, i16 101, i16 116, i16 114, i16 105, i16 99, i16 83, i16 104, i16 97, i16 112, i16 101, i16 115], [76 x i16] zeroinitializer }>, <{ [22 x i16], [71 x i16] }> <{ [22 x i16] [i16 73, i16 115, i16 77, i16 105, i16 115, i16 99, i16 101, i16 108, i16 108, i16 97, i16 110, i16 101, i16 111, i16 117, i16 115, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [71 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 68, i16 105, i16 110, i16 103, i16 98, i16 97, i16 116, i16 115], [83 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 66, i16 114, i16 97, i16 105, i16 108, i16 108, i16 101, i16 80, i16 97, i16 116, i16 116, i16 101, i16 114, i16 110, i16 115], [76 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 82, i16 97, i16 100, i16 105, i16 99, i16 97, i16 108, i16 115, i16 83, i16 117, i16 112, i16 112, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116], [70 x i16] zeroinitializer }>, <{ [16 x i16], [77 x i16] }> <{ [16 x i16] [i16 73, i16 115, i16 75, i16 97, i16 110, i16 103, i16 120, i16 105, i16 82, i16 97, i16 100, i16 105, i16 99, i16 97, i16 108, i16 115], [77 x i16] zeroinitializer }>, <{ [34 x i16], [59 x i16] }> <{ [34 x i16] [i16 73, i16 115, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 105, i16 99, i16 68, i16 101, i16 115, i16 99, i16 114, i16 105, i16 112, i16 116, i16 105, i16 111, i16 110, i16 67, i16 104, i16 97, i16 114, i16 97, i16 99, i16 116, i16 101, i16 114, i16 115], [59 x i16] zeroinitializer }>, <{ [26 x i16], [67 x i16] }> <{ [26 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115, i16 97, i16 110, i16 100, i16 80, i16 117, i16 110, i16 99, i16 116, i16 117, i16 97, i16 116, i16 105, i16 111, i16 110], [67 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 72, i16 105, i16 114, i16 97, i16 103, i16 97, i16 110, i16 97], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 75, i16 97, i16 116, i16 97, i16 107, i16 97, i16 110, i16 97], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 66, i16 111, i16 112, i16 111, i16 109, i16 111, i16 102, i16 111], [83 x i16] zeroinitializer }>, <{ [25 x i16], [68 x i16] }> <{ [25 x i16] [i16 73, i16 115, i16 72, i16 97, i16 110, i16 103, i16 117, i16 108, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 74, i16 97, i16 109, i16 111], [68 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 75, i16 97, i16 110, i16 98, i16 117, i16 110], [85 x i16] zeroinitializer }>, <{ [18 x i16], [75 x i16] }> <{ [18 x i16] [i16 73, i16 115, i16 66, i16 111, i16 112, i16 111, i16 109, i16 111, i16 102, i16 111, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100], [75 x i16] zeroinitializer }>, <{ [29 x i16], [64 x i16] }> <{ [29 x i16] [i16 73, i16 115, i16 69, i16 110, i16 99, i16 108, i16 111, i16 115, i16 101, i16 100, i16 67, i16 74, i16 75, i16 76, i16 101, i16 116, i16 116, i16 101, i16 114, i16 115, i16 97, i16 110, i16 100, i16 77, i16 111, i16 110, i16 116, i16 104, i16 115], [64 x i16] zeroinitializer }>, <{ [18 x i16], [75 x i16] }> <{ [18 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121], [75 x i16] zeroinitializer }>, <{ [32 x i16], [61 x i16] }> <{ [32 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115, i16 69, i16 120, i16 116, i16 101, i16 110, i16 115, i16 105, i16 111, i16 110, i16 65], [61 x i16] zeroinitializer }>, <{ [22 x i16], [71 x i16] }> <{ [22 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115], [71 x i16] zeroinitializer }>, <{ [13 x i16], [80 x i16] }> <{ [13 x i16] [i16 73, i16 115, i16 89, i16 105, i16 83, i16 121, i16 108, i16 108, i16 97, i16 98, i16 108, i16 101, i16 115], [80 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 89, i16 105, i16 82, i16 97, i16 100, i16 105, i16 99, i16 97, i16 108, i16 115], [81 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 72, i16 97, i16 110, i16 103, i16 117, i16 108, i16 83, i16 121, i16 108, i16 108, i16 97, i16 98, i16 108, i16 101, i16 115], [76 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 80, i16 114, i16 105, i16 118, i16 97, i16 116, i16 101, i16 85, i16 115, i16 101], [81 x i16] zeroinitializer }>, <{ [28 x i16], [65 x i16] }> <{ [28 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115], [65 x i16] zeroinitializer }>, <{ [29 x i16], [64 x i16] }> <{ [29 x i16] [i16 73, i16 115, i16 65, i16 108, i16 112, i16 104, i16 97, i16 98, i16 101, i16 116, i16 105, i16 99, i16 80, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 116, i16 105, i16 111, i16 110, i16 70, i16 111, i16 114, i16 109, i16 115], [64 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 65, i16 114, i16 97, i16 98, i16 105, i16 99, i16 80, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 116, i16 105, i16 111, i16 110, i16 70, i16 111, i16 114, i16 109, i16 115, i16 45, i16 65], [66 x i16] zeroinitializer }>, <{ [20 x i16], [73 x i16] }> <{ [20 x i16] [i16 73, i16 115, i16 67, i16 111, i16 109, i16 98, i16 105, i16 110, i16 105, i16 110, i16 103, i16 72, i16 97, i16 108, i16 102, i16 77, i16 97, i16 114, i16 107, i16 115], [73 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 70, i16 111, i16 114, i16 109, i16 115], [70 x i16] zeroinitializer }>, <{ [19 x i16], [74 x i16] }> <{ [19 x i16] [i16 73, i16 115, i16 83, i16 109, i16 97, i16 108, i16 108, i16 70, i16 111, i16 114, i16 109, i16 86, i16 97, i16 114, i16 105, i16 97, i16 110, i16 116, i16 115], [74 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 65, i16 114, i16 97, i16 98, i16 105, i16 99, i16 80, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 116, i16 105, i16 111, i16 110, i16 70, i16 111, i16 114, i16 109, i16 115, i16 45, i16 66], [66 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 83, i16 112, i16 101, i16 99, i16 105, i16 97, i16 108, i16 115], [83 x i16] zeroinitializer }>, <{ [28 x i16], [65 x i16] }> <{ [28 x i16] [i16 73, i16 115, i16 72, i16 97, i16 108, i16 102, i16 119, i16 105, i16 100, i16 116, i16 104, i16 97, i16 110, i16 100, i16 70, i16 117, i16 108, i16 108, i16 119, i16 105, i16 100, i16 116, i16 104, i16 70, i16 111, i16 114, i16 109, i16 115], [65 x i16] zeroinitializer }>, <{ [11 x i16], [82 x i16] }> <{ [11 x i16] [i16 73, i16 115, i16 79, i16 108, i16 100, i16 73, i16 116, i16 97, i16 108, i16 105, i16 99], [82 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 71, i16 111, i16 116, i16 104, i16 105, i16 99], [85 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 68, i16 101, i16 115, i16 101, i16 114, i16 101, i16 116], [84 x i16] zeroinitializer }>, <{ [25 x i16], [68 x i16] }> <{ [25 x i16] [i16 73, i16 115, i16 66, i16 121, i16 122, i16 97, i16 110, i16 116, i16 105, i16 110, i16 101, i16 77, i16 117, i16 115, i16 105, i16 99, i16 97, i16 108, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [68 x i16] zeroinitializer }>, <{ [14 x i16], [79 x i16] }> <{ [14 x i16] [i16 77, i16 117, i16 115, i16 105, i16 99, i16 97, i16 108, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [79 x i16] zeroinitializer }>, <{ [33 x i16], [60 x i16] }> <{ [33 x i16] [i16 73, i16 115, i16 77, i16 97, i16 116, i16 104, i16 101, i16 109, i16 97, i16 116, i16 105, i16 99, i16 97, i16 108, i16 65, i16 108, i16 112, i16 104, i16 97, i16 110, i16 117, i16 109, i16 101, i16 114, i16 105, i16 99, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [60 x i16] zeroinitializer }>, <{ [32 x i16], [61 x i16] }> <{ [32 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115, i16 69, i16 120, i16 116, i16 101, i16 110, i16 115, i16 105, i16 111, i16 110, i16 66], [61 x i16] zeroinitializer }>, <{ [38 x i16], [55 x i16] }> <{ [38 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115, i16 83, i16 117, i16 112, i16 112, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116], [55 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }> <{ i16 73, i16 115, i16 84, i16 97, i16 103, i16 115, [87 x i16] zeroinitializer }> }>, align 16
@_ZN11xercesc_2_7L15fgBlockCategoryE = internal constant [6 x i16] [i16 66, i16 76, i16 79, i16 67, i16 75, i16 0], align 2

@_ZN11xercesc_2_717BlockRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717BlockRangeFactoryC2Ev
@_ZN11xercesc_2_717BlockRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717BlockRangeFactoryD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717BlockRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !42, !range !47, !noundef !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %12, !prof !49

6:                                                ; preds = %7
  store i8 1, ptr %3, align 1, !tbaa !42
  br label %12

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %10, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %8
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %9, ptr noundef nonnull @_ZN11xercesc_2_7L15fgBlockCategoryE) #5
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 93
  br i1 %11, label %6, label %7, !prof !50, !llvm.loop !51

12:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !54, !range !47, !noundef !48
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !42, !range !47, !noundef !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !55
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) #5
  br label %14

14:                                               ; preds = %10, %6
  %15 = tail call noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #5
  br label %17

16:                                               ; preds = %54
  store i8 1, ptr %3, align 8, !tbaa !54
  br label %61

17:                                               ; preds = %14, %54
  %18 = phi i64 [ 0, %14 ], [ %59, %54 ]
  %19 = phi i8 [ 0, %14 ], [ %55, %54 ]
  %20 = phi i8 [ 0, %14 ], [ %41, %54 ]
  %21 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %15, i1 noundef zeroext false) #5
  %22 = shl nuw nsw i64 %18, 1
  %23 = getelementptr inbounds [187 x i32], ptr @_ZN11xercesc_2_7L11blockRangesE, i64 0, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = or disjoint i64 %22, 1
  %26 = getelementptr inbounds [187 x i32], ptr @_ZN11xercesc_2_7L11blockRangesE, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !57
  %28 = load ptr, ptr %21, align 8, !tbaa !55
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef %24, i32 noundef %27) #5
  %31 = and i8 %20, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %18
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %34, ptr noundef nonnull @_ZN11xercesc_2_7L17fgBlockIsSpecialsE) #5
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load ptr, ptr %21, align 8, !tbaa !55
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef 65520, i32 noundef 65533) #5
  br label %40

40:                                               ; preds = %36, %33, %17
  %41 = phi i8 [ %20, %17 ], [ 1, %36 ], [ %20, %33 ]
  %42 = and i8 %19, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %18
  %46 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %45, ptr noundef nonnull @_ZN11xercesc_2_7L19fgBlockIsPrivateUseE) #5
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load ptr, ptr %21, align 8, !tbaa !55
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef 983040, i32 noundef 1048573) #5
  %51 = load ptr, ptr %21, align 8, !tbaa !55
  %52 = getelementptr inbounds ptr, ptr %51, i64 12
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef 1048576, i32 noundef 1114109) #5
  br label %54

54:                                               ; preds = %47, %44, %40
  %55 = phi i8 [ %19, %40 ], [ 1, %47 ], [ %19, %44 ]
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %21) #5
  %56 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %18
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %56, ptr noundef nonnull %21, i1 noundef zeroext false) #5
  %57 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  %58 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %21, ptr noundef nonnull %15, ptr noundef %57) #5
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %58) #5
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %56, ptr noundef nonnull %58, i1 noundef zeroext true) #5
  %59 = add nuw nsw i64 %18, 1
  %60 = icmp eq i64 %59, 93
  br i1 %60, label %16, label %17, !llvm.loop !61

61:                                               ; preds = %2, %16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #1 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717BlockRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713RangeTokenMap15getTokenFactoryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !66

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !67
  %8 = load i16, ptr %1, align 2, !tbaa !67
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !69

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !70

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !67
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !71

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !72

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !67
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !73

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !74

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !67
  %28 = load i16, ptr %26, align 2, !tbaa !67
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !75, !llvm.loop !76

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !81

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_717BlockRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 31}
!37 = !{ptr @_ZN11xercesc_2_717BlockRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717BlockRangeFactoryD2Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !44, i64 9}
!43 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !44, i64 8, !44, i64 9}
!44 = !{!"bool", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!"branch_weights", i32 2, i32 1}
!50 = !{!"branch_weights", i32 2, i32 92}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!43, !44, i64 8}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !46, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !45, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !45, i64 0}
!61 = distinct !{!61, !52}
!62 = !{!63, !60, i64 24}
!63 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !64, i64 32}
!64 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !60, i64 0}
!65 = !{!"function_entry_count", i64 1231717351}
!66 = !{!"branch_weights", i32 621, i32 -1469098093}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !45, i64 0}
!69 = !{!"branch_weights", i32 408901017, i32 1}
!70 = !{!"branch_weights", i32 267, i32 4}
!71 = !{!"branch_weights", i32 1, i32 4}
!72 = !{!"branch_weights", i32 156, i32 112}
!73 = !{!"branch_weights", i32 1, i32 112}
!74 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!75 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!76 = distinct !{!76, !52}
!77 = !{!"function_entry_count", i64 1301042}
!78 = !{!79, !60, i64 40}
!79 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !80, i64 0, !44, i64 24, !44, i64 25, !58, i64 28, !58, i64 32, !58, i64 36, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64}
!80 = !{!"_ZTSN11xercesc_2_75TokenE", !68, i64 8, !60, i64 16}
!81 = !{!"branch_weights", i32 18, i32 1301026}
