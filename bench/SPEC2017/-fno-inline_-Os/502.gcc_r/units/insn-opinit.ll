; ModuleID = 'insn-opinit.c'
source_filename = "insn-opinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.convert_optab_d = type { i32, ptr, ptr, [87 x [87 x %struct.optab_handlers]] }
%struct.optab_handlers = type { i32 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }

@convert_optab_table = external local_unnamed_addr global [17 x %struct.convert_optab_d], align 16
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@reload_in_progress = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@ix86_arch_features = external local_unnamed_addr global [5 x i8], align 1
@sync_old_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_lock_test_and_set = external local_unnamed_addr global [87 x i32], align 16
@sync_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@flag_excess_precision = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@linux_uclibc = external local_unnamed_addr global i32, align 4
@movmem_optab = external local_unnamed_addr global [87 x i32], align 16
@setmem_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpstrn_optab = external local_unnamed_addr global [87 x i32], align 16
@movcc_gen_code = external local_unnamed_addr global [87 x i32], align 16
@vcond_gen_code = external local_unnamed_addr global [87 x i32], align 16
@vcondu_gen_code = external local_unnamed_addr global [87 x i32], align 16
@sync_compare_and_swap = external local_unnamed_addr global [87 x i32], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_all_optabs() local_unnamed_addr #0 !prof !34 {
  store i32 94, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 16, i64 15), align 4, !tbaa !35
  store i32 95, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 15, i64 14), align 4, !tbaa !35
  store i32 96, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 16, i64 14), align 16, !tbaa !35
  %1 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !40
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !41

3:                                                ; preds = %0
  store i32 271, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 14), align 8, !tbaa !35
  store i32 272, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 4, i64 14), align 8, !tbaa !35
  br label %4

4:                                                ; preds = %0, %3
  store i32 503, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 4, i64 16), align 16, !tbaa !35
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !43

8:                                                ; preds = %4
  store i32 506, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 15), align 4, !tbaa !35
  store i32 507, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 16), align 16, !tbaa !35
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @target_flags, align 4, !tbaa !42
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !prof !43

13:                                               ; preds = %9
  store i32 575, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 40), align 16, !tbaa !35
  %14 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !44

16:                                               ; preds = %13
  store i32 589, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76, i32 4, i64 40), align 16, !tbaa !35
  store i32 611, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99, i32 4, i64 40), align 16, !tbaa !35
  br label %17

17:                                               ; preds = %9, %13, %16
  %18 = and i32 %5, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20, !prof !43

20:                                               ; preds = %17
  %21 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 681, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 38), align 8, !tbaa !35
  store i32 682, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 38), align 8, !tbaa !35
  br label %25

25:                                               ; preds = %20, %17, %24
  %26 = and i32 %5, 131072
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28, !prof !43

28:                                               ; preds = %25
  %29 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 683, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 39), align 4, !tbaa !35
  store i32 684, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 39), align 4, !tbaa !35
  br label %33

33:                                               ; preds = %28, %25, %32
  %34 = and i32 %5, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !43

36:                                               ; preds = %33
  store i32 925, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 82), align 8, !tbaa !35
  br label %37

37:                                               ; preds = %36, %33
  br i1 %27, label %39, label %38, !prof !43

38:                                               ; preds = %37
  store i32 926, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 80), align 16, !tbaa !35
  br label %39

39:                                               ; preds = %38, %37
  br i1 %19, label %41, label %40, !prof !43

40:                                               ; preds = %39
  store i32 1174, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 79), align 4, !tbaa !35
  store i32 1177, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 79), align 4, !tbaa !35
  br label %41

41:                                               ; preds = %39, %40
  br i1 %27, label %50, label %42, !prof !43

42:                                               ; preds = %41
  store i32 1240, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 66), align 8, !tbaa !35
  store i32 1242, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 66), align 8, !tbaa !35
  %43 = load i32, ptr @reload_in_progress, align 4
  %44 = icmp ne i32 %43, 0
  %45 = load i32, ptr @reload_completed, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %49, label %48, !prof !45

48:                                               ; preds = %42
  store i32 1295, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 63), align 4, !tbaa !35
  store i32 1311, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 66), align 8, !tbaa !35
  br label %49

49:                                               ; preds = %42, %48
  store i32 1314, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 64), align 16, !tbaa !35
  store i32 1315, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 65), align 4, !tbaa !35
  store i32 1321, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 64), align 16, !tbaa !35
  store i32 1322, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 65), align 4, !tbaa !35
  store i32 1323, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 66), align 8, !tbaa !35
  store i32 1329, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 64), align 16, !tbaa !35
  store i32 1330, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 65), align 4, !tbaa !35
  store i32 1331, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 66), align 8, !tbaa !35
  store i32 1447, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 63), align 4, !tbaa !35
  store i32 1449, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 63), align 4, !tbaa !35
  store i32 1451, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 64), align 16, !tbaa !35
  store i32 1453, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 64), align 16, !tbaa !35
  store i32 1455, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 65), align 4, !tbaa !35
  store i32 1457, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 65), align 4, !tbaa !35
  br label %50

50:                                               ; preds = %41, %49
  %51 = and i32 %5, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !43

53:                                               ; preds = %50
  store i32 1552, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 63), align 4, !tbaa !35
  store i32 1553, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 64), align 16, !tbaa !35
  store i32 1554, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 65), align 4, !tbaa !35
  store i32 1555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 59), align 4, !tbaa !35
  store i32 1556, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 60), align 16, !tbaa !35
  store i32 1557, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 61), align 4, !tbaa !35
  br label %54

54:                                               ; preds = %50, %53
  %55 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 3), align 1, !tbaa !40
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57, !prof !43

57:                                               ; preds = %54
  store i32 1810, ptr getelementptr inbounds ([87 x i32], ptr @sync_old_add_optab, i64 0, i64 14), align 8, !tbaa !42
  store i32 1811, ptr getelementptr inbounds ([87 x i32], ptr @sync_old_add_optab, i64 0, i64 15), align 4, !tbaa !42
  store i32 1812, ptr getelementptr inbounds ([87 x i32], ptr @sync_old_add_optab, i64 0, i64 16), align 16, !tbaa !42
  br label %58

58:                                               ; preds = %54, %57
  store i32 1813, ptr getelementptr inbounds ([87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 14), align 8, !tbaa !42
  store i32 1814, ptr getelementptr inbounds ([87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 15), align 4, !tbaa !42
  store i32 1815, ptr getelementptr inbounds ([87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 16), align 16, !tbaa !42
  store i32 1816, ptr getelementptr inbounds ([87 x i32], ptr @sync_add_optab, i64 0, i64 14), align 8, !tbaa !42
  store i32 1817, ptr getelementptr inbounds ([87 x i32], ptr @sync_add_optab, i64 0, i64 15), align 4, !tbaa !42
  store i32 1818, ptr getelementptr inbounds ([87 x i32], ptr @sync_add_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 1819, ptr getelementptr inbounds ([87 x i32], ptr @sync_sub_optab, i64 0, i64 14), align 8, !tbaa !42
  store i32 1820, ptr getelementptr inbounds ([87 x i32], ptr @sync_sub_optab, i64 0, i64 15), align 4, !tbaa !42
  store i32 1821, ptr getelementptr inbounds ([87 x i32], ptr @sync_sub_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 1822, ptr getelementptr inbounds ([87 x i32], ptr @sync_and_optab, i64 0, i64 14), align 8, !tbaa !42
  store i32 1823, ptr getelementptr inbounds ([87 x i32], ptr @sync_ior_optab, i64 0, i64 14), align 8, !tbaa !42
  store i32 1824, ptr getelementptr inbounds ([87 x i32], ptr @sync_xor_optab, i64 0, i64 14), align 8, !tbaa !42
  store i32 1825, ptr getelementptr inbounds ([87 x i32], ptr @sync_and_optab, i64 0, i64 15), align 4, !tbaa !42
  store i32 1826, ptr getelementptr inbounds ([87 x i32], ptr @sync_ior_optab, i64 0, i64 15), align 4, !tbaa !42
  store i32 1827, ptr getelementptr inbounds ([87 x i32], ptr @sync_xor_optab, i64 0, i64 15), align 4, !tbaa !42
  store i32 1828, ptr getelementptr inbounds ([87 x i32], ptr @sync_and_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 1829, ptr getelementptr inbounds ([87 x i32], ptr @sync_ior_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 1830, ptr getelementptr inbounds ([87 x i32], ptr @sync_xor_optab, i64 0, i64 16), align 16, !tbaa !42
  br i1 %2, label %60, label %59, !prof !41

59:                                               ; preds = %58
  store i32 1831, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 14), align 8, !tbaa !35
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 23), align 1, !tbaa !40
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !41

63:                                               ; preds = %60
  store i32 1832, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 15), align 4, !tbaa !35
  br label %64

64:                                               ; preds = %63, %60
  store i32 1833, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 16), align 16, !tbaa !35
  store i32 1834, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 17), align 4, !tbaa !35
  br i1 %2, label %66, label %65, !prof !41

65:                                               ; preds = %64
  store i32 1835, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 14), align 8, !tbaa !35
  br label %66

66:                                               ; preds = %65, %64
  br i1 %62, label %68, label %67, !prof !41

67:                                               ; preds = %66
  store i32 1836, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 15), align 4, !tbaa !35
  br label %68

68:                                               ; preds = %67, %66
  store i32 1837, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 16), align 16, !tbaa !35
  %69 = and i32 %10, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %89, !prof !41

71:                                               ; preds = %68
  br i1 %19, label %77, label %72

72:                                               ; preds = %71
  %73 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 1842, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 38), align 8, !tbaa !35
  br label %77

77:                                               ; preds = %72, %71, %76
  br i1 %27, label %83, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i32 1843, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 39), align 4, !tbaa !35
  br label %83

83:                                               ; preds = %77, %78, %82
  br i1 %19, label %90, label %84

84:                                               ; preds = %83
  %85 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  store i32 1844, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 38), align 8, !tbaa !35
  br label %90

89:                                               ; preds = %68
  store i32 1840, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 40), align 16, !tbaa !35
  store i32 1841, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 40), align 16, !tbaa !35
  store i32 1842, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 38), align 8, !tbaa !35
  store i32 1843, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 39), align 4, !tbaa !35
  store i32 1844, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 38), align 8, !tbaa !35
  br label %95

90:                                               ; preds = %84, %83, %88
  br i1 %27, label %96, label %91

91:                                               ; preds = %90
  %92 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89, %91
  store i32 1845, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 39), align 4, !tbaa !35
  br label %96

96:                                               ; preds = %95, %91, %90
  store i32 1846, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 2), align 8, !tbaa !35
  store i32 1847, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 2), align 8, !tbaa !35
  store i32 1857, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 15), align 4, !tbaa !35
  store i32 1859, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 14), align 8, !tbaa !35
  store <4 x i32> <i32 1858, i32 1856, i32 1855, i32 1860>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 14), align 8, !tbaa !35
  br i1 %35, label %98, label %97, !prof !43

97:                                               ; preds = %96
  store i32 1863, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 19), align 4, !tbaa !35
  br label %98

98:                                               ; preds = %97, %96
  br i1 %19, label %100, label %99, !prof !43

99:                                               ; preds = %98
  store i32 1864, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 18), align 8, !tbaa !35
  br label %100

100:                                              ; preds = %99, %98
  store i32 1866, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 48), align 16, !tbaa !35
  store i32 1867, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 38), align 8, !tbaa !35
  store i32 1870, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 39), align 4, !tbaa !35
  store i32 1874, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 40), align 16, !tbaa !35
  br i1 %27, label %101, label %102, !prof !43

101:                                              ; preds = %100
  store i32 1887, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 16, i64 15), align 4, !tbaa !35
  store i32 1889, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 15, i64 14), align 4, !tbaa !35
  store i32 1893, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 16, i64 14), align 16, !tbaa !35
  store i32 1897, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 17, i64 16), align 4, !tbaa !35
  store i32 1900, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 17, i64 16), align 4, !tbaa !35
  br i1 %70, label %108, label %112, !prof !41

102:                                              ; preds = %100
  store i32 1877, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 41), align 4, !tbaa !35
  store i32 1887, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 16, i64 15), align 4, !tbaa !35
  store i32 1889, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 15, i64 14), align 4, !tbaa !35
  store i32 1893, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 16, i64 14), align 16, !tbaa !35
  store i32 1897, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 17, i64 16), align 4, !tbaa !35
  store i32 1900, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 17, i64 16), align 4, !tbaa !35
  br i1 %70, label %103, label %112, !prof !41

103:                                              ; preds = %102
  %104 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  store i32 1907, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 39, i64 38), align 4, !tbaa !35
  store i32 1911, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 38, i64 39), align 4, !tbaa !35
  br label %108

108:                                              ; preds = %103, %101, %107
  br i1 %19, label %110, label %109

109:                                              ; preds = %108
  store i32 1925, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 38), align 16, !tbaa !35
  br label %110

110:                                              ; preds = %108, %109
  br i1 %27, label %137, label %111

111:                                              ; preds = %110
  store i32 1926, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br label %132

112:                                              ; preds = %102, %101
  store i32 1907, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 39, i64 38), align 4, !tbaa !35
  store i32 1909, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 40, i64 38), align 16, !tbaa !35
  store i32 1910, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 40, i64 39), align 4, !tbaa !35
  store i32 1911, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 38, i64 39), align 4, !tbaa !35
  store i32 1915, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 38, i64 40), align 16, !tbaa !35
  store i32 1916, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 39, i64 40), align 4, !tbaa !35
  store i32 1921, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 17, i64 40), align 4, !tbaa !35
  store i32 1922, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 17, i64 38), align 4, !tbaa !35
  store i32 1923, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 17, i64 39), align 16, !tbaa !35
  store i32 1924, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 40), align 8, !tbaa !35
  store i32 1925, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 38), align 16, !tbaa !35
  store i32 1926, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br i1 %19, label %120, label %113, !prof !43

113:                                              ; preds = %112
  %114 = and i32 %5, 262144
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112, %116
  store i32 1927, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 38), align 4, !tbaa !35
  br label %121

121:                                              ; preds = %120, %116, %113
  br i1 %27, label %122, label %123, !prof !43

122:                                              ; preds = %121
  store i32 1928, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 39), align 8, !tbaa !35
  store i32 1929, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 40), align 4, !tbaa !35
  br label %137

123:                                              ; preds = %121
  %124 = and i32 %5, 262144
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %123, %126
  store i32 1929, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 40), align 4, !tbaa !35
  br label %132

131:                                              ; preds = %126
  store i32 1928, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 39), align 8, !tbaa !35
  store i32 1929, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 40), align 4, !tbaa !35
  br label %132

132:                                              ; preds = %131, %130, %111
  %133 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  store i32 1930, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 16, i64 38), align 16, !tbaa !35
  store i32 1931, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br label %137

137:                                              ; preds = %132, %122, %110, %136
  br i1 %19, label %143, label %138, !prof !43

138:                                              ; preds = %137
  %139 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i32 1934, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 15, i64 38), align 4, !tbaa !35
  br label %143

143:                                              ; preds = %137, %142, %138
  br i1 %27, label %149, label %144, !prof !43

144:                                              ; preds = %143
  %145 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store i32 1935, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 15, i64 39), align 8, !tbaa !35
  br label %149

149:                                              ; preds = %148, %144, %143
  br i1 %70, label %168, label %150, !prof !41

150:                                              ; preds = %149
  br i1 %19, label %158, label %151, !prof !43

151:                                              ; preds = %150
  %152 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %153 = and i32 %152, 2
  %154 = icmp eq i32 %153, 0
  %155 = and i32 %152, 3
  %156 = icmp eq i32 %155, 3
  %157 = or i1 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150, %151
  store i32 1962, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 15), align 4, !tbaa !35
  br label %159

159:                                              ; preds = %151, %158
  br i1 %27, label %167, label %160, !prof !43

