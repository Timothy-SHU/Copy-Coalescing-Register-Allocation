; ModuleID = 'c-convert.c'
source_filename = "c-convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"conversion to non-scalar type requested\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !52

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !53
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !54
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, %1
  %19 = or i1 %17, %18
  br i1 %19, label %99, label %20, !prof !56

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %99, label %24, !prof !57

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 89), align 8, !tbaa !58
  %26 = tail call ptr %25(ptr noundef %22, ptr noundef nonnull %0) #2
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !71

28:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull %26) #2
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !54
  br label %99

30:                                               ; preds = %24
  %31 = load ptr, ptr %21, align 8, !tbaa !53
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %99, label %33, !prof !72

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 95), align 8, !tbaa !73
  %35 = tail call ptr %34(ptr noundef nonnull %0, ptr noundef nonnull %1) #2
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %99, !prof !74

37:                                               ; preds = %33
  %38 = load ptr, ptr @global_trees, align 16
  br label %39

39:                                               ; preds = %37, %47
  %40 = phi ptr [ %45, %47 ], [ %1, %37 ]
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %53 [
    i16 116, label %43
    i16 113, label %43
    i16 117, label %43
  ], !prof !75

43:                                               ; preds = %39, %39, %39
  %44 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !53
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %53, label %47, !prof !76

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %39, label %53, !prof !77, !llvm.loop !78

53:                                               ; preds = %39, %43, %47
  %54 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %55 = load ptr, ptr %54, align 8, !tbaa !53
  %56 = load ptr, ptr %21, align 8, !tbaa !53
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 16
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = icmp eq ptr %55, %58
  br i1 %59, label %60, label %62, !prof !80

60:                                               ; preds = %53
  %61 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %1) #2
  br label %99

62:                                               ; preds = %53
  %63 = load i64, ptr %56, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %67 [
    i16 0, label %99
    i16 19, label %65
  ], !prof !81

65:                                               ; preds = %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #2
  %66 = load ptr, ptr @global_trees, align 16, !tbaa !54
  br label %99

67:                                               ; preds = %62
  switch i16 %4, label %97 [
    i16 19, label %68
    i16 8, label %70
    i16 6, label %70
    i16 7, label %72
    i16 10, label %76
    i16 12, label %76
    i16 9, label %78
    i16 11, label %80
    i16 13, label %82
    i16 14, label %84
    i16 16, label %86
    i16 17, label %86
  ], !prof !82

68:                                               ; preds = %67
  %69 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %99

70:                                               ; preds = %67, %67
  %71 = tail call ptr @convert_to_integer(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

72:                                               ; preds = %67
  %73 = load i32, ptr @input_location, align 4, !tbaa !48
  %74 = tail call ptr @c_objc_common_truthvalue_conversion(i32 noundef %73, ptr noundef nonnull %1) #2
  %75 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef %74) #2
  br label %99

