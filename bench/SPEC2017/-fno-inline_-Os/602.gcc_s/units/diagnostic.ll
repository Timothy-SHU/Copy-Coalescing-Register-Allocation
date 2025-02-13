; ModuleID = 'diagnostic.c'
source_filename = "diagnostic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }

@global_dc = dso_local local_unnamed_addr global ptr @global_diagnostic_context, align 8
@global_diagnostic_context = internal global %struct.diagnostic_context zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@diagnostic_build_prefix.diagnostic_kind_text = internal unnamed_addr constant [13 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fatal error: \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"benchmark internal error: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"sorry, unimplemented: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"anachronism: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"note: \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"debug: \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pedwarn: \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"permerror: \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"must-not-happen\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@progname = external local_unnamed_addr global ptr, align 8
@flag_show_column = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"%s:%d:%d: %s\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@input_location = external local_unnamed_addr global i32, align 4
@line_table = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"In file included from %s:%d:%d\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"In file included from %s:%d\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c",\0A                 from %s:%d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c":\00", align 1
@inhibit_warnings = external local_unnamed_addr global i32, align 4
@warn_system_headers = external local_unnamed_addr global i32, align 4
@flag_pedantic_errors = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"%s: warnings being treated as errors\0A\00", align 1
@.str.23 = private unnamed_addr constant [129 x i8] c"*** WARNING *** there are active plugins, do not report this as a bug unless you can reproduce it without enabling any plugins.\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"%s:%d: confused by earlier errors, bailing out\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@cl_options = external local_unnamed_addr constant [0 x %struct.cl_option], align 8
@.str.26 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@libiberty_concat_ptr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [63 x i8] c"Internal compiler error: Error reporting routines re-entered.\0A\00", align 1
@flag_fatal_errors = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [47 x i8] c"compilation terminated due to -Wfatal-errors.\0A\00", align 1
@.str.29 = private unnamed_addr constant [449 x i8] c"The 602.gcc_s benchmark binary 'sgcc' has encountered an internal error.\0AIt is possible that there is an error in the benchmark 602.gcc_s\0Asource code, but it is more likely that your compiler\0Ahas mis-optimized or otherwise generated bad code for\0Athe benchmark.  You might try reducing the optimization\0Alevel; see your compiler documentation.\0AIf you think the error is in the benchmark source code, see\0A   www.spec.org/cpu2017/Docs/techsupport.html\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"compilation terminated.\0A\00", align 1
@trim_filename.this_file = internal unnamed_addr constant [13 x i8] c"diagnostic.c\00", align 1
@flag_permissive = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"in %s, at %s:%d\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @file_name_as_prefix(ptr noundef %0) local_unnamed_addr #0 !prof !74 {
  %2 = tail call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str, ptr noundef %0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @build_message_string(ptr noundef %0, ...) unnamed_addr #0 !prof !75 !PGOFuncName !76 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vasprintf(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3) #13
  call void @llvm.va_end(ptr nonnull %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: optsize
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diagnostic_initialize(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !81 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #13
  store ptr %2, ptr %0, align 8, !tbaa !82
  tail call void @pp_construct(ptr noundef %2, ptr noundef null, i32 noundef 0) #13
  %3 = load ptr, ptr @stderr, align 8, !tbaa !77
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 4
  store ptr %3, ptr %6, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.pretty_print_info, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !92
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 2
  store i8 1, ptr %9, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 3
  store i8 0, ptr %10, align 1, !tbaa !94
  %11 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 9
  store ptr null, ptr %12, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3482) %11, i8 0, i64 3482, i1 false)
  store ptr @default_diagnostic_starter, ptr %13, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 8
  store ptr @default_diagnostic_finalizer, ptr %14, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %15, i8 0, i64 21, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_diagnostic_starter(ptr noundef %0, ptr noundef %1) #0 !prof !74 {
  tail call void @diagnostic_report_current_function(ptr noundef %0, ptr noundef %1) #11
  %3 = load ptr, ptr %0, align 8, !tbaa !82
  %4 = tail call ptr @diagnostic_build_prefix(ptr noundef %1) #11
  tail call void @pp_base_set_prefix(ptr noundef %3, ptr noundef %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_diagnostic_finalizer(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void @pp_base_destroy_prefix(ptr noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diagnostic_set_info_translated(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !98 {
  %6 = tail call ptr @__errno_location() #13
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = getelementptr inbounds %struct.text_info, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.text_info, ptr %0, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !103
  store ptr %1, ptr %0, align 8, !tbaa !104
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 1
  store i32 %3, ptr %10, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !106
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 4
  store i32 %4, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 5
  store i32 0, ptr %13, align 4, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diagnostic_set_info(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !98 {
  tail call void @diagnostic_set_info_translated(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @diagnostic_build_prefix(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !74 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !107
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [13 x ptr], ptr @diagnostic_build_prefix.diagnostic_kind_text, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %8 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !105
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %9) #13
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !109

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  store i32 %11, ptr %14, align 4, !tbaa !110
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, ptr %3, align 8, !tbaa !107
  %17 = icmp ult i32 %16, 12
  br i1 %17, label %19, label %18, !prof !109

18:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @trim_filename.this_file, i32 noundef 156, ptr noundef nonnull @.str.14) #11
  br label %19

19:                                               ; preds = %15, %18
  %20 = load ptr, ptr %2, align 8, !tbaa !112
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25, !prof !113

22:                                               ; preds = %19
  %23 = load ptr, ptr @progname, align 8, !tbaa !77
  %24 = call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str.15, ptr noundef %23, ptr noundef %7) #11
  br label %36

25:                                               ; preds = %19
  %26 = load i32, ptr @flag_show_column, align 4, !tbaa !99
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !114
  br i1 %27, label %34, label %30, !prof !113

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !110
  %33 = call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %20, i32 noundef %29, i32 noundef %32, ptr noundef %7) #11
  br label %36

34:                                               ; preds = %25
  %35 = call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str.17, ptr noundef nonnull %20, i32 noundef %29, ptr noundef %7) #11
  br label %36

36:                                               ; preds = %30, %34, %22
  %37 = phi ptr [ %24, %22 ], [ %33, %30 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret ptr %37
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fancy_abort(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !115 {
  %4 = tail call ptr @trim_filename(ptr noundef %0) #11
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.31, ptr noundef %2, ptr noundef %4, i32 noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diagnostic_report_current_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !74 {
  %3 = alloca %struct.expanded_location, align 8
  tail call void @diagnostic_report_current_module(ptr noundef %0) #11
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 25), align 8, !tbaa !116
  %5 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %5) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !112
  call void %4(ptr noundef %0, ptr noundef %6, ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diagnostic_report_current_module(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !74 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %2, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !124
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !109

6:                                                ; preds = %1
  tail call void @pp_base_newline(ptr noundef nonnull %2) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %7, i64 0, i32 8
  store i8 0, ptr %8, align 1, !tbaa !124
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, ptr @input_location, align 4, !tbaa !99
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %83, label %12, !prof !113

12:                                               ; preds = %9
  %13 = load ptr, ptr @line_table, align 8, !tbaa !77
  %14 = tail call ptr @linemap_lookup(ptr noundef %13, i32 noundef %10) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %83, label %16, !prof !113

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !125
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %83, label %20, !prof !126

20:                                               ; preds = %16
  store ptr %14, ptr %17, align 8, !tbaa !125
  %21 = getelementptr inbounds %struct.line_map, ptr %14, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !127
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %83, label %24, !prof !129

24:                                               ; preds = %20
  %25 = load ptr, ptr @line_table, align 8, !tbaa !77
  %26 = load ptr, ptr %25, align 8, !tbaa !130
  %27 = zext nneg i32 %22 to i64
  %28 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27
  %29 = load i32, ptr @flag_show_column, align 4, !tbaa !99
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %0, align 8, !tbaa !82
  %32 = load ptr, ptr %28, align 8, !tbaa !132
  %33 = getelementptr inbounds %struct.line_map, ptr %28, i64 1, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !133
  %35 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !133
  %37 = xor i32 %36, -1
  %38 = add i32 %34, %37
  %39 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 6
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = and i32 %42, %38
  %44 = lshr i32 %43, %41
  %45 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !134
  %47 = add i32 %44, %46
  br i1 %30, label %49, label %48

48:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %31, ptr noundef nonnull @.str.18, ptr noundef %32, i32 noundef %47, i32 noundef 0) #13
  br label %50

49:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %31, ptr noundef nonnull @.str.19, ptr noundef %32, i32 noundef %47) #13
  br label %50

50:                                               ; preds = %49, %48
  %51 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !127
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %80

54:                                               ; preds = %50, %54
  %55 = phi i32 [ %78, %54 ], [ %52, %50 ]
  %56 = load ptr, ptr @line_table, align 8, !tbaa !77
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = zext nneg i32 %55 to i64
  %59 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58
  %60 = load ptr, ptr %0, align 8, !tbaa !82
  %61 = load ptr, ptr %59, align 8, !tbaa !132
  %62 = getelementptr inbounds %struct.line_map, ptr %59, i64 1, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !133
  %64 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !133
  %66 = xor i32 %65, -1
  %67 = add i32 %63, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = zext i8 %69 to i32
  %71 = shl nsw i32 -1, %70
  %72 = and i32 %71, %67
  %73 = lshr i32 %72, %70
  %74 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !134
  %76 = add i32 %73, %75
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %60, ptr noundef nonnull @.str.20, ptr noundef %61, i32 noundef %76) #13
  %77 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !127
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %54, label %80, !llvm.loop !135

80:                                               ; preds = %54, %50
  %81 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %81, ptr noundef nonnull @.str.21) #13
  %82 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void @pp_base_newline(ptr noundef %82) #13
  br label %83

83:                                               ; preds = %12, %16, %80, %20, %9
  ret void
}

; Function Attrs: optsize
declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_verbatim(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_set_prefix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_destroy_prefix(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @diagnostic_classify_diagnostic(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !115 {
  %4 = add i32 %1, -870
  %5 = icmp ult i32 %4, -869
  %6 = icmp ugt i32 %2, 11
  %7 = or i1 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !99
  store i32 %2, ptr %10, align 4, !tbaa !99
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @diagnostic_report_diagnostic(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !98 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !107
  switch i32 %8, label %26 [
    i32 6, label %9
    i32 10, label %9
  ], !prof !137

9:                                                ; preds = %2, %2
  %10 = load i32, ptr @inhibit_warnings, align 4, !tbaa !99
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %164, !prof !138

12:                                               ; preds = %9
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %6) #13
  %13 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %14 = load i8, ptr %13, align 8, !tbaa !139
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16, !prof !138

16:                                               ; preds = %12
  %17 = load i32, ptr @warn_system_headers, align 4, !tbaa !99
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %164, label %19

19:                                               ; preds = %16, %12
  %20 = load i32, ptr %7, align 8, !tbaa !107
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %26, !prof !140

22:                                               ; preds = %19
  %23 = load i32, ptr @flag_pedantic_errors, align 4, !tbaa !99
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 6, i32 4
  store i32 %25, ptr %7, align 8, !tbaa !107
  br label %33

26:                                               ; preds = %2, %19
  %27 = phi i32 [ %20, %19 ], [ %8, %2 ]
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %33, !prof !141

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 13
  %31 = load i8, ptr %30, align 4, !tbaa !142
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %164

33:                                               ; preds = %22, %29, %26
  %34 = phi i32 [ %25, %22 ], [ 8, %29 ], [ %27, %26 ]
  %35 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 12
  %36 = load i32, ptr %35, align 8, !tbaa !143
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45, !prof !144

38:                                               ; preds = %33
  %39 = icmp eq i32 %34, 3
  %40 = icmp eq i32 %36, 1
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %43) #13
  br label %45

44:                                               ; preds = %38
  call fastcc void @error_recursion(ptr noundef nonnull %0) #11
  unreachable

45:                                               ; preds = %42, %33
  %46 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !94
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49, !prof !138

49:                                               ; preds = %45
  %50 = load i32, ptr %7, align 8, !tbaa !107
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 4, ptr %7, align 8, !tbaa !107
  br label %53

53:                                               ; preds = %52, %49, %45
  %54 = phi i8 [ 1, %52 ], [ 0, %49 ], [ 0, %45 ]
  %55 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !108
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58, !prof !145

58:                                               ; preds = %53
  %59 = call i32 @option_enabled(i32 noundef %56) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %164, label %61, !prof !146

61:                                               ; preds = %58
  %62 = load i32, ptr %55, align 4, !tbaa !108
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 4, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !99
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67, !prof !129

67:                                               ; preds = %61
  store i32 %65, ptr %7, align 8, !tbaa !107
  br label %70

68:                                               ; preds = %61
  %69 = load i32, ptr %7, align 8, !tbaa !107
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ %69, %68 ], [ %65, %67 ]
  %72 = phi i8 [ %54, %68 ], [ 0, %67 ]
  %73 = icmp eq i32 %71, 1
  br i1 %73, label %164, label %74, !prof !147

74:                                               ; preds = %70, %53
  %75 = phi i8 [ %72, %70 ], [ %54, %53 ]
  %76 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 2
  %77 = load i8, ptr %76, align 8, !tbaa !93
  %78 = icmp ne i8 %77, 0
  %79 = icmp ne i8 %75, 0
  %80 = and i1 %79, %78
  br i1 %80, label %81, label %84, !prof !148

81:                                               ; preds = %74
  %82 = load ptr, ptr %0, align 8, !tbaa !82
  %83 = load ptr, ptr @progname, align 8, !tbaa !77
  call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %82, ptr noundef nonnull @.str.22, ptr noundef %83) #13
  store i8 0, ptr %76, align 8, !tbaa !93
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, ptr %35, align 8, !tbaa !143
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %35, align 8, !tbaa !143
  %87 = load i32, ptr %7, align 8, !tbaa !107
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %125, !prof !113

89:                                               ; preds = %84
  %90 = call zeroext i8 @plugins_active_p() #13
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr @stderr, align 8, !tbaa !77
  call void (ptr, ptr, ...) @fnotice(ptr noundef %93, ptr noundef nonnull @.str.23) #11
  %94 = load ptr, ptr @stderr, align 8, !tbaa !77
  call void @dump_active_plugins(ptr noundef %94) #13
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, ptr %7, align 8, !tbaa !107
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %125, !prof !149

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1, i64 4
  %100 = load i32, ptr %99, align 8, !tbaa !99
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1, i64 5
  %104 = load i32, ptr %103, align 4, !tbaa !99
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %108 = load i8, ptr %107, align 1, !tbaa !150
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %111 = load i32, ptr %5, align 8, !tbaa !105
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %111) #13
  %112 = load ptr, ptr @stderr, align 8, !tbaa !77
  %113 = load ptr, ptr %4, align 8, !tbaa !112
  %114 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !114
  call void (ptr, ptr, ...) @fnotice(ptr noundef %112, ptr noundef nonnull @.str.24, ptr noundef %113, i32 noundef %115) #11
  call void @exit(i32 noundef 4) #14
  unreachable

116:                                              ; preds = %106, %102
  %117 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !95
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %1, align 8, !tbaa !104
  %122 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !103
  call void %118(ptr noundef %121, ptr noundef %123) #13
  %124 = load i32, ptr %7, align 8, !tbaa !107
  br label %125

125:                                              ; preds = %84, %116, %120, %95
  %126 = phi i32 [ %87, %84 ], [ 3, %116 ], [ %124, %120 ], [ %96, %95 ]
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !99
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %128, align 4, !tbaa !99
  %131 = load ptr, ptr %1, align 8, !tbaa !104
  %132 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 5
  %133 = load i8, ptr %132, align 4, !tbaa !151
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %151, label %135, !prof !109

135:                                              ; preds = %125
  %136 = load i32, ptr %55, align 4, !tbaa !108
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %135
  %139 = sext i32 %136 to i64
  %140 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !152
  %142 = call i64 (ptr, ...) @concat_length(ptr noundef %131, ptr noundef nonnull @.str.25, ptr noundef %141, ptr noundef nonnull @.str.26, ptr noundef null) #13
  %143 = add i64 %142, 1
  %144 = alloca i8, i64 %143, align 16
  store ptr %144, ptr @libiberty_concat_ptr, align 8, !tbaa !77
  %145 = load ptr, ptr %1, align 8, !tbaa !104
  %146 = load i32, ptr %55, align 4, !tbaa !108
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !152
  %150 = call ptr (ptr, ...) @concat_copy2(ptr noundef %145, ptr noundef nonnull @.str.25, ptr noundef %149, ptr noundef nonnull @.str.26, ptr noundef null) #13
  store ptr %150, ptr %1, align 8, !tbaa !104
  br label %151

151:                                              ; preds = %138, %135, %125
  %152 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  store ptr %5, ptr %152, align 8, !tbaa !155
  %153 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 3
  %154 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 4
  store ptr %153, ptr %154, align 8, !tbaa !156
  store ptr null, ptr %153, align 8, !tbaa !157
  %155 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_format(ptr noundef %155, ptr noundef nonnull %1) #13
  %156 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !96
  call void %157(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %158 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_output_formatted_text(ptr noundef %158) #13
  %159 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !97
  call void %160(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  %161 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %161) #13
  call fastcc void @diagnostic_action_after_output(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  store ptr %131, ptr %1, align 8, !tbaa !104
  store ptr null, ptr %153, align 8, !tbaa !157
  %162 = load i32, ptr %35, align 8, !tbaa !143
  %163 = add nsw i32 %162, -1
  store i32 %163, ptr %35, align 8, !tbaa !143
  br label %164

164:                                              ; preds = %70, %58, %29, %9, %16, %151
  %165 = phi i8 [ 1, %151 ], [ 0, %16 ], [ 0, %9 ], [ 0, %29 ], [ 0, %58 ], [ 0, %70 ]
  ret i8 %165
}

; Function Attrs: optsize
declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal fastcc void @error_recursion(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !115 !PGOFuncName !158 {
  %2 = alloca %struct.diagnostic_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 8, !tbaa !143
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void @pp_base_flush(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @stderr, align 8, !tbaa !77
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %9, ptr noundef nonnull @.str.27) #11
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 4
  store i32 3, ptr %10, align 8, !tbaa !107
  call fastcc void @diagnostic_action_after_output(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  tail call fastcc void @real_abort() #11
  unreachable
}

; Function Attrs: optsize
declare i32 @option_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @plugins_active_p() local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @fnotice(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #7 !prof !115 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare void @dump_active_plugins(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pp_base_output_formatted_text(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @diagnostic_action_after_output(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !74 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !107
  switch i32 %4, label %29 [
    i32 9, label %30
    i32 8, label %30
    i32 7, label %30
    i32 6, label %30
    i32 4, label %5
    i32 5, label %5
    i32 3, label %15
    i32 2, label %22
  ], !prof !160

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !150
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @real_abort() #11
  unreachable

10:                                               ; preds = %5
  %11 = load i32, ptr @flag_fatal_errors, align 4, !tbaa !99
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !77
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %14, ptr noundef nonnull @.str.28) #11
  tail call void @exit(i32 noundef 1) #14
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !150
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @real_abort() #11
  unreachable

20:                                               ; preds = %15
  %21 = load ptr, ptr @stderr, align 8, !tbaa !77
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %21, ptr noundef nonnull @.str.29) #11
  tail call void @exit(i32 noundef 4) #14
  unreachable

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !150
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @real_abort() #11
  unreachable

27:                                               ; preds = %22
  %28 = load ptr, ptr @stderr, align 8, !tbaa !77
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %28, ptr noundef nonnull @.str.30) #11
  tail call void @exit(i32 noundef 1) #14
  unreachable

29:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @trim_filename.this_file, i32 noundef 228, ptr noundef nonnull @.str.14) #11
  br label %30

30:                                               ; preds = %10, %2, %2, %2, %2, %29
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal fastcc void @real_abort() unnamed_addr #6 !prof !115 !PGOFuncName !161 {
  tail call void @abort() #14
  unreachable
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @trim_filename(ptr noundef readonly %0) local_unnamed_addr #9 !prof !115 {
  %2 = load i8, ptr %0, align 1, !tbaa !162
  %3 = icmp eq i8 %2, 46
  br i1 %3, label %4, label %17

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %14, %13 ], [ %0, %1 ]
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !162
  %8 = icmp eq i8 %7, 46
  br i1 %8, label %9, label %33

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !162
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %5, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !162
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %4, label %17, !llvm.loop !163

17:                                               ; preds = %13, %1
  %18 = phi i8 [ %2, %1 ], [ %15, %13 ]
  %19 = phi ptr [ %0, %1 ], [ %14, %13 ]
  %20 = icmp eq i8 %18, 100
  br i1 %20, label %21, label %33

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %25, %21 ], [ @trim_filename.this_file, %17 ]
  %23 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !162
  %27 = load i8, ptr %25, align 1, !tbaa !162
  %28 = icmp ne i8 %26, %27
  %29 = icmp eq i8 %26, 0
  %30 = or i1 %29, %28
  %31 = icmp eq i8 %27, 0
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %21, !llvm.loop !164

33:                                               ; preds = %4, %9, %21, %17
  %34 = phi ptr [ %19, %17 ], [ %24, %21 ], [ %5, %9 ], [ %5, %4 ]
  br label %35

35:                                               ; preds = %33, %38
  %36 = phi ptr [ %39, %38 ], [ %34, %33 ]
  %37 = icmp ugt ptr %36, %0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %36, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !162
  %41 = icmp eq i8 %40, 47
  br i1 %41, label %42, label %35, !llvm.loop !165

42:                                               ; preds = %35, %38
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verbatim(ptr noundef %0, ...) local_unnamed_addr #0 !prof !115 {
  %2 = alloca %struct.text_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call ptr @__errno_location() #13
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !166
  %7 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !167
  store ptr %0, ptr %2, align 8, !tbaa !168
  %8 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  call void @pp_base_format_verbatim(ptr noundef %10, ptr noundef nonnull %2) #13
  %11 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %12) #13
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #12
  ret void
}