160:                                              ; preds = %159
  %161 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %161, 3
  %165 = icmp eq i32 %164, 3
  %166 = or i1 %163, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %160, %159
  store i32 1963, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 15), align 8, !tbaa !35
  br label %180

168:                                              ; preds = %149
  br i1 %19, label %174, label %169

169:                                              ; preds = %168
  %170 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  store i32 1974, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 16), align 16, !tbaa !35
  br label %174

174:                                              ; preds = %169, %168, %173
  br i1 %27, label %185, label %175

175:                                              ; preds = %174
  %176 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %177 = and i32 %176, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %175
  store i32 1976, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 16), align 4, !tbaa !35
  br label %185

180:                                              ; preds = %167, %160
  store i32 1964, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 40, i64 15), align 4, !tbaa !35
  store i32 1974, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 16), align 16, !tbaa !35
  store i32 1975, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 17), align 4, !tbaa !35
  store i32 1976, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 16), align 4, !tbaa !35
  store i32 1977, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 17), align 16, !tbaa !35
  store i32 1978, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 40, i64 16), align 8, !tbaa !35
  store i32 1979, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 40, i64 17), align 4, !tbaa !35
  %181 = load i32, ptr @flag_excess_precision, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %185, !prof !44

183:                                              ; preds = %180
  br i1 %19, label %191, label %184, !prof !43

184:                                              ; preds = %183
  store i32 2028, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 38, i64 16), align 16, !tbaa !35
  br label %197

185:                                              ; preds = %174, %175, %179, %180
  br i1 %19, label %191, label %186, !prof !46

186:                                              ; preds = %185
  %187 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  store i32 2028, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 38, i64 16), align 16, !tbaa !35
  br label %191

191:                                              ; preds = %186, %185, %190, %183
  %192 = phi i1 [ false, %190 ], [ true, %183 ], [ false, %185 ], [ false, %186 ]
  br i1 %27, label %199, label %193, !prof !43

193:                                              ; preds = %191
  %194 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %184, %193
  %198 = phi i1 [ %192, %193 ], [ true, %184 ]
  store i32 2029, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 39, i64 16), align 4, !tbaa !35
  br label %199

199:                                              ; preds = %197, %193, %191
  %200 = phi i1 [ %198, %197 ], [ %192, %193 ], [ %192, %191 ]
  %201 = or i1 %70, %19
  br i1 %201, label %203, label %202, !prof !47

202:                                              ; preds = %199
  store i32 2030, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 40, i64 16), align 8, !tbaa !35
  br label %203

203:                                              ; preds = %199, %202
  br i1 %2, label %205, label %204, !prof !41

204:                                              ; preds = %203
  store i32 2031, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 14), align 8, !tbaa !35
  br label %205

205:                                              ; preds = %204, %203
  br i1 %62, label %207, label %206, !prof !41

206:                                              ; preds = %205
  store i32 2032, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 15), align 4, !tbaa !35
  br label %207

207:                                              ; preds = %206, %205
  store i32 2033, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 16), align 16, !tbaa !35
  store i32 2034, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 17), align 4, !tbaa !35
  br i1 %2, label %209, label %208, !prof !41

208:                                              ; preds = %207
  store i32 2040, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 14), align 8, !tbaa !35
  br label %209

209:                                              ; preds = %208, %207
  br i1 %62, label %211, label %210, !prof !41

210:                                              ; preds = %209
  store i32 2041, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 15), align 4, !tbaa !35
  br label %211

211:                                              ; preds = %210, %209
  store i32 2042, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 16), align 16, !tbaa !35
  store i32 2043, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 17), align 4, !tbaa !35
  br i1 %70, label %213, label %212, !prof !41

212:                                              ; preds = %211
  store i32 2053, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 40), align 16, !tbaa !35
  store i32 2053, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 40), align 16, !tbaa !35
  store i32 2054, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 40), align 16, !tbaa !35
  store i32 2054, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 40), align 16, !tbaa !35
  br label %213

213:                                              ; preds = %211, %212
  br i1 %200, label %214, label %215, !prof !48

214:                                              ; preds = %213
  store i32 2055, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 38), align 8, !tbaa !35
  store i32 2055, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 38), align 8, !tbaa !35
  store i32 2056, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 38), align 8, !tbaa !35
  store i32 2056, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 38), align 8, !tbaa !35
  store i32 2057, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 39), align 4, !tbaa !35
  store i32 2057, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 39), align 4, !tbaa !35
  br label %236

215:                                              ; preds = %213
  br i1 %19, label %226, label %216

216:                                              ; preds = %215
  %217 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %218 = and i32 %217, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  store i32 2055, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 38), align 8, !tbaa !35
  store i32 2055, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 38), align 8, !tbaa !35
  br label %221

221:                                              ; preds = %216, %220
  %222 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %223 = and i32 %222, 2
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221
  store i32 2056, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 38), align 8, !tbaa !35
  store i32 2056, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 38), align 8, !tbaa !35
  br label %226

226:                                              ; preds = %215, %221, %225
  br i1 %27, label %237, label %227

227:                                              ; preds = %226
  %228 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %229 = and i32 %228, 2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  store i32 2057, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 39), align 4, !tbaa !35
  store i32 2057, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 39), align 4, !tbaa !35
  br label %232

232:                                              ; preds = %227, %231
  %233 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %234 = and i32 %233, 2
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %214, %232
  store i32 2058, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 39), align 4, !tbaa !35
  store i32 2058, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 39), align 4, !tbaa !35
  br label %237

237:                                              ; preds = %226, %236, %232
  br i1 %62, label %239, label %238, !prof !41

238:                                              ; preds = %237
  store i32 2059, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 15), align 4, !tbaa !35
  br label %239

239:                                              ; preds = %238, %237
  store i32 2060, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 16), align 16, !tbaa !35
  br i1 %2, label %241, label %240, !prof !41

240:                                              ; preds = %239
  store i32 2061, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 14), align 8, !tbaa !35
  store i32 2064, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 15), align 4, !tbaa !35
  store i32 2065, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 15), align 4, !tbaa !35
  br label %241

241:                                              ; preds = %239, %240
  store i32 2062, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 17), align 4
  store i32 2063, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 17), align 4
  store i32 2066, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18, i32 4, i64 16), align 16, !tbaa !35
  store i32 2067, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19, i32 4, i64 16), align 16, !tbaa !35
  br i1 %70, label %243, label %242, !prof !41

242:                                              ; preds = %241
  store i32 2068, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 40), align 16, !tbaa !35
  store i32 2068, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 40), align 16, !tbaa !35
  br label %243

243:                                              ; preds = %242, %241
  br i1 %200, label %244, label %245, !prof !48

244:                                              ; preds = %243
  store i32 2069, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 38), align 8, !tbaa !35
  store i32 2069, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 38), align 8, !tbaa !35
  br label %256

245:                                              ; preds = %243
  br i1 %19, label %251, label %246

246:                                              ; preds = %245
  %247 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  store i32 2069, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 38), align 8, !tbaa !35
  store i32 2069, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 38), align 8, !tbaa !35
  br label %251

251:                                              ; preds = %246, %245, %250
  br i1 %27, label %257, label %252

252:                                              ; preds = %251
  %253 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %254 = and i32 %253, 2
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %244, %252
  store i32 2070, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 39), align 4, !tbaa !35
  store i32 2070, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 39), align 4, !tbaa !35
  br label %257

257:                                              ; preds = %256, %252, %251
  br i1 %70, label %259, label %258, !prof !41

258:                                              ; preds = %257
  store i32 2071, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 40), align 16, !tbaa !35
  br label %259

259:                                              ; preds = %258, %257
  br i1 %200, label %266, label %260, !prof !48

260:                                              ; preds = %259
  %261 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %262 = and i32 %261, 2
  %263 = icmp eq i32 %262, 0
  br i1 %27, label %265, label %264

264:                                              ; preds = %260
  br i1 %263, label %268, label %266

265:                                              ; preds = %260
  br i1 %263, label %268, label %267

266:                                              ; preds = %264, %259
  store i32 2072, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 39), align 4, !tbaa !35
  br label %267

267:                                              ; preds = %266, %265
  store i32 2073, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 38), align 8, !tbaa !35
  br label %268

268:                                              ; preds = %264, %267, %265
  br i1 %62, label %270, label %269, !prof !41

269:                                              ; preds = %268
  store i32 2074, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 15), align 4, !tbaa !35
  store i32 2078, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 4, i64 15), align 4, !tbaa !35
  br label %270

270:                                              ; preds = %268, %269
  store i32 2075, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 16), align 16
  store i32 2079, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 4, i64 16), align 16, !tbaa !35
  br i1 %2, label %272, label %271, !prof !41

271:                                              ; preds = %270
  store i32 2088, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 14), align 8, !tbaa !35
  br label %272

272:                                              ; preds = %271, %270
  br i1 %62, label %274, label %273, !prof !41

273:                                              ; preds = %272
  store i32 2089, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 15), align 4, !tbaa !35
  br label %274

274:                                              ; preds = %273, %272
  store i32 2090, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 16), align 16, !tbaa !35
  br i1 %2, label %276, label %275, !prof !41

275:                                              ; preds = %274
  store i32 2096, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 14), align 8, !tbaa !35
  store i32 2097, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 14), align 8, !tbaa !35
  br label %276

276:                                              ; preds = %274, %275
  br i1 %62, label %278, label %277, !prof !41

277:                                              ; preds = %276
  store i32 2098, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 15), align 4, !tbaa !35
  store i32 2099, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 15), align 4, !tbaa !35
  br label %278

278:                                              ; preds = %276, %277
  store i32 2100, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 16), align 16, !tbaa !35
  store i32 2101, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 16), align 16, !tbaa !35
  br i1 %2, label %280, label %279, !prof !41

279:                                              ; preds = %278
  store i32 2107, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 14), align 8, !tbaa !35
  br label %280

280:                                              ; preds = %279, %278
  br i1 %62, label %282, label %281, !prof !41

281:                                              ; preds = %280
  store i32 2108, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 15), align 4, !tbaa !35
  br label %282

282:                                              ; preds = %281, %280
  store i32 2109, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 16), align 16, !tbaa !35
  store i32 2110, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 17), align 4, !tbaa !35
  br i1 %70, label %283, label %305, !prof !41

283:                                              ; preds = %282
  br i1 %19, label %294, label %284

284:                                              ; preds = %283
  %285 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %286 = and i32 %285, 2
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %284
  store i32 2112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 38), align 8, !tbaa !35
  store i32 2112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 38), align 8, !tbaa !35
  br label %289

289:                                              ; preds = %284, %288
  %290 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %291 = and i32 %290, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  store i32 2113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 38), align 8, !tbaa !35
  store i32 2113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 38), align 8, !tbaa !35
  br label %294

294:                                              ; preds = %283, %289, %293
  br i1 %27, label %307, label %295

295:                                              ; preds = %294
  %296 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %297 = and i32 %296, 2
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  store i32 2114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 39), align 4, !tbaa !35
  store i32 2114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 39), align 4, !tbaa !35
  br label %300

300:                                              ; preds = %295, %299
  %301 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %302 = and i32 %301, 2
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  store i32 2115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 39), align 4, !tbaa !35
  store i32 2115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 39), align 4, !tbaa !35
  br label %306

305:                                              ; preds = %282
  store i32 2112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 38), align 8, !tbaa !35
  store i32 2112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 38), align 8, !tbaa !35
  store i32 2113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 38), align 8, !tbaa !35
  store i32 2113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 38), align 8, !tbaa !35
  store i32 2114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 39), align 4, !tbaa !35
  store i32 2114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 39), align 4, !tbaa !35
  store i32 2115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 39), align 4, !tbaa !35
  store i32 2115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 39), align 4, !tbaa !35
  store i32 2116, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 40), align 16, !tbaa !35
  store i32 2116, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 40), align 16, !tbaa !35
  store i32 2117, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 40), align 16, !tbaa !35
  store i32 2117, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 40), align 16, !tbaa !35
  br i1 %27, label %307, label %306, !prof !45

306:                                              ; preds = %304, %300, %305
  store i32 2118, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 41), align 4, !tbaa !35
  store i32 2118, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 41), align 4, !tbaa !35
  store i32 2119, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 41), align 4, !tbaa !35
  store i32 2119, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 41), align 4, !tbaa !35
  br label %307

307:                                              ; preds = %294, %305, %306
  br i1 %19, label %313, label %308, !prof !43

308:                                              ; preds = %307
  %309 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %310 = and i32 %309, 2
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %308
  store i32 2125, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 38), align 8, !tbaa !35
  br label %313

313:                                              ; preds = %308, %307, %312
  br i1 %27, label %320, label %314, !prof !43

314:                                              ; preds = %313
  %315 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %316 = and i32 %315, 2
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  store i32 2126, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 39), align 4, !tbaa !35
  br label %319

319:                                              ; preds = %314, %318
  store i32 2127, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 41), align 4, !tbaa !35
  br label %320

320:                                              ; preds = %313, %319
  br i1 %2, label %322, label %321, !prof !41

321:                                              ; preds = %320
  store i32 2134, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 14), align 8, !tbaa !35
  br label %322

322:                                              ; preds = %321, %320
  br i1 %62, label %324, label %323, !prof !41

323:                                              ; preds = %322
  store i32 2135, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 15), align 4, !tbaa !35
  store i32 2150, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 15), align 4, !tbaa !35
  br label %324

324:                                              ; preds = %322, %323
  store i32 2136, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 16), align 16
  store i32 2142, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 17), align 4
  store i32 2147, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 16), align 16
  br i1 %2, label %326, label %325, !prof !41

325:                                              ; preds = %324
  store i32 2151, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 14), align 8, !tbaa !35
  br label %326

326:                                              ; preds = %325, %324
  store i32 2152, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 17), align 4, !tbaa !35
  store i32 2158, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 16), align 16, !tbaa !35
  br i1 %62, label %328, label %327, !prof !41

327:                                              ; preds = %326
  store i32 2159, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 15), align 4, !tbaa !35
  br label %328

328:                                              ; preds = %327, %326
  %329 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !40
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %332, label %331, !prof !41

331:                                              ; preds = %328
  store i32 2160, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 14), align 8, !tbaa !35
  br label %332

332:                                              ; preds = %331, %328
  store i32 2161, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 17), align 4, !tbaa !35
  store i32 2164, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 16), align 16, !tbaa !35
  br i1 %62, label %334, label %333, !prof !41

333:                                              ; preds = %332
  store i32 2165, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 15), align 4, !tbaa !35
  br label %334

334:                                              ; preds = %333, %332
  br i1 %330, label %336, label %335, !prof !41

335:                                              ; preds = %334
  store i32 2166, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 14), align 8, !tbaa !35
  br label %336

336:                                              ; preds = %335, %334
  store i32 2167, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 17), align 4, !tbaa !35
  store i32 2169, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 16), align 16, !tbaa !35
  br i1 %62, label %338, label %337, !prof !41

337:                                              ; preds = %336
  store i32 2170, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 15), align 4, !tbaa !35
  br label %338

338:                                              ; preds = %337, %336
  br i1 %330, label %340, label %339, !prof !41

339:                                              ; preds = %338
  store i32 2172, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 14), align 8, !tbaa !35
  br label %340

340:                                              ; preds = %339, %338
  store i32 2173, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 17), align 4, !tbaa !35
  store i32 2175, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 16), align 16, !tbaa !35
  br i1 %62, label %342, label %341, !prof !41

341:                                              ; preds = %340
  store i32 2176, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 15), align 4, !tbaa !35
  br label %342

342:                                              ; preds = %341, %340
  br i1 %330, label %344, label %343, !prof !41

343:                                              ; preds = %342
  store i32 2178, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 14), align 8, !tbaa !35
  br label %344

