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
define dso_local ptr @convert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, %1
  %19 = or i1 %17, %18
  br i1 %19, label %99, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %99, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 89), align 8, !tbaa !13
  %26 = tail call ptr %25(ptr noundef %22, ptr noundef nonnull %0) #2
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull %26) #2
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !11
  br label %99

30:                                               ; preds = %24
  %31 = load ptr, ptr %21, align 8, !tbaa !10
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %99, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 95), align 8, !tbaa !26
  %35 = tail call ptr %34(ptr noundef nonnull %0, ptr noundef nonnull %1) #2
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %99

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
  ]

43:                                               ; preds = %39, %39, %39
  %44 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %39, label %53, !llvm.loop !27

53:                                               ; preds = %39, %43, %47
  %54 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %55 = load ptr, ptr %54, align 8, !tbaa !10
  %56 = load ptr, ptr %21, align 8, !tbaa !10
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 16
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = icmp eq ptr %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %1) #2
  br label %99

62:                                               ; preds = %53
  %63 = load i64, ptr %56, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %67 [
    i16 0, label %99
    i16 19, label %65
  ]

65:                                               ; preds = %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #2
  %66 = load ptr, ptr @global_trees, align 16, !tbaa !11
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
  ]

68:                                               ; preds = %67
  %69 = tail call ptr @fold_convert_loc(i32 noundef %15, ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %99

70:                                               ; preds = %67, %67
  %71 = tail call ptr @convert_to_integer(ptr noundef nonnull %0, ptr noundef nonnull %40) #2
  br label %90

72:                                               ; preds = %67
  %73 = load i32, ptr @input_location, align 4, !tbaa !6
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
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !29
  %88 = tail call i32 %87(ptr noundef nonnull %0, ptr noundef nonnull %56) #2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %99

90:                                               ; preds = %84, %82, %80, %78, %76, %70
  %91 = phi ptr [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ], [ %77, %76 ], [ %71, %70 ]
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 189
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = tail call ptr @fold(ptr noundef nonnull %91) #2
  br label %99

97:                                               ; preds = %67, %86
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1) #2
  %98 = load ptr, ptr @global_trees, align 16, !tbaa !11
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !12, i64 1664}
!14 = !{!"gcc_target", !15, i64 0, !17, i64 368, !18, i64 664, !7, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !19, i64 1064, !19, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !20, i64 1176, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !19, i64 1464, !21, i64 1472, !12, i64 1664, !12, i64 1672, !12, i64 1680, !12, i64 1688, !12, i64 1696, !12, i64 1704, !12, i64 1712, !12, i64 1720, !12, i64 1728, !12, i64 1736, !12, i64 1744, !12, i64 1752, !12, i64 1760, !12, i64 1768, !12, i64 1776, !22, i64 1784, !23, i64 1792, !24, i64 1896, !25, i64 1968, !12, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!15 = !{!"asm_out", !12, i64 0, !12, i64 8, !12, i64 16, !16, i64 24, !16, i64 56, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360}
!16 = !{!"asm_int_op", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!17 = !{!"sched", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!18 = !{!"vectorize", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!19 = !{!"long", !8, i64 0}
!20 = !{!"addr_space", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!21 = !{!"calls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184}
!22 = !{!"c", !12, i64 0}
!23 = !{!"cxx", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!24 = !{!"emutls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !8, i64 64, !8, i64 65}
!25 = !{!"target_option_hooks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!26 = !{!14, !12, i64 1712}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !12, i64 192}
!30 = !{!"lang_hooks", !12, i64 0, !19, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !31, i64 240, !32, i64 248, !33, i64 256, !34, i64 272, !35, i64 432, !36, i64 560, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !8, i64 672}
!31 = !{!"lang_hooks_for_tree_inlining", !12, i64 0}
!32 = !{!"lang_hooks_for_callgraph", !12, i64 0}
!33 = !{!"lang_hooks_for_tree_dump", !12, i64 0, !12, i64 8}
!34 = !{!"lang_hooks_for_decls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!35 = !{!"lang_hooks_for_types", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !8, i64 120}
!36 = !{!"lang_hooks_for_lto", !12, i64 0, !12, i64 8, !12, i64 16}
