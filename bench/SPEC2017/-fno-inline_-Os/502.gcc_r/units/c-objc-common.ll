; ModuleID = 'c-objc-common.c'
source_filename = "c-objc-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.c_pretty_print_info = type { %struct.pretty_print_info, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@flag_hosted = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@global_dc = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [16 x i8] c"c-objc-common.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"({anonymous})\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @c_missing_noreturn_ok_p(ptr noundef %0) local_unnamed_addr #0 !prof !42 {
  %2 = load i32, ptr @flag_hosted, align 4, !tbaa !43
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @decl_assembler_name(ptr noundef %0) #5
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !47
  %7 = icmp eq ptr %5, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @c_warn_unused_global_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !42 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !49
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %11, %6
  %19 = phi i8 [ 0, %6 ], [ %17, %11 ]
  ret i8 %19
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @c_objc_common_init() local_unnamed_addr #0 !prof !52 {
  tail call void @c_init_decl_processing() #5
  %1 = tail call zeroext i8 @c_common_init() #5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %7, label %3, !prof !53

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !47
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %5, i64 0, i32 6
  store ptr @c_tree_printer, ptr %6, align 8, !tbaa !56
  br label %7

7:                                                ; preds = %0, %3
  %8 = phi i8 [ 1, %3 ], [ 0, %0 ]
  ret i8 %8
}

; Function Attrs: optsize
declare void @c_init_decl_processing() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @c_common_init() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @c_tree_printer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #0 !prof !52 !PGOFuncName !59 {
  %8 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = zext nneg i32 %10 to i64
  %16 = getelementptr i8, ptr %14, i64 %15
  %17 = add nuw nsw i32 %10, 8
  store i32 %17, ptr %9, align 8
  br label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i64 8
  store ptr %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %16, %12 ], [ %20, %18 ]
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !62
  %26 = icmp ne i32 %3, 0
  %27 = or i8 %6, %4
  %28 = icmp ne i8 %27, 0
  %29 = or i1 %26, %28
  br i1 %29, label %125, label %30, !prof !63

30:                                               ; preds = %22
  %31 = icmp eq i8 %5, 0
  br i1 %31, label %39, label %32, !prof !53

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !53

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !49
  store i32 %38, ptr %34, align 4, !tbaa !43
  br label %39

39:                                               ; preds = %36, %32, %30
  %40 = load i8, ptr %2, align 1, !tbaa !49
  switch i8 %40, label %125 [
    i8 68, label %41
    i8 70, label %57
    i8 84, label %72
    i8 69, label %107
  ], !prof !65

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 16384
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %57, label %46, !prof !66

46:                                               ; preds = %41
  %47 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %24) #5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %24) #5
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !43
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  tail call void @pp_c_expression(ptr noundef nonnull %0, ptr noundef nonnull %50) #5
  br label %125

57:                                               ; preds = %41, %46, %49, %39
  %58 = phi ptr [ %24, %39 ], [ %50, %49 ], [ %24, %46 ], [ %24, %41 ]
  %59 = getelementptr inbounds %struct.tree_decl_minimal, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = icmp eq ptr %60, null
  br i1 %61, label %124, label %62, !prof !53

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %64 = load i8, ptr %63, align 2, !tbaa !67
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !69
  %67 = tail call ptr %66(ptr noundef nonnull %58, i32 noundef 2) #5
  br i1 %65, label %70, label %68, !prof !53

68:                                               ; preds = %62
  %69 = tail call ptr @identifier_to_locale(ptr noundef %67) #5
  br label %70

70:                                               ; preds = %62, %68
  %71 = phi ptr [ %69, %68 ], [ %67, %62 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef %71) #5
  br label %125

72:                                               ; preds = %39
  %73 = load i64, ptr %24, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !43
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.1) #5
  br label %79

79:                                               ; preds = %72, %78
  %80 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !49
  %82 = icmp eq ptr %81, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %79
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 35
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_decl_minimal, ptr %81, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !49
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %93 = load i8, ptr %92, align 2, !tbaa !67
  %94 = icmp eq i8 %93, 0
  %95 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !69
  %96 = tail call ptr %95(ptr noundef nonnull %81, i32 noundef 2) #5
  br i1 %94, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call ptr @identifier_to_locale(ptr noundef %96) #5
  br label %99

99:                                               ; preds = %91, %97
  %100 = phi ptr [ %98, %97 ], [ %96, %91 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef %100) #5
  br label %125

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !78
  tail call void %103(ptr noundef nonnull %0, ptr noundef nonnull %24) #5
  br label %125

104:                                              ; preds = %83, %79
  %105 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %106 = load ptr, ptr %105, align 8, !tbaa !78
  tail call void %106(ptr noundef nonnull %0, ptr noundef nonnull %24) #5
  br label %125

107:                                              ; preds = %39
  %108 = load i64, ptr %24, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %113 = load i8, ptr %112, align 2, !tbaa !67
  %114 = icmp eq i8 %113, 0
  %115 = getelementptr inbounds %struct.tree_identifier, ptr %24, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !49
  br i1 %114, label %119, label %117

117:                                              ; preds = %111
  %118 = tail call ptr @identifier_to_locale(ptr noundef %116) #5
  br label %119

