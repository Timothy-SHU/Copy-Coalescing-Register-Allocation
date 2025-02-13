; ModuleID = 'alias.c'
source_filename = "alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.alias_set_entry_d = type { i32, i32, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_alias_set_entry_base = type { i32, i32, [1 x ptr] }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str = private unnamed_addr constant [8 x i8] c"alias.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@alias_sets = internal global ptr null, align 8
@frame_set = internal global i32 -1, align 4
@reg_known_value_size = internal global i32 0, align 4
@reg_known_value = internal global ptr null, align 8
@reg_known_equiv_p = internal unnamed_addr global ptr null, align 8
@reg_base_value = internal global ptr null, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@flag_argument_noalias = external local_unnamed_addr global i32, align 4
@static_reg_base_value = internal global [53 x ptr] zeroinitializer, align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@memory_modified = internal unnamed_addr global i1 false, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@old_reg_base_value = internal global ptr null, align 8
@new_reg_base_value = internal unnamed_addr global ptr null, align 8
@reg_seen = internal unnamed_addr global ptr null, align 8
@unique_id = internal unnamed_addr global i32 0, align 4
@copying_arguments = internal unnamed_addr global i1 false, align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@gt_ggc_r_gt_alias_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @alias_sets, i64 1, i64 8, ptr @gt_ggc_mx_VEC_alias_set_entry_gc, ptr @gt_pch_nx_VEC_alias_set_entry_gc }, %struct.ggc_root_tab { ptr @reg_known_value, i64 1, i64 8, ptr @gt_ggc_ma_reg_known_value, ptr @gt_pch_na_reg_known_value }, %struct.ggc_root_tab { ptr @static_reg_base_value, i64 53, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @reg_base_value, i64 1, i64 8, ptr @gt_ggc_mx_VEC_rtx_gc, ptr @gt_pch_nx_VEC_rtx_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rd_gt_alias_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @old_reg_base_value, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@varargs_set = internal global i32 -1, align 4
@gt_pch_rs_gt_alias_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @frame_set, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @varargs_set, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @reg_known_value_size, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @alias_set_subset_of(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !187 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4, !prof !188

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !188

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.alias_set_entry_d, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !189
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %0, 0
  %12 = and i1 %11, %10
  br i1 %12, label %20, label %13, !prof !195

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.alias_set_entry_d, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = sext i32 %0 to i64
  %17 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %16) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !197

19:                                               ; preds = %13, %4
  br label %20

20:                                               ; preds = %13, %7, %2, %19
  %21 = phi i8 [ 0, %19 ], [ 1, %2 ], [ 1, %7 ], [ 1, %13 ]
  ret i8 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_alias_set_entry(i32 noundef %0) unnamed_addr #2 !prof !198 !PGOFuncName !199 {
  %2 = load ptr, ptr @alias_sets, align 8
  %3 = tail call fastcc ptr @VEC_alias_set_entry_base_index(ptr noundef %2, i32 noundef %0) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @alias_sets_conflict_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !200 {
  %3 = tail call i32 @alias_sets_must_conflict_p(i32 noundef %0, i32 noundef %1) #16, !range !201
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %32, !prof !202

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !203

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.alias_set_entry_d, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !189
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32, !prof !204

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.alias_set_entry_d, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = sext i32 %1 to i64
  %16 = tail call ptr @splay_tree_lookup(ptr noundef %14, i64 noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32, !prof !204

18:                                               ; preds = %12, %5
  %19 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %1) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21, !prof !205

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.alias_set_entry_d, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !189
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !206

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.alias_set_entry_d, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = sext i32 %0 to i64
  %29 = tail call ptr @splay_tree_lookup(ptr noundef %27, i64 noundef %28) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !207

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %21, %25, %8, %12, %2, %31
  %33 = phi i32 [ 0, %31 ], [ 1, %2 ], [ 1, %12 ], [ 1, %8 ], [ 1, %25 ], [ 1, %21 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @alias_sets_must_conflict_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !200 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  %6 = icmp eq i32 %0, %1
  %7 = or i1 %6, %5
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @insn_alias_sets_conflict_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !208 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %5 = tail call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @walk_mems_1, ptr noundef nonnull %4) #17
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @walk_mems_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !208 !PGOFuncName !209 {
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @for_each_rtx(ptr noundef %1, ptr noundef nonnull @walk_mems_2, ptr noundef nonnull %3) #17
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -1, i32 1
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @objects_must_conflict_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !208 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %28, label %8

8:                                                ; preds = %6
  br i1 %3, label %21, label %9

9:                                                ; preds = %8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 524288
  %12 = icmp ne i64 %11, 0
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 524288
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %9, %15
  %20 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %8, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %8 ]
  br i1 %4, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @get_alias_set(ptr noundef nonnull %1) #16
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %21 ]
  %27 = tail call i32 @alias_sets_must_conflict_p(i32 noundef %22, i32 noundef %26) #16, !range !201
  br label %28

28:                                               ; preds = %6, %15, %2, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %2 ], [ 1, %15 ], [ 1, %6 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_alias_set(ptr noundef %0) local_unnamed_addr #0 !prof !211 {
  %2 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %153, label %4, !prof !213

4:                                                ; preds = %1, %120
  %5 = phi ptr [ %122, %120 ], [ %0, %1 ]
  %6 = load ptr, ptr @global_trees, align 16, !tbaa !210
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %153, label %8, !prof !214

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !212
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %91, label %14, !prof !215

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %6
  %19 = or i1 %17, %18
  br i1 %19, label %153, label %20, !prof !217

20:                                               ; preds = %14
  %21 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %5) #17
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !218
  %23 = tail call i32 %22(ptr noundef %21) #17
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %153, !prof !227

25:                                               ; preds = %20
  %26 = load i64, ptr %21, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 152
  br i1 %28, label %29, label %32, !prof !228

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 1, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ %21, %25 ]
  %34 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %33) #16, !range !229
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36, !prof !230

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %40, %36 ], [ %33, %32 ]
  %38 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !216
  %40 = tail call ptr @tree_strip_nop_conversions(ptr noundef %39) #17
  %41 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %40) #16, !range !229
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %36, !prof !231, !llvm.loop !232

43:                                               ; preds = %36, %32
  %44 = phi ptr [ %33, %32 ], [ %40, %36 ]
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -47
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %55, !prof !234

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !216
  %53 = tail call fastcc i32 @get_deref_alias_set_1(ptr noundef %52) #16, !range !235
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %153, !prof !236

55:                                               ; preds = %43, %50
  %56 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %33) #16, !range !229
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58, !prof !237

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %62, %58 ], [ %33, %55 ]
  %60 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !216
  %62 = tail call ptr @tree_strip_nop_conversions(ptr noundef %61) #17
  %63 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %62) #16, !range !229
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %58, !prof !238, !llvm.loop !239

65:                                               ; preds = %58, %55
  %66 = phi ptr [ %33, %55 ], [ %62, %58 ]
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp ne i64 %68, 32
  %70 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %88, label %73, !prof !240

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %66, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !216
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77, !prof !241

77:                                               ; preds = %73
  %78 = load i32, ptr %75, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 43
  br i1 %80, label %81, label %88, !prof !242

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !216
  %84 = icmp eq ptr %83, null
  br i1 %84, label %153, label %85, !prof !243

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mem_attrs, ptr %83, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !244
  br label %153

88:                                               ; preds = %65, %73, %77
  %89 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !216
  br label %91

91:                                               ; preds = %8, %88
  %92 = phi ptr [ %90, %88 ], [ %5, %8 ]
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 16
  %94 = load ptr, ptr %93, align 8, !tbaa !216
  %95 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !216
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103, !prof !246

98:                                               ; preds = %91
  %99 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !218
  %100 = tail call i32 %99(ptr noundef nonnull %94) #17
  %101 = icmp eq i32 %100, -1
  %102 = select i1 %101, i32 0, i32 %100
  br label %153

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !216
  %106 = icmp eq ptr %105, %96
  br i1 %106, label %108, label %107, !prof !247

107:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 710, ptr noundef nonnull @.str.1) #17
  br label %108

108:                                              ; preds = %103, %107
  %109 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 8
  %110 = load i32, ptr %109, align 4, !tbaa !216
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %153, !prof !248

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !216
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %125, !prof !249

116:                                              ; preds = %112
  %117 = load i64, ptr %96, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 15
  br i1 %119, label %120, label %153

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !216
  %123 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %153, label %4, !prof !250

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 8
  %127 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !218
  %128 = tail call i32 %127(ptr noundef nonnull %96) #17
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %153, !prof !251

130:                                              ; preds = %125
  %131 = load i64, ptr %96, align 8
  %132 = trunc i64 %131 to i16
  switch i16 %132, label %146 [
    i16 20, label %148
    i16 21, label %148
    i16 14, label %133
    i16 15, label %137
  ], !prof !252

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !216
  %136 = tail call i32 @get_alias_set(ptr noundef %135) #16
  br label %148

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 4096
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146, !prof !253

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !216
  %145 = tail call i32 @get_alias_set(ptr noundef %144) #16
  br label %148

146:                                              ; preds = %130, %137
  %147 = tail call i32 @new_alias_set() #16
  br label %148

148:                                              ; preds = %130, %130, %142, %146, %133
  %149 = phi i32 [ %136, %133 ], [ %147, %146 ], [ %145, %142 ], [ 0, %130 ], [ 0, %130 ]
  store i32 %149, ptr %126, align 4, !tbaa !216
  %150 = load i64, ptr %96, align 8
  %151 = trunc i64 %150 to i16
  switch i16 %151, label %153 [
    i16 15, label %152
    i16 16, label %152
    i16 17, label %152
    i16 18, label %152
    i16 13, label %152
  ], !prof !254

152:                                              ; preds = %148, %148, %148, %148, %148
  tail call void @record_component_aliases(ptr noundef nonnull %96) #16
  br label %153

