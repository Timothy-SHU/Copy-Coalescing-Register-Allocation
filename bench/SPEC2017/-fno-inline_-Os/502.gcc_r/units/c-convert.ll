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
define dso_local ptr @convert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !46 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !51

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !53
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, %1
  %19 = or i1 %17, %18
  br i1 %19, label %99, label %20, !prof !55

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %99, label %24, !prof !56

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 89), align 8, !tbaa !57
  %26 = tail call ptr %25(ptr noundef %22, ptr noundef nonnull %0) #2
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !70

28:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull %26) #2
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !53
  br label %99

30:                                               ; preds = %24
  %31 = load ptr, ptr %21, align 8, !tbaa !52
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %99, label %33, !prof !71

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 95), align 8, !tbaa !72
  %35 = tail call ptr %34(ptr noundef nonnull %0, ptr noundef nonnull %1) #2
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %99, !prof !73

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
  ], !prof !74

43:                                               ; preds = %39, %39, %39
  %44 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %53, label %47, !prof !75

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %39, label %53, !prof !76, !llvm.loop !77

53:                                               ; preds = %39, %43, %47
  %54 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  %56 = load ptr, ptr %21, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 16
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = icmp eq ptr %55, %58
  br i1 %59, label %60, label %62, !prof !79

60:                                               ; preds = %53
  %61 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %1) #2
  br label %99

62:                                               ; preds = %53
  %63 = load i64, ptr %56, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %67 [
    i16 0, label %99
    i16 19, label %65
  ], !prof !80

65:                                               ; preds = %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #2
  %66 = load ptr, ptr @global_trees, align 16, !tbaa !53
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
  ], !prof !81

68:                                               ; preds = %67
  %69 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %99