344:                                              ; preds = %343, %342
  store i32 2218, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 4, i64 16), align 16, !tbaa !35
  store i32 2221, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 16), align 16, !tbaa !35
  store i32 2222, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 16), align 16, !tbaa !35
  store i32 2223, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 15), align 4, !tbaa !35
  br i1 %7, label %345, label %346, !prof !43

345:                                              ; preds = %344
  store i32 2224, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 4, i64 17), align 4, !tbaa !35
  store i32 2226, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 4, i64 16), align 16, !tbaa !35
  br label %346

346:                                              ; preds = %344, %345
  %347 = load i32, ptr @flag_excess_precision, align 4
  %348 = icmp eq i32 %347, 1
  %349 = select i1 %12, i1 %348, i1 false
  br i1 %349, label %350, label %351, !prof !48

350:                                              ; preds = %346
  store i32 2241, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 38), align 8, !tbaa !35
  br label %367

351:                                              ; preds = %346
  %352 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %353 = and i32 %352, 65536
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %351
  %356 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %357 = and i32 %356, 2
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %355
  store i32 2241, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 38), align 8, !tbaa !35
  br label %360

360:                                              ; preds = %355, %351, %359
  %361 = and i32 %352, 131072
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %360
  %364 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %365 = and i32 %364, 2
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %350, %363
  store i32 2242, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 39), align 4, !tbaa !35
  br label %368

368:                                              ; preds = %367, %363, %360
  br i1 %12, label %369, label %655, !prof !43

369:                                              ; preds = %368
  store i32 2243, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38, i32 4, i64 40), align 16, !tbaa !35
  store i32 2244, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38, i32 4, i64 38), align 8, !tbaa !35
  store i32 2245, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38, i32 4, i64 39), align 4, !tbaa !35
  store i32 2246, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39, i32 4, i64 40), align 16, !tbaa !35
  store i32 2247, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39, i32 4, i64 38), align 8, !tbaa !35
  store i32 2248, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39, i32 4, i64 39), align 4, !tbaa !35
  br i1 %19, label %380, label %370, !prof !43

370:                                              ; preds = %369
  %371 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %370
  %375 = and i32 %371, 3
  %376 = icmp eq i32 %375, 3
  %377 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %376, i1 %378, i1 false
  br i1 %379, label %383, label %385, !prof !49

380:                                              ; preds = %369, %370
  %381 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %385, label %383, !prof !43

383:                                              ; preds = %374, %380
  %384 = phi i32 [ %377, %374 ], [ %381, %380 ]
  store i32 2255, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76, i32 4, i64 38), align 8, !tbaa !35
  br label %385

385:                                              ; preds = %383, %380, %374
  %386 = phi i32 [ %384, %383 ], [ 0, %380 ], [ %377, %374 ]
  br i1 %27, label %396, label %387, !prof !43

387:                                              ; preds = %385
  %388 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %389 = and i32 %388, 2
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %387
  %392 = and i32 %388, 3
  %393 = icmp eq i32 %392, 3
  %394 = icmp ne i32 %386, 0
  %395 = select i1 %393, i1 %394, i1 false
  br i1 %395, label %398, label %399, !prof !49

396:                                              ; preds = %387, %385
  %397 = icmp eq i32 %386, 0
  br i1 %397, label %402, label %398, !prof !43

398:                                              ; preds = %396, %391
  store i32 2256, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76, i32 4, i64 39), align 4, !tbaa !35
  br label %401

399:                                              ; preds = %391
  %400 = icmp eq i32 %386, 0
  br i1 %400, label %402, label %401, !prof !50

401:                                              ; preds = %398, %399
  store i32 2257, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100, i32 4, i64 40), align 16, !tbaa !35
  br label %402

402:                                              ; preds = %396, %401, %399
  %403 = phi i1 [ true, %401 ], [ false, %399 ], [ false, %396 ]
  %404 = phi i32 [ %386, %401 ], [ 0, %399 ], [ 0, %396 ]
  br i1 %19, label %413, label %405, !prof !43

405:                                              ; preds = %402
  %406 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %407 = and i32 %406, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %413, label %409

409:                                              ; preds = %405
  %410 = and i32 %406, 3
  %411 = icmp eq i32 %410, 3
  %412 = and i1 %403, %411
  br i1 %412, label %415, label %416, !prof !49

413:                                              ; preds = %402, %405
  %414 = icmp eq i32 %404, 0
  br i1 %414, label %416, label %415, !prof !43

415:                                              ; preds = %409, %413
  store i32 2258, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100, i32 4, i64 38), align 8, !tbaa !35
  br label %416

416:                                              ; preds = %415, %413, %409
  br i1 %27, label %425, label %417, !prof !43

417:                                              ; preds = %416
  %418 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %419 = and i32 %418, 2
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %425, label %421

421:                                              ; preds = %417
  %422 = and i32 %418, 3
  %423 = icmp eq i32 %422, 3
  %424 = and i1 %403, %423
  br i1 %424, label %427, label %428, !prof !49

425:                                              ; preds = %417, %416
  %426 = icmp eq i32 %404, 0
  br i1 %426, label %428, label %427, !prof !43

427:                                              ; preds = %421, %425
  store i32 2259, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100, i32 4, i64 39), align 4, !tbaa !35
  br i1 %403, label %430, label %432, !prof !51

428:                                              ; preds = %425, %421
  %429 = phi i32 [ 0, %425 ], [ %404, %421 ]
  br i1 %403, label %430, label %432, !prof !51

430:                                              ; preds = %427, %428
  %431 = phi i32 [ %404, %427 ], [ %429, %428 ]
  store i32 2260, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59, i32 4, i64 40), align 16, !tbaa !35
  br label %432

432:                                              ; preds = %427, %430, %428
  %433 = phi i32 [ %404, %427 ], [ %429, %428 ], [ %431, %430 ]
  %434 = phi i1 [ false, %427 ], [ false, %428 ], [ true, %430 ]
  br i1 %19, label %443, label %435, !prof !43

435:                                              ; preds = %432
  %436 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %443, label %439

439:                                              ; preds = %435
  %440 = and i32 %436, 3
  %441 = icmp eq i32 %440, 3
  %442 = and i1 %403, %441
  br i1 %442, label %445, label %446, !prof !49

443:                                              ; preds = %432, %435
  %444 = icmp eq i32 %433, 0
  br i1 %444, label %446, label %445, !prof !43

445:                                              ; preds = %439, %443
  store i32 2261, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59, i32 4, i64 38), align 8, !tbaa !35
  br label %446

446:                                              ; preds = %445, %443, %439
  br i1 %27, label %455, label %447, !prof !43

447:                                              ; preds = %446
  %448 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %449 = and i32 %448, 2
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %447
  %452 = and i32 %448, 3
  %453 = icmp eq i32 %452, 3
  %454 = and i1 %403, %453
  br i1 %454, label %457, label %458, !prof !49

455:                                              ; preds = %447, %446
  %456 = icmp eq i32 %433, 0
  br i1 %456, label %458, label %457, !prof !43

457:                                              ; preds = %451, %455
  store i32 2262, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59, i32 4, i64 39), align 4, !tbaa !35
  br i1 %434, label %460, label %462, !prof !51

458:                                              ; preds = %455, %451
  %459 = phi i32 [ 0, %455 ], [ %433, %451 ]
  br i1 %434, label %460, label %462, !prof !51

460:                                              ; preds = %457, %458
  %461 = phi i32 [ %433, %457 ], [ %459, %458 ]
  store i32 2263, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101, i32 4, i64 40), align 16, !tbaa !35
  br label %462

462:                                              ; preds = %457, %460, %458
  %463 = phi i1 [ false, %457 ], [ false, %458 ], [ true, %460 ]
  %464 = phi i32 [ %433, %457 ], [ %459, %458 ], [ %461, %460 ]
  br i1 %19, label %473, label %465, !prof !43

465:                                              ; preds = %462
  %466 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  %470 = and i32 %466, 3
  %471 = icmp eq i32 %470, 3
  %472 = and i1 %403, %471
  br i1 %472, label %475, label %476, !prof !49

473:                                              ; preds = %462, %465
  %474 = icmp eq i32 %464, 0
  br i1 %474, label %476, label %475, !prof !43

475:                                              ; preds = %469, %473
  store i32 2264, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101, i32 4, i64 38), align 8, !tbaa !35
  br label %476

476:                                              ; preds = %475, %473, %469
  br i1 %27, label %485, label %477, !prof !43

477:                                              ; preds = %476
  %478 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %479 = and i32 %478, 2
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %485, label %481

481:                                              ; preds = %477
  %482 = and i32 %478, 3
  %483 = icmp eq i32 %482, 3
  %484 = and i1 %403, %483
  br i1 %484, label %487, label %488, !prof !49

485:                                              ; preds = %477, %476
  %486 = icmp eq i32 %464, 0
  br i1 %486, label %488, label %487, !prof !43

487:                                              ; preds = %481, %485
  store i32 2265, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101, i32 4, i64 39), align 4, !tbaa !35
  br i1 %463, label %490, label %492, !prof !51

488:                                              ; preds = %485, %481
  %489 = phi i32 [ 0, %485 ], [ %464, %481 ]
  br i1 %463, label %490, label %492, !prof !51

490:                                              ; preds = %487, %488
  %491 = phi i32 [ %464, %487 ], [ %489, %488 ]
  store i32 2266, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78, i32 4, i64 40), align 16, !tbaa !35
  br label %492

492:                                              ; preds = %487, %490, %488
  %493 = phi i32 [ %464, %487 ], [ %489, %488 ], [ %491, %490 ]
  %494 = phi i1 [ false, %487 ], [ false, %488 ], [ true, %490 ]
  br i1 %19, label %503, label %495, !prof !43

495:                                              ; preds = %492
  %496 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %497 = and i32 %496, 2
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %503, label %499

499:                                              ; preds = %495
  %500 = and i32 %496, 3
  %501 = icmp eq i32 %500, 3
  %502 = and i1 %403, %501
  br i1 %502, label %505, label %506, !prof !49

503:                                              ; preds = %492, %495
  %504 = icmp eq i32 %493, 0
  br i1 %504, label %506, label %505, !prof !43

505:                                              ; preds = %499, %503
  store i32 2267, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78, i32 4, i64 38), align 8, !tbaa !35
  br label %506

506:                                              ; preds = %505, %503, %499
  br i1 %27, label %515, label %507, !prof !43

507:                                              ; preds = %506
  %508 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %509 = and i32 %508, 2
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %515, label %511

511:                                              ; preds = %507
  %512 = and i32 %508, 3
  %513 = icmp eq i32 %512, 3
  %514 = and i1 %403, %513
  br i1 %514, label %517, label %518, !prof !49

515:                                              ; preds = %507, %506
  %516 = icmp eq i32 %493, 0
  br i1 %516, label %518, label %517, !prof !43

517:                                              ; preds = %511, %515
  store i32 2268, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78, i32 4, i64 39), align 4, !tbaa !35
  br i1 %494, label %520, label %522, !prof !51

518:                                              ; preds = %515, %511
  %519 = phi i32 [ 0, %515 ], [ %493, %511 ]
  br i1 %494, label %520, label %522, !prof !51

520:                                              ; preds = %517, %518
  %521 = phi i32 [ %493, %517 ], [ %519, %518 ]
  store i32 2269, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80, i32 4, i64 40), align 16, !tbaa !35
  br label %522

522:                                              ; preds = %517, %520, %518
  %523 = phi i1 [ false, %517 ], [ false, %518 ], [ true, %520 ]
  %524 = phi i32 [ %493, %517 ], [ %519, %518 ], [ %521, %520 ]
  br i1 %19, label %533, label %525, !prof !43

525:                                              ; preds = %522
  %526 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %527 = and i32 %526, 2
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %533, label %529

529:                                              ; preds = %525
  %530 = and i32 %526, 3
  %531 = icmp eq i32 %530, 3
  %532 = and i1 %403, %531
  br i1 %532, label %535, label %536, !prof !49

533:                                              ; preds = %522, %525
  %534 = icmp eq i32 %524, 0
  br i1 %534, label %536, label %535, !prof !43

535:                                              ; preds = %529, %533
  store i32 2270, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80, i32 4, i64 38), align 8, !tbaa !35
  br label %536

536:                                              ; preds = %535, %533, %529
  br i1 %27, label %545, label %537, !prof !43

537:                                              ; preds = %536
  %538 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %539 = and i32 %538, 2
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %545, label %541

541:                                              ; preds = %537
  %542 = and i32 %538, 3
  %543 = icmp eq i32 %542, 3
  %544 = and i1 %403, %543
  br i1 %544, label %547, label %548, !prof !49

545:                                              ; preds = %537, %536
  %546 = icmp eq i32 %524, 0
  br i1 %546, label %548, label %547, !prof !43

547:                                              ; preds = %541, %545
  store i32 2271, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80, i32 4, i64 39), align 4, !tbaa !35
  br i1 %523, label %550, label %552, !prof !51

548:                                              ; preds = %545, %541
  %549 = phi i32 [ 0, %545 ], [ %524, %541 ]
  br i1 %523, label %550, label %552, !prof !51

550:                                              ; preds = %547, %548
  %551 = phi i32 [ %524, %547 ], [ %549, %548 ]
  store i32 2272, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90, i32 4, i64 40), align 16, !tbaa !35
  br label %552

552:                                              ; preds = %547, %550, %548
  %553 = phi i32 [ %524, %547 ], [ %549, %548 ], [ %551, %550 ]
  %554 = phi i1 [ false, %547 ], [ false, %548 ], [ true, %550 ]
  br i1 %19, label %563, label %555, !prof !43

555:                                              ; preds = %552
  %556 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %557 = and i32 %556, 2
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %563, label %559

559:                                              ; preds = %555
  %560 = and i32 %556, 3
  %561 = icmp eq i32 %560, 3
  %562 = and i1 %403, %561
  br i1 %562, label %565, label %566, !prof !49

563:                                              ; preds = %552, %555
  %564 = icmp eq i32 %553, 0
  br i1 %564, label %566, label %565, !prof !43

565:                                              ; preds = %559, %563
  store i32 2273, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90, i32 4, i64 38), align 8, !tbaa !35
  br label %566

566:                                              ; preds = %565, %563, %559
  br i1 %27, label %575, label %567, !prof !43

567:                                              ; preds = %566
  %568 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %569 = and i32 %568, 2
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %575, label %571

571:                                              ; preds = %567
  %572 = and i32 %568, 3
  %573 = icmp eq i32 %572, 3
  %574 = and i1 %403, %573
  br i1 %574, label %577, label %578, !prof !49

575:                                              ; preds = %567, %566
  %576 = icmp eq i32 %553, 0
  br i1 %576, label %578, label %577, !prof !43

577:                                              ; preds = %571, %575
  store i32 2274, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90, i32 4, i64 39), align 4, !tbaa !35
  br i1 %554, label %580, label %582, !prof !51

578:                                              ; preds = %575, %571
  %579 = phi i32 [ 0, %575 ], [ %553, %571 ]
  br i1 %554, label %580, label %582, !prof !51

580:                                              ; preds = %577, %578
  %581 = phi i32 [ %553, %577 ], [ %579, %578 ]
  store i32 2275, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91, i32 4, i64 40), align 16, !tbaa !35
  br label %582

582:                                              ; preds = %577, %580, %578
  %583 = phi i1 [ false, %577 ], [ false, %578 ], [ true, %580 ]
  %584 = phi i32 [ %553, %577 ], [ %579, %578 ], [ %581, %580 ]
  br i1 %19, label %593, label %585, !prof !43

585:                                              ; preds = %582
  %586 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %587 = and i32 %586, 2
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %593, label %589

589:                                              ; preds = %585
  %590 = and i32 %586, 3
  %591 = icmp eq i32 %590, 3
  %592 = and i1 %403, %591
  br i1 %592, label %595, label %596, !prof !49

593:                                              ; preds = %582, %585
  %594 = icmp eq i32 %584, 0
  br i1 %594, label %596, label %595, !prof !43