153:                                              ; preds = %14, %4, %120, %108, %116, %20, %50, %1, %85, %81, %152, %148, %125, %98
  %154 = phi i32 [ %102, %98 ], [ %128, %125 ], [ %149, %148 ], [ %149, %152 ], [ 0, %81 ], [ %87, %85 ], [ 0, %1 ], [ 0, %14 ], [ 0, %4 ], [ 0, %120 ], [ %110, %108 ], [ 0, %116 ], [ %23, %20 ], [ 0, %50 ]
  ret i32 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @component_uses_parent_alias_set(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !255 {
  br label %2

2:                                                ; preds = %25, %1
  %3 = phi ptr [ %0, %1 ], [ %27, %25 ]
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %3) #16, !range !229
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6, !prof !256

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %32 [
    i16 41, label %9
    i16 45, label %16
    i16 46, label %16
    i16 43, label %25
    i16 44, label %25
  ], !prof !257

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !216
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 67108864
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %32, !prof !258

16:                                               ; preds = %6, %6
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !216
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !259

25:                                               ; preds = %6, %6, %16, %9
  %26 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = tail call i32 @get_alias_set(ptr noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %2, !prof !260

32:                                               ; preds = %25, %6, %16, %9, %2
  %33 = phi i8 [ 0, %2 ], [ 1, %9 ], [ 1, %16 ], [ 1, %6 ], [ 1, %25 ]
  ret i8 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !261 !PGOFuncName !262 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ], !prof !263

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_deref_alias_set(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !264 {
  %2 = tail call fastcc i32 @get_deref_alias_set_1(ptr noundef %0) #16, !range !235
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %18, !prof !265

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !212
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10, !prof !266

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = tail call i32 @get_alias_set(ptr noundef %16) #16
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_deref_alias_set_1(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !267 !PGOFuncName !268 {
  %2 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4, !prof !269

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !212
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10, !prof !270

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 19
  br i1 %19, label %26, label %20, !prof !269

20:                                               ; preds = %13
  %21 = load i64, ptr %14, align 8
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %22, 26
  %24 = and i32 %23, 1
  %25 = add nsw i32 %24, -1
  br label %26

26:                                               ; preds = %20, %13, %1
  %27 = phi i32 [ 0, %1 ], [ 0, %13 ], [ %25, %20 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @new_alias_set() local_unnamed_addr #0 !prof !271 {
  %1 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %11, label %3, !prof !272

3:                                                ; preds = %0
  %4 = load ptr, ptr @alias_sets, align 8, !tbaa !210
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !273

6:                                                ; preds = %3
  tail call fastcc void @VEC_alias_set_entry_gc_safe_push() #16
  br label %7

7:                                                ; preds = %6, %3
  tail call fastcc void @VEC_alias_set_entry_gc_safe_push() #16
  %8 = load ptr, ptr @alias_sets, align 8
  %9 = tail call fastcc i32 @VEC_alias_set_entry_base_length(ptr noundef %8) #16
  %10 = add i32 %9, -1
  br label %11

11:                                               ; preds = %0, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %0 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_component_aliases(ptr noundef %0) local_unnamed_addr #0 !prof !274 {
  %2 = alloca ptr, align 8
  %3 = tail call i32 @get_alias_set(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5, !prof !275

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %52 [
    i16 16, label %8
    i16 17, label %8
    i16 18, label %8
    i16 13, label %48
  ], !prof !276

8:                                                ; preds = %5, %5, %5
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !216
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !277

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %13 = getelementptr inbounds %struct.tree_binfo, ptr %10, i64 0, i32 9
  %14 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %2) #16, !range !201
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %22, %16 ], [ 0, %12 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !210
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  %21 = tail call i32 @get_alias_set(ptr noundef %20) #16
  tail call void @record_alias_subset(i32 noundef %3, i32 noundef %21) #16
  %22 = add nuw nsw i32 %17, 1
  %23 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %13, i32 noundef %22, ptr noundef nonnull %2) #16, !range !201
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !278

25:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %26

26:                                               ; preds = %25, %8
  %27 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !216
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30, !prof !279

30:                                               ; preds = %26, %44
  %31 = phi ptr [ %46, %44 ], [ %28, %26 ]
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 31
  br i1 %34, label %35, label %44, !prof !280

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44, !prof !281

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  %43 = tail call i32 @get_alias_set(ptr noundef %42) #16
  tail call void @record_alias_subset(i32 noundef %3, i32 noundef %43) #16
  br label %44

44:                                               ; preds = %30, %35, %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !216
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %30, !prof !282, !llvm.loop !283

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !216
  %51 = tail call i32 @get_alias_set(ptr noundef %50) #16
  tail call void @record_alias_subset(i32 noundef %3, i32 noundef %51) #16
  br label %52

52:                                               ; preds = %44, %26, %48, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alias_set_entry_gc_safe_push() unnamed_addr #0 !prof !284 !PGOFuncName !285 {
  tail call fastcc void @VEC_alias_set_entry_gc_reserve() #16
  %1 = load ptr, ptr @alias_sets, align 8, !tbaa !210
  tail call fastcc void @VEC_alias_set_entry_base_quick_push(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alias_set_entry_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !271 !PGOFuncName !286 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !272

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !287
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_alias_subset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !289 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %41, label %4, !prof !290

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7, !prof !290

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 813, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %4, %6
  %8 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !291

10:                                               ; preds = %7
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #17
  store i32 %0, ptr %11, align 8, !tbaa !292
  %12 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.alias_set_entry_d, ptr %11, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !196
  %14 = getelementptr inbounds %struct.alias_set_entry_d, ptr %11, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !189
  %15 = load ptr, ptr @alias_sets, align 8
  tail call fastcc void @VEC_alias_set_entry_base_replace(ptr noundef %15, i32 noundef %0, ptr noundef nonnull %11) #16
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %19, label %21, !prof !293

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 1
  store i32 1, ptr %20, align 4, !tbaa !189
  br label %41

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %1) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24, !prof !294

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.alias_set_entry_d, ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !189
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !295

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 1
  store i32 1, ptr %29, align 4, !tbaa !189
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.alias_set_entry_d, ptr %22, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !196
  %35 = tail call i32 @splay_tree_foreach(ptr noundef %32, ptr noundef nonnull @insert_subset_children, ptr noundef %34) #17
  br label %36

36:                                               ; preds = %30, %21
  %37 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  %39 = sext i32 %1 to i64
  %40 = tail call ptr @splay_tree_insert(ptr noundef %38, i64 noundef %39, i64 noundef 0) #17
  br label %41

41:                                               ; preds = %19, %36, %2
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

; Function Attrs: optsize
declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_alias_set_entry_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !296 !PGOFuncName !297 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !210
  ret void
}

; Function Attrs: optsize
declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_subset_children(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !298 !PGOFuncName !299 {
  %3 = load i64, ptr %0, align 8, !tbaa !300
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !302
  %6 = tail call ptr @splay_tree_insert(ptr noundef %1, i64 noundef %3, i64 noundef %5) #17
  ret i32 0
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !208 !PGOFuncName !303 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !304
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !210
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_varargs_alias_set() local_unnamed_addr #4 !prof !208 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_frame_alias_set() local_unnamed_addr #0 !prof !306 {
  %1 = load i32, ptr @frame_set, align 4, !tbaa !212
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5, !prof !307

3:                                                ; preds = %0
  %4 = tail call i32 @new_alias_set() #16
  store i32 %4, ptr @frame_set, align 4, !tbaa !212
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_reg_known_value(i32 noundef %0) local_unnamed_addr #2 !prof !308 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %12, !prof !309

3:                                                ; preds = %1
  %4 = add i32 %0, -53
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12, !prof !310

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @get_reg_known_equiv_p(i32 noundef %0) local_unnamed_addr #2 !prof !208 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = add i32 %0, -53
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !210
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !216
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i8 [ %11, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canon_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !311 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %11, %13 ]
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %15, !prof !312

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #16
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %10, label %15, !prof !313

10:                                               ; preds = %7
  %11 = tail call ptr @get_reg_known_value(i32 noundef %8) #16
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %50, label %13, !prof !314

13:                                               ; preds = %10
  %14 = icmp eq ptr %11, null
  br i1 %14, label %15, label %2, !prof !315

15:                                               ; preds = %13, %7, %2
  %16 = trunc i32 %4 to i16
  switch i16 %16, label %50 [
    i16 49, label %17
    i16 43, label %52
  ], !prof !316

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = tail call ptr @canon_rtx(ptr noundef %19) #16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !216
  %23 = tail call ptr @canon_rtx(ptr noundef %22) #16
  %24 = load ptr, ptr %18, align 8, !tbaa !216
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %26, label %29, !prof !317

26:                                               ; preds = %17
  %27 = load ptr, ptr %21, align 8, !tbaa !216
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %50, label %29, !prof !317

29:                                               ; preds = %26, %17
  %30 = load i32, ptr %20, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 30
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !216
  %36 = tail call ptr @plus_constant(ptr noundef %23, i64 noundef %35) #17
  br label %50

37:                                               ; preds = %29
  %38 = load i32, ptr %23, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 30
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !216
  %44 = tail call ptr @plus_constant(ptr noundef nonnull %20, i64 noundef %43) #17
  br label %50

45:                                               ; preds = %37
  %46 = load i32, ptr %3, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %48, ptr noundef nonnull %20, ptr noundef nonnull %23) #17
  br label %50

50:                                               ; preds = %45, %41, %33, %26, %15, %10, %52
  %51 = phi ptr [ %56, %52 ], [ %3, %15 ], [ %3, %26 ], [ %49, %45 ], [ %44, %41 ], [ %36, %33 ], [ %3, %10 ]
  ret ptr %51

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !216
  %55 = tail call ptr @canon_rtx(ptr noundef %54) #16
  %56 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %3, ptr noundef %55) #17
  br label %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !318 !PGOFuncName !319 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !216
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_base_term(ptr noundef %0) local_unnamed_addr #0 !prof !320 {
  br label %2

2:                                                ; preds = %31, %1
  %3 = phi ptr [ %0, %1 ], [ %32, %31 ]
  %4 = tail call ptr @ix86_find_base_term(ptr noundef %3) #17
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %137 [
    i16 37, label %7
    i16 100, label %14
    i16 121, label %26
    i16 75, label %26
    i16 74, label %26
    i16 77, label %26
    i16 76, label %26
    i16 78, label %26
    i16 79, label %26
    i16 99, label %33
    i16 98, label %33
    i16 1, label %50
    i16 122, label %65
    i16 35, label %67
    i16 49, label %74
    i16 50, label %74
    i16 61, label %125
    i16 45, label %136
    i16 44, label %136
  ], !prof !321

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #16
  %9 = load ptr, ptr @reg_base_value, align 8
  %10 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %9) #16
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %137, !prof !322

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %9, i32 noundef %8) #16
  br label %137

14:                                               ; preds = %2
  %15 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %137, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !216
  %24 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !216
  %25 = icmp ult i8 %23, %24
  br i1 %25, label %137, label %26

26:                                               ; preds = %17, %2, %2, %2, %2, %2, %2, %2
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %28

28:                                               ; preds = %131, %65, %26
  %29 = phi ptr [ %27, %26 ], [ %66, %65 ], [ %132, %131 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  br label %31

31:                                               ; preds = %28, %82
  %32 = phi ptr [ %79, %82 ], [ %30, %28 ]
  br label %2

33:                                               ; preds = %2, %2
  %34 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %137, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !216
  %39 = tail call ptr @find_base_term(ptr noundef %38) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %137, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %39, align 8
  %43 = and i32 %42, 65535
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !212
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %137

48:                                               ; preds = %41
  %49 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %39, i8 noundef zeroext 0) #17
  br label %137

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !216
  %53 = icmp eq ptr %52, null
  br i1 %53, label %137, label %54, !prof !323

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cselib_val_struct, ptr %52, i64 0, i32 3
  br label %56

56:                                               ; preds = %60, %54
  %57 = phi ptr [ %55, %54 ], [ %58, %60 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !210
  %59 = icmp eq ptr %58, null
  br i1 %59, label %137, label %60, !prof !324

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.elt_loc_list, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !325
  %63 = tail call ptr @find_base_term(ptr noundef %62) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %56, label %137, !prof !327, !llvm.loop !328

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %28

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !216
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -49
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %137, !prof !329

74:                                               ; preds = %67, %2, %2
  %75 = phi ptr [ %4, %2 ], [ %4, %2 ], [ %69, %67 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !216
  %78 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !216
  %80 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !210
  %81 = icmp eq ptr %77, %80
  br i1 %81, label %82, label %89, !prof !330

82:                                               ; preds = %74
  %83 = load i32, ptr %79, align 8
  %84 = and i32 %83, 65535
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !212
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %31, label %89

89:                                               ; preds = %82, %74
  %90 = load i32, ptr %77, align 8
  %91 = and i32 %90, 1073807359
  %92 = icmp eq i32 %91, 1073741861
  br i1 %92, label %93, label %96, !prof !331

93:                                               ; preds = %89
  %94 = tail call ptr @find_base_term(ptr noundef nonnull %77) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %137

96:                                               ; preds = %93, %89
  %97 = load i32, ptr %79, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %106, !prof !332

100:                                              ; preds = %96
  %101 = and i32 %97, 1073741824
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = tail call ptr @find_base_term(ptr noundef nonnull %79) #16
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %137

106:                                              ; preds = %103, %100, %96
  %107 = tail call ptr @find_base_term(ptr noundef nonnull %77) #16
  %108 = tail call ptr @find_base_term(ptr noundef nonnull %79) #16
  %109 = icmp eq ptr %107, null
  br i1 %109, label %116, label %110, !prof !333

110:                                              ; preds = %106
  %111 = load i32, ptr %107, align 8
  %112 = trunc i32 %111 to i16
  switch i16 %112, label %116 [
    i16 45, label %137
    i16 44, label %137
    i16 6, label %113
  ], !prof !334

113:                                              ; preds = %110
  %114 = and i32 %111, 16711680
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %137, !prof !335

116:                                              ; preds = %110, %113, %106
  %117 = icmp eq ptr %108, null
  br i1 %117, label %124, label %118, !prof !336

118:                                              ; preds = %116
  %119 = load i32, ptr %108, align 8
  %120 = trunc i32 %119 to i16
  switch i16 %120, label %124 [
    i16 45, label %137
    i16 44, label %137
    i16 6, label %121
  ]

121:                                              ; preds = %118
  %122 = and i32 %119, 16711680
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %118, %121, %116
  br label %137

125:                                              ; preds = %2
  %126 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !216
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %133 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !216
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %137, label %28

136:                                              ; preds = %2, %2
  br label %137

137:                                              ; preds = %56, %60, %67, %125, %131, %17, %14, %2, %136, %124, %103, %93, %110, %110, %113, %118, %118, %121, %50, %36, %41, %48, %33, %12, %7
  %138 = phi ptr [ %13, %12 ], [ null, %7 ], [ null, %33 ], [ %49, %48 ], [ %39, %41 ], [ null, %36 ], [ null, %50 ], [ null, %124 ], [ %104, %103 ], [ %94, %93 ], [ %107, %110 ], [ %107, %110 ], [ %107, %113 ], [ %108, %118 ], [ %108, %118 ], [ %108, %121 ], [ %4, %136 ], [ null, %2 ], [ null, %14 ], [ null, %17 ], [ null, %131 ], [ null, %125 ], [ null, %67 ], [ null, %56 ], [ %63, %60 ]
  ret ptr %138
}

; Function Attrs: optsize
declare ptr @ix86_find_base_term(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !337 !PGOFuncName !338 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !339

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !340
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_rtx_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !342 !PGOFuncName !343 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !210
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @target_default_pointer_address_modes_p() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_addr(ptr noundef readonly %0) local_unnamed_addr #7 !prof !344 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %40, !prof !345

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9, !prof !346

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %7, i64 0, i32 3
  br label %11

11:                                               ; preds = %18, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %18 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !210
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !347

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !210
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %27, !prof !348

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !325
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !212
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %40, label %11, !prof !349, !llvm.loop !350

27:                                               ; preds = %15, %33
  %28 = phi ptr [ %34, %33 ], [ %16, %15 ]
  %29 = getelementptr inbounds %struct.elt_loc_list, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !325
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %40 [
    i16 37, label %33
    i16 43, label %33
  ], !prof !351

33:                                               ; preds = %27, %27
  %34 = load ptr, ptr %28, align 8, !tbaa !210
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !prof !352, !llvm.loop !353

36:                                               ; preds = %33
  br i1 %17, label %40, label %37, !prof !354

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.elt_loc_list, ptr %16, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !325
  br label %40

40:                                               ; preds = %18, %27, %15, %5, %36, %1, %37
  %41 = phi ptr [ %39, %37 ], [ %0, %1 ], [ %0, %36 ], [ %0, %5 ], [ %0, %15 ], [ %30, %27 ], [ %20, %18 ]
  ret ptr %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @read_dependence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !355 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 134217728
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !356

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 27
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonoverlapping_memrefs_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !357 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !358

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !359
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !216
  %12 = icmp eq ptr %11, null
  br i1 %12, label %522, label %13, !prof !360

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !359
  %15 = icmp eq ptr %9, null
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %522, label %18, !prof !361

18:                                               ; preds = %13
  %19 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #17
  %20 = icmp eq ptr %9, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8, !tbaa !216
  %23 = icmp eq ptr %22, null
  br i1 %23, label %522, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !362
  %27 = icmp eq ptr %26, null
  br i1 %27, label %522, label %28

28:                                               ; preds = %24, %18
  %29 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #17
  %30 = icmp eq ptr %14, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load ptr, ptr %10, align 8, !tbaa !216
  %33 = icmp eq ptr %32, null
  br i1 %33, label %522, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !362
  %37 = icmp eq ptr %36, null
  br i1 %37, label %522, label %38

38:                                               ; preds = %34, %28
  %39 = load i64, ptr %9, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 41
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, ptr %14, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 41
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = tail call fastcc zeroext i8 @nonoverlapping_component_refs_p(ptr noundef nonnull %9, ptr noundef nonnull %14) #16, !range !229
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %522

49:                                               ; preds = %46, %42, %38
  %50 = load ptr, ptr %3, align 8, !tbaa !216
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !362
  br label %55

55:                                               ; preds = %49, %52
  %56 = phi ptr [ %54, %52 ], [ null, %49 ]
  %57 = trunc i64 %39 to i16
  switch i16 %57, label %90 [
    i16 41, label %58
    i16 47, label %81
    i16 48, label %81
    i16 49, label %81
  ]

58:                                               ; preds = %55
  %59 = load i64, ptr %14, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !216
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %76 [
    i16 10, label %67
    i16 12, label %67
  ]

67:                                               ; preds = %62, %62
  %68 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !216
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !216
  %72 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !216
  %74 = tail call zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef %71, ptr noundef %73) #17
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %522

76:                                               ; preds = %62, %67, %58
  %77 = tail call fastcc ptr @decl_for_component_ref(ptr noundef nonnull %9) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %522, label %79

79:                                               ; preds = %76
  %80 = tail call fastcc ptr @adjust_offset_for_component_ref(ptr noundef nonnull %9, ptr noundef %56) #16
  br label %90

81:                                               ; preds = %55, %55, %55
  %82 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !212
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %522, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !216
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 34
  br i1 %89, label %90, label %522

90:                                               ; preds = %79, %55, %84
  %91 = phi ptr [ %80, %79 ], [ %56, %84 ], [ %56, %55 ]
  %92 = phi ptr [ %77, %79 ], [ %86, %84 ], [ %9, %55 ]
  %93 = load ptr, ptr %10, align 8, !tbaa !216
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.mem_attrs, ptr %93, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !362
  br label %98

98:                                               ; preds = %90, %95
  %99 = phi ptr [ %97, %95 ], [ null, %90 ]
  %100 = load i64, ptr %14, align 8
  %101 = trunc i64 %100 to i16
  switch i16 %101, label %134 [
    i16 41, label %102
    i16 47, label %125
    i16 48, label %125
    i16 49, label %125
  ]

102:                                              ; preds = %98
  %103 = load i64, ptr %92, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 32
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !216
  %109 = load i64, ptr %108, align 8
  %110 = trunc i64 %109 to i16
  switch i16 %110, label %120 [
    i16 10, label %111
    i16 12, label %111
  ]

111:                                              ; preds = %106, %106
  %112 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !216
  %114 = getelementptr inbounds %struct.tree_decl_minimal, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !216
  %116 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !216
  %118 = tail call zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef %115, ptr noundef %117) #17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %522

120:                                              ; preds = %106, %111, %102
  %121 = tail call fastcc ptr @decl_for_component_ref(ptr noundef nonnull %14) #16
  %122 = icmp eq ptr %121, null
  br i1 %122, label %522, label %123

123:                                              ; preds = %120
  %124 = tail call fastcc ptr @adjust_offset_for_component_ref(ptr noundef nonnull %14, ptr noundef %99) #16
  br label %134

125:                                              ; preds = %98, %98, %98
  %126 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !212
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %522, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !216
  %131 = load i64, ptr %130, align 8
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 34
  br i1 %133, label %134, label %522

134:                                              ; preds = %123, %98, %128
  %135 = phi ptr [ %124, %123 ], [ %99, %128 ], [ %99, %98 ]
  %136 = phi ptr [ %121, %123 ], [ %130, %128 ], [ %14, %98 ]
  %137 = load i64, ptr %92, align 8
  %138 = and i64 %137, 65535
  %139 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !212
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %522

142:                                              ; preds = %134
  %143 = load i64, ptr %136, align 8
  %144 = and i64 %143, 65535
  %145 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !212
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %522

148:                                              ; preds = %142
  %149 = icmp eq i64 %138, 33
  %150 = icmp eq i64 %144, 33
  %151 = or i1 %149, %150
  br i1 %151, label %522, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %92, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !216
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  tail call void @make_decl_rtl(ptr noundef nonnull %92) #17
  %157 = load ptr, ptr %153, align 8, !tbaa !216
  br label %158

158:                                              ; preds = %152, %156
  %159 = phi ptr [ %157, %156 ], [ %154, %152 ]
  %160 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %136, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !216
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  tail call void @make_decl_rtl(ptr noundef nonnull %136) #17
  %164 = load ptr, ptr %160, align 8, !tbaa !216
  br label %165

165:                                              ; preds = %158, %163
  %166 = phi ptr [ %164, %163 ], [ %161, %158 ]
  %167 = load i32, ptr %159, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 43
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, ptr %166, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %179, label %174

174:                                              ; preds = %170, %165
  %175 = tail call i32 @rtx_equal_p(ptr noundef nonnull %159, ptr noundef %166) #17
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %522, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %159, align 8
  br label %179

179:                                              ; preds = %177, %170
  %180 = phi i32 [ %178, %177 ], [ %167, %170 ]
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 43
  br i1 %182, label %183, label %211

183:                                              ; preds = %179
  %184 = load i32, ptr %166, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 43
  br i1 %186, label %187, label %207

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !216
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 5
  %193 = load i8, ptr %192, align 8, !tbaa !363
  %194 = zext i8 %193 to i32
  br label %195

195:                                              ; preds = %187, %191
  %196 = phi i32 [ %194, %191 ], [ 0, %187 ]
  %197 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !216
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.mem_attrs, ptr %198, i64 0, i32 5
  %202 = load i8, ptr %201, align 8, !tbaa !363
  %203 = zext i8 %202 to i32
  br label %204

204:                                              ; preds = %195, %200
  %205 = phi i32 [ %203, %200 ], [ 0, %195 ]
  %206 = icmp eq i32 %196, %205
  br i1 %206, label %207, label %522

207:                                              ; preds = %204, %183
  %208 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !216
  %210 = load i32, ptr %209, align 8
  br label %211

211:                                              ; preds = %179, %207
  %212 = phi i32 [ %210, %207 ], [ %180, %179 ]
  %213 = phi ptr [ %209, %207 ], [ %159, %179 ]
  %214 = and i32 %212, 65535
  %215 = icmp eq i32 %214, 49
  br i1 %215, label %216, label %227

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !216
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 30
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %224 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !216
  %226 = load ptr, ptr %223, align 8, !tbaa !216
  br label %227

227:                                              ; preds = %222, %216, %211
  %228 = phi i64 [ %225, %222 ], [ 0, %216 ], [ 0, %211 ]
  %229 = phi ptr [ %226, %222 ], [ %213, %216 ], [ %213, %211 ]
  %230 = load i32, ptr %166, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 43
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !216
  %236 = load i32, ptr %235, align 8
  br label %237

237:                                              ; preds = %227, %233
  %238 = phi i32 [ %236, %233 ], [ %230, %227 ]
  %239 = phi ptr [ %235, %233 ], [ %166, %227 ]
  %240 = and i32 %238, 65535
  %241 = icmp eq i32 %240, 49
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1, i32 0, i32 0, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !216
  %245 = load i32, ptr %244, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 30
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %250 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !216
  %252 = load ptr, ptr %249, align 8, !tbaa !216
  br label %253

253:                                              ; preds = %248, %242, %237
  %254 = phi i64 [ %251, %248 ], [ 0, %242 ], [ 0, %237 ]
  %255 = phi ptr [ %252, %248 ], [ %239, %242 ], [ %239, %237 ]
  %256 = tail call i32 @rtx_equal_p(ptr noundef %229, ptr noundef %255) #17
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %295

258:                                              ; preds = %253
  %259 = load i32, ptr %229, align 8
  %260 = and i32 %259, 65535
  %261 = zext nneg i32 %260 to i64
  %262 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !212
  %264 = icmp eq i32 %263, 9
  %265 = load i32, ptr %255, align 8
  %266 = and i32 %265, 65535
  %267 = zext nneg i32 %266 to i64
  br i1 %264, label %268, label %281

268:                                              ; preds = %258
  %269 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %267
  %270 = load i32, ptr %269, align 4, !tbaa !212
  %271 = icmp eq i32 %270, 9
  br i1 %271, label %522, label %272

272:                                              ; preds = %268
  %273 = icmp eq i32 %266, 37
  br i1 %273, label %274, label %281

274:                                              ; preds = %272
  %275 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %255) #16
  %276 = add i32 %275, -6
  %277 = icmp ult i32 %276, 15
  br i1 %277, label %512, label %278

278:                                              ; preds = %274
  %279 = add i32 %275, -53
  %280 = icmp ult i32 %279, 5
  br i1 %280, label %522, label %281

281:                                              ; preds = %512, %258, %278, %272
  %282 = phi i64 [ 37, %278 ], [ %267, %272 ], [ %267, %258 ], [ 37, %512 ]
  %283 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !212
  %285 = icmp eq i32 %284, 9
  %286 = icmp eq i32 %260, 37
  %287 = and i1 %286, %285
  br i1 %287, label %288, label %522

288:                                              ; preds = %281
  %289 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %229) #16
  %290 = add i32 %289, -6
  %291 = icmp ult i32 %290, 15
  br i1 %291, label %517, label %292

292:                                              ; preds = %517, %288
  %293 = add i32 %289, -53
  %294 = icmp ult i32 %293, 5
  br label %522

295:                                              ; preds = %253
  %296 = load i32, ptr %159, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 43
  br i1 %298, label %306, label %299

299:                                              ; preds = %295
  %300 = lshr i32 %296, 16
  %301 = and i32 %300, 255
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !216
  %305 = zext i8 %304 to i64
  br label %346

306:                                              ; preds = %295
  %307 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !216
  %309 = icmp eq ptr %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.mem_attrs, ptr %308, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !364
  %313 = icmp eq ptr %312, null
  br i1 %313, label %346, label %328

314:                                              ; preds = %306
  %315 = lshr i32 %296, 16
  %316 = and i32 %315, 255
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %346, label %318

318:                                              ; preds = %314
  %319 = zext nneg i32 %316 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !216
  %322 = zext i8 %321 to i64
  %323 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %322) #17
  %324 = icmp eq ptr %323, null
  br i1 %324, label %346, label %325

325:                                              ; preds = %318
  %326 = load ptr, ptr %307, align 8, !tbaa !216
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %310, %325
  %329 = phi ptr [ %326, %325 ], [ %308, %310 ]
  %330 = getelementptr inbounds %struct.mem_attrs, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !364
  br label %342

332:                                              ; preds = %325
  %333 = load i32, ptr %159, align 8
  %334 = lshr i32 %333, 16
  %335 = and i32 %334, 255
  %336 = icmp ne i32 %335, 1
  tail call void @llvm.assume(i1 %336)
  %337 = zext nneg i32 %335 to i64
  %338 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !216
  %340 = zext i8 %339 to i64
  %341 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %340) #17
  br label %342

342:                                              ; preds = %332, %328
  %343 = phi ptr [ %331, %328 ], [ %341, %332 ]
  %344 = getelementptr inbounds %struct.rtx_def, ptr %343, i64 0, i32 1
  %345 = load i64, ptr %344, align 8, !tbaa !216
  br label %346

346:                                              ; preds = %342, %314, %318, %310, %299
  %347 = phi i64 [ %305, %299 ], [ %345, %342 ], [ -1, %314 ], [ -1, %318 ], [ -1, %310 ]
  %348 = load i32, ptr %166, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 43
  br i1 %350, label %358, label %351

351:                                              ; preds = %346
  %352 = lshr i32 %348, 16
  %353 = and i32 %352, 255
  %354 = zext nneg i32 %353 to i64
  %355 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !216
  %357 = zext i8 %356 to i64
  br label %398

358:                                              ; preds = %346
  %359 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !216
  %361 = icmp eq ptr %360, null
  br i1 %361, label %366, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.mem_attrs, ptr %360, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !364
  %365 = icmp eq ptr %364, null
  br i1 %365, label %398, label %380

366:                                              ; preds = %358
  %367 = lshr i32 %348, 16
  %368 = and i32 %367, 255
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %398, label %370

370:                                              ; preds = %366
  %371 = zext nneg i32 %368 to i64
  %372 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !216
  %374 = zext i8 %373 to i64
  %375 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %374) #17
  %376 = icmp eq ptr %375, null
  br i1 %376, label %398, label %377

377:                                              ; preds = %370
  %378 = load ptr, ptr %359, align 8, !tbaa !216
  %379 = icmp eq ptr %378, null
  br i1 %379, label %384, label %380

380:                                              ; preds = %362, %377
  %381 = phi ptr [ %378, %377 ], [ %360, %362 ]
  %382 = getelementptr inbounds %struct.mem_attrs, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !364
  br label %394

384:                                              ; preds = %377
  %385 = load i32, ptr %166, align 8
  %386 = lshr i32 %385, 16
  %387 = and i32 %386, 255
  %388 = icmp ne i32 %387, 1
  tail call void @llvm.assume(i1 %388)
  %389 = zext nneg i32 %387 to i64
  %390 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !216
  %392 = zext i8 %391 to i64
  %393 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %392) #17
  br label %394

394:                                              ; preds = %384, %380
  %395 = phi ptr [ %383, %380 ], [ %393, %384 ]
  %396 = getelementptr inbounds %struct.rtx_def, ptr %395, i64 0, i32 1
  %397 = load i64, ptr %396, align 8, !tbaa !216
  br label %398

398:                                              ; preds = %394, %366, %370, %362, %351
  %399 = phi i64 [ %357, %351 ], [ %397, %394 ], [ -1, %366 ], [ -1, %370 ], [ -1, %362 ]
  %400 = icmp eq ptr %91, null
  br i1 %400, label %406, label %401

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %403 = load i64, ptr %402, align 8, !tbaa !216
  %404 = add nsw i64 %403, %228
  %405 = sub nsw i64 %347, %403
  br label %406

406:                                              ; preds = %401, %398
  %407 = phi i64 [ %404, %401 ], [ %228, %398 ]
  %408 = phi i64 [ %405, %401 ], [ %347, %398 ]
  %409 = icmp eq ptr %135, null
  br i1 %409, label %415, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %412 = load i64, ptr %411, align 8, !tbaa !216
  %413 = add nsw i64 %412, %254
  %414 = sub nsw i64 %399, %412
  br label %415

415:                                              ; preds = %410, %406
  %416 = phi i64 [ %413, %410 ], [ %254, %406 ]
  %417 = phi i64 [ %414, %410 ], [ %399, %406 ]
  %418 = load ptr, ptr %3, align 8, !tbaa !216
  %419 = icmp eq ptr %418, null
  br i1 %419, label %425, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.mem_attrs, ptr %418, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !364
  %423 = icmp eq ptr %422, null
  %424 = or i1 %400, %423
  br i1 %424, label %459, label %441

425:                                              ; preds = %415
  %426 = load i32, ptr %0, align 8
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %459, label %430

430:                                              ; preds = %425
  %431 = zext nneg i32 %428 to i64
  %432 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !216
  %434 = zext i8 %433 to i64
  %435 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %434) #17
  %436 = icmp eq ptr %435, null
  %437 = or i1 %400, %436
  br i1 %437, label %459, label %438

438:                                              ; preds = %430
  %439 = load ptr, ptr %3, align 8, !tbaa !216
  %440 = icmp eq ptr %439, null
  br i1 %440, label %445, label %441

441:                                              ; preds = %420, %438
  %442 = phi ptr [ %439, %438 ], [ %418, %420 ]
  %443 = getelementptr inbounds %struct.mem_attrs, ptr %442, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !364
  br label %455

445:                                              ; preds = %438
  %446 = load i32, ptr %0, align 8
  %447 = lshr i32 %446, 16
  %448 = and i32 %447, 255
  %449 = icmp ne i32 %448, 1
  tail call void @llvm.assume(i1 %449)
  %450 = zext nneg i32 %448 to i64
  %451 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !216
  %453 = zext i8 %452 to i64
  %454 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %453) #17
  br label %455

455:                                              ; preds = %445, %441
  %456 = phi ptr [ %444, %441 ], [ %454, %445 ]
  %457 = getelementptr inbounds %struct.rtx_def, ptr %456, i64 0, i32 1
  %458 = load i64, ptr %457, align 8, !tbaa !216
  br label %459

459:                                              ; preds = %420, %430, %425, %455
  %460 = phi i64 [ %458, %455 ], [ %408, %420 ], [ %408, %430 ], [ %408, %425 ]
  %461 = load ptr, ptr %10, align 8, !tbaa !216
  %462 = icmp eq ptr %461, null
  br i1 %462, label %468, label %463

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.mem_attrs, ptr %461, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !364
  %466 = icmp eq ptr %465, null
  %467 = or i1 %409, %466
  br i1 %467, label %502, label %484

468:                                              ; preds = %459
  %469 = load i32, ptr %1, align 8
  %470 = lshr i32 %469, 16
  %471 = and i32 %470, 255
  %472 = icmp eq i32 %471, 1
  br i1 %472, label %502, label %473

473:                                              ; preds = %468
  %474 = zext nneg i32 %471 to i64
  %475 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !216
  %477 = zext i8 %476 to i64
  %478 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %477) #17
  %479 = icmp eq ptr %478, null
  %480 = or i1 %409, %479
  br i1 %480, label %502, label %481

481:                                              ; preds = %473
  %482 = load ptr, ptr %10, align 8, !tbaa !216
  %483 = icmp eq ptr %482, null
  br i1 %483, label %488, label %484

484:                                              ; preds = %463, %481
  %485 = phi ptr [ %482, %481 ], [ %461, %463 ]
  %486 = getelementptr inbounds %struct.mem_attrs, ptr %485, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !364
  br label %498

488:                                              ; preds = %481
  %489 = load i32, ptr %1, align 8
  %490 = lshr i32 %489, 16
  %491 = and i32 %490, 255
  %492 = icmp ne i32 %491, 1
  tail call void @llvm.assume(i1 %492)
  %493 = zext nneg i32 %491 to i64
  %494 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !216
  %496 = zext i8 %495 to i64
  %497 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %496) #17
  br label %498

