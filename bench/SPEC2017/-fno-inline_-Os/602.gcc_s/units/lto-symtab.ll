; ModuleID = 'lto-symtab.c'
source_filename = "lto-symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.lto_symtab_entry_def = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
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

@lto_global_var_decls = dso_local local_unnamed_addr global ptr null, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str = private unnamed_addr constant [13 x i8] c"lto-symtab.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lto_symtab_identifiers = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"variable %qD redeclared as function\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"function %qD redeclared as variable\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"previously declared here\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%qD has already been defined\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"previously defined here\00", align 1
@flag_no_common = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"type of %qD does not match original declaration\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"alignment of %qD is bigger than original declaration\00", align 1
@gt_ggc_rc_gt_lto_symtab_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @lto_symtab_identifiers, i64 1, i64 8, ptr @gt_ggc_mx_lto_symtab_entry_def, ptr @gt_pch_nx_lto_symtab_entry_def, ptr @lto_symtab_entry_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_lto_symtab_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @lto_symtab_identifiers, i64 1, i64 8, ptr @gt_ggc_m_P20lto_symtab_entry_def4htab, ptr @gt_pch_n_P20lto_symtab_entry_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_symtab_register_decl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
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
  %14 = load i8, ptr %13, align 1, !tbaa !36
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %9, %16, %11, %5, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.1) #8
  %21 = load i64, ptr %0, align 8
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i64 [ %6, %16 ], [ %21, %20 ]
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 32
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 33554432
  %34 = icmp eq i64 %33, 0
  %35 = and i64 %23, 68157440
  %36 = icmp eq i64 %35, 68157440
  %37 = or i1 %36, %34
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #8
  %39 = load i64, ptr %0, align 8
  br label %40

40:                                               ; preds = %38, %30, %26, %22
  %41 = phi i64 [ %39, %38 ], [ %23, %30 ], [ %23, %26 ], [ %23, %22 ]
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 29
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 2048
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #8
  br label %50