119:                                              ; preds = %111, %117
  %120 = phi ptr [ %118, %117 ], [ %116, %111 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef %120) #5
  br label %125

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %123 = load ptr, ptr %122, align 8, !tbaa !79
  tail call void %123(ptr noundef nonnull %0, ptr noundef nonnull %24) #5
  br label %125

124:                                              ; preds = %57
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #5
  br label %125

125:                                              ; preds = %39, %119, %121, %99, %101, %22, %124, %104, %70, %56
  %126 = phi i8 [ 1, %104 ], [ 1, %70 ], [ 1, %124 ], [ 1, %56 ], [ 0, %22 ], [ 1, %101 ], [ 1, %99 ], [ 1, %121 ], [ 1, %119 ], [ 0, %39 ]
  ret i8 %126
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @has_c_linkage(ptr nocapture noundef readnone %0) local_unnamed_addr #2 !prof !80 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_initialize_diagnostics(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !52 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = tail call ptr @xmalloc(i64 noundef 264) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  tail call void @pp_c_pretty_printer_init(ptr noundef %3) #5
  store ptr %3, ptr %0, align 8, !tbaa !54
  tail call void @free(ptr noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @pp_c_pretty_printer_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @c_types_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !42 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @comptypes(ptr noundef %4, ptr noundef %6) #5
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @comptypes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @c_vla_unspec_p(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !81 {
  %3 = tail call zeroext i8 @c_vla_type_p(ptr noundef %0) #5
  ret i8 %3
}

; Function Attrs: optsize
declare zeroext i8 @c_vla_type_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_debug_expr_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_c_expression(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @c_objc_common_init, ptr @c_init_decl_processing, i64 1}
!36 = !{ptr @c_objc_common_init, ptr @c_common_init, i64 1}
!37 = !{ptr @c_initialize_diagnostics, ptr @xmalloc, i64 1}
!38 = !{ptr @c_initialize_diagnostics, ptr @pp_c_pretty_printer_init, i64 1}
!39 = !{ptr @c_initialize_diagnostics, ptr @free, i64 1}
!40 = !{ptr @c_vla_unspec_p, ptr @c_vla_type_p, i64 24188}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !45, i64 0}
!49 = !{!45, !45, i64 0}
!50 = !{!51, !45, i64 16}
!51 = !{!"", !48, i64 0, !44, i64 8, !44, i64 12, !45, i64 16}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!"branch_weights", i32 1, i32 2}
!54 = !{!55, !48, i64 0}
!55 = !{!"diagnostic_context", !48, i64 0, !45, i64 8, !45, i64 56, !45, i64 57, !45, i64 60, !45, i64 3540, !45, i64 3541, !48, i64 3544, !48, i64 3552, !48, i64 3560, !48, i64 3568, !48, i64 3576, !44, i64 3584, !45, i64 3588}
!56 = !{!57, !48, i64 40}
!57 = !{!"pretty_print_info", !48, i64 0, !48, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !58, i64 28, !48, i64 40, !45, i64 48, !45, i64 49, !45, i64 50}
!58 = !{!"", !44, i64 0, !44, i64 4}
!59 = !{!"c-objc-common.c:c_tree_printer"}
!60 = !{!61, !48, i64 8}
!61 = !{!"", !48, i64 0, !48, i64 8, !44, i64 16, !48, i64 24, !48, i64 32}
!62 = !{!57, !44, i64 16}
!63 = !{!"branch_weights", i32 19, i32 8}
!64 = !{!61, !48, i64 24}
!65 = !{!"branch_weights", i32 1, i32 2, i32 1, i32 1, i32 1}
!66 = !{!"branch_weights", i32 2, i32 1}
!67 = !{!68, !45, i64 50}
!68 = !{!"c_pretty_print_info", !57, i64 0, !48, i64 56, !44, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !48, i64 184, !48, i64 192, !48, i64 200, !48, i64 208, !48, i64 216, !48, i64 224, !48, i64 232, !48, i64 240, !48, i64 248, !48, i64 256}
!69 = !{!70, !48, i64 176}
!70 = !{!"lang_hooks", !48, i64 0, !71, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !48, i64 184, !48, i64 192, !48, i64 200, !48, i64 208, !48, i64 216, !48, i64 224, !48, i64 232, !72, i64 240, !73, i64 248, !74, i64 256, !75, i64 272, !76, i64 432, !77, i64 560, !48, i64 584, !48, i64 592, !48, i64 600, !48, i64 608, !48, i64 616, !48, i64 624, !48, i64 632, !48, i64 640, !48, i64 648, !48, i64 656, !48, i64 664, !45, i64 672}
!71 = !{!"long", !45, i64 0}
!72 = !{!"lang_hooks_for_tree_inlining", !48, i64 0}
!73 = !{!"lang_hooks_for_callgraph", !48, i64 0}
!74 = !{!"lang_hooks_for_tree_dump", !48, i64 0, !48, i64 8}
!75 = !{!"lang_hooks_for_decls", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152}
!76 = !{!"lang_hooks_for_types", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !45, i64 120}
!77 = !{!"lang_hooks_for_lto", !48, i64 0, !48, i64 8, !48, i64 16}
!78 = !{!68, !48, i64 144}
!79 = !{!68, !48, i64 256}
!80 = !{!"function_entry_count", i64 5480}
!81 = !{!"function_entry_count", i64 24188}