498:                                              ; preds = %488, %484
  %499 = phi ptr [ %487, %484 ], [ %497, %488 ]
  %500 = getelementptr inbounds %struct.rtx_def, ptr %499, i64 0, i32 1
  %501 = load i64, ptr %500, align 8, !tbaa !216
  br label %502

502:                                              ; preds = %463, %473, %468, %498
  %503 = phi i64 [ %501, %498 ], [ %417, %463 ], [ %417, %473 ], [ %417, %468 ]
  %504 = icmp sgt i64 %407, %416
  %505 = tail call i64 @llvm.smin.i64(i64 %407, i64 %416)
  %506 = tail call i64 @llvm.smax.i64(i64 %407, i64 %416)
  %507 = select i1 %504, i64 %503, i64 %460
  %508 = icmp sgt i64 %507, -1
  %509 = add nsw i64 %507, %505
  %510 = icmp sge i64 %506, %509
  %511 = select i1 %508, i1 %510, i1 false
  br label %522

512:                                              ; preds = %274
  %513 = trunc i32 %276 to i16
  %514 = lshr i16 17411, %513
  %515 = and i16 %514, 1
  %516 = icmp eq i16 %515, 0
  br i1 %516, label %281, label %522

517:                                              ; preds = %288
  %518 = trunc i32 %290 to i16
  %519 = lshr i16 17411, %518
  %520 = and i16 %519, 1
  %521 = icmp eq i16 %520, 0
  br i1 %521, label %292, label %522

522:                                              ; preds = %517, %512, %292, %278, %120, %76, %8, %268, %281, %204, %174, %148, %134, %142, %125, %128, %81, %84, %46, %24, %34, %21, %31, %13, %67, %111, %502
  %523 = phi i1 [ %511, %502 ], [ true, %111 ], [ true, %67 ], [ false, %13 ], [ false, %31 ], [ false, %21 ], [ false, %34 ], [ false, %24 ], [ true, %46 ], [ false, %84 ], [ false, %81 ], [ false, %128 ], [ false, %125 ], [ false, %142 ], [ false, %134 ], [ true, %148 ], [ true, %174 ], [ false, %204 ], [ true, %268 ], [ false, %281 ], [ false, %8 ], [ false, %76 ], [ false, %120 ], [ true, %278 ], [ %294, %292 ], [ true, %512 ], [ true, %517 ]
  %524 = zext i1 %523 to i32
  ret i32 %524
}

; Function Attrs: optsize
declare ptr @get_spill_slot_decl(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @nonoverlapping_component_refs_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !208 !PGOFuncName !365 {
  %3 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %2, %57
  %6 = phi ptr [ %49, %57 ], [ %1, %2 ]
  %7 = phi ptr [ %48, %57 ], [ %0, %2 ]
  br label %8

8:                                                ; preds = %37, %5
  %9 = phi ptr [ %7, %5 ], [ %35, %37 ]
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  br label %17

17:                                               ; preds = %30, %8
  %18 = phi ptr [ %6, %8 ], [ %28, %30 ]
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %20 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !216
  %26 = icmp eq ptr %16, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %19, align 8, !tbaa !216
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, ptr %28, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 41
  br i1 %33, label %17, label %34, !llvm.loop !366

34:                                               ; preds = %27, %30
  %35 = load ptr, ptr %10, align 8, !tbaa !216
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 41
  br i1 %40, label %8, label %61, !llvm.loop !367

41:                                               ; preds = %17
  %42 = load i64, ptr %16, align 8
  %43 = and i64 %42, 65535
  %44 = icmp ne i64 %43, 16
  %45 = icmp eq ptr %12, %21
  %46 = or i1 %45, %44
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load ptr, ptr %10, align 8, !tbaa !216
  %49 = load ptr, ptr %19, align 8, !tbaa !216
  %50 = icmp ne ptr %48, null
  %51 = icmp ne ptr %49, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i64, ptr %48, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 41
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, ptr %49, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 41
  br i1 %60, label %5, label %61, !llvm.loop !368

61:                                               ; preds = %57, %47, %53, %41, %37, %34, %2
  %62 = phi i8 [ 0, %2 ], [ 0, %34 ], [ 0, %37 ], [ 0, %57 ], [ 0, %47 ], [ 0, %53 ], [ 1, %41 ]
  ret i8 %62
}

; Function Attrs: optsize
declare zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @decl_for_component_ref(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !208 !PGOFuncName !369 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 41
  br i1 %10, label %2, label %11, !llvm.loop !370

11:                                               ; preds = %7
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !212
  %14 = icmp eq i32 %13, 3
  %15 = select i1 %14, ptr %5, ptr null
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi ptr [ %15, %11 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @adjust_offset_for_component_ref(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !208 !PGOFuncName !371 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !216
  br label %7

7:                                                ; preds = %26, %4
  %8 = phi i64 [ %6, %4 ], [ %23, %26 ]
  %9 = phi ptr [ %0, %4 ], [ %24, %26 ]
  %10 = tail call ptr @component_ref_field_offset(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !216
  %13 = tail call i32 @host_integerp(ptr noundef %10, i32 noundef 1) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %17 = tail call i64 @tree_low_cst(ptr noundef %10, i32 noundef 1) #17
  %18 = getelementptr inbounds %struct.tree_field_decl, ptr %12, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = tail call i64 @tree_low_cst(ptr noundef %19, i32 noundef 1) #17
  %21 = sdiv i64 %20, 8
  %22 = add i64 %17, %8
  %23 = add i64 %22, %21
  %24 = load ptr, ptr %16, align 8, !tbaa !216
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 41
  br i1 %29, label %7, label %30, !llvm.loop !372

30:                                               ; preds = %15, %26
  %31 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %23) #17
  br label %32

32:                                               ; preds = %7, %2, %30
  %33 = phi ptr [ %31, %30 ], [ null, %2 ], [ null, %7 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @true_dependence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !373 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 134217728
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !374

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %134

12:                                               ; preds = %8, %4
  %13 = and i32 %5, 16711680
  %14 = icmp eq i32 %13, 65536
  br i1 %14, label %15, label %21, !prof !375

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 38
  br i1 %20, label %134, label %21

21:                                               ; preds = %15, %12
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 16711680
  %24 = icmp eq i32 %23, 65536
  br i1 %24, label %25, label %31, !prof !376

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %134, label %31, !prof !377

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !216
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !378

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !244
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %134, label %40, !prof !379

40:                                               ; preds = %31, %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !380

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !244
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %134, label %52, !prof !381

49:                                               ; preds = %40
  %50 = and i32 %5, 67108864
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %134, !prof !382

52:                                               ; preds = %45
  %53 = and i32 %5, 67108864
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %134, !prof !382

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 5
  %57 = load i8, ptr %56, align 8, !tbaa !363
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %49, %55
  %60 = phi i32 [ %58, %55 ], [ 0, %49 ]
  br i1 %35, label %65, label %61, !prof !378

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 5
  %63 = load i8, ptr %62, align 8, !tbaa !363
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %59, %61
  %66 = phi i32 [ %64, %61 ], [ 0, %59 ]
  %67 = icmp eq i32 %60, %66
  br i1 %67, label %68, label %134, !prof !382

68:                                               ; preds = %65
  %69 = icmp eq i32 %1, 0
  %70 = lshr i32 %22, 16
  %71 = and i32 %70, 255
  %72 = select i1 %69, i32 %71, i32 %1, !prof !383
  %73 = load ptr, ptr %32, align 8, !tbaa !216
  %74 = tail call ptr @get_addr(ptr noundef %73) #16
  %75 = load ptr, ptr %41, align 8, !tbaa !216
  %76 = tail call ptr @get_addr(ptr noundef %75) #16
  %77 = tail call ptr @find_base_term(ptr noundef %74) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79, !prof !384

79:                                               ; preds = %68
  %80 = load i32, ptr %77, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %85 [
    i16 44, label %134
    i16 45, label %82
  ], !prof !385

82:                                               ; preds = %79
  %83 = and i32 %80, 67108864
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %134, !prof !386

85:                                               ; preds = %79, %82, %68
  %86 = load i32, ptr %2, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = tail call fastcc i32 @base_alias_check(ptr noundef %74, ptr noundef %76, i32 noundef %88, i32 noundef %72) #16, !range !201
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %134, label %91, !prof !387

91:                                               ; preds = %85
  %92 = tail call ptr @canon_rtx(ptr noundef %74) #16
  %93 = tail call ptr @canon_rtx(ptr noundef %76) #16
  %94 = zext i32 %72 to i64
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !216
  %97 = zext i8 %96 to i32
  %98 = load i32, ptr %2, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !216
  %104 = zext i8 %103 to i32
  %105 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %97, ptr noundef %93, i32 noundef %104, ptr noundef %92, i64 noundef 0) #16
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %134, !prof !388

107:                                              ; preds = %91
  %108 = tail call fastcc i32 @mems_in_disjoint_alias_sets_p(ptr noundef nonnull %2, ptr noundef nonnull %0) #16, !range !201
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %134, !prof !389

110:                                              ; preds = %107
  %111 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %134, !prof !389

113:                                              ; preds = %110
  %114 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %2) #16, !range !201
  %115 = icmp ne i32 %114, 0
  %116 = icmp eq i32 %72, 14
  %117 = or i1 %116, %115
  br i1 %117, label %134, label %118, !prof !390

118:                                              ; preds = %113
  %119 = load i32, ptr %93, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 61
  %122 = icmp eq i32 %72, 1
  %123 = or i1 %122, %121
  br i1 %123, label %134, label %124, !prof !390

124:                                              ; preds = %118
  %125 = load i32, ptr %2, align 8
  %126 = and i32 %125, 16711680
  %127 = icmp eq i32 %126, 65536
  br i1 %127, label %134, label %128, !prof !391

128:                                              ; preds = %124
  %129 = tail call fastcc ptr @fixed_scalar_and_varying_struct_p(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %93, ptr noundef %92, ptr noundef %3) #16
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134, !prof !389

131:                                              ; preds = %128
  %132 = tail call fastcc zeroext i8 @rtx_refs_may_alias_p(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %133 = zext i8 %132 to i32
  br label %134

134:                                              ; preds = %52, %128, %124, %118, %113, %110, %107, %91, %85, %82, %79, %65, %49, %36, %45, %25, %15, %8, %131
  %135 = phi i32 [ %133, %131 ], [ 1, %8 ], [ 1, %15 ], [ 1, %25 ], [ 1, %45 ], [ 1, %36 ], [ 0, %49 ], [ 1, %65 ], [ 0, %79 ], [ 0, %82 ], [ 0, %85 ], [ %105, %91 ], [ 0, %107 ], [ 0, %110 ], [ 1, %113 ], [ 1, %118 ], [ 1, %124 ], [ 0, %128 ], [ 0, %52 ]
  ret i32 %135
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @base_alias_check(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !392 !PGOFuncName !393 {
  %5 = tail call ptr @find_base_term(ptr noundef %0) #16
  %6 = tail call ptr @find_base_term(ptr noundef %1) #16
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %17, !prof !394

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !212
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %112, label %11, !prof !395

11:                                               ; preds = %8
  %12 = tail call ptr @canon_rtx(ptr noundef %0) #16
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %112, label %14, !prof !396

14:                                               ; preds = %11
  %15 = tail call ptr @find_base_term(ptr noundef %12) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %112, label %17

17:                                               ; preds = %14, %4
  %18 = phi ptr [ %15, %14 ], [ %5, %4 ]
  %19 = icmp eq ptr %6, null
  br i1 %19, label %20, label %29, !prof !397

20:                                               ; preds = %17
  %21 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !212
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %112, label %23, !prof !398

23:                                               ; preds = %20
  %24 = tail call ptr @canon_rtx(ptr noundef %1) #16
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %112, label %26, !prof !399

26:                                               ; preds = %23
  %27 = tail call ptr @find_base_term(ptr noundef %24) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %112, label %29

29:                                               ; preds = %26, %17
  %30 = phi ptr [ %27, %26 ], [ %6, %17 ]
  %31 = tail call i32 @rtx_equal_p(ptr noundef nonnull %18, ptr noundef nonnull %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %112, !prof !400

33:                                               ; preds = %29
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 61
  %37 = load i32, ptr %1, align 8
  %38 = and i32 %37, 65535
  br i1 %36, label %39, label %61, !prof !401

39:                                               ; preds = %33
  %40 = icmp eq i32 %38, 61
  br i1 %40, label %112, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %47, label %112

47:                                               ; preds = %41
  %48 = zext i32 %3 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !216
  %51 = icmp eq i8 %50, 0
  %52 = zext i8 %50 to i64
  %53 = select i1 %51, i64 %48, i64 %52
  %54 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !216
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !216
  %59 = sub nsw i64 0, %58
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %112, label %61

61:                                               ; preds = %33, %47
  %62 = icmp eq i32 %38, 61
  br i1 %62, label %63, label %83, !prof !401

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !216
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 30
  br i1 %68, label %69, label %112

69:                                               ; preds = %63
  %70 = zext nneg i32 %2 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !216
  %73 = icmp eq i8 %72, 0
  %74 = zext i8 %72 to i64
  %75 = select i1 %73, i64 %70, i64 %74
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !216
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !216
  %81 = sub nsw i64 0, %80
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %112, label %83

83:                                               ; preds = %69, %61
  %84 = load i32, ptr %18, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %91, label %87, !prof !402

87:                                               ; preds = %83
  %88 = load i32, ptr %30, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %96, label %112, !prof !403

91:                                               ; preds = %83
  %92 = and i32 %84, 16711686
  %93 = icmp eq i32 %92, 1048582
  br i1 %93, label %112, label %94, !prof !404

94:                                               ; preds = %91
  %95 = load i32, ptr %30, align 8
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ %88, %87 ]
  %98 = and i32 %84, 16711680
  %99 = and i32 %97, 16711680
  %100 = and i32 %97, 16777215
  %101 = icmp eq i32 %100, 1048582
  br i1 %101, label %112, label %102, !prof !405

102:                                              ; preds = %96
  %103 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !212
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = icmp sgt i32 %103, 1
  br i1 %106, label %112, label %107

107:                                              ; preds = %105
  %108 = icmp eq i32 %98, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = icmp ne i32 %99, 0
  %111 = zext i1 %110 to i32
  br label %112

112:                                              ; preds = %20, %23, %8, %11, %107, %109, %105, %102, %91, %96, %87, %63, %69, %41, %47, %39, %29, %14, %26
  %113 = phi i32 [ 1, %26 ], [ 1, %14 ], [ 1, %29 ], [ 1, %39 ], [ 1, %47 ], [ 1, %41 ], [ 1, %69 ], [ 1, %63 ], [ 0, %87 ], [ 0, %96 ], [ 0, %91 ], [ 1, %102 ], [ 0, %105 ], [ 1, %107 ], [ %111, %109 ], [ 1, %11 ], [ 1, %8 ], [ 1, %23 ], [ 1, %20 ]
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @memrefs_conflict_p(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 !prof !406 !PGOFuncName !407 {
  br label %6

6:                                                ; preds = %271, %5
  %7 = phi i32 [ %0, %5 ], [ %272, %271 ]
  %8 = phi ptr [ %1, %5 ], [ %273, %271 ]
  %9 = phi i32 [ %2, %5 ], [ %274, %271 ]
  %10 = phi ptr [ %3, %5 ], [ %275, %271 ]
  %11 = phi i64 [ %4, %5 ], [ %276, %271 ]
  %12 = load i32, ptr %8, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17, !prof !408

15:                                               ; preds = %6
  %16 = tail call ptr @get_addr(ptr noundef nonnull %8) #16
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi ptr [ %16, %15 ], [ %8, %6 ]
  %19 = load i32, ptr %10, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24, !prof !409

22:                                               ; preds = %17
  %23 = tail call ptr @get_addr(ptr noundef nonnull %10) #16
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %10, %17 ]
  %26 = load i32, ptr %18, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %34 [
    i16 121, label %28
    i16 122, label %31
  ], !prof !410

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  br label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  br label %36

34:                                               ; preds = %24
  %35 = tail call fastcc ptr @addr_side_effect_eval(ptr noundef nonnull %18, i32 noundef %7) #16
  br label %36

36:                                               ; preds = %31, %34, %28
  %37 = phi ptr [ %30, %28 ], [ %33, %31 ], [ %35, %34 ]
  %38 = load i32, ptr %25, align 8
  %39 = trunc i32 %38 to i16
  switch i16 %39, label %46 [
    i16 121, label %40
    i16 122, label %43
  ], !prof !410

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  br label %48

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !216
  br label %48

46:                                               ; preds = %36
  %47 = tail call fastcc ptr @addr_side_effect_eval(ptr noundef nonnull %25, i32 noundef %9) #16
  br label %48

48:                                               ; preds = %43, %46, %40
  %49 = phi ptr [ %42, %40 ], [ %45, %43 ], [ %47, %46 ]
  %50 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %37, ptr noundef %49) #16, !range !201
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52, !prof !411

52:                                               ; preds = %48
  %53 = icmp slt i32 %7, 1
  %54 = icmp slt i32 %9, 1
  %55 = or i1 %53, %54
  br i1 %55, label %311, label %56, !prof !412

56:                                               ; preds = %52
  %57 = icmp sgt i64 %11, -1
  %58 = zext nneg i32 %7 to i64
  %59 = icmp ult i64 %11, %58
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %311, label %61, !prof !413

61:                                               ; preds = %56
  %62 = icmp slt i64 %11, 0
  %63 = zext nneg i32 %9 to i64
  %64 = add nsw i64 %11, %63
  %65 = icmp sgt i64 %64, 0
  %66 = select i1 %62, i1 %65, i1 false
  %67 = zext i1 %66 to i32
  br label %311

68:                                               ; preds = %48
  %69 = load i32, ptr %37, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 49
  br i1 %71, label %72, label %120, !prof !414

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !216
  %75 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !216
  %77 = load i32, ptr %49, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 49
  br i1 %79, label %80, label %110, !prof !415

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !216
  %83 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !216
  %85 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %76, ptr noundef %84) #16, !range !201
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %271, !prof !416

87:                                               ; preds = %80
  %88 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %74, ptr noundef %82) #16, !range !201
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %271, !prof !417

90:                                               ; preds = %87
  %91 = load i32, ptr %76, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 30
  %94 = load i32, ptr %84, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 30
  br i1 %93, label %97, label %105, !prof !418

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !216
  %100 = sub i64 %11, %99
  br i1 %96, label %101, label %271, !prof !418

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !216
  %104 = add nsw i64 %100, %103
  br label %271

105:                                              ; preds = %90
  br i1 %96, label %106, label %311

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !216
  %109 = add nsw i64 %108, %11
  br label %271

110:                                              ; preds = %72
  %111 = load i32, ptr %76, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 30
  br i1 %113, label %116, label %114, !prof !419

114:                                              ; preds = %110
  %115 = and i32 %77, 65535
  br label %211

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !216
  %119 = sub nsw i64 %11, %118
  br label %271

120:                                              ; preds = %68
  %121 = load i32, ptr %49, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 49
  br i1 %123, label %124, label %136, !prof !420

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !216
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 30
  br i1 %129, label %130, label %311, !prof !421

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !216
  %133 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !216
  %135 = add nsw i64 %134, %11
  br label %271

136:                                              ; preds = %120
  %137 = and i32 %121, 65535
  %138 = icmp eq i32 %70, 52
  %139 = icmp eq i32 %137, 52
  %140 = and i1 %138, %139
  br i1 %140, label %141, label %189, !prof !422

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !216
  %144 = tail call ptr @canon_rtx(ptr noundef %143) #16
  %145 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !216
  %147 = tail call ptr @canon_rtx(ptr noundef %146) #16
  %148 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %144, ptr noundef %147) #16, !range !201
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %311, label %150

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %152 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !216
  %154 = tail call ptr @canon_rtx(ptr noundef %153) #16
  %155 = load ptr, ptr %151, align 8, !tbaa !216
  %156 = tail call ptr @canon_rtx(ptr noundef %155) #16
  %157 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %154, ptr noundef %156) #16, !range !201
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %150
  %160 = icmp eq i32 %7, 0
  %161 = icmp eq i32 %9, 0
  %162 = or i1 %160, %161
  br i1 %162, label %311, label %163

163:                                              ; preds = %159
  %164 = icmp sgt i64 %11, -1
  %165 = sext i32 %7 to i64
  %166 = icmp slt i64 %11, %165
  %167 = and i1 %164, %166
  br i1 %167, label %311, label %168

168:                                              ; preds = %163
  %169 = icmp slt i64 %11, 0
  %170 = sext i32 %9 to i64
  %171 = add nsw i64 %11, %170
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %169, i1 %172, i1 false
  %174 = zext i1 %173 to i32
  br label %311

175:                                              ; preds = %150
  %176 = load i32, ptr %144, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 30
  br i1 %178, label %179, label %311

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !216
  %182 = sext i32 %7 to i64
  %183 = sdiv i64 %182, %181
  %184 = trunc i64 %183 to i32
  %185 = sext i32 %9 to i64
  %186 = sdiv i64 %185, %181
  %187 = trunc i64 %186 to i32
  %188 = sdiv i64 %11, %181
  br label %271

189:                                              ; preds = %136
  %190 = icmp eq i32 %70, 61
  br i1 %190, label %191, label %211, !prof !423

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %193 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !216
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 30
  br i1 %197, label %198, label %211

198:                                              ; preds = %191
  %199 = icmp eq i32 %137, 61
  br i1 %199, label %206, label %200

200:                                              ; preds = %198
  %201 = sext i32 %9 to i64
  %202 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !216
  %204 = sub nsw i64 0, %203
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200, %198
  br label %207

207:                                              ; preds = %206, %200
  %208 = phi i32 [ -1, %206 ], [ %7, %200 ]
  %209 = load ptr, ptr %192, align 8, !tbaa !216
  %210 = tail call ptr @canon_rtx(ptr noundef %209) #16
  br label %271

211:                                              ; preds = %114, %191, %189
  %212 = phi i1 [ false, %114 ], [ true, %191 ], [ false, %189 ]
  %213 = phi i32 [ %77, %114 ], [ %121, %191 ], [ %121, %189 ]
  %214 = phi i32 [ %115, %114 ], [ %137, %191 ], [ %137, %189 ]
  %215 = icmp eq i32 %214, 61
  br i1 %215, label %216, label %235, !prof !424

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %218 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !216
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 30
  br i1 %222, label %223, label %235

223:                                              ; preds = %216
  br i1 %212, label %230, label %224

224:                                              ; preds = %223
  %225 = sext i32 %7 to i64
  %226 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !216
  %228 = sub nsw i64 0, %227
  %229 = icmp slt i64 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224, %223
  br label %231

231:                                              ; preds = %230, %224
  %232 = phi i32 [ -1, %230 ], [ %9, %224 ]
  %233 = load ptr, ptr %217, align 8, !tbaa !216
  %234 = tail call ptr @canon_rtx(ptr noundef %233) #16
  br label %271

235:                                              ; preds = %216, %211
  %236 = zext nneg i32 %70 to i64
  %237 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !212
  %239 = icmp eq i32 %238, 9
  br i1 %239, label %240, label %311, !prof !425

240:                                              ; preds = %235
  %241 = trunc i32 %69 to i16
  switch i16 %241, label %281 [
    i16 30, label %242
    i16 35, label %266
  ], !prof !426

242:                                              ; preds = %240
  %243 = trunc i32 %213 to i16
  switch i16 %243, label %287 [
    i16 30, label %244
    i16 35, label %283
  ], !prof !426

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !216
  %247 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !216
  %249 = sub nsw i64 %246, %248
  %250 = add nsw i64 %249, %11
  %251 = icmp slt i32 %7, 1
  %252 = icmp slt i32 %9, 1
  %253 = or i1 %251, %252
  br i1 %253, label %311, label %254, !prof !427

254:                                              ; preds = %244
  %255 = icmp sgt i64 %250, -1
  %256 = zext nneg i32 %7 to i64
  %257 = icmp slt i64 %250, %256
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %311, label %259, !prof !428

259:                                              ; preds = %254
  %260 = icmp slt i64 %250, 0
  %261 = zext nneg i32 %9 to i64
  %262 = add nsw i64 %250, %261
  %263 = icmp sgt i64 %262, 0
  %264 = select i1 %260, i1 %263, i1 false, !prof !429
  %265 = zext i1 %264 to i32
  br label %311

266:                                              ; preds = %240
  %267 = icmp eq i32 %214, 35
  %268 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !216
  %270 = tail call ptr @canon_rtx(ptr noundef %269) #16
  br i1 %267, label %277, label %271

271:                                              ; preds = %266, %97, %101, %106, %116, %130, %179, %207, %231, %277, %283, %80, %87
  %272 = phi i32 [ %7, %101 ], [ %7, %106 ], [ %7, %116 ], [ %7, %130 ], [ %184, %179 ], [ %208, %207 ], [ %7, %231 ], [ %7, %277 ], [ %7, %283 ], [ %7, %80 ], [ %7, %87 ], [ %7, %97 ], [ %7, %266 ]
  %273 = phi ptr [ %74, %101 ], [ %37, %106 ], [ %74, %116 ], [ %37, %130 ], [ %154, %179 ], [ %210, %207 ], [ %37, %231 ], [ %270, %277 ], [ %37, %283 ], [ %74, %80 ], [ %76, %87 ], [ %74, %97 ], [ %270, %266 ]
  %274 = phi i32 [ %9, %101 ], [ %9, %106 ], [ %9, %116 ], [ %9, %130 ], [ %187, %179 ], [ %9, %207 ], [ %232, %231 ], [ %9, %277 ], [ %9, %283 ], [ %9, %80 ], [ %9, %87 ], [ %9, %97 ], [ %9, %266 ]
  %275 = phi ptr [ %82, %101 ], [ %82, %106 ], [ %49, %116 ], [ %132, %130 ], [ %156, %179 ], [ %49, %207 ], [ %234, %231 ], [ %280, %277 ], [ %286, %283 ], [ %82, %80 ], [ %84, %87 ], [ %49, %97 ], [ %49, %266 ]
  %276 = phi i64 [ %104, %101 ], [ %109, %106 ], [ %119, %116 ], [ %135, %130 ], [ %188, %179 ], [ %11, %207 ], [ %11, %231 ], [ %11, %277 ], [ %11, %283 ], [ %11, %80 ], [ %11, %87 ], [ %100, %97 ], [ %11, %266 ]
  br label %6

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !216
  %280 = tail call ptr @canon_rtx(ptr noundef %279) #16
  br label %271

281:                                              ; preds = %240
  %282 = icmp eq i32 %214, 35
  br i1 %282, label %283, label %287

283:                                              ; preds = %242, %281
  %284 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !216
  %286 = tail call ptr @canon_rtx(ptr noundef %285) #16
  br label %271

287:                                              ; preds = %242, %281
  %288 = zext nneg i32 %214 to i64
  %289 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !212
  %291 = icmp eq i32 %290, 9
  br i1 %291, label %292, label %311

292:                                              ; preds = %287
  %293 = icmp slt i32 %7, 1
  %294 = icmp slt i32 %9, 1
  %295 = or i1 %293, %294
  br i1 %295, label %311, label %296

296:                                              ; preds = %292
  %297 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef nonnull %37, ptr noundef nonnull %49) #16, !range !201
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %311, label %299

299:                                              ; preds = %296
  %300 = icmp sgt i64 %11, -1
  %301 = zext nneg i32 %7 to i64
  %302 = icmp ult i64 %11, %301
  %303 = select i1 %300, i1 %302, i1 false
  br i1 %303, label %311, label %304

304:                                              ; preds = %299
  %305 = icmp slt i64 %11, 0
  %306 = zext nneg i32 %9 to i64
  %307 = add nsw i64 %11, %306
  %308 = icmp sgt i64 %307, 0
  %309 = select i1 %305, i1 %308, i1 false
  %310 = zext i1 %309 to i32
  br label %311

311:                                              ; preds = %105, %235, %141, %175, %124, %61, %287, %292, %304, %296, %299, %244, %259, %254, %163, %168, %159, %56, %52
  %312 = phi i32 [ 1, %52 ], [ 1, %56 ], [ 1, %159 ], [ %174, %168 ], [ 1, %163 ], [ 1, %244 ], [ %265, %259 ], [ 1, %254 ], [ 1, %292 ], [ 0, %296 ], [ %310, %304 ], [ 1, %299 ], [ -1, %287 ], [ %67, %61 ], [ -1, %124 ], [ -1, %175 ], [ -1, %141 ], [ -1, %235 ], [ -1, %105 ]
  ret i32 %312
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mems_in_disjoint_alias_sets_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !430 !PGOFuncName !431 {
  %3 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22, !prof !432

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !244
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5, %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mem_attrs, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !244
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @.str.1) #17
  br label %22

22:                                               ; preds = %2, %17, %13, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !216
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !432

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !244
  br label %29

29:                                               ; preds = %22, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %22 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !216
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !433

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !244
  br label %37

37:                                               ; preds = %29, %34
  %38 = phi i32 [ %36, %34 ], [ 0, %29 ]
  %39 = tail call i32 @alias_sets_conflict_p(i32 noundef %30, i32 noundef %38) #16, !range !201
  %40 = xor i32 %39, 1
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @aliases_everything_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !430 !PGOFuncName !434 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 61
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @fixed_scalar_and_varying_struct_p(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !435 !PGOFuncName !436 {
  %6 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !212
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8, !prof !437

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !216
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12, !prof !437

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !244
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16, !prof !438

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %29, label %19, !prof !439

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = tail call zeroext i8 %4(ptr noundef %2, i8 noundef zeroext 1) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call zeroext i8 %4(ptr noundef %3, i8 noundef zeroext 1) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %8, %26, %23, %19, %16, %12
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33, !prof !437

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !244
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37, !prof !440

37:                                               ; preds = %33
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 268435456
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41, !prof !441

41:                                               ; preds = %37
  %42 = load i32, ptr %1, align 8
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %50, label %44, !prof !442

44:                                               ; preds = %41
  %45 = tail call zeroext i8 %4(ptr noundef %2, i8 noundef zeroext 1) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call zeroext i8 %4(ptr noundef %3, i8 noundef zeroext 1) #17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %29, %47, %44, %41, %37, %33
  br label %51

51:                                               ; preds = %47, %26, %5, %50
  %52 = phi ptr [ null, %50 ], [ null, %5 ], [ %0, %26 ], [ %1, %47 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @rtx_refs_may_alias_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !435 !PGOFuncName !443 {
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  %6 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %4, ptr noundef %0) #16, !range !229
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !444

8:                                                ; preds = %3
  %9 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %5, ptr noundef %1) #16, !range !229
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !445

11:                                               ; preds = %8
  %12 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext %2) #17
  br label %13

13:                                               ; preds = %3, %8, %11
  %14 = phi i8 [ %12, %11 ], [ 1, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @canon_true_dependence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 !prof !446 {
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !447

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 134217728
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122

14:                                               ; preds = %10, %6
  %15 = and i32 %7, 16711680
  %16 = icmp eq i32 %15, 65536
  br i1 %16, label %17, label %23, !prof !448

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !216
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 38
  br i1 %22, label %122, label %23

23:                                               ; preds = %17, %14
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 16711680
  %26 = icmp eq i32 %25, 65536
  br i1 %26, label %27, label %33, !prof !449

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !216
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 38
  br i1 %32, label %122, label %33, !prof !450

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !216
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !451

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !244
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %122, label %42, !prof !452

42:                                               ; preds = %33, %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !216
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !453

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !244
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %122, label %53, !prof !454

50:                                               ; preds = %42
  %51 = and i32 %7, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %122, !prof !455

53:                                               ; preds = %46
  %54 = and i32 %7, 67108864
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %122, !prof !455

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 5
  %58 = load i8, ptr %57, align 8, !tbaa !363
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %50, %56
  %61 = phi i32 [ %59, %56 ], [ 0, %50 ]
  br i1 %37, label %66, label %62, !prof !451

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 5
  %64 = load i8, ptr %63, align 8, !tbaa !363
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %60, %62
  %67 = phi i32 [ %65, %62 ], [ 0, %60 ]
  %68 = icmp eq i32 %61, %67
  br i1 %68, label %69, label %122, !prof !455

69:                                               ; preds = %66
  %70 = icmp eq ptr %4, null
  br i1 %70, label %71, label %74, !prof !456

71:                                               ; preds = %69
  %72 = load ptr, ptr %34, align 8, !tbaa !216
  %73 = tail call ptr @get_addr(ptr noundef %72) #16
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi ptr [ %4, %69 ], [ %73, %71 ]
  %76 = lshr i32 %7, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc i32 @base_alias_check(ptr noundef %75, ptr noundef %2, i32 noundef %77, i32 noundef %1) #16, !range !201
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %122, label %80, !prof !457

80:                                               ; preds = %74
  %81 = tail call ptr @canon_rtx(ptr noundef %75) #16
  %82 = zext i32 %1 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !216
  %85 = zext i8 %84 to i32
  %86 = load i32, ptr %3, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !216
  %92 = zext i8 %91 to i32
  %93 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %85, ptr noundef %2, i32 noundef %92, ptr noundef %81, i64 noundef 0) #16
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %122, !prof !458

95:                                               ; preds = %80
  %96 = tail call fastcc i32 @mems_in_disjoint_alias_sets_p(ptr noundef nonnull %3, ptr noundef nonnull %0) #16, !range !201
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %122, !prof !459

98:                                               ; preds = %95
  %99 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %3, ptr noundef nonnull %0) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %122, !prof !459

101:                                              ; preds = %98
  %102 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %3) #16, !range !201
  %103 = icmp ne i32 %102, 0
  %104 = icmp eq i32 %1, 14
  %105 = or i1 %104, %103
  br i1 %105, label %122, label %106, !prof !460

106:                                              ; preds = %101
  %107 = load i32, ptr %2, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 61
  %110 = icmp eq i32 %1, 1
  %111 = or i1 %110, %109
  br i1 %111, label %122, label %112, !prof !461

112:                                              ; preds = %106
  %113 = load i32, ptr %3, align 8
  %114 = and i32 %113, 16711680
  %115 = icmp eq i32 %114, 65536
  br i1 %115, label %122, label %116, !prof !462

116:                                              ; preds = %112
  %117 = tail call fastcc ptr @fixed_scalar_and_varying_struct_p(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %81, ptr noundef %5) #16
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122, !prof !463

119:                                              ; preds = %116
  %120 = tail call fastcc zeroext i8 @rtx_refs_may_alias_p(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %121 = zext i8 %120 to i32
  br label %122

122:                                              ; preds = %53, %116, %112, %106, %101, %98, %95, %80, %74, %66, %50, %38, %46, %27, %17, %10, %119
  %123 = phi i32 [ %121, %119 ], [ 1, %10 ], [ 1, %17 ], [ 1, %27 ], [ 1, %46 ], [ 1, %38 ], [ 0, %50 ], [ 1, %66 ], [ 0, %74 ], [ %93, %80 ], [ 0, %95 ], [ 0, %98 ], [ 1, %101 ], [ 1, %106 ], [ 1, %112 ], [ 0, %116 ], [ 0, %53 ]
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @anti_dependence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !464 {
  %3 = tail call fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #16, !range !465
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !466 !PGOFuncName !467 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 134217728
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !468

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %131

11:                                               ; preds = %7, %3
  %12 = and i32 %4, 16711680
  %13 = icmp eq i32 %12, 65536
  br i1 %13, label %14, label %20, !prof !469

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 38
  br i1 %19, label %131, label %20, !prof !470

20:                                               ; preds = %14, %11
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 16711680
  %23 = icmp eq i32 %22, 65536
  br i1 %23, label %24, label %30, !prof !471

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !216
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 38
  br i1 %29, label %131, label %30, !prof !472

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !473

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %33, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !244
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %131, label %39, !prof !474

39:                                               ; preds = %30, %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !216
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44, !prof !475

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !244
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %131, label %53, !prof !476

48:                                               ; preds = %39
  %49 = icmp ne i32 %2, 0
  %50 = and i32 %21, 67108864
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %49, %51
  br i1 %52, label %62, label %131, !prof !477

53:                                               ; preds = %44
  %54 = icmp ne i32 %2, 0
  %55 = and i32 %21, 67108864
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %131, !prof !477

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 5
  %60 = load i8, ptr %59, align 8, !tbaa !363
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %48, %58
  %63 = phi i1 [ %54, %58 ], [ %49, %48 ]
  %64 = phi i32 [ %61, %58 ], [ 0, %48 ]
  br i1 %34, label %69, label %65, !prof !473

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %33, i64 0, i32 5
  %67 = load i8, ptr %66, align 8, !tbaa !363
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %62, %65
  %70 = phi i32 [ %68, %65 ], [ 0, %62 ]
  %71 = icmp eq i32 %64, %70
  br i1 %71, label %72, label %131, !prof !478

72:                                               ; preds = %69
  %73 = load ptr, ptr %31, align 8, !tbaa !216
  %74 = tail call ptr @get_addr(ptr noundef %73) #16
  %75 = load ptr, ptr %40, align 8, !tbaa !216
  %76 = tail call ptr @get_addr(ptr noundef %75) #16
  br i1 %63, label %86, label %77, !prof !479

77:                                               ; preds = %72
  %78 = tail call ptr @find_base_term(ptr noundef %76) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80, !prof !480

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 8
  %82 = trunc i32 %81 to i16
  switch i16 %82, label %86 [
    i16 44, label %131
    i16 45, label %83
  ], !prof !481

83:                                               ; preds = %80
  %84 = and i32 %81, 67108864
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %131, !prof !482

86:                                               ; preds = %80, %77, %83, %72
  %87 = load i32, ptr %1, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = load i32, ptr %0, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = tail call fastcc i32 @base_alias_check(ptr noundef %74, ptr noundef %76, i32 noundef %89, i32 noundef %92) #16, !range !201
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %131, label %95, !prof !483

95:                                               ; preds = %86
  %96 = tail call ptr @canon_rtx(ptr noundef %74) #16
  %97 = tail call ptr @canon_rtx(ptr noundef %76) #16
  %98 = load i32, ptr %0, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !216
  %104 = zext i8 %103 to i32
  %105 = load i32, ptr %1, align 8
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !216
  %111 = zext i8 %110 to i32
  %112 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %104, ptr noundef %97, i32 noundef %111, ptr noundef %96, i64 noundef 0) #16
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %131, !prof !484

114:                                              ; preds = %95
  %115 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %1, ptr noundef nonnull %0) #16
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %131, !prof !485

117:                                              ; preds = %114
  %118 = tail call fastcc ptr @fixed_scalar_and_varying_struct_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %97, ptr noundef %96, ptr noundef nonnull @rtx_addr_varies_p) #16
  %119 = icmp eq ptr %118, %0
  br i1 %119, label %120, label %123, !prof !486