595:                                              ; preds = %589, %593
  store i32 2276, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91, i32 4, i64 38), align 8, !tbaa !35
  br label %596

596:                                              ; preds = %595, %593, %589
  br i1 %27, label %605, label %597, !prof !43

597:                                              ; preds = %596
  %598 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %599 = and i32 %598, 2
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %605, label %601

601:                                              ; preds = %597
  %602 = and i32 %598, 3
  %603 = icmp eq i32 %602, 3
  %604 = and i1 %403, %603
  br i1 %604, label %607, label %608, !prof !49

605:                                              ; preds = %597, %596
  %606 = icmp eq i32 %584, 0
  br i1 %606, label %608, label %607, !prof !43

607:                                              ; preds = %601, %605
  store i32 2277, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91, i32 4, i64 39), align 4, !tbaa !35
  br i1 %583, label %610, label %612, !prof !51

608:                                              ; preds = %605, %601
  %609 = phi i32 [ 0, %605 ], [ %584, %601 ]
  br i1 %583, label %610, label %612, !prof !51

610:                                              ; preds = %607, %608
  %611 = phi i32 [ %584, %607 ], [ %609, %608 ]
  store i32 2278, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92, i32 4, i64 40), align 16, !tbaa !35
  br label %612

612:                                              ; preds = %607, %610, %608
  %613 = phi i32 [ %584, %607 ], [ %609, %608 ], [ %611, %610 ]
  %614 = phi i1 [ false, %607 ], [ false, %608 ], [ true, %610 ]
  br i1 %19, label %623, label %615, !prof !43

615:                                              ; preds = %612
  %616 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %617 = and i32 %616, 2
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %623, label %619

619:                                              ; preds = %615
  %620 = and i32 %616, 3
  %621 = icmp eq i32 %620, 3
  %622 = and i1 %403, %621
  br i1 %622, label %625, label %626, !prof !49

623:                                              ; preds = %612, %615
  %624 = icmp eq i32 %613, 0
  br i1 %624, label %626, label %625, !prof !43

625:                                              ; preds = %619, %623
  store i32 2279, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92, i32 4, i64 38), align 8, !tbaa !35
  br label %626

626:                                              ; preds = %625, %623, %619
  br i1 %27, label %635, label %627, !prof !43

627:                                              ; preds = %626
  %628 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %629 = and i32 %628, 2
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %635, label %631

631:                                              ; preds = %627
  %632 = and i32 %628, 3
  %633 = icmp eq i32 %632, 3
  %634 = and i1 %403, %633
  br i1 %634, label %637, label %638, !prof !49

635:                                              ; preds = %627, %626
  %636 = icmp eq i32 %613, 0
  br i1 %636, label %638, label %637, !prof !43

637:                                              ; preds = %631, %635
  store i32 2280, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92, i32 4, i64 39), align 4, !tbaa !35
  br i1 %614, label %640, label %642, !prof !51

638:                                              ; preds = %635, %631
  %639 = phi i32 [ 0, %635 ], [ %613, %631 ]
  br i1 %614, label %640, label %642, !prof !51

640:                                              ; preds = %637, %638
  %641 = phi i32 [ %613, %637 ], [ %639, %638 ]
  store i32 2281, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93, i32 4, i64 40), align 16, !tbaa !35
  br label %642

642:                                              ; preds = %637, %640, %638
  %643 = phi i32 [ %613, %637 ], [ %639, %638 ], [ %641, %640 ]
  br i1 %19, label %652, label %644, !prof !43

644:                                              ; preds = %642
  %645 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %646 = and i32 %645, 2
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %652, label %648

648:                                              ; preds = %644
  %649 = and i32 %645, 3
  %650 = icmp eq i32 %649, 3
  %651 = and i1 %403, %650
  br i1 %651, label %654, label %658, !prof !49

652:                                              ; preds = %642, %644
  %653 = icmp eq i32 %643, 0
  br i1 %653, label %658, label %654, !prof !43

654:                                              ; preds = %648, %652
  store i32 2282, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93, i32 4, i64 38), align 8, !tbaa !35
  br label %658

655:                                              ; preds = %368
  %656 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %657 = icmp ne i32 %656, 0
  br label %670

658:                                              ; preds = %654, %652, %648
  br i1 %27, label %667, label %659, !prof !43

659:                                              ; preds = %658
  %660 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %661 = and i32 %660, 2
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %667, label %663

663:                                              ; preds = %659
  %664 = and i32 %660, 3
  %665 = icmp eq i32 %664, 3
  %666 = and i1 %403, %665
  br i1 %666, label %669, label %670, !prof !49

667:                                              ; preds = %659, %658
  %668 = icmp eq i32 %643, 0
  br i1 %668, label %670, label %669, !prof !43

669:                                              ; preds = %663, %667
  store i32 2283, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93, i32 4, i64 39), align 4, !tbaa !35
  br label %670

670:                                              ; preds = %655, %669, %667, %663
  %671 = phi i32 [ %643, %669 ], [ 0, %667 ], [ %643, %663 ], [ %656, %655 ]
  %672 = phi i1 [ %403, %669 ], [ %403, %667 ], [ %403, %663 ], [ %657, %655 ]
  %673 = load i32, ptr @target_flags, align 4, !tbaa !42
  %674 = and i32 %673, 4096
  %675 = icmp eq i32 %674, 0
  %676 = select i1 %675, i1 %672, i1 false
  br i1 %676, label %677, label %678, !prof !52

677:                                              ; preds = %670
  store i32 2284, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88, i32 4, i64 40), align 16, !tbaa !35
  br label %682

678:                                              ; preds = %670
  br i1 %675, label %682, label %679, !prof !53

679:                                              ; preds = %678
  %680 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %681 = and i32 %680, 65536
  br label %930

682:                                              ; preds = %677, %678
  br i1 %19, label %691, label %683, !prof !43

683:                                              ; preds = %682
  %684 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %685 = and i32 %684, 2
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %691, label %687

687:                                              ; preds = %683
  %688 = and i32 %684, 3
  %689 = icmp eq i32 %688, 3
  %690 = select i1 %689, i1 %672, i1 false
  br i1 %690, label %693, label %694, !prof !49

691:                                              ; preds = %682, %683
  %692 = icmp eq i32 %671, 0
  br i1 %692, label %694, label %693, !prof !43

693:                                              ; preds = %687, %691
  store i32 2285, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88, i32 4, i64 38), align 8, !tbaa !35
  br label %694

694:                                              ; preds = %693, %691, %687
  br i1 %27, label %703, label %695, !prof !43

695:                                              ; preds = %694
  %696 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %697 = and i32 %696, 2
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %703, label %699

699:                                              ; preds = %695
  %700 = and i32 %696, 3
  %701 = icmp eq i32 %700, 3
  %702 = select i1 %701, i1 %672, i1 false
  br i1 %702, label %705, label %706, !prof !49

703:                                              ; preds = %695, %694
  %704 = icmp eq i32 %671, 0
  br i1 %704, label %706, label %705, !prof !43

705:                                              ; preds = %699, %703
  store i32 2286, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88, i32 4, i64 39), align 4, !tbaa !35
  br label %706

706:                                              ; preds = %705, %703, %699
  br i1 %672, label %707, label %708, !prof !51

707:                                              ; preds = %706
  store i32 2287, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89, i32 4, i64 40), align 16, !tbaa !35
  br label %708

708:                                              ; preds = %707, %706
  br i1 %19, label %717, label %709, !prof !43

709:                                              ; preds = %708
  %710 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %711 = and i32 %710, 2
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %717, label %713

713:                                              ; preds = %709
  %714 = and i32 %710, 3
  %715 = icmp eq i32 %714, 3
  %716 = select i1 %715, i1 %672, i1 false
  br i1 %716, label %719, label %720, !prof !49

717:                                              ; preds = %708, %709
  %718 = icmp eq i32 %671, 0
  br i1 %718, label %720, label %719, !prof !43

719:                                              ; preds = %713, %717
  store i32 2288, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89, i32 4, i64 38), align 8, !tbaa !35
  br label %720

720:                                              ; preds = %719, %717, %713
  br i1 %27, label %729, label %721, !prof !43

721:                                              ; preds = %720
  %722 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %723 = and i32 %722, 2
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %729, label %725

725:                                              ; preds = %721
  %726 = and i32 %722, 3
  %727 = icmp eq i32 %726, 3
  %728 = select i1 %727, i1 %672, i1 false
  br i1 %728, label %731, label %732, !prof !49

729:                                              ; preds = %721, %720
  %730 = icmp eq i32 %671, 0
  br i1 %730, label %732, label %731, !prof !43

731:                                              ; preds = %725, %729
  store i32 2289, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89, i32 4, i64 39), align 4, !tbaa !35
  br label %732

732:                                              ; preds = %731, %729, %725
  br i1 %672, label %733, label %734, !prof !51

733:                                              ; preds = %732
  store i32 2291, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81, i32 4, i64 40), align 16, !tbaa !35
  br label %734

734:                                              ; preds = %733, %732
  br i1 %19, label %743, label %735, !prof !43

735:                                              ; preds = %734
  %736 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %737 = and i32 %736, 2
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %743, label %739

739:                                              ; preds = %735
  %740 = and i32 %736, 3
  %741 = icmp eq i32 %740, 3
  %742 = select i1 %741, i1 %672, i1 false
  br i1 %742, label %745, label %746, !prof !49

743:                                              ; preds = %734, %735
  %744 = icmp eq i32 %671, 0
  br i1 %744, label %746, label %745, !prof !43

745:                                              ; preds = %739, %743
  store i32 2292, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81, i32 4, i64 38), align 8, !tbaa !35
  br label %746

746:                                              ; preds = %745, %743, %739
  br i1 %27, label %755, label %747, !prof !43

747:                                              ; preds = %746
  %748 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %749 = and i32 %748, 2
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %755, label %751

751:                                              ; preds = %747
  %752 = and i32 %748, 3
  %753 = icmp eq i32 %752, 3
  %754 = select i1 %753, i1 %672, i1 false
  br i1 %754, label %757, label %758, !prof !49

755:                                              ; preds = %747, %746
  %756 = icmp eq i32 %671, 0
  br i1 %756, label %758, label %757, !prof !43

757:                                              ; preds = %751, %755
  store i32 2293, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81, i32 4, i64 39), align 4, !tbaa !35
  br label %758

758:                                              ; preds = %757, %755, %751
  br i1 %672, label %759, label %760, !prof !51

759:                                              ; preds = %758
  store i32 2294, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82, i32 4, i64 40), align 16, !tbaa !35
  br label %760

760:                                              ; preds = %759, %758
  br i1 %19, label %769, label %761, !prof !43

761:                                              ; preds = %760
  %762 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %763 = and i32 %762, 2
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %769, label %765

765:                                              ; preds = %761
  %766 = and i32 %762, 3
  %767 = icmp eq i32 %766, 3
  %768 = select i1 %767, i1 %672, i1 false
  br i1 %768, label %771, label %772, !prof !49

769:                                              ; preds = %760, %761
  %770 = icmp eq i32 %671, 0
  br i1 %770, label %772, label %771, !prof !43

771:                                              ; preds = %765, %769
  store i32 2295, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82, i32 4, i64 38), align 8, !tbaa !35
  br label %772

772:                                              ; preds = %771, %769, %765
  br i1 %27, label %781, label %773, !prof !43

773:                                              ; preds = %772
  %774 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %775 = and i32 %774, 2
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %781, label %777

777:                                              ; preds = %773
  %778 = and i32 %774, 3
  %779 = icmp eq i32 %778, 3
  %780 = select i1 %779, i1 %672, i1 false
  br i1 %780, label %783, label %784, !prof !49

781:                                              ; preds = %773, %772
  %782 = icmp eq i32 %671, 0
  br i1 %782, label %784, label %783, !prof !43

783:                                              ; preds = %777, %781
  store i32 2296, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82, i32 4, i64 39), align 4, !tbaa !35
  br label %784

784:                                              ; preds = %783, %781, %777
  br i1 %672, label %785, label %786, !prof !51

785:                                              ; preds = %784
  store i32 2297, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83, i32 4, i64 40), align 16, !tbaa !35
  br label %786

786:                                              ; preds = %785, %784
  %787 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %788 = and i32 %787, 65536
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %798, label %790, !prof !43

790:                                              ; preds = %786
  %791 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %792 = and i32 %791, 2
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %798, label %794

794:                                              ; preds = %790
  %795 = and i32 %791, 3
  %796 = icmp eq i32 %795, 3
  %797 = select i1 %796, i1 %672, i1 false
  br i1 %797, label %800, label %801, !prof !49

798:                                              ; preds = %786, %790
  %799 = icmp eq i32 %671, 0
  br i1 %799, label %801, label %800, !prof !43

800:                                              ; preds = %794, %798
  store i32 2298, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83, i32 4, i64 38), align 8, !tbaa !35
  br label %801

801:                                              ; preds = %800, %798, %794
  %802 = and i32 %787, 131072
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %812, label %804, !prof !43

804:                                              ; preds = %801
  %805 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %806 = and i32 %805, 2
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %812, label %808

808:                                              ; preds = %804
  %809 = and i32 %805, 3
  %810 = icmp eq i32 %809, 3
  %811 = select i1 %810, i1 %672, i1 false
  br i1 %811, label %814, label %815, !prof !49

812:                                              ; preds = %804, %801
  %813 = icmp eq i32 %671, 0
  br i1 %813, label %815, label %814, !prof !43

814:                                              ; preds = %808, %812
  store i32 2299, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83, i32 4, i64 39), align 4, !tbaa !35
  br label %815

815:                                              ; preds = %814, %812, %808
  br i1 %672, label %816, label %817, !prof !51

816:                                              ; preds = %815
  store i32 2300, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84, i32 4, i64 40), align 16, !tbaa !35
  br label %817

817:                                              ; preds = %816, %815
  br i1 %789, label %826, label %818, !prof !43

818:                                              ; preds = %817
  %819 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %820 = and i32 %819, 2
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %826, label %822

822:                                              ; preds = %818
  %823 = and i32 %819, 3
  %824 = icmp eq i32 %823, 3
  %825 = select i1 %824, i1 %672, i1 false
  br i1 %825, label %828, label %829, !prof !49

826:                                              ; preds = %817, %818
  %827 = icmp eq i32 %671, 0
  br i1 %827, label %829, label %828, !prof !43

828:                                              ; preds = %822, %826
  store i32 2301, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84, i32 4, i64 38), align 8, !tbaa !35
  br label %829

829:                                              ; preds = %828, %826, %822
  br i1 %803, label %838, label %830, !prof !43

830:                                              ; preds = %829
  %831 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %832 = and i32 %831, 2
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %838, label %834

834:                                              ; preds = %830
  %835 = and i32 %831, 3
  %836 = icmp eq i32 %835, 3
  %837 = select i1 %836, i1 %672, i1 false
  br i1 %837, label %840, label %841, !prof !49

838:                                              ; preds = %830, %829
  %839 = icmp eq i32 %671, 0
  br i1 %839, label %841, label %840, !prof !43

840:                                              ; preds = %834, %838
  store i32 2302, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84, i32 4, i64 39), align 4, !tbaa !35
  br label %841

841:                                              ; preds = %840, %838, %834
  br i1 %672, label %842, label %843, !prof !51

842:                                              ; preds = %841
  store i32 2303, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85, i32 4, i64 40), align 16, !tbaa !35
  br label %843

843:                                              ; preds = %842, %841
  br i1 %789, label %852, label %844, !prof !43

844:                                              ; preds = %843
  %845 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %846 = and i32 %845, 2
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %852, label %848

848:                                              ; preds = %844
  %849 = and i32 %845, 3
  %850 = icmp eq i32 %849, 3
  %851 = select i1 %850, i1 %672, i1 false
  br i1 %851, label %854, label %855, !prof !49