76:                                               ; preds = %67, %67
  %77 = tail call ptr @convert_to_pointer(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

78:                                               ; preds = %67
  %79 = tail call ptr @convert_to_real(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

80:                                               ; preds = %67
  %81 = tail call ptr @convert_to_fixed(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

82:                                               ; preds = %67
  %83 = tail call ptr @convert_to_complex(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

84:                                               ; preds = %67
  %85 = tail call ptr @convert_to_vector(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

86:                                               ; preds = %67, %67
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !83
  %88 = tail call i32 %87(ptr noundef nonnull %0, ptr noundef nonnull %56) #2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %99

90:                                               ; preds = %84, %82, %80, %78, %76, %70
  %91 = phi ptr [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ], [ %77, %76 ], [ %71, %70 ]
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 189
  br i1 %94, label %99, label %95, !prof !91

95:                                               ; preds = %90
  %96 = tail call ptr @fold(ptr noundef nonnull %91) #2
  br label %99

97:                                               ; preds = %67, %86
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1) #2
  %98 = load ptr, ptr @global_trees, align 16, !tbaa !54
  br label %99

99:                                               ; preds = %62, %14, %20, %90, %95, %86, %33, %30, %97, %72, %68, %65, %60, %28
  %100 = phi ptr [ %29, %28 ], [ %61, %60 ], [ %66, %65 ], [ %98, %97 ], [ %75, %72 ], [ %69, %68 ], [ %1, %30 ], [ %35, %33 ], [ %40, %86 ], [ %96, %95 ], [ %91, %90 ], [ %16, %20 ], [ %16, %14 ], [ %38, %62 ]
  ret ptr %100
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_integer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @c_objc_common_truthvalue_conversion(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_pointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_real(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_fixed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_complex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_vector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!46}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!36 = !{ptr @convert, ptr @error, i64 4}
!37 = !{ptr @convert, ptr @fold_convert_loc, i64 10548}
!38 = !{ptr @convert, ptr @convert_to_integer, i64 411952}
!39 = !{ptr @convert, ptr @c_objc_common_truthvalue_conversion, i64 1}
!40 = !{ptr @convert, ptr @convert_to_pointer, i64 106989}
!41 = !{ptr @convert, ptr @convert_to_real, i64 166}
!42 = !{ptr @convert, ptr @convert_to_fixed, i64 1}
!43 = !{ptr @convert, ptr @convert_to_complex, i64 1}
!44 = !{ptr @convert, ptr @convert_to_vector, i64 1}
!45 = !{ptr @convert, ptr @fold, i64 519109}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 745906}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!"branch_weights", i32 -2075671888, i32 -302434120}
!53 = !{!50, !50, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !50, i64 0}
!56 = !{!"branch_weights", i32 5827, i32 -2121618653}
!57 = !{!"branch_weights", i32 1, i32 745907}
!58 = !{!59, !55, i64 1664}
!59 = !{!"gcc_target", !60, i64 0, !62, i64 368, !63, i64 664, !49, i64 744, !55, i64 752, !55, i64 760, !55, i64 768, !55, i64 776, !55, i64 784, !55, i64 792, !55, i64 800, !55, i64 808, !55, i64 816, !55, i64 824, !55, i64 832, !55, i64 840, !55, i64 848, !55, i64 856, !55, i64 864, !55, i64 872, !55, i64 880, !55, i64 888, !55, i64 896, !55, i64 904, !55, i64 912, !55, i64 920, !55, i64 928, !55, i64 936, !55, i64 944, !55, i64 952, !55, i64 960, !55, i64 968, !55, i64 976, !55, i64 984, !55, i64 992, !55, i64 1000, !55, i64 1008, !55, i64 1016, !55, i64 1024, !55, i64 1032, !55, i64 1040, !55, i64 1048, !55, i64 1056, !64, i64 1064, !64, i64 1072, !55, i64 1080, !55, i64 1088, !55, i64 1096, !55, i64 1104, !55, i64 1112, !55, i64 1120, !55, i64 1128, !55, i64 1136, !55, i64 1144, !55, i64 1152, !55, i64 1160, !55, i64 1168, !65, i64 1176, !55, i64 1232, !55, i64 1240, !55, i64 1248, !55, i64 1256, !55, i64 1264, !55, i64 1272, !55, i64 1280, !55, i64 1288, !55, i64 1296, !55, i64 1304, !55, i64 1312, !55, i64 1320, !55, i64 1328, !55, i64 1336, !55, i64 1344, !55, i64 1352, !55, i64 1360, !55, i64 1368, !55, i64 1376, !55, i64 1384, !55, i64 1392, !55, i64 1400, !55, i64 1408, !55, i64 1416, !55, i64 1424, !55, i64 1432, !55, i64 1440, !55, i64 1448, !55, i64 1456, !64, i64 1464, !66, i64 1472, !55, i64 1664, !55, i64 1672, !55, i64 1680, !55, i64 1688, !55, i64 1696, !55, i64 1704, !55, i64 1712, !55, i64 1720, !55, i64 1728, !55, i64 1736, !55, i64 1744, !55, i64 1752, !55, i64 1760, !55, i64 1768, !55, i64 1776, !67, i64 1784, !68, i64 1792, !69, i64 1896, !70, i64 1968, !55, i64 2016, !50, i64 2024, !50, i64 2025, !50, i64 2026, !50, i64 2027, !50, i64 2028, !50, i64 2029, !50, i64 2030, !50, i64 2031, !50, i64 2032, !50, i64 2033, !50, i64 2034, !50, i64 2035}
!60 = !{!"asm_out", !55, i64 0, !55, i64 8, !55, i64 16, !61, i64 24, !61, i64 56, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !55, i64 232, !55, i64 240, !55, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !55, i64 280, !55, i64 288, !55, i64 296, !55, i64 304, !55, i64 312, !55, i64 320, !55, i64 328, !55, i64 336, !55, i64 344, !55, i64 352, !55, i64 360}
!61 = !{!"asm_int_op", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!62 = !{!"sched", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !55, i64 232, !55, i64 240, !55, i64 248, !55, i64 256, !55, i64 264, !55, i64 272, !55, i64 280, !55, i64 288}
!63 = !{!"vectorize", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72}
!64 = !{!"long", !50, i64 0}
!65 = !{!"addr_space", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48}
!66 = !{!"calls", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184}
!67 = !{!"c", !55, i64 0}
!68 = !{!"cxx", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96}
!69 = !{!"emutls", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !50, i64 64, !50, i64 65}
!70 = !{!"target_option_hooks", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40}
!71 = !{!"branch_weights", i32 745907, i32 1}
!72 = !{!"branch_weights", i32 216240, i32 529668}
!73 = !{!59, !55, i64 1712}
!74 = !{!"branch_weights", i32 529668, i32 1}
!75 = !{!"branch_weights", i32 -978165042, i32 334229414, i32 2213983, i32 110354}
!76 = !{!"branch_weights", i32 1, i32 48794}
!77 = !{!"branch_weights", i32 22, i32 529668}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"branch_weights", i32 10546, i32 519123}
!81 = !{!"branch_weights", i32 -84206529, i32 8111, i32 8111}
!82 = !{!"branch_weights", i32 1, i32 1, i32 360325, i32 51643, i32 1, i32 106992, i32 1, i32 166, i32 1, i32 1, i32 1, i32 1, i32 1}
!83 = !{!84, !55, i64 192}
!84 = !{!"lang_hooks", !55, i64 0, !64, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !55, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !55, i64 216, !55, i64 224, !55, i64 232, !85, i64 240, !86, i64 248, !87, i64 256, !88, i64 272, !89, i64 432, !90, i64 560, !55, i64 584, !55, i64 592, !55, i64 600, !55, i64 608, !55, i64 616, !55, i64 624, !55, i64 632, !55, i64 640, !55, i64 648, !55, i64 656, !55, i64 664, !50, i64 672}
!85 = !{!"lang_hooks_for_tree_inlining", !55, i64 0}
!86 = !{!"lang_hooks_for_callgraph", !55, i64 0}
!87 = !{!"lang_hooks_for_tree_dump", !55, i64 0, !55, i64 8}
!88 = !{!"lang_hooks_for_decls", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152}
!89 = !{!"lang_hooks_for_types", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !50, i64 120}
!90 = !{!"lang_hooks_for_lto", !55, i64 0, !55, i64 8, !55, i64 16}
!91 = !{!"branch_weights", i32 1, i32 519123}
