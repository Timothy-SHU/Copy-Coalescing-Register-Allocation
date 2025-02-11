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
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !10
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, %1
  %19 = or i1 %17, %18
  br i1 %19, label %99, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, %16
  br i1 %23, label %99, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 89), align 8, !tbaa !12
  %26 = tail call ptr %25(ptr noundef %22, ptr noundef nonnull %0) #2
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull %26) #2
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !10
  br label %99

30:                                               ; preds = %24
  %31 = load ptr, ptr %21, align 8, !tbaa !9
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %99, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 95), align 8, !tbaa !25
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
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %39, label %53, !llvm.loop !26

53:                                               ; preds = %39, %43, %47
  %54 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = load ptr, ptr %21, align 8, !tbaa !9
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 16
  %58 = load ptr, ptr %57, align 8, !tbaa !9
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
  %66 = load ptr, ptr @global_trees, align 16, !tbaa !10
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
  %73 = load i32, ptr @input_location, align 4, !tbaa !5
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
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !28
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
  %98 = load ptr, ptr @global_trees, align 16, !tbaa !10
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 1664}
!13 = !{!"gcc_target", !14, i64 0, !16, i64 368, !17, i64 664, !6, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !18, i64 1064, !18, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !19, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !18, i64 1464, !20, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !21, i64 1784, !22, i64 1792, !23, i64 1896, !24, i64 1968, !11, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!14 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!15 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!16 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!17 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!18 = !{!"long", !7, i64 0}
!19 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!20 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!21 = !{!"c", !11, i64 0}
!22 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!23 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !7, i64 64, !7, i64 65}
!24 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!25 = !{!13, !11, i64 1712}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !11, i64 192}
!29 = !{!"lang_hooks", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !30, i64 240, !31, i64 248, !32, i64 256, !33, i64 272, !34, i64 432, !35, i64 560, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !7, i64 672}
!30 = !{!"lang_hooks_for_tree_inlining", !11, i64 0}
!31 = !{!"lang_hooks_for_callgraph", !11, i64 0}
!32 = !{!"lang_hooks_for_tree_dump", !11, i64 0, !11, i64 8}
!33 = !{!"lang_hooks_for_decls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!34 = !{!"lang_hooks_for_types", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !7, i64 120}
!35 = !{!"lang_hooks_for_lto", !11, i64 0, !11, i64 8, !11, i64 16}