852:                                              ; preds = %843, %844
  %853 = icmp eq i32 %671, 0
  br i1 %853, label %855, label %854, !prof !43

854:                                              ; preds = %848, %852
  store i32 2304, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85, i32 4, i64 38), align 8, !tbaa !35
  br label %855

855:                                              ; preds = %854, %852, %848
  br i1 %803, label %864, label %856, !prof !43

856:                                              ; preds = %855
  %857 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %858 = and i32 %857, 2
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %864, label %860

860:                                              ; preds = %856
  %861 = and i32 %857, 3
  %862 = icmp eq i32 %861, 3
  %863 = select i1 %862, i1 %672, i1 false
  br i1 %863, label %866, label %867, !prof !49

864:                                              ; preds = %856, %855
  %865 = icmp eq i32 %671, 0
  br i1 %865, label %867, label %866, !prof !43

866:                                              ; preds = %860, %864
  store i32 2305, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85, i32 4, i64 39), align 4, !tbaa !35
  br label %867

867:                                              ; preds = %866, %864, %860
  br i1 %672, label %868, label %869, !prof !51

868:                                              ; preds = %867
  store i32 2306, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86, i32 4, i64 40), align 16, !tbaa !35
  br label %869

869:                                              ; preds = %868, %867
  br i1 %789, label %878, label %870, !prof !43

870:                                              ; preds = %869
  %871 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %872 = and i32 %871, 2
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %878, label %874

874:                                              ; preds = %870
  %875 = and i32 %871, 3
  %876 = icmp eq i32 %875, 3
  %877 = select i1 %876, i1 %672, i1 false
  br i1 %877, label %880, label %881, !prof !49

878:                                              ; preds = %869, %870
  %879 = icmp eq i32 %671, 0
  br i1 %879, label %881, label %880, !prof !43

880:                                              ; preds = %874, %878
  store i32 2307, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86, i32 4, i64 38), align 8, !tbaa !35
  br label %881

881:                                              ; preds = %880, %878, %874
  br i1 %803, label %890, label %882, !prof !43

882:                                              ; preds = %881
  %883 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %884 = and i32 %883, 2
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %890, label %886

886:                                              ; preds = %882
  %887 = and i32 %883, 3
  %888 = icmp eq i32 %887, 3
  %889 = select i1 %888, i1 %672, i1 false
  br i1 %889, label %892, label %893, !prof !49

890:                                              ; preds = %882, %881
  %891 = icmp eq i32 %671, 0
  br i1 %891, label %893, label %892, !prof !43

892:                                              ; preds = %886, %890
  store i32 2308, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86, i32 4, i64 39), align 4, !tbaa !35
  br label %893

893:                                              ; preds = %892, %890, %886
  br i1 %672, label %894, label %895, !prof !51

894:                                              ; preds = %893
  store i32 2309, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87, i32 4, i64 40), align 16, !tbaa !35
  br label %895

895:                                              ; preds = %894, %893
  br i1 %789, label %904, label %896, !prof !43

896:                                              ; preds = %895
  %897 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %898 = and i32 %897, 2
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %904, label %900

900:                                              ; preds = %896
  %901 = and i32 %897, 3
  %902 = icmp eq i32 %901, 3
  %903 = select i1 %902, i1 %672, i1 false
  br i1 %903, label %906, label %907, !prof !49

904:                                              ; preds = %895, %896
  %905 = icmp eq i32 %671, 0
  br i1 %905, label %907, label %906, !prof !43

906:                                              ; preds = %900, %904
  store i32 2310, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87, i32 4, i64 38), align 8, !tbaa !35
  br label %907

907:                                              ; preds = %906, %904, %900
  br i1 %803, label %916, label %908, !prof !43

908:                                              ; preds = %907
  %909 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %910 = and i32 %909, 2
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %916, label %912

912:                                              ; preds = %908
  %913 = and i32 %909, 3
  %914 = icmp eq i32 %913, 3
  %915 = select i1 %914, i1 %672, i1 false
  br i1 %915, label %918, label %919, !prof !49

916:                                              ; preds = %908, %907
  %917 = icmp eq i32 %671, 0
  br i1 %917, label %919, label %918, !prof !43

918:                                              ; preds = %912, %916
  store i32 2311, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87, i32 4, i64 39), align 4, !tbaa !35
  br label %919

919:                                              ; preds = %918, %916, %912
  br i1 %789, label %928, label %920, !prof !43

920:                                              ; preds = %919
  %921 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %922 = and i32 %921, 2
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %928, label %924

924:                                              ; preds = %920
  %925 = and i32 %921, 3
  %926 = icmp eq i32 %925, 3
  %927 = select i1 %926, i1 %672, i1 false
  br i1 %927, label %942, label %934, !prof !49

928:                                              ; preds = %919, %920
  %929 = icmp eq i32 %671, 0
  br i1 %929, label %930, label %942, !prof !43

930:                                              ; preds = %679, %928
  %931 = phi i32 [ %681, %679 ], [ %788, %928 ]
  %932 = phi i32 [ %680, %679 ], [ %787, %928 ]
  %933 = icmp eq i32 %931, 0
  br i1 %933, label %944, label %934, !prof !54

934:                                              ; preds = %924, %930
  %935 = phi i32 [ %932, %930 ], [ %787, %924 ]
  %936 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %937 = and i32 %936, 2
  %938 = icmp eq i32 %937, 0
  %939 = load i32, ptr @flag_trapping_math, align 4
  %940 = icmp ne i32 %939, 0
  %941 = select i1 %938, i1 true, i1 %940
  br i1 %941, label %944, label %942

942:                                              ; preds = %934, %924, %928
  %943 = phi i32 [ %935, %934 ], [ %787, %924 ], [ %787, %928 ]
  store i32 2312, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99, i32 4, i64 38), align 8, !tbaa !35
  br label %944

944:                                              ; preds = %930, %942, %934
  %945 = phi i32 [ %932, %930 ], [ %943, %942 ], [ %935, %934 ]
  %946 = and i32 %945, 131072
  br i1 %675, label %947, label %959, !prof !43

947:                                              ; preds = %944
  %948 = icmp eq i32 %946, 0
  br i1 %948, label %957, label %949, !prof !43

949:                                              ; preds = %947
  %950 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %951 = and i32 %950, 2
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %957, label %953

953:                                              ; preds = %949
  %954 = and i32 %950, 3
  %955 = icmp eq i32 %954, 3
  %956 = select i1 %955, i1 %672, i1 false
  br i1 %956, label %968, label %961, !prof !49

957:                                              ; preds = %949, %947
  %958 = icmp eq i32 %671, 0
  br i1 %958, label %959, label %968, !prof !43

959:                                              ; preds = %944, %957
  %960 = icmp eq i32 %946, 0
  br i1 %960, label %969, label %961, !prof !54

961:                                              ; preds = %953, %959
  %962 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %963 = and i32 %962, 2
  %964 = icmp eq i32 %963, 0
  %965 = load i32, ptr @flag_trapping_math, align 4
  %966 = icmp ne i32 %965, 0
  %967 = select i1 %964, i1 true, i1 %966
  br i1 %967, label %969, label %968

968:                                              ; preds = %961, %953, %957
  store i32 2313, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99, i32 4, i64 39), align 4, !tbaa !35
  br label %969

969:                                              ; preds = %968, %961, %959
  %970 = and i32 %945, 65536
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %983, label %972, !prof !43

972:                                              ; preds = %969
  %973 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %974 = and i32 %973, 2
  %975 = icmp eq i32 %974, 0
  %976 = load i32, ptr @flag_trapping_math, align 4
  %977 = icmp ne i32 %976, 0
  %978 = select i1 %975, i1 true, i1 %977
  %979 = load i32, ptr @flag_rounding_math, align 4
  %980 = icmp ne i32 %979, 0
  %981 = select i1 %978, i1 true, i1 %980
  br i1 %981, label %983, label %982

982:                                              ; preds = %972
  store i32 2314, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97, i32 4, i64 38), align 8, !tbaa !35
  br label %983

983:                                              ; preds = %969, %982, %972
  %984 = and i32 %945, 131072
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %997, label %986, !prof !43

986:                                              ; preds = %983
  %987 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %988 = and i32 %987, 2
  %989 = icmp eq i32 %988, 0
  %990 = load i32, ptr @flag_trapping_math, align 4
  %991 = icmp ne i32 %990, 0
  %992 = select i1 %989, i1 true, i1 %991
  %993 = load i32, ptr @flag_rounding_math, align 4
  %994 = icmp ne i32 %993, 0
  %995 = select i1 %992, i1 true, i1 %994
  br i1 %995, label %997, label %996

996:                                              ; preds = %986
  store i32 2315, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97, i32 4, i64 39), align 4, !tbaa !35
  br label %997

997:                                              ; preds = %996, %986, %983
  br i1 %675, label %998, label %999, !prof !43

998:                                              ; preds = %997
  store i32 2325, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 15, i64 40), align 4, !tbaa !35
  store i32 2326, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 16, i64 40), align 8, !tbaa !35
  store i32 2327, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 17, i64 40), align 4, !tbaa !35
  br label %999

999:                                              ; preds = %997, %998
  br i1 %971, label %1005, label %1000, !prof !43

1000:                                             ; preds = %999
  %1001 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1002 = and i32 %1001, 2
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %1000
  store i32 2328, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 16, i64 38), align 16, !tbaa !35
  br label %1005

1005:                                             ; preds = %999, %1004, %1000
  br i1 %985, label %1011, label %1006, !prof !43

1006:                                             ; preds = %1005
  %1007 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1008 = and i32 %1007, 2
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1011, label %1010

1010:                                             ; preds = %1006
  store i32 2329, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br label %1011

1011:                                             ; preds = %1010, %1006, %1005
  br i1 %971, label %1023, label %1012, !prof !43

1012:                                             ; preds = %1011
  %1013 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1014 = and i32 %1013, 2
  %1015 = icmp eq i32 %1014, 0
  %1016 = load i32, ptr @flag_trapping_math, align 4
  %1017 = icmp ne i32 %1016, 0
  %1018 = select i1 %1015, i1 true, i1 %1017
  %1019 = load i32, ptr @flag_rounding_math, align 4
  %1020 = icmp ne i32 %1019, 0
  %1021 = select i1 %1018, i1 true, i1 %1020
  br i1 %1021, label %1023, label %1022

1022:                                             ; preds = %1012
  store i32 2330, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 3, i64 16, i64 38), align 16, !tbaa !35
  br label %1023

1023:                                             ; preds = %1011, %1022, %1012
  br i1 %985, label %1035, label %1024, !prof !43

1024:                                             ; preds = %1023
  %1025 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1026 = and i32 %1025, 2
  %1027 = icmp eq i32 %1026, 0
  %1028 = load i32, ptr @flag_trapping_math, align 4
  %1029 = icmp ne i32 %1028, 0
  %1030 = select i1 %1027, i1 true, i1 %1029
  %1031 = load i32, ptr @flag_rounding_math, align 4
  %1032 = icmp ne i32 %1031, 0
  %1033 = select i1 %1030, i1 true, i1 %1032
  br i1 %1033, label %1035, label %1034

1034:                                             ; preds = %1024
  store i32 2331, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br label %1035

1035:                                             ; preds = %1034, %1024, %1023
  br i1 %676, label %1036, label %1037, !prof !52

1036:                                             ; preds = %1035
  store i32 2333, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94, i32 4, i64 40), align 16, !tbaa !35
  br label %1038

1037:                                             ; preds = %1035
  br i1 %675, label %1038, label %1049, !prof !53

1038:                                             ; preds = %1036, %1037
  br i1 %971, label %1047, label %1039, !prof !43

1039:                                             ; preds = %1038
  %1040 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1041 = and i32 %1040, 2
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1047, label %1043

1043:                                             ; preds = %1039
  %1044 = and i32 %1040, 3
  %1045 = icmp eq i32 %1044, 3
  %1046 = select i1 %1045, i1 %672, i1 false
  br i1 %1046, label %1059, label %1053, !prof !49

1047:                                             ; preds = %1038, %1039
  %1048 = icmp eq i32 %671, 0
  br i1 %1048, label %1049, label %1059, !prof !43

1049:                                             ; preds = %1047, %1037
  br i1 %971, label %1060, label %1050, !prof !54

1050:                                             ; preds = %1049
  %1051 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1052 = and i32 %1051, 2
  br label %1053

1053:                                             ; preds = %1050, %1043
  %1054 = phi i32 [ %1052, %1050 ], [ 1, %1043 ]
  %1055 = icmp eq i32 %1054, 0
  %1056 = load i32, ptr @flag_trapping_math, align 4
  %1057 = icmp ne i32 %1056, 0
  %1058 = select i1 %1055, i1 true, i1 %1057
  br i1 %1058, label %1060, label %1059

1059:                                             ; preds = %1053, %1043, %1047
  store i32 2334, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94, i32 4, i64 38), align 8, !tbaa !35
  br label %1060

1060:                                             ; preds = %1049, %1059, %1053
  br i1 %675, label %1061, label %1072, !prof !43

1061:                                             ; preds = %1060
  br i1 %985, label %1070, label %1062, !prof !43

1062:                                             ; preds = %1061
  %1063 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1064 = and i32 %1063, 2
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1070, label %1066

1066:                                             ; preds = %1062
  %1067 = and i32 %1063, 3
  %1068 = icmp eq i32 %1067, 3
  %1069 = select i1 %1068, i1 %672, i1 false
  br i1 %1069, label %1082, label %1076, !prof !49

1070:                                             ; preds = %1062, %1061
  %1071 = icmp eq i32 %671, 0
  br i1 %1071, label %1072, label %1082, !prof !43

1072:                                             ; preds = %1070, %1060
  br i1 %985, label %1083, label %1073, !prof !54

1073:                                             ; preds = %1072
  %1074 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1075 = and i32 %1074, 2
  br label %1076

1076:                                             ; preds = %1073, %1066
  %1077 = phi i32 [ %1075, %1073 ], [ 1, %1066 ]
  %1078 = icmp eq i32 %1077, 0
  %1079 = load i32, ptr @flag_trapping_math, align 4
  %1080 = icmp ne i32 %1079, 0
  %1081 = select i1 %1078, i1 true, i1 %1080
  br i1 %1081, label %1083, label %1082

1082:                                             ; preds = %1076, %1066, %1070
  store i32 2335, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94, i32 4, i64 39), align 4, !tbaa !35
  br label %1083

1083:                                             ; preds = %1082, %1076, %1072
  br i1 %675, label %1084, label %1106, !prof !43

1084:                                             ; preds = %1083
  %1085 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1086 = and i32 %1085, 2
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1092, label %1088, !prof !43

1088:                                             ; preds = %1084
  %1089 = and i32 %1085, 3
  %1090 = icmp eq i32 %1089, 3
  %1091 = select i1 %1090, i1 %672, i1 false
  br i1 %1091, label %1094, label %1095, !prof !49

1092:                                             ; preds = %1084
  %1093 = icmp eq i32 %671, 0
  br i1 %1093, label %1106, label %1104, !prof !43

1094:                                             ; preds = %1088
  store i32 2345, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 15, i64 40), align 4, !tbaa !35
  br label %1095

1095:                                             ; preds = %1088, %1094
  %1096 = and i32 %1085, 3
  %1097 = icmp eq i32 %1096, 3
  %1098 = select i1 %1097, i1 %672, i1 false
  br i1 %1098, label %1099, label %1100, !prof !49

1099:                                             ; preds = %1095
  store i32 2346, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 40), align 8, !tbaa !35
  br label %1100

1100:                                             ; preds = %1095, %1099
  %1101 = and i32 %1085, 3
  %1102 = icmp eq i32 %1101, 3
  %1103 = select i1 %1102, i1 %672, i1 false
  br i1 %1103, label %1105, label %1106, !prof !49