120:                                              ; preds = %117
  %121 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %1) #16, !range !201
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120, %117
  %124 = icmp eq ptr %118, %1
  br i1 %124, label %125, label %128, !prof !486

125:                                              ; preds = %123
  %126 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %0) #16, !range !201
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125, %123
  %129 = tail call fastcc zeroext i8 @rtx_refs_may_alias_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i8 noundef zeroext 0) #16
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %53, %48, %120, %125, %114, %95, %86, %83, %80, %69, %35, %44, %24, %14, %7, %128
  %132 = phi i32 [ %130, %128 ], [ 1, %7 ], [ 1, %14 ], [ 1, %24 ], [ 1, %44 ], [ 1, %35 ], [ 1, %69 ], [ 0, %80 ], [ 0, %83 ], [ 0, %86 ], [ %112, %95 ], [ 0, %114 ], [ 0, %125 ], [ 0, %120 ], [ 0, %48 ], [ 0, %53 ]
  ret i32 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @output_dependence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !487 {
  %3 = tail call fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef 1) #16, !range !465
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_alias_target() local_unnamed_addr #0 !prof !488 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @static_reg_base_value, i8 0, i64 424, i1 false)
  br label %1

1:                                                ; preds = %0, %13
  %2 = phi i64 [ 0, %0 ], [ %14, %13 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %3) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6, !prof !489

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %3, i32 noundef 16) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !490

9:                                                ; preds = %6
  %10 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %3) #17
  %11 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 0, ptr noundef %10) #17
  %12 = getelementptr inbounds [53 x ptr], ptr @static_reg_base_value, i64 0, i64 %2
  store ptr %11, ptr %12, align 8, !tbaa !210
  br label %13

13:                                               ; preds = %1, %6, %9
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 53
  br i1 %15, label %16, label %1, !prof !491, !llvm.loop !492

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !210
  %18 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %17) #17
  store ptr %18, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 7), align 8, !tbaa !210
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !210
  %20 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %19) #17
  store ptr %20, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 16), align 16, !tbaa !210
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !210
  %22 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %21) #17
  store ptr %22, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 20), align 16, !tbaa !210
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !210
  %24 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %23) #17
  store ptr %24, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 6), align 16, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @memory_modified_in_insn_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !493 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %12, !prof !494

7:                                                ; preds = %2
  store i1 false, ptr @memory_modified, align 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  tail call void @note_stores(ptr noundef %9, ptr noundef nonnull @memory_modified_1, ptr noundef %0) #17
  %10 = load i1, ptr @memory_modified, align 1
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i8 [ %11, %7 ], [ 0, %2 ]
  ret i8 %13
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @memory_modified_1(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !495 !PGOFuncName !496 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %14, !prof !497

7:                                                ; preds = %3
  %8 = tail call i32 @anti_dependence(ptr noundef nonnull %0, ptr noundef %2) #16, !range !465
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !498

10:                                               ; preds = %7
  %11 = tail call i32 @output_dependence(ptr noundef nonnull %0, ptr noundef %2) #16, !range !465
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !499

13:                                               ; preds = %10, %7
  store i1 true, ptr @memory_modified, align 1
  br label %14

14:                                               ; preds = %10, %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_alias_analysis() local_unnamed_addr #0 !prof !500 {
  %1 = tail call i32 @max_reg_num() #17
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !216
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !501

4:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 38) #17
  br label %5

5:                                                ; preds = %4, %0
  %6 = add i32 %1, -53
  store i32 %6, ptr @reg_known_value_size, align 4, !tbaa !212
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %8) #17
  store ptr %9, ptr @reg_known_value, align 8, !tbaa !210
  %10 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 1) #17
  store ptr %12, ptr @reg_known_equiv_p, align 8, !tbaa !210
  %13 = load ptr, ptr @old_reg_base_value, align 8, !tbaa !210
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !502

15:                                               ; preds = %5
  store ptr %13, ptr @reg_base_value, align 8, !tbaa !210
  br label %19

16:                                               ; preds = %5
  %17 = load ptr, ptr @reg_base_value, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !503

19:                                               ; preds = %15, %16
  %20 = phi ptr [ %13, %15 ], [ %17, %16 ]
  tail call fastcc void @VEC_rtx_base_truncate(ptr noundef nonnull %20) #16
  br label %21

21:                                               ; preds = %19, %16
  tail call fastcc void @VEC_rtx_gc_safe_grow_cleared(i32 noundef %1) #16
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  store ptr %24, ptr @new_reg_base_value, align 8, !tbaa !210
  %25 = tail call ptr @xmalloc(i64 noundef %22) #17
  store ptr %25, ptr @reg_seen, align 8, !tbaa !210
  %26 = icmp eq i32 %1, 0
  br label %27

27:                                               ; preds = %203, %21
  %28 = phi i32 [ 0, %21 ], [ %205, %203 ]
  store i32 0, ptr @unique_id, align 4, !tbaa !212
  store i1 true, ptr @copying_arguments, align 1
  %29 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %23, i1 false)
  %30 = load ptr, ptr @reg_seen, align 8, !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr align 1 %30, i8 0, i64 %22, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %29, ptr noundef nonnull align 16 dereferenceable(424) @static_reg_base_value, i64 424, i1 false)
  %31 = tail call ptr @get_insns() #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %171, label %33, !prof !504

33:                                               ; preds = %27, %167
  %34 = phi ptr [ %169, %167 ], [ %31, %27 ]
  %35 = load i32, ptr %34, align 8
  %36 = trunc i32 %35 to i16
  switch i16 %36, label %167 [
    i16 8, label %37
    i16 7, label %37
    i16 9, label %37
    i16 10, label %37
    i16 13, label %162
  ], !prof !505

37:                                               ; preds = %33, %33, %33, %33
  %38 = load i32, ptr @reload_completed, align 4, !tbaa !212
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !506

40:                                               ; preds = %37
  %41 = tail call i32 @prologue_epilogue_contains(ptr noundef nonnull %34) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %167, !prof !507

43:                                               ; preds = %40, %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !216
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 23
  br i1 %48, label %49, label %60, !prof !508

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !216
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53, !prof !509

53:                                               ; preds = %49
  %54 = tail call ptr @find_reg_note(ptr noundef nonnull %34, i32 noundef 15, ptr noundef null) #17
  %55 = icmp eq ptr %54, null
  %56 = load ptr, ptr %44, align 8, !tbaa !216
  br i1 %55, label %60, label %57, !prof !510

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !216
  tail call void @record_set(ptr noundef %59, ptr noundef null, ptr poison) #16
  br label %62

60:                                               ; preds = %53, %49, %43
  %61 = phi ptr [ %56, %53 ], [ %45, %49 ], [ %45, %43 ]
  tail call void @note_stores(ptr noundef %61, ptr noundef nonnull @record_set, ptr noundef null) #17
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, ptr %34, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %167, !prof !511

67:                                               ; preds = %62
  %68 = load ptr, ptr %44, align 8, !tbaa !216
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %75, label %72, !prof !512

72:                                               ; preds = %67
  %73 = tail call ptr @single_set_2(ptr noundef nonnull %34, ptr noundef nonnull %68) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %167, label %75, !prof !503