; Function Attrs: optsize
declare void @pp_base_format_verbatim(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @emit_diagnostic(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 !prof !75 {
  %5 = alloca %struct.diagnostic_info, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = icmp eq i32 %0, 11
  br i1 %7, label %8, label %12, !prof !169

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_permissive, align 4, !tbaa !99
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 4, i32 6
  call void @diagnostic_set_info(ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %1, i32 noundef %11) #11
  br label %13

12:                                               ; preds = %4
  call void @diagnostic_set_info(ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %1, i32 noundef %0) #11
  switch i32 %0, label %16 [
    i32 10, label %13
    i32 6, label %13
  ]

13:                                               ; preds = %12, %12, %8
  %14 = phi i32 [ 525, %8 ], [ %2, %12 ], [ %2, %12 ]
  %15 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !108
  br label %16

16:                                               ; preds = %13, %12
  %17 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %18 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %17, ptr noundef nonnull %5) #11, !range !170
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @inform(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !115 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.va_start(ptr nonnull %4)
  call void @diagnostic_set_info(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %0, i32 noundef 8) #11
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %6 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %5, ptr noundef nonnull %3) #11, !range !170
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @inform_n(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 !prof !115 {
  %5 = alloca %struct.diagnostic_info, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = sext i32 %1 to i64
  %8 = call ptr @fake_ngettext(ptr noundef %2, ptr noundef %3, i64 noundef %7) #13
  call void @diagnostic_set_info_translated(ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %6, i32 noundef %0, i32 noundef 8) #11
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %10 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %9, ptr noundef nonnull %5) #11, !range !170
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare ptr @fake_ngettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @warning(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !171 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @diagnostic_set_info(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %5, i32 noundef 6) #11
  %6 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 5
  store i32 %0, ptr %6, align 4, !tbaa !108
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %8 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %7, ptr noundef nonnull %3) #11, !range !170
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @warning_at(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !172 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  call void @diagnostic_set_info(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %0, i32 noundef 6) #11
  %6 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %6, align 4, !tbaa !108
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %8 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %7, ptr noundef nonnull %4) #11, !range !170
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @pedwarn(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !173 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  call void @diagnostic_set_info(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %0, i32 noundef 10) #11
  %6 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %6, align 4, !tbaa !108
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %8 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %7, ptr noundef nonnull %4) #11, !range !170
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @permerror(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !115 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr @flag_permissive, align 4, !tbaa !99
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 4, i32 6
  call void @diagnostic_set_info(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %0, i32 noundef %7) #11
  %8 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 5
  store i32 525, ptr %8, align 4, !tbaa !108
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %10 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %9, ptr noundef nonnull %3) #11, !range !170
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @error(ptr noundef %0, ...) local_unnamed_addr #0 !prof !115 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @diagnostic_set_info(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4, i32 noundef 4) #11
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %6 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %5, ptr noundef nonnull %2) #11, !range !170
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @error_n(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 !prof !115 {
  %5 = alloca %struct.diagnostic_info, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = sext i32 %1 to i64
  %8 = call ptr @fake_ngettext(ptr noundef %2, ptr noundef %3, i64 noundef %7) #13
  call void @diagnostic_set_info_translated(ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %6, i32 noundef %0, i32 noundef 4) #11
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %10 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %9, ptr noundef nonnull %5) #11, !range !170
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @error_at(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !115 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.va_start(ptr nonnull %4)
  call void @diagnostic_set_info(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %0, i32 noundef 4) #11
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %6 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %5, ptr noundef nonnull %3) #11, !range !170
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sorry(ptr noundef %0, ...) local_unnamed_addr #0 !prof !115 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @diagnostic_set_info(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4, i32 noundef 5) #11
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %6 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %5, ptr noundef nonnull %2) #11, !range !170
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fatal_error(ptr noundef %0, ...) local_unnamed_addr #0 !prof !115 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @diagnostic_set_info(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4, i32 noundef 2) #11
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %6 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %5, ptr noundef nonnull %2) #11, !range !170
  call void @llvm.va_end(ptr nonnull %3)
  call void @fancy_abort(ptr noundef nonnull @trim_filename.this_file, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @internal_error(ptr noundef %0, ...) local_unnamed_addr #0 !prof !115 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @diagnostic_set_info(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4, i32 noundef 3) #11
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !77
  %6 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %5, ptr noundef nonnull %2) #11, !range !170
  call void @llvm.va_end(ptr nonnull %3)
  call void @fancy_abort(ptr noundef nonnull @trim_filename.this_file, i32 noundef 742, ptr noundef nonnull @.str.14) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!73}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!36 = !{ptr @file_name_as_prefix, ptr @build_message_string, i64 2}
