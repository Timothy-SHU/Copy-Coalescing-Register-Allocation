; ModuleID = 'BlockRangeFactory.cpp'
source_filename = "BlockRangeFactory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeFactory" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RangeTokenMap" = type { ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLMutex" }
%"class.xercesc_2_7::XMLMutex" = type { ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }

@_ZTVN11xercesc_2_717BlockRangeFactoryE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717BlockRangeFactoryE, ptr @_ZN11xercesc_2_717BlockRangeFactoryD2Ev, ptr @_ZN11xercesc_2_717BlockRangeFactoryD0Ev, ptr @_ZN11xercesc_2_717BlockRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_717BlockRangeFactory11buildRangesEPNS_13RangeTokenMapE] }, align 8
@_ZN11xercesc_2_7L11blockRangesE = internal unnamed_addr constant [187 x i32] [i32 0, i32 127, i32 128, i32 255, i32 256, i32 383, i32 384, i32 591, i32 592, i32 687, i32 688, i32 767, i32 768, i32 879, i32 880, i32 1023, i32 1024, i32 1279, i32 1328, i32 1423, i32 1424, i32 1535, i32 1536, i32 1791, i32 1792, i32 1871, i32 1920, i32 1983, i32 2304, i32 2431, i32 2432, i32 2559, i32 2560, i32 2687, i32 2688, i32 2815, i32 2816, i32 2943, i32 2944, i32 3071, i32 3072, i32 3199, i32 3200, i32 3327, i32 3328, i32 3455, i32 3456, i32 3583, i32 3584, i32 3711, i32 3712, i32 3839, i32 3840, i32 4095, i32 4096, i32 4255, i32 4256, i32 4351, i32 4352, i32 4607, i32 4608, i32 4991, i32 5024, i32 5119, i32 5120, i32 5759, i32 5760, i32 5791, i32 5792, i32 5887, i32 6016, i32 6143, i32 6144, i32 6319, i32 7680, i32 7935, i32 7936, i32 8191, i32 8192, i32 8303, i32 8304, i32 8351, i32 8352, i32 8399, i32 8400, i32 8447, i32 8448, i32 8527, i32 8528, i32 8591, i32 8592, i32 8703, i32 8704, i32 8959, i32 8960, i32 9215, i32 9216, i32 9279, i32 9280, i32 9311, i32 9312, i32 9471, i32 9472, i32 9599, i32 9600, i32 9631, i32 9632, i32 9727, i32 9728, i32 9983, i32 9984, i32 10175, i32 10240, i32 10495, i32 11904, i32 12031, i32 12032, i32 12255, i32 12272, i32 12287, i32 12288, i32 12351, i32 12352, i32 12447, i32 12448, i32 12543, i32 12544, i32 12591, i32 12592, i32 12687, i32 12688, i32 12703, i32 12704, i32 12735, i32 12800, i32 13055, i32 13056, i32 13311, i32 13312, i32 19893, i32 19968, i32 40959, i32 40960, i32 42127, i32 42128, i32 42191, i32 44032, i32 55203, i32 57344, i32 63743, i32 63744, i32 64255, i32 64256, i32 64335, i32 64336, i32 65023, i32 65056, i32 65071, i32 65072, i32 65103, i32 65104, i32 65135, i32 65136, i32 65278, i32 65279, i32 65279, i32 65280, i32 65519, i32 66304, i32 66351, i32 66352, i32 66383, i32 66560, i32 66639, i32 118784, i32 119039, i32 119040, i32 119295, i32 119808, i32 120831, i32 131072, i32 173782, i32 194560, i32 195103, i32 917504, i32 917631, i32 0], align 16
@_ZN11xercesc_2_7L17fgBlockIsSpecialsE = internal unnamed_addr constant [11 x i16] [i16 73, i16 115, i16 83, i16 112, i16 101, i16 99, i16 105, i16 97, i16 108, i16 115, i16 0], align 16
@_ZN11xercesc_2_7L19fgBlockIsPrivateUseE = internal unnamed_addr constant [13 x i16] [i16 73, i16 115, i16 80, i16 114, i16 105, i16 118, i16 97, i16 116, i16 101, i16 85, i16 115, i16 101, i16 0], align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L15fgBlockCategoryE = internal constant [6 x i16] [i16 66, i16 76, i16 79, i16 67, i16 75, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717BlockRangeFactoryE = dso_local constant [35 x i8] c"N11xercesc_2_717BlockRangeFactoryE\00", align 1
@_ZTIN11xercesc_2_712RangeFactoryE = external constant ptr
@_ZTIN11xercesc_2_717BlockRangeFactoryE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717BlockRangeFactoryE, ptr @_ZTIN11xercesc_2_712RangeFactoryE }, align 8
@_ZN11xercesc_2_7L12fgBlockNamesE = internal constant <{ <{ [12 x i16], [81 x i16] }>, <{ [19 x i16], [74 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [15 x i16], [78 x i16] }>, <{ [24 x i16], [69 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [11 x i16], [82 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }>, <{ i16, i16, i16, i16, i16, [88 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [36 x i16], [57 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }>, <{ [11 x i16], [82 x i16] }>, <{ [25 x i16], [68 x i16] }>, <{ [15 x i16], [78 x i16] }>, <{ [20 x i16], [73 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [26 x i16], [67 x i16] }>, <{ [19 x i16], [74 x i16] }>, <{ [13 x i16], [80 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [24 x i16], [69 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [29 x i16], [64 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [15 x i16], [78 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [22 x i16], [71 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [16 x i16], [77 x i16] }>, <{ [34 x i16], [59 x i16] }>, <{ [26 x i16], [67 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [25 x i16], [68 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [18 x i16], [75 x i16] }>, <{ [29 x i16], [64 x i16] }>, <{ [18 x i16], [75 x i16] }>, <{ [32 x i16], [61 x i16] }>, <{ [22 x i16], [71 x i16] }>, <{ [13 x i16], [80 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [17 x i16], [76 x i16] }>, <{ [12 x i16], [81 x i16] }>, <{ [28 x i16], [65 x i16] }>, <{ [29 x i16], [64 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ [20 x i16], [73 x i16] }>, <{ [23 x i16], [70 x i16] }>, <{ [19 x i16], [74 x i16] }>, <{ [27 x i16], [66 x i16] }>, <{ [10 x i16], [83 x i16] }>, <{ [28 x i16], [65 x i16] }>, <{ [11 x i16], [82 x i16] }>, <{ [8 x i16], [85 x i16] }>, <{ [9 x i16], [84 x i16] }>, <{ [25 x i16], [68 x i16] }>, <{ [14 x i16], [79 x i16] }>, <{ [33 x i16], [60 x i16] }>, <{ [32 x i16], [61 x i16] }>, <{ [38 x i16], [55 x i16] }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }> }> <{ <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 66, i16 97, i16 115, i16 105, i16 99, i16 76, i16 97, i16 116, i16 105, i16 110], [81 x i16] zeroinitializer }>, <{ [19 x i16], [74 x i16] }> <{ [19 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 45, i16 49, i16 83, i16 117, i16 112, i16 112, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116], [74 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100, i16 45, i16 65], [76 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100, i16 45, i16 66], [76 x i16] zeroinitializer }>, <{ [15 x i16], [78 x i16] }> <{ [15 x i16] [i16 73, i16 115, i16 73, i16 80, i16 65, i16 69, i16 120, i16 116, i16 101, i16 110, i16 115, i16 105, i16 111, i16 110, i16 115], [78 x i16] zeroinitializer }>, <{ [24 x i16], [69 x i16] }> <{ [24 x i16] [i16 73, i16 115, i16 83, i16 112, i16 97, i16 99, i16 105, i16 110, i16 103, i16 77, i16 111, i16 100, i16 105, i16 102, i16 105, i16 101, i16 114, i16 76, i16 101, i16 116, i16 116, i16 101, i16 114, i16 115], [69 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 67, i16 111, i16 109, i16 98, i16 105, i16 110, i16 105, i16 110, i16 103, i16 68, i16 105, i16 97, i16 99, i16 114, i16 105, i16 116, i16 105, i16 99, i16 97, i16 108, i16 77, i16 97, i16 114, i16 107, i16 115], [66 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 71, i16 114, i16 101, i16 101, i16 107, [86 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 67, i16 121, i16 114, i16 105, i16 108, i16 108, i16 105, i16 99], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 65, i16 114, i16 109, i16 101, i16 110, i16 105, i16 97, i16 110], [83 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 72, i16 101, i16 98, i16 114, i16 101, i16 119], [85 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 65, i16 114, i16 97, i16 98, i16 105, i16 99], [85 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 83, i16 121, i16 114, i16 105, i16 97, i16 99], [85 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 84, i16 104, i16 97, i16 97, i16 110, i16 97], [85 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 68, i16 101, i16 118, i16 97, i16 110, i16 97, i16 103, i16 97, i16 114, i16 105], [81 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 66, i16 101, i16 110, i16 103, i16 97, i16 108, i16 105], [84 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 71, i16 117, i16 114, i16 109, i16 117, i16 107, i16 104, i16 105], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 71, i16 117, i16 106, i16 97, i16 114, i16 97, i16 116, i16 105], [83 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 79, i16 114, i16 105, i16 121, i16 97, [86 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 84, i16 97, i16 109, i16 105, i16 108, [86 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 84, i16 101, i16 108, i16 117, i16 103, i16 117], [85 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 75, i16 97, i16 110, i16 110, i16 97, i16 100, i16 97], [84 x i16] zeroinitializer }>, <{ [11 x i16], [82 x i16] }> <{ [11 x i16] [i16 73, i16 115, i16 77, i16 97, i16 108, i16 97, i16 121, i16 97, i16 108, i16 97, i16 109], [82 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 83, i16 105, i16 110, i16 104, i16 97, i16 108, i16 97], [84 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }> <{ i16 73, i16 115, i16 84, i16 104, i16 97, i16 105, [87 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, [88 x i16] }> <{ i16 73, i16 115, i16 76, i16 97, i16 111, [88 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 84, i16 105, i16 98, i16 101, i16 116, i16 97, i16 110], [84 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 77, i16 121, i16 97, i16 110, i16 109, i16 97, i16 114], [84 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 71, i16 101, i16 111, i16 114, i16 103, i16 105, i16 97, i16 110], [83 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 72, i16 97, i16 110, i16 103, i16 117, i16 108, i16 74, i16 97, i16 109, i16 111], [81 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 69, i16 116, i16 104, i16 105, i16 111, i16 112, i16 105, i16 99], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 67, i16 104, i16 101, i16 114, i16 111, i16 107, i16 101, i16 101], [83 x i16] zeroinitializer }>, <{ [36 x i16], [57 x i16] }> <{ [36 x i16] [i16 73, i16 115, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 67, i16 97, i16 110, i16 97, i16 100, i16 105, i16 97, i16 110, i16 65, i16 98, i16 111, i16 114, i16 105, i16 103, i16 105, i16 110, i16 97, i16 108, i16 83, i16 121, i16 108, i16 108, i16 97, i16 98, i16 105, i16 99, i16 115], [57 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 79, i16 103, i16 104, i16 97, i16 109, [86 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 82, i16 117, i16 110, i16 105, i16 99, [86 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, i16, [86 x i16] }> <{ i16 73, i16 115, i16 75, i16 104, i16 109, i16 101, i16 114, [86 x i16] zeroinitializer }>, <{ [11 x i16], [82 x i16] }> <{ [11 x i16] [i16 73, i16 115, i16 77, i16 111, i16 110, i16 103, i16 111, i16 108, i16 105, i16 97, i16 110], [82 x i16] zeroinitializer }>, <{ [25 x i16], [68 x i16] }> <{ [25 x i16] [i16 73, i16 115, i16 76, i16 97, i16 116, i16 105, i16 110, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100, i16 65, i16 100, i16 100, i16 105, i16 116, i16 105, i16 111, i16 110, i16 97, i16 108], [68 x i16] zeroinitializer }>, <{ [15 x i16], [78 x i16] }> <{ [15 x i16] [i16 73, i16 115, i16 71, i16 114, i16 101, i16 101, i16 107, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100], [78 x i16] zeroinitializer }>, <{ [20 x i16], [73 x i16] }> <{ [20 x i16] [i16 73, i16 115, i16 71, i16 101, i16 110, i16 101, i16 114, i16 97, i16 108, i16 80, i16 117, i16 110, i16 99, i16 116, i16 117, i16 97, i16 116, i16 105, i16 111, i16 110], [73 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 83, i16 117, i16 112, i16 101, i16 114, i16 115, i16 99, i16 114, i16 105, i16 112, i16 116, i16 115, i16 97, i16 110, i16 100, i16 83, i16 117, i16 98, i16 115, i16 99, i16 114, i16 105, i16 112, i16 116, i16 115], [66 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 67, i16 117, i16 114, i16 114, i16 101, i16 110, i16 99, i16 121, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [76 x i16] zeroinitializer }>, <{ [26 x i16], [67 x i16] }> <{ [26 x i16] [i16 73, i16 115, i16 67, i16 111, i16 109, i16 98, i16 105, i16 110, i16 105, i16 110, i16 103, i16 77, i16 97, i16 114, i16 107, i16 115, i16 102, i16 111, i16 114, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [67 x i16] zeroinitializer }>, <{ [19 x i16], [74 x i16] }> <{ [19 x i16] [i16 73, i16 115, i16 76, i16 101, i16 116, i16 116, i16 101, i16 114, i16 108, i16 105, i16 107, i16 101, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [74 x i16] zeroinitializer }>, <{ [13 x i16], [80 x i16] }> <{ [13 x i16] [i16 73, i16 115, i16 78, i16 117, i16 109, i16 98, i16 101, i16 114, i16 70, i16 111, i16 114, i16 109, i16 115], [80 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 65, i16 114, i16 114, i16 111, i16 119, i16 115], [85 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 77, i16 97, i16 116, i16 104, i16 101, i16 109, i16 97, i16 116, i16 105, i16 99, i16 97, i16 108, i16 79, i16 112, i16 101, i16 114, i16 97, i16 116, i16 111, i16 114, i16 115], [70 x i16] zeroinitializer }>, <{ [24 x i16], [69 x i16] }> <{ [24 x i16] [i16 73, i16 115, i16 77, i16 105, i16 115, i16 99, i16 101, i16 108, i16 108, i16 97, i16 110, i16 101, i16 111, i16 117, i16 115, i16 84, i16 101, i16 99, i16 104, i16 110, i16 105, i16 99, i16 97, i16 108], [69 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 67, i16 111, i16 110, i16 116, i16 114, i16 111, i16 108, i16 80, i16 105, i16 99, i16 116, i16 117, i16 114, i16 101, i16 115], [76 x i16] zeroinitializer }>, <{ [29 x i16], [64 x i16] }> <{ [29 x i16] [i16 73, i16 115, i16 79, i16 112, i16 116, i16 105, i16 99, i16 97, i16 108, i16 67, i16 104, i16 97, i16 114, i16 97, i16 99, i16 116, i16 101, i16 114, i16 82, i16 101, i16 99, i16 111, i16 103, i16 110, i16 105, i16 116, i16 105, i16 111, i16 110], [64 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 69, i16 110, i16 99, i16 108, i16 111, i16 115, i16 101, i16 100, i16 65, i16 108, i16 112, i16 104, i16 97, i16 110, i16 117, i16 109, i16 101, i16 114, i16 105, i16 99, i16 115], [70 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 66, i16 111, i16 120, i16 68, i16 114, i16 97, i16 119, i16 105, i16 110, i16 103], [81 x i16] zeroinitializer }>, <{ [15 x i16], [78 x i16] }> <{ [15 x i16] [i16 73, i16 115, i16 66, i16 108, i16 111, i16 99, i16 107, i16 69, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116, i16 115], [78 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 71, i16 101, i16 111, i16 109, i16 101, i16 116, i16 114, i16 105, i16 99, i16 83, i16 104, i16 97, i16 112, i16 101, i16 115], [76 x i16] zeroinitializer }>, <{ [22 x i16], [71 x i16] }> <{ [22 x i16] [i16 73, i16 115, i16 77, i16 105, i16 115, i16 99, i16 101, i16 108, i16 108, i16 97, i16 110, i16 101, i16 111, i16 117, i16 115, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [71 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 68, i16 105, i16 110, i16 103, i16 98, i16 97, i16 116, i16 115], [83 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 66, i16 114, i16 97, i16 105, i16 108, i16 108, i16 101, i16 80, i16 97, i16 116, i16 116, i16 101, i16 114, i16 110, i16 115], [76 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 82, i16 97, i16 100, i16 105, i16 99, i16 97, i16 108, i16 115, i16 83, i16 117, i16 112, i16 112, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116], [70 x i16] zeroinitializer }>, <{ [16 x i16], [77 x i16] }> <{ [16 x i16] [i16 73, i16 115, i16 75, i16 97, i16 110, i16 103, i16 120, i16 105, i16 82, i16 97, i16 100, i16 105, i16 99, i16 97, i16 108, i16 115], [77 x i16] zeroinitializer }>, <{ [34 x i16], [59 x i16] }> <{ [34 x i16] [i16 73, i16 115, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 105, i16 99, i16 68, i16 101, i16 115, i16 99, i16 114, i16 105, i16 112, i16 116, i16 105, i16 111, i16 110, i16 67, i16 104, i16 97, i16 114, i16 97, i16 99, i16 116, i16 101, i16 114, i16 115], [59 x i16] zeroinitializer }>, <{ [26 x i16], [67 x i16] }> <{ [26 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115, i16 97, i16 110, i16 100, i16 80, i16 117, i16 110, i16 99, i16 116, i16 117, i16 97, i16 116, i16 105, i16 111, i16 110], [67 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 72, i16 105, i16 114, i16 97, i16 103, i16 97, i16 110, i16 97], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 75, i16 97, i16 116, i16 97, i16 107, i16 97, i16 110, i16 97], [83 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 66, i16 111, i16 112, i16 111, i16 109, i16 111, i16 102, i16 111], [83 x i16] zeroinitializer }>, <{ [25 x i16], [68 x i16] }> <{ [25 x i16] [i16 73, i16 115, i16 72, i16 97, i16 110, i16 103, i16 117, i16 108, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 74, i16 97, i16 109, i16 111], [68 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 75, i16 97, i16 110, i16 98, i16 117, i16 110], [85 x i16] zeroinitializer }>, <{ [18 x i16], [75 x i16] }> <{ [18 x i16] [i16 73, i16 115, i16 66, i16 111, i16 112, i16 111, i16 109, i16 111, i16 102, i16 111, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 101, i16 100], [75 x i16] zeroinitializer }>, <{ [29 x i16], [64 x i16] }> <{ [29 x i16] [i16 73, i16 115, i16 69, i16 110, i16 99, i16 108, i16 111, i16 115, i16 101, i16 100, i16 67, i16 74, i16 75, i16 76, i16 101, i16 116, i16 116, i16 101, i16 114, i16 115, i16 97, i16 110, i16 100, i16 77, i16 111, i16 110, i16 116, i16 104, i16 115], [64 x i16] zeroinitializer }>, <{ [18 x i16], [75 x i16] }> <{ [18 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121], [75 x i16] zeroinitializer }>, <{ [32 x i16], [61 x i16] }> <{ [32 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115, i16 69, i16 120, i16 116, i16 101, i16 110, i16 115, i16 105, i16 111, i16 110, i16 65], [61 x i16] zeroinitializer }>, <{ [22 x i16], [71 x i16] }> <{ [22 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115], [71 x i16] zeroinitializer }>, <{ [13 x i16], [80 x i16] }> <{ [13 x i16] [i16 73, i16 115, i16 89, i16 105, i16 83, i16 121, i16 108, i16 108, i16 97, i16 98, i16 108, i16 101, i16 115], [80 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 89, i16 105, i16 82, i16 97, i16 100, i16 105, i16 99, i16 97, i16 108, i16 115], [81 x i16] zeroinitializer }>, <{ [17 x i16], [76 x i16] }> <{ [17 x i16] [i16 73, i16 115, i16 72, i16 97, i16 110, i16 103, i16 117, i16 108, i16 83, i16 121, i16 108, i16 108, i16 97, i16 98, i16 108, i16 101, i16 115], [76 x i16] zeroinitializer }>, <{ [12 x i16], [81 x i16] }> <{ [12 x i16] [i16 73, i16 115, i16 80, i16 114, i16 105, i16 118, i16 97, i16 116, i16 101, i16 85, i16 115, i16 101], [81 x i16] zeroinitializer }>, <{ [28 x i16], [65 x i16] }> <{ [28 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115], [65 x i16] zeroinitializer }>, <{ [29 x i16], [64 x i16] }> <{ [29 x i16] [i16 73, i16 115, i16 65, i16 108, i16 112, i16 104, i16 97, i16 98, i16 101, i16 116, i16 105, i16 99, i16 80, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 116, i16 105, i16 111, i16 110, i16 70, i16 111, i16 114, i16 109, i16 115], [64 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 65, i16 114, i16 97, i16 98, i16 105, i16 99, i16 80, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 116, i16 105, i16 111, i16 110, i16 70, i16 111, i16 114, i16 109, i16 115, i16 45, i16 65], [66 x i16] zeroinitializer }>, <{ [20 x i16], [73 x i16] }> <{ [20 x i16] [i16 73, i16 115, i16 67, i16 111, i16 109, i16 98, i16 105, i16 110, i16 105, i16 110, i16 103, i16 72, i16 97, i16 108, i16 102, i16 77, i16 97, i16 114, i16 107, i16 115], [73 x i16] zeroinitializer }>, <{ [23 x i16], [70 x i16] }> <{ [23 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 70, i16 111, i16 114, i16 109, i16 115], [70 x i16] zeroinitializer }>, <{ [19 x i16], [74 x i16] }> <{ [19 x i16] [i16 73, i16 115, i16 83, i16 109, i16 97, i16 108, i16 108, i16 70, i16 111, i16 114, i16 109, i16 86, i16 97, i16 114, i16 105, i16 97, i16 110, i16 116, i16 115], [74 x i16] zeroinitializer }>, <{ [27 x i16], [66 x i16] }> <{ [27 x i16] [i16 73, i16 115, i16 65, i16 114, i16 97, i16 98, i16 105, i16 99, i16 80, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 116, i16 105, i16 111, i16 110, i16 70, i16 111, i16 114, i16 109, i16 115, i16 45, i16 66], [66 x i16] zeroinitializer }>, <{ [10 x i16], [83 x i16] }> <{ [10 x i16] [i16 73, i16 115, i16 83, i16 112, i16 101, i16 99, i16 105, i16 97, i16 108, i16 115], [83 x i16] zeroinitializer }>, <{ [28 x i16], [65 x i16] }> <{ [28 x i16] [i16 73, i16 115, i16 72, i16 97, i16 108, i16 102, i16 119, i16 105, i16 100, i16 116, i16 104, i16 97, i16 110, i16 100, i16 70, i16 117, i16 108, i16 108, i16 119, i16 105, i16 100, i16 116, i16 104, i16 70, i16 111, i16 114, i16 109, i16 115], [65 x i16] zeroinitializer }>, <{ [11 x i16], [82 x i16] }> <{ [11 x i16] [i16 73, i16 115, i16 79, i16 108, i16 100, i16 73, i16 116, i16 97, i16 108, i16 105, i16 99], [82 x i16] zeroinitializer }>, <{ [8 x i16], [85 x i16] }> <{ [8 x i16] [i16 73, i16 115, i16 71, i16 111, i16 116, i16 104, i16 105, i16 99], [85 x i16] zeroinitializer }>, <{ [9 x i16], [84 x i16] }> <{ [9 x i16] [i16 73, i16 115, i16 68, i16 101, i16 115, i16 101, i16 114, i16 101, i16 116], [84 x i16] zeroinitializer }>, <{ [25 x i16], [68 x i16] }> <{ [25 x i16] [i16 73, i16 115, i16 66, i16 121, i16 122, i16 97, i16 110, i16 116, i16 105, i16 110, i16 101, i16 77, i16 117, i16 115, i16 105, i16 99, i16 97, i16 108, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [68 x i16] zeroinitializer }>, <{ [14 x i16], [79 x i16] }> <{ [14 x i16] [i16 77, i16 117, i16 115, i16 105, i16 99, i16 97, i16 108, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [79 x i16] zeroinitializer }>, <{ [33 x i16], [60 x i16] }> <{ [33 x i16] [i16 73, i16 115, i16 77, i16 97, i16 116, i16 104, i16 101, i16 109, i16 97, i16 116, i16 105, i16 99, i16 97, i16 108, i16 65, i16 108, i16 112, i16 104, i16 97, i16 110, i16 117, i16 109, i16 101, i16 114, i16 105, i16 99, i16 83, i16 121, i16 109, i16 98, i16 111, i16 108, i16 115], [60 x i16] zeroinitializer }>, <{ [32 x i16], [61 x i16] }> <{ [32 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 85, i16 110, i16 105, i16 102, i16 105, i16 101, i16 100, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115, i16 69, i16 120, i16 116, i16 101, i16 110, i16 115, i16 105, i16 111, i16 110, i16 66], [61 x i16] zeroinitializer }>, <{ [38 x i16], [55 x i16] }> <{ [38 x i16] [i16 73, i16 115, i16 67, i16 74, i16 75, i16 67, i16 111, i16 109, i16 112, i16 97, i16 116, i16 105, i16 98, i16 105, i16 108, i16 105, i16 116, i16 121, i16 73, i16 100, i16 101, i16 111, i16 103, i16 114, i16 97, i16 112, i16 104, i16 115, i16 83, i16 117, i16 112, i16 112, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116], [55 x i16] zeroinitializer }>, <{ i16, i16, i16, i16, i16, i16, [87 x i16] }> <{ i16 73, i16 115, i16 84, i16 97, i16 103, i16 115, [87 x i16] zeroinitializer }> }>, align 16

@_ZN11xercesc_2_717BlockRangeFactoryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717BlockRangeFactoryC2Ev
@_ZN11xercesc_2_717BlockRangeFactoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717BlockRangeFactoryD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #0 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_717BlockRangeFactoryE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  ret void
}

declare void @_ZN11xercesc_2_712RangeFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712RangeFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) #4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactory11buildRangesEPNS_13RangeTokenMapE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !45, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %96

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !51, !range !49, !noundef !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::RangeTokenMap", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  br label %18

17:                                               ; preds = %93
  store i8 1, ptr %3, align 8, !tbaa !45
  br label %96

18:                                               ; preds = %14, %93
  %19 = phi i64 [ 0, %14 ], [ %94, %93 ]
  %20 = phi i8 [ 0, %14 ], [ %80, %93 ]
  %21 = phi i8 [ 0, %14 ], [ %54, %93 ]
  %22 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %16, i1 noundef zeroext false)
  %23 = shl nuw nsw i64 %19, 1
  %24 = getelementptr inbounds [187 x i32], ptr @_ZN11xercesc_2_7L11blockRangesE, i64 0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !56
  %26 = or disjoint i64 %23, 1
  %27 = getelementptr inbounds [187 x i32], ptr @_ZN11xercesc_2_7L11blockRangesE, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = load ptr, ptr %22, align 8, !tbaa !41
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %22, i32 noundef %25, i32 noundef %28)
  %32 = and i8 %21, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %18
  %35 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %19
  %36 = load i16, ptr %35, align 2, !tbaa !58
  %37 = icmp eq i16 %36, 73
  br i1 %37, label %38, label %53

38:                                               ; preds = %34, %43
  %39 = phi i16 [ %46, %43 ], [ 1, %34 ]
  %40 = phi ptr [ %45, %43 ], [ @_ZN11xercesc_2_7L17fgBlockIsSpecialsE, %34 ]
  %41 = phi ptr [ %44, %43 ], [ %35, %34 ]
  %42 = icmp eq i16 %39, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds i16, ptr %41, i64 1
  %45 = getelementptr inbounds i16, ptr %40, i64 1
  %46 = load i16, ptr %44, align 2, !tbaa !58
  %47 = load i16, ptr %45, align 2, !tbaa !58
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %38, label %53, !llvm.loop !60

49:                                               ; preds = %38
  %50 = load ptr, ptr %22, align 8, !tbaa !41
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(72) %22, i32 noundef 65520, i32 noundef 65533)
  br label %53

53:                                               ; preds = %43, %34, %49, %18
  %54 = phi i8 [ %21, %18 ], [ 1, %49 ], [ %21, %34 ], [ %21, %43 ]
  %55 = and i8 %20, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %19
  %59 = load i16, ptr %58, align 2, !tbaa !58
  %60 = icmp eq i16 %59, 73
  br i1 %60, label %61, label %79

61:                                               ; preds = %57, %66
  %62 = phi i16 [ %69, %66 ], [ 1, %57 ]
  %63 = phi ptr [ %68, %66 ], [ @_ZN11xercesc_2_7L19fgBlockIsPrivateUseE, %57 ]
  %64 = phi ptr [ %67, %66 ], [ %58, %57 ]
  %65 = icmp eq i16 %62, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds i16, ptr %64, i64 1
  %68 = getelementptr inbounds i16, ptr %63, i64 1
  %69 = load i16, ptr %67, align 2, !tbaa !58
  %70 = load i16, ptr %68, align 2, !tbaa !58
  %71 = icmp eq i16 %69, %70
  br i1 %71, label %61, label %79, !llvm.loop !60

72:                                               ; preds = %61
  %73 = load ptr, ptr %22, align 8, !tbaa !41
  %74 = getelementptr inbounds ptr, ptr %73, i64 12
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(72) %22, i32 noundef 983040, i32 noundef 1048573)
  %76 = load ptr, ptr %22, align 8, !tbaa !41
  %77 = getelementptr inbounds ptr, ptr %76, i64 12
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(72) %22, i32 noundef 1048576, i32 noundef 1114109)
  br label %79

79:                                               ; preds = %66, %57, %72, %53
  %80 = phi i8 [ %20, %53 ], [ 1, %72 ], [ %20, %57 ], [ %20, %66 ]
  %81 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %22, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !63
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
  br label %85

85:                                               ; preds = %79, %84
  %86 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %19
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %86, ptr noundef nonnull %22, i1 noundef zeroext false)
  %87 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  %88 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %22, ptr noundef nonnull %16, ptr noundef %87)
  %89 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %88, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %88)
  br label %93

93:                                               ; preds = %85, %92
  tail call void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %86, ptr noundef nonnull %88, i1 noundef zeroext true)
  %94 = add nuw nsw i64 %19, 1
  %95 = icmp eq i64 %94, 93
  br i1 %95, label %17, label %18, !llvm.loop !67

96:                                               ; preds = %2, %17
  ret void
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713RangeTokenMap13setRangeTokenEPKtPNS_10RangeTokenEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717BlockRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE(ptr nocapture noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeFactory", ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !51, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %12, !prof !68

6:                                                ; preds = %7
  store i8 1, ptr %3, align 1, !tbaa !51
  br label %12

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %10, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [93 x [93 x i16]], ptr @_ZN11xercesc_2_7L12fgBlockNamesE, i64 0, i64 %8
  tail call void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %9, ptr noundef nonnull @_ZN11xercesc_2_7L15fgBlockCategoryE)
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 93
  br i1 %11, label %6, label %7, !prof !69, !llvm.loop !70

12:                                               ; preds = %2, %6
  ret void
}

declare void @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_717BlockRangeFactoryC2Ev, ptr @_ZN11xercesc_2_712RangeFactoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717BlockRangeFactoryD0Ev, ptr @_ZN11xercesc_2_712RangeFactoryD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717BlockRangeFactoryD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717BlockRangeFactory20initializeKeywordMapEPNS_13RangeTokenMapE, ptr @_ZN11xercesc_2_713RangeTokenMap13addKeywordMapEPKtS2_, i64 93}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN11xercesc_2_712RangeFactoryE", !47, i64 8, !47, i64 9}
!47 = !{!"bool", !48, i64 0}
!48 = !{!"omnipotent char", !43, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!46, !47, i64 9}
!52 = !{!53, !54, i64 24}
!53 = !{!"_ZTSN11xercesc_2_713RangeTokenMapE", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !55, i64 32}
!54 = !{!"any pointer", !48, i64 0}
!55 = !{!"_ZTSN11xercesc_2_78XMLMutexE", !54, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !48, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !48, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!64, !54, i64 40}
!64 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !65, i64 0, !47, i64 24, !47, i64 25, !57, i64 28, !57, i64 32, !57, i64 36, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64}
!65 = !{!"_ZTSN11xercesc_2_75TokenE", !59, i64 8, !54, i64 16}
!66 = !{!54, !54, i64 0}
!67 = distinct !{!67, !61, !62}
!68 = !{!"branch_weights", i32 1, i32 0}
!69 = !{!"branch_weights", i32 1, i32 92}
!70 = distinct !{!70, !61, !62}