75:                                               ; preds = %67, %72
  %76 = phi ptr [ %73, %72 ], [ %68, %67 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !216
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %167, !prof !513

82:                                               ; preds = %75
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #16
  %84 = icmp ugt i32 %83, 52
  br i1 %84, label %85, label %167, !prof !514

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !216
  %88 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %34) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %124, label %90, !prof !515

90:                                               ; preds = %85
  %91 = load i32, ptr %88, align 8
  %92 = and i32 %91, 16711680
  %93 = icmp eq i32 %92, 262144
  br i1 %93, label %94, label %104, !prof !516

94:                                               ; preds = %90
  %95 = load ptr, ptr @df, align 8, !tbaa !210
  %96 = getelementptr inbounds %struct.df, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !517
  %98 = zext i32 %83 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !210
  %101 = getelementptr inbounds %struct.df_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !520
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %124, !prof !522

104:                                              ; preds = %94, %90
  %105 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !216
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %124, label %110, !prof !523

110:                                              ; preds = %104
  %111 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %106, i8 noundef zeroext 1) #17
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %124, !prof !523

113:                                              ; preds = %110
  %114 = load ptr, ptr %77, align 8, !tbaa !216
  %115 = load ptr, ptr %105, align 8, !tbaa !216
  %116 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %114, ptr noundef %115) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load ptr, ptr %105, align 8, !tbaa !216
  tail call fastcc void @set_reg_known_value(i32 noundef %83, ptr noundef %119) #16
  %120 = load i32, ptr %88, align 8
  %121 = and i32 %120, 16711680
  %122 = icmp eq i32 %121, 196608
  %123 = zext i1 %122 to i8
  tail call fastcc void @set_reg_known_equiv_p(i32 noundef %83, i8 noundef zeroext %123) #16
  br label %167

124:                                              ; preds = %94, %85, %113, %110, %104
  %125 = load ptr, ptr @df, align 8, !tbaa !210
  %126 = getelementptr inbounds %struct.df, ptr %125, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !517
  %128 = zext i32 %83 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !210
  %131 = getelementptr inbounds %struct.df_reg_info, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !520
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %167, !prof !524

134:                                              ; preds = %124
  %135 = load i32, ptr %87, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 49
  br i1 %137, label %138, label %158, !prof !525

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !216
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %158, !prof !526

144:                                              ; preds = %138
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %140) #16
  %146 = tail call ptr @get_reg_known_value(i32 noundef %145) #16
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %148, !prof !527

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !216
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 30
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !216
  %157 = tail call ptr @plus_constant(ptr noundef nonnull %146, i64 noundef %156) #17
  tail call fastcc void @set_reg_known_value(i32 noundef %83, ptr noundef %157) #16
  tail call fastcc void @set_reg_known_equiv_p(i32 noundef %83, i8 noundef zeroext 0) #16
  br label %167

158:                                              ; preds = %148, %144, %138, %134
  %159 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %87, i8 noundef zeroext 1) #17
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %167, !prof !528

161:                                              ; preds = %158
  tail call fastcc void @set_reg_known_value(i32 noundef %83, ptr noundef nonnull %87) #16
  tail call fastcc void @set_reg_known_equiv_p(i32 noundef %83, i8 noundef zeroext 0) #16
  br label %167

162:                                              ; preds = %33
  %163 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %164 = load i32, ptr %163, align 8, !tbaa !216
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %167, !prof !529

166:                                              ; preds = %162
  store i1 false, ptr @copying_arguments, align 1
  br label %167

167:                                              ; preds = %62, %124, %33, %40, %118, %158, %161, %154, %82, %75, %72, %166, %162
  %168 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %169 = load ptr, ptr %168, align 8, !tbaa !216
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %33, !prof !530, !llvm.loop !531

171:                                              ; preds = %167, %27
  %172 = tail call i32 @max_reg_num() #17
  %173 = icmp eq i32 %1, %172
  br i1 %173, label %175, label %174, !prof !532

174:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2760, ptr noundef nonnull @.str.1) #17
  br label %175

175:                                              ; preds = %171, %174
  br i1 %26, label %208, label %176, !prof !504

176:                                              ; preds = %175
  %177 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  br label %178

178:                                              ; preds = %176, %198
  %179 = phi ptr [ %177, %176 ], [ %199, %198 ]
  %180 = phi i64 [ 0, %176 ], [ %201, %198 ]
  %181 = phi i32 [ 0, %176 ], [ %200, %198 ]
  %182 = getelementptr inbounds ptr, ptr %179, i64 %180
  %183 = load ptr, ptr %182, align 8, !tbaa !210
  %184 = icmp eq ptr %183, null
  br i1 %184, label %198, label %185, !prof !533

185:                                              ; preds = %178
  %186 = load ptr, ptr @reg_base_value, align 8
  %187 = trunc i64 %180 to i32
  %188 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %186, i32 noundef %187) #16
  %189 = icmp eq ptr %183, %188
  br i1 %189, label %198, label %190, !prof !534

190:                                              ; preds = %185
  %191 = tail call i32 @rtx_equal_p(ptr noundef nonnull %183, ptr noundef %188) #17
  %192 = icmp eq i32 %191, 0
  %193 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  br i1 %192, label %194, label %198, !prof !535

194:                                              ; preds = %190
  %195 = load ptr, ptr @reg_base_value, align 8
  %196 = getelementptr inbounds ptr, ptr %193, i64 %180
  %197 = load ptr, ptr %196, align 8, !tbaa !210
  tail call fastcc void @VEC_rtx_base_replace(ptr noundef %195, i32 noundef %187, ptr noundef %197) #16
  br label %198

198:                                              ; preds = %178, %185, %190, %194
  %199 = phi ptr [ %193, %190 ], [ %193, %194 ], [ %179, %185 ], [ %179, %178 ]
  %200 = phi i32 [ %181, %190 ], [ 1, %194 ], [ %181, %185 ], [ %181, %178 ]
  %201 = add nuw nsw i64 %180, 1
  %202 = icmp eq i64 %201, %22
  br i1 %202, label %203, label %178, !prof !536, !llvm.loop !537

203:                                              ; preds = %198
  %204 = icmp ne i32 %200, 0
  %205 = add nuw nsw i32 %28, 1
  %206 = icmp ult i32 %28, 9
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %27, label %208, !prof !538, !llvm.loop !539

208:                                              ; preds = %175, %203
  %209 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %230, !prof !540

211:                                              ; preds = %208
  %212 = zext nneg i32 %209 to i64
  %213 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  br label %214

214:                                              ; preds = %211, %226
  %215 = phi ptr [ %213, %211 ], [ %227, %226 ]
  %216 = phi i64 [ 0, %211 ], [ %228, %226 ]
  %217 = getelementptr inbounds ptr, ptr %215, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !210
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %226, !prof !541

220:                                              ; preds = %214
  %221 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !210
  %222 = getelementptr ptr, ptr %221, i64 %216
  %223 = getelementptr ptr, ptr %222, i64 53
  %224 = load ptr, ptr %223, align 8, !tbaa !210
  store ptr %224, ptr %217, align 8, !tbaa !210
  %225 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  br label %226

226:                                              ; preds = %214, %220
  %227 = phi ptr [ %215, %214 ], [ %225, %220 ]
  %228 = add nuw nsw i64 %216, 1
  %229 = icmp eq i64 %228, %212
  br i1 %229, label %230, label %214, !prof !542, !llvm.loop !543

230:                                              ; preds = %226, %208
  %231 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  tail call void @free(ptr noundef %231) #16
  store ptr null, ptr @new_reg_base_value, align 8, !tbaa !210
  %232 = load ptr, ptr @reg_seen, align 8, !tbaa !210
  tail call void @free(ptr noundef %232) #16
  store ptr null, ptr @reg_seen, align 8, !tbaa !210
  %233 = load i8, ptr @timevar_enable, align 1, !tbaa !216
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %236, label %235, !prof !501

235:                                              ; preds = %230
  tail call void @timevar_pop_1(i32 noundef 38) #17
  br label %236

236:                                              ; preds = %235, %230
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_rtx_base_truncate(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !544 !PGOFuncName !545 {
  store i32 0, ptr %0, align 8, !tbaa !340
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !546 {
  %2 = load ptr, ptr @reg_base_value, align 8, !tbaa !210
  %3 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %2) #16
  tail call fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) #16
  %4 = load ptr, ptr @reg_base_value, align 8, !tbaa !210
  %5 = tail call fastcc ptr @VEC_rtx_base_address(ptr noundef %4) #16
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @prologue_epilogue_contains(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @record_set(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2) #0 !prof !547 !PGOFuncName !548 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %141, !prof !549

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %9 = load ptr, ptr @reg_base_value, align 8
  %10 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %9) #16
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %13, label %12, !prof !550

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1131, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %7, %12
  %14 = icmp ult i32 %8, 53
  br i1 %14, label %15, label %36, !prof !551

15:                                               ; preds = %13
  %16 = zext nneg i32 %8 to i64
  %17 = load i32, ptr %0, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !216
  switch i8 %22, label %23 [
    i8 1, label %36
    i8 0, label %141
  ], !prof !552

23:                                               ; preds = %15
  %24 = load ptr, ptr @reg_seen, align 8, !tbaa !210
  %25 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %26 = zext i8 %22 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %26, %23 ], [ %29, %27 ]
  %29 = add nsw i64 %28, -1
  %30 = trunc i64 %29 to i32
  %31 = add i32 %8, %30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %24, i64 %32
  store i8 1, ptr %33, align 1, !tbaa !216
  %34 = getelementptr inbounds ptr, ptr %25, i64 %32
  store ptr null, ptr %34, align 8, !tbaa !210
  %35 = icmp ugt i64 %28, 1
  br i1 %35, label %27, label %141, !llvm.loop !553

36:                                               ; preds = %15, %13
  %37 = icmp eq ptr %1, null
  br i1 %37, label %54, label %38, !prof !554

38:                                               ; preds = %36
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 25
  br i1 %41, label %42, label %46, !prof !555

42:                                               ; preds = %38
  %43 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %44 = zext i32 %8 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  store ptr null, ptr %45, align 8, !tbaa !210
  br label %141

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !216
  %49 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %50 = zext i32 %8 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !210
  %53 = icmp eq ptr %52, null
  br i1 %53, label %120, label %71, !prof !556

54:                                               ; preds = %36
  %55 = load ptr, ptr @reg_seen, align 8, !tbaa !210
  %56 = zext i32 %8 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !216
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %62 = getelementptr inbounds ptr, ptr %61, i64 %56
  store ptr null, ptr %62, align 8, !tbaa !210
  br label %141

63:                                               ; preds = %54
  store i8 1, ptr %57, align 1, !tbaa !216
  %64 = load i32, ptr @unique_id, align 4, !tbaa !212
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr @unique_id, align 4, !tbaa !212
  %66 = sext i32 %64 to i64
  %67 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %66) #17
  %68 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %67) #17
  %69 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %70 = getelementptr inbounds ptr, ptr %69, i64 %56
  store ptr %68, ptr %70, align 8, !tbaa !210
  br label %141

71:                                               ; preds = %46
  %72 = tail call fastcc ptr @find_base_value(ptr noundef %48) #16
  %73 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %74 = getelementptr inbounds ptr, ptr %73, i64 %50
  %75 = load ptr, ptr %74, align 8, !tbaa !210
  %76 = icmp eq ptr %72, %75
  br i1 %76, label %120, label %77, !prof !557

77:                                               ; preds = %71
  %78 = load i32, ptr %48, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %119 [
    i16 122, label %80
    i16 50, label %80
    i16 49, label %89
    i16 61, label %108
  ], !prof !558

80:                                               ; preds = %77, %77
  %81 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !216
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %138, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !216
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %138, label %88

88:                                               ; preds = %84
  store ptr null, ptr %74, align 8, !tbaa !210
  br label %138

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !216
  %92 = icmp eq ptr %91, %0
  %93 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !216
  br i1 %92, label %97, label %95

95:                                               ; preds = %89
  %96 = icmp eq ptr %94, %0
  br i1 %96, label %97, label %105

97:                                               ; preds = %89, %95
  %98 = phi ptr [ %91, %95 ], [ %94, %89 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %98) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %138, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  br label %105

105:                                              ; preds = %103, %95, %97
  %106 = phi ptr [ %104, %103 ], [ %73, %95 ], [ %73, %97 ]
  %107 = getelementptr inbounds ptr, ptr %106, i64 %50
  store ptr null, ptr %107, align 8, !tbaa !210
  br label %138

108:                                              ; preds = %77
  %109 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !216
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !216
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 30
  br i1 %117, label %138, label %118

118:                                              ; preds = %112, %108
  store ptr null, ptr %74, align 8, !tbaa !210
  br label %138

119:                                              ; preds = %77
  store ptr null, ptr %74, align 8, !tbaa !210
  br label %138

120:                                              ; preds = %71, %46
  %121 = phi ptr [ %72, %71 ], [ null, %46 ]
  %122 = icmp ugt i32 %8, 52
  br i1 %122, label %127, label %123, !prof !559

123:                                              ; preds = %120
  %124 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %50
  %125 = load i8, ptr %124, align 1, !tbaa !216
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %138, !prof !560

127:                                              ; preds = %123, %120
  %128 = load ptr, ptr @reg_seen, align 8, !tbaa !210
  %129 = getelementptr inbounds i8, ptr %128, i64 %50
  %130 = load i8, ptr %129, align 1, !tbaa !216
  %131 = icmp eq i8 %130, 0
  %132 = icmp eq ptr %121, null
  %133 = and i1 %131, %132
  br i1 %133, label %134, label %138, !prof !561

134:                                              ; preds = %127
  %135 = tail call fastcc ptr @find_base_value(ptr noundef %48) #16
  %136 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %137 = getelementptr inbounds ptr, ptr %136, i64 %50
  store ptr %135, ptr %137, align 8, !tbaa !210
  br label %138

138:                                              ; preds = %100, %105, %123, %127, %134, %119, %88, %84, %80, %118, %112
  %139 = load ptr, ptr @reg_seen, align 8, !tbaa !210
  %140 = getelementptr inbounds i8, ptr %139, i64 %50
  store i8 1, ptr %140, align 1, !tbaa !216
  br label %141

141:                                              ; preds = %27, %15, %3, %138, %63, %60, %42
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @set_reg_known_value(i32 noundef %0, ptr noundef %1) unnamed_addr #11 !prof !562 !PGOFuncName !563 {
  %3 = icmp ugt i32 %0, 52
  br i1 %3, label %4, label %12, !prof !564

4:                                                ; preds = %2
  %5 = add i32 %0, -53
  %6 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %12, !prof !564

8:                                                ; preds = %4
  %9 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  store ptr %1, ptr %11, align 8, !tbaa !210
  br label %12

12:                                               ; preds = %4, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @set_reg_known_equiv_p(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #11 !prof !562 !PGOFuncName !565 {
  %3 = icmp ugt i32 %0, 52
  br i1 %3, label %4, label %12, !prof !564

4:                                                ; preds = %2
  %5 = add i32 %0, -53
  %6 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %12, !prof !564

8:                                                ; preds = %4
  %9 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !210
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  store i8 %1, ptr %11, align 1, !tbaa !216
  br label %12

12:                                               ; preds = %4, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !566 !PGOFuncName !567 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_alias_analysis() local_unnamed_addr #0 !prof !500 {
  %1 = load ptr, ptr @reg_base_value, align 8, !tbaa !210
  store ptr %1, ptr @old_reg_base_value, align 8, !tbaa !210
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  tail call void @ggc_free(ptr noundef %2) #17
  store ptr null, ptr @reg_known_value, align 8, !tbaa !210
  store i32 0, ptr @reg_known_value_size, align 4, !tbaa !212
  %3 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !210
  tail call void @free(ptr noundef %3) #16
  store ptr null, ptr @reg_known_equiv_p, align 8, !tbaa !210
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_alias_set_entry_gc(ptr noundef %0) #0 !prof !208 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !568
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !210
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_alias_set_entry_d(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !570

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_alias_set_entry_d(ptr noundef %0) local_unnamed_addr #0 !prof !208 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.alias_set_entry_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !196
  tail call void @gt_ggc_m_II12splay_tree_s(ptr noundef %8) #17
  br label %9

9:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_m_II12splay_tree_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_alias_set_entry_gc(ptr noundef %0) #0 !prof !208 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_alias_set_entry_gc, i32 noundef 93) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !568
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_alias_set_entry_d(ptr noundef nonnull %11) #16
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !571

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_22VEC_alias_set_entry_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !208 {
  %5 = load i32, ptr %1, align 8, !tbaa !568
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #17
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !572

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_alias_set_entry_d(ptr noundef %0) local_unnamed_addr #0 !prof !208 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17alias_set_entry_d, i32 noundef 94) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.alias_set_entry_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  tail call void @gt_pch_n_II12splay_tree_s(ptr noundef %6) #17
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17alias_set_entry_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !208 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.alias_set_entry_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #17
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_n_II12splay_tree_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_reg_known_value(ptr nocapture readnone %0) #0 !prof !208 !PGOFuncName !573 {
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #17
  %15 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %16 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = zext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !574

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @ggc_set_mark(ptr noundef nonnull %24) #17
  br label %28

28:                                               ; preds = %23, %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_reg_known_value(ptr nocapture readnone %0) #0 !prof !208 !PGOFuncName !575 {
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12) #17
  %15 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %16 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = zext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !576

23:                                               ; preds = %17, %4
  %24 = phi ptr [ %2, %4 ], [ %19, %17 ]
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef nonnull @reg_known_value, ptr noundef nonnull @gt_pch_pa_reg_known_value, i32 noundef 217) #17
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_ggc_mx_VEC_rtx_gc(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_nx_VEC_rtx_gc(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_alias_set_entry_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !198 !PGOFuncName !577 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !210
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @walk_mems_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !208 !PGOFuncName !578 {
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !244
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !244
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %14 ]
  %24 = tail call i32 @alias_sets_conflict_p(i32 noundef %15, i32 noundef %23) #16, !range !201
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -1, i32 1
  br label %27

27:                                               ; preds = %2, %22
  %28 = phi i32 [ %26, %22 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alias_set_entry_gc_reserve() unnamed_addr #0 !prof !284 !PGOFuncName !579 {
  %1 = load ptr, ptr @alias_sets, align 8, !tbaa !210
  %2 = tail call fastcc i32 @VEC_alias_set_entry_base_space(ptr noundef %1) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !580

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_p_reserve(ptr noundef %1, i32 noundef 1) #17
  store ptr %5, ptr @alias_sets, align 8, !tbaa !210
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_alias_set_entry_base_quick_push(ptr noundef %0) unnamed_addr #6 !prof !284 !PGOFuncName !581 {
  %2 = load i32, ptr %0, align 8, !tbaa !287
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !287
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr null, ptr %5, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alias_set_entry_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !284 !PGOFuncName !582 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !583

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !584
  %6 = load i32, ptr %0, align 8, !tbaa !287
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @addr_side_effect_eval(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !585 !PGOFuncName !586 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %24 [
    i16 75, label %7
    i16 74, label %5
    i16 77, label %18
    i16 76, label %18
  ], !prof !587

5:                                                ; preds = %2
  %6 = sub nsw i32 0, %1
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ %1, %2 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !354

10:                                               ; preds = %7
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  %15 = sext i32 %8 to i64
  %16 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #17
  %17 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %12, ptr noundef %14, ptr noundef %16) #17
  br label %21

18:                                               ; preds = %2, %2, %7
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !216
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi ptr [ %17, %10 ], [ %20, %18 ]
  %23 = tail call ptr @canon_rtx(ptr noundef %22) #16
  br label %24

24:                                               ; preds = %2, %21
  %25 = phi ptr [ %23, %21 ], [ %0, %2 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rtx_equal_for_memref_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !588 !PGOFuncName !589 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7, !prof !213

4:                                                ; preds = %67, %2
  %5 = phi ptr [ %1, %2 ], [ %69, %67 ]
  %6 = icmp eq ptr %5, null
  br label %194

7:                                                ; preds = %2, %67
  %8 = phi ptr [ %69, %67 ], [ %1, %2 ]
  %9 = phi ptr [ %68, %67 ], [ %0, %2 ]
  %10 = icmp eq ptr %8, null
  br i1 %10, label %194, label %11, !prof !590

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %8
  br i1 %12, label %194, label %13, !prof !591

13:                                               ; preds = %11
  %14 = load i32, ptr %9, align 8
  %15 = and i32 %14, 65535
  %16 = load i32, ptr %8, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %194, !prof !592

19:                                               ; preds = %13
  %20 = xor i32 %16, %14
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %194, !prof !593

23:                                               ; preds = %19
  %24 = trunc i32 %14 to i16
  switch i16 %24, label %41 [
    i16 37, label %25
    i16 44, label %29
    i16 45, label %35
    i16 1, label %194
    i16 30, label %194
    i16 32, label %194
    i16 31, label %194
  ], !prof !594

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #16
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #16
  %28 = icmp eq i32 %26, %27
  br label %194

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  %32 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !216
  %34 = icmp eq ptr %31, %33
  br label %194

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !216
  %38 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !216
  %40 = icmp eq ptr %37, %39
  br label %194

41:                                               ; preds = %23
  %42 = icmp eq i32 %15, 49
  br i1 %42, label %43, label %71, !prof !595

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !216
  %46 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !216
  %48 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %45, ptr noundef %47) #16, !range !201
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50, !prof !596

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !216
  %53 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !216
  %55 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %52, ptr noundef %54) #16, !range !201
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %194, !prof !597

57:                                               ; preds = %50, %43
  %58 = load ptr, ptr %44, align 8, !tbaa !216
  %59 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  %61 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %58, ptr noundef %60) #16, !range !201
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %194, label %63, !prof !598

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !216
  %66 = load ptr, ptr %46, align 8, !tbaa !216
  br label %67

67:                                               ; preds = %63, %97, %110, %119
  %68 = phi ptr [ %65, %63 ], [ %100, %97 ], [ %113, %110 ], [ %122, %119 ]
  %69 = phi ptr [ %66, %63 ], [ %82, %97 ], [ %116, %110 ], [ %125, %119 ]
  %70 = icmp eq ptr %68, null
  br i1 %70, label %4, label %7, !prof !599

71:                                               ; preds = %41
  %72 = zext nneg i32 %15 to i64
  %73 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !212
  %75 = and i32 %74, -3
  switch i32 %75, label %117 [
    i32 1, label %76
    i32 0, label %101
  ]

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !216
  %79 = tail call ptr @canon_rtx(ptr noundef %78) #16
  %80 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !216
  %82 = tail call ptr @canon_rtx(ptr noundef %81) #16
  %83 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !216
  %85 = tail call ptr @canon_rtx(ptr noundef %84) #16
  %86 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %79, ptr noundef %82) #16, !range !201
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !216
  %91 = tail call ptr @canon_rtx(ptr noundef %90) #16
  %92 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %91, ptr noundef %85) #16, !range !201
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %194