1104:                                             ; preds = %1092
  store i32 2345, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 15, i64 40), align 4, !tbaa !35
  store i32 2346, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 40), align 8, !tbaa !35
  br label %1105

1105:                                             ; preds = %1104, %1100
  store i32 2347, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 17, i64 40), align 4, !tbaa !35
  br label %1106

1106:                                             ; preds = %1092, %1083, %1105, %1100
  br i1 %971, label %1115, label %1107, !prof !43

1107:                                             ; preds = %1106
  %1108 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1109 = and i32 %1108, 2
  %1110 = icmp eq i32 %1109, 0
  %1111 = load i32, ptr @flag_trapping_math, align 4
  %1112 = icmp ne i32 %1111, 0
  %1113 = select i1 %1110, i1 true, i1 %1112
  br i1 %1113, label %1115, label %1114

1114:                                             ; preds = %1107
  store i32 2348, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 38), align 16, !tbaa !35
  br label %1115

1115:                                             ; preds = %1106, %1114, %1107
  br i1 %985, label %1124, label %1116, !prof !43

1116:                                             ; preds = %1115
  %1117 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1118 = and i32 %1117, 2
  %1119 = icmp eq i32 %1118, 0
  %1120 = load i32, ptr @flag_trapping_math, align 4
  %1121 = icmp ne i32 %1120, 0
  %1122 = select i1 %1119, i1 true, i1 %1121
  br i1 %1122, label %1124, label %1123

1123:                                             ; preds = %1116
  store i32 2349, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br label %1124

1124:                                             ; preds = %1123, %1116, %1115
  br i1 %676, label %1125, label %1126, !prof !52

1125:                                             ; preds = %1124
  store i32 2351, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95, i32 4, i64 40), align 16, !tbaa !35
  br label %1127

1126:                                             ; preds = %1124
  br i1 %675, label %1127, label %1138, !prof !53

1127:                                             ; preds = %1125, %1126
  br i1 %971, label %1136, label %1128, !prof !43

1128:                                             ; preds = %1127
  %1129 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1130 = and i32 %1129, 2
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1136, label %1132

1132:                                             ; preds = %1128
  %1133 = and i32 %1129, 3
  %1134 = icmp eq i32 %1133, 3
  %1135 = select i1 %1134, i1 %672, i1 false
  br i1 %1135, label %1148, label %1142, !prof !49

1136:                                             ; preds = %1127, %1128
  %1137 = icmp eq i32 %671, 0
  br i1 %1137, label %1138, label %1148, !prof !43

1138:                                             ; preds = %1136, %1126
  br i1 %971, label %1149, label %1139, !prof !54

1139:                                             ; preds = %1138
  %1140 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1141 = and i32 %1140, 2
  br label %1142

1142:                                             ; preds = %1139, %1132
  %1143 = phi i32 [ %1141, %1139 ], [ 1, %1132 ]
  %1144 = icmp eq i32 %1143, 0
  %1145 = load i32, ptr @flag_trapping_math, align 4
  %1146 = icmp ne i32 %1145, 0
  %1147 = select i1 %1144, i1 true, i1 %1146
  br i1 %1147, label %1149, label %1148

1148:                                             ; preds = %1142, %1132, %1136
  store i32 2352, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95, i32 4, i64 38), align 8, !tbaa !35
  br label %1149

1149:                                             ; preds = %1138, %1148, %1142
  br i1 %675, label %1150, label %1161, !prof !43

1150:                                             ; preds = %1149
  br i1 %985, label %1159, label %1151, !prof !43

1151:                                             ; preds = %1150
  %1152 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1153 = and i32 %1152, 2
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1159, label %1155

1155:                                             ; preds = %1151
  %1156 = and i32 %1152, 3
  %1157 = icmp eq i32 %1156, 3
  %1158 = select i1 %1157, i1 %672, i1 false
  br i1 %1158, label %1171, label %1165, !prof !49

1159:                                             ; preds = %1151, %1150
  %1160 = icmp eq i32 %671, 0
  br i1 %1160, label %1161, label %1171, !prof !43

1161:                                             ; preds = %1159, %1149
  br i1 %985, label %1172, label %1162, !prof !54

1162:                                             ; preds = %1161
  %1163 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1164 = and i32 %1163, 2
  br label %1165

1165:                                             ; preds = %1162, %1155
  %1166 = phi i32 [ %1164, %1162 ], [ 1, %1155 ]
  %1167 = icmp eq i32 %1166, 0
  %1168 = load i32, ptr @flag_trapping_math, align 4
  %1169 = icmp ne i32 %1168, 0
  %1170 = select i1 %1167, i1 true, i1 %1169
  br i1 %1170, label %1172, label %1171

1171:                                             ; preds = %1165, %1155, %1159
  store i32 2353, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95, i32 4, i64 39), align 4, !tbaa !35
  br label %1172

1172:                                             ; preds = %1171, %1165, %1161
  br i1 %675, label %1173, label %1195, !prof !43

1173:                                             ; preds = %1172
  %1174 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1175 = and i32 %1174, 2
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1181, label %1177, !prof !43

1177:                                             ; preds = %1173
  %1178 = and i32 %1174, 3
  %1179 = icmp eq i32 %1178, 3
  %1180 = select i1 %1179, i1 %672, i1 false
  br i1 %1180, label %1183, label %1184, !prof !49

1181:                                             ; preds = %1173
  %1182 = icmp eq i32 %671, 0
  br i1 %1182, label %1195, label %1193, !prof !43

1183:                                             ; preds = %1177
  store i32 2363, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 15, i64 40), align 4, !tbaa !35
  br label %1184

1184:                                             ; preds = %1177, %1183
  %1185 = and i32 %1174, 3
  %1186 = icmp eq i32 %1185, 3
  %1187 = select i1 %1186, i1 %672, i1 false
  br i1 %1187, label %1188, label %1189, !prof !49

1188:                                             ; preds = %1184
  store i32 2364, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 40), align 8, !tbaa !35
  br label %1189

1189:                                             ; preds = %1184, %1188
  %1190 = and i32 %1174, 3
  %1191 = icmp eq i32 %1190, 3
  %1192 = select i1 %1191, i1 %672, i1 false
  br i1 %1192, label %1194, label %1195, !prof !49

1193:                                             ; preds = %1181
  store i32 2363, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 15, i64 40), align 4, !tbaa !35
  store i32 2364, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 40), align 8, !tbaa !35
  br label %1194

1194:                                             ; preds = %1193, %1189
  store i32 2365, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 17, i64 40), align 4, !tbaa !35
  br label %1195

1195:                                             ; preds = %1181, %1172, %1194, %1189
  br i1 %971, label %1204, label %1196, !prof !43

1196:                                             ; preds = %1195
  %1197 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1198 = and i32 %1197, 2
  %1199 = icmp eq i32 %1198, 0
  %1200 = load i32, ptr @flag_trapping_math, align 4
  %1201 = icmp ne i32 %1200, 0
  %1202 = select i1 %1199, i1 true, i1 %1201
  br i1 %1202, label %1204, label %1203

1203:                                             ; preds = %1196
  store i32 2366, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 38), align 16, !tbaa !35
  br label %1204

1204:                                             ; preds = %1195, %1203, %1196
  br i1 %985, label %1213, label %1205, !prof !43

1205:                                             ; preds = %1204
  %1206 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1207 = and i32 %1206, 2
  %1208 = icmp eq i32 %1207, 0
  %1209 = load i32, ptr @flag_trapping_math, align 4
  %1210 = icmp ne i32 %1209, 0
  %1211 = select i1 %1208, i1 true, i1 %1210
  br i1 %1211, label %1213, label %1212

1212:                                             ; preds = %1205
  store i32 2367, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 39), align 4, !tbaa !35
  br label %1213

1213:                                             ; preds = %1212, %1205, %1204
  br i1 %676, label %1214, label %1215, !prof !52

1214:                                             ; preds = %1213
  store i32 2369, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96, i32 4, i64 40), align 16, !tbaa !35
  br label %1216

1215:                                             ; preds = %1213
  br i1 %675, label %1216, label %1227, !prof !53

1216:                                             ; preds = %1214, %1215
  br i1 %971, label %1225, label %1217, !prof !43

1217:                                             ; preds = %1216
  %1218 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1219 = and i32 %1218, 2
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1225, label %1221

1221:                                             ; preds = %1217
  %1222 = and i32 %1218, 3
  %1223 = icmp eq i32 %1222, 3
  %1224 = select i1 %1223, i1 %672, i1 false
  br i1 %1224, label %1237, label %1231, !prof !49

1225:                                             ; preds = %1216, %1217
  %1226 = icmp eq i32 %671, 0
  br i1 %1226, label %1227, label %1237, !prof !43

1227:                                             ; preds = %1225, %1215
  br i1 %971, label %1238, label %1228, !prof !54

1228:                                             ; preds = %1227
  %1229 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1230 = and i32 %1229, 2
  br label %1231

1231:                                             ; preds = %1228, %1221
  %1232 = phi i32 [ %1230, %1228 ], [ 1, %1221 ]
  %1233 = icmp eq i32 %1232, 0
  %1234 = load i32, ptr @flag_trapping_math, align 4
  %1235 = icmp ne i32 %1234, 0
  %1236 = select i1 %1233, i1 true, i1 %1235
  br i1 %1236, label %1238, label %1237

1237:                                             ; preds = %1231, %1221, %1225
  store i32 2370, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96, i32 4, i64 38), align 8, !tbaa !35
  br label %1238

1238:                                             ; preds = %1227, %1237, %1231
  br i1 %675, label %1239, label %1250, !prof !43

1239:                                             ; preds = %1238
  br i1 %985, label %1248, label %1240, !prof !43

1240:                                             ; preds = %1239
  %1241 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1242 = and i32 %1241, 2
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1248, label %1244

1244:                                             ; preds = %1240
  %1245 = and i32 %1241, 3
  %1246 = icmp eq i32 %1245, 3
  %1247 = select i1 %1246, i1 %672, i1 false
  br i1 %1247, label %1260, label %1254, !prof !49

1248:                                             ; preds = %1240, %1239
  %1249 = icmp eq i32 %671, 0
  br i1 %1249, label %1250, label %1260, !prof !43

1250:                                             ; preds = %1248, %1238
  br i1 %985, label %1261, label %1251, !prof !54

1251:                                             ; preds = %1250
  %1252 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1253 = and i32 %1252, 2
  br label %1254

1254:                                             ; preds = %1251, %1244
  %1255 = phi i32 [ %1253, %1251 ], [ 1, %1244 ]
  %1256 = icmp eq i32 %1255, 0
  %1257 = load i32, ptr @flag_trapping_math, align 4
  %1258 = icmp ne i32 %1257, 0
  %1259 = select i1 %1256, i1 true, i1 %1258
  br i1 %1259, label %1261, label %1260

1260:                                             ; preds = %1254, %1244, %1248
  store i32 2371, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96, i32 4, i64 39), align 4, !tbaa !35
  br label %1261

1261:                                             ; preds = %1260, %1254, %1250
  br i1 %676, label %1262, label %1263, !prof !52

1262:                                             ; preds = %1261
  store i32 2373, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98, i32 4, i64 40), align 16, !tbaa !35
  br label %1264

1263:                                             ; preds = %1261
  br i1 %675, label %1264, label %1317, !prof !53

1264:                                             ; preds = %1262, %1263
  br i1 %971, label %1273, label %1265, !prof !43

1265:                                             ; preds = %1264
  %1266 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1267 = and i32 %1266, 2
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1273, label %1269

1269:                                             ; preds = %1265
  %1270 = and i32 %1266, 3
  %1271 = icmp eq i32 %1270, 3
  %1272 = select i1 %1271, i1 %672, i1 false
  br i1 %1272, label %1275, label %1276, !prof !49

1273:                                             ; preds = %1264, %1265
  %1274 = icmp eq i32 %671, 0
  br i1 %1274, label %1276, label %1275, !prof !43

1275:                                             ; preds = %1269, %1273
  store i32 2374, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98, i32 4, i64 38), align 8, !tbaa !35
  br label %1276

1276:                                             ; preds = %1275, %1273, %1269
  br i1 %985, label %1285, label %1277, !prof !43

1277:                                             ; preds = %1276
  %1278 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1279 = and i32 %1278, 2
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1285, label %1281

1281:                                             ; preds = %1277
  %1282 = and i32 %1278, 3
  %1283 = icmp eq i32 %1282, 3
  %1284 = select i1 %1283, i1 %672, i1 false
  br i1 %1284, label %1287, label %1288, !prof !49

1285:                                             ; preds = %1277, %1276
  %1286 = icmp eq i32 %671, 0
  br i1 %1286, label %1288, label %1287, !prof !43

1287:                                             ; preds = %1281, %1285
  store i32 2375, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98, i32 4, i64 39), align 4, !tbaa !35
  br label %1288

1288:                                             ; preds = %1287, %1285, %1281
  %1289 = load i32, ptr @linux_uclibc, align 4, !tbaa !42
  %1290 = and i32 %1289, 1
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1292, label %1304, !prof !43

1292:                                             ; preds = %1288
  store i32 2378, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104, i32 4, i64 40), align 16, !tbaa !35
  br i1 %971, label %1297, label %1293, !prof !43

1293:                                             ; preds = %1292
  %1294 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1295 = and i32 %1294, 2
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1292, %1293
  store i32 2379, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104, i32 4, i64 38), align 8, !tbaa !35
  br label %1298

1298:                                             ; preds = %1297, %1293
  br i1 %985, label %1303, label %1299, !prof !43

1299:                                             ; preds = %1298
  %1300 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1301 = and i32 %1300, 2
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1303, label %1304

1303:                                             ; preds = %1299, %1298
  store i32 2380, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104, i32 4, i64 39), align 4, !tbaa !35
  br label %1304

1304:                                             ; preds = %1288, %1303, %1299
  br i1 %971, label %1309, label %1305, !prof !43

1305:                                             ; preds = %1304
  %1306 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1307 = and i32 %1306, 2
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1309, label %1310

1309:                                             ; preds = %1304, %1305
  store i32 2381, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 38), align 8, !tbaa !35
  br label %1310

1310:                                             ; preds = %1309, %1305
  br i1 %985, label %1315, label %1311, !prof !43

1311:                                             ; preds = %1310
  %1312 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1313 = and i32 %1312, 2
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1315, label %1316

1315:                                             ; preds = %1311, %1310
  store i32 2382, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 39), align 4, !tbaa !35
  br label %1316

1316:                                             ; preds = %1315, %1311
  store i32 2383, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 40), align 16, !tbaa !35
  br label %1317

1317:                                             ; preds = %1263, %1316
  store i32 2384, ptr getelementptr inbounds ([87 x i32], ptr @movmem_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 2388, ptr getelementptr inbounds ([87 x i32], ptr @setmem_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 2392, ptr getelementptr inbounds ([87 x i32], ptr @cmpstrn_optab, i64 0, i64 16), align 16, !tbaa !42
  store i32 2396, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114, i32 4, i64 16), align 16, !tbaa !35
  store i32 2397, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114, i32 4, i64 17), align 4, !tbaa !35
  %1318 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !40
  %1319 = icmp eq i8 %1318, 0
  br i1 %1319, label %1321, label %1320, !prof !41

1320:                                             ; preds = %1317
  store i32 2401, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 14), align 8, !tbaa !42
  br label %1321

1321:                                             ; preds = %1320, %1317
  %1322 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 23), align 1, !tbaa !40
  %1323 = icmp eq i8 %1322, 0
  br i1 %1323, label %1325, label %1324, !prof !41

1324:                                             ; preds = %1321
  store i32 2402, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 15), align 4, !tbaa !42
  br label %1325