50:                                               ; preds = %49, %44, %40
  %51 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #8
  %52 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #8
  store ptr %52, ptr %51, align 8, !tbaa !39
  %53 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %51, i64 0, i32 1
  store ptr %0, ptr %53, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %51, i64 0, i32 4
  store i32 %1, ptr %54, align 8, !tbaa !44
  %55 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %51, i64 0, i32 3
  store ptr %2, ptr %55, align 8, !tbaa !45
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #9
  %56 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !46
  %57 = tail call ptr @htab_find_slot(ptr noundef %56, ptr noundef nonnull %51, i32 noundef 1) #8
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %51, i64 0, i32 5
  store ptr %58, ptr %59, align 8, !tbaa !47
  store ptr %51, ptr %57, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_symtab_maybe_init_hash_table() unnamed_addr #0 !prof !35 !PGOFuncName !48 {
  %1 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !46
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 1021, ptr noundef nonnull @lto_symtab_entry_hash, ptr noundef nonnull @lto_symtab_entry_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #8
  store ptr %4, ptr @lto_symtab_identifiers, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lto_symtab_entry_hash(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = tail call i32 @htab_hash_string(ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @lto_symtab_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !35 !PGOFuncName !50 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = load ptr, ptr %1, align 8, !tbaa !39
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lto_symtab_get_resolution(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 13
  %5 = load i8, ptr %4, align 1, !tbaa !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #8
  br label %12

12:                                               ; preds = %7, %11
  %13 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #8
  %14 = tail call fastcc ptr @lto_symtab_get(ptr noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %23, %21 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %16, !llvm.loop !51

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !44
  br label %28

28:                                               ; preds = %21, %12, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %12 ], [ 0, %21 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_symtab_get(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !53 {
  %2 = alloca %struct.lto_symtab_entry_def, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #10
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #9
  store ptr %0, ptr %2, align 8, !tbaa !39
  %3 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !46
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %7, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #10
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_symtab_merge_decls() local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #9
  %1 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !46
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @lto_symtab_merge_decls_1, ptr noundef null) #8
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lto_symtab_merge_decls_1(ptr nocapture noundef %0, ptr nocapture readnone %1) #0 !prof !35 !PGOFuncName !54 {
  tail call fastcc void @lto_symtab_resolve_symbols(ptr noundef %0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2, %15
  %6 = phi ptr [ %12, %15 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 2
  %11 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %6, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %10, label %14, label %15

14:                                               ; preds = %5
  br i1 %13, label %68, label %16

15:                                               ; preds = %5
  br i1 %13, label %27, label %5, !llvm.loop !55

16:                                               ; preds = %14, %23
  %17 = phi ptr [ %25, %23 ], [ %12, %14 ]
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @.str.1) #8
  br label %23

23:                                               ; preds = %16, %22
  %24 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %17, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %66, label %16, !llvm.loop !56

27:                                               ; preds = %15, %2
  %28 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 29
  br i1 %32, label %33, label %46

33:                                               ; preds = %27, %38
  %34 = phi ptr [ %40, %38 ], [ %3, %27 ]
  %35 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %34, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !58

42:                                               ; preds = %33, %38
  %43 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %34, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = load i64, ptr %44, align 8
  br label %46

46:                                               ; preds = %42, %27
  %47 = phi i64 [ %30, %27 ], [ %45, %42 ]
  %48 = phi ptr [ %3, %27 ], [ %34, %42 ]
  %49 = and i64 %47, 65535
  %50 = icmp eq i64 %49, 32
  br i1 %50, label %51, label %68

51:                                               ; preds = %46, %62
  %52 = phi ptr [ %64, %62 ], [ %48, %46 ]
  %53 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 1048576
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %54, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !36
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %58, %51
  %63 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %52, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %51, !llvm.loop !59

66:                                               ; preds = %23
  %67 = load ptr, ptr %0, align 8, !tbaa !46
  br label %68

68:                                               ; preds = %58, %62, %66, %14, %46
  %69 = phi ptr [ %3, %46 ], [ %3, %14 ], [ %67, %66 ], [ %3, %62 ], [ %3, %58 ]
  %70 = phi ptr [ %48, %46 ], [ %6, %14 ], [ %6, %66 ], [ %52, %62 ], [ %52, %58 ]
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %68, %72
  %73 = phi ptr [ %75, %72 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = icmp eq ptr %75, %70
  br i1 %76, label %77, label %72, !llvm.loop !60

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %73, i64 0, i32 5
  %79 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %70, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !47
  store ptr %80, ptr %78, align 8, !tbaa !47
  %81 = load ptr, ptr %0, align 8, !tbaa !46
  store ptr %81, ptr %79, align 8, !tbaa !47
  store ptr %70, ptr %0, align 8, !tbaa !46
  br label %82

82:                                               ; preds = %77, %68
  %83 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %70, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 32
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %84) #9
  br label %89

89:                                               ; preds = %88, %82
  %90 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %70, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %140, label %93

93:                                               ; preds = %89, %129
  %94 = phi ptr [ %132, %129 ], [ %91, %89 ]
  %95 = phi i8 [ %130, %129 ], [ 0, %89 ]
  %96 = load ptr, ptr %83, align 8, !tbaa !43
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = and i32 %98, 65535
  %100 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %94, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !43
  %102 = load i64, ptr %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %129, label %106

106:                                              ; preds = %93
  %107 = trunc i64 %97 to i16
  switch i16 %107, label %128 [
    i16 32, label %108
    i16 29, label %118
  ]

108:                                              ; preds = %106
  %109 = icmp eq i32 %104, 29
  br i1 %109, label %113, label %110

110:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #8
  %111 = load ptr, ptr %100, align 8, !tbaa !43
  %112 = load ptr, ptr %83, align 8, !tbaa !43
  br label %113

113:                                              ; preds = %108, %110
  %114 = phi ptr [ %96, %108 ], [ %112, %110 ]
  %115 = phi ptr [ %101, %108 ], [ %111, %110 ]
  %116 = getelementptr inbounds %struct.tree_decl_minimal, ptr %115, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !36
  tail call void (i32, ptr, ...) @error_at(i32 noundef %117, ptr noundef nonnull @.str.2, ptr noundef %114) #8
  br label %129

118:                                              ; preds = %106
  %119 = icmp eq i32 %104, 32
  br i1 %119, label %123, label %120

120:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @.str.1) #8
  %121 = load ptr, ptr %100, align 8, !tbaa !43
  %122 = load ptr, ptr %83, align 8, !tbaa !43
  br label %123

123:                                              ; preds = %118, %120
  %124 = phi ptr [ %96, %118 ], [ %122, %120 ]
  %125 = phi ptr [ %101, %118 ], [ %121, %120 ]
  %126 = getelementptr inbounds %struct.tree_decl_minimal, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !36
  tail call void (i32, ptr, ...) @error_at(i32 noundef %127, ptr noundef nonnull @.str.3, ptr noundef %124) #8
  br label %129

128:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 613, ptr noundef nonnull @.str.1) #8
  br label %129

129:                                              ; preds = %113, %123, %128, %93
  %130 = phi i8 [ %95, %93 ], [ 1, %128 ], [ 1, %123 ], [ 1, %113 ]
  %131 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %94, i64 0, i32 5
  %132 = load ptr, ptr %131, align 8, !tbaa !47
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %93, !llvm.loop !61

134:                                              ; preds = %129
  %135 = icmp eq i8 %130, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr %83, align 8, !tbaa !43
  %138 = getelementptr inbounds %struct.tree_decl_minimal, ptr %137, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !36
  tail call void (i32, ptr, ...) @inform(i32 noundef %139, ptr noundef nonnull @.str.4) #8
  br label %140

140:                                              ; preds = %89, %136, %134
  %141 = load ptr, ptr %0, align 8, !tbaa !46
  %142 = icmp eq ptr %141, null
  br i1 %142, label %155, label %143

143:                                              ; preds = %140, %143
  %144 = phi ptr [ %153, %143 ], [ %141, %140 ]
  %145 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !43
  %147 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !36
  %149 = tail call ptr @gimple_register_type(ptr noundef %148) #8
  %150 = load ptr, ptr %145, align 8, !tbaa !43
  %151 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  store ptr %149, ptr %151, align 8, !tbaa !36
  %152 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %144, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %143, !llvm.loop !62

155:                                              ; preds = %143, %140
  tail call fastcc void @lto_symtab_merge_decls_2(ptr noundef nonnull %0) #9
  %156 = load ptr, ptr %83, align 8, !tbaa !43
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 29
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  store ptr null, ptr %90, align 8, !tbaa !47
  br label %161

161:                                              ; preds = %160, %155
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_symtab_resolve_symbols(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !64, !noundef !64
  br label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %15, %13 ], [ %2, %1 ]
  %5 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 29
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call ptr @cgraph_get_node(ptr noundef nonnull %6) #8
  %12 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %3, %10
  %14 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %4, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3, !llvm.loop !65

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %93

22:                                               ; preds = %17, %43
  %23 = phi ptr [ %44, %43 ], [ null, %17 ]
  %24 = phi ptr [ %46, %43 ], [ %18, %17 ]
  %25 = tail call fastcc zeroext i8 @lto_symtab_resolve_can_prevail_p(ptr noundef nonnull %24) #9, !range !66
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %24, i64 0, i32 4
  br i1 %26, label %28, label %29

28:                                               ; preds = %22
  store i32 6, ptr %27, align 8, !tbaa !44
  br label %43

29:                                               ; preds = %22
  store i32 5, ptr %27, align 8, !tbaa !44
  %30 = tail call fastcc zeroext i8 @lto_symtab_resolve_replaceable_p(ptr noundef nonnull %24) #9, !range !66
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = icmp eq ptr %23, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %24, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !36
  tail call void (i32, ptr, ...) @error_at(i32 noundef %38, ptr noundef nonnull @.str.5, ptr noundef %36) #8
  %39 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %23, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.tree_decl_minimal, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !36
  tail call void (i32, ptr, ...) @inform(i32 noundef %42, ptr noundef nonnull @.str.6) #8
  br label %43

43:                                               ; preds = %32, %34, %29, %28
  %44 = phi ptr [ %23, %29 ], [ %23, %28 ], [ %24, %34 ], [ %24, %32 ]
  %45 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %24, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %22, !llvm.loop !67

48:                                               ; preds = %43
  %49 = icmp eq ptr %44, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %48
  %51 = load ptr, ptr %0, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %93, label %53

53:                                               ; preds = %50, %77
  %54 = phi ptr [ %80, %77 ], [ %51, %50 ]
  %55 = phi ptr [ %78, %77 ], [ null, %50 ]
  %56 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %54, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !44
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %54, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 29
  br i1 %64, label %84, label %65

65:                                               ; preds = %59
  %66 = icmp eq ptr %55, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %55, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !36
  %72 = getelementptr inbounds %struct.tree_decl_common, ptr %61, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = tail call i32 @tree_int_cst_lt(ptr noundef %71, ptr noundef %73) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67, %65
  br label %77

77:                                               ; preds = %67, %76, %53
  %78 = phi ptr [ %55, %53 ], [ %54, %76 ], [ %55, %67 ]
  %79 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %54, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %53, !llvm.loop !68

82:                                               ; preds = %77
  %83 = icmp eq ptr %78, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %59, %82, %48
  %85 = phi ptr [ %44, %48 ], [ %78, %82 ], [ %54, %59 ]
  %86 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 1114111
  %90 = icmp eq i64 %89, 1048608
  %91 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %85, i64 0, i32 4
  %92 = select i1 %90, i32 3, i32 2
  store i32 %92, ptr %91, align 8, !tbaa !44
  br label %93

93:                                               ; preds = %84, %50, %82, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !69 {
  tail call fastcc void @VEC_tree_gc_reserve() #9
  %2 = load ptr, ptr @lto_global_var_decls, align 8, !tbaa !46
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_register_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_symtab_merge_decls_2(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !70 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr null, ptr %2, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %71, label %8

8:                                                ; preds = %1, %15
  %9 = phi ptr [ %17, %15 ], [ %6, %1 ]
  %10 = tail call fastcc zeroext i8 @lto_symtab_merge(ptr noundef %4, ptr noundef nonnull %9) #9, !range !66
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %2, ptr noundef %14) #9
  br label %15

15:                                               ; preds = %8, %12
  %16 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %9, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !71

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 8
  %21 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %19
  %24 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %3) #9, !range !72
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %4, i64 0, i32 1
  br label %28

28:                                               ; preds = %26, %58
  %29 = phi i8 [ 0, %26 ], [ %59, %58 ]
  %30 = phi i32 [ 0, %26 ], [ %60, %58 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = load ptr, ptr %3, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !36
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load i64, ptr %31, align 8
  %40 = and i64 %39, 4398046511104
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load i64, ptr %34, align 8
  %44 = and i64 %43, 4398046511104
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !36
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !36
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %28
  %53 = phi ptr [ @.str.7, %28 ], [ @.str.8, %46 ]
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !36
  %56 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %55, i32 noundef 0, ptr noundef nonnull %53, ptr noundef nonnull %34) #8
  %57 = or i8 %56, %29
  br label %58

58:                                               ; preds = %52, %46, %42, %38
  %59 = phi i8 [ %29, %46 ], [ %29, %42 ], [ %29, %38 ], [ %57, %52 ]
  %60 = add i32 %30, 1
  %61 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %20, i32 noundef %60, ptr noundef nonnull %3) #9, !range !72
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %28, !llvm.loop !73

63:                                               ; preds = %58
  %64 = icmp eq i8 %59, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %4, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !36
  tail call void (i32, ptr, ...) @inform(i32 noundef %69, ptr noundef nonnull @.str.4) #8
  br label %70

70:                                               ; preds = %23, %65, %63
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #9
  br label %71

71:                                               ; preds = %19, %1, %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @lto_symtab_resolve_can_prevail_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 33554432
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i64, ptr %3, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %26 [
    i16 29, label %11
    i16 32, label %21
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %13, i64 0, i32 27
  %17 = load i16, ptr %16, align 4
  %18 = trunc i16 %17 to i8
  %19 = lshr i8 %18, 5
  %20 = and i8 %19, 1
  br label %27

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i8
  br label %27

26:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #8
  br label %27

27:                                               ; preds = %11, %15, %1, %26, %21
  %28 = phi i8 [ %25, %21 ], [ 0, %26 ], [ 0, %1 ], [ 0, %11 ], [ %20, %15 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @lto_symtab_resolve_replaceable_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !35 !PGOFuncName !75 {
  %2 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 33554432
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 640
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 32
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = and i32 %10, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, ptr @flag_no_common, align 4, !tbaa !76
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = icmp eq ptr %25, null
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %13, %17, %23, %20, %1, %8
  %29 = phi i8 [ 1, %8 ], [ 1, %1 ], [ 1, %17 ], [ 0, %20 ], [ %27, %23 ], [ 0, %13 ]
  ret i8 %29
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve() unnamed_addr #0 !prof !35 !PGOFuncName !77 {
  %1 = load ptr, ptr @lto_global_var_decls, align 8, !tbaa !46
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_p_reserve(ptr noundef %1, i32 noundef 1) #8
  store ptr %5, ptr @lto_global_var_decls, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !35 !PGOFuncName !78 {
  %3 = load i32, ptr %0, align 8, !tbaa !79
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !79
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !81 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = load i32, ptr %0, align 8, !tbaa !79
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @lto_symtab_merge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !83 {
  %3 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %7, 262144
  %10 = or i64 %9, %8
  store i64 %10, ptr %4, align 8
  %11 = load i64, ptr %6, align 8
  %12 = and i64 %10, 262144
  %13 = or i64 %12, %11
  store i64 %13, ptr %6, align 8
  %14 = and i64 %11, 65535
  %15 = icmp eq i64 %14, 29
  br i1 %15, label %79, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = tail call ptr @gimple_register_type(ptr noundef %20) #8
  %26 = tail call ptr @gimple_register_type(ptr noundef %24) #8
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %64, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load i64, ptr %25, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = load i64, ptr %26, align 8
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %32
  %41 = icmp eq i32 %35, 15
  br i1 %41, label %42, label %64

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %48, %42 ], [ %25, %40 ]
  %44 = phi ptr [ %47, %42 ], [ %26, %40 ]
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %45, align 8, !tbaa !36
  %48 = load ptr, ptr %46, align 8, !tbaa !36
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 15
  %52 = load i64, ptr %47, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 15
  %55 = select i1 %51, i1 %54, i1 false
  br i1 %55, label %42, label %56, !llvm.loop !84

56:                                               ; preds = %42
  %57 = xor i64 %52, %49
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = tail call ptr @gimple_register_type(ptr noundef nonnull %48) #8
  %62 = tail call ptr @gimple_register_type(ptr noundef nonnull %47) #8
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %40, %60, %16
  %65 = load i64, ptr %4, align 8
  %66 = and i64 %65, 4398046511104
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = load i64, ptr %6, align 8
  %70 = and i64 %69, 4398046511104
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !36
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !36
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %72, %68, %64
  br label %79

79:                                               ; preds = %56, %72, %32, %28, %2, %60, %78
  %80 = phi i8 [ 1, %78 ], [ 0, %60 ], [ 1, %2 ], [ 0, %28 ], [ 0, %32 ], [ 0, %72 ], [ 0, %56 ]
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !85 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !86 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !79
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !35 !PGOFuncName !87 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !79
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !46
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !35 !PGOFuncName !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #9
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #8
  store ptr %6, ptr %0, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_symtab_merge_cgraph_nodes() local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #9
  %1 = load ptr, ptr @lto_symtab_identifiers, align 8, !tbaa !46
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @lto_symtab_merge_cgraph_nodes_1, ptr noundef null) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lto_symtab_merge_cgraph_nodes_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !35 !PGOFuncName !90 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 29
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 656, ptr noundef nonnull @.str.1) #8
  %14 = load ptr, ptr %4, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %5, %7 ]
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 2
  br label %19

19:                                               ; preds = %16, %44
  %20 = phi ptr [ %17, %16 ], [ %46, %44 ]
  %21 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %22, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %37
  %34 = phi ptr [ %39, %37 ], [ %31, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !91
  %36 = icmp eq ptr %35, %27
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %33, !llvm.loop !102

41:                                               ; preds = %33
  tail call void @cgraph_remove_same_body_alias(ptr noundef nonnull %34) #8
  br label %44

42:                                               ; preds = %37, %29, %24
  %43 = load ptr, ptr %18, align 8, !tbaa !57
  tail call fastcc void @lto_cgraph_replace_node(ptr noundef nonnull %22, ptr noundef %43) #9
  br label %44

44:                                               ; preds = %41, %19, %42
  %45 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %20, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %19, !llvm.loop !103

48:                                               ; preds = %44, %13
  store ptr null, ptr %4, align 8, !tbaa !47
  br label %49

49:                                               ; preds = %2, %48
  ret i32 1
}

; Function Attrs: optsize
declare void @cgraph_remove_same_body_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_cgraph_replace_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @cgraph_mark_needed_node(ptr noundef %1) #8
  %8 = load i16, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i16 [ %8, %7 ], [ %4, %2 ]
  %11 = and i16 %10, 8
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call void @cgraph_mark_reachable_node(ptr noundef %1) #8
  %14 = load i16, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i16 [ %14, %13 ], [ %10, %9 ]
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #8
  br label %24

24:                                               ; preds = %19, %23
  tail call void @cgraph_mark_address_taken_node(ptr noundef nonnull %1) #8
  br label %25

25:                                               ; preds = %24, %15
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %32, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %30, ptr noundef %1) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !110

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !111
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  tail call void @cgraph_remove_edge(ptr noundef nonnull %39) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !113

43:                                               ; preds = %38, %34
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !100
  %46 = icmp eq ptr %45, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %43, %74
  %48 = phi ptr [ %76, %74 ], [ %45, %43 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %51, i64 13
  %53 = load i8, ptr %52, align 1, !tbaa !36
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %49, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !36
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @decl_assembler_name(ptr noundef nonnull %49) #8
  %61 = tail call fastcc ptr @lto_symtab_get(ptr noundef %60) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %59, %70
  %64 = phi ptr [ %72, %70 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !57
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %64, i64 0, i32 2
  store ptr null, ptr %69, align 8, !tbaa !57
  br label %74

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %64, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !47
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %63, !llvm.loop !114

74:                                               ; preds = %70, %59, %68, %47, %55
  %75 = getelementptr inbounds %struct.cgraph_node, ptr %48, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !101
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %47, !llvm.loop !115

78:                                               ; preds = %74, %43
  tail call void @cgraph_remove_node(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare void @cgraph_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_mark_reachable_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_mark_address_taken_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cgraph_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_symtab_prevailing_decl(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 134217728
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @is_builtin_fn(ptr noundef nonnull %0) #8
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
  %19 = load i8, ptr %18, align 1, !tbaa !36
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @.str.1) #8
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #8
  %28 = tail call fastcc ptr @lto_symtab_get(ptr noundef %27) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %33

33:                                               ; preds = %26, %12, %1, %5, %30
  %34 = phi ptr [ %32, %30 ], [ %0, %5 ], [ %0, %1 ], [ %0, %12 ], [ null, %26 ]
  ret ptr %34
}

; Function Attrs: optsize
declare zeroext i8 @is_builtin_fn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_lto_symtab_entry_def(ptr noundef %0) #0 !prof !35 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi ptr [ %0, %1 ], [ %24, %22 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %9) #8
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %14) #8
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %19) #8
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %2

26:                                               ; preds = %2, %22, %5
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P20lto_symtab_entry_def4htab(ptr noundef %0) #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !118
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !116
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_lto_symtab_entry_def(ptr noundef nonnull %19) #9
  %22 = load i64, ptr %11, align 8, !tbaa !118
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !119

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !116
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #8
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_lto_symtab_entry_def(ptr noundef %0) #0 !prof !35 {
  br label %2

2:                                                ; preds = %20, %1
  %3 = phi ptr [ %0, %1 ], [ %22, %20 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_20lto_symtab_entry_def, i32 noundef 55) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %12) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %17) #8
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %3, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %2

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_20lto_symtab_entry_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #8
  %7 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #8
  %8 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #8
  %9 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #8
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_pch_nx_cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P20lto_symtab_entry_def4htab(ptr noundef %0) #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P20lto_symtab_entry_def4htab, i32 noundef 186) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !118
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !116
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_lto_symtab_entry_def(ptr noundef nonnull %17) #9
  %20 = load i64, ptr %9, align 8, !tbaa !118
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !120

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !116
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P20lto_symtab_entry_def4htab, i32 noundef 217) #8
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P20lto_symtab_entry_def4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !118
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !116
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #8
  %19 = load i64, ptr %9, align 8, !tbaa !118
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !121

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #8
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lto_symtab_entry_marked_p(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call i32 @ggc_marked_p(ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.lto_symtab_entry_def, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @ggc_marked_p(ptr noundef nonnull %8) #8
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %10, %1
  %15 = phi i32 [ 1, %1 ], [ 0, %6 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @ggc_marked_p(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 0}
!40 = !{!"lto_symtab_entry_def", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !41, i64 40}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!40, !41, i64 8}
!44 = !{!40, !42, i64 32}
!45 = !{!40, !41, i64 24}
!46 = !{!41, !41, i64 0}
!47 = !{!40, !41, i64 40}
!48 = !{!"lto-symtab.c:lto_symtab_maybe_init_hash_table"}
!49 = !{!"lto-symtab.c:lto_symtab_entry_hash"}
!50 = !{!"lto-symtab.c:lto_symtab_entry_eq"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"lto-symtab.c:lto_symtab_get"}
!54 = !{!"lto-symtab.c:lto_symtab_merge_decls_1"}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = !{!40, !41, i64 16}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !52}
!60 = distinct !{!60, !52}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !52}
!63 = !{!"lto-symtab.c:lto_symtab_resolve_symbols"}
!64 = !{}
!65 = distinct !{!65, !52}
!66 = !{i8 0, i8 2}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !52}
!69 = !{!"lto-symtab.c:VEC_tree_gc_safe_push"}
!70 = !{!"lto-symtab.c:lto_symtab_merge_decls_2"}
!71 = distinct !{!71, !52}
!72 = !{i32 0, i32 2}
!73 = distinct !{!73, !52}
!74 = !{!"lto-symtab.c:lto_symtab_resolve_can_prevail_p"}
!75 = !{!"lto-symtab.c:lto_symtab_resolve_replaceable_p"}
!76 = !{!42, !42, i64 0}
!77 = !{!"lto-symtab.c:VEC_tree_gc_reserve"}
!78 = !{!"lto-symtab.c:VEC_tree_base_quick_push"}
!79 = !{!80, !42, i64 0}
!80 = !{!"VEC_tree_base", !42, i64 0, !42, i64 4, !37, i64 8}
!81 = !{!"lto-symtab.c:VEC_tree_base_space"}
!82 = !{!80, !42, i64 4}
!83 = !{!"lto-symtab.c:lto_symtab_merge"}
!84 = distinct !{!84, !52}
!85 = !{!"lto-symtab.c:VEC_tree_heap_safe_push"}
!86 = !{!"lto-symtab.c:VEC_tree_base_length"}
!87 = !{!"lto-symtab.c:VEC_tree_base_iterate"}
!88 = !{!"lto-symtab.c:VEC_tree_heap_free"}
!89 = !{!"lto-symtab.c:VEC_tree_heap_reserve"}
!90 = !{!"lto-symtab.c:lto_symtab_merge_cgraph_nodes_1"}
!91 = !{!92, !41, i64 0}
!92 = !{!"cgraph_node", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !93, i64 144, !96, i64 184, !97, i64 224, !98, i64 232, !99, i64 256, !95, i64 288, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 308, !42, i64 308, !42, i64 308, !42, i64 308, !42, i64 308, !42, i64 308, !42, i64 308, !42, i64 309, !42, i64 309}
!93 = !{!"cgraph_local_info", !41, i64 0, !94, i64 8, !42, i64 32, !42, i64 32, !42, i64 32, !42, i64 32, !42, i64 32, !42, i64 32, !42, i64 32, !42, i64 32}
!94 = !{!"inline_summary", !95, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!95 = !{!"long", !37, i64 0}
!96 = !{!"cgraph_global_info", !95, i64 0, !95, i64 8, !41, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !37, i64 36}
!97 = !{!"cgraph_rtl_info", !42, i64 0}
!98 = !{!"cgraph_clone_info", !41, i64 0, !41, i64 8, !41, i64 16}
!99 = !{!"cgraph_thunk_info", !95, i64 0, !95, i64 8, !41, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!100 = !{!92, !41, i64 104}
!101 = !{!92, !41, i64 24}
!102 = distinct !{!102, !52}
!103 = distinct !{!103, !52}
!104 = !{!"lto-symtab.c:lto_cgraph_replace_node"}
!105 = !{!92, !41, i64 200}
!106 = !{!92, !41, i64 16}
!107 = !{!108, !41, i64 32}
!108 = !{!"cgraph_edge", !95, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !109, i64 88, !42, i64 90, !42, i64 90, !42, i64 90}
!109 = !{!"short", !37, i64 0}
!110 = distinct !{!110, !52}
!111 = !{!92, !41, i64 8}
!112 = !{!108, !41, i64 48}
!113 = distinct !{!113, !52}
!114 = distinct !{!114, !52}
!115 = distinct !{!115, !52}
!116 = !{!117, !41, i64 24}
!117 = !{!"htab", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !42, i64 56, !42, i64 60, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !42, i64 104}
!118 = !{!117, !95, i64 32}
!119 = distinct !{!119, !52}
!120 = distinct !{!120, !52}
!121 = distinct !{!121, !52}
!122 = !{!"lto-symtab.c:lto_symtab_entry_marked_p"}