94:                                               ; preds = %88, %76
  %95 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %79, ptr noundef %85) #16, !range !201
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %194, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !216
  %100 = tail call ptr @canon_rtx(ptr noundef %99) #16
  br label %67

101:                                              ; preds = %71
  %102 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !216
  %104 = tail call ptr @canon_rtx(ptr noundef %103) #16
  %105 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !216
  %107 = tail call ptr @canon_rtx(ptr noundef %106) #16
  %108 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %104, ptr noundef %107) #16, !range !201
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %194, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !216
  %113 = tail call ptr @canon_rtx(ptr noundef %112) #16
  %114 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !216
  %116 = tail call ptr @canon_rtx(ptr noundef %115) #16
  br label %67

117:                                              ; preds = %71
  %118 = icmp eq i32 %74, 4
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !216
  %122 = tail call ptr @canon_rtx(ptr noundef %121) #16
  %123 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !216
  %125 = tail call ptr @canon_rtx(ptr noundef %124) #16
  br label %67

126:                                              ; preds = %117
  %127 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %72
  %128 = load ptr, ptr %127, align 8, !tbaa !210
  %129 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %72
  %130 = load i8, ptr %129, align 1, !tbaa !216
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %194, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %134 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %135 = zext i8 %130 to i64
  br label %136

136:                                              ; preds = %132, %192
  %137 = phi i64 [ %135, %132 ], [ %138, %192 ]
  %138 = add nsw i64 %137, -1
  %139 = getelementptr inbounds i8, ptr %128, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !216
  switch i8 %140, label %191 [
    i8 105, label %141
    i8 69, label %147
    i8 101, label %175
    i8 115, label %184
    i8 48, label %192
  ]

141:                                              ; preds = %136
  %142 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %143 = load i32, ptr %142, align 8, !tbaa !216
  %144 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %145 = load i32, ptr %144, align 8, !tbaa !216
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %192, label %194

147:                                              ; preds = %136
  %148 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %149 = load ptr, ptr %148, align 8, !tbaa !216
  %150 = load i32, ptr %149, align 8, !tbaa !600
  %151 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %152 = load ptr, ptr %151, align 8, !tbaa !216
  %153 = load i32, ptr %152, align 8, !tbaa !600
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %155, label %194

155:                                              ; preds = %147
  %156 = icmp sgt i32 %150, 0
  br i1 %156, label %163, label %192

157:                                              ; preds = %163
  %158 = add nuw nsw i64 %164, 1
  %159 = load ptr, ptr %148, align 8, !tbaa !216
  %160 = load i32, ptr %159, align 8, !tbaa !600
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %192, !llvm.loop !602

163:                                              ; preds = %155, %157
  %164 = phi i64 [ %158, %157 ], [ 0, %155 ]
  %165 = phi ptr [ %159, %157 ], [ %149, %155 ]
  %166 = getelementptr inbounds %struct.rtvec_def, ptr %165, i64 0, i32 1, i64 %164
  %167 = load ptr, ptr %166, align 8, !tbaa !210
  %168 = tail call ptr @canon_rtx(ptr noundef %167) #16
  %169 = load ptr, ptr %151, align 8, !tbaa !216
  %170 = getelementptr inbounds %struct.rtvec_def, ptr %169, i64 0, i32 1, i64 %164
  %171 = load ptr, ptr %170, align 8, !tbaa !210
  %172 = tail call ptr @canon_rtx(ptr noundef %171) #16
  %173 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %168, ptr noundef %172) #16, !range !201
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %194, label %157

175:                                              ; preds = %136
  %176 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %177 = load ptr, ptr %176, align 8, !tbaa !216
  %178 = tail call ptr @canon_rtx(ptr noundef %177) #16
  %179 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %180 = load ptr, ptr %179, align 8, !tbaa !216
  %181 = tail call ptr @canon_rtx(ptr noundef %180) #16
  %182 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %178, ptr noundef %181) #16, !range !201
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %192

184:                                              ; preds = %136
  %185 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %186 = load ptr, ptr %185, align 8, !tbaa !216
  %187 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %188 = load ptr, ptr %187, align 8, !tbaa !216
  %189 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) %188) #16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %194

191:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1462, ptr noundef nonnull @.str.1) #17
  br label %192

192:                                              ; preds = %157, %155, %136, %191, %141, %175, %184
  %193 = icmp sgt i64 %137, 1
  br i1 %193, label %136, label %194, !llvm.loop !603

194:                                              ; preds = %101, %88, %94, %50, %57, %23, %23, %23, %23, %19, %13, %11, %7, %141, %147, %175, %184, %192, %163, %126, %4, %35, %29, %25
  %195 = phi i1 [ %40, %35 ], [ %34, %29 ], [ %28, %25 ], [ %6, %4 ], [ true, %126 ], [ false, %163 ], [ false, %141 ], [ false, %147 ], [ false, %175 ], [ false, %184 ], [ true, %192 ], [ false, %101 ], [ false, %94 ], [ true, %88 ], [ false, %57 ], [ true, %50 ], [ false, %23 ], [ false, %23 ], [ false, %23 ], [ false, %23 ], [ false, %19 ], [ false, %13 ], [ true, %11 ], [ false, %7 ]
  %196 = zext i1 %195 to i32
  ret i32 %196
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ao_ref_from_mem(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !604 !PGOFuncName !605 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !216
  %5 = icmp eq ptr %4, null
  br i1 %5, label %148, label %6, !prof !606

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !359
  %8 = icmp eq ptr %7, null
  br i1 %8, label %148, label %9, !prof !607

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !362
  %12 = icmp eq ptr %11, null
  br i1 %12, label %148, label %13, !prof !608

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !364
  %16 = icmp eq ptr %15, null
  br i1 %16, label %148, label %17, !prof !445

17:                                               ; preds = %13
  tail call void @ao_ref_init(ptr noundef %0, ptr noundef nonnull %7) #17
  %18 = tail call ptr @ao_ref_base(ptr noundef %0) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %148, label %20, !prof !608

20:                                               ; preds = %17
  %21 = load i64, ptr %18, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -47
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %26, label %32, !prof !609

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !216
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %148, !prof !445

32:                                               ; preds = %20, %26
  %33 = trunc i64 %21 to i16
  switch i16 %33, label %55 [
    i16 29, label %148
    i16 30, label %148
    i16 32, label %34
  ], !prof !610

34:                                               ; preds = %32
  %35 = and i64 %21, 67108864
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load ptr, ptr @cfun, align 8, !tbaa !210
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !611
  %41 = getelementptr inbounds %struct.gimple_df, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !613
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @pointer_map_contains(ptr noundef nonnull %42, ptr noundef nonnull %18) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @get_alias_set(ptr noundef nonnull %18) #16
  %49 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 %48, ptr %49, align 4, !tbaa !617
  %50 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !216
  %52 = load ptr, ptr %45, align 8, !tbaa !210
  %53 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %51, ptr noundef %52) #17
  %54 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !619
  br label %55

55:                                               ; preds = %44, %47, %32, %37, %34
  %56 = load ptr, ptr %3, align 8, !tbaa !216
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !608

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !244
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi i32 [ %60, %58 ], [ 0, %55 ]
  %63 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 %62, ptr %63, align 8, !tbaa !620
  %64 = load ptr, ptr %3, align 8, !tbaa !216, !nonnull !621, !noundef !621
  %65 = getelementptr inbounds %struct.mem_attrs, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !362
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !216
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %80, !prof !608

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.mem_attrs, ptr %64, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !364
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !216
  %75 = add nsw i64 %74, %68
  %76 = shl nsw i64 %75, 3
  %77 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !622
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %148, label %80

80:                                               ; preds = %70, %61
  %81 = shl nsw i64 %68, 3
  %82 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !623
  %84 = add nsw i64 %83, %81
  store i64 %84, ptr %82, align 8, !tbaa !623
  %85 = load ptr, ptr %3, align 8, !tbaa !216
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87, !prof !608

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.mem_attrs, ptr %85, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !364
  br label %100

90:                                               ; preds = %80
  %91 = load i32, ptr %1, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = icmp ne i32 %93, 1
  tail call void @llvm.assume(i1 %94)
  %95 = zext nneg i32 %93 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !216
  %98 = zext i8 %97 to i64
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %98) #17
  br label %100

100:                                              ; preds = %90, %87
  %101 = phi ptr [ %89, %87 ], [ %99, %90 ]
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !216
  %104 = shl nsw i64 %103, 3
  %105 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %104, ptr %105, align 8, !tbaa !622
  %106 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %107 = load i64, ptr %106, align 8, !tbaa !624
  %108 = icmp ne i64 %107, -1
  %109 = icmp sgt i64 %104, %107
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %112, !prof !625

111:                                              ; preds = %100
  store i64 %104, ptr %106, align 8, !tbaa !624
  br label %112

112:                                              ; preds = %111, %100
  %113 = load ptr, ptr %3, align 8, !tbaa !216
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !608

115:                                              ; preds = %112
  %116 = load ptr, ptr %113, align 8, !tbaa !359
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi ptr [ %116, %115 ], [ null, %112 ]
  %119 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #17
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %147, label %121, !prof !608

121:                                              ; preds = %117
  %122 = load i64, ptr %82, align 8, !tbaa !623
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %148, label %124, !prof !608

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !619
  %127 = load i64, ptr %126, align 8
  %128 = and i64 %127, 65535
  %129 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !212
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %147, !prof !608

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.tree_decl_common, ptr %126, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !216
  %135 = tail call i32 @host_integerp(ptr noundef %134, i32 noundef 1) #17
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %125, align 8, !tbaa !619
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !216
  %141 = getelementptr inbounds %struct.tree_int_cst, ptr %140, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !216
  %143 = load i64, ptr %82, align 8, !tbaa !623
  %144 = load i64, ptr %105, align 8, !tbaa !622
  %145 = add nsw i64 %144, %143
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %148, label %147

147:                                              ; preds = %137, %124, %117
  br label %148

148:                                              ; preds = %2, %121, %132, %137, %70, %32, %32, %26, %17, %9, %13, %6, %147
  %149 = phi i8 [ 1, %147 ], [ 0, %6 ], [ 0, %13 ], [ 0, %9 ], [ 0, %17 ], [ 0, %26 ], [ 0, %32 ], [ 0, %32 ], [ 1, %70 ], [ 0, %137 ], [ 0, %132 ], [ 0, %121 ], [ 0, %2 ]
  ret i8 %149
}

; Function Attrs: optsize
declare zeroext i8 @refs_may_alias_p_1(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ao_ref_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !626 {
  %2 = load ptr, ptr @reg_base_value, align 8, !tbaa !210
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !502

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !340
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %8) #16
  %9 = load ptr, ptr @reg_base_value, align 8, !tbaa !210, !nonnull !621, !noundef !621
  store i32 %0, ptr %9, align 8, !tbaa !340
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_rtx_base_address(ptr noundef readnone %0) unnamed_addr #4 !prof !500 !PGOFuncName !627 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !628
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !629 {
  %2 = load ptr, ptr @reg_base_value, align 8, !tbaa !210
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2, i32 noundef %0) #16, !range !201
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !630

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @reg_base_value, align 8, !tbaa !210
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !500 !PGOFuncName !631 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !502

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !632
  %7 = load i32, ptr %0, align 8, !tbaa !340
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_base_value(ptr noundef %0) unnamed_addr #0 !prof !633 !PGOFuncName !634 {
  br label %2

2:                                                ; preds = %125, %1
  %3 = phi ptr [ %0, %1 ], [ %126, %125 ]
  %4 = tail call ptr @ix86_find_base_term(ptr noundef %3) #17
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %179 [
    i16 45, label %178
    i16 44, label %178
    i16 37, label %7
    i16 43, label %49
    i16 35, label %66
    i16 49, label %73
    i16 50, label %73
    i16 122, label %134
    i16 61, label %136
    i16 100, label %147
    i16 121, label %159
    i16 75, label %159
    i16 74, label %159
    i16 77, label %159
    i16 76, label %159
    i16 78, label %159
    i16 79, label %159
    i16 99, label %161
    i16 98, label %161
  ], !prof !635

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #16
  %9 = icmp ult i32 %8, 53
  %10 = load i1, ptr @copying_arguments, align 1
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %17, !prof !636

12:                                               ; preds = %7
  %13 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  br label %179

17:                                               ; preds = %7
  %18 = icmp ugt i32 %8, 52
  br i1 %18, label %24, label %19, !prof !637

19:                                               ; preds = %17
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !216
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %179, label %24, !prof !638

24:                                               ; preds = %19, %17
  %25 = load ptr, ptr @reg_base_value, align 8
  %26 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %25) #16
  %27 = icmp ult i32 %8, %26
  br i1 %27, label %28, label %179, !prof !639

28:                                               ; preds = %24
  %29 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !210
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !640

31:                                               ; preds = %28
  %32 = zext i32 %8 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !210
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36, !prof !639

36:                                               ; preds = %31
  %37 = load ptr, ptr @df, align 8, !tbaa !210
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !517
  %40 = getelementptr inbounds ptr, ptr %39, i64 %32
  %41 = load ptr, ptr %40, align 8, !tbaa !210
  %42 = getelementptr inbounds %struct.df_reg_info, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !520
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %179, label %45

45:                                               ; preds = %36, %31, %28
  %46 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %25, i32 noundef %8) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %179, label %48, !prof !639

48:                                               ; preds = %45
  br label %179

49:                                               ; preds = %2
  %50 = load i1, ptr @copying_arguments, align 1
  br i1 %50, label %51, label %179, !prof !641

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !216
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !210
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %64, label %56, !prof !642

56:                                               ; preds = %51
  %57 = load i32, ptr %53, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 49
  br i1 %59, label %60, label %179, !prof !643

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !216
  %63 = icmp eq ptr %62, %54
  br i1 %63, label %64, label %179, !prof !644

64:                                               ; preds = %60, %51
  %65 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 0, ptr noundef nonnull %4) #17
  br label %179

66:                                               ; preds = %2
  %67 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !216
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = add nsw i32 %70, -49
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %73, label %179, !prof !645

73:                                               ; preds = %66, %2, %2
  %74 = phi ptr [ %4, %2 ], [ %4, %2 ], [ %68, %66 ]
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !216
  %77 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !216
  %79 = load i32, ptr %76, align 8
  %80 = and i32 %79, 65535
  %81 = and i32 %79, 1073807359
  %82 = icmp eq i32 %81, 1073741861
  br i1 %82, label %125, label %83, !prof !646

83:                                               ; preds = %73
  %84 = load i32, ptr %78, align 8
  %85 = and i32 %84, 1073807359
  %86 = icmp eq i32 %85, 1073741861
  br i1 %86, label %125, label %87, !prof !647

87:                                               ; preds = %83
  %88 = icmp eq i32 %80, 37
  br i1 %88, label %89, label %93, !prof !648

89:                                               ; preds = %87
  %90 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %76) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !649

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %92, %87
  %94 = phi ptr [ %90, %92 ], [ %76, %89 ], [ %76, %87 ]
  %95 = load i32, ptr %78, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %102, !prof !650

98:                                               ; preds = %93
  %99 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %78) #16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !651

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %93, %101, %98
  %103 = phi ptr [ %99, %101 ], [ %78, %98 ], [ %78, %93 ]
  %104 = load i32, ptr %94, align 8
  %105 = and i32 %104, 65535
  %106 = trunc i32 %104 to i16
  switch i16 %106, label %110 [
    i16 45, label %179
    i16 44, label %179
    i16 6, label %107
  ], !prof !652

107:                                              ; preds = %102
  %108 = and i32 %104, 16711680
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %179

110:                                              ; preds = %107, %102
  %111 = load i32, ptr %103, align 8
  %112 = and i32 %111, 65535
  %113 = trunc i32 %111 to i16
  switch i16 %113, label %117 [
    i16 45, label %179
    i16 44, label %179
    i16 6, label %114
    i16 30, label %125
  ], !prof !653

114:                                              ; preds = %110
  %115 = and i32 %111, 16711680
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %179

117:                                              ; preds = %110, %114
  %118 = zext nneg i32 %105 to i64
  %119 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !212
  %121 = icmp eq i32 %120, 9
  br i1 %121, label %125, label %127, !prof !654

122:                                              ; preds = %142, %159, %134
  %123 = phi ptr [ %135, %134 ], [ %160, %159 ], [ %143, %142 ]
  %124 = load ptr, ptr %123, align 8, !tbaa !216
  br label %125

125:                                              ; preds = %122, %127, %129, %117, %110, %73, %83
  %126 = phi ptr [ %76, %73 ], [ %78, %83 ], [ %94, %110 ], [ %94, %117 ], [ %103, %129 ], [ %103, %127 ], [ %124, %122 ]
  br label %2

127:                                              ; preds = %117
  %128 = icmp eq i32 %105, 30
  br i1 %128, label %125, label %129, !prof !654

129:                                              ; preds = %127
  %130 = zext nneg i32 %112 to i64
  %131 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !212
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %125, label %179, !prof !654

134:                                              ; preds = %2
  %135 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %122

136:                                              ; preds = %2
  %137 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !216
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 30
  br i1 %141, label %142, label %179, !prof !655

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %144 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !216
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %179, label %122, !prof !656

147:                                              ; preds = %2
  %148 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %179, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr %4, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !216
  %157 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !216
  %158 = icmp ult i8 %156, %157
  br i1 %158, label %179, label %159

159:                                              ; preds = %150, %2, %2, %2, %2, %2, %2, %2
  %160 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %122

161:                                              ; preds = %2, %2
  %162 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %179, label %164, !prof !657

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !216
  %167 = tail call fastcc ptr @find_base_value(ptr noundef %166) #16
  %168 = icmp eq ptr %167, null
  br i1 %168, label %179, label %169, !prof !658

169:                                              ; preds = %164
  %170 = load i32, ptr %167, align 8
  %171 = and i32 %170, 65535
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !212
  %175 = icmp eq i32 %174, 9
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %167, i8 noundef zeroext 0) #17
  br label %179

178:                                              ; preds = %2, %2
  br label %179

