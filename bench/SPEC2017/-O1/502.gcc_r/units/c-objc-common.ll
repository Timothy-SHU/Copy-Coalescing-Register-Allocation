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
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.c_pretty_print_info = type { %struct.pretty_print_info, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_hosted = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@global_dc = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [16 x i8] c"c-objc-common.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"({anonymous})\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !44 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !45
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !44 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !44 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !61

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @c_missing_noreturn_ok_p(ptr noundef %0) local_unnamed_addr #8 !prof !44 {
  %2 = load i32, ptr @flag_hosted, align 4, !tbaa !60
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @decl_assembler_name(ptr noundef %0) #13
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16, !tbaa !45
  %7 = icmp eq ptr %5, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @c_warn_unused_global_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !44 {
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
  %13 = load i32, ptr %12, align 8, !tbaa !56
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %13) #13
  %14 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !64
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %11, %6
  %19 = phi i8 [ 0, %6 ], [ %17, %11 ]
  ret i8 %19
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @c_objc_common_init() local_unnamed_addr #8 !prof !66 {
  tail call void @c_init_decl_processing() #13
  %1 = tail call zeroext i8 @c_common_init() #13
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %7, label %3, !prof !67

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %5, i64 0, i32 6
  store ptr @c_tree_printer, ptr %6, align 8, !tbaa !70
  br label %7

7:                                                ; preds = %0, %3
  %8 = phi i8 [ 1, %3 ], [ 0, %0 ]
  ret i8 %8
}

declare void @c_init_decl_processing() local_unnamed_addr #3

declare zeroext i8 @c_common_init() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @c_tree_printer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #8 !prof !66 !PGOFuncName !73 {
  %8 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %18, !prof !76

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
  store i32 0, ptr %25, align 8, !tbaa !77
  %26 = icmp ne i32 %3, 0
  %27 = or i8 %6, %4
  %28 = icmp ne i8 %27, 0
  %29 = or i1 %26, %28
  br i1 %29, label %125, label %30, !prof !67

30:                                               ; preds = %22
  %31 = icmp eq i8 %5, 0
  br i1 %31, label %39, label %32, !prof !67

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !78
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !67

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !56
  store i32 %38, ptr %34, align 4, !tbaa !60
  br label %39

39:                                               ; preds = %36, %32, %30
  %40 = load i8, ptr %2, align 1, !tbaa !56
  switch i8 %40, label %125 [
    i8 68, label %41
    i8 70, label %57
    i8 84, label %72
    i8 69, label %107
  ], !prof !79

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 16384
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %57, label %46, !prof !76

46:                                               ; preds = %41
  %47 = tail call ptr @decl_debug_expr_lookup(ptr noundef %24) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @decl_debug_expr_lookup(ptr noundef %24) #13
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  tail call void @pp_c_expression(ptr noundef %0, ptr noundef nonnull %50) #13
  br label %125

57:                                               ; preds = %41, %46, %49, %39
  %58 = phi ptr [ %24, %39 ], [ %50, %49 ], [ %24, %46 ], [ %24, %41 ]
  %59 = getelementptr inbounds %struct.tree_decl_minimal, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !56
  %61 = icmp eq ptr %60, null
  br i1 %61, label %124, label %62, !prof !67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %64 = load i8, ptr %63, align 2, !tbaa !80
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !82
  %67 = tail call ptr %66(ptr noundef %58, i32 noundef 2) #13
  br i1 %65, label %70, label %68, !prof !67

68:                                               ; preds = %62
  %69 = tail call ptr @identifier_to_locale(ptr noundef %67) #13
  br label %70

70:                                               ; preds = %62, %68
  %71 = phi ptr [ %69, %68 ], [ %67, %62 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %71) #13
  br label %125

72:                                               ; preds = %39
  %73 = load i64, ptr %24, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !60
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.1) #13
  br label %79

79:                                               ; preds = %72, %78
  %80 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !56
  %82 = icmp eq ptr %81, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %79
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 35
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_decl_minimal, ptr %81, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !56
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %93 = load i8, ptr %92, align 2, !tbaa !80
  %94 = icmp eq i8 %93, 0
  %95 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !82
  %96 = tail call ptr %95(ptr noundef nonnull %81, i32 noundef 2) #13
  br i1 %94, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call ptr @identifier_to_locale(ptr noundef %96) #13
  br label %99

99:                                               ; preds = %91, %97
  %100 = phi ptr [ %98, %97 ], [ %96, %91 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %100) #13
  br label %125

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !90
  tail call void %103(ptr noundef %0, ptr noundef nonnull %24) #13
  br label %125

104:                                              ; preds = %83, %79
  %105 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %106 = load ptr, ptr %105, align 8, !tbaa !90
  tail call void %106(ptr noundef %0, ptr noundef nonnull %24) #13
  br label %125

107:                                              ; preds = %39
  %108 = load i64, ptr %24, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %113 = load i8, ptr %112, align 2, !tbaa !80
  %114 = icmp eq i8 %113, 0
  %115 = getelementptr inbounds %struct.tree_identifier, ptr %24, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !56
  br i1 %114, label %119, label %117

117:                                              ; preds = %111
  %118 = tail call ptr @identifier_to_locale(ptr noundef %116) #13
  br label %119

119:                                              ; preds = %111, %117
  %120 = phi ptr [ %118, %117 ], [ %116, %111 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %120) #13
  br label %125

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  tail call void %123(ptr noundef %0, ptr noundef nonnull %24) #13
  br label %125

