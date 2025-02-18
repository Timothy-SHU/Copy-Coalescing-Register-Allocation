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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@global_diagnostic_context = internal global %struct.diagnostic_context zeroinitializer, align 8
@global_dc = dso_local local_unnamed_addr global ptr @global_diagnostic_context, align 8
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
@trim_filename.this_file = internal unnamed_addr constant [13 x i8] c"diagnostic.c\00", align 1
@flag_permissive = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"in %s, at %s:%d\00", align 1
@flag_fatal_errors = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [47 x i8] c"compilation terminated due to -Wfatal-errors.\0A\00", align 1
@.str.29 = private unnamed_addr constant [453 x i8] c"The 502.gcc_r benchmark binary 'cpugcc_r' has encountered an internal error.\0AIt is possible that there is an error in the benchmark 502.gcc_r\0Asource code, but it is more likely that your compiler\0Ahas mis-optimized or otherwise generated bad code for\0Athe benchmark.  You might try reducing the optimization\0Alevel; see your compiler documentation.\0AIf you think the error is in the benchmark source code, see\0A   www.spec.org/cpu2017/Docs/techsupport.html\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"compilation terminated.\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"Internal compiler error: Error reporting routines re-entered.\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !60 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !61
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !60 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !61
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !60 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !71

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = load i8, ptr %3, align 1, !tbaa !72
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !60 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !71

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = load i8, ptr %3, align 1, !tbaa !72
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !60 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !61
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !71

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = load i8, ptr %3, align 1, !tbaa !72
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !60 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !61
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !60 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !71

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !73
  store i8 %12, ptr %4, align 1, !tbaa !72
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !60 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !71

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !73
  store i8 %12, ptr %4, align 1, !tbaa !72
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !60 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !71

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !73
  store i8 %12, ptr %4, align 1, !tbaa !72
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !60 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !60 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !60 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !60 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !76
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !60 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !76
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !60 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !77

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @file_name_as_prefix(ptr noundef %0) local_unnamed_addr #9 !prof !60 {
  %2 = tail call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define internal ptr @build_message_string(ptr noundef %0, ...) unnamed_addr #9 !prof !80 !PGOFuncName !81 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vasprintf(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3) #17
  call void @llvm.va_end(ptr %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @diagnostic_initialize(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !80 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #17
  store ptr %2, ptr %0, align 8, !tbaa !82
  tail call void @pp_construct(ptr noundef %2, ptr noundef null, i32 noundef 0) #17
  %3 = load ptr, ptr @stderr, align 8, !tbaa !61
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 4
  store ptr %3, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.pretty_print_info, ptr %4, i64 0, i32 5
  store i32 0, ptr %7, align 4, !tbaa !90
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 2
  store i8 1, ptr %9, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 3
  store i8 0, ptr %10, align 1, !tbaa !92
  %11 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 9
  store ptr null, ptr %12, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3482) %11, i8 0, i64 3482, i1 false)
  store ptr @default_diagnostic_starter, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 8
  store ptr @default_diagnostic_finalizer, ptr %14, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %15, i8 0, i64 21, i1 false)
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold nounwind uwtable
define dso_local void @default_diagnostic_starter(ptr noundef %0, ptr noundef %1) #9 !prof !80 {
  %3 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  tail call void @diagnostic_report_current_module(ptr noundef %0)
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 25), align 8, !tbaa !96
  %5 = load i32, ptr @input_location, align 4, !tbaa !76
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %5) #17
  %6 = load ptr, ptr %3, align 8, !tbaa !104
  call void %4(ptr noundef %0, ptr noundef %6, ptr noundef %1) #17, !prof !106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  %7 = load ptr, ptr %0, align 8, !tbaa !82
  %8 = call ptr @diagnostic_build_prefix(ptr noundef %1)
  call void @pp_base_set_prefix(ptr noundef %7, ptr noundef %8) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @default_diagnostic_finalizer(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !80 {
  %3 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void @pp_base_destroy_prefix(ptr noundef %3) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @diagnostic_set_info_translated(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !60 {
  %6 = tail call ptr @__errno_location() #17
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %struct.text_info, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %0, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !110
  store ptr %1, ptr %0, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 1
  store i32 %3, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !113
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 4
  store i32 %4, ptr %12, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 5
  store i32 0, ptr %13, align 4, !tbaa !115
  ret void
}

declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @diagnostic_set_info(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 !prof !116 {
  %6 = tail call ptr @__errno_location() #17
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %struct.text_info, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %0, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !110
  store ptr %1, ptr %0, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 1
  store i32 %3, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !113
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 4
  store i32 %4, ptr %12, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 5
  store i32 0, ptr %13, align 4, !tbaa !115
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @diagnostic_build_prefix(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !80 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [13 x ptr], ptr @diagnostic_build_prefix.diagnostic_kind_text, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %8 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !112
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %9) #17
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !113
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !117

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  store i32 %11, ptr %14, align 4, !tbaa !118
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, ptr %3, align 8, !tbaa !114
  %17 = icmp ult i32 %16, 12
  br i1 %17, label %20, label %18, !prof !117

18:                                               ; preds = %15
  %19 = call ptr @trim_filename(ptr noundef nonnull @trim_filename.this_file)
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.14, ptr noundef %19, i32 noundef 156)
  br label %20

20:                                               ; preds = %15, %18
  %21 = load ptr, ptr %2, align 8, !tbaa !104
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26, !prof !119

23:                                               ; preds = %20
  %24 = load ptr, ptr @progname, align 8, !tbaa !61
  %25 = call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str.15, ptr noundef %24, ptr noundef %7)
  br label %37

26:                                               ; preds = %20
  %27 = load i32, ptr @flag_show_column, align 4, !tbaa !76
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !120
  br i1 %28, label %35, label %31, !prof !119

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !118
  %34 = call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %21, i32 noundef %30, i32 noundef %33, ptr noundef %7)
  br label %37

35:                                               ; preds = %26
  %36 = call ptr (ptr, ...) @build_message_string(ptr noundef nonnull @.str.17, ptr noundef nonnull %21, i32 noundef %30, ptr noundef %7)
  br label %37

37:                                               ; preds = %31, %35, %23
  %38 = phi ptr [ %25, %23 ], [ %34, %31 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret ptr %38
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @fancy_abort(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !60 {
  %4 = tail call ptr @trim_filename(ptr noundef %0)
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.27, ptr noundef %2, ptr noundef %4, i32 noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @diagnostic_report_current_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !60 {
  %3 = alloca %struct.expanded_location, align 8
  tail call void @diagnostic_report_current_module(ptr noundef %0)
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 25), align 8, !tbaa !96
  %5 = load i32, ptr @input_location, align 4, !tbaa !76
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %5) #17
  %6 = load ptr, ptr %3, align 8, !tbaa !104
  call void %4(ptr noundef %0, ptr noundef %6, ptr noundef %1) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @diagnostic_report_current_module(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !80 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %2, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !121
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !117

6:                                                ; preds = %1
  tail call void @pp_base_newline(ptr noundef %2) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %7, i64 0, i32 8
  store i8 0, ptr %8, align 1, !tbaa !121
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, ptr @input_location, align 4, !tbaa !76
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %83, label %12, !prof !119

12:                                               ; preds = %9
  %13 = load ptr, ptr @line_table, align 8, !tbaa !61
  %14 = tail call ptr @linemap_lookup(ptr noundef %13, i32 noundef %10) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %83, label %16, !prof !119

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %83, label %20, !prof !119

20:                                               ; preds = %16
  store ptr %14, ptr %17, align 8, !tbaa !122
  %21 = getelementptr inbounds %struct.line_map, ptr %14, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !123
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %83, label %24, !prof !117

24:                                               ; preds = %20
  %25 = load ptr, ptr @line_table, align 8, !tbaa !61
  %26 = load ptr, ptr %25, align 8, !tbaa !125
  %27 = zext nneg i32 %22 to i64
  %28 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27
  %29 = load i32, ptr @flag_show_column, align 4, !tbaa !76
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %0, align 8, !tbaa !82
  %32 = load ptr, ptr %28, align 8, !tbaa !127
  %33 = getelementptr inbounds %struct.line_map, ptr %28, i64 1, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !128
  %35 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !128
  %37 = xor i32 %36, -1
  %38 = add i32 %34, %37
  %39 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 6
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = and i32 %42, %38
  %44 = lshr i32 %43, %41
  %45 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !129
  %47 = add i32 %44, %46
  br i1 %30, label %49, label %48

48:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %31, ptr noundef nonnull @.str.18, ptr noundef %32, i32 noundef %47, i32 noundef 0) #17
  br label %50

49:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %31, ptr noundef nonnull @.str.19, ptr noundef %32, i32 noundef %47) #17
  br label %50

50:                                               ; preds = %49, %48
  %51 = getelementptr inbounds %struct.line_map, ptr %26, i64 %27, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !123
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %80

54:                                               ; preds = %50, %54
  %55 = phi i32 [ %78, %54 ], [ %52, %50 ]
  %56 = load ptr, ptr @line_table, align 8, !tbaa !61
  %57 = load ptr, ptr %56, align 8, !tbaa !125
  %58 = zext nneg i32 %55 to i64
  %59 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58
  %60 = load ptr, ptr %0, align 8, !tbaa !82
  %61 = load ptr, ptr %59, align 8, !tbaa !127
  %62 = getelementptr inbounds %struct.line_map, ptr %59, i64 1, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !128
  %64 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !128
  %66 = xor i32 %65, -1
  %67 = add i32 %63, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = zext i8 %69 to i32
  %71 = shl nsw i32 -1, %70
  %72 = and i32 %71, %67
  %73 = lshr i32 %72, %70
  %74 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !129
  %76 = add i32 %73, %75
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %60, ptr noundef nonnull @.str.20, ptr noundef %61, i32 noundef %76) #17
  %77 = getelementptr inbounds %struct.line_map, ptr %57, i64 %58, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !123
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %54, label %80, !llvm.loop !130

80:                                               ; preds = %54, %50
  %81 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %81, ptr noundef nonnull @.str.21) #17
  %82 = load ptr, ptr %0, align 8, !tbaa !82
  tail call void @pp_base_newline(ptr noundef %82) #17
  br label %83

83:                                               ; preds = %12, %16, %80, %20, %9
  ret void
}

declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pp_verbatim(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @pp_base_set_prefix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_base_destroy_prefix(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @diagnostic_classify_diagnostic(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !60 {
  %4 = add i32 %1, -870
  %5 = icmp ult i32 %4, -869
  %6 = icmp ugt i32 %2, 11
  %7 = or i1 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !76
  store i32 %2, ptr %10, align 4, !tbaa !76
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @diagnostic_report_diagnostic(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !131 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !114
  switch i32 %9, label %20 [
    i32 6, label %10
    i32 10, label %10
  ], !prof !132

10:                                               ; preds = %2, %2
  %11 = load i32, ptr @inhibit_warnings, align 4, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %167, !prof !133

13:                                               ; preds = %10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %7) #17
  %14 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !134
  %16 = icmp eq i8 %15, 0
  %17 = load i32, ptr @warn_system_headers, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18, !prof !133
  br i1 %19, label %20, label %167, !prof !133

20:                                               ; preds = %2, %13
  %21 = load i32, ptr %8, align 8, !tbaa !114
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %27, !prof !135

23:                                               ; preds = %20
  %24 = load i32, ptr @flag_pedantic_errors, align 4, !tbaa !76
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 6, i32 4, !prof !136
  store i32 %26, ptr %8, align 8, !tbaa !114
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, ptr %8, align 8, !tbaa !114
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %34, !prof !137

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 13
  %32 = load i8, ptr %31, align 4, !tbaa !138
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %167

34:                                               ; preds = %30, %27
  %35 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 12
  %36 = load i32, ptr %35, align 8, !tbaa !139
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51, !prof !137

38:                                               ; preds = %34
  %39 = icmp eq i32 %28, 3
  %40 = icmp eq i32 %36, 1
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %43) #17
  br label %51

44:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %45 = icmp slt i32 %36, 3
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %47) #17
  br label %48

48:                                               ; preds = %44, %46
  %49 = load ptr, ptr @stderr, align 8, !tbaa !61
  call void (ptr, ptr, ...) @fnotice(ptr noundef %49, ptr noundef nonnull @.str.31)
  %50 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 4
  store i32 3, ptr %50, align 8, !tbaa !114
  call fastcc void @diagnostic_action_after_output(ptr noundef %0, ptr noundef nonnull %3)
  call void @abort() #18
  unreachable

51:                                               ; preds = %42, %34
  %52 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 3
  %53 = load i8, ptr %52, align 1, !tbaa !92
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55, !prof !133

55:                                               ; preds = %51
  %56 = load i32, ptr %8, align 8, !tbaa !114
  %57 = icmp eq i32 %56, 6
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 4, ptr %8, align 8, !tbaa !114
  br label %59

59:                                               ; preds = %58, %55, %51
  %60 = phi i8 [ 1, %58 ], [ 0, %55 ], [ 0, %51 ]
  %61 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !115
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64, !prof !140

64:                                               ; preds = %59
  %65 = call i32 @option_enabled(i32 noundef %62) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %167, label %67, !prof !141

67:                                               ; preds = %64
  %68 = load i32, ptr %61, align 4, !tbaa !115
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 4, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !76
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 %71, ptr %8, align 8, !tbaa !114
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i8 [ 0, %73 ], [ %60, %67 ]
  %76 = load i32, ptr %8, align 8, !tbaa !114
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %167, label %78

78:                                               ; preds = %74, %59
  %79 = phi i8 [ %60, %59 ], [ %75, %74 ]
  %80 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 2
  %81 = load i8, ptr %80, align 8, !tbaa !91
  %82 = icmp ne i8 %81, 0
  %83 = icmp ne i8 %79, 0
  %84 = and i1 %83, %82
  br i1 %84, label %85, label %88, !prof !119

85:                                               ; preds = %78
  %86 = load ptr, ptr %0, align 8, !tbaa !82
  %87 = load ptr, ptr @progname, align 8, !tbaa !61
  call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %86, ptr noundef nonnull @.str.22, ptr noundef %87) #17
  store i8 0, ptr %80, align 8, !tbaa !91
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32, ptr %35, align 8, !tbaa !139
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %35, align 8, !tbaa !139
  %91 = load i32, ptr %8, align 8, !tbaa !114
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %99, !prof !119

93:                                               ; preds = %88
  %94 = call zeroext i8 @plugins_active_p() #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr @stderr, align 8, !tbaa !61
  call void (ptr, ptr, ...) @fnotice(ptr noundef %97, ptr noundef nonnull @.str.23)
  %98 = load ptr, ptr @stderr, align 8, !tbaa !61
  call void @dump_active_plugins(ptr noundef %98) #17
  br label %99

99:                                               ; preds = %96, %93, %88
  %100 = load i32, ptr %8, align 8, !tbaa !114
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %128, !prof !119

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1, i64 4
  %104 = load i32, ptr %103, align 8, !tbaa !76
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1, i64 5
  %108 = load i32, ptr %107, align 4, !tbaa !76
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %106, %102
  %111 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %112 = load i8, ptr %111, align 1, !tbaa !142
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %115 = load i32, ptr %6, align 8, !tbaa !112
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %115) #17
  %116 = load ptr, ptr @stderr, align 8, !tbaa !61
  %117 = load ptr, ptr %5, align 8, !tbaa !104
  %118 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !120
  call void (ptr, ptr, ...) @fnotice(ptr noundef %116, ptr noundef nonnull @.str.24, ptr noundef %117, i32 noundef %119)
  call void @exit(i32 noundef 4) #18
  unreachable

