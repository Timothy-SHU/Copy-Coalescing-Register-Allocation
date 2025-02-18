; ModuleID = 'lto-symtab.c'
source_filename = "lto-symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.lto_symtab_entry_def = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str = private unnamed_addr constant [13 x i8] c"lto-symtab.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lto_symtab_identifiers = internal global ptr null, align 8
@gt_ggc_rc_gt_lto_symtab_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @lto_symtab_identifiers, i64 1, i64 8, ptr @gt_ggc_mx_lto_symtab_entry_def, ptr @gt_pch_nx_lto_symtab_entry_def, ptr @lto_symtab_entry_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_lto_symtab_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @lto_symtab_identifiers, i64 1, i64 8, ptr @gt_ggc_m_P20lto_symtab_entry_def4htab, ptr @gt_pch_n_P20lto_symtab_entry_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@lto_global_var_decls = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"variable %qD redeclared as function\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"function %qD redeclared as variable\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"previously declared here\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%qD has already been defined\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"previously defined here\00", align 1
@flag_no_common = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"type of %qD does not match original declaration\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"alignment of %qD is bigger than original declaration\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_symtab_register_decl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 134217728
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = trunc i64 %6 to i16
  switch i16 %10, label %20 [
    i16 32, label %11
    i16 29, label %11
  ]

11:                                               ; preds = %9, %9
  %12 = and i64 %6, 65535
  %13 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %12, i64 13
  %14 = load i8, ptr %13, align 1, !tbaa !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %9, %16, %5, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.1) #12
  br label %21

21:                                               ; preds = %16, %20
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  %34 = and i64 %22, 68157440
  %35 = icmp eq i64 %34, 68157440
  %36 = or i1 %35, %33
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %37, %29, %25, %21
  %39 = load i64, ptr %0, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 29
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 2048
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #12
  br label %48