1325:                                             ; preds = %1324, %1321
  store i32 2403, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 16), align 16, !tbaa !42
  %1326 = and i32 %673, 2
  %1327 = icmp ne i32 %1326, 0
  %1328 = load i8, ptr @ix86_arch_features, align 1
  %1329 = icmp ne i8 %1328, 0
  %1330 = select i1 %1327, i1 %1329, i1 false
  br i1 %1330, label %1348, label %1331, !prof !52

1331:                                             ; preds = %1325
  %1332 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %1333 = and i32 %1332, 65536
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1340, label %1335, !prof !43

1335:                                             ; preds = %1331
  %1336 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1337 = and i32 %1336, 2
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1340, label %1339

1339:                                             ; preds = %1335
  store i32 2406, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 38), align 8, !tbaa !42
  br label %1340

1340:                                             ; preds = %1335, %1331, %1339
  %1341 = and i32 %1332, 131072
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1349, label %1343, !prof !43

1343:                                             ; preds = %1340
  %1344 = load i32, ptr @ix86_fpmath, align 4, !tbaa !42
  %1345 = and i32 %1344, 2
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1349, label %1347

1347:                                             ; preds = %1343
  store i32 2407, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 39), align 4, !tbaa !42
  br label %1349

1348:                                             ; preds = %1325
  store i32 2406, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 38), align 8, !tbaa !42
  store i32 2407, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 39), align 4, !tbaa !42
  store i32 2408, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 40), align 16, !tbaa !42
  br label %1349

1349:                                             ; preds = %1340, %1343, %1347, %1348
  store i32 2411, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 14), align 8, !tbaa !35
  store i32 2412, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 15), align 4, !tbaa !35
  store i32 2413, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 16), align 16, !tbaa !35
  %1350 = and i32 %945, 2048
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1353, label %1352, !prof !43

1352:                                             ; preds = %1349
  store <4 x i32> <i32 2496, i32 2497, i32 2498, i32 2499>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 59), align 4, !tbaa !35
  store i32 2500, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 78), align 8, !tbaa !35
  store <4 x i32> <i32 2506, i32 2507, i32 2508, i32 2509>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 59), align 4, !tbaa !35
  store i32 2510, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 78), align 8, !tbaa !35
  store <4 x i32> <i32 2511, i32 2512, i32 2513, i32 2514>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 59), align 4, !tbaa !35
  store i32 2515, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 78), align 8, !tbaa !35
  store i32 2523, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 78), align 8, !tbaa !35
  store i32 2526, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 78), align 8, !tbaa !35
  br label %1353

1353:                                             ; preds = %1349, %1352
  br i1 %971, label %1355, label %1354, !prof !43

1354:                                             ; preds = %1353
  store i32 2527, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 78), align 8, !tbaa !35
  br label %1355

1355:                                             ; preds = %1354, %1353
  br i1 %1351, label %1357, label %1356, !prof !43

1356:                                             ; preds = %1355
  store i32 2568, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 61), align 4, !tbaa !35
  store i32 2571, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 61), align 4, !tbaa !35
  br label %1357

1357:                                             ; preds = %1355, %1356
  br i1 %971, label %1359, label %1358, !prof !43

1358:                                             ; preds = %1357
  store i32 2572, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 61), align 4, !tbaa !35
  br label %1359

1359:                                             ; preds = %1358, %1357
  br i1 %1351, label %1361, label %1360, !prof !43

1360:                                             ; preds = %1359
  store i32 2573, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 60), align 16, !tbaa !35
  store i32 2574, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 60), align 16, !tbaa !35
  br label %1361

1361:                                             ; preds = %1359, %1360
  br i1 %971, label %1363, label %1362, !prof !43

1362:                                             ; preds = %1361
  store i32 2575, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 60), align 16, !tbaa !35
  br label %1363

1363:                                             ; preds = %1362, %1361
  br i1 %1351, label %1365, label %1364, !prof !43

1364:                                             ; preds = %1363
  store i32 2576, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 59), align 4, !tbaa !35
  store i32 2577, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 59), align 4, !tbaa !35
  br label %1365

1365:                                             ; preds = %1363, %1364
  br i1 %971, label %1367, label %1366, !prof !43

1366:                                             ; preds = %1365
  store i32 2578, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 59), align 4, !tbaa !35
  br label %1367

1367:                                             ; preds = %1366, %1365
  %1368 = and i32 %945, 32
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1371, label %1370, !prof !43

1370:                                             ; preds = %1367
  store <4 x i32> <i32 2584, i32 2585, i32 2586, i32 2587>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 68), align 16, !tbaa !35
  store i32 2588, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 81), align 4, !tbaa !35
  br label %1371

1371:                                             ; preds = %1367, %1370
  %1372 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %1373 = and i32 %1372, 32
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1376, label %1375, !prof !43

1375:                                             ; preds = %1371
  store i32 2589, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 82), align 8, !tbaa !35
  br label %1376

1376:                                             ; preds = %1375, %1371
  %1377 = and i32 %1372, 65536
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1380, label %1379, !prof !43

1379:                                             ; preds = %1376
  store <4 x i32> <i32 2590, i32 2591, i32 2592, i32 2593>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 63), align 4, !tbaa !35
  store i32 2594, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 67), align 4, !tbaa !35
  store i32 2595, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 79), align 4, !tbaa !35
  store i32 2596, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 80), align 16, !tbaa !35
  br label %1380

1380:                                             ; preds = %1376, %1379
  br i1 %1374, label %1382, label %1381, !prof !43

1381:                                             ; preds = %1380
  store <4 x i32> <i32 2600, i32 2601, i32 2602, i32 2603>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 68), align 16, !tbaa !35
  store i32 2604, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 81), align 4, !tbaa !35
  store i32 2605, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 82), align 8, !tbaa !35
  br label %1382

1382:                                             ; preds = %1380, %1381
  br i1 %1378, label %1384, label %1383, !prof !43

1383:                                             ; preds = %1382
  store <4 x i32> <i32 2606, i32 2607, i32 2608, i32 2609>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 63), align 4, !tbaa !35
  store i32 2610, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 67), align 4, !tbaa !35
  store i32 2611, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 79), align 4, !tbaa !35
  store i32 2612, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 80), align 16, !tbaa !35
  br label %1384

1384:                                             ; preds = %1382, %1383
  br i1 %1374, label %1386, label %1385, !prof !43

1385:                                             ; preds = %1384
  store <4 x i32> <i32 2613, i32 2614, i32 2615, i32 2616>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 68), align 16, !tbaa !35
  store i32 2617, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 81), align 4, !tbaa !35
  store i32 2618, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 82), align 8, !tbaa !35
  br label %1386

1386:                                             ; preds = %1384, %1385
  br i1 %1378, label %1388, label %1387, !prof !43

1387:                                             ; preds = %1386
  store <4 x i32> <i32 2619, i32 2620, i32 2621, i32 2622>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 63), align 4, !tbaa !35
  store i32 2623, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 67), align 4, !tbaa !35
  store i32 2624, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 79), align 4, !tbaa !35
  store i32 2625, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 80), align 16, !tbaa !35
  store i32 2626, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 79), align 4, !tbaa !35
  br label %1388

1388:                                             ; preds = %1386, %1387
  %1389 = and i32 %1372, 131072
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1392, label %1391, !prof !43

1391:                                             ; preds = %1388
  store i32 2627, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 80), align 16, !tbaa !35
  br label %1392

1392:                                             ; preds = %1391, %1388
  %1393 = and i32 %1372, 2097152
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1396, label %1395, !prof !43

1395:                                             ; preds = %1392
  store i32 2628, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 38), align 8, !tbaa !35
  store i32 2629, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 39), align 4, !tbaa !35
  br label %1396

1396:                                             ; preds = %1392, %1395
  br i1 %1390, label %1398, label %1397, !prof !43

1397:                                             ; preds = %1396
  store i32 2630, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 66), align 8, !tbaa !35
  store i32 2631, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 16), align 16, !tbaa !35
  br label %1398

1398:                                             ; preds = %1396, %1397
  br i1 %1378, label %1400, label %1399, !prof !43

1399:                                             ; preds = %1398
  store i32 2632, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 79), align 4, !tbaa !35
  store i32 2632, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 79), align 4, !tbaa !35
  store i32 2633, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 79), align 4, !tbaa !35
  store i32 2633, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 79), align 4, !tbaa !35
  br label %1400

1400:                                             ; preds = %1398, %1399
  br i1 %1390, label %1402, label %1401, !prof !43

1401:                                             ; preds = %1400
  store i32 2634, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 80), align 16, !tbaa !35
  store i32 2634, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 80), align 16, !tbaa !35
  store i32 2635, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 80), align 16, !tbaa !35
  store i32 2635, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 80), align 16, !tbaa !35
  br label %1402

1402:                                             ; preds = %1400, %1401
  br i1 %1374, label %1404, label %1403, !prof !43

1403:                                             ; preds = %1402
  store i32 2636, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 81), align 4, !tbaa !35
  store i32 2636, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 81), align 4, !tbaa !35
  store i32 2637, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 81), align 4, !tbaa !35
  store i32 2637, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 81), align 4, !tbaa !35
  store i32 2638, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 82), align 8, !tbaa !35
  store i32 2638, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 82), align 8, !tbaa !35
  store i32 2639, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 82), align 8, !tbaa !35
  store i32 2639, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 82), align 8, !tbaa !35
  br label %1404

1404:                                             ; preds = %1402, %1403
  br i1 %1378, label %1406, label %1405, !prof !43

1405:                                             ; preds = %1404
  store i32 2640, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 79), align 4, !tbaa !35
  store i32 2640, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 79), align 4, !tbaa !35
  store i32 2641, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 79), align 4, !tbaa !35
  store i32 2641, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 79), align 4, !tbaa !35
  br label %1406

1406:                                             ; preds = %1404, %1405
  br i1 %1390, label %1408, label %1407, !prof !43

1407:                                             ; preds = %1406
  store i32 2642, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 80), align 16, !tbaa !35
  store i32 2642, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 80), align 16, !tbaa !35
  store i32 2643, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 80), align 16, !tbaa !35
  store i32 2643, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 80), align 16, !tbaa !35
  br label %1408

1408:                                             ; preds = %1406, %1407
  br i1 %1374, label %1410, label %1409, !prof !43

1409:                                             ; preds = %1408
  store i32 2644, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 81), align 4, !tbaa !35
  store i32 2644, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 81), align 4, !tbaa !35
  store i32 2645, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 82), align 8, !tbaa !35
  store i32 2645, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 82), align 8, !tbaa !35
  br label %1410

1410:                                             ; preds = %1408, %1409
  br i1 %1378, label %1412, label %1411, !prof !43

1411:                                             ; preds = %1410
  store i32 2646, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 79), align 4, !tbaa !35
  store i32 2646, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 79), align 4, !tbaa !35
  br label %1412

1412:                                             ; preds = %1410, %1411
  br i1 %1390, label %1414, label %1413, !prof !43

1413:                                             ; preds = %1412
  store i32 2647, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 80), align 16, !tbaa !35
  store i32 2647, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 80), align 16, !tbaa !35
  br label %1414

1414:                                             ; preds = %1413, %1412
  br i1 %1374, label %1416, label %1415, !prof !43

1415:                                             ; preds = %1414
  store i32 2648, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 81), align 4, !tbaa !35
  store i32 2649, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 82), align 8, !tbaa !35
  br label %1416

1416:                                             ; preds = %1414, %1415
  br i1 %1378, label %1418, label %1417, !prof !43

1417:                                             ; preds = %1416
  store i32 2650, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 79), align 4, !tbaa !35
  br label %1418

1418:                                             ; preds = %1417, %1416
  br i1 %1390, label %1420, label %1419, !prof !43

1419:                                             ; preds = %1418
  store i32 2651, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 80), align 16, !tbaa !35
  br label %1420

1420:                                             ; preds = %1419, %1418
  br i1 %1374, label %1422, label %1421, !prof !43

1421:                                             ; preds = %1420
  store i32 2652, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 81), align 4, !tbaa !35
  br label %1422

1422:                                             ; preds = %1421, %1420
  br i1 %1378, label %1424, label %1423, !prof !43

1423:                                             ; preds = %1422
  store i32 2653, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 79), align 4, !tbaa !35
  br label %1424

1424:                                             ; preds = %1423, %1422
  br i1 %1374, label %1426, label %1425, !prof !43

1425:                                             ; preds = %1424
  store i32 2656, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 81), align 4, !tbaa !35
  store i32 2657, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 81), align 4, !tbaa !35
  store i32 2658, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 82), align 8, !tbaa !35
  store i32 2659, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 82), align 8, !tbaa !35
  br label %1426

1426:                                             ; preds = %1424, %1425
  br i1 %1378, label %1428, label %1427, !prof !43

1427:                                             ; preds = %1426
  store i32 2660, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 79), align 4, !tbaa !35
  store i32 2661, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 79), align 4, !tbaa !35
  br label %1428

1428:                                             ; preds = %1426, %1427
  br i1 %1390, label %1430, label %1429, !prof !43

1429:                                             ; preds = %1428
  store i32 2662, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 80), align 16, !tbaa !35
  store i32 2663, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 80), align 16, !tbaa !35
  br label %1430

1430:                                             ; preds = %1428, %1429
  br i1 %1378, label %1432, label %1431, !prof !43

1431:                                             ; preds = %1430
  store i32 2664, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125, i32 4, i64 79), align 4, !tbaa !35
  br label %1432

1432:                                             ; preds = %1431, %1430
  %1433 = and i32 %1372, 262144
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1436, label %1435, !prof !43

1435:                                             ; preds = %1432
  store i32 2665, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125, i32 4, i64 80), align 16, !tbaa !35
  br label %1436

1436:                                             ; preds = %1435, %1432
  br i1 %1378, label %1438, label %1437, !prof !43

1437:                                             ; preds = %1436
  store i32 2666, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 121, i32 4, i64 79), align 4, !tbaa !35
  store i32 2667, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 123, i32 4, i64 79), align 4, !tbaa !35
  store i32 2668, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 79), align 4, !tbaa !42
  br label %1438

1438:                                             ; preds = %1436, %1437
  br i1 %1390, label %1440, label %1439, !prof !43

1439:                                             ; preds = %1438
  store i32 2669, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 80), align 16, !tbaa !42
  br label %1440

1440:                                             ; preds = %1439, %1438
  br i1 %1374, label %1442, label %1441, !prof !43

1441:                                             ; preds = %1440
  store i32 2670, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 81), align 4, !tbaa !35
  store i32 2671, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 81), align 4, !tbaa !35
  store i32 2672, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 81), align 4, !tbaa !35
  store i32 2673, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 82), align 8, !tbaa !35
  store i32 2674, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 82), align 8, !tbaa !35
  store i32 2675, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 82), align 8, !tbaa !35
  br label %1442

1442:                                             ; preds = %1440, %1441
  br i1 %1378, label %1444, label %1443, !prof !43

1443:                                             ; preds = %1442
  store i32 2676, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 79), align 4, !tbaa !35
  store i32 2677, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 79), align 4, !tbaa !35
  store i32 2678, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 79), align 4, !tbaa !35
  br label %1444

1444:                                             ; preds = %1442, %1443
  br i1 %1390, label %1446, label %1445, !prof !43

1445:                                             ; preds = %1444
  store i32 2679, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 80), align 16, !tbaa !35
  store i32 2680, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 80), align 16, !tbaa !35
  store i32 2681, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 80), align 16, !tbaa !35
  br label %1446

1446:                                             ; preds = %1444, %1445
  br i1 %1378, label %1448, label %1447, !prof !43

1447:                                             ; preds = %1446
  store i32 2682, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 79), align 4, !tbaa !35
  br label %1448

1448:                                             ; preds = %1446, %1447
  br i1 %1390, label %1450, label %1449, !prof !43