120:                                              ; preds = %106, %110
  %121 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 9
  %122 = load ptr, ptr %121, align 8, !tbaa !93
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %1, align 8, !tbaa !111
  %126 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !110
  call void %122(ptr noundef %125, ptr noundef %127) #17
  br label %128

128:                                              ; preds = %120, %124, %99
  %129 = load i32, ptr %8, align 8, !tbaa !114
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 1, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !76
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %131, align 4, !tbaa !76
  %134 = load ptr, ptr %1, align 8, !tbaa !111
  %135 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 5
  %136 = load i8, ptr %135, align 4, !tbaa !143
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %154, label %138, !prof !117

138:                                              ; preds = %128
  %139 = load i32, ptr %61, align 4, !tbaa !115
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %138
  %142 = sext i32 %139 to i64
  %143 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !144
  %145 = call i64 (ptr, ...) @concat_length(ptr noundef %134, ptr noundef nonnull @.str.25, ptr noundef %144, ptr noundef nonnull @.str.26, ptr noundef null) #17
  %146 = add i64 %145, 1
  %147 = alloca i8, i64 %146, align 16
  store ptr %147, ptr @libiberty_concat_ptr, align 8, !tbaa !61
  %148 = load ptr, ptr %1, align 8, !tbaa !111
  %149 = load i32, ptr %61, align 4, !tbaa !115
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !144
  %153 = call ptr (ptr, ...) @concat_copy2(ptr noundef %148, ptr noundef nonnull @.str.25, ptr noundef %152, ptr noundef nonnull @.str.26, ptr noundef null) #17
  store ptr %153, ptr %1, align 8, !tbaa !111
  br label %154

