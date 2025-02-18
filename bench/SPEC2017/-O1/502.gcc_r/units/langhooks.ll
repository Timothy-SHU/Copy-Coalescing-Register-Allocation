; ModuleID = 'langhooks.c'
source_filename = "langhooks.c"
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_excess_precision_cmdline = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"langhooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"At top level:\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"In member function %qs\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"In function %qs\00", align 1
@flag_show_column = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"    inlined from %qs at %s:%d:%d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    inlined from %qs at %s:%d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"    inlined from %qs\00", align 1
@saved_section = internal unnamed_addr global ptr null, align 8
@in_section = external local_unnamed_addr global ptr, align 8
@text_section = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing() local_unnamed_addr #9 !prof !63 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_t(ptr nocapture noundef readnone %0) local_unnamed_addr #10 !prof !64 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @lhd_pass_through_t(ptr noundef readnone returned %0) local_unnamed_addr #9 !prof !43 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_i(i32 noundef %0) local_unnamed_addr #9 !prof !43 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_do_nothing_iii_return_null_tree(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_do_nothing_f(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !43 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_tree_v() local_unnamed_addr #9 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_return_null_const_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !43 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @lhd_post_options(ptr nocapture noundef readnone %0) local_unnamed_addr #11 !prof !43 {
  store i32 1, ptr @flag_excess_precision_cmdline, align 4, !tbaa !59
  ret i8 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_print_tree_nothing(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !prof !43 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @lhd_warn_unused_global_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !43 {
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
  br i1 %10, label %14, label %21

11:                                               ; preds = %1
  %12 = and i64 %3, 1114111
  %13 = icmp eq i64 %12, 1048608
  br i1 %13, label %21, label %14

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !55
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %16) #17
  %17 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %18 = load i8, ptr %17, align 8, !tbaa !65
  %19 = icmp eq i8 %18, 0
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %6, %14, %11
  %22 = phi i8 [ 0, %11 ], [ %20, %14 ], [ 0, %6 ]
  ret i8 %22
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @lhd_set_decl_assembler_name(ptr noundef %0) local_unnamed_addr #13 !prof !67 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %14 [
    i16 29, label %15
    i16 32, label %4
  ], !prof !68

4:                                                ; preds = %1
  %5 = and i64 %2, 67108864
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %15, !prof !69

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 33554432
  %11 = and i64 %2, 134217728
  %12 = or disjoint i64 %10, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15, !prof !70

14:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %1, %4, %7, %14
  %16 = load i64, ptr %0, align 8
  %17 = and i64 %16, 134217728
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23, !prof !71

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28, !prof !72

23:                                               ; preds = %19, %15
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 50), align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = tail call ptr %24(ptr noundef nonnull %0, ptr noundef %26) #17, !prof !85
  br label %41

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.tree_identifier, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32)
  %34 = add i64 %33, 32
  %35 = alloca i8, i64 %34, align 16
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !55
  %38 = zext i32 %37 to i64
  %39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %32, i64 noundef %38)
  %40 = call ptr @get_identifier(ptr noundef nonnull %35) #17
  br label %41