48:                                               ; preds = %47, %42, %38
  %49 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #12
  %50 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #12
  store ptr %50, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %49, i64 0, i32 1
  store ptr %0, ptr %51, align 8, !tbaa !56
  %52 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %49, i64 0, i32 4
  store i32 %1, ptr %52, align 8, !tbaa !57
  %53 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %49, i64 0, i32 3
  store ptr %2, ptr %53, align 8, !tbaa !58
  %54 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = tail call ptr @htab_create_alloc(i64 noundef 1021, ptr noundef nonnull @lto_symtab_entry_hash, ptr noundef nonnull @lto_symtab_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #12
  store ptr %57, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  br label %58

58:                                               ; preds = %48, %56
  %59 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  %60 = tail call ptr @htab_find_slot(ptr noundef %59, ptr noundef nonnull %49, i32 noundef 1) #12
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %49, i64 0, i32 5
  store ptr %61, ptr %62, align 8, !tbaa !59
  store ptr %49, ptr %60, align 8, !tbaa !35
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lto_symtab_get_resolution(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 13
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #12
  br label %12

12:                                               ; preds = %7, %11
  %13 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #12
  %14 = tail call fastcc ptr @lto_symtab_get(ptr noundef %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %23, %21 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %16, !llvm.loop !60

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !57
  br label %28

28:                                               ; preds = %21, %12, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %12 ], [ 0, %21 ]
  ret i32 %29
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lto_symtab_get(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.lto_symtab_entry_def, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  %3 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @htab_create_alloc(i64 noundef 1021, ptr noundef nonnull @lto_symtab_entry_hash, ptr noundef nonnull @lto_symtab_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #12
  store ptr %6, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %1, %5
  store ptr %0, ptr %2, align 8, !tbaa !54
  %8 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  %9 = call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  ret ptr %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_symtab_merge_decls() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 1021, ptr noundef nonnull @lto_symtab_entry_hash, ptr noundef nonnull @lto_symtab_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #12
  store ptr %4, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %0, %3
  %6 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  tail call void @htab_traverse(ptr noundef %6, ptr noundef nonnull @lto_symtab_merge_decls_1, ptr noundef null) #12
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @lto_symtab_merge_decls_1(ptr nocapture noundef %0, ptr nocapture readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %15
  %6 = phi ptr [ %17, %15 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 29
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = tail call ptr @cgraph_get_node(ptr noundef nonnull %8) #12
  %14 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %6, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !61
  br label %15

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %6, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !62

19:                                               ; preds = %15, %2
  %20 = load ptr, ptr %0, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %149

24:                                               ; preds = %19
  %25 = icmp eq ptr %20, null
  br i1 %25, label %102, label %26

26:                                               ; preds = %24, %97
  %27 = phi ptr [ %98, %97 ], [ null, %24 ]
  %28 = phi ptr [ %100, %97 ], [ %20, %24 ]
  %29 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 33554432
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %26
  %36 = load i64, ptr %30, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %53 [
    i16 29, label %38
    i16 32, label %48
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %40, i64 0, i32 27
  %44 = load i16, ptr %43, align 4
  %45 = trunc i16 %44 to i8
  %46 = lshr i8 %45, 5
  %47 = and i8 %46, 1
  br label %54

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = icmp ne ptr %50, null
  %52 = zext i1 %51 to i8
  br label %54

53:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #12
  br label %54

54:                                               ; preds = %53, %48, %42, %38, %26
  %55 = phi i8 [ %52, %48 ], [ 0, %53 ], [ 0, %26 ], [ 0, %38 ], [ %47, %42 ]
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %28, i64 0, i32 4
  br i1 %56, label %58, label %59

58:                                               ; preds = %54
  store i32 6, ptr %57, align 8, !tbaa !57
  br label %97

59:                                               ; preds = %54
  store i32 5, ptr %57, align 8, !tbaa !57
  %60 = load ptr, ptr %29, align 8, !tbaa !56
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 33554432
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %60, i64 0, i32 4
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 640
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i64, ptr %60, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 32
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = and i32 %67, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, ptr @flag_no_common, align 4, !tbaa !50
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  %84 = zext i1 %83 to i8
  br label %85

85:                                               ; preds = %80, %77, %74, %70, %65, %59
  %86 = phi i8 [ 1, %65 ], [ 1, %59 ], [ 1, %74 ], [ 0, %77 ], [ %84, %80 ], [ 0, %70 ]
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = icmp eq ptr %27, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.tree_decl_minimal, ptr %60, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !46
  tail call void (i32, ptr, ...) @error_at(i32 noundef %92, ptr noundef nonnull @.str.5, ptr noundef %60) #12
  %93 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %27, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  %95 = getelementptr inbounds %struct.tree_decl_minimal, ptr %94, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !46
  tail call void (i32, ptr, ...) @inform(i32 noundef %96, ptr noundef nonnull @.str.6) #12
  br label %97

97:                                               ; preds = %90, %88, %85, %58
  %98 = phi ptr [ %27, %85 ], [ %27, %58 ], [ %28, %90 ], [ %28, %88 ]
  %99 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %28, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %26, !llvm.loop !63

102:                                              ; preds = %97, %24
  %103 = phi ptr [ null, %24 ], [ %98, %97 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %140

105:                                              ; preds = %102
  %106 = load ptr, ptr %0, align 8, !tbaa !35
  %107 = icmp eq ptr %106, null
  br i1 %107, label %137, label %108

108:                                              ; preds = %105, %132
  %109 = phi ptr [ %135, %132 ], [ %106, %105 ]
  %110 = phi ptr [ %133, %132 ], [ null, %105 ]
  %111 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %109, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !57
  %113 = icmp eq i32 %112, 5
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %109, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !56
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 29
  br i1 %119, label %137, label %120

120:                                              ; preds = %114
  %121 = icmp eq ptr %110, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %110, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !56
  %125 = getelementptr inbounds %struct.tree_decl_common, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !46
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %116, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !46
  %129 = tail call i32 @tree_int_cst_lt(ptr noundef %126, ptr noundef %128) #12
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %122, %120
  br label %132

132:                                              ; preds = %131, %122, %108
  %133 = phi ptr [ %110, %108 ], [ %109, %131 ], [ %110, %122 ]
  %134 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %109, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %108, !llvm.loop !64

137:                                              ; preds = %132, %114, %105
  %138 = phi ptr [ null, %105 ], [ %133, %132 ], [ %109, %114 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %137, %102
  %141 = phi ptr [ %103, %102 ], [ %138, %137 ]
  %142 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !56
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 1114111
  %146 = icmp eq i64 %145, 1048608
  %147 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %141, i64 0, i32 4
  %148 = select i1 %146, i32 3, i32 2
  store i32 %148, ptr %147, align 8, !tbaa !57
  br label %149

149:                                              ; preds = %140, %19, %137
  %150 = load ptr, ptr %0, align 8, !tbaa !35
  %151 = icmp eq ptr %150, null
  br i1 %151, label %174, label %152

152:                                              ; preds = %149, %162
  %153 = phi ptr [ %159, %162 ], [ %150, %149 ]
  %154 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %153, i64 0, i32 4
  %155 = load i32, ptr %154, align 8, !tbaa !57
  %156 = and i32 %155, -2
  %157 = icmp eq i32 %156, 2
  %158 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %153, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = icmp eq ptr %159, null
  br i1 %157, label %161, label %162

161:                                              ; preds = %152
  br i1 %160, label %212, label %163

162:                                              ; preds = %152
  br i1 %160, label %174, label %152, !llvm.loop !65

163:                                              ; preds = %161, %170
  %164 = phi ptr [ %172, %170 ], [ %159, %161 ]
  %165 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %164, i64 0, i32 4
  %166 = load i32, ptr %165, align 8, !tbaa !57
  %167 = and i32 %166, -2
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @.str.1) #12
  br label %170

170:                                              ; preds = %163, %169
  %171 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %164, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !59
  %173 = icmp eq ptr %172, null
  br i1 %173, label %212, label %163, !llvm.loop !66

174:                                              ; preds = %162, %149
  %175 = load ptr, ptr %0, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !56
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 29
  br i1 %180, label %181, label %190

181:                                              ; preds = %174, %186
  %182 = phi ptr [ %188, %186 ], [ %175, %174 ]
  %183 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !61
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %182, i64 0, i32 5
  %188 = load ptr, ptr %187, align 8, !tbaa !59
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %181, !llvm.loop !67

190:                                              ; preds = %186, %181, %174
  %191 = phi ptr [ %175, %174 ], [ %182, %181 ], [ %182, %186 ]
  %192 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !56
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 32
  br i1 %196, label %197, label %212

197:                                              ; preds = %190, %208
  %198 = phi ptr [ %210, %208 ], [ %191, %190 ]
  %199 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !56
  %201 = load i64, ptr %200, align 8
  %202 = and i64 %201, 1048576
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.tree_decl_common, ptr %200, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %197, %204
  %209 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %198, i64 0, i32 5
  %210 = load ptr, ptr %209, align 8, !tbaa !59
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %197, !llvm.loop !68

212:                                              ; preds = %170, %208, %204, %161, %190
  %213 = phi ptr [ %191, %190 ], [ %153, %161 ], [ %198, %204 ], [ %198, %208 ], [ %153, %170 ]
  %214 = load ptr, ptr %0, align 8, !tbaa !35
  %215 = icmp eq ptr %214, %213
  br i1 %215, label %226, label %216

216:                                              ; preds = %212, %216
  %217 = phi ptr [ %219, %216 ], [ %214, %212 ]
  %218 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %217, i64 0, i32 5
  %219 = load ptr, ptr %218, align 8, !tbaa !59
  %220 = icmp eq ptr %219, %213
  br i1 %220, label %221, label %216, !llvm.loop !69

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %217, i64 0, i32 5
  %223 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %213, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !59
  store ptr %224, ptr %222, align 8, !tbaa !59
  %225 = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %225, ptr %223, align 8, !tbaa !59
  store ptr %213, ptr %0, align 8, !tbaa !35
  br label %226

226:                                              ; preds = %221, %212
  %227 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %213, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !56
  %229 = load i64, ptr %228, align 8
  %230 = and i64 %229, 65535
  %231 = icmp eq i64 %230, 32
  br i1 %231, label %232, label %248

232:                                              ; preds = %226
  %233 = load ptr, ptr @lto_global_var_decls, align 8, !tbaa !35
  %234 = icmp eq ptr %233, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.VEC_tree_base, ptr %233, i64 0, i32 1
  %237 = load i32, ptr %236, align 4, !tbaa !70
  %238 = load i32, ptr %233, align 8, !tbaa !72
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %232, %235
  %241 = tail call ptr @vec_gc_p_reserve(ptr noundef %233, i32 noundef 1) #12
  store ptr %241, ptr @lto_global_var_decls, align 8, !tbaa !35
  br label %242

242:                                              ; preds = %235, %240
  %243 = load ptr, ptr @lto_global_var_decls, align 8, !tbaa !35
  %244 = load i32, ptr %243, align 8, !tbaa !72
  %245 = add i32 %244, 1
  store i32 %245, ptr %243, align 8, !tbaa !72
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds %struct.VEC_tree_base, ptr %243, i64 0, i32 2, i64 %246
  store ptr %228, ptr %247, align 8, !tbaa !35
  br label %248

248:                                              ; preds = %242, %226
  %249 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %213, i64 0, i32 5
  %250 = load ptr, ptr %249, align 8, !tbaa !59
  %251 = icmp eq ptr %250, null
  br i1 %251, label %295, label %252

252:                                              ; preds = %248, %284
  %253 = phi ptr [ %287, %284 ], [ %250, %248 ]
  %254 = phi i8 [ %285, %284 ], [ 0, %248 ]
  %255 = load ptr, ptr %227, align 8, !tbaa !56
  %256 = load i64, ptr %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = and i32 %257, 65535
  %259 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %253, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !56
  %261 = load i64, ptr %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %258, %263
  br i1 %264, label %284, label %265

265:                                              ; preds = %252
  %266 = trunc i64 %256 to i16
  switch i16 %266, label %283 [
    i16 32, label %267
    i16 29, label %275
  ]

267:                                              ; preds = %265
  %268 = icmp eq i32 %263, 29
  br i1 %268, label %270, label %269

269:                                              ; preds = %267
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #12
  br label %270

270:                                              ; preds = %267, %269
  %271 = load ptr, ptr %259, align 8, !tbaa !56
  %272 = getelementptr inbounds %struct.tree_decl_minimal, ptr %271, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !46
  %274 = load ptr, ptr %227, align 8, !tbaa !56
  tail call void (i32, ptr, ...) @error_at(i32 noundef %273, ptr noundef nonnull @.str.2, ptr noundef %274) #12
  br label %284

275:                                              ; preds = %265
  %276 = icmp eq i32 %263, 32
  br i1 %276, label %278, label %277

277:                                              ; preds = %275
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @.str.1) #12
  br label %278

278:                                              ; preds = %275, %277
  %279 = load ptr, ptr %259, align 8, !tbaa !56
  %280 = getelementptr inbounds %struct.tree_decl_minimal, ptr %279, i64 0, i32 1
  %281 = load i32, ptr %280, align 8, !tbaa !46
  %282 = load ptr, ptr %227, align 8, !tbaa !56
  tail call void (i32, ptr, ...) @error_at(i32 noundef %281, ptr noundef nonnull @.str.3, ptr noundef %282) #12
  br label %284

283:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 613, ptr noundef nonnull @.str.1) #12
  br label %284

284:                                              ; preds = %270, %278, %283, %252
  %285 = phi i8 [ %254, %252 ], [ 1, %283 ], [ 1, %278 ], [ 1, %270 ]
  %286 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %253, i64 0, i32 5
  %287 = load ptr, ptr %286, align 8, !tbaa !59
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %252, !llvm.loop !73

289:                                              ; preds = %284
  %290 = icmp eq i8 %285, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %289
  %292 = load ptr, ptr %227, align 8, !tbaa !56
  %293 = getelementptr inbounds %struct.tree_decl_minimal, ptr %292, i64 0, i32 1
  %294 = load i32, ptr %293, align 8, !tbaa !46
  tail call void (i32, ptr, ...) @inform(i32 noundef %294, ptr noundef nonnull @.str.4) #12
  br label %295

295:                                              ; preds = %248, %291, %289
  %296 = load ptr, ptr %0, align 8, !tbaa !35
  %297 = icmp eq ptr %296, null
  br i1 %297, label %310, label %298

298:                                              ; preds = %295, %298
  %299 = phi ptr [ %308, %298 ], [ %296, %295 ]
  %300 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !56
  %302 = getelementptr inbounds %struct.tree_common, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !46
  %304 = tail call ptr @gimple_register_type(ptr noundef %303) #12
  %305 = load ptr, ptr %300, align 8, !tbaa !56
  %306 = getelementptr inbounds %struct.tree_common, ptr %305, i64 0, i32 2
  store ptr %304, ptr %306, align 8, !tbaa !46
  %307 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %299, i64 0, i32 5
  %308 = load ptr, ptr %307, align 8, !tbaa !35
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %298, !llvm.loop !74

310:                                              ; preds = %298, %295
  %311 = load ptr, ptr %0, align 8, !tbaa !35
  %312 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %311, i64 0, i32 5
  %313 = load ptr, ptr %312, align 8, !tbaa !59
  %314 = icmp eq ptr %313, null
  br i1 %314, label %476, label %315

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %311, i64 0, i32 1
  br label %317

317:                                              ; preds = %315, %411
  %318 = phi ptr [ %313, %315 ], [ %414, %411 ]
  %319 = phi ptr [ null, %315 ], [ %412, %411 ]
  %320 = load ptr, ptr %316, align 8, !tbaa !56
  %321 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %318, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !56
  %323 = load i64, ptr %322, align 8
  %324 = load i64, ptr %320, align 8
  %325 = and i64 %323, 262144
  %326 = or i64 %325, %324
  store i64 %326, ptr %320, align 8
  %327 = load i64, ptr %322, align 8
  %328 = and i64 %326, 262144
  %329 = or i64 %328, %327
  store i64 %329, ptr %322, align 8
  %330 = and i64 %327, 65535
  %331 = icmp eq i64 %330, 29
  br i1 %331, label %411, label %332

332:                                              ; preds = %317
  %333 = getelementptr inbounds %struct.tree_common, ptr %320, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !46
  %335 = getelementptr inbounds %struct.tree_type, ptr %334, i64 0, i32 16
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  %337 = getelementptr inbounds %struct.tree_common, ptr %322, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  %339 = getelementptr inbounds %struct.tree_type, ptr %338, i64 0, i32 16
  %340 = load ptr, ptr %339, align 8, !tbaa !46
  %341 = tail call ptr @gimple_register_type(ptr noundef %336) #12
  %342 = tail call ptr @gimple_register_type(ptr noundef %340) #12
  %343 = icmp eq ptr %341, %342
  br i1 %343, label %381, label %344

344:                                              ; preds = %332
  %345 = getelementptr inbounds %struct.tree_type, ptr %342, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !46
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %395

348:                                              ; preds = %344
  %349 = load i64, ptr %341, align 8
  %350 = trunc i64 %349 to i32
  %351 = and i32 %350, 65535
  %352 = load i64, ptr %342, align 8
  %353 = trunc i64 %352 to i32
  %354 = and i32 %353, 65535
  %355 = icmp eq i32 %351, %354
  br i1 %355, label %356, label %395

356:                                              ; preds = %348
  %357 = icmp eq i32 %351, 15
  br i1 %357, label %358, label %381

358:                                              ; preds = %356, %368
  %359 = phi ptr [ %364, %368 ], [ %341, %356 ]
  %360 = phi ptr [ %363, %368 ], [ %342, %356 ]
  %361 = getelementptr inbounds %struct.tree_common, ptr %360, i64 0, i32 2
  %362 = getelementptr inbounds %struct.tree_common, ptr %359, i64 0, i32 2
  %363 = load ptr, ptr %361, align 8, !tbaa !46
  %364 = load ptr, ptr %362, align 8, !tbaa !46
  %365 = load i64, ptr %364, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 15
  br i1 %367, label %368, label %372

368:                                              ; preds = %358
  %369 = load i64, ptr %363, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 15
  br i1 %371, label %358, label %372, !llvm.loop !75

372:                                              ; preds = %368, %358
  %373 = load i64, ptr %363, align 8
  %374 = xor i64 %373, %365
  %375 = and i64 %374, 65535
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %395

377:                                              ; preds = %372
  %378 = tail call ptr @gimple_register_type(ptr noundef nonnull %364) #12
  %379 = tail call ptr @gimple_register_type(ptr noundef nonnull %363) #12
  %380 = icmp eq ptr %378, %379
  br i1 %380, label %381, label %395

381:                                              ; preds = %377, %356, %332
  %382 = load i64, ptr %320, align 8
  %383 = and i64 %382, 4398046511104
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %411, label %385

385:                                              ; preds = %381
  %386 = load i64, ptr %322, align 8
  %387 = and i64 %386, 4398046511104
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %411, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.tree_decl_common, ptr %320, i64 0, i32 3
  %391 = load i32, ptr %390, align 8, !tbaa !46
  %392 = getelementptr inbounds %struct.tree_decl_common, ptr %322, i64 0, i32 3
  %393 = load i32, ptr %392, align 8, !tbaa !46
  %394 = icmp ult i32 %391, %393
  br i1 %394, label %395, label %411

395:                                              ; preds = %344, %348, %372, %377, %389
  %396 = load ptr, ptr %321, align 8, !tbaa !56
  %397 = icmp eq ptr %319, null
  br i1 %397, label %403, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.VEC_tree_base, ptr %319, i64 0, i32 1
  %400 = load i32, ptr %399, align 4, !tbaa !70
  %401 = load i32, ptr %319, align 8, !tbaa !72
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %398, %395
  %404 = tail call ptr @vec_heap_p_reserve(ptr noundef %319, i32 noundef 1) #12
  br label %405

405:                                              ; preds = %403, %398
  %406 = phi ptr [ %404, %403 ], [ %319, %398 ]
  %407 = load i32, ptr %406, align 8, !tbaa !72
  %408 = add i32 %407, 1
  store i32 %408, ptr %406, align 8, !tbaa !72
  %409 = zext i32 %407 to i64
  %410 = getelementptr inbounds %struct.VEC_tree_base, ptr %406, i64 0, i32 2, i64 %409
  store ptr %396, ptr %410, align 8, !tbaa !35
  br label %411

411:                                              ; preds = %381, %385, %389, %317, %405
  %412 = phi ptr [ %406, %405 ], [ %319, %317 ], [ %319, %389 ], [ %319, %385 ], [ %319, %381 ]
  %413 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %318, i64 0, i32 5
  %414 = load ptr, ptr %413, align 8, !tbaa !59
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %317, !llvm.loop !76

416:                                              ; preds = %411
  %417 = icmp eq ptr %412, null
  br i1 %417, label %476, label %418

418:                                              ; preds = %416
  %419 = load i32, ptr %412, align 8, !tbaa !72
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %476, label %421

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %311, i64 0, i32 1
  br label %423

423:                                              ; preds = %421, %465
  %424 = phi i32 [ %467, %465 ], [ 0, %421 ]
  %425 = phi i8 [ %466, %465 ], [ 0, %421 ]
  %426 = load i32, ptr %412, align 8, !tbaa !72
  %427 = icmp ugt i32 %426, %424
  br i1 %427, label %428, label %432

428:                                              ; preds = %423
  %429 = zext i32 %424 to i64
  %430 = getelementptr inbounds %struct.VEC_tree_base, ptr %412, i64 0, i32 2, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !35
  br label %432

432:                                              ; preds = %428, %423
  %433 = phi ptr [ %431, %428 ], [ null, %423 ]
  br i1 %427, label %434, label %468

434:                                              ; preds = %432
  %435 = load ptr, ptr %422, align 8, !tbaa !56
  %436 = getelementptr inbounds %struct.tree_common, ptr %435, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !46
  %438 = getelementptr inbounds %struct.tree_common, ptr %433, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !46
  %440 = icmp eq ptr %437, %439
  br i1 %440, label %446, label %441

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.tree_decl_minimal, ptr %433, i64 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !46
  %444 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %443, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %433) #12
  %445 = or i8 %444, %425
  br label %465

446:                                              ; preds = %434
  %447 = load i64, ptr %435, align 8
  %448 = and i64 %447, 4398046511104
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %465, label %450

450:                                              ; preds = %446
  %451 = load i64, ptr %433, align 8
  %452 = and i64 %451, 4398046511104
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %465, label %454

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.tree_decl_common, ptr %435, i64 0, i32 3
  %456 = load i32, ptr %455, align 8, !tbaa !46
  %457 = getelementptr inbounds %struct.tree_decl_common, ptr %433, i64 0, i32 3
  %458 = load i32, ptr %457, align 8, !tbaa !46
  %459 = icmp ult i32 %456, %458
  br i1 %459, label %460, label %465

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.tree_decl_minimal, ptr %433, i64 0, i32 1
  %462 = load i32, ptr %461, align 8, !tbaa !46
  %463 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %462, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %433) #12
  %464 = or i8 %463, %425
  br label %465

465:                                              ; preds = %460, %454, %450, %446, %441
  %466 = phi i8 [ %445, %441 ], [ %464, %460 ], [ %425, %454 ], [ %425, %450 ], [ %425, %446 ]
  %467 = add i32 %424, 1
  br label %423, !llvm.loop !77

468:                                              ; preds = %432
  %469 = icmp eq i8 %425, 0
  br i1 %469, label %475, label %470

470:                                              ; preds = %468
  %471 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %311, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !56
  %473 = getelementptr inbounds %struct.tree_decl_minimal, ptr %472, i64 0, i32 1
  %474 = load i32, ptr %473, align 8, !tbaa !46
  tail call void (i32, ptr, ...) @inform(i32 noundef %474, ptr noundef nonnull @.str.4) #12
  br label %475

475:                                              ; preds = %468, %470
  tail call void @free(ptr noundef %412)
  br label %476

476:                                              ; preds = %416, %310, %418, %475
  %477 = load ptr, ptr %227, align 8, !tbaa !56
  %478 = load i64, ptr %477, align 8
  %479 = and i64 %478, 65535
  %480 = icmp eq i64 %479, 29
  br i1 %480, label %482, label %481

481:                                              ; preds = %476
  store ptr null, ptr %249, align 8, !tbaa !59
  br label %482

482:                                              ; preds = %481, %476
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_symtab_merge_cgraph_nodes() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 1021, ptr noundef nonnull @lto_symtab_entry_hash, ptr noundef nonnull @lto_symtab_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #12
  store ptr %4, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %0, %3
  %6 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !35
  tail call void @htab_traverse(ptr noundef %6, ptr noundef nonnull @lto_symtab_merge_cgraph_nodes_1, ptr noundef null) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @lto_symtab_merge_cgraph_nodes_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %128, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 29
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 656, ptr noundef nonnull @.str.1) #12
  br label %14

14:                                               ; preds = %7, %13
  %15 = load ptr, ptr %4, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %127, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %123
  %20 = phi ptr [ %15, %17 ], [ %125, %123 ]
  %21 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %22, null
  br i1 %23, label %123, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %22, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !78
  %35 = icmp eq ptr %34, %27
  br i1 %35, label %122, label %39

36:                                               ; preds = %39
  %37 = load ptr, ptr %42, align 8, !tbaa !78
  %38 = icmp eq ptr %37, %27
  br i1 %38, label %44, label %39, !llvm.loop !87

39:                                               ; preds = %33, %36
  %40 = phi ptr [ %42, %36 ], [ %31, %33 ]
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %36, !llvm.loop !87

44:                                               ; preds = %36
  tail call void @cgraph_remove_same_body_alias(ptr noundef nonnull %42) #12
  br i1 %43, label %45, label %123

45:                                               ; preds = %39, %44, %29, %24
  %46 = load ptr, ptr %21, align 8, !tbaa !61
  %47 = load ptr, ptr %18, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.cgraph_node, ptr %46, i64 0, i32 27
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  tail call void @cgraph_mark_needed_node(ptr noundef %47) #12
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i16, ptr %48, align 4
  %55 = and i16 %54, 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @cgraph_mark_reachable_node(ptr noundef %47) #12
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i16, ptr %48, align 4
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cgraph_node, ptr %47, i64 0, i32 19, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !89
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #12
  br label %67

67:                                               ; preds = %66, %62
  tail call void @cgraph_mark_address_taken_node(ptr noundef %47) #12
  br label %68

68:                                               ; preds = %67, %58
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %46, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !90
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68, %72
  %73 = phi ptr [ %75, %72 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.cgraph_edge, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !91
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %73, ptr noundef %47) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %72, !llvm.loop !93

77:                                               ; preds = %72, %68
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %46, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !94
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.cgraph_edge, ptr %82, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !95
  tail call void @cgraph_remove_edge(ptr noundef nonnull %82) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %81, !llvm.loop !96

86:                                               ; preds = %81, %77
  %87 = getelementptr inbounds %struct.cgraph_node, ptr %46, i64 0, i32 13
  %88 = load ptr, ptr %87, align 8, !tbaa !86
  %89 = icmp eq ptr %88, null
  br i1 %89, label %121, label %90

90:                                               ; preds = %86, %117
  %91 = phi ptr [ %119, %117 ], [ %88, %86 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %94, i64 13
  %96 = load i8, ptr %95, align 1, !tbaa !46
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %92, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = tail call ptr @decl_assembler_name(ptr noundef nonnull %92) #12
  %104 = tail call fastcc ptr @lto_symtab_get(ptr noundef %103)
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %102, %113
  %107 = phi ptr [ %115, %113 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !61
  %110 = icmp eq ptr %109, %46
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %107, i64 0, i32 2
  store ptr null, ptr %112, align 8, !tbaa !61
  br label %117

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %107, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !59
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %106, !llvm.loop !97

117:                                              ; preds = %113, %102, %111, %98, %90
  %118 = getelementptr inbounds %struct.cgraph_node, ptr %91, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !88
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %90, !llvm.loop !98

121:                                              ; preds = %117, %86
  tail call void @cgraph_remove_node(ptr noundef %46) #12
  br label %123

122:                                              ; preds = %33
  tail call void @cgraph_remove_same_body_alias(ptr noundef nonnull %31) #12
  br label %123

123:                                              ; preds = %122, %44, %19, %121
  %124 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %19, !llvm.loop !99

127:                                              ; preds = %123, %14
  store ptr null, ptr %4, align 8, !tbaa !59
  br label %128

128:                                              ; preds = %2, %127
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_symtab_prevailing_decl(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 134217728
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @is_builtin_fn(ptr noundef nonnull %0) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 29
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 2048
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %10, i64 13
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @.str.1) #12
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #12
  %28 = tail call fastcc ptr @lto_symtab_get(ptr noundef %27)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  br label %33

33:                                               ; preds = %26, %12, %1, %5, %30
  %34 = phi ptr [ %32, %30 ], [ %0, %5 ], [ %0, %1 ], [ %0, %12 ], [ null, %26 ]
  ret ptr %34
}

declare zeroext i8 @is_builtin_fn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_lto_symtab_entry_def(ptr noundef %0) #9 !prof !34 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi ptr [ %0, %1 ], [ %24, %22 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %9) #12
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %14) #12
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %19) #12
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %2

26:                                               ; preds = %2, %22, %5
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P20lto_symtab_entry_def4htab(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !102
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !100
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_lto_symtab_entry_def(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !102
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !103

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !100
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #12
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_lto_symtab_entry_def(ptr noundef %0) #9 !prof !34 {
  br label %2

2:                                                ; preds = %20, %1
  %3 = phi ptr [ %0, %1 ], [ %22, %20 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_20lto_symtab_entry_def, i32 noundef 55) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %7) #12
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %12) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %17) #12
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %2

24:                                               ; preds = %20, %2
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_20lto_symtab_entry_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #12
  %7 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #12
  %8 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #12
  %9 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #12
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #3

declare void @gt_pch_nx_cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P20lto_symtab_entry_def4htab(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P20lto_symtab_entry_def4htab, i32 noundef 186) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !102
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !100
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_lto_symtab_entry_def(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !102
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !104

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !100
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P20lto_symtab_entry_def4htab, i32 noundef 217) #12
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P20lto_symtab_entry_def4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !102
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !100
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #12
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !102
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !105

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #12
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @lto_symtab_entry_marked_p(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = tail call i32 @ggc_marked_p(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @ggc_marked_p(ptr noundef nonnull %8) #12
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %10, %1
  %15 = phi i32 [ 1, %1 ], [ 0, %6 ], [ %13, %10 ]
  ret i32 %15
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @lto_symtab_entry_hash(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @htab_hash_string(ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @lto_symtab_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @gimple_register_type(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @cgraph_remove_same_body_alias(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_reachable_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_mark_address_taken_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_edge(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #3

declare i32 @ggc_marked_p(ptr noundef) local_unnamed_addr #3

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 0}
!55 = !{!"lto_symtab_entry_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !36, i64 40}
!56 = !{!55, !36, i64 8}
!57 = !{!55, !41, i64 32}
!58 = !{!55, !36, i64 24}
!59 = !{!55, !36, i64 40}
!60 = distinct !{!60, !52, !53}
!61 = !{!55, !36, i64 16}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = distinct !{!68, !52, !53}
!69 = distinct !{!69, !52, !53}
!70 = !{!71, !41, i64 4}
!71 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!72 = !{!71, !41, i64 0}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = !{!79, !36, i64 0}
!79 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !80, i64 144, !82, i64 184, !83, i64 224, !84, i64 232, !85, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!80 = !{!"cgraph_local_info", !36, i64 0, !81, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!81 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!82 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!83 = !{!"cgraph_rtl_info", !41, i64 0}
!84 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!85 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!86 = !{!79, !36, i64 104}
!87 = distinct !{!87, !52, !53}
!88 = !{!79, !36, i64 24}
!89 = !{!79, !36, i64 200}
!90 = !{!79, !36, i64 16}
!91 = !{!92, !36, i64 32}
!92 = !{!"cgraph_edge", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !43, i64 88, !41, i64 90, !41, i64 90, !41, i64 90}
!93 = distinct !{!93, !52, !53}
!94 = !{!79, !36, i64 8}
!95 = !{!92, !36, i64 48}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = !{!101, !36, i64 24}
!101 = !{!"htab", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104}
!102 = !{!101, !42, i64 32}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