154:                                              ; preds = %141, %138, %128
  %155 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  store ptr %6, ptr %155, align 8, !tbaa !146
  %156 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 3
  %157 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 4
  store ptr %156, ptr %157, align 8, !tbaa !147
  store ptr null, ptr %156, align 8, !tbaa !148
  %158 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_format(ptr noundef %158, ptr noundef nonnull %1) #17
  %159 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !94
  call void %160(ptr noundef nonnull %0, ptr noundef nonnull %1) #17, !prof !149
  %161 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_output_formatted_text(ptr noundef %161) #17
  %162 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 8
  %163 = load ptr, ptr %162, align 8, !tbaa !95
  call void %163(ptr noundef nonnull %0, ptr noundef nonnull %1) #17, !prof !150
  %164 = load ptr, ptr %0, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %164) #17
  call fastcc void @diagnostic_action_after_output(ptr noundef nonnull %0, ptr noundef nonnull %1)
  store ptr %134, ptr %1, align 8, !tbaa !111
  store ptr null, ptr %156, align 8, !tbaa !148
  %165 = load i32, ptr %35, align 8, !tbaa !139
  %166 = add nsw i32 %165, -1
  store i32 %166, ptr %35, align 8, !tbaa !139
  br label %167

167:                                              ; preds = %13, %74, %64, %30, %10, %154
  %168 = phi i8 [ 1, %154 ], [ 0, %10 ], [ 0, %30 ], [ 0, %64 ], [ 0, %74 ], [ 0, %13 ]
  ret i8 %168
}

declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