124:                                              ; preds = %57
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #13
  br label %125

125:                                              ; preds = %39, %119, %121, %99, %101, %22, %124, %104, %70, %56
  %126 = phi i8 [ 1, %104 ], [ 1, %70 ], [ 1, %124 ], [ 1, %56 ], [ 0, %22 ], [ 1, %101 ], [ 1, %99 ], [ 1, %121 ], [ 1, %119 ], [ 0, %39 ]
  ret i8 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @has_c_linkage(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !92 {
  ret i8 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_initialize_diagnostics(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !66 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = tail call ptr @xmalloc(i64 noundef 264) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  tail call void @pp_c_pretty_printer_init(ptr noundef %3) #13
  store ptr %3, ptr %0, align 8, !tbaa !68
  tail call void @free(ptr noundef %2)
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @pp_c_pretty_printer_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local i32 @c_types_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 !prof !44 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = tail call i32 @comptypes(ptr noundef %4, ptr noundef %6) #13
  ret i32 %7
}

declare i32 @comptypes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_vla_unspec_p(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #12 !prof !93 {
  %3 = tail call zeroext i8 @c_vla_type_p(ptr noundef %0) #13
  ret i8 %3
}

declare zeroext i8 @c_vla_type_p(ptr noundef) local_unnamed_addr #3

declare ptr @decl_debug_expr_lookup(ptr noundef) local_unnamed_addr #3

declare void @pp_c_expression(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @c_objc_common_init, ptr @c_init_decl_processing, i64 1}
!36 = !{ptr @c_objc_common_init, ptr @c_common_init, i64 1}
!37 = !{ptr @c_tree_printer, ptr @identifier_to_locale, i64 1}
!38 = !{ptr @c_tree_printer, ptr @pp_base_string, i64 1}
!39 = !{ptr @c_initialize_diagnostics, ptr @xmalloc, i64 1}
!40 = !{ptr @c_initialize_diagnostics, ptr @pp_c_pretty_printer_init, i64 1}
!41 = !{ptr @c_initialize_diagnostics, ptr @free, i64 1}
!42 = !{ptr @c_vla_unspec_p, ptr @c_vla_type_p, i64 24188}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !46, i64 8}
!50 = !{!"_IO_FILE", !51, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !51, i64 112, !51, i64 116, !52, i64 120, !53, i64 128, !47, i64 130, !47, i64 131, !46, i64 136, !52, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !52, i64 184, !51, i64 192, !47, i64 196}
!51 = !{!"int", !47, i64 0}
!52 = !{!"long", !47, i64 0}
!53 = !{!"short", !47, i64 0}
!54 = !{!50, !46, i64 16}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!47, !47, i64 0}
!57 = !{!50, !46, i64 40}
!58 = !{!50, !46, i64 48}
!59 = !{!50, !51, i64 0}
!60 = !{!51, !51, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65, !47, i64 16}
!65 = !{!"", !46, i64 0, !51, i64 8, !51, i64 12, !47, i64 16}
!66 = !{!"function_entry_count", i64 1}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = !{!69, !46, i64 0}
!69 = !{!"diagnostic_context", !46, i64 0, !47, i64 8, !47, i64 56, !47, i64 57, !47, i64 60, !47, i64 3540, !47, i64 3541, !46, i64 3544, !46, i64 3552, !46, i64 3560, !46, i64 3568, !46, i64 3576, !51, i64 3584, !47, i64 3588}
!70 = !{!71, !46, i64 40}
!71 = !{!"pretty_print_info", !46, i64 0, !46, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !72, i64 28, !46, i64 40, !47, i64 48, !47, i64 49, !47, i64 50}
!72 = !{!"", !51, i64 0, !51, i64 4}
!73 = !{!"c-objc-common.c;c_tree_printer"}
!74 = !{!75, !46, i64 8}
!75 = !{!"", !46, i64 0, !46, i64 8, !51, i64 16, !46, i64 24, !46, i64 32}
!76 = !{!"branch_weights", i32 1, i32 0}
!77 = !{!71, !51, i64 16}
!78 = !{!75, !46, i64 24}
!79 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0, i32 0}
!80 = !{!81, !47, i64 50}
!81 = !{!"c_pretty_print_info", !71, i64 0, !46, i64 56, !51, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256}
!82 = !{!83, !46, i64 176}
!83 = !{!"lang_hooks", !46, i64 0, !52, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !84, i64 240, !85, i64 248, !86, i64 256, !87, i64 272, !88, i64 432, !89, i64 560, !46, i64 584, !46, i64 592, !46, i64 600, !46, i64 608, !46, i64 616, !46, i64 624, !46, i64 632, !46, i64 640, !46, i64 648, !46, i64 656, !46, i64 664, !47, i64 672}
!84 = !{!"lang_hooks_for_tree_inlining", !46, i64 0}
!85 = !{!"lang_hooks_for_callgraph", !46, i64 0}
!86 = !{!"lang_hooks_for_tree_dump", !46, i64 0, !46, i64 8}
!87 = !{!"lang_hooks_for_decls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152}
!88 = !{!"lang_hooks_for_types", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !47, i64 120}
!89 = !{!"lang_hooks_for_lto", !46, i64 0, !46, i64 8, !46, i64 16}
!90 = !{!81, !46, i64 144}
!91 = !{!81, !46, i64 256}
!92 = !{!"function_entry_count", i64 5480}
!93 = !{!"function_entry_count", i64 24188}