!37 = !{ptr @build_message_string, ptr @vasprintf, i64 4}
!38 = !{ptr @diagnostic_initialize, ptr @xmalloc, i64 1}
!39 = !{ptr @diagnostic_initialize, ptr @pp_construct, i64 1}
!40 = !{ptr @default_diagnostic_starter, ptr @diagnostic_report_current_function, i64 2}
!41 = !{ptr @default_diagnostic_starter, ptr @diagnostic_build_prefix, i64 2}
!42 = !{ptr @default_diagnostic_starter, ptr @pp_base_set_prefix, i64 2}
!43 = !{ptr @default_diagnostic_finalizer, ptr @pp_base_destroy_prefix, i64 2}
!44 = !{ptr @diagnostic_set_info_translated, ptr @__errno_location, i64 15145}
!45 = !{ptr @diagnostic_set_info, ptr @diagnostic_set_info_translated, i64 15145}
!46 = !{ptr @diagnostic_build_prefix, ptr @expand_location, i64 2}
!47 = !{ptr @diagnostic_build_prefix, ptr @fancy_abort, i64 1}
!48 = !{ptr @diagnostic_build_prefix, ptr @build_message_string, i64 2}
!49 = !{ptr @diagnostic_report_current_function, ptr @diagnostic_report_current_module, i64 2}
!50 = !{ptr @diagnostic_report_current_function, ptr @expand_location, i64 2}
!51 = !{ptr @diagnostic_report_current_module, ptr @linemap_lookup, i64 2}
!52 = !{ptr @diagnostic_report_current_module, ptr @pp_verbatim, i64 4}
!53 = !{ptr @diagnostic_report_diagnostic, ptr @expand_location, i64 15143}
!54 = !{ptr @diagnostic_report_diagnostic, ptr @pp_base_flush, i64 4}
!55 = !{ptr @diagnostic_report_diagnostic, ptr @option_enabled, i64 15141}
!56 = !{ptr @diagnostic_report_diagnostic, ptr @pp_verbatim, i64 1}
!57 = !{ptr @diagnostic_report_diagnostic, ptr @plugins_active_p, i64 1}
!58 = !{ptr @diagnostic_report_diagnostic, ptr @fnotice, i64 1}
!59 = !{ptr @diagnostic_report_diagnostic, ptr @dump_active_plugins, i64 1}
!60 = !{ptr @diagnostic_report_diagnostic, ptr @concat_length, i64 1}
!61 = !{ptr @diagnostic_report_diagnostic, ptr @concat_copy2, i64 1}
!62 = !{ptr @diagnostic_report_diagnostic, ptr @pp_base_format, i64 3}
!63 = !{ptr @diagnostic_report_diagnostic, ptr @pp_base_output_formatted_text, i64 3}
!64 = !{ptr @diagnostic_report_diagnostic, ptr @diagnostic_action_after_output, i64 3}
!65 = !{ptr @emit_diagnostic, ptr @diagnostic_set_info, i64 4}
!66 = !{ptr @emit_diagnostic, ptr @diagnostic_report_diagnostic, i64 4}
!67 = !{ptr @warning, ptr @diagnostic_set_info, i64 3221}
!68 = !{ptr @warning, ptr @diagnostic_report_diagnostic, i64 3221}
!69 = !{ptr @warning_at, ptr @diagnostic_set_info, i64 10449}
!70 = !{ptr @warning_at, ptr @diagnostic_report_diagnostic, i64 10449}
!71 = !{ptr @pedwarn, ptr @diagnostic_set_info, i64 1391}
!72 = !{ptr @pedwarn, ptr @diagnostic_report_diagnostic, i64 1391}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 2}
!75 = !{!"function_entry_count", i64 4}
!76 = !{!"diagnostic.c:build_message_string"}
!77 = !{!78, !78, i64 0}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!83, !78, i64 0}
!83 = !{!"diagnostic_context", !78, i64 0, !79, i64 8, !79, i64 56, !79, i64 57, !79, i64 60, !79, i64 3540, !79, i64 3541, !78, i64 3544, !78, i64 3552, !78, i64 3560, !78, i64 3568, !78, i64 3576, !84, i64 3584, !79, i64 3588}
!84 = !{!"int", !79, i64 0}
!85 = !{!86, !78, i64 0}
!86 = !{!"pretty_print_info", !78, i64 0, !78, i64 8, !84, i64 16, !84, i64 20, !84, i64 24, !87, i64 28, !78, i64 40, !79, i64 48, !79, i64 49, !79, i64 50}
!87 = !{!"", !84, i64 0, !84, i64 4}
!88 = !{!89, !78, i64 192}
!89 = !{!"", !90, i64 0, !90, i64 88, !78, i64 176, !78, i64 184, !78, i64 192, !84, i64 200, !79, i64 204}
!90 = !{!"obstack", !91, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !91, i64 40, !84, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !84, i64 80, !84, i64 80, !84, i64 80}
!91 = !{!"long", !79, i64 0}
!92 = !{!86, !84, i64 28}
!93 = !{!83, !79, i64 56}
!94 = !{!83, !79, i64 57}
!95 = !{!83, !78, i64 3560}
!96 = !{!83, !78, i64 3544}
!97 = !{!83, !78, i64 3552}
!98 = !{!"function_entry_count", i64 15145}
!99 = !{!84, !84, i64 0}
!100 = !{!101, !84, i64 16}
!101 = !{!"diagnostic_info", !102, i64 0, !84, i64 40, !84, i64 44, !78, i64 48, !84, i64 56, !84, i64 60}
!102 = !{!"", !78, i64 0, !78, i64 8, !84, i64 16, !78, i64 24, !78, i64 32}
!103 = !{!101, !78, i64 8}
!104 = !{!101, !78, i64 0}
!105 = !{!101, !84, i64 40}
!106 = !{!101, !84, i64 44}
!107 = !{!101, !84, i64 56}
!108 = !{!101, !84, i64 60}
!109 = !{!"branch_weights", i32 3, i32 1}
!110 = !{!111, !84, i64 12}
!111 = !{!"", !78, i64 0, !84, i64 8, !84, i64 12, !79, i64 16}
!112 = !{!111, !78, i64 0}
!113 = !{!"branch_weights", i32 1, i32 3}
!114 = !{!111, !84, i64 8}
!115 = !{!"function_entry_count", i64 0}
!116 = !{!117, !78, i64 200}
!117 = !{!"lang_hooks", !78, i64 0, !91, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !78, i64 104, !78, i64 112, !78, i64 120, !78, i64 128, !78, i64 136, !78, i64 144, !78, i64 152, !78, i64 160, !78, i64 168, !78, i64 176, !78, i64 184, !78, i64 192, !78, i64 200, !78, i64 208, !78, i64 216, !78, i64 224, !78, i64 232, !118, i64 240, !119, i64 248, !120, i64 256, !121, i64 272, !122, i64 432, !123, i64 560, !78, i64 584, !78, i64 592, !78, i64 600, !78, i64 608, !78, i64 616, !78, i64 624, !78, i64 632, !78, i64 640, !78, i64 648, !78, i64 656, !78, i64 664, !79, i64 672}
!118 = !{!"lang_hooks_for_tree_inlining", !78, i64 0}
!119 = !{!"lang_hooks_for_callgraph", !78, i64 0}
!120 = !{!"lang_hooks_for_tree_dump", !78, i64 0, !78, i64 8}
!121 = !{!"lang_hooks_for_decls", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !78, i64 104, !78, i64 112, !78, i64 120, !78, i64 128, !78, i64 136, !78, i64 144, !78, i64 152}
!122 = !{!"lang_hooks_for_types", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !78, i64 96, !78, i64 104, !78, i64 112, !79, i64 120}
!123 = !{!"lang_hooks_for_lto", !78, i64 0, !78, i64 8, !78, i64 16}
!124 = !{!86, !79, i64 49}
!125 = !{!83, !78, i64 3576}
!126 = !{!"branch_weights", i32 2, i32 2}
!127 = !{!128, !84, i64 16}
!128 = !{!"line_map", !78, i64 0, !84, i64 8, !84, i64 12, !84, i64 16, !84, i64 20, !79, i64 21, !84, i64 22}
!129 = !{!"branch_weights", i32 2, i32 1}
!130 = !{!131, !78, i64 0}
!131 = !{!"line_maps", !78, i64 0, !84, i64 8, !84, i64 12, !84, i64 16, !84, i64 20, !84, i64 24, !79, i64 28, !84, i64 32, !84, i64 36, !84, i64 40, !78, i64 48}
!132 = !{!128, !78, i64 0}
!133 = !{!128, !84, i64 12}
!134 = !{!128, !84, i64 8}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"branch_weights", i32 1476, i32 20192067, i32 2178576}
!138 = !{!"branch_weights", i32 15146, i32 1}
!139 = !{!111, !79, i64 16}
!140 = !{!"branch_weights", i32 209275434, i32 1938208214}
!141 = !{!"branch_weights", i32 157083, i32 2147326565}
!142 = !{!83, !79, i64 3588}
!143 = !{!83, !84, i64 3584}
!144 = !{!"branch_weights", i32 1, i32 15146}
!145 = !{!"branch_weights", i32 2, i32 15145}
!146 = !{!"branch_weights", i32 15144, i32 2}
!147 = !{!"branch_weights", i32 1, i32 2}
!148 = !{!"branch_weights", i32 3, i32 13}
!149 = !{!"branch_weights", i32 -2147483648, i32 0}
!150 = !{!83, !79, i64 3541}
!151 = !{!83, !79, i64 3540}
!152 = !{!153, !78, i64 0}
!153 = !{!"cl_option", !78, i64 0, !78, i64 8, !154, i64 16, !79, i64 18, !84, i64 20, !84, i64 24, !78, i64 32, !84, i64 40, !84, i64 44}
!154 = !{!"short", !79, i64 0}
!155 = !{!101, !78, i64 24}
!156 = !{!101, !78, i64 32}
!157 = !{!101, !78, i64 48}
!158 = !{!"diagnostic.c:error_recursion"}
!159 = !{!"diagnostic.c:diagnostic_action_after_output"}
!160 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1}
!161 = !{!"diagnostic.c:real_abort"}
!162 = !{!79, !79, i64 0}
!163 = distinct !{!163, !136}
!164 = distinct !{!164, !136}
!165 = distinct !{!165, !136}
!166 = !{!102, !84, i64 16}
!167 = !{!102, !78, i64 8}
!168 = !{!102, !78, i64 0}
!169 = !{!"branch_weights", i32 1, i32 5}
!170 = !{i8 0, i8 2}
!171 = !{!"function_entry_count", i64 3221}
!172 = !{!"function_entry_count", i64 10449}
!173 = !{!"function_entry_count", i64 1391}