declare i32 @option_enabled(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @plugins_active_p() local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @fnotice(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #13 !prof !60 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

declare void @dump_active_plugins(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) local_unnamed_addr #14

declare i64 @concat_length(ptr noundef, ...) local_unnamed_addr #3

declare ptr @concat_copy2(ptr noundef, ...) local_unnamed_addr #3

declare void @pp_base_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_base_output_formatted_text(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @diagnostic_action_after_output(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !80 !PGOFuncName !151 {
  %3 = getelementptr inbounds %struct.diagnostic_info, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !114
  switch i32 %4, label %29 [
    i32 9, label %31
    i32 8, label %31
    i32 7, label %31
    i32 6, label %31
    i32 4, label %5
    i32 5, label %5
    i32 3, label %15
    i32 2, label %22
  ], !prof !152

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !142
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @abort() #18
  unreachable

10:                                               ; preds = %5
  %11 = load i32, ptr @flag_fatal_errors, align 4, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %14, ptr noundef nonnull @.str.28)
  tail call void @exit(i32 noundef 1) #18
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !142
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @abort() #18
  unreachable

20:                                               ; preds = %15
  %21 = load ptr, ptr @stderr, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %21, ptr noundef nonnull @.str.29)
  tail call void @exit(i32 noundef 4) #18
  unreachable

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !142
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @abort() #18
  unreachable

27:                                               ; preds = %22
  %28 = load ptr, ptr @stderr, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %28, ptr noundef nonnull @.str.30)
  tail call void @exit(i32 noundef 1) #18
  unreachable

29:                                               ; preds = %2
  %30 = tail call ptr @trim_filename(ptr noundef nonnull @trim_filename.this_file)
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.14, ptr noundef %30, i32 noundef 228)
  br label %31

31:                                               ; preds = %2, %2, %2, %10, %2, %29
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @trim_filename(ptr noundef readonly %0) local_unnamed_addr #15 !prof !60 {
  %2 = load i8, ptr %0, align 1, !tbaa !72
  %3 = icmp eq i8 %2, 46
  br i1 %3, label %4, label %17

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %14, %13 ], [ %0, %1 ]
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !72
  %8 = icmp eq i8 %7, 46
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !72
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %5, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !72
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %4, label %17, !llvm.loop !153