1449:                                             ; preds = %1448
  store i32 2683, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 80), align 16, !tbaa !35
  store i32 2688, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 79), align 4, !tbaa !35
  store i32 2689, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 79), align 4, !tbaa !35
  store i32 2690, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149, i32 4, i64 64), align 16, !tbaa !35
  store i32 2691, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150, i32 4, i64 64), align 16, !tbaa !35
  store i32 2692, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151, i32 4, i64 64), align 16, !tbaa !35
  store i32 2693, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152, i32 4, i64 64), align 16, !tbaa !35
  store i32 2694, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149, i32 4, i64 65), align 4, !tbaa !35
  store i32 2695, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150, i32 4, i64 65), align 4, !tbaa !35
  store i32 2696, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151, i32 4, i64 65), align 4, !tbaa !35
  store i32 2697, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152, i32 4, i64 65), align 4, !tbaa !35
  store i32 2698, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 80), align 16, !tbaa !35
  br label %1450

1450:                                             ; preds = %1448, %1449
  %1451 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %1452 = and i32 %1451, 131072
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1455, label %1454, !prof !43

1454:                                             ; preds = %1450
  store i32 2699, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156, i32 4, i64 80), align 16, !tbaa !35
  br label %1455

1455:                                             ; preds = %1454, %1450
  %1456 = and i32 %1451, 65536
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1459, label %1458, !prof !43

1458:                                             ; preds = %1455
  store <4 x i32> <i32 2708, i32 2709, i32 2710, i32 2711>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 63), align 4, !tbaa !35
  store i32 2712, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 79), align 4, !tbaa !35
  store i32 2713, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 80), align 16, !tbaa !35
  store <4 x i32> <i32 2715, i32 2716, i32 2717, i32 2718>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 63), align 4, !tbaa !35
  store i32 2719, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 79), align 4, !tbaa !35
  store i32 2720, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 80), align 16, !tbaa !35
  store <4 x i32> <i32 2729, i32 2730, i32 2731, i32 2732>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 63), align 4, !tbaa !35
  store i32 2733, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 79), align 4, !tbaa !35
  store i32 2734, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 80), align 16, !tbaa !35
  br label %1459

1459:                                             ; preds = %1455, %1458
  br i1 %1453, label %1461, label %1460, !prof !43

1460:                                             ; preds = %1459
  store i32 2735, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 80), align 16, !tbaa !35
  store i32 2738, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 80), align 16, !tbaa !35
  br label %1461

1461:                                             ; preds = %1459, %1460
  br i1 %1457, label %1463, label %1462, !prof !43

1462:                                             ; preds = %1461
  store i32 2743, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 79), align 4, !tbaa !35
  br label %1463

1463:                                             ; preds = %1462, %1461
  br i1 %1453, label %1465, label %1464, !prof !43

1464:                                             ; preds = %1463
  store i32 2744, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 80), align 16, !tbaa !35
  store <4 x i32> <i32 2748, i32 2747, i32 2746, i32 2745>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 63), align 4, !tbaa !35
  br label %1465

1465:                                             ; preds = %1463, %1464
  %1466 = and i32 %1451, 32
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1469, label %1468, !prof !43

1468:                                             ; preds = %1465
  store i32 2749, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 82), align 8, !tbaa !35
  store i32 2750, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 81), align 4, !tbaa !35
  br label %1469

1469:                                             ; preds = %1465, %1468
  br i1 %1457, label %1471, label %1470, !prof !43

1470:                                             ; preds = %1469
  store i32 2751, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 79), align 4, !tbaa !35
  br label %1471

1471:                                             ; preds = %1470, %1469
  br i1 %1453, label %1473, label %1472, !prof !43

1472:                                             ; preds = %1471
  store i32 2752, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 80), align 16, !tbaa !35
  store <4 x i32> <i32 2756, i32 2755, i32 2754, i32 2753>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 63), align 4, !tbaa !35
  br label %1473

1473:                                             ; preds = %1471, %1472
  br i1 %1467, label %1475, label %1474, !prof !43

1474:                                             ; preds = %1473
  store i32 2757, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 82), align 8, !tbaa !35
  store i32 2758, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 81), align 4, !tbaa !35
  br label %1475

1475:                                             ; preds = %1473, %1474
  br i1 %1453, label %1477, label %1476, !prof !43

1476:                                             ; preds = %1475
  store <4 x i32> <i32 2765, i32 2766, i32 2767, i32 2768>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 63), align 4, !tbaa !35
  store <4 x i32> <i32 2769, i32 2771, i32 2773, i32 2775>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 63), align 4, !tbaa !35
  store <4 x i32> <i32 2770, i32 2772, i32 2774, i32 2776>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 63), align 4, !tbaa !35
  store i32 2786, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 64), align 16, !tbaa !35
  store i32 2787, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18, i32 4, i64 64), align 16, !tbaa !35
  store i32 2788, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19, i32 4, i64 64), align 16, !tbaa !35
  store i32 2792, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 65), align 4, !tbaa !35
  store i32 2795, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143, i32 4, i64 64), align 16, !tbaa !35
  store i32 2796, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144, i32 4, i64 64), align 16, !tbaa !35
  store i32 2797, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141, i32 4, i64 64), align 16, !tbaa !35
  store i32 2798, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142, i32 4, i64 64), align 16, !tbaa !35
  br label %1477

1477:                                             ; preds = %1475, %1476
  %1478 = and i32 %1451, 8388608
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1481, label %1480, !prof !43

1480:                                             ; preds = %1477
  store i32 2799, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143, i32 4, i64 65), align 4, !tbaa !35
  store i32 2800, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144, i32 4, i64 65), align 4, !tbaa !35
  br label %1481

1481:                                             ; preds = %1477, %1480
  br i1 %1453, label %1483, label %1482, !prof !43

1482:                                             ; preds = %1481
  store i32 2801, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141, i32 4, i64 65), align 4, !tbaa !35
  store i32 2802, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142, i32 4, i64 65), align 4, !tbaa !35
  store i32 2803, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 129, i32 4, i64 64), align 16, !tbaa !35
  store i32 2804, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 130, i32 4, i64 65), align 4, !tbaa !35
  store <4 x i32> <i32 2805, i32 2806, i32 2807, i32 2808>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138, i32 4, i64 63), align 4, !tbaa !35
  store <4 x i32> <i32 2809, i32 2810, i32 2811, i32 2812>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 63), align 4, !tbaa !35
  store i32 2813, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 63), align 4, !tbaa !35
  store i32 2814, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 63), align 4, !tbaa !35
  store i32 2815, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 64), align 16, !tbaa !35
  store i32 2816, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 64), align 16, !tbaa !35
  store i32 2817, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 64), align 16, !tbaa !35
  store i32 2818, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 63), align 4, !tbaa !35
  store i32 2819, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 65), align 4, !tbaa !35
  br label %1483

1483:                                             ; preds = %1481, %1482
  %1484 = and i32 %1451, 1048576
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1487, label %1486, !prof !43

1486:                                             ; preds = %1483
  store i32 2820, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 66), align 8, !tbaa !35
  br label %1487

1487:                                             ; preds = %1486, %1483
  br i1 %1453, label %1489, label %1488, !prof !43

1488:                                             ; preds = %1487
  store i32 2821, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 65), align 4, !tbaa !35
  br label %1489

1489:                                             ; preds = %1488, %1487
  br i1 %1485, label %1491, label %1490, !prof !43

1490:                                             ; preds = %1489
  store i32 2822, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 66), align 8, !tbaa !35
  br label %1491

1491:                                             ; preds = %1490, %1489
  br i1 %1453, label %1493, label %1492, !prof !43

1492:                                             ; preds = %1491
  store i32 2823, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 63), align 4, !tbaa !35
  store i32 2824, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 65), align 4, !tbaa !35
  br label %1493

1493:                                             ; preds = %1491, %1492
  br i1 %1485, label %1495, label %1494, !prof !43

1494:                                             ; preds = %1493
  store i32 2825, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 66), align 8, !tbaa !35
  br label %1495

1495:                                             ; preds = %1494, %1493
  br i1 %1453, label %1497, label %1496, !prof !43

1496:                                             ; preds = %1495
  store i32 2826, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 64), align 16, !tbaa !35
  store i32 2827, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 65), align 4, !tbaa !35
  br label %1497

1497:                                             ; preds = %1495, %1496
  br i1 %1485, label %1499, label %1498, !prof !43

1498:                                             ; preds = %1497
  store i32 2828, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 66), align 8, !tbaa !35
  br label %1499

1499:                                             ; preds = %1498, %1497
  br i1 %1453, label %1501, label %1500, !prof !43

1500:                                             ; preds = %1499
  store i32 2833, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 63), align 4, !tbaa !42
  store i32 2834, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 64), align 16, !tbaa !42
  store i32 2835, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 65), align 4, !tbaa !42
  br label %1501

1501:                                             ; preds = %1499, %1500
  %1502 = and i32 %1451, 1179648
  %1503 = icmp eq i32 %1502, 1179648
  br i1 %1503, label %1504, label %1505, !prof !49

1504:                                             ; preds = %1501
  store i32 2836, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 66), align 8, !tbaa !42
  br label %1505

1505:                                             ; preds = %1504, %1501
  br i1 %1453, label %1507, label %1506, !prof !43

1506:                                             ; preds = %1505
  store i32 2837, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 63), align 4, !tbaa !42
  store i32 2838, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 64), align 16, !tbaa !42
  store i32 2839, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 65), align 4, !tbaa !42
  br label %1507

1507:                                             ; preds = %1505, %1506
  br i1 %1503, label %1508, label %1509, !prof !49

1508:                                             ; preds = %1507
  store i32 2840, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 66), align 8, !tbaa !42
  br label %1509

1509:                                             ; preds = %1508, %1507
  br i1 %1453, label %1511, label %1510, !prof !43

1510:                                             ; preds = %1509
  store <4 x i32> <i32 2841, i32 2842, i32 2843, i32 2844>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 63), align 4, !tbaa !35
  br label %1511

1511:                                             ; preds = %1509, %1510
  br i1 %1457, label %1513, label %1512, !prof !43

1512:                                             ; preds = %1511
  store i32 2845, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 63), align 4, !tbaa !35
  store i32 2846, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 63), align 4, !tbaa !35
  br label %1513

1513:                                             ; preds = %1511, %1512
  %1514 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !42
  %1515 = and i32 %1514, 65536
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1518, label %1517, !prof !43

1517:                                             ; preds = %1513
  store i32 2848, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 64), align 16, !tbaa !35
  store i32 2849, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 64), align 16, !tbaa !35
  store i32 2851, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 65), align 4, !tbaa !35
  store i32 2852, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 65), align 4, !tbaa !35
  store i32 2854, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 66), align 8, !tbaa !35
  store i32 2855, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 66), align 8, !tbaa !35
  store <4 x i32> <i32 2847, i32 2850, i32 2853, i32 2856>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 63), align 4, !tbaa !35
  br label %1518

1518:                                             ; preds = %1513, %1517
  %1519 = and i32 %1514, 131072
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1522, label %1521, !prof !43

1521:                                             ; preds = %1518
  store i32 2857, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 41), align 4, !tbaa !35
  store i32 2858, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 41), align 4, !tbaa !35
  store i32 2859, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 41), align 4, !tbaa !35
  store i32 2860, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 64), align 16, !tbaa !35
  store i32 2861, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 65), align 4, !tbaa !35
  store i32 2862, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 66), align 8, !tbaa !35
  store i32 2871, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147, i32 4, i64 63), align 4, !tbaa !35
  store i32 2872, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 63), align 4, !tbaa !35
  store i32 2873, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148, i32 4, i64 63), align 4, !tbaa !35
  store i32 2874, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 63), align 4, !tbaa !35
  store i32 2875, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147, i32 4, i64 64), align 16, !tbaa !35
  store i32 2876, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 64), align 16, !tbaa !35
  store i32 2877, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148, i32 4, i64 64), align 16, !tbaa !35
  store i32 2878, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 64), align 16, !tbaa !35
  store i32 2879, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147, i32 4, i64 65), align 4, !tbaa !35
  store i32 2880, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 65), align 4, !tbaa !35
  store i32 2881, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148, i32 4, i64 65), align 4, !tbaa !35
  store i32 2882, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 65), align 4, !tbaa !35
  br label %1522

1522:                                             ; preds = %1518, %1521
  %1523 = and i32 %1514, 8388608
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1526, label %1525, !prof !43

1525:                                             ; preds = %1522
  store <4 x i32> <i32 2895, i32 2896, i32 2897, i32 2898>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 63), align 4, !tbaa !35
  store <4 x i32> <i32 2899, i32 2900, i32 2901, i32 2902>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 63), align 4, !tbaa !35
  store <4 x i32> <i32 2903, i32 2904, i32 2905, i32 2906>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53, i32 4, i64 63), align 4, !tbaa !35
  store <4 x i32> <i32 2907, i32 2908, i32 2909, i32 2910>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52, i32 4, i64 63), align 4, !tbaa !35
  store i32 2911, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50, i32 4, i64 63), align 4, !tbaa !35
  store i32 2912, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50, i32 4, i64 64), align 16, !tbaa !35
  store i32 2913, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50, i32 4, i64 65), align 4, !tbaa !35
  store i32 2914, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51, i32 4, i64 63), align 4, !tbaa !35
  store i32 2915, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51, i32 4, i64 64), align 16, !tbaa !35
  store i32 2916, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51, i32 4, i64 65), align 4, !tbaa !35
  store i32 2917, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49, i32 4, i64 63), align 4, !tbaa !35
  store i32 2918, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49, i32 4, i64 64), align 16, !tbaa !35
  store i32 2919, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49, i32 4, i64 65), align 4, !tbaa !35
  store i32 2920, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 63), align 4, !tbaa !35
  store i32 2922, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 63), align 4, !tbaa !35
  store i32 2923, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 66), align 8, !tbaa !35
  br label %1526

1526:                                             ; preds = %1522, %1525
  %1527 = and i32 %1514, 32
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1530, label %1529, !prof !43

1529:                                             ; preds = %1526
  store <4 x i32> <i32 2945, i32 2946, i32 2947, i32 2948>, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 68), align 16, !tbaa !35
  store i32 2949, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 81), align 4, !tbaa !35
  store i32 2950, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 82), align 8, !tbaa !35
  br label %1530

1530:                                             ; preds = %1526, %1529
  %1531 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !40
  %1532 = icmp eq i8 %1531, 0
  br i1 %1532, label %1537, label %1533, !prof !43

1533:                                             ; preds = %1530
  store i32 2952, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 14), align 8, !tbaa !42
  store i32 2953, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 15), align 4, !tbaa !42
  store i32 2954, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 16), align 16, !tbaa !42
  %1534 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 2), align 1
  %1535 = icmp eq i8 %1534, 0
  br i1 %1535, label %1537, label %1536, !prof !55

1536:                                             ; preds = %1533
  store i32 2955, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 17), align 4, !tbaa !42
  br label %1537

1537:                                             ; preds = %1530, %1536, %1533
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 1}
!35 = !{!36, !37, i64 0}
!36 = !{!"optab_handlers", !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = !{!"branch_weights", i32 1, i32 2}
!42 = !{!37, !37, i64 0}
!43 = !{!"branch_weights", i32 2, i32 1}
!44 = !{!"branch_weights", i32 1431655766, i32 715827882}
!45 = !{!"branch_weights", i32 1610612735, i32 536870913}
!46 = !{!"branch_weights", i32 1049880894, i32 1097602754}
!47 = !{!"branch_weights", i32 7, i32 2}
!48 = !{!"branch_weights", i32 4, i32 5}
!49 = !{!"branch_weights", i32 1, i32 5}
!50 = !{!"branch_weights", i32 -2147483648, i32 0}
!51 = !{!"branch_weights", i32 715827882, i32 1431655766}
!52 = !{!"branch_weights", i32 2, i32 7}
!53 = !{!"branch_weights", i32 1227133513, i32 920350135}
!54 = !{!"branch_weights", i32 1620031524, i32 527452124}
!55 = !{!"branch_weights", i32 1073741826, i32 1073741822}