70:                                               ; preds = %67, %67
  %71 = tail call ptr @convert_to_integer(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

72:                                               ; preds = %67
  %73 = load i32, ptr @input_location, align 4, !tbaa !47
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
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !82
  %88 = tail call i32 %87(ptr noundef nonnull %0, ptr noundef nonnull %56) #2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %99

90:                                               ; preds = %84, %82, %80, %78, %76, %70
  %91 = phi ptr [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ], [ %77, %76 ], [ %71, %70 ]
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 189
  br i1 %94, label %99, label %95, !prof !90

95:                                               ; preds = %90
  %96 = tail call ptr @fold(ptr noundef nonnull %91) #2
  br label %99

97:                                               ; preds = %67, %86
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1) #2
  %98 = load ptr, ptr @global_trees, align 16, !tbaa !53
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @convert, ptr @error, i64 4}
!36 = !{ptr @convert, ptr @fold_convert_loc, i64 219}
!37 = !{ptr @convert, ptr @convert_to_integer, i64 265745}
!38 = !{ptr @convert, ptr @c_objc_common_truthvalue_conversion, i64 1}
!39 = !{ptr @convert, ptr @convert_to_pointer, i64 1597}
!40 = !{ptr @convert, ptr @convert_to_real, i64 1}
!41 = !{ptr @convert, ptr @convert_to_fixed, i64 1}
!42 = !{ptr @convert, ptr @convert_to_complex, i64 1}
!43 = !{ptr @convert, ptr @convert_to_vector, i64 1}
!44 = !{ptr @convert, ptr @fold, i64 267345}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 543936}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!"branch_weights", i32 1443631077, i32 -2085136809}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !49, i64 0}
!55 = !{!"branch_weights", i32 8499, i32 -1983502765}
!56 = !{!"branch_weights", i32 1, i32 543937}
!57 = !{!58, !54, i64 1664}
!58 = !{!"gcc_target", !59, i64 0, !61, i64 368, !62, i64 664, !48, i64 744, !54, i64 752, !54, i64 760, !54, i64 768, !54, i64 776, !54, i64 784, !54, i64 792, !54, i64 800, !54, i64 808, !54, i64 816, !54, i64 824, !54, i64 832, !54, i64 840, !54, i64 848, !54, i64 856, !54, i64 864, !54, i64 872, !54, i64 880, !54, i64 888, !54, i64 896, !54, i64 904, !54, i64 912, !54, i64 920, !54, i64 928, !54, i64 936, !54, i64 944, !54, i64 952, !54, i64 960, !54, i64 968, !54, i64 976, !54, i64 984, !54, i64 992, !54, i64 1000, !54, i64 1008, !54, i64 1016, !54, i64 1024, !54, i64 1032, !54, i64 1040, !54, i64 1048, !54, i64 1056, !63, i64 1064, !63, i64 1072, !54, i64 1080, !54, i64 1088, !54, i64 1096, !54, i64 1104, !54, i64 1112, !54, i64 1120, !54, i64 1128, !54, i64 1136, !54, i64 1144, !54, i64 1152, !54, i64 1160, !54, i64 1168, !64, i64 1176, !54, i64 1232, !54, i64 1240, !54, i64 1248, !54, i64 1256, !54, i64 1264, !54, i64 1272, !54, i64 1280, !54, i64 1288, !54, i64 1296, !54, i64 1304, !54, i64 1312, !54, i64 1320, !54, i64 1328, !54, i64 1336, !54, i64 1344, !54, i64 1352, !54, i64 1360, !54, i64 1368, !54, i64 1376, !54, i64 1384, !54, i64 1392, !54, i64 1400, !54, i64 1408, !54, i64 1416, !54, i64 1424, !54, i64 1432, !54, i64 1440, !54, i64 1448, !54, i64 1456, !63, i64 1464, !65, i64 1472, !54, i64 1664, !54, i64 1672, !54, i64 1680, !54, i64 1688, !54, i64 1696, !54, i64 1704, !54, i64 1712, !54, i64 1720, !54, i64 1728, !54, i64 1736, !54, i64 1744, !54, i64 1752, !54, i64 1760, !54, i64 1768, !54, i64 1776, !66, i64 1784, !67, i64 1792, !68, i64 1896, !69, i64 1968, !54, i64 2016, !49, i64 2024, !49, i64 2025, !49, i64 2026, !49, i64 2027, !49, i64 2028, !49, i64 2029, !49, i64 2030, !49, i64 2031, !49, i64 2032, !49, i64 2033, !49, i64 2034, !49, i64 2035}
!59 = !{!"asm_out", !54, i64 0, !54, i64 8, !54, i64 16, !60, i64 24, !60, i64 56, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !54, i64 288, !54, i64 296, !54, i64 304, !54, i64 312, !54, i64 320, !54, i64 328, !54, i64 336, !54, i64 344, !54, i64 352, !54, i64 360}
!60 = !{!"asm_int_op", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24}
!61 = !{!"sched", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !54, i64 288}
!62 = !{!"vectorize", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72}
!63 = !{!"long", !49, i64 0}
!64 = !{!"addr_space", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!65 = !{!"calls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184}
!66 = !{!"c", !54, i64 0}
!67 = !{!"cxx", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96}
!68 = !{!"emutls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !49, i64 64, !49, i64 65}
!69 = !{!"target_option_hooks", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40}
!70 = !{!"branch_weights", i32 543937, i32 1}
!71 = !{!"branch_weights", i32 276364, i32 267574}
!72 = !{!58, !54, i64 1712}
!73 = !{!"branch_weights", i32 267574, i32 1}
!74 = !{!"branch_weights", i32 -2016369781, i32 1695923, i32 34088, i32 8522}
!75 = !{!"branch_weights", i32 1, i32 202}
!76 = !{!"branch_weights", i32 1, i32 267574}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"branch_weights", i32 217, i32 267358}
!80 = !{!"branch_weights", i32 -2061207916, i32 8354, i32 8354}
!81 = !{!"branch_weights", i32 1, i32 1, i32 252024, i32 13740, i32 1, i32 1596, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!82 = !{!83, !54, i64 192}
!83 = !{!"lang_hooks", !54, i64 0, !63, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !54, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !84, i64 240, !85, i64 248, !86, i64 256, !87, i64 272, !88, i64 432, !89, i64 560, !54, i64 584, !54, i64 592, !54, i64 600, !54, i64 608, !54, i64 616, !54, i64 624, !54, i64 632, !54, i64 640, !54, i64 648, !54, i64 656, !54, i64 664, !49, i64 672}
!84 = !{!"lang_hooks_for_tree_inlining", !54, i64 0}
!85 = !{!"lang_hooks_for_callgraph", !54, i64 0}
!86 = !{!"lang_hooks_for_tree_dump", !54, i64 0, !54, i64 8}
!87 = !{!"lang_hooks_for_decls", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !54, i64 136, !54, i64 144, !54, i64 152}
!88 = !{!"lang_hooks_for_types", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !49, i64 120}
!89 = !{!"lang_hooks_for_lto", !54, i64 0, !54, i64 8, !54, i64 16}
!90 = !{!"branch_weights", i32 1, i32 267358}