17:                                               ; preds = %9, %13, %4, %1
  %18 = phi ptr [ %0, %1 ], [ %5, %9 ], [ %14, %13 ], [ %5, %4 ]
  %19 = load i8, ptr %18, align 1, !tbaa !72
  %20 = icmp eq i8 %19, 100
  br i1 %20, label %21, label %33

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %25, %21 ], [ @trim_filename.this_file, %17 ]
  %23 = phi ptr [ %24, %21 ], [ %18, %17 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !72
  %27 = load i8, ptr %25, align 1, !tbaa !72
  %28 = icmp ne i8 %26, %27
  %29 = icmp eq i8 %26, 0
  %30 = or i1 %29, %28
  %31 = icmp eq i8 %27, 0
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %21, !llvm.loop !154

33:                                               ; preds = %21, %17
  %34 = phi ptr [ %18, %17 ], [ %24, %21 ]
  br label %35

35:                                               ; preds = %33, %38
  %36 = phi ptr [ %39, %38 ], [ %34, %33 ]
  %37 = icmp ugt ptr %36, %0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %36, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !72
  %41 = icmp eq i8 %40, 47
  br i1 %41, label %42, label %35, !llvm.loop !155

42:                                               ; preds = %38, %35
  ret ptr %36
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verbatim(ptr noundef %0, ...) local_unnamed_addr #9 !prof !60 {
  %2 = alloca %struct.text_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call ptr @__errno_location() #17
  %5 = load i32, ptr %4, align 4, !tbaa !76
  %6 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !157
  store ptr %0, ptr %2, align 8, !tbaa !158
  %8 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  call void @pp_base_format_verbatim(ptr noundef %10, ptr noundef nonnull %2) #17
  %11 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  call void @pp_base_flush(ptr noundef %12) #17
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

declare void @pp_base_format_verbatim(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @emit_diagnostic(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #9 !prof !60 {
  %5 = alloca %struct.diagnostic_info, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.va_start(ptr nonnull %6)
  %7 = icmp eq i32 %0, 11
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_permissive, align 4, !tbaa !76
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 4, i32 6
  %12 = call ptr @__errno_location() #17
  %13 = load i32, ptr %12, align 4, !tbaa !76
  %14 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !107
  %15 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 1
  store ptr %6, ptr %15, align 8, !tbaa !110
  store ptr %3, ptr %5, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 1
  store i32 %1, ptr %16, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 2
  store i32 0, ptr %17, align 4, !tbaa !113
  %18 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 4
  store i32 %11, ptr %18, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 5
  store i32 525, ptr %19, align 4, !tbaa !115
  br label %30

20:                                               ; preds = %4
  %21 = call ptr @__errno_location() #17
  %22 = load i32, ptr %21, align 4, !tbaa !76
  %23 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 2
  store i32 %22, ptr %23, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 1
  store ptr %6, ptr %24, align 8, !tbaa !110
  store ptr %3, ptr %5, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 1
  store i32 %1, ptr %25, align 8, !tbaa !112
  %26 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 2
  store i32 0, ptr %26, align 4, !tbaa !113
  %27 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 4
  store i32 %0, ptr %27, align 8, !tbaa !114
  %28 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 5
  store i32 0, ptr %28, align 4, !tbaa !115
  switch i32 %0, label %30 [
    i32 10, label %29
    i32 6, label %29
  ]

29:                                               ; preds = %20, %20
  store i32 %2, ptr %28, align 4, !tbaa !115
  br label %30

30:                                               ; preds = %20, %29, %8
  %31 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %32 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %31, ptr noundef nonnull %5), !range !159
  call void @llvm.va_end(ptr %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret i8 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local void @inform(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #9 !prof !60 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !110
  store ptr %1, ptr %3, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 4
  store i32 8, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !115
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %14 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %13, ptr noundef nonnull %3), !range !159
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @inform_n(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #9 !prof !60 {
  %5 = alloca %struct.diagnostic_info, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.va_start(ptr nonnull %6)
  %7 = sext i32 %1 to i64
  %8 = call ptr @fake_ngettext(ptr noundef %2, ptr noundef %3, i64 noundef %7) #17
  %9 = call ptr @__errno_location() #17
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 1
  store ptr %6, ptr %12, align 8, !tbaa !110
  store ptr %8, ptr %5, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 1
  store i32 %0, ptr %13, align 8, !tbaa !112
  %14 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !113
  %15 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 4
  store i32 8, ptr %15, align 8, !tbaa !114
  %16 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 5
  store i32 0, ptr %16, align 4, !tbaa !115
  %17 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %18 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %17, ptr noundef nonnull %5), !range !159
  call void @llvm.va_end(ptr %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret void
}

declare ptr @fake_ngettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @warning(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #11 !prof !160 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr @input_location, align 4, !tbaa !76
  %6 = call ptr @__errno_location() #17
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !110
  store ptr %1, ptr %3, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 1
  store i32 %5, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !113
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 4
  store i32 6, ptr %12, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 5
  store i32 %0, ptr %13, align 4, !tbaa !115
  %14 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %15 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %14, ptr noundef nonnull %3), !range !159
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @warning_at(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !prof !161 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call ptr @__errno_location() #17
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %struct.text_info, ptr %4, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %4, i64 0, i32 1
  store ptr %5, ptr %9, align 8, !tbaa !110
  store ptr %2, ptr %4, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 1
  store i32 %0, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !113
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 4
  store i32 6, ptr %12, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %13, align 4, !tbaa !115
  %14 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %15 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %14, ptr noundef nonnull %4), !range !159
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i8 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @pedwarn(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #9 !prof !60 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call ptr @__errno_location() #17
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %struct.text_info, ptr %4, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %4, i64 0, i32 1
  store ptr %5, ptr %9, align 8, !tbaa !110
  store ptr %2, ptr %4, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 1
  store i32 %0, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !113
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 4
  store i32 10, ptr %12, align 8, !tbaa !114
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %13, align 4, !tbaa !115
  %14 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %15 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %14, ptr noundef nonnull %4), !range !159
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i8 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @permerror(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #9 !prof !60 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr @flag_permissive, align 4, !tbaa !76
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 4, i32 6
  %8 = call ptr @__errno_location() #17
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %11, align 8, !tbaa !110
  store ptr %1, ptr %3, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 1
  store i32 %0, ptr %12, align 8, !tbaa !112
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 2
  store i32 0, ptr %13, align 4, !tbaa !113
  %14 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 4
  store i32 %7, ptr %14, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 5
  store i32 525, ptr %15, align 4, !tbaa !115
  %16 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %17 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %16, ptr noundef nonnull %3), !range !159
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret i8 %17
}

; Function Attrs: cold nounwind uwtable
define dso_local void @error(ptr noundef %0, ...) local_unnamed_addr #9 !prof !60 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !76
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !110
  store ptr %0, ptr %2, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 1
  store i32 %4, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 4
  store i32 4, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !115
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %14 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %13, ptr noundef nonnull %2), !range !159
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @error_n(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #9 !prof !60 {
  %5 = alloca %struct.diagnostic_info, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.va_start(ptr nonnull %6)
  %7 = sext i32 %1 to i64
  %8 = call ptr @fake_ngettext(ptr noundef %2, ptr noundef %3, i64 noundef %7) #17
  %9 = call ptr @__errno_location() #17
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.text_info, ptr %5, i64 0, i32 1
  store ptr %6, ptr %12, align 8, !tbaa !110
  store ptr %8, ptr %5, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 1
  store i32 %0, ptr %13, align 8, !tbaa !112
  %14 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !113
  %15 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 4
  store i32 4, ptr %15, align 8, !tbaa !114
  %16 = getelementptr inbounds %struct.diagnostic_info, ptr %5, i64 0, i32 5
  store i32 0, ptr %16, align 4, !tbaa !115
  %17 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %18 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %17, ptr noundef nonnull %5), !range !159
  call void @llvm.va_end(ptr %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @error_at(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #9 !prof !60 {
  %3 = alloca %struct.diagnostic_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !110
  store ptr %1, ptr %3, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 4
  store i32 4, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %3, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !115
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %14 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %13, ptr noundef nonnull %3), !range !159
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sorry(ptr noundef %0, ...) local_unnamed_addr #9 !prof !60 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !76
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !110
  store ptr %0, ptr %2, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 1
  store i32 %4, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 4
  store i32 5, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !115
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %14 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %13, ptr noundef nonnull %2), !range !159
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @fatal_error(ptr noundef %0, ...) local_unnamed_addr #9 !prof !60 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !76
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !110
  store ptr %0, ptr %2, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 1
  store i32 %4, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 4
  store i32 2, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !115
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %14 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %13, ptr noundef nonnull %2), !range !159
  call void @llvm.va_end(ptr %3)
  %15 = call ptr @trim_filename(ptr noundef nonnull @trim_filename.this_file)
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.14, ptr noundef %15, i32 noundef 724)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @internal_error(ptr noundef %0, ...) local_unnamed_addr #9 !prof !60 {
  %2 = alloca %struct.diagnostic_info, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr @input_location, align 4, !tbaa !76
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.text_info, ptr %2, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !110
  store ptr %0, ptr %2, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 1
  store i32 %4, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 4
  store i32 3, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !115
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !61
  %14 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %13, ptr noundef nonnull %2), !range !159
  call void @llvm.va_end(ptr %3)
  %15 = call ptr @trim_filename(ptr noundef nonnull @trim_filename.this_file)
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.14, ptr noundef %15, i32 noundef 742)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @build_message_string, ptr @vasprintf, i64 1}
!36 = !{ptr @diagnostic_initialize, ptr @xmalloc, i64 1}
!37 = !{ptr @diagnostic_initialize, ptr @pp_construct, i64 1}
!38 = !{ptr @default_diagnostic_starter, ptr @diagnostic_report_current_module, i64 1}
!39 = !{ptr @default_diagnostic_starter, ptr @expand_location, i64 1}
!40 = !{ptr @default_diagnostic_starter, ptr @diagnostic_build_prefix, i64 1}
!41 = !{ptr @default_diagnostic_starter, ptr @pp_base_set_prefix, i64 1}
!42 = !{ptr @default_diagnostic_finalizer, ptr @pp_base_destroy_prefix, i64 1}
!43 = !{ptr @diagnostic_set_info, ptr @__errno_location, i64 28}
!44 = !{ptr @diagnostic_build_prefix, ptr @expand_location, i64 1}
!45 = !{ptr @diagnostic_build_prefix, ptr @build_message_string, i64 1}
!46 = !{ptr @diagnostic_report_current_module, ptr @linemap_lookup, i64 1}
!47 = !{ptr @diagnostic_report_diagnostic, ptr @expand_location, i64 742}
!48 = !{ptr @diagnostic_report_diagnostic, ptr @option_enabled, i64 741}
!49 = !{ptr @diagnostic_report_diagnostic, ptr @pp_base_format, i64 1}
!50 = !{ptr @diagnostic_report_diagnostic, ptr @default_diagnostic_starter, i64 1}
!51 = !{ptr @diagnostic_report_diagnostic, ptr @pp_base_output_formatted_text, i64 1}
!52 = !{ptr @diagnostic_report_diagnostic, ptr @default_diagnostic_finalizer, i64 1}
!53 = !{ptr @diagnostic_report_diagnostic, ptr @pp_base_flush, i64 1}
!54 = !{ptr @diagnostic_report_diagnostic, ptr @diagnostic_action_after_output, i64 1}
!55 = !{ptr @warning, ptr @__errno_location, i64 59}
!56 = !{ptr @warning, ptr @diagnostic_report_diagnostic, i64 59}
!57 = !{ptr @warning_at, ptr @__errno_location, i64 655}
!58 = !{ptr @warning_at, ptr @diagnostic_report_diagnostic, i64 655}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !62, i64 8}
!66 = !{!"_IO_FILE", !67, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !67, i64 112, !67, i64 116, !68, i64 120, !69, i64 128, !63, i64 130, !63, i64 131, !62, i64 136, !68, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !68, i64 184, !67, i64 192, !63, i64 196}
!67 = !{!"int", !63, i64 0}
!68 = !{!"long", !63, i64 0}
!69 = !{!"short", !63, i64 0}
!70 = !{!66, !62, i64 16}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!63, !63, i64 0}
!73 = !{!66, !62, i64 40}
!74 = !{!66, !62, i64 48}
!75 = !{!66, !67, i64 0}
!76 = !{!67, !67, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!"function_entry_count", i64 1}
!81 = !{!"diagnostic.c;build_message_string"}
!82 = !{!83, !62, i64 0}
!83 = !{!"diagnostic_context", !62, i64 0, !63, i64 8, !63, i64 56, !63, i64 57, !63, i64 60, !63, i64 3540, !63, i64 3541, !62, i64 3544, !62, i64 3552, !62, i64 3560, !62, i64 3568, !62, i64 3576, !67, i64 3584, !63, i64 3588}
!84 = !{!85, !62, i64 0}
!85 = !{!"pretty_print_info", !62, i64 0, !62, i64 8, !67, i64 16, !67, i64 20, !67, i64 24, !86, i64 28, !62, i64 40, !63, i64 48, !63, i64 49, !63, i64 50}
!86 = !{!"", !67, i64 0, !67, i64 4}
!87 = !{!88, !62, i64 192}
!88 = !{!"", !89, i64 0, !89, i64 88, !62, i64 176, !62, i64 184, !62, i64 192, !67, i64 200, !63, i64 204}
!89 = !{!"obstack", !68, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !68, i64 40, !67, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !67, i64 80, !67, i64 80, !67, i64 80}
!90 = !{!85, !67, i64 28}
!91 = !{!83, !63, i64 56}
!92 = !{!83, !63, i64 57}
!93 = !{!83, !62, i64 3560}
!94 = !{!83, !62, i64 3544}
!95 = !{!83, !62, i64 3552}
!96 = !{!97, !62, i64 200}
!97 = !{!"lang_hooks", !62, i64 0, !68, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !62, i64 184, !62, i64 192, !62, i64 200, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !98, i64 240, !99, i64 248, !100, i64 256, !101, i64 272, !102, i64 432, !103, i64 560, !62, i64 584, !62, i64 592, !62, i64 600, !62, i64 608, !62, i64 616, !62, i64 624, !62, i64 632, !62, i64 640, !62, i64 648, !62, i64 656, !62, i64 664, !63, i64 672}
!98 = !{!"lang_hooks_for_tree_inlining", !62, i64 0}
!99 = !{!"lang_hooks_for_callgraph", !62, i64 0}
!100 = !{!"lang_hooks_for_tree_dump", !62, i64 0, !62, i64 8}
!101 = !{!"lang_hooks_for_decls", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152}
!102 = !{!"lang_hooks_for_types", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !63, i64 120}
!103 = !{!"lang_hooks_for_lto", !62, i64 0, !62, i64 8, !62, i64 16}
!104 = !{!105, !62, i64 0}
!105 = !{!"", !62, i64 0, !67, i64 8, !67, i64 12, !63, i64 16}
!106 = !{!"VP", i32 0, i64 1, i64 7833278147557110013, i64 1}
!107 = !{!108, !67, i64 16}
!108 = !{!"diagnostic_info", !109, i64 0, !67, i64 40, !67, i64 44, !62, i64 48, !67, i64 56, !67, i64 60}
!109 = !{!"", !62, i64 0, !62, i64 8, !67, i64 16, !62, i64 24, !62, i64 32}
!110 = !{!108, !62, i64 8}
!111 = !{!108, !62, i64 0}
!112 = !{!108, !67, i64 40}
!113 = !{!108, !67, i64 44}
!114 = !{!108, !67, i64 56}
!115 = !{!108, !67, i64 60}
!116 = !{!"function_entry_count", i64 28}
!117 = !{!"branch_weights", i32 1, i32 0}
!118 = !{!105, !67, i64 12}
!119 = !{!"branch_weights", i32 0, i32 1}
!120 = !{!105, !67, i64 8}
!121 = !{!85, !63, i64 49}
!122 = !{!83, !62, i64 3576}
!123 = !{!124, !67, i64 16}
!124 = !{!"line_map", !62, i64 0, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !63, i64 21, !67, i64 22}
!125 = !{!126, !62, i64 0}
!126 = !{!"line_maps", !62, i64 0, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !67, i64 24, !63, i64 28, !67, i64 32, !67, i64 36, !67, i64 40, !62, i64 48}
!127 = !{!124, !62, i64 0}
!128 = !{!124, !67, i64 12}
!129 = !{!124, !67, i64 8}
!130 = distinct !{!130, !78, !79}
!131 = !{!"function_entry_count", i64 742}
!132 = !{!"branch_weights", i32 0, i32 714, i32 28}
!133 = !{!"branch_weights", i32 742, i32 0}
!134 = !{!105, !63, i64 16}
!135 = !{!"branch_weights", i32 28, i32 714}
!136 = !{!"branch_weights", i32 28, i32 0}
!137 = !{!"branch_weights", i32 0, i32 742}
!138 = !{!83, !63, i64 3588}
!139 = !{!83, !67, i64 3584}
!140 = !{!"branch_weights", i32 1, i32 741}
!141 = !{!"branch_weights", i32 741, i32 0}
!142 = !{!83, !63, i64 3541}
!143 = !{!83, !63, i64 3540}
!144 = !{!145, !62, i64 0}
!145 = !{!"cl_option", !62, i64 0, !62, i64 8, !69, i64 16, !63, i64 18, !67, i64 20, !67, i64 24, !62, i64 32, !67, i64 40, !67, i64 44}
!146 = !{!108, !62, i64 24}
!147 = !{!108, !62, i64 32}
!148 = !{!108, !62, i64 48}
!149 = !{!"VP", i32 0, i64 1, i64 8516436835368634506, i64 1}
!150 = !{!"VP", i32 0, i64 1, i64 7253996377591873804, i64 1}
!151 = !{!"diagnostic.c;diagnostic_action_after_output"}
!152 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!153 = distinct !{!153, !78, !79}
!154 = distinct !{!154, !78, !79}
!155 = distinct !{!155, !78, !79}
!156 = !{!109, !67, i64 16}
!157 = !{!109, !62, i64 8}
!158 = !{!109, !62, i64 0}
!159 = !{i8 0, i8 2}
!160 = !{!"function_entry_count", i64 59}
!161 = !{!"function_entry_count", i64 655}