179:                                              ; preds = %110, %110, %136, %142, %102, %102, %107, %114, %129, %147, %150, %66, %2, %178, %161, %164, %169, %176, %49, %56, %60, %19, %24, %45, %36, %64, %48, %12
  %180 = phi ptr [ %65, %64 ], [ %16, %12 ], [ %46, %48 ], [ %34, %36 ], [ null, %45 ], [ null, %24 ], [ null, %19 ], [ null, %60 ], [ null, %56 ], [ null, %49 ], [ %177, %176 ], [ %167, %169 ], [ null, %164 ], [ null, %161 ], [ null, %2 ], [ null, %66 ], [ null, %150 ], [ null, %147 ], [ null, %136 ], [ null, %142 ], [ null, %129 ], [ %103, %114 ], [ %103, %110 ], [ %103, %110 ], [ %94, %107 ], [ %94, %102 ], [ %94, %102 ], [ %4, %178 ]
  ret ptr %180
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_reg_known_value(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !208 !PGOFuncName !659 {
  %5 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7, %19
  %11 = phi i32 [ %20, %19 ], [ %8, %7 ]
  %12 = phi ptr [ %21, %19 ], [ %5, %7 ]
  %13 = phi i64 [ %22, %19 ], [ 0, %7 ]
  %14 = icmp eq ptr %12, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds ptr, ptr %0, i64 %13
  tail call void %2(ptr noundef %16, ptr noundef %3) #17
  %17 = load ptr, ptr @reg_known_value, align 8, !tbaa !210
  %18 = load i32, ptr @reg_known_value_size, align 4, !tbaa !212
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %11, %10 ], [ %18, %15 ]
  %21 = phi ptr [ %12, %10 ], [ %17, %15 ]
  %22 = add i64 %13, 1
  %23 = zext i32 %20 to i64
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %10, !llvm.loop !660

25:                                               ; preds = %19, %7
  %26 = icmp eq ptr %0, @reg_known_value
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void %2(ptr noundef nonnull @reg_known_value, ptr noundef %3) #17
  br label %28

28:                                               ; preds = %25, %27, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!186}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!35 = !{ptr @alias_set_subset_of, ptr @get_alias_set_entry, i64 35}
!36 = !{ptr @alias_set_subset_of, ptr @splay_tree_lookup, i64 33}
!37 = !{ptr @get_alias_set_entry, ptr @VEC_alias_set_entry_base_index, i64 201}
!38 = !{ptr @alias_sets_conflict_p, ptr @alias_sets_must_conflict_p, i64 2148}
!39 = !{ptr @alias_sets_conflict_p, ptr @get_alias_set_entry, i64 82}
!40 = !{ptr @alias_sets_conflict_p, ptr @splay_tree_lookup, i64 45}
!41 = !{ptr @get_alias_set, ptr @tree_strip_nop_conversions, i64 709093}
!42 = !{ptr @get_alias_set, ptr @handled_component_p, i64 690320}
!43 = !{ptr @get_alias_set, ptr @get_deref_alias_set_1, i64 1198}
!44 = !{ptr @get_alias_set, ptr @component_uses_parent_alias_set, i64 518640}
!45 = !{ptr @get_alias_set, ptr @fancy_abort, i64 2}
!46 = !{ptr @get_alias_set, ptr @get_alias_set, i64 30}
!47 = !{ptr @get_alias_set, ptr @new_alias_set, i64 31}
!48 = !{ptr @get_alias_set, ptr @record_component_aliases, i64 45}
!49 = !{ptr @component_uses_parent_alias_set, ptr @handled_component_p, i64 736373}
!50 = !{ptr @component_uses_parent_alias_set, ptr @get_alias_set, i64 215991}
!51 = !{ptr @get_deref_alias_set, ptr @get_deref_alias_set_1, i64 1122}
!52 = !{ptr @get_deref_alias_set, ptr @get_alias_set, i64 1121}
!53 = !{ptr @new_alias_set, ptr @VEC_alias_set_entry_gc_safe_push, i64 35}
!54 = !{ptr @new_alias_set, ptr @VEC_alias_set_entry_base_length, i64 33}
!55 = !{ptr @record_component_aliases, ptr @get_alias_set, i64 102}
!56 = !{ptr @record_component_aliases, ptr @VEC_tree_base_iterate, i64 19}
!57 = !{ptr @record_component_aliases, ptr @record_alias_subset, i64 60}
!58 = !{ptr @VEC_alias_set_entry_gc_safe_push, ptr @VEC_alias_set_entry_gc_reserve, i64 35}
!59 = !{ptr @VEC_alias_set_entry_gc_safe_push, ptr @VEC_alias_set_entry_base_quick_push, i64 35}
!60 = !{ptr @record_alias_subset, ptr @fancy_abort, i64 1}
!61 = !{ptr @record_alias_subset, ptr @get_alias_set_entry, i64 80}
!62 = !{ptr @record_alias_subset, ptr @ggc_alloc_stat, i64 10}
!63 = !{ptr @record_alias_subset, ptr @splay_tree_new_with_allocator, i64 10}
!64 = !{ptr @record_alias_subset, ptr @VEC_alias_set_entry_base_replace, i64 10}
!65 = !{ptr @record_alias_subset, ptr @splay_tree_foreach, i64 8}
!66 = !{ptr @record_alias_subset, ptr @splay_tree_insert, i64 37}
!67 = !{ptr @insert_subset_children, ptr @splay_tree_insert, i64 68}
!68 = !{ptr @get_frame_alias_set, ptr @new_alias_set, i64 2}
!69 = !{ptr @canon_rtx, ptr @rhs_regno, i64 2598695}
!70 = !{ptr @canon_rtx, ptr @get_reg_known_value, i64 18190}
!71 = !{ptr @canon_rtx, ptr @canon_rtx, i64 4294373}
!72 = !{ptr @canon_rtx, ptr @plus_constant, i64 2}
!73 = !{ptr @canon_rtx, ptr @gen_rtx_fmt_ee_stat, i64 1}
!74 = !{ptr @canon_rtx, ptr @replace_equiv_address_nv, i64 3245103}
!75 = !{ptr @find_base_term, ptr @ix86_find_base_term, i64 4546828}
!76 = !{ptr @find_base_term, ptr @rhs_regno, i64 1617901}
!77 = !{ptr @find_base_term, ptr @VEC_rtx_base_length, i64 1617901}
!78 = !{ptr @find_base_term, ptr @VEC_rtx_base_index, i64 1617900}
!79 = !{ptr @find_base_term, ptr @target_default_pointer_address_modes_p, i64 3}
!80 = !{ptr @find_base_term, ptr @find_base_term, i64 1292926}
!81 = !{ptr @nonoverlapping_memrefs_p, ptr @get_spill_slot_decl, i64 2}
!82 = !{ptr @true_dependence, ptr @get_addr, i64 819386}
!83 = !{ptr @true_dependence, ptr @find_base_term, i64 409693}
!84 = !{ptr @true_dependence, ptr @base_alias_check, i64 409691}
!85 = !{ptr @true_dependence, ptr @canon_rtx, i64 1486}
!86 = !{ptr @true_dependence, ptr @memrefs_conflict_p, i64 743}
!87 = !{ptr @true_dependence, ptr @mems_in_disjoint_alias_sets_p, i64 597}
!88 = !{ptr @true_dependence, ptr @nonoverlapping_memrefs_p, i64 596}
!89 = !{ptr @true_dependence, ptr @aliases_everything_p, i64 595}
!90 = !{ptr @true_dependence, ptr @fixed_scalar_and_varying_struct_p, i64 590}
!91 = !{ptr @true_dependence, ptr @rtx_refs_may_alias_p, i64 589}
!92 = !{ptr @base_alias_check, ptr @find_base_term, i64 2655458}
!93 = !{ptr @base_alias_check, ptr @canon_rtx, i64 1731}
!94 = !{ptr @base_alias_check, ptr @rtx_equal_p, i64 1325996}
!95 = !{ptr @memrefs_conflict_p, ptr @get_addr, i64 52805}
!96 = !{ptr @memrefs_conflict_p, ptr @addr_side_effect_eval, i64 690406}
!97 = !{ptr @memrefs_conflict_p, ptr @rtx_equal_for_memref_p, i64 357224}
!98 = !{ptr @memrefs_conflict_p, ptr @canon_rtx, i64 13}
!99 = !{ptr @mems_in_disjoint_alias_sets_p, ptr @fancy_abort, i64 1}
!100 = !{ptr @mems_in_disjoint_alias_sets_p, ptr @alias_sets_conflict_p, i64 1323}
!101 = !{ptr @rtx_refs_may_alias_p, ptr @ao_ref_from_mem, i64 2763}
!102 = !{ptr @rtx_refs_may_alias_p, ptr @refs_may_alias_p_1, i64 1}
!103 = !{ptr @canon_true_dependence, ptr @get_addr, i64 460812}
!104 = !{ptr @canon_true_dependence, ptr @base_alias_check, i64 648730}
!105 = !{ptr @canon_true_dependence, ptr @canon_rtx, i64 56399}
!106 = !{ptr @canon_true_dependence, ptr @memrefs_conflict_p, i64 56399}
!107 = !{ptr @canon_true_dependence, ptr @mems_in_disjoint_alias_sets_p, i64 727}
!108 = !{ptr @canon_true_dependence, ptr @nonoverlapping_memrefs_p, i64 726}
!109 = !{ptr @canon_true_dependence, ptr @aliases_everything_p, i64 725}
!110 = !{ptr @canon_true_dependence, ptr @fixed_scalar_and_varying_struct_p, i64 614}
!111 = !{ptr @canon_true_dependence, ptr @rtx_refs_may_alias_p, i64 613}
!112 = !{ptr @anti_dependence, ptr @write_dependence_p, i64 206154}
!113 = !{ptr @write_dependence_p, ptr @get_addr, i64 538584}
!114 = !{ptr @write_dependence_p, ptr @find_base_term, i64 205972}
!115 = !{ptr @write_dependence_p, ptr @base_alias_check, i64 269290}
!116 = !{ptr @write_dependence_p, ptr @canon_rtx, i64 59598}
!117 = !{ptr @write_dependence_p, ptr @memrefs_conflict_p, i64 29799}
!118 = !{ptr @write_dependence_p, ptr @nonoverlapping_memrefs_p, i64 369}
!119 = !{ptr @write_dependence_p, ptr @fixed_scalar_and_varying_struct_p, i64 368}
!120 = !{ptr @write_dependence_p, ptr @aliases_everything_p, i64 2}
!121 = !{ptr @write_dependence_p, ptr @rtx_refs_may_alias_p, i64 367}
!122 = !{ptr @output_dependence, ptr @write_dependence_p, i64 63779}
!123 = !{ptr @init_alias_target, ptr @ix86_function_arg_regno_p, i64 27}
!124 = !{ptr @init_alias_target, ptr @ix86_hard_regno_mode_ok, i64 2}
!125 = !{ptr @init_alias_target, ptr @gen_rtx_REG, i64 2}
!126 = !{ptr @init_alias_target, ptr @gen_rtx_fmt_e_stat, i64 6}
!127 = !{ptr @memory_modified_in_insn_p, ptr @note_stores, i64 184160}
!128 = !{ptr @memory_modified_1, ptr @anti_dependence, i64 33092}
!129 = !{ptr @memory_modified_1, ptr @output_dependence, i64 33048}
!130 = !{ptr @init_alias_analysis, ptr @max_reg_num, i64 875}
!131 = !{ptr @init_alias_analysis, ptr @timevar_push_1, i64 1}
!132 = !{ptr @init_alias_analysis, ptr @ggc_alloc_cleared_stat, i64 375}
!133 = !{ptr @init_alias_analysis, ptr @xcalloc, i64 375}
!134 = !{ptr @init_alias_analysis, ptr @VEC_rtx_base_truncate, i64 373}
!135 = !{ptr @init_alias_analysis, ptr @VEC_rtx_gc_safe_grow_cleared, i64 375}
!136 = !{ptr @init_alias_analysis, ptr @xmalloc, i64 750}
!137 = !{ptr @init_alias_analysis, ptr @get_insns, i64 500}
!138 = !{ptr @init_alias_analysis, ptr @prologue_epilogue_contains, i64 3759328}
!139 = !{ptr @init_alias_analysis, ptr @find_reg_note, i64 3662572}
!140 = !{ptr @init_alias_analysis, ptr @record_set, i64 1}
!141 = !{ptr @init_alias_analysis, ptr @note_stores, i64 7354230}
!142 = !{ptr @init_alias_analysis, ptr @single_set_2, i64 1}
!143 = !{ptr @init_alias_analysis, ptr @rhs_regno, i64 4421228}
!144 = !{ptr @init_alias_analysis, ptr @find_reg_equal_equiv_note, i64 1093078}
!145 = !{ptr @init_alias_analysis, ptr @rtx_varies_p, i64 764490}
!146 = !{ptr @init_alias_analysis, ptr @reg_overlap_mentioned_p, i64 1}
!147 = !{ptr @init_alias_analysis, ptr @get_reg_known_value, i64 18111}
!148 = !{ptr @init_alias_analysis, ptr @set_reg_known_value, i64 55649}
!149 = !{ptr @init_alias_analysis, ptr @set_reg_known_equiv_p, i64 55649}
!150 = !{ptr @init_alias_analysis, ptr @fancy_abort, i64 1}
!151 = !{ptr @init_alias_analysis, ptr @VEC_rtx_base_index, i64 21999}
!152 = !{ptr @init_alias_analysis, ptr @rtx_equal_p, i64 11123}
!153 = !{ptr @init_alias_analysis, ptr @VEC_rtx_base_replace, i64 10999}
!154 = !{ptr @init_alias_analysis, ptr @free, i64 750}
!155 = !{ptr @init_alias_analysis, ptr @timevar_pop_1, i64 1}
!156 = !{ptr @VEC_rtx_gc_safe_grow_cleared, ptr @VEC_rtx_base_length, i64 375}
!157 = !{ptr @VEC_rtx_gc_safe_grow_cleared, ptr @VEC_rtx_gc_safe_grow, i64 375}
!158 = !{ptr @VEC_rtx_gc_safe_grow_cleared, ptr @VEC_rtx_base_address, i64 375}
!159 = !{ptr @record_set, ptr @rhs_regno, i64 6966904}
!160 = !{ptr @record_set, ptr @VEC_rtx_base_length, i64 6966904}
!161 = !{ptr @record_set, ptr @fancy_abort, i64 1}
!162 = !{ptr @record_set, ptr @find_base_value, i64 1122672}
!163 = !{ptr @end_alias_analysis, ptr @ggc_free, i64 375}
!164 = !{ptr @end_alias_analysis, ptr @free, i64 375}
!165 = !{ptr @VEC_alias_set_entry_gc_reserve, ptr @VEC_alias_set_entry_base_space, i64 35}
!166 = !{ptr @VEC_alias_set_entry_gc_reserve, ptr @vec_gc_p_reserve, i64 6}
!167 = !{ptr @addr_side_effect_eval, ptr @gen_rtx_CONST_INT, i64 713}
!168 = !{ptr @addr_side_effect_eval, ptr @gen_rtx_fmt_ee_stat, i64 713}
!169 = !{ptr @addr_side_effect_eval, ptr @canon_rtx, i64 715}
!170 = !{ptr @rtx_equal_for_memref_p, ptr @rhs_regno, i64 5448}
!171 = !{ptr @rtx_equal_for_memref_p, ptr @rtx_equal_for_memref_p, i64 8238}
!172 = !{ptr @ao_ref_from_mem, ptr @ao_ref_init, i64 1}
!173 = !{ptr @ao_ref_from_mem, ptr @ao_ref_base, i64 1}
!174 = !{ptr @ao_ref_from_mem, ptr @get_spill_slot_decl, i64 1}
!175 = !{ptr @VEC_rtx_gc_safe_grow, ptr @VEC_rtx_gc_reserve_exact, i64 375}
!176 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @VEC_rtx_base_space, i64 375}
!177 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 8}
!178 = !{ptr @find_base_value, ptr @ix86_find_base_term, i64 1306344}
!179 = !{ptr @find_base_value, ptr @rhs_regno, i64 684283}
!180 = !{ptr @find_base_value, ptr @VEC_rtx_base_length, i64 114176}
!181 = !{ptr @find_base_value, ptr @VEC_rtx_base_index, i64 114174}
!182 = !{ptr @find_base_value, ptr @gen_rtx_fmt_e_stat, i64 395}
!183 = !{ptr @find_base_value, ptr @find_base_value, i64 37219}
!184 = !{ptr @find_base_value, ptr @target_default_pointer_address_modes_p, i64 2746}
!185 = !{ptr @find_base_value, ptr @convert_memory_address_addr_space, i64 1}
!186 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!187 = !{!"function_entry_count", i64 36}
!188 = !{!"branch_weights", i32 1, i32 37}
!189 = !{!190, !191, i64 4}
!190 = !{!"alias_set_entry_d", !191, i64 0, !191, i64 4, !194, i64 8}
!191 = !{!"int", !192, i64 0}
!192 = !{!"omnipotent char", !193, i64 0}
!193 = !{!"Simple C/C++ TBAA"}
!194 = !{!"any pointer", !192, i64 0}
!195 = !{!"branch_weights", i32 37, i32 1407}
!196 = !{!190, !194, i64 8}
!197 = !{!"branch_weights", i32 37, i32 1}
!198 = !{!"function_entry_count", i64 201}
!199 = !{!"alias.c:get_alias_set_entry"}
!200 = !{!"function_entry_count", i64 2148}
!201 = !{i32 0, i32 2}
!202 = !{!"branch_weights", i32 42, i32 2108}
!203 = !{!"branch_weights", i32 36, i32 7}
!204 = !{!"branch_weights", i32 7, i32 1}
!205 = !{!"branch_weights", i32 1, i32 42}
!206 = !{!"branch_weights", i32 42, i32 1}
!207 = !{!"branch_weights", i32 7, i32 36}
!208 = !{!"function_entry_count", i64 0}
!209 = !{!"alias.c:walk_mems_1"}
!210 = !{!194, !194, i64 0}
!211 = !{!"function_entry_count", i64 889983}
!212 = !{!191, !191, i64 0}
!213 = !{!"branch_weights", i32 1, i32 127}
!214 = !{!"branch_weights", i32 1, i32 889984}
!215 = !{!"branch_weights", i32 380788, i32 509197}
!216 = !{!192, !192, i64 0}
!217 = !{!"branch_weights", i32 15912, i32 -243692534}
!218 = !{!219, !194, i64 104}
!219 = !{!"lang_hooks", !194, i64 0, !220, i64 8, !194, i64 16, !194, i64 24, !194, i64 32, !194, i64 40, !194, i64 48, !194, i64 56, !194, i64 64, !194, i64 72, !194, i64 80, !194, i64 88, !194, i64 96, !194, i64 104, !194, i64 112, !194, i64 120, !194, i64 128, !194, i64 136, !194, i64 144, !194, i64 152, !194, i64 160, !194, i64 168, !194, i64 176, !194, i64 184, !194, i64 192, !194, i64 200, !194, i64 208, !194, i64 216, !194, i64 224, !194, i64 232, !221, i64 240, !222, i64 248, !223, i64 256, !224, i64 272, !225, i64 432, !226, i64 560, !194, i64 584, !194, i64 592, !194, i64 600, !194, i64 608, !194, i64 616, !194, i64 624, !194, i64 632, !194, i64 640, !194, i64 648, !194, i64 656, !194, i64 664, !192, i64 672}
!220 = !{!"long", !192, i64 0}
!221 = !{!"lang_hooks_for_tree_inlining", !194, i64 0}
!222 = !{!"lang_hooks_for_callgraph", !194, i64 0}
!223 = !{!"lang_hooks_for_tree_dump", !194, i64 0, !194, i64 8}
!224 = !{!"lang_hooks_for_decls", !194, i64 0, !194, i64 8, !194, i64 16, !194, i64 24, !194, i64 32, !194, i64 40, !194, i64 48, !194, i64 56, !194, i64 64, !194, i64 72, !194, i64 80, !194, i64 88, !194, i64 96, !194, i64 104, !194, i64 112, !194, i64 120, !194, i64 128, !194, i64 136, !194, i64 144, !194, i64 152}
!225 = !{!"lang_hooks_for_types", !194, i64 0, !194, i64 8, !194, i64 16, !194, i64 24, !194, i64 32, !194, i64 40, !194, i64 48, !194, i64 56, !194, i64 64, !194, i64 72, !194, i64 80, !194, i64 88, !194, i64 96, !194, i64 104, !194, i64 112, !192, i64 120}
!226 = !{!"lang_hooks_for_lto", !194, i64 0, !194, i64 8, !194, i64 16}
!227 = !{!"branch_weights", i32 506503, i32 2695}
!228 = !{!"branch_weights", i32 1, i32 506503}
!229 = !{i8 0, i8 2}
!230 = !{!"branch_weights", i32 317245, i32 189258}
!231 = !{!"branch_weights", i32 189258, i32 0}
!232 = distinct !{!232, !233}
!233 = !{!"llvm.loop.mustprogress"}
!234 = !{!"branch_weights", i32 9184508, i32 -449975437}
!235 = !{i32 -1, i32 1}
!236 = !{!"branch_weights", i32 1205, i32 1}
!237 = !{!"branch_weights", i32 490277, i32 16226}
!238 = !{!"branch_weights", i32 16226, i32 0}
!239 = distinct !{!239, !233}
!240 = !{!"branch_weights", i32 573895096, i32 -1554379359}
!241 = !{!"branch_weights", i32 295, i32 418511}
!242 = !{!"branch_weights", i32 418511, i32 1}
!243 = !{!"branch_weights", i32 1, i32 418511}
!244 = !{!245, !191, i64 24}
!245 = !{!"mem_attrs", !194, i64 0, !194, i64 8, !194, i64 16, !191, i64 24, !191, i64 28, !192, i64 32}
!246 = !{!"branch_weights", i32 1, i32 468780}
!247 = !{!"branch_weights", i32 -861300290, i32 14649}
!248 = !{!"branch_weights", i32 585, i32 468196}
!249 = !{!"branch_weights", i32 1, i32 585}
!250 = !{!"branch_weights", i32 127, i32 113917825}
!251 = !{!"branch_weights", i32 63, i32 523}
!252 = !{!"branch_weights", i32 8001504, i32 262144, i32 258048, i32 254016, i32 8001504}
!253 = !{!"branch_weights", i32 32, i32 1}
!254 = !{!"branch_weights", i32 6816096, i32 12266496, i32 3717120, i32 1068672, i32 340032, i32 324576}
!255 = !{!"function_entry_count", i64 537764}
!256 = !{!"branch_weights", i32 519425, i32 216954}
!257 = !{!"branch_weights", i32 1, i32 100509, i32 116446, i32 1, i32 1, i32 1}
!258 = !{!"branch_weights", i32 99551, i32 959}
!259 = !{!"branch_weights", i32 116446, i32 1}
!260 = !{!"branch_weights", i32 17383, i32 198614}
!261 = !{!"function_entry_count", i64 1432136}
!262 = !{!"alias.c:handled_component_p"}
!263 = !{!"branch_weights", i32 1025927, i32 1, i32 187923, i32 218289, i32 1, i32 1, i32 1, i32 1}
!264 = !{!"function_entry_count", i64 1122}
!265 = !{!"branch_weights", i32 1123, i32 1}
!266 = !{!"branch_weights", i32 769, i32 355}
!267 = !{!"function_entry_count", i64 2326}
!268 = !{!"alias.c:get_deref_alias_set_1"}
!269 = !{!"branch_weights", i32 1, i32 2327}
!270 = !{!"branch_weights", i32 769, i32 1559}
!271 = !{!"function_entry_count", i64 34}
!272 = !{!"branch_weights", i32 1, i32 35}
!273 = !{!"branch_weights", i32 2, i32 34}
!274 = !{!"function_entry_count", i64 42}
!275 = !{!"branch_weights", i32 21, i32 23}
!276 = !{!"branch_weights", i32 12, i32 10, i32 3, i32 1, i32 1}
!277 = !{!"branch_weights", i32 12, i32 1}
!278 = distinct !{!278, !233}
!279 = !{!"branch_weights", i32 1, i32 191}
!280 = !{!"branch_weights", i32 70, i32 1}
!281 = !{!"branch_weights", i32 45, i32 26}
!282 = !{!"branch_weights", i32 191, i32 929}
!283 = distinct !{!283, !233}
!284 = !{!"function_entry_count", i64 35}
!285 = !{!"alias.c:VEC_alias_set_entry_gc_safe_push"}
!286 = !{!"alias.c:VEC_alias_set_entry_base_length"}
!287 = !{!288, !191, i64 0}
!288 = !{!"VEC_alias_set_entry_base", !191, i64 0, !191, i64 4, !192, i64 8}
!289 = !{!"function_entry_count", i64 44}
!290 = !{!"branch_weights", i32 1, i32 45}
!291 = !{!"branch_weights", i32 11, i32 35}
!292 = !{!190, !191, i64 0}
!293 = !{!"branch_weights", i32 6, i32 40}
!294 = !{!"branch_weights", i32 32, i32 9}
!295 = !{!"branch_weights", i32 9, i32 1}
!296 = !{!"function_entry_count", i64 10}
!297 = !{!"alias.c:VEC_alias_set_entry_base_replace"}
!298 = !{!"function_entry_count", i64 68}
!299 = !{!"alias.c:insert_subset_children"}
!300 = !{!301, !220, i64 0}
!301 = !{!"splay_tree_node_s", !220, i64 0, !220, i64 8, !194, i64 16, !194, i64 24}
!302 = !{!301, !220, i64 8}
!303 = !{!"alias.c:VEC_tree_base_iterate"}
!304 = !{!305, !191, i64 0}
!305 = !{!"VEC_tree_base", !191, i64 0, !191, i64 4, !192, i64 8}
!306 = !{!"function_entry_count", i64 12}
!307 = !{!"branch_weights", i32 2, i32 12}
!308 = !{!"function_entry_count", i64 45251}
!309 = !{!"branch_weights", i32 45252, i32 1}
!310 = !{!"branch_weights", i32 44770, i32 483}
!311 = !{!"function_entry_count", i64 9373938}
!312 = !{!"branch_weights", i32 2594183, i32 6779757}
!313 = !{!"branch_weights", i32 18158, i32 2576026}
!314 = !{!"branch_weights", i32 1396, i32 16763}
!315 = !{!"branch_weights", i32 483, i32 16281}
!316 = !{!"branch_weights", i32 -1279766699, i32 282337294, i32 1746383225}
!317 = !{!"branch_weights", i32 523724, i32 1}
!318 = !{!"function_entry_count", i64 21713227}
!319 = !{!"alias.c:rhs_regno"}
!320 = !{!"function_entry_count", i64 4545774}
!321 = !{!"branch_weights", i32 323661, i32 1617533, i32 1, i32 1, i32 1, i32 1044, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 215095, i32 1, i32 244395, i32 325262, i32 1, i32 1, i32 1818791, i32 1}
!322 = !{!"branch_weights", i32 1617533, i32 1}
!323 = !{!"branch_weights", i32 1, i32 215095}
!324 = !{!"branch_weights", i32 350, i32 215331}
!325 = !{!326, !194, i64 8}
!326 = !{!"elt_loc_list", !194, i64 0, !194, i64 8, !194, i64 16}
!327 = !{!"branch_weights", i32 586, i32 214746}
!328 = distinct !{!328, !233}
!329 = !{!"branch_weights", i32 488791, i32 1}
!330 = !{!"branch_weights", i32 1, i32 569656}
!331 = !{!"branch_weights", i32 1922713066, i32 -1802001929}
!332 = !{!"branch_weights", i32 1, i32 323425}
!333 = !{!"branch_weights", i32 2164, i32 321262}
!334 = !{!"branch_weights", i32 11269, i32 -1540580921, i32 11269, i32 866297032}
!335 = !{!"branch_weights", i32 81, i32 76788}
!336 = !{!"branch_weights", i32 2244, i32 1}
!337 = !{!"function_entry_count", i64 8692670}
!338 = !{!"alias.c:VEC_rtx_base_length"}
!339 = !{!"branch_weights", i32 3, i32 8692669}
!340 = !{!341, !191, i64 0}
!341 = !{!"VEC_rtx_base", !191, i64 0, !191, i64 4, !192, i64 8}
!342 = !{!"function_entry_count", i64 1774764}
!343 = !{!"alias.c:VEC_rtx_base_index"}
!344 = !{!"function_entry_count", i64 2832589}
!345 = !{!"branch_weights", i32 181571, i32 2651020}
!346 = !{!"branch_weights", i32 1, i32 181571}
!347 = !{!"branch_weights", i32 53739, i32 181887}
!348 = !{!"branch_weights", i32 1, i32 26723}
!349 = !{!"branch_weights", i32 127833, i32 54055}
!350 = distinct !{!350, !233}
!351 = !{!"branch_weights", i32 738401312, i32 730447092, i32 8664244}
!352 = !{!"branch_weights", i32 26723, i32 27332}
!353 = distinct !{!353, !233}
!354 = !{!"branch_weights", i32 0, i32 -2147483648}
!355 = !{!"function_entry_count", i64 115849}
!356 = !{!"branch_weights", i32 115850, i32 1}
!357 = !{!"function_entry_count", i64 1691}
!358 = !{!"branch_weights", i32 199, i32 1494}
!359 = !{!245, !194, i64 0}
!360 = !{!"branch_weights", i32 133, i32 1560}
!361 = !{!"branch_weights", i32 2146108674, i32 1374974}
!362 = !{!245, !194, i64 8}
!363 = !{!245, !192, i64 32}
!364 = !{!245, !194, i64 16}
!365 = !{!"alias.c:nonoverlapping_component_refs_p"}
!366 = distinct !{!366, !233}
!367 = distinct !{!367, !233}
!368 = distinct !{!368, !233}
!369 = !{!"alias.c:decl_for_component_ref"}
!370 = distinct !{!370, !233}
!371 = !{!"alias.c:adjust_offset_for_component_ref"}
!372 = distinct !{!372, !233}
!373 = !{!"function_entry_count", i64 410511}
!374 = !{!"branch_weights", i32 410512, i32 1}
!375 = !{!"branch_weights", i32 1, i32 410512}
!376 = !{!"branch_weights", i32 814, i32 409699}
!377 = !{!"branch_weights", i32 814, i32 1}
!378 = !{!"branch_weights", i32 382599, i32 27101}
!379 = !{!"branch_weights", i32 79245, i32 2147404403}
!380 = !{!"branch_weights", i32 489, i32 409211}
!381 = !{!"branch_weights", i32 5248, i32 2147478400}
!382 = !{!"branch_weights", i32 409699, i32 1}
!383 = !{!"branch_weights", i32 408079, i32 1621}
!384 = !{!"branch_weights", i32 558, i32 409142}
!385 = !{!"branch_weights", i32 3177243, i32 6392, i32 -1682557269}
!386 = !{!"branch_weights", i32 408646, i32 1}
!387 = !{!"branch_weights", i32 408957, i32 743}
!388 = !{!"branch_weights", i32 598, i32 146}
!389 = !{!"branch_weights", i32 598, i32 1}
!390 = !{!"branch_weights", i32 1197, i32 357604}
!391 = !{!"branch_weights", i32 1, i32 598}
!392 = !{!"function_entry_count", i64 1327728}
!393 = !{!"alias.c:base_alias_check"}
!394 = !{!"branch_weights", i32 1327, i32 1326403}
!395 = !{!"branch_weights", i32 1, i32 1327}
!396 = !{!"branch_weights", i32 1327, i32 1}
!397 = !{!"branch_weights", i32 406, i32 1325998}
!398 = !{!"branch_weights", i32 1, i32 406}
!399 = !{!"branch_weights", i32 406, i32 1}
!400 = !{!"branch_weights", i32 1240789, i32 85210}
!401 = !{!"branch_weights", i32 1, i32 1240789}
!402 = !{!"branch_weights", i32 175271, i32 1065519}
!403 = !{!"branch_weights", i32 1065519, i32 1}
!404 = !{!"branch_weights", i32 2140902440, i32 6581208}
!405 = !{!"branch_weights", i32 -2075292955, i32 4164}
!406 = !{!"function_entry_count", i64 173240}
!407 = !{!"alias.c:memrefs_conflict_p"}
!408 = !{!"branch_weights", i32 161, i32 173081}
!409 = !{!"branch_weights", i32 26339, i32 146903}
!410 = !{!"branch_weights", i32 -543411786, i32 21655, i32 21655}
!411 = !{!"branch_weights", i32 89683, i32 83559}
!412 = !{!"branch_weights", i32 83559, i32 -803914056}
!413 = !{!"branch_weights", i32 8153208, i32 -1985792804}
!414 = !{!"branch_weights", i32 31380, i32 58304}
!415 = !{!"branch_weights", i32 3020, i32 28361}
!416 = !{!"branch_weights", i32 3010, i32 11}
!417 = !{!"branch_weights", i32 1319, i32 1692}
!418 = !{!"branch_weights", i32 1319, i32 1}
!419 = !{!"branch_weights", i32 28361, i32 1}
!420 = !{!"branch_weights", i32 54922, i32 3383}
!421 = !{!"branch_weights", i32 54922, i32 1}
!422 = !{!"branch_weights", i32 634594, i32 2146849054}
!423 = !{!"branch_weights", i32 634786, i32 2146848862}
!424 = !{!"branch_weights", i32 1, i32 3383}
!425 = !{!"branch_weights", i32 1692, i32 1692}
!426 = !{!"branch_weights", i32 1, i32 3384, i32 1}
!427 = !{!"branch_weights", i32 3385, i32 2862864}
!428 = !{!"branch_weights", i32 658, i32 1115029}
!429 = !{!"branch_weights", i32 1035, i32 658}
!430 = !{!"function_entry_count", i64 1323}
!431 = !{!"alias.c:mems_in_disjoint_alias_sets_p"}
!432 = !{!"branch_weights", i32 1, i32 1324}
!433 = !{!"branch_weights", i32 331, i32 994}
!434 = !{!"alias.c:aliases_everything_p"}
!435 = !{!"function_entry_count", i64 1584}
!436 = !{!"alias.c:fixed_scalar_and_varying_struct_p"}
!437 = !{!"branch_weights", i32 1, i32 1585}
!438 = !{!"branch_weights", i32 1355, i32 231}
!439 = !{!"branch_weights", i32 231, i32 1}
!440 = !{!"branch_weights", i32 1262, i32 101}
!441 = !{!"branch_weights", i32 1, i32 101}
!442 = !{!"branch_weights", i32 101, i32 1}
!443 = !{!"alias.c:rtx_refs_may_alias_p"}
!444 = !{!"branch_weights", i32 406, i32 1180}
!445 = !{!"branch_weights", i32 1180, i32 1}
!446 = !{!"function_entry_count", i64 924282}
!447 = !{!"branch_weights", i32 924283, i32 1}
!448 = !{!"branch_weights", i32 1, i32 924283}
!449 = !{!"branch_weights", i32 275549, i32 648735}
!450 = !{!"branch_weights", i32 275549, i32 1}
!451 = !{!"branch_weights", i32 163214, i32 485522}
!452 = !{!"branch_weights", i32 4422, i32 2147479226}
!453 = !{!"branch_weights", i32 214, i32 648522}
!454 = !{!"branch_weights", i32 3311, i32 2147480337}
!455 = !{!"branch_weights", i32 648735, i32 1}
!456 = !{!"branch_weights", i32 460816, i32 187920}
!457 = !{!"branch_weights", i32 592336, i32 56400}
!458 = !{!"branch_weights", i32 727, i32 55674}
!459 = !{!"branch_weights", i32 727, i32 1}
!460 = !{!"branch_weights", i32 79244, i32 450740}
!461 = !{!"branch_weights", i32 1241, i32 384400}
!462 = !{!"branch_weights", i32 1, i32 620}
!463 = !{!"branch_weights", i32 620, i32 1}
!464 = !{!"function_entry_count", i64 206154}
!465 = !{i32 0, i32 -1}
!466 = !{!"function_entry_count", i64 269933}
!467 = !{!"alias.c:write_dependence_p"}
!468 = !{!"branch_weights", i32 269934, i32 1}
!469 = !{!"branch_weights", i32 471, i32 269464}
!470 = !{!"branch_weights", i32 471, i32 1}
!471 = !{!"branch_weights", i32 168, i32 269297}
!472 = !{!"branch_weights", i32 168, i32 1}
!473 = !{!"branch_weights", i32 558, i32 268740}
!474 = !{!"branch_weights", i32 7990, i32 2147475658}
!475 = !{!"branch_weights", i32 510, i32 268788}
!476 = !{!"branch_weights", i32 1, i32 269297}
!477 = !{!"branch_weights", i32 -828138705, i32 12873}
!478 = !{!"branch_weights", i32 269297, i32 1}
!479 = !{!"branch_weights", i32 63321, i32 205977}
!480 = !{!"branch_weights", i32 326, i32 205652}
!481 = !{!"branch_weights", i32 426059531, i32 12853, i32 -2077717405}
!482 = !{!"branch_weights", i32 172505, i32 1}
!483 = !{!"branch_weights", i32 239498, i32 29800}
!484 = !{!"branch_weights", i32 369, i32 29432}
!485 = !{!"branch_weights", i32 369, i32 1}
!486 = !{!"branch_weights", i32 1, i32 369}
!487 = !{!"function_entry_count", i64 63779}
!488 = !{!"function_entry_count", i64 1}
!489 = !{!"branch_weights", i32 51, i32 4}
!490 = !{!"branch_weights", i32 1, i32 4}
!491 = !{!"branch_weights", i32 2, i32 52}
!492 = distinct !{!492, !233}
!493 = !{!"function_entry_count", i64 184161}
!494 = !{!"branch_weights", i32 -1007624475, i32 17849}
!495 = !{!"function_entry_count", i64 186221}
!496 = !{!"alias.c:memory_modified_1"}
!497 = !{!"branch_weights", i32 33092, i32 153131}
!498 = !{!"branch_weights", i32 33049, i32 44}
!499 = !{!"branch_weights", i32 33049, i32 1}
!500 = !{!"function_entry_count", i64 375}
!501 = !{!"branch_weights", i32 376, i32 1}
!502 = !{!"branch_weights", i32 2, i32 375}
!503 = !{!"branch_weights", i32 -2147483648, i32 0}
!504 = !{!"branch_weights", i32 1, i32 750}
!505 = !{!"branch_weights", i32 696360608, i32 -538141196, i32 536, i32 1522772724, i32 672016557, i32 2009002977}
!506 = !{!"branch_weights", i32 5401463, i32 5646487}
!507 = !{!"branch_weights", i32 5644545, i32 1943}
!508 = !{!"branch_weights", i32 10730957, i32 315051}
!509 = !{!"branch_weights", i32 5229797, i32 5501161}
!510 = !{!"branch_weights", i32 5501161, i32 1}
!511 = !{!"branch_weights", i32 -1121107910, i32 287}
!512 = !{!"branch_weights", i32 10730957, i32 1}
!513 = !{!"branch_weights", i32 6586937, i32 4414779}
!514 = !{!"branch_weights", i32 1635213, i32 4951725}
!515 = !{!"branch_weights", i32 1597971, i32 37243}
!516 = !{!"branch_weights", i32 36883, i32 361}
!517 = !{!518, !194, i64 216}
!518 = !{!"df", !192, i64 0, !192, i64 64, !194, i64 128, !519, i64 136, !519, i64 176, !194, i64 216, !194, i64 224, !194, i64 232, !191, i64 240, !191, i64 244, !194, i64 248, !191, i64 256, !191, i64 260, !194, i64 264, !194, i64 272, !194, i64 280, !194, i64 288, !194, i64 296, !194, i64 304, !194, i64 312, !194, i64 320, !194, i64 328, !194, i64 336, !191, i64 344, !191, i64 348, !194, i64 352, !191, i64 360, !191, i64 364, !192, i64 365, !192, i64 366}
!519 = !{!"df_ref_info", !194, i64 0, !194, i64 8, !194, i64 16, !191, i64 24, !191, i64 28, !191, i64 32, !191, i64 36}
!520 = !{!521, !191, i64 8}
!521 = !{!"df_reg_info", !194, i64 0, !191, i64 8}
!522 = !{!"branch_weights", i32 36347, i32 537}
!523 = !{!"branch_weights", i32 1, i32 36707}
!524 = !{!"branch_weights", i32 1106951, i32 528263}
!525 = !{!"branch_weights", i32 27223, i32 1079729}
!526 = !{!"branch_weights", i32 27095, i32 129}
!527 = !{!"branch_weights", i32 27095, i32 1}
!528 = !{!"branch_weights", i32 83249, i32 1023703}
!529 = !{!"branch_weights", i32 751, i32 3728553}
!530 = !{!"branch_weights", i32 750, i32 16069151}
!531 = distinct !{!531, !233}
!532 = !{!"branch_weights", i32 751, i32 1}
!533 = !{!"branch_weights", i32 5247739, i32 33043}
!534 = !{!"branch_weights", i32 16337, i32 16707}
!535 = !{!"branch_weights", i32 16522, i32 186}
!536 = !{!"branch_weights", i32 750, i32 5280031}
!537 = distinct !{!537, !233}
!538 = !{!"branch_weights", i32 537586740, i32 1609896908}
!539 = distinct !{!539, !233}
!540 = !{!"branch_weights", i32 375, i32 1}
!541 = !{!"branch_weights", i32 2578892, i32 41625}
!542 = !{!"branch_weights", i32 375, i32 2620141}
!543 = distinct !{!543, !233}
!544 = !{!"function_entry_count", i64 374}
!545 = !{!"alias.c:VEC_rtx_base_truncate"}
!546 = !{!"alias.c:VEC_rtx_gc_safe_grow_cleared"}
!547 = !{!"function_entry_count", i64 11275718}
!548 = !{!"alias.c:record_set"}
!549 = !{!"branch_weights", i32 6966905, i32 4308815}
!550 = !{!"branch_weights", i32 6966905, i32 1}
!551 = !{!"branch_weights", i32 5331385, i32 1635521}
!552 = !{!"branch_weights", i32 402, i32 -804, i32 402}
!553 = distinct !{!553, !233}
!554 = !{!"branch_weights", i32 1, i32 6966905}
!555 = !{!"branch_weights", i32 270309, i32 6696597}
!556 = !{!"branch_weights", i32 6695293, i32 1305}
!557 = !{!"branch_weights", i32 1, i32 1305}
!558 = !{!"branch_weights", i32 1305, i32 1, i32 1, i32 1, i32 1}
!559 = !{!"branch_weights", i32 1635521, i32 5059773}
!560 = !{!"branch_weights", i32 2214507, i32 2845267}
!561 = !{!"branch_weights", i32 1227996517, i32 -1306844773}
!562 = !{!"function_entry_count", i64 83248}
!563 = !{!"alias.c:set_reg_known_value"}
!564 = !{!"branch_weights", i32 83249, i32 1}
!565 = !{!"alias.c:set_reg_known_equiv_p"}
!566 = !{!"function_entry_count", i64 16521}
!567 = !{!"alias.c:VEC_rtx_base_replace"}
!568 = !{!569, !191, i64 0}
!569 = !{!"VEC_alias_set_entry_gc", !288, i64 0}
!570 = distinct !{!570, !233}
!571 = distinct !{!571, !233}
!572 = distinct !{!572, !233}
!573 = !{!"alias.c:gt_ggc_ma_reg_known_value"}
!574 = distinct !{!574, !233}
!575 = !{!"alias.c:gt_pch_na_reg_known_value"}
!576 = distinct !{!576, !233}
!577 = !{!"alias.c:VEC_alias_set_entry_base_index"}
!578 = !{!"alias.c:walk_mems_2"}
!579 = !{!"alias.c:VEC_alias_set_entry_gc_reserve"}
!580 = !{!"branch_weights", i32 6, i32 31}
!581 = !{!"alias.c:VEC_alias_set_entry_base_quick_push"}
!582 = !{!"alias.c:VEC_alias_set_entry_base_space"}
!583 = !{!"branch_weights", i32 2, i32 35}
!584 = !{!288, !191, i64 4}
!585 = !{!"function_entry_count", i64 346480}
!586 = !{!"alias.c:addr_side_effect_eval"}
!587 = !{!"branch_weights", i32 345770, i32 1, i32 712, i32 1, i32 1}
!588 = !{!"function_entry_count", i64 187577}
!589 = !{!"alias.c:rtx_equal_for_memref_p"}
!590 = !{!"branch_weights", i32 15741, i32 2147467907}
!591 = !{!"branch_weights", i32 87241, i32 100338}
!592 = !{!"branch_weights", i32 12767, i32 87572}
!593 = !{!"branch_weights", i32 12767, i32 1}
!594 = !{!"branch_weights", i32 3310, i32 2747, i32 1, i32 1, i32 321, i32 6392, i32 1, i32 1}
!595 = !{!"branch_weights", i32 3310, i32 1}
!596 = !{!"branch_weights", i32 1329, i32 1982}
!597 = !{!"branch_weights", i32 1692, i32 291}
!598 = !{!"branch_weights", i32 3020, i32 1}
!599 = !{!"branch_weights", i32 127, i32 24009857}
!600 = !{!601, !191, i64 0}
!601 = !{!"rtvec_def", !191, i64 0, !192, i64 8}
!602 = distinct !{!602, !233}
!603 = distinct !{!603, !233}
!604 = !{!"function_entry_count", i64 2763}
!605 = !{!"alias.c:ao_ref_from_mem"}
!606 = !{!"branch_weights", i32 224, i32 2541}
!607 = !{!"branch_weights", i32 1150226385, i32 997257263}
!608 = !{!"branch_weights", i32 1, i32 1180}
!609 = !{!"branch_weights", i32 4723, i32 1}
!610 = !{!"branch_weights", i32 1643032000, i32 1394761, i32 1393580, i32 1392400}
!611 = !{!612, !194, i64 24}
!612 = !{!"function", !194, i64 0, !194, i64 8, !194, i64 16, !194, i64 24, !194, i64 32, !194, i64 40, !194, i64 48, !194, i64 56, !194, i64 64, !194, i64 72, !194, i64 80, !194, i64 88, !194, i64 96, !191, i64 104, !191, i64 108, !191, i64 112, !191, i64 116, !191, i64 120, !191, i64 124, !194, i64 128, !191, i64 136, !191, i64 137, !191, i64 138, !191, i64 138, !191, i64 138, !191, i64 138, !191, i64 138, !191, i64 138, !191, i64 138, !191, i64 139, !191, i64 139, !191, i64 139, !191, i64 139, !191, i64 139, !191, i64 139, !191, i64 139}
!613 = !{!614, !194, i64 64}
!614 = !{!"gimple_df", !194, i64 0, !194, i64 8, !194, i64 16, !194, i64 24, !615, i64 32, !615, i64 48, !194, i64 64, !194, i64 72, !194, i64 80, !194, i64 88, !191, i64 96, !616, i64 104}
!615 = !{!"pt_solution", !191, i64 0, !191, i64 0, !191, i64 0, !191, i64 0, !191, i64 0, !191, i64 0, !194, i64 8}
!616 = !{!"ssa_operands", !194, i64 0, !191, i64 8, !191, i64 12, !192, i64 16, !194, i64 24, !194, i64 32}
!617 = !{!618, !191, i64 44}
!618 = !{!"ao_ref_s", !194, i64 0, !194, i64 8, !220, i64 16, !220, i64 24, !220, i64 32, !191, i64 40, !191, i64 44}
!619 = !{!618, !194, i64 8}
!620 = !{!618, !191, i64 40}
!621 = !{}
!622 = !{!618, !220, i64 24}
!623 = !{!618, !220, i64 16}
!624 = !{!618, !220, i64 32}
!625 = !{!"branch_weights", i32 1180, i32 1393581}
!626 = !{!"alias.c:VEC_rtx_gc_safe_grow"}
!627 = !{!"alias.c:VEC_rtx_base_address"}
!628 = !{!"branch_weights", i32 1, i32 376}
!629 = !{!"alias.c:VEC_rtx_gc_reserve_exact"}
!630 = !{!"branch_weights", i32 8, i32 369}
!631 = !{!"alias.c:VEC_rtx_base_space"}
!632 = !{!341, !191, i64 4}
!633 = !{!"function_entry_count", i64 1229778}
!634 = !{!"alias.c:find_base_value"}
!635 = !{!"branch_weights", i32 224145, i32 6981, i32 47, i32 644187, i32 252899, i32 21701, i32 27351, i32 61, i32 1, i32 49833, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2583, i32 1}
!636 = !{!"branch_weights", i32 4192, i32 -1593891205}
!637 = !{!"branch_weights", i32 107485, i32 536703}
!638 = !{!"branch_weights", i32 536703, i32 1}
!639 = !{!"branch_weights", i32 107485, i32 1}
!640 = !{!"branch_weights", i32 1, i32 107485}
!641 = !{!"branch_weights", i32 751, i32 252149}
!642 = !{!"branch_weights", i32 371, i32 381}
!643 = !{!"branch_weights", i32 381, i32 1}
!644 = !{!"branch_weights", i32 1, i32 381}
!645 = !{!"branch_weights", i32 43403, i32 1}
!646 = !{!"branch_weights", i32 27283, i32 1339944525}
!647 = !{!"branch_weights", i32 5173, i32 254100315}
!648 = !{!"branch_weights", i32 27283, i32 21829}
!649 = !{!"branch_weights", i32 27283, i32 1}
!650 = !{!"branch_weights", i32 5173, i32 43939}
!651 = !{!"branch_weights", i32 5173, i32 1}
!652 = !{!"branch_weights", i32 -1780854866, i32 1990541560, i32 91722, i32 91719}
!653 = !{!"branch_weights", i32 948835449, i32 183450, i32 183444, i32 183438, i32 -215577886}
!654 = !{!"branch_weights", i32 1, i32 5173}
!655 = !{!"branch_weights", i32 49833, i32 1}
!656 = !{!"branch_weights", i32 1, i32 49833}
!657 = !{!"branch_weights", i32 1, i32 2583}
!658 = !{!"branch_weights", i32 2583, i32 1}
!659 = !{!"alias.c:gt_pch_pa_reg_known_value"}
!660 = distinct !{!660, !233}