41:                                               ; preds = %28, %23
  %42 = phi ptr [ %27, %23 ], [ %40, %28 ]
  %43 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !55
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lhd_type_promotes_to(ptr noundef readnone returned %0) local_unnamed_addr #12 !prof !43 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @.str.1) #17
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_register_builtin_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 !prof !43 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lhd_incomplete_type_error(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !43 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lhd_get_alias_set(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !43 {
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lhd_decl_printable_name(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 !prof !86 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !87

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !87

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.tree_identifier, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lhd_dwarf_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !43 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !59
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 240, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !88
  %11 = tail call ptr %10(ptr noundef nonnull %0, i32 noundef %1) #17
  ret ptr %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_types_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !43 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lhd_tree_dump_dump_tree(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 !prof !43 {
  ret i8 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_tree_dump_type_quals(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !43 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 20
  %5 = and i32 %4, 1
  %6 = lshr i32 %3, 18
  %7 = and i32 %6, 2
  %8 = or disjoint i32 %5, %7
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 11
  %12 = and i32 %11, 4
  %13 = or disjoint i32 %8, %12
  %14 = lshr i64 %2, 48
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65280
  %17 = or disjoint i32 %13, %16
  ret i32 %17
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lhd_gimplify_expr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #9 !prof !43 {
  ret i32 -1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @lhd_tree_size(i32 noundef %0) local_unnamed_addr #12 !prof !43 {
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #17
  ret i64 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lhd_decl_ok_for_sibcall(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !96 {
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @write_global_declarations() local_unnamed_addr #12 !prof !43 {
  tail call void @cgraph_finalize_compilation_unit() #17
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 2), align 8, !tbaa !97
  %2 = tail call ptr %1() #17
  %3 = tail call i32 @list_length(ptr noundef %2) #17
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @xmalloc(i64 noundef %5) #17
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = zext nneg i32 %3 to i64
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr ptr, ptr %6, i64 %9
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ 0, %8 ], [ %17, %12 ]
  %14 = phi ptr [ %2, %8 ], [ %19, %12 ]
  %15 = xor i64 %13, -1
  %16 = getelementptr ptr, ptr %11, i64 %15
  store ptr %14, ptr %16, align 8, !tbaa !44
  %17 = add nuw nsw i64 %13, 1
  %18 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq i64 %17, %10
  br i1 %20, label %21, label %12, !llvm.loop !98

21:                                               ; preds = %12, %0
  %22 = tail call zeroext i8 @wrapup_global_declarations(ptr noundef %6, i32 noundef %3) #17
  tail call void @check_global_declarations(ptr noundef %6, i32 noundef %3) #17
  tail call void @emit_debug_global_declarations(ptr noundef %6, i32 noundef %3) #17
  tail call void @free(ptr noundef %6)
  ret void
}

declare void @cgraph_finalize_compilation_unit() local_unnamed_addr #3

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @wrapup_global_declarations(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @check_global_declarations(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_debug_global_declarations(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_initialize_diagnostics(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !43 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lhd_print_error_function(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !63 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.diagnostic_info, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @current_function_decl, align 8
  %11 = select i1 %9, ptr %10, ptr %8, !prof !104
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %155, label %13, !prof !104

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %9
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @file_name_as_prefix(ptr noundef nonnull %1) #17
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi ptr [ %20, %19 ], [ null, %13 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !105
  tail call void @pp_base_set_prefix(ptr noundef %23, ptr noundef %22) #17
  %24 = load ptr, ptr @current_function_decl, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %27, ptr noundef nonnull @.str.3) #17
  br label %143

28:                                               ; preds = %21
  br i1 %9, label %46, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  br label %32

32:                                               ; preds = %36, %29
  %33 = phi ptr [ %31, %29 ], [ %38, %36 ]
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i16
  switch i16 %35, label %45 [
    i16 4, label %36
    i16 29, label %46
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_block, ptr %33, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %33
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %32, !llvm.loop !109

42:                                               ; preds = %36
  %43 = and i64 %34, 65535
  %44 = icmp eq i64 %43, 29
  br i1 %44, label %46, label %45

45:                                               ; preds = %32, %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #17
  br label %46

46:                                               ; preds = %32, %28, %45, %42
  %47 = phi ptr [ %33, %42 ], [ %33, %45 ], [ %24, %28 ], [ %33, %32 ]
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 21
  %53 = load ptr, ptr %0, align 8, !tbaa !105
  %54 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !88
  %55 = tail call ptr %54(ptr noundef nonnull %47, i32 noundef 2) #17
  %56 = tail call ptr @identifier_to_locale(ptr noundef %55) #17
  %57 = select i1 %52, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %53, ptr noundef nonnull %57, ptr noundef %56) #17
  %58 = icmp eq ptr %8, null
  br i1 %58, label %141, label %59

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  %61 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 2
  %62 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  br label %63

63:                                               ; preds = %59, %139
  %64 = phi ptr [ %8, %59 ], [ %112, %139 ]
  %65 = getelementptr inbounds %struct.tree_block, ptr %64, i64 0, i32 2
  br label %66

66:                                               ; preds = %90, %63
  %67 = phi ptr [ %64, %63 ], [ %69, %90 ]
  %68 = getelementptr inbounds %struct.tree_block, ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !55
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_block, ptr %69, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = icmp eq ptr %77, null
  br i1 %78, label %92, label %79

79:                                               ; preds = %75, %84
  %80 = phi ptr [ %86, %84 ], [ %77, %75 ]
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.tree_block, ptr %80, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !55
  %87 = icmp eq ptr %86, null
  %88 = icmp eq ptr %86, %80
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %79, !llvm.loop !110

90:                                               ; preds = %84, %79
  %91 = trunc i64 %81 to i16
  switch i16 %91, label %92 [
    i16 29, label %93
    i16 4, label %66
  ], !llvm.loop !111

92:                                               ; preds = %90, %66, %71, %75
  br label %93

93:                                               ; preds = %90, %92
  %94 = phi ptr [ null, %92 ], [ %80, %90 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = icmp eq ptr %69, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %96, %103
  %99 = phi ptr [ %105, %103 ], [ %69, %96 ]
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.tree_block, ptr %99, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !55
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %98, !llvm.loop !112

107:                                              ; preds = %98
  %108 = icmp eq i64 %101, 29
  %109 = select i1 %108, ptr %99, ptr %94
  br label %110

110:                                              ; preds = %103, %96, %107, %93
  %111 = phi ptr [ %94, %93 ], [ %109, %107 ], [ %94, %96 ], [ %94, %103 ]
  %112 = phi ptr [ %69, %93 ], [ null, %107 ], [ null, %96 ], [ null, %103 ]
  %113 = icmp eq ptr %111, null
  br i1 %113, label %139, label %114

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %115 = load i32, ptr %65, align 4, !tbaa !59
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %115) #17
  %116 = load ptr, ptr %0, align 8, !tbaa !105
  call void @pp_base_character(ptr noundef %116, i32 noundef 44) #17
  %117 = load ptr, ptr %0, align 8, !tbaa !105
  call void @pp_base_newline(ptr noundef %117) #17
  %118 = load ptr, ptr %4, align 8, !tbaa !113
  %119 = icmp eq ptr %118, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr @flag_show_column, align 4, !tbaa !59
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %0, align 8, !tbaa !105
  %124 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !88
  %125 = call ptr %124(ptr noundef nonnull %111, i32 noundef 2) #17
  %126 = call ptr @identifier_to_locale(ptr noundef %125) #17
  %127 = load ptr, ptr %4, align 8, !tbaa !113
  br i1 %122, label %131, label %128

128:                                              ; preds = %120
  %129 = load i32, ptr %60, align 8, !tbaa !114
  %130 = load i32, ptr %61, align 4, !tbaa !115
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %123, ptr noundef nonnull @.str.6, ptr noundef %126, ptr noundef %127, i32 noundef %129, i32 noundef %130) #17
  br label %138

131:                                              ; preds = %120
  %132 = load i32, ptr %62, align 8, !tbaa !114
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %123, ptr noundef nonnull @.str.7, ptr noundef %126, ptr noundef %127, i32 noundef %132) #17
  br label %138

133:                                              ; preds = %114
  %134 = load ptr, ptr %0, align 8, !tbaa !105
  %135 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !88
  %136 = call ptr %135(ptr noundef nonnull %111, i32 noundef 2) #17
  %137 = call ptr @identifier_to_locale(ptr noundef %136) #17
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %134, ptr noundef nonnull @.str.8, ptr noundef %137) #17
  br label %138

138:                                              ; preds = %128, %131, %133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %139

139:                                              ; preds = %138, %110
  %140 = icmp eq ptr %112, null
  br i1 %140, label %141, label %63, !llvm.loop !116

141:                                              ; preds = %139, %46
  %142 = load ptr, ptr %0, align 8, !tbaa !105
  call void @pp_base_character(ptr noundef %142, i32 noundef 58) #17
  br label %143

143:                                              ; preds = %141, %26
  %144 = icmp eq ptr %2, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr %7, align 8, !tbaa !101
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145, %143
  %149 = load ptr, ptr @current_function_decl, align 8, !tbaa !44
  br label %150

150:                                              ; preds = %145, %148
  %151 = phi ptr [ %149, %148 ], [ %146, %145 ]
  store ptr %151, ptr %5, align 8, !tbaa !99
  %152 = load ptr, ptr %0, align 8, !tbaa !105
  call void @pp_base_flush(ptr noundef %152) #17
  %153 = load ptr, ptr %0, align 8, !tbaa !105
  %154 = getelementptr inbounds %struct.pretty_print_info, ptr %153, i64 0, i32 1
  store ptr %16, ptr %154, align 8, !tbaa !106
  call void @free(ptr noundef %22)
  br label %155

155:                                              ; preds = %150, %3
  ret void
}

declare ptr @file_name_as_prefix(ptr noundef) local_unnamed_addr #3

declare void @pp_base_set_prefix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @lhd_callgraph_analyze_expr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #10 !prof !117 {
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lhd_make_node(i32 noundef %0) local_unnamed_addr #12 !prof !43 {
  %2 = tail call ptr @make_node_stat(i32 noundef %0) #17
  ret ptr %2
}

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @lhd_to_target_charset(i64 noundef returned %0) local_unnamed_addr #9 !prof !43 {
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @lhd_expr_to_decl(ptr noundef readnone returned %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #9 !prof !43 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lhd_omp_predetermined_sharing(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !43 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lhd_omp_assignment(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !43 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %5, ptr noundef %1, ptr noundef %2) #17
  ret ptr %6
}

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @lhd_omp_firstprivatize_type_sizes(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 !prof !43 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @add_builtin_function(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !prof !118 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 41), align 8, !tbaa !119
  %8 = tail call fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %7)
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #13 !prof !118 !PGOFuncName !120 {
  %8 = alloca ptr, align 8
  %9 = tail call ptr @get_identifier(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %10 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %9, ptr noundef %1) #17
  store ptr %10, ptr %8, align 8, !tbaa !44
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 134217728
  store i64 %12, ptr %10, align 8
  %13 = load ptr, ptr %8, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %15, 33554432
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.tree_function_decl, ptr %13, i64 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %3, 11
  %20 = and i32 %19, 6144
  %21 = and i32 %18, -8192
  %22 = and i32 %2, 2047
  %23 = or disjoint i32 %20, %22
  %24 = or disjoint i32 %23, %21
  store i32 %24, ptr %17, align 8
  %25 = icmp ult i32 %2, 2048
  br i1 %25, label %27, label %26, !prof !121

26:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #17
  br label %27

27:                                               ; preds = %7, %26
  %28 = icmp eq ptr %4, null
  br i1 %28, label %33, label %29, !prof !122

29:                                               ; preds = %27
  %30 = tail call ptr @get_identifier(ptr noundef nonnull %4) #17
  %31 = load ptr, ptr %8, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %31, i64 0, i32 1
  store ptr %30, ptr %32, align 8, !tbaa !55
  br label %33

33:                                               ; preds = %29, %27
  %34 = icmp eq ptr %5, null
  br i1 %34, label %37, label %35, !prof !123

35:                                               ; preds = %33
  %36 = call ptr @decl_attributes(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 16) #17
  br label %39

37:                                               ; preds = %33
  %38 = call ptr @decl_attributes(ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #17
  br label %39

39:                                               ; preds = %37, %35
  %40 = load ptr, ptr %8, align 8, !tbaa !44
  %41 = call ptr %6(ptr noundef %40) #17, !prof !124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  ret ptr %41
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @add_builtin_function_ext_scope(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #12 !prof !43 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 42), align 8, !tbaa !125
  %8 = tail call fastcc ptr @add_builtin_function_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %7)
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lhd_builtin_function(ptr noundef returned %0) local_unnamed_addr #12 !prof !43 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 1), align 8, !tbaa !126
  %3 = tail call ptr %2(ptr noundef %0) #17
  ret ptr %0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lhd_begin_section(ptr noundef %0) local_unnamed_addr #12 !prof !43 {
  %2 = load ptr, ptr @saved_section, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 611, ptr noundef nonnull @.str.1) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @in_section, align 8, !tbaa !44
  store ptr %6, ptr @saved_section, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load ptr, ptr @text_section, align 8, !tbaa !44
  store ptr %9, ptr @saved_section, align 8, !tbaa !44
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call ptr @get_section(ptr noundef %0, i32 noundef 1024, ptr noundef null) #17
  tail call void @switch_to_section(ptr noundef %11) #17
  ret void
}

declare ptr @get_section(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @switch_to_section(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lhd_append_data(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #12 !prof !43 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = trunc i64 %1 to i32
  tail call void @assemble_string(ptr noundef nonnull %0, i32 noundef %6) #17
  br label %7

7:                                                ; preds = %5, %3
  tail call void @free(ptr noundef %2)
  ret void
}

declare void @assemble_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lhd_end_section() local_unnamed_addr #12 !prof !43 {
  %1 = load ptr, ptr @saved_section, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @switch_to_section(ptr noundef nonnull %1) #17
  store ptr null, ptr @saved_section, align 8, !tbaa !44
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @lhd_set_decl_assembler_name, ptr @strlen, i64 38}
!36 = !{ptr @lhd_set_decl_assembler_name, ptr @sprintf, i64 38}
!37 = !{ptr @lhd_set_decl_assembler_name, ptr @get_identifier, i64 38}
!38 = !{ptr @add_builtin_function, ptr @add_builtin_function_common, i64 1174}
!39 = !{ptr @add_builtin_function_common, ptr @get_identifier, i64 1703}
!40 = !{ptr @add_builtin_function_common, ptr @build_decl_stat, i64 1174}
!41 = !{ptr @add_builtin_function_common, ptr @decl_attributes, i64 1174}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 1}
!64 = !{!"function_entry_count", i64 191}
!65 = !{!66, !46, i64 16}
!66 = !{!"", !45, i64 0, !50, i64 8, !50, i64 12, !46, i64 16}
!67 = !{!"function_entry_count", i64 137}
!68 = !{!"branch_weights", i32 0, i32 91, i32 46}
!69 = !{!"branch_weights", i32 7, i32 39}
!70 = !{!"branch_weights", i32 0, i32 7}
!71 = !{!"branch_weights", i32 40, i32 97}
!72 = !{!"branch_weights", i32 2, i32 38}
!73 = !{!74, !45, i64 1120}
!74 = !{!"gcc_target", !75, i64 0, !77, i64 368, !78, i64 664, !50, i64 744, !45, i64 752, !45, i64 760, !45, i64 768, !45, i64 776, !45, i64 784, !45, i64 792, !45, i64 800, !45, i64 808, !45, i64 816, !45, i64 824, !45, i64 832, !45, i64 840, !45, i64 848, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !45, i64 888, !45, i64 896, !45, i64 904, !45, i64 912, !45, i64 920, !45, i64 928, !45, i64 936, !45, i64 944, !45, i64 952, !45, i64 960, !45, i64 968, !45, i64 976, !45, i64 984, !45, i64 992, !45, i64 1000, !45, i64 1008, !45, i64 1016, !45, i64 1024, !45, i64 1032, !45, i64 1040, !45, i64 1048, !45, i64 1056, !51, i64 1064, !51, i64 1072, !45, i64 1080, !45, i64 1088, !45, i64 1096, !45, i64 1104, !45, i64 1112, !45, i64 1120, !45, i64 1128, !45, i64 1136, !45, i64 1144, !45, i64 1152, !45, i64 1160, !45, i64 1168, !79, i64 1176, !45, i64 1232, !45, i64 1240, !45, i64 1248, !45, i64 1256, !45, i64 1264, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !45, i64 1304, !45, i64 1312, !45, i64 1320, !45, i64 1328, !45, i64 1336, !45, i64 1344, !45, i64 1352, !45, i64 1360, !45, i64 1368, !45, i64 1376, !45, i64 1384, !45, i64 1392, !45, i64 1400, !45, i64 1408, !45, i64 1416, !45, i64 1424, !45, i64 1432, !45, i64 1440, !45, i64 1448, !45, i64 1456, !51, i64 1464, !80, i64 1472, !45, i64 1664, !45, i64 1672, !45, i64 1680, !45, i64 1688, !45, i64 1696, !45, i64 1704, !45, i64 1712, !45, i64 1720, !45, i64 1728, !45, i64 1736, !45, i64 1744, !45, i64 1752, !45, i64 1760, !45, i64 1768, !45, i64 1776, !81, i64 1784, !82, i64 1792, !83, i64 1896, !84, i64 1968, !45, i64 2016, !46, i64 2024, !46, i64 2025, !46, i64 2026, !46, i64 2027, !46, i64 2028, !46, i64 2029, !46, i64 2030, !46, i64 2031, !46, i64 2032, !46, i64 2033, !46, i64 2034, !46, i64 2035}
!75 = !{!"asm_out", !45, i64 0, !45, i64 8, !45, i64 16, !76, i64 24, !76, i64 56, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !45, i64 304, !45, i64 312, !45, i64 320, !45, i64 328, !45, i64 336, !45, i64 344, !45, i64 352, !45, i64 360}
!76 = !{!"asm_int_op", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!77 = !{!"sched", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288}
!78 = !{!"vectorize", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72}
!79 = !{!"addr_space", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48}
!80 = !{!"calls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184}
!81 = !{!"c", !45, i64 0}
!82 = !{!"cxx", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96}
!83 = !{!"emutls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !46, i64 64, !46, i64 65}
!84 = !{!"target_option_hooks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40}
!85 = !{!"VP", i32 0, i64 99, i64 1455936395857602502, i64 99}
!86 = !{!"function_entry_count", i64 45}
!87 = !{!"branch_weights", i32 0, i32 45}
!88 = !{!89, !45, i64 176}
!89 = !{!"lang_hooks", !45, i64 0, !51, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !90, i64 240, !91, i64 248, !92, i64 256, !93, i64 272, !94, i64 432, !95, i64 560, !45, i64 584, !45, i64 592, !45, i64 600, !45, i64 608, !45, i64 616, !45, i64 624, !45, i64 632, !45, i64 640, !45, i64 648, !45, i64 656, !45, i64 664, !46, i64 672}
!90 = !{!"lang_hooks_for_tree_inlining", !45, i64 0}
!91 = !{!"lang_hooks_for_callgraph", !45, i64 0}
!92 = !{!"lang_hooks_for_tree_dump", !45, i64 0, !45, i64 8}
!93 = !{!"lang_hooks_for_decls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152}
!94 = !{!"lang_hooks_for_types", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !46, i64 120}
!95 = !{!"lang_hooks_for_lto", !45, i64 0, !45, i64 8, !45, i64 16}
!96 = !{!"function_entry_count", i64 19}
!97 = !{!89, !45, i64 288}
!98 = distinct !{!98, !61, !62}
!99 = !{!100, !45, i64 3568}
!100 = !{!"diagnostic_context", !45, i64 0, !46, i64 8, !46, i64 56, !46, i64 57, !46, i64 60, !46, i64 3540, !46, i64 3541, !45, i64 3544, !45, i64 3552, !45, i64 3560, !45, i64 3568, !45, i64 3576, !50, i64 3584, !46, i64 3588}
!101 = !{!102, !45, i64 48}
!102 = !{!"diagnostic_info", !103, i64 0, !50, i64 40, !50, i64 44, !45, i64 48, !50, i64 56, !50, i64 60}
!103 = !{!"", !45, i64 0, !45, i64 8, !50, i64 16, !45, i64 24, !45, i64 32}
!104 = !{!"branch_weights", i32 1, i32 0}
!105 = !{!100, !45, i64 0}
!106 = !{!107, !45, i64 8}
!107 = !{!"pretty_print_info", !45, i64 0, !45, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !108, i64 28, !45, i64 40, !46, i64 48, !46, i64 49, !46, i64 50}
!108 = !{!"", !50, i64 0, !50, i64 4}
!109 = distinct !{!109, !61, !62}
!110 = distinct !{!110, !61, !62}
!111 = distinct !{!111, !61, !62}
!112 = distinct !{!112, !61, !62}
!113 = !{!66, !45, i64 0}
!114 = !{!66, !50, i64 8}
!115 = !{!66, !50, i64 12}
!116 = distinct !{!116, !61, !62}
!117 = !{!"function_entry_count", i64 163}
!118 = !{!"function_entry_count", i64 1174}
!119 = !{!89, !45, i64 624}
!120 = !{!"langhooks.c;add_builtin_function_common"}
!121 = !{!"branch_weights", i32 1174, i32 0}
!122 = !{!"branch_weights", i32 645, i32 529}
!123 = !{!"branch_weights", i32 56, i32 1118}
!124 = !{!"VP", i32 0, i64 1174, i64 3665643422272637405, i64 1174}
!125 = !{!89, !45, i64 632}
!126 = !{!89, !45, i64 280}
