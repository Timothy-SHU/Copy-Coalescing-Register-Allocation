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
%struct.VEC_alias_set_entry_base = type { i32, i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }

@alias_sets = internal global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str = private unnamed_addr constant [8 x i8] c"alias.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@frame_set = internal global i32 -1, align 4
@reg_known_value_size = internal global i32 0, align 4
@reg_known_value = internal global ptr null, align 8
@reg_known_equiv_p = internal unnamed_addr global ptr null, align 8
@reg_base_value = internal global ptr null, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@flag_argument_noalias = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
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
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@gt_ggc_r_gt_alias_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @alias_sets, i64 1, i64 8, ptr @gt_ggc_mx_VEC_alias_set_entry_gc, ptr @gt_pch_nx_VEC_alias_set_entry_gc }, %struct.ggc_root_tab { ptr @reg_known_value, i64 1, i64 8, ptr @gt_ggc_ma_reg_known_value, ptr @gt_pch_na_reg_known_value }, %struct.ggc_root_tab { ptr @static_reg_base_value, i64 53, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @reg_base_value, i64 1, i64 8, ptr @gt_ggc_mx_VEC_rtx_gc, ptr @gt_pch_nx_VEC_rtx_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rd_gt_alias_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @old_reg_base_value, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_alias_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @frame_set, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @varargs_set, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @reg_known_value_size, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@varargs_set = internal global i32 -1, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @alias_set_subset_of(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !209 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4, !prof !210

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7, !prof !211

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.alias_set_entry_d, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !212
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %0, 0
  %12 = and i1 %11, %10
  br i1 %12, label %20, label %13, !prof !218

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.alias_set_entry_d, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = sext i32 %0 to i64
  %17 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %16) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !220

19:                                               ; preds = %13, %4
  br label %20

20:                                               ; preds = %13, %7, %2, %19
  %21 = phi i8 [ 0, %19 ], [ 1, %2 ], [ 1, %7 ], [ 1, %13 ]
  ret i8 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_alias_set_entry(i32 noundef %0) unnamed_addr #2 !prof !221 !PGOFuncName !222 {
  %2 = load ptr, ptr @alias_sets, align 8
  %3 = tail call fastcc ptr @VEC_alias_set_entry_base_index(ptr noundef %2, i32 noundef %0) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_alias_set_entry_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !221 !PGOFuncName !223 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !224
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @alias_sets_conflict_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !225 {
  %3 = tail call i32 @alias_sets_must_conflict_p(i32 noundef %0, i32 noundef %1) #16, !range !226
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %32, !prof !227

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8, !prof !228

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.alias_set_entry_d, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !212
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32, !prof !229

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.alias_set_entry_d, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = sext i32 %1 to i64
  %16 = tail call ptr @splay_tree_lookup(ptr noundef %14, i64 noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32, !prof !230

18:                                               ; preds = %12, %5
  %19 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %1) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21, !prof !231

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.alias_set_entry_d, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !212
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !232

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.alias_set_entry_d, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !219
  %28 = sext i32 %0 to i64
  %29 = tail call ptr @splay_tree_lookup(ptr noundef %27, i64 noundef %28) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !233

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %21, %25, %8, %12, %2, %31
  %33 = phi i32 [ 0, %31 ], [ 1, %2 ], [ 1, %12 ], [ 1, %8 ], [ 1, %25 ], [ 1, %21 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @alias_sets_must_conflict_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !234 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  %6 = icmp eq i32 %0, %1
  %7 = or i1 %6, %5
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @insn_alias_sets_conflict_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !235 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %5 = tail call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @walk_mems_1, ptr noundef nonnull %4) #17
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @walk_mems_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !235 !PGOFuncName !236 {
  %3 = load ptr, ptr %0, align 8, !tbaa !224
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
define internal noundef i32 @walk_mems_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !235 !PGOFuncName !237 {
  %3 = load ptr, ptr %0, align 8, !tbaa !224
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !238
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !239
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !238
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !239
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %14 ]
  %24 = tail call i32 @alias_sets_conflict_p(i32 noundef %15, i32 noundef %23) #16, !range !226
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -1, i32 1
  br label %27

27:                                               ; preds = %2, %22
  %28 = phi i32 [ %26, %22 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @objects_must_conflict_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !241 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6, !prof !242

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %32, label %25

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %32, label %8, !prof !243

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 524288
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12, !prof !244

12:                                               ; preds = %8
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #16
  br label %28

16:                                               ; preds = %12
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 524288
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #16
  br label %25

22:                                               ; preds = %8
  %23 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #16
  %24 = icmp eq ptr %1, null
  br i1 %24, label %28, label %25, !prof !245

25:                                               ; preds = %4, %20, %22
  %26 = phi i32 [ %23, %22 ], [ %21, %20 ], [ 0, %4 ]
  %27 = tail call i32 @get_alias_set(ptr noundef nonnull %1) #16
  br label %28

28:                                               ; preds = %14, %22, %25
  %29 = phi i32 [ %26, %25 ], [ %23, %22 ], [ %15, %14 ]
  %30 = phi i32 [ %27, %25 ], [ 0, %22 ], [ 0, %14 ]
  %31 = tail call i32 @alias_sets_must_conflict_p(i32 noundef %29, i32 noundef %30) #16, !range !226
  br label %32

32:                                               ; preds = %6, %16, %4, %28
  %33 = phi i32 [ %31, %28 ], [ 0, %4 ], [ 1, %16 ], [ 1, %6 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_alias_set(ptr noundef %0) local_unnamed_addr #0 !prof !246 {
  %2 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %153, label %4, !prof !248

4:                                                ; preds = %1, %120
  %5 = phi ptr [ %122, %120 ], [ %0, %1 ]
  %6 = load ptr, ptr @global_trees, align 16, !tbaa !224
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %153, label %8, !prof !249

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !247
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %91, label %14, !prof !250

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %16, %6
  %19 = or i1 %17, %18
  br i1 %19, label %153, label %20, !prof !251

20:                                               ; preds = %14
  %21 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %5) #17
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !252
  %23 = tail call i32 %22(ptr noundef %21) #17
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %153, !prof !261

25:                                               ; preds = %20
  %26 = load i64, ptr %21, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 152
  br i1 %28, label %29, label %32, !prof !262

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 1, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !238
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ %21, %25 ]
  %34 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %33) #16, !range !263
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36, !prof !264

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %40, %36 ], [ %33, %32 ]
  %38 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !238
  %40 = tail call ptr @tree_strip_nop_conversions(ptr noundef %39) #17
  %41 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %40) #16, !range !263
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %36, !prof !265, !llvm.loop !266

43:                                               ; preds = %36, %32
  %44 = phi ptr [ %33, %32 ], [ %40, %36 ]
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -47
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %55, !prof !268

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !238
  %53 = tail call fastcc i32 @get_deref_alias_set_1(ptr noundef %52) #16, !range !269
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %153, !prof !270

55:                                               ; preds = %43, %50
  %56 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %33) #16, !range !263
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58, !prof !271

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %62, %58 ], [ %33, %55 ]
  %60 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !238
  %62 = tail call ptr @tree_strip_nop_conversions(ptr noundef %61) #17
  %63 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %62) #16, !range !263
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %58, !prof !272, !llvm.loop !273

65:                                               ; preds = %58, %55
  %66 = phi ptr [ %33, %55 ], [ %62, %58 ]
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp ne i64 %68, 32
  %70 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %88, label %73, !prof !274

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %66, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !238
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77, !prof !275

77:                                               ; preds = %73
  %78 = load i32, ptr %75, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 43
  br i1 %80, label %81, label %88, !prof !276

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !238
  %84 = icmp eq ptr %83, null
  br i1 %84, label %153, label %85, !prof !277

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mem_attrs, ptr %83, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !239
  br label %153

88:                                               ; preds = %65, %73, %77
  %89 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !238
  br label %91

91:                                               ; preds = %8, %88
  %92 = phi ptr [ %90, %88 ], [ %5, %8 ]
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 16
  %94 = load ptr, ptr %93, align 8, !tbaa !238
  %95 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !238
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103, !prof !278

98:                                               ; preds = %91
  %99 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !252
  %100 = tail call i32 %99(ptr noundef nonnull %94) #17
  %101 = icmp eq i32 %100, -1
  %102 = select i1 %101, i32 0, i32 %100, !prof !279
  br label %153

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !238
  %106 = icmp eq ptr %105, %96
  br i1 %106, label %108, label %107, !prof !280

107:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 710, ptr noundef nonnull @.str.1) #17
  br label %108

108:                                              ; preds = %103, %107
  %109 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 8
  %110 = load i32, ptr %109, align 4, !tbaa !238
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %153, !prof !281

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !238
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %125, !prof !282

116:                                              ; preds = %112
  %117 = load i64, ptr %96, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 15
  br i1 %119, label %120, label %153

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !238
  %123 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %153, label %4, !prof !283

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 8
  %127 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !252
  %128 = tail call i32 %127(ptr noundef nonnull %96) #17
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %153, !prof !284

130:                                              ; preds = %125
  %131 = load i64, ptr %96, align 8
  %132 = trunc i64 %131 to i16
  switch i16 %132, label %146 [
    i16 20, label %148
    i16 21, label %148
    i16 14, label %133
    i16 15, label %137
  ], !prof !285

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !238
  %136 = tail call i32 @get_alias_set(ptr noundef %135) #16
  br label %148

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 4096
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146, !prof !286

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !238
  %145 = tail call i32 @get_alias_set(ptr noundef %144) #16
  br label %148

146:                                              ; preds = %130, %137
  %147 = tail call i32 @new_alias_set() #16
  br label %148

148:                                              ; preds = %130, %130, %142, %146, %133
  %149 = phi i32 [ %136, %133 ], [ %147, %146 ], [ %145, %142 ], [ 0, %130 ], [ 0, %130 ]
  store i32 %149, ptr %126, align 4, !tbaa !238
  %150 = load i64, ptr %96, align 8
  %151 = trunc i64 %150 to i16
  switch i16 %151, label %153 [
    i16 15, label %152
    i16 16, label %152
    i16 17, label %152
    i16 18, label %152
    i16 13, label %152
  ], !prof !287

152:                                              ; preds = %148, %148, %148, %148, %148
  tail call void @record_component_aliases(ptr noundef nonnull %96) #16
  br label %153

153:                                              ; preds = %14, %4, %120, %108, %116, %20, %50, %1, %85, %81, %152, %148, %125, %98
  %154 = phi i32 [ %102, %98 ], [ %128, %125 ], [ %149, %148 ], [ %149, %152 ], [ 0, %81 ], [ %87, %85 ], [ 0, %1 ], [ 0, %14 ], [ 0, %4 ], [ 0, %120 ], [ %110, %108 ], [ 0, %116 ], [ %23, %20 ], [ 0, %50 ]
  ret i32 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @component_uses_parent_alias_set(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !288 {
  br label %2

2:                                                ; preds = %25, %1
  %3 = phi ptr [ %0, %1 ], [ %27, %25 ]
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %3) #16, !range !263
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6, !prof !289

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %32 [
    i16 41, label %9
    i16 45, label %16
    i16 46, label %16
    i16 43, label %25
    i16 44, label %25
  ], !prof !290

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !238
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 67108864
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %32, !prof !291

16:                                               ; preds = %6, %6
  %17 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !238
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !292

25:                                               ; preds = %6, %6, %16, %9
  %26 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !238
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !238
  %30 = tail call i32 @get_alias_set(ptr noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %2, !prof !293

32:                                               ; preds = %25, %6, %16, %9, %2
  %33 = phi i8 [ 0, %2 ], [ 1, %9 ], [ 1, %16 ], [ 1, %6 ], [ 1, %25 ]
  ret i8 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !294 !PGOFuncName !295 {
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
  ], !prof !296

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_deref_alias_set(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !297 {
  %2 = tail call fastcc i32 @get_deref_alias_set_1(ptr noundef %0) #16, !range !269
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %18, !prof !298

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !247
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10, !prof !299

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  %17 = tail call i32 @get_alias_set(ptr noundef %16) #16
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_deref_alias_set_1(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !300 !PGOFuncName !301 {
  %2 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4, !prof !302

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !247
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10, !prof !303

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 19
  br i1 %19, label %26, label %20, !prof !304

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
define dso_local i32 @new_alias_set() local_unnamed_addr #0 !prof !305 {
  %1 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %11, label %3, !prof !306

3:                                                ; preds = %0
  %4 = load ptr, ptr @alias_sets, align 8, !tbaa !224
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !307

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
define dso_local void @record_component_aliases(ptr noundef %0) local_unnamed_addr #0 !prof !308 {
  %2 = alloca ptr, align 8
  %3 = tail call i32 @get_alias_set(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5, !prof !309

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %52 [
    i16 16, label %8
    i16 17, label %8
    i16 18, label %8
    i16 13, label %48
  ], !prof !310

8:                                                ; preds = %5, %5, %5
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !311

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %13 = getelementptr inbounds %struct.tree_binfo, ptr %10, i64 0, i32 9
  %14 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %2) #16, !range !226
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %22, %16 ], [ 0, %12 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !224
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = tail call i32 @get_alias_set(ptr noundef %20) #16
  tail call void @record_alias_subset(i32 noundef %3, i32 noundef %21) #16
  %22 = add nuw nsw i32 %17, 1
  %23 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %13, i32 noundef %22, ptr noundef nonnull %2) #16, !range !226
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !312

25:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %26

26:                                               ; preds = %25, %8
  %27 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !238
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30, !prof !313

30:                                               ; preds = %26, %44
  %31 = phi ptr [ %46, %44 ], [ %28, %26 ]
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 31
  br i1 %34, label %35, label %44, !prof !314

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44, !prof !315

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !238
  %43 = tail call i32 @get_alias_set(ptr noundef %42) #16
  tail call void @record_alias_subset(i32 noundef %3, i32 noundef %43) #16
  br label %44

44:                                               ; preds = %30, %35, %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !238
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %30, !prof !316, !llvm.loop !317

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !238
  %51 = tail call i32 @get_alias_set(ptr noundef %50) #16
  tail call void @record_alias_subset(i32 noundef %3, i32 noundef %51) #16
  br label %52

52:                                               ; preds = %44, %26, %48, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alias_set_entry_gc_safe_push() unnamed_addr #0 !prof !318 !PGOFuncName !319 {
  tail call fastcc void @VEC_alias_set_entry_gc_reserve() #16
  %1 = load ptr, ptr @alias_sets, align 8, !tbaa !224
  tail call fastcc void @VEC_alias_set_entry_base_quick_push(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alias_set_entry_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !305 !PGOFuncName !320 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !306

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !321
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alias_set_entry_gc_reserve() unnamed_addr #0 !prof !318 !PGOFuncName !323 {
  %1 = load ptr, ptr @alias_sets, align 8, !tbaa !224
  %2 = tail call fastcc i32 @VEC_alias_set_entry_base_space(ptr noundef %1) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !324

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_p_reserve(ptr noundef %1, i32 noundef 1) #17
  store ptr %5, ptr @alias_sets, align 8, !tbaa !224
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_alias_set_entry_base_quick_push(ptr noundef %0) unnamed_addr #6 !prof !318 !PGOFuncName !325 {
  %2 = load i32, ptr %0, align 8, !tbaa !321
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !321
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr null, ptr %5, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alias_set_entry_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !318 !PGOFuncName !326 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !327

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !328
  %6 = load i32, ptr %0, align 8, !tbaa !321
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_alias_subset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !329 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %41, label %4, !prof !330

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7, !prof !330

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 813, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %4, %6
  %8 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !331

10:                                               ; preds = %7
  %11 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #17
  store i32 %0, ptr %11, align 8, !tbaa !332
  %12 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #17
  %13 = getelementptr inbounds %struct.alias_set_entry_d, ptr %11, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !219
  %14 = getelementptr inbounds %struct.alias_set_entry_d, ptr %11, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !212
  %15 = load ptr, ptr @alias_sets, align 8
  tail call fastcc void @VEC_alias_set_entry_base_replace(ptr noundef %15, i32 noundef %0, ptr noundef nonnull %11) #16
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %19, label %21, !prof !333

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 1
  store i32 1, ptr %20, align 4, !tbaa !212
  br label %41

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @get_alias_set_entry(i32 noundef %1) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24, !prof !334

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.alias_set_entry_d, ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !212
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !335

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 1
  store i32 1, ptr %29, align 4, !tbaa !212
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.alias_set_entry_d, ptr %22, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !219
  %35 = tail call i32 @splay_tree_foreach(ptr noundef %32, ptr noundef nonnull @insert_subset_children, ptr noundef %34) #17
  br label %36

36:                                               ; preds = %30, %21
  %37 = getelementptr inbounds %struct.alias_set_entry_d, ptr %17, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !219
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
define internal fastcc void @VEC_alias_set_entry_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !336 !PGOFuncName !337 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !224
  ret void
}

; Function Attrs: optsize
declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_subset_children(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !338 !PGOFuncName !339 {
  %3 = load i64, ptr %0, align 8, !tbaa !340
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !342
  %6 = tail call ptr @splay_tree_insert(ptr noundef %1, i64 noundef %3, i64 noundef %5) #17
  ret i32 0
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !235 !PGOFuncName !343 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !344
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !224
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_varargs_alias_set() local_unnamed_addr #5 !prof !235 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_frame_alias_set() local_unnamed_addr #0 !prof !346 {
  %1 = load i32, ptr @frame_set, align 4, !tbaa !247
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5, !prof !347

3:                                                ; preds = %0
  %4 = tail call i32 @new_alias_set() #16
  store i32 %4, ptr @frame_set, align 4, !tbaa !247
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_reg_known_value(i32 noundef %0) local_unnamed_addr #2 !prof !348 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %12, !prof !349

3:                                                ; preds = %1
  %4 = add i32 %0, -53
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12, !prof !350

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @get_reg_known_equiv_p(i32 noundef %0) local_unnamed_addr #2 !prof !235 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = add i32 %0, -53
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !224
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !238
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i8 [ %11, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canon_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !351 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %11, %13 ]
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %15, !prof !352

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #16
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %10, label %15, !prof !353

10:                                               ; preds = %7
  %11 = tail call ptr @get_reg_known_value(i32 noundef %8) #16
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %50, label %13, !prof !354

13:                                               ; preds = %10
  %14 = icmp eq ptr %11, null
  br i1 %14, label %15, label %2, !prof !355

15:                                               ; preds = %13, %7, %2
  %16 = trunc i32 %4 to i16
  switch i16 %16, label %50 [
    i16 49, label %17
    i16 43, label %52
  ], !prof !356

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !238
  %20 = tail call ptr @canon_rtx(ptr noundef %19) #16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !238
  %23 = tail call ptr @canon_rtx(ptr noundef %22) #16
  %24 = load ptr, ptr %18, align 8, !tbaa !238
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %26, label %29, !prof !357

26:                                               ; preds = %17
  %27 = load ptr, ptr %21, align 8, !tbaa !238
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %50, label %29, !prof !358

29:                                               ; preds = %26, %17
  %30 = load i32, ptr %20, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 30
  br i1 %32, label %33, label %37, !prof !359

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !238
  %36 = tail call ptr @plus_constant(ptr noundef %23, i64 noundef %35) #17
  br label %50

37:                                               ; preds = %29
  %38 = load i32, ptr %23, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 30
  br i1 %40, label %41, label %45, !prof !360

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !238
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
  %54 = load ptr, ptr %53, align 8, !tbaa !238
  %55 = tail call ptr @canon_rtx(ptr noundef %54) #16
  %56 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %3, ptr noundef %55) #17
  br label %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !361 !PGOFuncName !362 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !238
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_base_term(ptr noundef %0) local_unnamed_addr #0 !prof !363 {
  br label %2

2:                                                ; preds = %31, %1
  %3 = phi ptr [ %0, %1 ], [ %32, %31 ]
  %4 = tail call ptr @ix86_find_base_term(ptr noundef %3) #17
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %134 [
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
    i16 61, label %122
    i16 45, label %133
    i16 44, label %133
  ], !prof !364

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #16
  %9 = load ptr, ptr @reg_base_value, align 8
  %10 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %9) #16
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %134, !prof !365

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %9, i32 noundef %8) #16
  br label %134

14:                                               ; preds = %2
  %15 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %134, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !238
  %24 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !238
  %25 = icmp ult i8 %23, %24
  br i1 %25, label %134, label %26

26:                                               ; preds = %17, %2, %2, %2, %2, %2, %2, %2
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %28

28:                                               ; preds = %128, %65, %26
  %29 = phi ptr [ %27, %26 ], [ %66, %65 ], [ %129, %128 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !238
  br label %31

31:                                               ; preds = %28, %82
  %32 = phi ptr [ %79, %82 ], [ %30, %28 ]
  br label %2

33:                                               ; preds = %2, %2
  %34 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %134, label %36, !prof !366

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !238
  %39 = tail call ptr @find_base_term(ptr noundef %38) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %134, label %41, !prof !367

41:                                               ; preds = %36
  %42 = load i32, ptr %39, align 8
  %43 = and i32 %42, 65535
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !247
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %134

48:                                               ; preds = %41
  %49 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %39, i8 noundef zeroext 0) #17
  br label %134

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !238
  %53 = icmp eq ptr %52, null
  br i1 %53, label %134, label %54, !prof !368

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cselib_val_struct, ptr %52, i64 0, i32 3
  br label %56

56:                                               ; preds = %60, %54
  %57 = phi ptr [ %55, %54 ], [ %58, %60 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !224
  %59 = icmp eq ptr %58, null
  br i1 %59, label %134, label %60, !prof !369

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.elt_loc_list, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !370
  %63 = tail call ptr @find_base_term(ptr noundef %62) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %56, label %134, !prof !372, !llvm.loop !373

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %28

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !238
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = add nsw i32 %71, -49
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %134, !prof !374

74:                                               ; preds = %67, %2, %2
  %75 = phi ptr [ %4, %2 ], [ %4, %2 ], [ %69, %67 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !238
  %78 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !238
  %80 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !224
  %81 = icmp eq ptr %77, %80
  br i1 %81, label %82, label %89, !prof !375

82:                                               ; preds = %74
  %83 = load i32, ptr %79, align 8
  %84 = and i32 %83, 65535
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !247
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %31, label %89

89:                                               ; preds = %82, %74
  %90 = load i32, ptr %77, align 8
  %91 = and i32 %90, 1073807359
  %92 = icmp eq i32 %91, 1073741861
  br i1 %92, label %93, label %96, !prof !376

93:                                               ; preds = %89
  %94 = tail call ptr @find_base_term(ptr noundef nonnull %77) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %134

96:                                               ; preds = %93, %89
  %97 = load i32, ptr %79, align 8
  %98 = and i32 %97, 1073807359
  %99 = icmp eq i32 %98, 1073741861
  br i1 %99, label %100, label %103, !prof !377

100:                                              ; preds = %96
  %101 = tail call ptr @find_base_term(ptr noundef nonnull %79) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %134

103:                                              ; preds = %100, %96
  %104 = tail call ptr @find_base_term(ptr noundef nonnull %77) #16
  %105 = tail call ptr @find_base_term(ptr noundef nonnull %79) #16
  %106 = icmp eq ptr %104, null
  br i1 %106, label %113, label %107, !prof !378

107:                                              ; preds = %103
  %108 = load i32, ptr %104, align 8
  %109 = trunc i32 %108 to i16
  switch i16 %109, label %113 [
    i16 45, label %134
    i16 44, label %134
    i16 6, label %110
  ], !prof !379

110:                                              ; preds = %107
  %111 = and i32 %108, 16711680
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %134, !prof !380

113:                                              ; preds = %107, %110, %103
  %114 = icmp eq ptr %105, null
  br i1 %114, label %121, label %115, !prof !381

115:                                              ; preds = %113
  %116 = load i32, ptr %105, align 8
  %117 = trunc i32 %116 to i16
  switch i16 %117, label %121 [
    i16 45, label %134
    i16 44, label %134
    i16 6, label %118
  ], !prof !382

118:                                              ; preds = %115
  %119 = and i32 %116, 16711680
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %134, !prof !383

121:                                              ; preds = %115, %118, %113
  br label %134

122:                                              ; preds = %2
  %123 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !238
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 30
  br i1 %127, label %128, label %134, !prof !384

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %130 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !238
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %134, label %28, !prof !385

133:                                              ; preds = %2, %2
  br label %134

134:                                              ; preds = %56, %60, %67, %122, %128, %17, %14, %2, %133, %121, %100, %93, %107, %107, %110, %115, %115, %118, %50, %36, %41, %48, %33, %12, %7
  %135 = phi ptr [ %13, %12 ], [ null, %7 ], [ null, %33 ], [ %49, %48 ], [ %39, %41 ], [ null, %36 ], [ null, %50 ], [ null, %121 ], [ %101, %100 ], [ %94, %93 ], [ %104, %107 ], [ %104, %107 ], [ %104, %110 ], [ %105, %115 ], [ %105, %115 ], [ %105, %118 ], [ %4, %133 ], [ null, %2 ], [ null, %14 ], [ null, %17 ], [ null, %128 ], [ null, %122 ], [ null, %67 ], [ null, %56 ], [ %63, %60 ]
  ret ptr %135
}

; Function Attrs: optsize
declare ptr @ix86_find_base_term(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !386 !PGOFuncName !387 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !388

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !389
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_rtx_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !391 !PGOFuncName !392 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !224
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @target_default_pointer_address_modes_p() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_addr(ptr noundef readonly %0) local_unnamed_addr #7 !prof !393 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %40, !prof !394

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !238
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9, !prof !395

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %7, i64 0, i32 3
  br label %11

11:                                               ; preds = %18, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %18 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !396

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !224
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %27, !prof !397

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !370
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !247
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %40, label %11, !prof !398, !llvm.loop !399

27:                                               ; preds = %15, %33
  %28 = phi ptr [ %34, %33 ], [ %16, %15 ]
  %29 = getelementptr inbounds %struct.elt_loc_list, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !370
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %40 [
    i16 37, label %33
    i16 43, label %33
  ], !prof !400

33:                                               ; preds = %27, %27
  %34 = load ptr, ptr %28, align 8, !tbaa !224
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !prof !401, !llvm.loop !402

36:                                               ; preds = %33
  br i1 %17, label %40, label %37, !prof !403

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.elt_loc_list, ptr %16, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !370
  br label %40

40:                                               ; preds = %18, %27, %15, %5, %36, %1, %37
  %41 = phi ptr [ %39, %37 ], [ %0, %1 ], [ %0, %36 ], [ %0, %5 ], [ %0, %15 ], [ %30, %27 ], [ %20, %18 ]
  ret ptr %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @read_dependence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !404 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 134217728
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !405

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
define dso_local i32 @nonoverlapping_memrefs_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !406 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !407

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !408
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !238
  %12 = icmp eq ptr %11, null
  br i1 %12, label %522, label %13, !prof !409

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !408
  %15 = icmp eq ptr %9, null
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %522, label %18, !prof !410

18:                                               ; preds = %13
  %19 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #17
  %20 = icmp eq ptr %9, %19
  br i1 %20, label %21, label %28, !prof !411

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8, !tbaa !238
  %23 = icmp eq ptr %22, null
  br i1 %23, label %522, label %24, !prof !412

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !413
  %27 = icmp eq ptr %26, null
  br i1 %27, label %522, label %28, !prof !412

28:                                               ; preds = %24, %18
  %29 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #17
  %30 = icmp eq ptr %14, %29
  br i1 %30, label %31, label %38, !prof !414

31:                                               ; preds = %28
  %32 = load ptr, ptr %10, align 8, !tbaa !238
  %33 = icmp eq ptr %32, null
  br i1 %33, label %522, label %34, !prof !415

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !413
  %37 = icmp eq ptr %36, null
  br i1 %37, label %522, label %38, !prof !415

38:                                               ; preds = %34, %28
  %39 = load i64, ptr %9, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 41
  br i1 %41, label %42, label %49, !prof !416

42:                                               ; preds = %38
  %43 = load i64, ptr %14, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 41
  br i1 %45, label %46, label %49, !prof !417

46:                                               ; preds = %42
  %47 = tail call fastcc zeroext i8 @nonoverlapping_component_refs_p(ptr noundef nonnull %9, ptr noundef nonnull %14) #16, !range !263
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %522, !prof !418

49:                                               ; preds = %46, %42, %38
  %50 = load ptr, ptr %3, align 8, !tbaa !238
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52, !prof !419

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !413
  br label %55

55:                                               ; preds = %49, %52
  %56 = phi ptr [ %54, %52 ], [ null, %49 ]
  %57 = trunc i64 %39 to i16
  switch i16 %57, label %90 [
    i16 41, label %58
    i16 47, label %81
    i16 48, label %81
    i16 49, label %81
  ], !prof !420

58:                                               ; preds = %55
  %59 = load i64, ptr %14, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %76, !prof !421

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !238
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %76 [
    i16 10, label %67
    i16 12, label %67
  ], !prof !422

67:                                               ; preds = %62, %62
  %68 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !238
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !238
  %72 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !238
  %74 = tail call zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef %71, ptr noundef %73) #17
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %522

76:                                               ; preds = %62, %67, %58
  %77 = tail call fastcc ptr @decl_for_component_ref(ptr noundef nonnull %9) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %522, label %79, !prof !423

79:                                               ; preds = %76
  %80 = tail call fastcc ptr @adjust_offset_for_component_ref(ptr noundef nonnull %9, ptr noundef %56) #16
  br label %90

81:                                               ; preds = %55, %55, %55
  %82 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !247
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %522, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !238
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 34
  br i1 %89, label %90, label %522

90:                                               ; preds = %79, %55, %84
  %91 = phi ptr [ %80, %79 ], [ %56, %84 ], [ %56, %55 ]
  %92 = phi ptr [ %77, %79 ], [ %86, %84 ], [ %9, %55 ]
  %93 = load ptr, ptr %10, align 8, !tbaa !238
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95, !prof !424

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.mem_attrs, ptr %93, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !413
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
  ], !prof !425

102:                                              ; preds = %98
  %103 = load i64, ptr %92, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 32
  br i1 %105, label %106, label %120, !prof !426

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !238
  %109 = load i64, ptr %108, align 8
  %110 = trunc i64 %109 to i16
  switch i16 %110, label %120 [
    i16 10, label %111
    i16 12, label %111
  ], !prof !427

111:                                              ; preds = %106, %106
  %112 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !238
  %114 = getelementptr inbounds %struct.tree_decl_minimal, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !238
  %116 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !238
  %118 = tail call zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef %115, ptr noundef %117) #17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %522

120:                                              ; preds = %106, %111, %102
  %121 = tail call fastcc ptr @decl_for_component_ref(ptr noundef nonnull %14) #16
  %122 = icmp eq ptr %121, null
  br i1 %122, label %522, label %123, !prof !428

123:                                              ; preds = %120
  %124 = tail call fastcc ptr @adjust_offset_for_component_ref(ptr noundef nonnull %14, ptr noundef %99) #16
  br label %134

125:                                              ; preds = %98, %98, %98
  %126 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !247
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %522, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !238
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
  %140 = load i32, ptr %139, align 4, !tbaa !247
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %522, !prof !429

142:                                              ; preds = %134
  %143 = load i64, ptr %136, align 8
  %144 = and i64 %143, 65535
  %145 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !247
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %522, !prof !429

148:                                              ; preds = %142
  %149 = icmp eq i64 %138, 33
  %150 = icmp eq i64 %144, 33
  %151 = or i1 %149, %150
  br i1 %151, label %522, label %152, !prof !430

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %92, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !238
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158, !prof !431

156:                                              ; preds = %152
  tail call void @make_decl_rtl(ptr noundef nonnull %92) #17
  %157 = load ptr, ptr %153, align 8, !tbaa !238
  br label %158

158:                                              ; preds = %152, %156
  %159 = phi ptr [ %157, %156 ], [ %154, %152 ]
  %160 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %136, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !238
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165, !prof !431

163:                                              ; preds = %158
  tail call void @make_decl_rtl(ptr noundef nonnull %136) #17
  %164 = load ptr, ptr %160, align 8, !tbaa !238
  br label %165

165:                                              ; preds = %158, %163
  %166 = phi ptr [ %164, %163 ], [ %161, %158 ]
  %167 = load i32, ptr %159, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 43
  br i1 %169, label %170, label %174, !prof !432

170:                                              ; preds = %165
  %171 = load i32, ptr %166, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %179, label %174, !prof !433

174:                                              ; preds = %170, %165
  %175 = tail call i32 @rtx_equal_p(ptr noundef nonnull %159, ptr noundef %166) #17
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %522, label %177, !prof !434

177:                                              ; preds = %174
  %178 = load i32, ptr %159, align 8
  br label %179

179:                                              ; preds = %177, %170
  %180 = phi i32 [ %178, %177 ], [ %167, %170 ]
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 43
  br i1 %182, label %183, label %211, !prof !433

183:                                              ; preds = %179
  %184 = load i32, ptr %166, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 43
  br i1 %186, label %187, label %207, !prof !433

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !238
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191, !prof !435

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 5
  %193 = load i8, ptr %192, align 8, !tbaa !436
  %194 = zext i8 %193 to i32
  br label %195

195:                                              ; preds = %187, %191
  %196 = phi i32 [ %194, %191 ], [ 0, %187 ]
  %197 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !238
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200, !prof !435

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.mem_attrs, ptr %198, i64 0, i32 5
  %202 = load i8, ptr %201, align 8, !tbaa !436
  %203 = zext i8 %202 to i32
  br label %204

204:                                              ; preds = %195, %200
  %205 = phi i32 [ %203, %200 ], [ 0, %195 ]
  %206 = icmp eq i32 %196, %205
  br i1 %206, label %207, label %522, !prof !433

207:                                              ; preds = %204, %183
  %208 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !238
  %210 = load i32, ptr %209, align 8
  br label %211

211:                                              ; preds = %179, %207
  %212 = phi i32 [ %210, %207 ], [ %180, %179 ]
  %213 = phi ptr [ %209, %207 ], [ %159, %179 ]
  %214 = and i32 %212, 65535
  %215 = icmp eq i32 %214, 49
  br i1 %215, label %216, label %227, !prof !437

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !238
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 30
  br i1 %221, label %222, label %227, !prof !438

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %224 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !238
  %226 = load ptr, ptr %223, align 8, !tbaa !238
  br label %227

227:                                              ; preds = %222, %216, %211
  %228 = phi i64 [ %225, %222 ], [ 0, %216 ], [ 0, %211 ]
  %229 = phi ptr [ %226, %222 ], [ %213, %216 ], [ %213, %211 ]
  %230 = load i32, ptr %166, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 43
  br i1 %232, label %233, label %237, !prof !433

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !238
  %236 = load i32, ptr %235, align 8
  br label %237

237:                                              ; preds = %227, %233
  %238 = phi i32 [ %236, %233 ], [ %230, %227 ]
  %239 = phi ptr [ %235, %233 ], [ %166, %227 ]
  %240 = and i32 %238, 65535
  %241 = icmp eq i32 %240, 49
  br i1 %241, label %242, label %253, !prof !439

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1, i32 0, i32 0, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !238
  %245 = load i32, ptr %244, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 30
  br i1 %247, label %248, label %253, !prof !440

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %250 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !238
  %252 = load ptr, ptr %249, align 8, !tbaa !238
  br label %253

253:                                              ; preds = %248, %242, %237
  %254 = phi i64 [ %251, %248 ], [ 0, %242 ], [ 0, %237 ]
  %255 = phi ptr [ %252, %248 ], [ %239, %242 ], [ %239, %237 ]
  %256 = tail call i32 @rtx_equal_p(ptr noundef %229, ptr noundef %255) #17
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %295, !prof !441

258:                                              ; preds = %253
  %259 = load i32, ptr %229, align 8
  %260 = and i32 %259, 65535
  %261 = zext nneg i32 %260 to i64
  %262 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !247
  %264 = icmp eq i32 %263, 9
  %265 = load i32, ptr %255, align 8
  %266 = and i32 %265, 65535
  %267 = zext nneg i32 %266 to i64
  br i1 %264, label %268, label %281, !prof !442

268:                                              ; preds = %258
  %269 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %267
  %270 = load i32, ptr %269, align 4, !tbaa !247
  %271 = icmp eq i32 %270, 9
  br i1 %271, label %522, label %272, !prof !443

272:                                              ; preds = %268
  %273 = icmp eq i32 %266, 37
  br i1 %273, label %274, label %281, !prof !444

274:                                              ; preds = %272
  %275 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %255) #16
  %276 = add i32 %275, -6
  %277 = icmp ult i32 %276, 15
  br i1 %277, label %512, label %278

278:                                              ; preds = %274
  %279 = add i32 %275, -53
  %280 = icmp ult i32 %279, 5
  br i1 %280, label %522, label %281, !prof !445

281:                                              ; preds = %512, %258, %278, %272
  %282 = phi i64 [ 37, %278 ], [ %267, %272 ], [ %267, %258 ], [ 37, %512 ]
  %283 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !247
  %285 = icmp eq i32 %284, 9
  %286 = icmp eq i32 %260, 37
  %287 = and i1 %286, %285
  br i1 %287, label %288, label %522, !prof !446

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
  br i1 %298, label %306, label %299, !prof !447

299:                                              ; preds = %295
  %300 = lshr i32 %296, 16
  %301 = and i32 %300, 255
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !238
  %305 = zext i8 %304 to i64
  br label %346

306:                                              ; preds = %295
  %307 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !238
  %309 = icmp eq ptr %308, null
  br i1 %309, label %314, label %310, !prof !447

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.mem_attrs, ptr %308, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !448
  %313 = icmp eq ptr %312, null
  br i1 %313, label %346, label %328, !prof !447

314:                                              ; preds = %306
  %315 = lshr i32 %296, 16
  %316 = and i32 %315, 255
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %346, label %318, !prof !447

318:                                              ; preds = %314
  %319 = zext nneg i32 %316 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !238
  %322 = zext i8 %321 to i64
  %323 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %322) #17
  %324 = icmp eq ptr %323, null
  br i1 %324, label %346, label %325

325:                                              ; preds = %318
  %326 = load ptr, ptr %307, align 8, !tbaa !238
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328, !prof !449

328:                                              ; preds = %310, %325
  %329 = phi ptr [ %326, %325 ], [ %308, %310 ]
  %330 = getelementptr inbounds %struct.mem_attrs, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !448
  br label %342

332:                                              ; preds = %325
  %333 = load i32, ptr %159, align 8
  %334 = lshr i32 %333, 16
  %335 = and i32 %334, 255
  %336 = icmp ne i32 %335, 1
  tail call void @llvm.assume(i1 %336)
  %337 = zext nneg i32 %335 to i64
  %338 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !238
  %340 = zext i8 %339 to i64
  %341 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %340) #17
  br label %342

342:                                              ; preds = %332, %328
  %343 = phi ptr [ %331, %328 ], [ %341, %332 ]
  %344 = getelementptr inbounds %struct.rtx_def, ptr %343, i64 0, i32 1
  %345 = load i64, ptr %344, align 8, !tbaa !238
  br label %346

346:                                              ; preds = %342, %314, %318, %310, %299
  %347 = phi i64 [ %305, %299 ], [ %345, %342 ], [ -1, %314 ], [ -1, %318 ], [ -1, %310 ]
  %348 = load i32, ptr %166, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 43
  br i1 %350, label %358, label %351, !prof !447

351:                                              ; preds = %346
  %352 = lshr i32 %348, 16
  %353 = and i32 %352, 255
  %354 = zext nneg i32 %353 to i64
  %355 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !238
  %357 = zext i8 %356 to i64
  br label %398

358:                                              ; preds = %346
  %359 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !238
  %361 = icmp eq ptr %360, null
  br i1 %361, label %366, label %362, !prof !447

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.mem_attrs, ptr %360, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !448
  %365 = icmp eq ptr %364, null
  br i1 %365, label %398, label %380, !prof !447

366:                                              ; preds = %358
  %367 = lshr i32 %348, 16
  %368 = and i32 %367, 255
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %398, label %370, !prof !447

370:                                              ; preds = %366
  %371 = zext nneg i32 %368 to i64
  %372 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !238
  %374 = zext i8 %373 to i64
  %375 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %374) #17
  %376 = icmp eq ptr %375, null
  br i1 %376, label %398, label %377

377:                                              ; preds = %370
  %378 = load ptr, ptr %359, align 8, !tbaa !238
  %379 = icmp eq ptr %378, null
  br i1 %379, label %384, label %380, !prof !450

380:                                              ; preds = %362, %377
  %381 = phi ptr [ %378, %377 ], [ %360, %362 ]
  %382 = getelementptr inbounds %struct.mem_attrs, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !448
  br label %394

384:                                              ; preds = %377
  %385 = load i32, ptr %166, align 8
  %386 = lshr i32 %385, 16
  %387 = and i32 %386, 255
  %388 = icmp ne i32 %387, 1
  tail call void @llvm.assume(i1 %388)
  %389 = zext nneg i32 %387 to i64
  %390 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !238
  %392 = zext i8 %391 to i64
  %393 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %392) #17
  br label %394

394:                                              ; preds = %384, %380
  %395 = phi ptr [ %383, %380 ], [ %393, %384 ]
  %396 = getelementptr inbounds %struct.rtx_def, ptr %395, i64 0, i32 1
  %397 = load i64, ptr %396, align 8, !tbaa !238
  br label %398

398:                                              ; preds = %394, %366, %370, %362, %351
  %399 = phi i64 [ %357, %351 ], [ %397, %394 ], [ -1, %366 ], [ -1, %370 ], [ -1, %362 ]
  %400 = icmp ne ptr %91, null
  br i1 %400, label %401, label %406, !prof !451

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %403 = load i64, ptr %402, align 8, !tbaa !238
  %404 = add nsw i64 %403, %228
  %405 = sub nsw i64 %347, %403
  br label %406

406:                                              ; preds = %401, %398
  %407 = phi i64 [ %404, %401 ], [ %228, %398 ]
  %408 = phi i64 [ %405, %401 ], [ %347, %398 ]
  %409 = icmp ne ptr %135, null
  br i1 %409, label %410, label %415, !prof !452

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %412 = load i64, ptr %411, align 8, !tbaa !238
  %413 = add nsw i64 %412, %254
  %414 = sub nsw i64 %399, %412
  br label %415

415:                                              ; preds = %410, %406
  %416 = phi i64 [ %413, %410 ], [ %254, %406 ]
  %417 = phi i64 [ %414, %410 ], [ %399, %406 ]
  %418 = load ptr, ptr %3, align 8, !tbaa !238
  %419 = icmp eq ptr %418, null
  br i1 %419, label %424, label %420, !prof !447

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.mem_attrs, ptr %418, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !448
  %423 = icmp eq ptr %422, null
  br i1 %423, label %459, label %437, !prof !447

424:                                              ; preds = %415
  %425 = load i32, ptr %0, align 8
  %426 = lshr i32 %425, 16
  %427 = and i32 %426, 255
  %428 = icmp eq i32 %427, 1
  br i1 %428, label %459, label %429, !prof !447

429:                                              ; preds = %424
  %430 = zext nneg i32 %427 to i64
  %431 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !238
  %433 = zext i8 %432 to i64
  %434 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %433) #17
  %435 = icmp ne ptr %434, null
  %436 = and i1 %400, %435
  br i1 %436, label %438, label %459, !prof !453

437:                                              ; preds = %420
  br i1 %400, label %441, label %459, !prof !451

438:                                              ; preds = %429
  %439 = load ptr, ptr %3, align 8, !tbaa !238
  %440 = icmp eq ptr %439, null
  br i1 %440, label %445, label %441, !prof !454

441:                                              ; preds = %437, %438
  %442 = phi ptr [ %439, %438 ], [ %418, %437 ]
  %443 = getelementptr inbounds %struct.mem_attrs, ptr %442, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !448
  br label %455

445:                                              ; preds = %438
  %446 = load i32, ptr %0, align 8
  %447 = lshr i32 %446, 16
  %448 = and i32 %447, 255
  %449 = icmp ne i32 %448, 1
  tail call void @llvm.assume(i1 %449)
  %450 = zext nneg i32 %448 to i64
  %451 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %450
  %452 = load i8, ptr %451, align 1, !tbaa !238
  %453 = zext i8 %452 to i64
  %454 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %453) #17
  br label %455

455:                                              ; preds = %445, %441
  %456 = phi ptr [ %444, %441 ], [ %454, %445 ]
  %457 = getelementptr inbounds %struct.rtx_def, ptr %456, i64 0, i32 1
  %458 = load i64, ptr %457, align 8, !tbaa !238
  br label %459

459:                                              ; preds = %424, %455, %437, %429, %420
  %460 = phi i64 [ %458, %455 ], [ %408, %437 ], [ %408, %420 ], [ %408, %429 ], [ %408, %424 ]
  %461 = load ptr, ptr %10, align 8, !tbaa !238
  %462 = icmp eq ptr %461, null
  br i1 %462, label %467, label %463, !prof !447

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.mem_attrs, ptr %461, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !448
  %466 = icmp eq ptr %465, null
  br i1 %466, label %502, label %480, !prof !447

467:                                              ; preds = %459
  %468 = load i32, ptr %1, align 8
  %469 = lshr i32 %468, 16
  %470 = and i32 %469, 255
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %502, label %472, !prof !447

472:                                              ; preds = %467
  %473 = zext nneg i32 %470 to i64
  %474 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !238
  %476 = zext i8 %475 to i64
  %477 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %476) #17
  %478 = icmp ne ptr %477, null
  %479 = and i1 %409, %478
  br i1 %479, label %481, label %502, !prof !455

480:                                              ; preds = %463
  br i1 %409, label %484, label %502, !prof !452

481:                                              ; preds = %472
  %482 = load ptr, ptr %10, align 8, !tbaa !238
  %483 = icmp eq ptr %482, null
  br i1 %483, label %488, label %484, !prof !456

484:                                              ; preds = %480, %481
  %485 = phi ptr [ %482, %481 ], [ %461, %480 ]
  %486 = getelementptr inbounds %struct.mem_attrs, ptr %485, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !448
  br label %498

488:                                              ; preds = %481
  %489 = load i32, ptr %1, align 8
  %490 = lshr i32 %489, 16
  %491 = and i32 %490, 255
  %492 = icmp ne i32 %491, 1
  tail call void @llvm.assume(i1 %492)
  %493 = zext nneg i32 %491 to i64
  %494 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !238
  %496 = zext i8 %495 to i64
  %497 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %496) #17
  br label %498

498:                                              ; preds = %488, %484
  %499 = phi ptr [ %487, %484 ], [ %497, %488 ]
  %500 = getelementptr inbounds %struct.rtx_def, ptr %499, i64 0, i32 1
  %501 = load i64, ptr %500, align 8, !tbaa !238
  br label %502

502:                                              ; preds = %467, %498, %480, %472, %463
  %503 = phi i64 [ %501, %498 ], [ %417, %480 ], [ %417, %463 ], [ %417, %472 ], [ %417, %467 ]
  %504 = icmp sgt i64 %407, %416
  %505 = tail call i64 @llvm.smin.i64(i64 %407, i64 %416)
  %506 = tail call i64 @llvm.smax.i64(i64 %407, i64 %416)
  %507 = select i1 %504, i64 %503, i64 %460, !prof !457
  %508 = icmp sgt i64 %507, -1
  %509 = add nsw i64 %507, %505
  %510 = icmp sge i64 %506, %509
  %511 = select i1 %508, i1 %510, i1 false, !prof !447
  br label %522

512:                                              ; preds = %274
  %513 = trunc i32 %276 to i16
  %514 = lshr i16 17411, %513
  %515 = and i16 %514, 1
  %516 = icmp eq i16 %515, 0
  br i1 %516, label %281, label %522, !prof !458

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
define internal fastcc noundef zeroext i8 @nonoverlapping_component_refs_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !459 !PGOFuncName !460 {
  %3 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %61, label %5, !prof !461

5:                                                ; preds = %2, %57
  %6 = phi ptr [ %49, %57 ], [ %1, %2 ]
  %7 = phi ptr [ %48, %57 ], [ %0, %2 ]
  br label %8

8:                                                ; preds = %37, %5
  %9 = phi ptr [ %7, %5 ], [ %35, %37 ]
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !238
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  br label %17

17:                                               ; preds = %30, %8
  %18 = phi ptr [ %6, %8 ], [ %28, %30 ]
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %20 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !238
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !238
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !238
  %26 = icmp eq ptr %16, %25
  br i1 %26, label %41, label %27, !prof !462

27:                                               ; preds = %17
  %28 = load ptr, ptr %19, align 8, !tbaa !238
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !463

30:                                               ; preds = %27
  %31 = load i64, ptr %28, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 41
  br i1 %33, label %17, label %34, !prof !464, !llvm.loop !465

34:                                               ; preds = %27, %30
  %35 = load ptr, ptr %10, align 8, !tbaa !238
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37, !prof !466

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 41
  br i1 %40, label %8, label %61, !prof !467, !llvm.loop !468

41:                                               ; preds = %17
  %42 = load i64, ptr %16, align 8
  %43 = and i64 %42, 65535
  %44 = icmp ne i64 %43, 16
  %45 = icmp eq ptr %12, %21
  %46 = or i1 %45, %44
  br i1 %46, label %47, label %61, !prof !469

47:                                               ; preds = %41
  %48 = load ptr, ptr %10, align 8, !tbaa !238
  %49 = load ptr, ptr %19, align 8, !tbaa !238
  %50 = icmp ne ptr %48, null
  %51 = icmp ne ptr %49, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %61, !prof !470

53:                                               ; preds = %47
  %54 = load i64, ptr %48, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 41
  br i1 %56, label %57, label %61, !prof !471

57:                                               ; preds = %53
  %58 = load i64, ptr %49, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 41
  br i1 %60, label %5, label %61, !prof !472, !llvm.loop !473

61:                                               ; preds = %57, %47, %53, %41, %37, %34, %2
  %62 = phi i8 [ 0, %2 ], [ 0, %34 ], [ 0, %37 ], [ 0, %57 ], [ 0, %47 ], [ 0, %53 ], [ 1, %41 ]
  ret i8 %62
}

; Function Attrs: optsize
declare zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @decl_for_component_ref(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !474 !PGOFuncName !475 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !238
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !476

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 41
  br i1 %10, label %2, label %11, !prof !477, !llvm.loop !478

11:                                               ; preds = %7
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !247
  %14 = icmp eq i32 %13, 3
  %15 = select i1 %14, ptr %5, ptr null, !prof !479
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi ptr [ %15, %11 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @adjust_offset_for_component_ref(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !480 !PGOFuncName !481 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4, !prof !482

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !238
  br label %7

7:                                                ; preds = %26, %4
  %8 = phi i64 [ %6, %4 ], [ %23, %26 ]
  %9 = phi ptr [ %0, %4 ], [ %24, %26 ]
  %10 = tail call ptr @component_ref_field_offset(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = tail call i32 @host_integerp(ptr noundef %10, i32 noundef 1) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15, !prof !483

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %17 = tail call i64 @tree_low_cst(ptr noundef %10, i32 noundef 1) #17
  %18 = getelementptr inbounds %struct.tree_field_decl, ptr %12, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !238
  %20 = tail call i64 @tree_low_cst(ptr noundef %19, i32 noundef 1) #17
  %21 = sdiv i64 %20, 8
  %22 = add i64 %17, %8
  %23 = add i64 %22, %21
  %24 = load ptr, ptr %16, align 8, !tbaa !238
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !483

26:                                               ; preds = %15
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 41
  br i1 %29, label %7, label %30, !prof !484, !llvm.loop !485

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

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @true_dependence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !486 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 134217728
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !487

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %134, !prof !488

12:                                               ; preds = %8, %4
  %13 = and i32 %5, 16711680
  %14 = icmp eq i32 %13, 65536
  br i1 %14, label %15, label %21, !prof !489

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !238
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 38
  br i1 %20, label %134, label %21, !prof !490

21:                                               ; preds = %15, %12
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 16711680
  %24 = icmp eq i32 %23, 65536
  br i1 %24, label %25, label %31, !prof !491

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !238
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %134, label %31, !prof !492

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !238
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !493

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !239
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %134, label %40, !prof !494

40:                                               ; preds = %31, %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !238
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !495

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !239
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %134, label %52, !prof !496

49:                                               ; preds = %40
  %50 = and i32 %5, 67108864
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %134, !prof !497

52:                                               ; preds = %45
  %53 = and i32 %5, 67108864
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %134, !prof !497

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 5
  %57 = load i8, ptr %56, align 8, !tbaa !436
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %49, %55
  %60 = phi i32 [ %58, %55 ], [ 0, %49 ]
  br i1 %35, label %65, label %61, !prof !498

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 5
  %63 = load i8, ptr %62, align 8, !tbaa !436
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %59, %61
  %66 = phi i32 [ %64, %61 ], [ 0, %59 ]
  %67 = icmp eq i32 %60, %66
  br i1 %67, label %68, label %134, !prof !499

68:                                               ; preds = %65
  %69 = icmp eq i32 %1, 0
  %70 = lshr i32 %22, 16
  %71 = and i32 %70, 255
  %72 = select i1 %69, i32 %71, i32 %1, !prof !500
  %73 = load ptr, ptr %32, align 8, !tbaa !238
  %74 = tail call ptr @get_addr(ptr noundef %73) #16
  %75 = load ptr, ptr %41, align 8, !tbaa !238
  %76 = tail call ptr @get_addr(ptr noundef %75) #16
  %77 = tail call ptr @find_base_term(ptr noundef %74) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79, !prof !501

79:                                               ; preds = %68
  %80 = load i32, ptr %77, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %85 [
    i16 44, label %134
    i16 45, label %82
  ], !prof !502

82:                                               ; preds = %79
  %83 = and i32 %80, 67108864
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %134, !prof !503

85:                                               ; preds = %79, %82, %68
  %86 = load i32, ptr %2, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = tail call fastcc i32 @base_alias_check(ptr noundef %74, ptr noundef %76, i32 noundef %88, i32 noundef %72) #16, !range !226
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %134, label %91, !prof !504

91:                                               ; preds = %85
  %92 = tail call ptr @canon_rtx(ptr noundef %74) #16
  %93 = tail call ptr @canon_rtx(ptr noundef %76) #16
  %94 = zext i32 %72 to i64
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !238
  %97 = zext i8 %96 to i32
  %98 = load i32, ptr %2, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !238
  %104 = zext i8 %103 to i32
  %105 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %97, ptr noundef %93, i32 noundef %104, ptr noundef %92, i64 noundef 0) #16
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %134, !prof !505

107:                                              ; preds = %91
  %108 = tail call fastcc i32 @mems_in_disjoint_alias_sets_p(ptr noundef nonnull %2, ptr noundef nonnull %0) #16, !range !226
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %134, !prof !506

110:                                              ; preds = %107
  %111 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %134, !prof !507

113:                                              ; preds = %110
  %114 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %2) #16, !range !226
  %115 = icmp ne i32 %114, 0
  %116 = icmp eq i32 %72, 14
  %117 = or i1 %116, %115
  br i1 %117, label %134, label %118, !prof !508

118:                                              ; preds = %113
  %119 = load i32, ptr %93, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 61
  %122 = icmp eq i32 %72, 1
  %123 = or i1 %122, %121
  br i1 %123, label %134, label %124, !prof !509

124:                                              ; preds = %118
  %125 = load i32, ptr %2, align 8
  %126 = and i32 %125, 16711680
  %127 = icmp eq i32 %126, 65536
  br i1 %127, label %134, label %128, !prof !510

128:                                              ; preds = %124
  %129 = tail call fastcc ptr @fixed_scalar_and_varying_struct_p(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %93, ptr noundef %92, ptr noundef %3) #16
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134, !prof !511

131:                                              ; preds = %128
  %132 = tail call fastcc zeroext i8 @rtx_refs_may_alias_p(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %133 = zext i8 %132 to i32
  br label %134

134:                                              ; preds = %52, %128, %124, %118, %113, %110, %107, %91, %85, %82, %79, %65, %49, %36, %45, %25, %15, %8, %131
  %135 = phi i32 [ %133, %131 ], [ 1, %8 ], [ 1, %15 ], [ 1, %25 ], [ 1, %45 ], [ 1, %36 ], [ 0, %49 ], [ 1, %65 ], [ 0, %79 ], [ 0, %82 ], [ 0, %85 ], [ %105, %91 ], [ 0, %107 ], [ 0, %110 ], [ 1, %113 ], [ 1, %118 ], [ 1, %124 ], [ 0, %128 ], [ 0, %52 ]
  ret i32 %135
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @base_alias_check(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !512 !PGOFuncName !513 {
  %5 = tail call ptr @find_base_term(ptr noundef %0) #16
  %6 = tail call ptr @find_base_term(ptr noundef %1) #16
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %17, !prof !514

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !247
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %112, label %11, !prof !515

11:                                               ; preds = %8
  %12 = tail call ptr @canon_rtx(ptr noundef %0) #16
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %112, label %14, !prof !516

14:                                               ; preds = %11
  %15 = tail call ptr @find_base_term(ptr noundef %12) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %112, label %17

17:                                               ; preds = %14, %4
  %18 = phi ptr [ %15, %14 ], [ %5, %4 ]
  %19 = icmp eq ptr %6, null
  br i1 %19, label %20, label %29, !prof !517

20:                                               ; preds = %17
  %21 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !247
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %112, label %23, !prof !518

23:                                               ; preds = %20
  %24 = tail call ptr @canon_rtx(ptr noundef %1) #16
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %112, label %26, !prof !519

26:                                               ; preds = %23
  %27 = tail call ptr @find_base_term(ptr noundef %24) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %112, label %29

29:                                               ; preds = %26, %17
  %30 = phi ptr [ %27, %26 ], [ %6, %17 ]
  %31 = tail call i32 @rtx_equal_p(ptr noundef nonnull %18, ptr noundef nonnull %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %112, !prof !520

33:                                               ; preds = %29
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 61
  %37 = load i32, ptr %1, align 8
  %38 = and i32 %37, 65535
  br i1 %36, label %39, label %61, !prof !521

39:                                               ; preds = %33
  %40 = icmp eq i32 %38, 61
  br i1 %40, label %112, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !238
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %47, label %112

47:                                               ; preds = %41
  %48 = zext i32 %3 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !238
  %51 = icmp eq i8 %50, 0
  %52 = zext i8 %50 to i64
  %53 = select i1 %51, i64 %48, i64 %52
  %54 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !238
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !238
  %59 = sub nsw i64 0, %58
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %112, label %61

61:                                               ; preds = %33, %47
  %62 = icmp eq i32 %38, 61
  br i1 %62, label %63, label %83, !prof !521

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !238
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 30
  br i1 %68, label %69, label %112

69:                                               ; preds = %63
  %70 = zext nneg i32 %2 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !238
  %73 = icmp eq i8 %72, 0
  %74 = zext i8 %72 to i64
  %75 = select i1 %73, i64 %70, i64 %74
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !238
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !238
  %81 = sub nsw i64 0, %80
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %112, label %83

83:                                               ; preds = %69, %61
  %84 = load i32, ptr %18, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %91, label %87, !prof !522

87:                                               ; preds = %83
  %88 = load i32, ptr %30, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %96, label %112, !prof !523

91:                                               ; preds = %83
  %92 = and i32 %84, 16711686
  %93 = icmp eq i32 %92, 1048582
  br i1 %93, label %112, label %94, !prof !524

94:                                               ; preds = %91
  %95 = load i32, ptr %30, align 8
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ %88, %87 ]
  %98 = and i32 %84, 16711680
  %99 = and i32 %97, 16711680
  %100 = and i32 %97, 16777215
  %101 = icmp eq i32 %100, 1048582
  br i1 %101, label %112, label %102, !prof !525

102:                                              ; preds = %96
  %103 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !247
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105, !prof !526

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
define internal fastcc i32 @memrefs_conflict_p(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 !prof !527 !PGOFuncName !528 {
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
  br i1 %14, label %15, label %17, !prof !529

15:                                               ; preds = %6
  %16 = tail call ptr @get_addr(ptr noundef nonnull %8) #16
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi ptr [ %16, %15 ], [ %8, %6 ]
  %19 = load i32, ptr %10, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24, !prof !530

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
  ], !prof !531

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !238
  br label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !238
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
  ], !prof !531

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !238
  br label %48

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !238
  br label %48

46:                                               ; preds = %36
  %47 = tail call fastcc ptr @addr_side_effect_eval(ptr noundef nonnull %25, i32 noundef %9) #16
  br label %48

48:                                               ; preds = %43, %46, %40
  %49 = phi ptr [ %42, %40 ], [ %45, %43 ], [ %47, %46 ]
  %50 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %37, ptr noundef %49) #16, !range !226
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52, !prof !532

52:                                               ; preds = %48
  %53 = icmp slt i32 %7, 1
  %54 = icmp slt i32 %9, 1
  %55 = or i1 %53, %54
  br i1 %55, label %311, label %56, !prof !533

56:                                               ; preds = %52
  %57 = icmp sgt i64 %11, -1
  %58 = zext nneg i32 %7 to i64
  %59 = icmp ult i64 %11, %58
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %311, label %61, !prof !534

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
  br i1 %71, label %72, label %120, !prof !535

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !238
  %75 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !238
  %77 = load i32, ptr %49, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 49
  br i1 %79, label %80, label %110, !prof !536

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !238
  %83 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !238
  %85 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %76, ptr noundef %84) #16, !range !226
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %271, !prof !537

87:                                               ; preds = %80
  %88 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %74, ptr noundef %82) #16, !range !226
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %271, !prof !538

90:                                               ; preds = %87
  %91 = load i32, ptr %76, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 30
  %94 = load i32, ptr %84, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 30
  br i1 %93, label %97, label %105, !prof !539

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !238
  %100 = sub i64 %11, %99
  br i1 %96, label %101, label %271, !prof !540

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !238
  %104 = add nsw i64 %100, %103
  br label %271

105:                                              ; preds = %90
  br i1 %96, label %106, label %311, !prof !541

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !238
  %109 = add nsw i64 %108, %11
  br label %271

110:                                              ; preds = %72
  %111 = load i32, ptr %76, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 30
  br i1 %113, label %116, label %114, !prof !542

114:                                              ; preds = %110
  %115 = and i32 %77, 65535
  br label %211

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !238
  %119 = sub nsw i64 %11, %118
  br label %271

120:                                              ; preds = %68
  %121 = load i32, ptr %49, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 49
  br i1 %123, label %124, label %136, !prof !543

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !238
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 30
  br i1 %129, label %130, label %311, !prof !544

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !238
  %133 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !238
  %135 = add nsw i64 %134, %11
  br label %271

136:                                              ; preds = %120
  %137 = and i32 %121, 65535
  %138 = icmp eq i32 %70, 52
  %139 = icmp eq i32 %137, 52
  %140 = and i1 %138, %139
  br i1 %140, label %141, label %189, !prof !545

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !238
  %144 = tail call ptr @canon_rtx(ptr noundef %143) #16
  %145 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !238
  %147 = tail call ptr @canon_rtx(ptr noundef %146) #16
  %148 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %144, ptr noundef %147) #16, !range !226
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %311, label %150, !prof !546

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %152 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !238
  %154 = tail call ptr @canon_rtx(ptr noundef %153) #16
  %155 = load ptr, ptr %151, align 8, !tbaa !238
  %156 = tail call ptr @canon_rtx(ptr noundef %155) #16
  %157 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %154, ptr noundef %156) #16, !range !226
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %175, label %159, !prof !547

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
  br i1 %178, label %179, label %311, !prof !547

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !238
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
  br i1 %190, label %191, label %211, !prof !548

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %193 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !238
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
  %203 = load i64, ptr %202, align 8, !tbaa !238
  %204 = sub nsw i64 0, %203
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200, %198
  br label %207

207:                                              ; preds = %206, %200
  %208 = phi i32 [ -1, %206 ], [ %7, %200 ]
  %209 = load ptr, ptr %192, align 8, !tbaa !238
  %210 = tail call ptr @canon_rtx(ptr noundef %209) #16
  br label %271

211:                                              ; preds = %114, %191, %189
  %212 = phi i1 [ false, %114 ], [ true, %191 ], [ false, %189 ]
  %213 = phi i32 [ %77, %114 ], [ %121, %191 ], [ %121, %189 ]
  %214 = phi i32 [ %115, %114 ], [ %137, %191 ], [ %137, %189 ]
  %215 = icmp eq i32 %214, 61
  br i1 %215, label %216, label %235, !prof !549

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %218 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !238
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 30
  br i1 %222, label %223, label %235

223:                                              ; preds = %216
  br i1 %212, label %230, label %224

224:                                              ; preds = %223
  %225 = sext i32 %7 to i64
  %226 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !238
  %228 = sub nsw i64 0, %227
  %229 = icmp slt i64 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224, %223
  br label %231

231:                                              ; preds = %230, %224
  %232 = phi i32 [ -1, %230 ], [ %9, %224 ]
  %233 = load ptr, ptr %217, align 8, !tbaa !238
  %234 = tail call ptr @canon_rtx(ptr noundef %233) #16
  br label %271

235:                                              ; preds = %216, %211
  %236 = zext nneg i32 %70 to i64
  %237 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !247
  %239 = icmp eq i32 %238, 9
  br i1 %239, label %240, label %311, !prof !550

240:                                              ; preds = %235
  %241 = trunc i32 %69 to i16
  switch i16 %241, label %281 [
    i16 30, label %242
    i16 35, label %266
  ], !prof !551

242:                                              ; preds = %240
  %243 = trunc i32 %213 to i16
  switch i16 %243, label %287 [
    i16 30, label %244
    i16 35, label %283
  ], !prof !552

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !238
  %247 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !238
  %249 = sub nsw i64 %246, %248
  %250 = add nsw i64 %249, %11
  %251 = icmp slt i32 %7, 1
  %252 = icmp slt i32 %9, 1
  %253 = or i1 %251, %252
  br i1 %253, label %311, label %254, !prof !553

254:                                              ; preds = %244
  %255 = icmp sgt i64 %250, -1
  %256 = zext nneg i32 %7 to i64
  %257 = icmp slt i64 %250, %256
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %311, label %259, !prof !554

259:                                              ; preds = %254
  %260 = icmp slt i64 %250, 0
  %261 = zext nneg i32 %9 to i64
  %262 = add nsw i64 %250, %261
  %263 = icmp sgt i64 %262, 0
  %264 = select i1 %260, i1 %263, i1 false, !prof !555
  %265 = zext i1 %264 to i32
  br label %311

266:                                              ; preds = %240
  %267 = icmp eq i32 %214, 35
  %268 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !238
  %270 = tail call ptr @canon_rtx(ptr noundef %269) #16
  br i1 %267, label %277, label %271, !prof !556

271:                                              ; preds = %266, %97, %101, %106, %116, %130, %179, %207, %231, %277, %283, %80, %87
  %272 = phi i32 [ %7, %101 ], [ %7, %106 ], [ %7, %116 ], [ %7, %130 ], [ %184, %179 ], [ %208, %207 ], [ %7, %231 ], [ %7, %277 ], [ %7, %283 ], [ %7, %80 ], [ %7, %87 ], [ %7, %97 ], [ %7, %266 ]
  %273 = phi ptr [ %74, %101 ], [ %37, %106 ], [ %74, %116 ], [ %37, %130 ], [ %154, %179 ], [ %210, %207 ], [ %37, %231 ], [ %270, %277 ], [ %37, %283 ], [ %74, %80 ], [ %76, %87 ], [ %74, %97 ], [ %270, %266 ]
  %274 = phi i32 [ %9, %101 ], [ %9, %106 ], [ %9, %116 ], [ %9, %130 ], [ %187, %179 ], [ %9, %207 ], [ %232, %231 ], [ %9, %277 ], [ %9, %283 ], [ %9, %80 ], [ %9, %87 ], [ %9, %97 ], [ %9, %266 ]
  %275 = phi ptr [ %82, %101 ], [ %82, %106 ], [ %49, %116 ], [ %132, %130 ], [ %156, %179 ], [ %49, %207 ], [ %234, %231 ], [ %280, %277 ], [ %286, %283 ], [ %82, %80 ], [ %84, %87 ], [ %49, %97 ], [ %49, %266 ]
  %276 = phi i64 [ %104, %101 ], [ %109, %106 ], [ %119, %116 ], [ %135, %130 ], [ %188, %179 ], [ %11, %207 ], [ %11, %231 ], [ %11, %277 ], [ %11, %283 ], [ %11, %80 ], [ %11, %87 ], [ %100, %97 ], [ %11, %266 ]
  br label %6

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !238
  %280 = tail call ptr @canon_rtx(ptr noundef %279) #16
  br label %271

281:                                              ; preds = %240
  %282 = icmp eq i32 %214, 35
  br i1 %282, label %283, label %287, !prof !557

283:                                              ; preds = %242, %281
  %284 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !238
  %286 = tail call ptr @canon_rtx(ptr noundef %285) #16
  br label %271

287:                                              ; preds = %242, %281
  %288 = zext nneg i32 %214 to i64
  %289 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !247
  %291 = icmp eq i32 %290, 9
  br i1 %291, label %292, label %311, !prof !558

292:                                              ; preds = %287
  %293 = icmp slt i32 %7, 1
  %294 = icmp slt i32 %9, 1
  %295 = or i1 %293, %294
  br i1 %295, label %311, label %296, !prof !559

296:                                              ; preds = %292
  %297 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef nonnull %37, ptr noundef nonnull %49) #16, !range !226
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %311, label %299, !prof !560

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
define internal fastcc noundef i32 @mems_in_disjoint_alias_sets_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !561 !PGOFuncName !562 {
  %3 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22, !prof !563

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !238
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !239
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5, %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !238
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mem_attrs, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !239
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @.str.1) #17
  br label %22

22:                                               ; preds = %2, %17, %13, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !238
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !564

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !239
  br label %29

29:                                               ; preds = %22, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %22 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !238
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !565

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !239
  br label %37

37:                                               ; preds = %29, %34
  %38 = phi i32 [ %36, %34 ], [ 0, %29 ]
  %39 = tail call i32 @alias_sets_conflict_p(i32 noundef %30, i32 noundef %38) #16, !range !226
  %40 = xor i32 %39, 1
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @aliases_everything_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !566 !PGOFuncName !567 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 61
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @fixed_scalar_and_varying_struct_p(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %6 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !247
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8, !prof !570

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12, !prof !570

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !239
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16, !prof !571

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %29, label %19, !prof !572

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23, !prof !573

23:                                               ; preds = %19
  %24 = tail call zeroext i8 %4(ptr noundef %2, i8 noundef zeroext 1) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29, !prof !574

26:                                               ; preds = %23
  %27 = tail call zeroext i8 %4(ptr noundef %3, i8 noundef zeroext 1) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %51, !prof !575

29:                                               ; preds = %8, %26, %23, %19, %16, %12
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !238
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33, !prof !576

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !239
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37, !prof !577

37:                                               ; preds = %33
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 268435456
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41, !prof !578

41:                                               ; preds = %37
  %42 = load i32, ptr %1, align 8
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %50, label %44, !prof !579

44:                                               ; preds = %41
  %45 = tail call zeroext i8 %4(ptr noundef %2, i8 noundef zeroext 1) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47, !prof !580

47:                                               ; preds = %44
  %48 = tail call zeroext i8 %4(ptr noundef %3, i8 noundef zeroext 1) #17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50, !prof !581

50:                                               ; preds = %29, %47, %44, %41, %37, %33
  br label %51

51:                                               ; preds = %47, %26, %5, %50
  %52 = phi ptr [ null, %50 ], [ null, %5 ], [ %0, %26 ], [ %1, %47 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @rtx_refs_may_alias_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !582 !PGOFuncName !583 {
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  %6 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %4, ptr noundef %0) #16, !range !263
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !584

8:                                                ; preds = %3
  %9 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %5, ptr noundef %1) #16, !range !263
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11, !prof !585

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
define internal fastcc ptr @addr_side_effect_eval(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !586 !PGOFuncName !587 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %24 [
    i16 75, label %7
    i16 74, label %5
    i16 77, label %18
    i16 76, label %18
  ], !prof !588

5:                                                ; preds = %2
  %6 = sub nsw i32 0, %1
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ %1, %2 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !589

10:                                               ; preds = %7
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !238
  %15 = sext i32 %8 to i64
  %16 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #17
  %17 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %12, ptr noundef %14, ptr noundef %16) #17
  br label %21

18:                                               ; preds = %2, %2, %7
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !238
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
define internal fastcc i32 @rtx_equal_for_memref_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !590 !PGOFuncName !591 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7, !prof !248

4:                                                ; preds = %67, %2
  %5 = phi ptr [ %1, %2 ], [ %69, %67 ]
  %6 = icmp eq ptr %5, null
  br label %194

7:                                                ; preds = %2, %67
  %8 = phi ptr [ %69, %67 ], [ %1, %2 ]
  %9 = phi ptr [ %68, %67 ], [ %0, %2 ]
  %10 = icmp eq ptr %8, null
  br i1 %10, label %194, label %11, !prof !592

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %8
  br i1 %12, label %194, label %13, !prof !593

13:                                               ; preds = %11
  %14 = load i32, ptr %9, align 8
  %15 = and i32 %14, 65535
  %16 = load i32, ptr %8, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %194, !prof !594

19:                                               ; preds = %13
  %20 = xor i32 %16, %14
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %194, !prof !595

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
  ], !prof !596

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #16
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #16
  %28 = icmp eq i32 %26, %27
  br label %194

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !238
  %32 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !238
  %34 = icmp eq ptr %31, %33
  br label %194

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !238
  %38 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !238
  %40 = icmp eq ptr %37, %39
  br label %194

41:                                               ; preds = %23
  %42 = icmp eq i32 %15, 49
  br i1 %42, label %43, label %71, !prof !597

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !238
  %46 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !238
  %48 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %45, ptr noundef %47) #16, !range !226
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50, !prof !598

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !238
  %53 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !238
  %55 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %52, ptr noundef %54) #16, !range !226
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %194, !prof !599

57:                                               ; preds = %50, %43
  %58 = load ptr, ptr %44, align 8, !tbaa !238
  %59 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !238
  %61 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %58, ptr noundef %60) #16, !range !226
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %194, label %63, !prof !600

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !238
  %66 = load ptr, ptr %46, align 8, !tbaa !238
  br label %67

67:                                               ; preds = %63, %97, %110, %119
  %68 = phi ptr [ %65, %63 ], [ %100, %97 ], [ %113, %110 ], [ %122, %119 ]
  %69 = phi ptr [ %66, %63 ], [ %82, %97 ], [ %116, %110 ], [ %125, %119 ]
  %70 = icmp eq ptr %68, null
  br i1 %70, label %4, label %7, !prof !601

71:                                               ; preds = %41
  %72 = zext nneg i32 %15 to i64
  %73 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !247
  %75 = and i32 %74, -3
  switch i32 %75, label %117 [
    i32 1, label %76
    i32 0, label %101
  ], !prof !602

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !238
  %79 = tail call ptr @canon_rtx(ptr noundef %78) #16
  %80 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !238
  %82 = tail call ptr @canon_rtx(ptr noundef %81) #16
  %83 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !238
  %85 = tail call ptr @canon_rtx(ptr noundef %84) #16
  %86 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %79, ptr noundef %82) #16, !range !226
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88, !prof !603

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !238
  %91 = tail call ptr @canon_rtx(ptr noundef %90) #16
  %92 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %91, ptr noundef %85) #16, !range !226
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %194, !prof !604

94:                                               ; preds = %88, %76
  %95 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %79, ptr noundef %85) #16, !range !226
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %194, label %97, !prof !605

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !238
  %100 = tail call ptr @canon_rtx(ptr noundef %99) #16
  br label %67

101:                                              ; preds = %71
  %102 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !238
  %104 = tail call ptr @canon_rtx(ptr noundef %103) #16
  %105 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !238
  %107 = tail call ptr @canon_rtx(ptr noundef %106) #16
  %108 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %104, ptr noundef %107) #16, !range !226
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %194, label %110, !prof !606

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !238
  %113 = tail call ptr @canon_rtx(ptr noundef %112) #16
  %114 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !238
  %116 = tail call ptr @canon_rtx(ptr noundef %115) #16
  br label %67

117:                                              ; preds = %71
  %118 = icmp eq i32 %74, 4
  br i1 %118, label %119, label %126, !prof !607

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !238
  %122 = tail call ptr @canon_rtx(ptr noundef %121) #16
  %123 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !238
  %125 = tail call ptr @canon_rtx(ptr noundef %124) #16
  br label %67

126:                                              ; preds = %117
  %127 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %72
  %128 = load ptr, ptr %127, align 8, !tbaa !224
  %129 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %72
  %130 = load i8, ptr %129, align 1, !tbaa !238
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %194, label %132, !prof !608

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %134 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %135 = zext i8 %130 to i64
  br label %136

136:                                              ; preds = %132, %192
  %137 = phi i64 [ %135, %132 ], [ %138, %192 ]
  %138 = add nsw i64 %137, -1
  %139 = getelementptr inbounds i8, ptr %128, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !238
  switch i8 %140, label %191 [
    i8 105, label %141
    i8 69, label %147
    i8 101, label %175
    i8 115, label %184
    i8 48, label %192
  ], !prof !609

141:                                              ; preds = %136
  %142 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %143 = load i32, ptr %142, align 8, !tbaa !238
  %144 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %145 = load i32, ptr %144, align 8, !tbaa !238
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %192, label %194

147:                                              ; preds = %136
  %148 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %149 = load ptr, ptr %148, align 8, !tbaa !238
  %150 = load i32, ptr %149, align 8, !tbaa !610
  %151 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %152 = load ptr, ptr %151, align 8, !tbaa !238
  %153 = load i32, ptr %152, align 8, !tbaa !610
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %155, label %194

155:                                              ; preds = %147
  %156 = icmp sgt i32 %150, 0
  br i1 %156, label %163, label %192

157:                                              ; preds = %163
  %158 = add nuw nsw i64 %164, 1
  %159 = load ptr, ptr %148, align 8, !tbaa !238
  %160 = load i32, ptr %159, align 8, !tbaa !610
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %192, !llvm.loop !612

163:                                              ; preds = %155, %157
  %164 = phi i64 [ %158, %157 ], [ 0, %155 ]
  %165 = phi ptr [ %159, %157 ], [ %149, %155 ]
  %166 = getelementptr inbounds %struct.rtvec_def, ptr %165, i64 0, i32 1, i64 %164
  %167 = load ptr, ptr %166, align 8, !tbaa !224
  %168 = tail call ptr @canon_rtx(ptr noundef %167) #16
  %169 = load ptr, ptr %151, align 8, !tbaa !238
  %170 = getelementptr inbounds %struct.rtvec_def, ptr %169, i64 0, i32 1, i64 %164
  %171 = load ptr, ptr %170, align 8, !tbaa !224
  %172 = tail call ptr @canon_rtx(ptr noundef %171) #16
  %173 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %168, ptr noundef %172) #16, !range !226
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %194, label %157

175:                                              ; preds = %136
  %176 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %177 = load ptr, ptr %176, align 8, !tbaa !238
  %178 = tail call ptr @canon_rtx(ptr noundef %177) #16
  %179 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %180 = load ptr, ptr %179, align 8, !tbaa !238
  %181 = tail call ptr @canon_rtx(ptr noundef %180) #16
  %182 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %178, ptr noundef %181) #16, !range !226
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %192, !prof !613

184:                                              ; preds = %136
  %185 = getelementptr inbounds [1 x %union.rtunion_def], ptr %133, i64 0, i64 %138
  %186 = load ptr, ptr %185, align 8, !tbaa !238
  %187 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %138
  %188 = load ptr, ptr %187, align 8, !tbaa !238
  %189 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) %188) #16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %194

191:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1462, ptr noundef nonnull @.str.1) #17
  br label %192

192:                                              ; preds = %157, %155, %136, %191, %141, %175, %184
  %193 = icmp sgt i64 %137, 1
  br i1 %193, label %136, label %194, !prof !614, !llvm.loop !615

194:                                              ; preds = %101, %88, %94, %50, %57, %23, %23, %23, %23, %19, %13, %11, %7, %141, %147, %175, %184, %192, %163, %126, %4, %35, %29, %25
  %195 = phi i1 [ %40, %35 ], [ %34, %29 ], [ %28, %25 ], [ %6, %4 ], [ true, %126 ], [ false, %163 ], [ false, %141 ], [ false, %147 ], [ false, %175 ], [ false, %184 ], [ true, %192 ], [ false, %101 ], [ false, %94 ], [ true, %88 ], [ false, %57 ], [ true, %50 ], [ false, %23 ], [ false, %23 ], [ false, %23 ], [ false, %23 ], [ false, %19 ], [ false, %13 ], [ true, %11 ], [ false, %7 ]
  %196 = zext i1 %195 to i32
  ret i32 %196
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ao_ref_from_mem(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !616 !PGOFuncName !617 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %5 = icmp eq ptr %4, null
  br i1 %5, label %148, label %6, !prof !618

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !408
  %8 = icmp eq ptr %7, null
  br i1 %8, label %148, label %9, !prof !619

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !413
  %12 = icmp eq ptr %11, null
  br i1 %12, label %148, label %13, !prof !620

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !448
  %16 = icmp eq ptr %15, null
  br i1 %16, label %148, label %17, !prof !621

17:                                               ; preds = %13
  tail call void @ao_ref_init(ptr noundef %0, ptr noundef nonnull %7) #17
  %18 = tail call ptr @ao_ref_base(ptr noundef %0) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %148, label %20, !prof !622

20:                                               ; preds = %17
  %21 = load i64, ptr %18, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -47
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %26, label %32, !prof !623

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !238
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %148, !prof !624

32:                                               ; preds = %20, %26
  %33 = trunc i64 %21 to i16
  switch i16 %33, label %55 [
    i16 29, label %148
    i16 30, label %148
    i16 32, label %34
  ], !prof !625

34:                                               ; preds = %32
  %35 = and i64 %21, 67108864
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55, !prof !626

37:                                               ; preds = %34
  %38 = load ptr, ptr @cfun, align 8, !tbaa !224
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !627
  %41 = getelementptr inbounds %struct.gimple_df, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !629
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44, !prof !633

44:                                               ; preds = %37
  %45 = tail call ptr @pointer_map_contains(ptr noundef nonnull %42, ptr noundef nonnull %18) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47, !prof !634

47:                                               ; preds = %44
  %48 = tail call i32 @get_alias_set(ptr noundef nonnull %18) #16
  %49 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 %48, ptr %49, align 4, !tbaa !635
  %50 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !238
  %52 = load ptr, ptr %45, align 8, !tbaa !224
  %53 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %51, ptr noundef %52) #17
  %54 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !637
  br label %55

55:                                               ; preds = %44, %47, %32, %37, %34
  %56 = load ptr, ptr %3, align 8, !tbaa !238
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !638

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !239
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi i32 [ %60, %58 ], [ 0, %55 ]
  %63 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 %62, ptr %63, align 8, !tbaa !639
  %64 = load ptr, ptr %3, align 8, !tbaa !238, !nonnull !640, !noundef !640
  %65 = getelementptr inbounds %struct.mem_attrs, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !413
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !238
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %80, !prof !641

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.mem_attrs, ptr %64, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !448
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !238
  %75 = add nsw i64 %74, %68
  %76 = shl nsw i64 %75, 3
  %77 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !642
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %148, label %80

80:                                               ; preds = %70, %61
  %81 = shl nsw i64 %68, 3
  %82 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !643
  %84 = add nsw i64 %83, %81
  store i64 %84, ptr %82, align 8, !tbaa !643
  %85 = load ptr, ptr %3, align 8, !tbaa !238
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87, !prof !638

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.mem_attrs, ptr %85, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !448
  br label %100

90:                                               ; preds = %80
  %91 = load i32, ptr %1, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = icmp ne i32 %93, 1
  tail call void @llvm.assume(i1 %94)
  %95 = zext nneg i32 %93 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !238
  %98 = zext i8 %97 to i64
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %98) #17
  br label %100

100:                                              ; preds = %90, %87
  %101 = phi ptr [ %89, %87 ], [ %99, %90 ]
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !238
  %104 = shl nsw i64 %103, 3
  %105 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %104, ptr %105, align 8, !tbaa !642
  %106 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %107 = load i64, ptr %106, align 8, !tbaa !644
  %108 = icmp ne i64 %107, -1
  %109 = icmp sgt i64 %104, %107
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %112, !prof !645

111:                                              ; preds = %100
  store i64 %104, ptr %106, align 8, !tbaa !644
  br label %112

112:                                              ; preds = %111, %100
  %113 = load ptr, ptr %3, align 8, !tbaa !238
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !638

115:                                              ; preds = %112
  %116 = load ptr, ptr %113, align 8, !tbaa !408
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi ptr [ %116, %115 ], [ null, %112 ]
  %119 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #17
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %147, label %121, !prof !641

121:                                              ; preds = %117
  %122 = load i64, ptr %82, align 8, !tbaa !643
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %148, label %124, !prof !646

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !637
  %127 = load i64, ptr %126, align 8
  %128 = and i64 %127, 65535
  %129 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !247
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %147, !prof !647

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.tree_decl_common, ptr %126, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !238
  %135 = tail call i32 @host_integerp(ptr noundef %134, i32 noundef 1) #17
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137, !prof !648

137:                                              ; preds = %132
  %138 = load ptr, ptr %125, align 8, !tbaa !637
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !238
  %141 = getelementptr inbounds %struct.tree_int_cst, ptr %140, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !238
  %143 = load i64, ptr %82, align 8, !tbaa !643
  %144 = load i64, ptr %105, align 8, !tbaa !642
  %145 = add nsw i64 %144, %143
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %148, label %147, !prof !649

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @canon_true_dependence(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 !prof !650 {
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !651

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 134217728
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %122

14:                                               ; preds = %10, %6
  %15 = and i32 %7, 16711680
  %16 = icmp eq i32 %15, 65536
  br i1 %16, label %17, label %23, !prof !652

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !238
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 38
  br i1 %22, label %122, label %23, !prof !653

23:                                               ; preds = %17, %14
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 16711680
  %26 = icmp eq i32 %25, 65536
  br i1 %26, label %27, label %33, !prof !654

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !238
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 38
  br i1 %32, label %122, label %33, !prof !655

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !238
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !656

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !239
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %122, label %42, !prof !657

42:                                               ; preds = %33, %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !238
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !658

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !239
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %122, label %53, !prof !659

50:                                               ; preds = %42
  %51 = and i32 %7, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %122, !prof !660

53:                                               ; preds = %46
  %54 = and i32 %7, 67108864
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %122, !prof !660

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 5
  %58 = load i8, ptr %57, align 8, !tbaa !436
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %50, %56
  %61 = phi i32 [ %59, %56 ], [ 0, %50 ]
  br i1 %37, label %66, label %62, !prof !661

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 5
  %64 = load i8, ptr %63, align 8, !tbaa !436
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %60, %62
  %67 = phi i32 [ %65, %62 ], [ 0, %60 ]
  %68 = icmp eq i32 %61, %67
  br i1 %68, label %69, label %122, !prof !662

69:                                               ; preds = %66
  %70 = icmp eq ptr %4, null
  br i1 %70, label %71, label %74, !prof !663

71:                                               ; preds = %69
  %72 = load ptr, ptr %34, align 8, !tbaa !238
  %73 = tail call ptr @get_addr(ptr noundef %72) #16
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi ptr [ %4, %69 ], [ %73, %71 ]
  %76 = lshr i32 %7, 16
  %77 = and i32 %76, 255
  %78 = tail call fastcc i32 @base_alias_check(ptr noundef %75, ptr noundef %2, i32 noundef %77, i32 noundef %1) #16, !range !226
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %122, label %80, !prof !664

80:                                               ; preds = %74
  %81 = tail call ptr @canon_rtx(ptr noundef %75) #16
  %82 = zext i32 %1 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !238
  %85 = zext i8 %84 to i32
  %86 = load i32, ptr %3, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !238
  %92 = zext i8 %91 to i32
  %93 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %85, ptr noundef %2, i32 noundef %92, ptr noundef %81, i64 noundef 0) #16
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %122, !prof !665

95:                                               ; preds = %80
  %96 = tail call fastcc i32 @mems_in_disjoint_alias_sets_p(ptr noundef nonnull %3, ptr noundef nonnull %0) #16, !range !226
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %122, !prof !666

98:                                               ; preds = %95
  %99 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %3, ptr noundef nonnull %0) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %122, !prof !667

101:                                              ; preds = %98
  %102 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %3) #16, !range !226
  %103 = icmp ne i32 %102, 0
  %104 = icmp eq i32 %1, 14
  %105 = or i1 %104, %103
  br i1 %105, label %122, label %106, !prof !668

106:                                              ; preds = %101
  %107 = load i32, ptr %2, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 61
  %110 = icmp eq i32 %1, 1
  %111 = or i1 %110, %109
  br i1 %111, label %122, label %112, !prof !669

112:                                              ; preds = %106
  %113 = load i32, ptr %3, align 8
  %114 = and i32 %113, 16711680
  %115 = icmp eq i32 %114, 65536
  br i1 %115, label %122, label %116, !prof !670

116:                                              ; preds = %112
  %117 = tail call fastcc ptr @fixed_scalar_and_varying_struct_p(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %81, ptr noundef %5) #16
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122, !prof !671

119:                                              ; preds = %116
  %120 = tail call fastcc zeroext i8 @rtx_refs_may_alias_p(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  %121 = zext i8 %120 to i32
  br label %122

122:                                              ; preds = %53, %116, %112, %106, %101, %98, %95, %80, %74, %66, %50, %38, %46, %27, %17, %10, %119
  %123 = phi i32 [ %121, %119 ], [ 1, %10 ], [ 1, %17 ], [ 1, %27 ], [ 1, %46 ], [ 1, %38 ], [ 0, %50 ], [ 1, %66 ], [ 0, %74 ], [ %93, %80 ], [ 0, %95 ], [ 0, %98 ], [ 1, %101 ], [ 1, %106 ], [ 1, %112 ], [ 0, %116 ], [ 0, %53 ]
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @anti_dependence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !672 {
  %3 = tail call fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #16, !range !673
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !674 !PGOFuncName !675 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 134217728
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !676

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %131, !prof !677

11:                                               ; preds = %7, %3
  %12 = and i32 %4, 16711680
  %13 = icmp eq i32 %12, 65536
  br i1 %13, label %14, label %20, !prof !678

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 38
  br i1 %19, label %131, label %20, !prof !679

20:                                               ; preds = %14, %11
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 16711680
  %23 = icmp eq i32 %22, 65536
  br i1 %23, label %24, label %30, !prof !680

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !238
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 38
  br i1 %29, label %131, label %30, !prof !681

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !238
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !682

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %33, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !239
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %131, label %39, !prof !683

39:                                               ; preds = %30, %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !238
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44, !prof !684

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !239
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %131, label %53, !prof !685

48:                                               ; preds = %39
  %49 = icmp ne i32 %2, 0
  %50 = and i32 %21, 67108864
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %49, %51
  br i1 %52, label %62, label %131, !prof !686

53:                                               ; preds = %44
  %54 = icmp ne i32 %2, 0
  %55 = and i32 %21, 67108864
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %131, !prof !686

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 5
  %60 = load i8, ptr %59, align 8, !tbaa !436
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %48, %58
  %63 = phi i1 [ %54, %58 ], [ %49, %48 ]
  %64 = phi i32 [ %61, %58 ], [ 0, %48 ]
  br i1 %34, label %69, label %65, !prof !687

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %33, i64 0, i32 5
  %67 = load i8, ptr %66, align 8, !tbaa !436
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %62, %65
  %70 = phi i32 [ %68, %65 ], [ 0, %62 ]
  %71 = icmp eq i32 %64, %70
  br i1 %71, label %72, label %131, !prof !688

72:                                               ; preds = %69
  %73 = load ptr, ptr %31, align 8, !tbaa !238
  %74 = tail call ptr @get_addr(ptr noundef %73) #16
  %75 = load ptr, ptr %40, align 8, !tbaa !238
  %76 = tail call ptr @get_addr(ptr noundef %75) #16
  br i1 %63, label %86, label %77, !prof !689

77:                                               ; preds = %72
  %78 = tail call ptr @find_base_term(ptr noundef %76) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80, !prof !690

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 8
  %82 = trunc i32 %81 to i16
  switch i16 %82, label %86 [
    i16 44, label %131
    i16 45, label %83
  ], !prof !691

83:                                               ; preds = %80
  %84 = and i32 %81, 67108864
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %131, !prof !692

86:                                               ; preds = %80, %77, %83, %72
  %87 = load i32, ptr %1, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = load i32, ptr %0, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = tail call fastcc i32 @base_alias_check(ptr noundef %74, ptr noundef %76, i32 noundef %89, i32 noundef %92) #16, !range !226
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %131, label %95, !prof !693

95:                                               ; preds = %86
  %96 = tail call ptr @canon_rtx(ptr noundef %74) #16
  %97 = tail call ptr @canon_rtx(ptr noundef %76) #16
  %98 = load i32, ptr %0, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !238
  %104 = zext i8 %103 to i32
  %105 = load i32, ptr %1, align 8
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !238
  %111 = zext i8 %110 to i32
  %112 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %104, ptr noundef %97, i32 noundef %111, ptr noundef %96, i64 noundef 0) #16
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %131, !prof !694

114:                                              ; preds = %95
  %115 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %1, ptr noundef nonnull %0) #16
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %131, !prof !695

117:                                              ; preds = %114
  %118 = tail call fastcc ptr @fixed_scalar_and_varying_struct_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %97, ptr noundef %96, ptr noundef nonnull @rtx_addr_varies_p) #16
  %119 = icmp eq ptr %118, %0
  br i1 %119, label %120, label %123, !prof !696

120:                                              ; preds = %117
  %121 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %1) #16, !range !226
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120, %117
  %124 = icmp eq ptr %118, %1
  br i1 %124, label %125, label %128, !prof !696

125:                                              ; preds = %123
  %126 = tail call fastcc i32 @aliases_everything_p(ptr noundef nonnull %0) #16, !range !226
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

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @output_dependence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !697 {
  %3 = tail call fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef 1) #16, !range !673
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_alias_target() local_unnamed_addr #0 !prof !698 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @static_reg_base_value, i8 0, i64 424, i1 false)
  br label %1

1:                                                ; preds = %0, %13
  %2 = phi i64 [ 0, %0 ], [ %14, %13 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %3) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6, !prof !699

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %3, i32 noundef 16) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !700

9:                                                ; preds = %6
  %10 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %3) #17
  %11 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 0, ptr noundef %10) #17
  %12 = getelementptr inbounds [53 x ptr], ptr @static_reg_base_value, i64 0, i64 %2
  store ptr %11, ptr %12, align 8, !tbaa !224
  br label %13

13:                                               ; preds = %1, %6, %9
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 53
  br i1 %15, label %16, label %1, !prof !701, !llvm.loop !702

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !224
  %18 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %17) #17
  store ptr %18, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 7), align 8, !tbaa !224
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !224
  %20 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %19) #17
  store ptr %20, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 16), align 16, !tbaa !224
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !224
  %22 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %21) #17
  store ptr %22, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 20), align 16, !tbaa !224
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !224
  %24 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %23) #17
  store ptr %24, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 6), align 16, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @memory_modified_in_insn_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !703 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %12, !prof !704

7:                                                ; preds = %2
  store i1 false, ptr @memory_modified, align 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !238
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
define internal void @memory_modified_1(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !705 !PGOFuncName !706 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %14, !prof !707

7:                                                ; preds = %3
  %8 = tail call i32 @anti_dependence(ptr noundef nonnull %0, ptr noundef %2) #16, !range !673
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !708

10:                                               ; preds = %7
  %11 = tail call i32 @output_dependence(ptr noundef nonnull %0, ptr noundef %2) #16, !range !673
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !709

13:                                               ; preds = %10, %7
  store i1 true, ptr @memory_modified, align 1
  br label %14

14:                                               ; preds = %10, %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_alias_analysis() local_unnamed_addr #0 !prof !710 {
  %1 = tail call i32 @max_reg_num() #17
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !238
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !711

4:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 38) #17
  br label %5

5:                                                ; preds = %4, %0
  %6 = add i32 %1, -53
  store i32 %6, ptr @reg_known_value_size, align 4, !tbaa !247
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %8) #17
  store ptr %9, ptr @reg_known_value, align 8, !tbaa !224
  %10 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 1) #17
  store ptr %12, ptr @reg_known_equiv_p, align 8, !tbaa !224
  %13 = load ptr, ptr @old_reg_base_value, align 8, !tbaa !224
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !712

15:                                               ; preds = %5
  store ptr %13, ptr @reg_base_value, align 8, !tbaa !224
  br label %19

16:                                               ; preds = %5
  %17 = load ptr, ptr @reg_base_value, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !713

19:                                               ; preds = %15, %16
  %20 = phi ptr [ %13, %15 ], [ %17, %16 ]
  tail call fastcc void @VEC_rtx_base_truncate(ptr noundef nonnull %20) #16
  br label %21

21:                                               ; preds = %19, %16
  tail call fastcc void @VEC_rtx_gc_safe_grow_cleared(i32 noundef %1) #16
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  store ptr %24, ptr @new_reg_base_value, align 8, !tbaa !224
  %25 = tail call ptr @xmalloc(i64 noundef %22) #17
  store ptr %25, ptr @reg_seen, align 8, !tbaa !224
  %26 = icmp eq i32 %1, 0
  br label %27

27:                                               ; preds = %203, %21
  %28 = phi i32 [ 0, %21 ], [ %205, %203 ]
  store i32 0, ptr @unique_id, align 4, !tbaa !247
  store i1 true, ptr @copying_arguments, align 1
  %29 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  tail call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %23, i1 false)
  %30 = load ptr, ptr @reg_seen, align 8, !tbaa !224
  tail call void @llvm.memset.p0.i64(ptr align 1 %30, i8 0, i64 %22, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %29, ptr noundef nonnull align 16 dereferenceable(424) @static_reg_base_value, i64 424, i1 false)
  %31 = tail call ptr @get_insns() #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %171, label %33, !prof !714

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
  ], !prof !715

37:                                               ; preds = %33, %33, %33, %33
  %38 = load i32, ptr @reload_completed, align 4, !tbaa !247
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !716

40:                                               ; preds = %37
  %41 = tail call i32 @prologue_epilogue_contains(ptr noundef nonnull %34) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %167, !prof !717

43:                                               ; preds = %40, %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !238
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 23
  br i1 %48, label %49, label %60, !prof !718

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !238
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53, !prof !719

53:                                               ; preds = %49
  %54 = tail call ptr @find_reg_note(ptr noundef nonnull %34, i32 noundef 15, ptr noundef null) #17
  %55 = icmp eq ptr %54, null
  %56 = load ptr, ptr %44, align 8, !tbaa !238
  br i1 %55, label %60, label %57, !prof !720

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !238
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
  br i1 %66, label %67, label %167, !prof !721

67:                                               ; preds = %62
  %68 = load ptr, ptr %44, align 8, !tbaa !238
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %75, label %72, !prof !722

72:                                               ; preds = %67
  %73 = tail call ptr @single_set_2(ptr noundef nonnull %34, ptr noundef nonnull %68) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %167, label %75, !prof !713

75:                                               ; preds = %67, %72
  %76 = phi ptr [ %73, %72 ], [ %68, %67 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !238
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %167, !prof !723

82:                                               ; preds = %75
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #16
  %84 = icmp ugt i32 %83, 52
  br i1 %84, label %85, label %167, !prof !724

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !238
  %88 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %34) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %124, label %90, !prof !725

90:                                               ; preds = %85
  %91 = load i32, ptr %88, align 8
  %92 = and i32 %91, 16711680
  %93 = icmp eq i32 %92, 262144
  br i1 %93, label %94, label %104, !prof !726

94:                                               ; preds = %90
  %95 = load ptr, ptr @df, align 8, !tbaa !224
  %96 = getelementptr inbounds %struct.df, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !727
  %98 = zext i32 %83 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !224
  %101 = getelementptr inbounds %struct.df_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !730
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %124, !prof !732

104:                                              ; preds = %94, %90
  %105 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !238
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %124, label %110, !prof !733

110:                                              ; preds = %104
  %111 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %106, i8 noundef zeroext 1) #17
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %124, !prof !734

113:                                              ; preds = %110
  %114 = load ptr, ptr %77, align 8, !tbaa !238
  %115 = load ptr, ptr %105, align 8, !tbaa !238
  %116 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %114, ptr noundef %115) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124, !prof !735

118:                                              ; preds = %113
  %119 = load ptr, ptr %105, align 8, !tbaa !238
  tail call fastcc void @set_reg_known_value(i32 noundef %83, ptr noundef %119) #16
  %120 = load i32, ptr %88, align 8
  %121 = and i32 %120, 16711680
  %122 = icmp eq i32 %121, 196608
  %123 = zext i1 %122 to i8
  tail call fastcc void @set_reg_known_equiv_p(i32 noundef %83, i8 noundef zeroext %123) #16
  br label %167

124:                                              ; preds = %94, %85, %113, %110, %104
  %125 = load ptr, ptr @df, align 8, !tbaa !224
  %126 = getelementptr inbounds %struct.df, ptr %125, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !727
  %128 = zext i32 %83 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !224
  %131 = getelementptr inbounds %struct.df_reg_info, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !730
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %167, !prof !736

134:                                              ; preds = %124
  %135 = load i32, ptr %87, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 49
  br i1 %137, label %138, label %158, !prof !737

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !238
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %158, !prof !738

144:                                              ; preds = %138
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %140) #16
  %146 = tail call ptr @get_reg_known_value(i32 noundef %145) #16
  %147 = icmp eq ptr %146, null
  br i1 %147, label %158, label %148, !prof !739

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !238
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 30
  br i1 %153, label %154, label %158, !prof !740

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !238
  %157 = tail call ptr @plus_constant(ptr noundef nonnull %146, i64 noundef %156) #17
  tail call fastcc void @set_reg_known_value(i32 noundef %83, ptr noundef %157) #16
  tail call fastcc void @set_reg_known_equiv_p(i32 noundef %83, i8 noundef zeroext 0) #16
  br label %167

158:                                              ; preds = %148, %144, %138, %134
  %159 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %87, i8 noundef zeroext 1) #17
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %167, !prof !741

161:                                              ; preds = %158
  tail call fastcc void @set_reg_known_value(i32 noundef %83, ptr noundef nonnull %87) #16
  tail call fastcc void @set_reg_known_equiv_p(i32 noundef %83, i8 noundef zeroext 0) #16
  br label %167

162:                                              ; preds = %33
  %163 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %164 = load i32, ptr %163, align 8, !tbaa !238
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %167, !prof !742

166:                                              ; preds = %162
  store i1 false, ptr @copying_arguments, align 1
  br label %167

167:                                              ; preds = %62, %124, %33, %40, %118, %158, %161, %154, %82, %75, %72, %166, %162
  %168 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %169 = load ptr, ptr %168, align 8, !tbaa !238
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %33, !prof !743, !llvm.loop !744

171:                                              ; preds = %167, %27
  %172 = tail call i32 @max_reg_num() #17
  %173 = icmp eq i32 %1, %172
  br i1 %173, label %175, label %174, !prof !745

174:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2760, ptr noundef nonnull @.str.1) #17
  br label %175

175:                                              ; preds = %171, %174
  br i1 %26, label %208, label %176, !prof !714

176:                                              ; preds = %175
  %177 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  br label %178

178:                                              ; preds = %176, %198
  %179 = phi ptr [ %177, %176 ], [ %199, %198 ]
  %180 = phi i64 [ 0, %176 ], [ %201, %198 ]
  %181 = phi i32 [ 0, %176 ], [ %200, %198 ]
  %182 = getelementptr inbounds ptr, ptr %179, i64 %180
  %183 = load ptr, ptr %182, align 8, !tbaa !224
  %184 = icmp eq ptr %183, null
  br i1 %184, label %198, label %185, !prof !746

185:                                              ; preds = %178
  %186 = load ptr, ptr @reg_base_value, align 8
  %187 = trunc i64 %180 to i32
  %188 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %186, i32 noundef %187) #16
  %189 = icmp eq ptr %183, %188
  br i1 %189, label %198, label %190, !prof !747

190:                                              ; preds = %185
  %191 = tail call i32 @rtx_equal_p(ptr noundef nonnull %183, ptr noundef %188) #17
  %192 = icmp eq i32 %191, 0
  %193 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  br i1 %192, label %194, label %198, !prof !748

194:                                              ; preds = %190
  %195 = load ptr, ptr @reg_base_value, align 8
  %196 = getelementptr inbounds ptr, ptr %193, i64 %180
  %197 = load ptr, ptr %196, align 8, !tbaa !224
  tail call fastcc void @VEC_rtx_base_replace(ptr noundef %195, i32 noundef %187, ptr noundef %197) #16
  br label %198

198:                                              ; preds = %178, %185, %190, %194
  %199 = phi ptr [ %193, %190 ], [ %193, %194 ], [ %179, %185 ], [ %179, %178 ]
  %200 = phi i32 [ %181, %190 ], [ 1, %194 ], [ %181, %185 ], [ %181, %178 ]
  %201 = add nuw nsw i64 %180, 1
  %202 = icmp eq i64 %201, %22
  br i1 %202, label %203, label %178, !prof !749, !llvm.loop !750

203:                                              ; preds = %198
  %204 = icmp ne i32 %200, 0
  %205 = add nuw nsw i32 %28, 1
  %206 = icmp ult i32 %28, 9
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %27, label %208, !prof !751, !llvm.loop !752

208:                                              ; preds = %175, %203
  %209 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %230, !prof !753

211:                                              ; preds = %208
  %212 = zext nneg i32 %209 to i64
  %213 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  br label %214

214:                                              ; preds = %211, %226
  %215 = phi ptr [ %213, %211 ], [ %227, %226 ]
  %216 = phi i64 [ 0, %211 ], [ %228, %226 ]
  %217 = getelementptr inbounds ptr, ptr %215, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !224
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %226, !prof !754

220:                                              ; preds = %214
  %221 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !224
  %222 = getelementptr ptr, ptr %221, i64 %216
  %223 = getelementptr ptr, ptr %222, i64 53
  %224 = load ptr, ptr %223, align 8, !tbaa !224
  store ptr %224, ptr %217, align 8, !tbaa !224
  %225 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  br label %226

226:                                              ; preds = %214, %220
  %227 = phi ptr [ %215, %214 ], [ %225, %220 ]
  %228 = add nuw nsw i64 %216, 1
  %229 = icmp eq i64 %228, %212
  br i1 %229, label %230, label %214, !prof !755, !llvm.loop !756

230:                                              ; preds = %226, %208
  %231 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  tail call void @free(ptr noundef %231) #16
  store ptr null, ptr @new_reg_base_value, align 8, !tbaa !224
  %232 = load ptr, ptr @reg_seen, align 8, !tbaa !224
  tail call void @free(ptr noundef %232) #16
  store ptr null, ptr @reg_seen, align 8, !tbaa !224
  %233 = load i8, ptr @timevar_enable, align 1, !tbaa !238
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %236, label %235, !prof !711

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
define internal fastcc void @VEC_rtx_base_truncate(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !757 !PGOFuncName !758 {
  store i32 0, ptr %0, align 8, !tbaa !389
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !710 !PGOFuncName !759 {
  %2 = load ptr, ptr @reg_base_value, align 8, !tbaa !224
  %3 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %2) #16
  tail call fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) #16
  %4 = load ptr, ptr @reg_base_value, align 8, !tbaa !224
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @prologue_epilogue_contains(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @record_set(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2) #0 !prof !760 !PGOFuncName !761 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %141, !prof !762

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %9 = load ptr, ptr @reg_base_value, align 8
  %10 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %9) #16
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %13, label %12, !prof !763

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1131, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %7, %12
  %14 = icmp ult i32 %8, 53
  br i1 %14, label %15, label %36, !prof !764

15:                                               ; preds = %13
  %16 = zext nneg i32 %8 to i64
  %17 = load i32, ptr %0, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !238
  switch i8 %22, label %23 [
    i8 1, label %36
    i8 0, label %141
  ], !prof !765

23:                                               ; preds = %15
  %24 = load ptr, ptr @reg_seen, align 8, !tbaa !224
  %25 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %26 = zext i8 %22 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %26, %23 ], [ %29, %27 ]
  %29 = add nsw i64 %28, -1
  %30 = trunc i64 %29 to i32
  %31 = add i32 %8, %30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %24, i64 %32
  store i8 1, ptr %33, align 1, !tbaa !238
  %34 = getelementptr inbounds ptr, ptr %25, i64 %32
  store ptr null, ptr %34, align 8, !tbaa !224
  %35 = icmp ugt i64 %28, 1
  br i1 %35, label %27, label %141, !prof !766, !llvm.loop !767

36:                                               ; preds = %15, %13
  %37 = icmp eq ptr %1, null
  br i1 %37, label %54, label %38, !prof !768

38:                                               ; preds = %36
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 25
  br i1 %41, label %42, label %46, !prof !769

42:                                               ; preds = %38
  %43 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %44 = zext i32 %8 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  store ptr null, ptr %45, align 8, !tbaa !224
  br label %141

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !238
  %49 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %50 = zext i32 %8 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !224
  %53 = icmp eq ptr %52, null
  br i1 %53, label %120, label %71, !prof !770

54:                                               ; preds = %36
  %55 = load ptr, ptr @reg_seen, align 8, !tbaa !224
  %56 = zext i32 %8 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !238
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !771

60:                                               ; preds = %54
  %61 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %62 = getelementptr inbounds ptr, ptr %61, i64 %56
  store ptr null, ptr %62, align 8, !tbaa !224
  br label %141

63:                                               ; preds = %54
  store i8 1, ptr %57, align 1, !tbaa !238
  %64 = load i32, ptr @unique_id, align 4, !tbaa !247
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr @unique_id, align 4, !tbaa !247
  %66 = sext i32 %64 to i64
  %67 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %66) #17
  %68 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %67) #17
  %69 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %70 = getelementptr inbounds ptr, ptr %69, i64 %56
  store ptr %68, ptr %70, align 8, !tbaa !224
  br label %141

71:                                               ; preds = %46
  %72 = tail call fastcc ptr @find_base_value(ptr noundef %48) #16
  %73 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %74 = getelementptr inbounds ptr, ptr %73, i64 %50
  %75 = load ptr, ptr %74, align 8, !tbaa !224
  %76 = icmp eq ptr %72, %75
  br i1 %76, label %120, label %77, !prof !772

77:                                               ; preds = %71
  %78 = load i32, ptr %48, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %119 [
    i16 122, label %80
    i16 50, label %80
    i16 49, label %89
    i16 61, label %108
  ], !prof !773

80:                                               ; preds = %77, %77
  %81 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !238
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %138, label %84, !prof !774

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !238
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %138, label %88, !prof !775

88:                                               ; preds = %84
  store ptr null, ptr %74, align 8, !tbaa !224
  br label %138

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !238
  %92 = icmp eq ptr %91, %0
  %93 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !238
  br i1 %92, label %97, label %95, !prof !776

95:                                               ; preds = %89
  %96 = icmp eq ptr %94, %0
  br i1 %96, label %97, label %105, !prof !777

97:                                               ; preds = %89, %95
  %98 = phi ptr [ %91, %95 ], [ %94, %89 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100, !prof !778

100:                                              ; preds = %97
  %101 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %98) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %138, label %103, !prof !779

103:                                              ; preds = %100
  %104 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  br label %105

105:                                              ; preds = %103, %95, %97
  %106 = phi ptr [ %104, %103 ], [ %73, %95 ], [ %73, %97 ]
  %107 = getelementptr inbounds ptr, ptr %106, i64 %50
  store ptr null, ptr %107, align 8, !tbaa !224
  br label %138

108:                                              ; preds = %77
  %109 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !238
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %112, label %118, !prof !780

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !238
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 30
  br i1 %117, label %138, label %118, !prof !781

118:                                              ; preds = %112, %108
  store ptr null, ptr %74, align 8, !tbaa !224
  br label %138

119:                                              ; preds = %77
  store ptr null, ptr %74, align 8, !tbaa !224
  br label %138

120:                                              ; preds = %71, %46
  %121 = phi ptr [ %72, %71 ], [ null, %46 ]
  %122 = icmp ugt i32 %8, 52
  br i1 %122, label %127, label %123, !prof !782

123:                                              ; preds = %120
  %124 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %50
  %125 = load i8, ptr %124, align 1, !tbaa !238
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %138, !prof !783

127:                                              ; preds = %123, %120
  %128 = load ptr, ptr @reg_seen, align 8, !tbaa !224
  %129 = getelementptr inbounds i8, ptr %128, i64 %50
  %130 = load i8, ptr %129, align 1, !tbaa !238
  %131 = icmp eq i8 %130, 0
  %132 = icmp eq ptr %121, null
  %133 = and i1 %131, %132
  br i1 %133, label %134, label %138, !prof !784

134:                                              ; preds = %127
  %135 = tail call fastcc ptr @find_base_value(ptr noundef %48) #16
  %136 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %137 = getelementptr inbounds ptr, ptr %136, i64 %50
  store ptr %135, ptr %137, align 8, !tbaa !224
  br label %138

138:                                              ; preds = %100, %105, %123, %127, %134, %119, %88, %84, %80, %118, %112
  %139 = load ptr, ptr @reg_seen, align 8, !tbaa !224
  %140 = getelementptr inbounds i8, ptr %139, i64 %50
  store i8 1, ptr %140, align 1, !tbaa !238
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
define internal fastcc void @set_reg_known_value(i32 noundef %0, ptr noundef %1) unnamed_addr #12 !prof !785 !PGOFuncName !786 {
  %3 = icmp ugt i32 %0, 52
  br i1 %3, label %4, label %12, !prof !787

4:                                                ; preds = %2
  %5 = add i32 %0, -53
  %6 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %12, !prof !787

8:                                                ; preds = %4
  %9 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  store ptr %1, ptr %11, align 8, !tbaa !224
  br label %12

12:                                               ; preds = %4, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @set_reg_known_equiv_p(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !785 !PGOFuncName !788 {
  %3 = icmp ugt i32 %0, 52
  br i1 %3, label %4, label %12, !prof !787

4:                                                ; preds = %2
  %5 = add i32 %0, -53
  %6 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %12, !prof !787

8:                                                ; preds = %4
  %9 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !224
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  store i8 %1, ptr %11, align 1, !tbaa !238
  br label %12

12:                                               ; preds = %4, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !789 !PGOFuncName !790 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !710 !PGOFuncName !791 {
  %2 = load ptr, ptr @reg_base_value, align 8, !tbaa !224
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !712

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !389
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %8) #16
  %9 = load ptr, ptr @reg_base_value, align 8, !tbaa !224, !nonnull !640, !noundef !640
  store i32 %0, ptr %9, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_rtx_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !710 !PGOFuncName !792 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !793
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !710 !PGOFuncName !794 {
  %2 = load ptr, ptr @reg_base_value, align 8, !tbaa !224
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2, i32 noundef %0) #16, !range !226
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !795

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @reg_base_value, align 8, !tbaa !224
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !710 !PGOFuncName !796 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !712

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !797
  %7 = load i32, ptr %0, align 8, !tbaa !389
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
define internal fastcc ptr @find_base_value(ptr noundef %0) unnamed_addr #0 !prof !798 !PGOFuncName !799 {
  br label %2

2:                                                ; preds = %124, %1
  %3 = phi ptr [ %0, %1 ], [ %125, %124 ]
  %4 = tail call ptr @ix86_find_base_term(ptr noundef %3) #17
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %178 [
    i16 45, label %177
    i16 44, label %177
    i16 37, label %7
    i16 43, label %47
    i16 35, label %64
    i16 49, label %71
    i16 50, label %71
    i16 122, label %133
    i16 61, label %135
    i16 100, label %146
    i16 121, label %158
    i16 75, label %158
    i16 74, label %158
    i16 77, label %158
    i16 76, label %158
    i16 78, label %158
    i16 79, label %158
    i16 99, label %160
    i16 98, label %160
  ], !prof !800

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #16
  %9 = icmp ult i32 %8, 53
  %10 = load i1, ptr @copying_arguments, align 1
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %17, !prof !801

12:                                               ; preds = %7
  %13 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !224
  br label %178

17:                                               ; preds = %7
  %18 = icmp ugt i32 %8, 52
  br i1 %18, label %24, label %19, !prof !802

19:                                               ; preds = %17
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !238
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %178, label %24, !prof !803

24:                                               ; preds = %19, %17
  %25 = load ptr, ptr @reg_base_value, align 8
  %26 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %25) #16
  %27 = icmp ult i32 %8, %26
  br i1 %27, label %28, label %178, !prof !804

28:                                               ; preds = %24
  %29 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !224
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31, !prof !805

31:                                               ; preds = %28
  %32 = zext i32 %8 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !224
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36, !prof !806

36:                                               ; preds = %31
  %37 = load ptr, ptr @df, align 8, !tbaa !224
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !727
  %40 = getelementptr inbounds ptr, ptr %39, i64 %32
  %41 = load ptr, ptr %40, align 8, !tbaa !224
  %42 = getelementptr inbounds %struct.df_reg_info, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !730
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %178, label %45, !prof !807

45:                                               ; preds = %36, %31, %28
  %46 = tail call fastcc ptr @VEC_rtx_base_index(ptr noundef %25, i32 noundef %8) #16
  br label %178

47:                                               ; preds = %2
  %48 = load i1, ptr @copying_arguments, align 1
  br i1 %48, label %49, label %178, !prof !808

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !238
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !224
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %62, label %54, !prof !809

54:                                               ; preds = %49
  %55 = load i32, ptr %51, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 49
  br i1 %57, label %58, label %178, !prof !810

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !238
  %61 = icmp eq ptr %60, %52
  br i1 %61, label %62, label %178, !prof !811

62:                                               ; preds = %58, %49
  %63 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 0, ptr noundef nonnull %4) #17
  br label %178

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !238
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -49
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %178, !prof !812

71:                                               ; preds = %64, %2, %2
  %72 = phi ptr [ %4, %2 ], [ %4, %2 ], [ %66, %64 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !238
  %75 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !238
  %77 = load i32, ptr %74, align 8
  %78 = and i32 %77, 65535
  %79 = and i32 %77, 1073807359
  %80 = icmp eq i32 %79, 1073741861
  br i1 %80, label %124, label %81, !prof !813

81:                                               ; preds = %71
  %82 = load i32, ptr %76, align 8
  %83 = and i32 %82, 1073807359
  %84 = icmp eq i32 %83, 1073741861
  br i1 %84, label %124, label %85, !prof !814

85:                                               ; preds = %81
  %86 = icmp eq i32 %78, 37
  br i1 %86, label %87, label %92, !prof !815

87:                                               ; preds = %85
  %88 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %74) #16
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr %74, ptr %88, !prof !816
  %91 = load i32, ptr %76, align 8
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i32 [ %82, %85 ], [ %91, %87 ]
  %94 = phi ptr [ %74, %85 ], [ %90, %87 ]
  %95 = and i32 %93, 65535
  %96 = icmp eq i32 %95, 37
  br i1 %96, label %97, label %101, !prof !817

97:                                               ; preds = %92
  %98 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %76) #16
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, ptr %76, ptr %98, !prof !818
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi ptr [ %76, %92 ], [ %100, %97 ]
  %103 = load i32, ptr %94, align 8
  %104 = and i32 %103, 65535
  %105 = trunc i32 %103 to i16
  switch i16 %105, label %109 [
    i16 45, label %178
    i16 44, label %178
    i16 6, label %106
  ], !prof !819

106:                                              ; preds = %101
  %107 = and i32 %103, 16711680
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %178, !prof !820

109:                                              ; preds = %106, %101
  %110 = load i32, ptr %102, align 8
  %111 = and i32 %110, 65535
  %112 = trunc i32 %110 to i16
  switch i16 %112, label %116 [
    i16 45, label %178
    i16 44, label %178
    i16 6, label %113
    i16 30, label %124
  ], !prof !821

113:                                              ; preds = %109
  %114 = and i32 %110, 16711680
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %178, !prof !822

116:                                              ; preds = %109, %113
  %117 = zext nneg i32 %104 to i64
  %118 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !247
  %120 = icmp eq i32 %119, 9
  br i1 %120, label %124, label %126, !prof !823

121:                                              ; preds = %141, %158, %133
  %122 = phi ptr [ %134, %133 ], [ %159, %158 ], [ %142, %141 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !238
  br label %124

124:                                              ; preds = %121, %126, %128, %116, %109, %71, %81
  %125 = phi ptr [ %74, %71 ], [ %76, %81 ], [ %94, %109 ], [ %94, %116 ], [ %102, %128 ], [ %102, %126 ], [ %123, %121 ]
  br label %2

126:                                              ; preds = %116
  %127 = icmp eq i32 %104, 30
  br i1 %127, label %124, label %128, !prof !823

128:                                              ; preds = %126
  %129 = zext nneg i32 %111 to i64
  %130 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !247
  %132 = icmp eq i32 %131, 9
  br i1 %132, label %124, label %178, !prof !824

133:                                              ; preds = %2
  %134 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %121

135:                                              ; preds = %2
  %136 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !238
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %178, !prof !825

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %143 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !238
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %178, label %121, !prof !826

146:                                              ; preds = %2
  %147 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %178, label %149, !prof !827

149:                                              ; preds = %146
  %150 = load i32, ptr %4, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !238
  %156 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !238
  %157 = icmp ult i8 %155, %156
  br i1 %157, label %178, label %158, !prof !827

158:                                              ; preds = %149, %2, %2, %2, %2, %2, %2, %2
  %159 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %121

160:                                              ; preds = %2, %2
  %161 = tail call zeroext i8 @target_default_pointer_address_modes_p() #17
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %178, label %163, !prof !828

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !238
  %166 = tail call fastcc ptr @find_base_value(ptr noundef %165) #16
  %167 = icmp eq ptr %166, null
  br i1 %167, label %178, label %168, !prof !829

168:                                              ; preds = %163
  %169 = load i32, ptr %166, align 8
  %170 = and i32 %169, 65535
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !247
  %174 = icmp eq i32 %173, 9
  br i1 %174, label %175, label %178, !prof !830

175:                                              ; preds = %168
  %176 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %166, i8 noundef zeroext 0) #17
  br label %178

177:                                              ; preds = %2, %2
  br label %178

178:                                              ; preds = %109, %109, %135, %141, %101, %101, %106, %113, %128, %146, %149, %64, %2, %177, %160, %45, %163, %168, %175, %47, %54, %58, %19, %24, %36, %62, %12
  %179 = phi ptr [ %63, %62 ], [ %16, %12 ], [ %34, %36 ], [ null, %24 ], [ null, %19 ], [ null, %58 ], [ null, %54 ], [ null, %47 ], [ %176, %175 ], [ %166, %168 ], [ null, %163 ], [ %46, %45 ], [ null, %160 ], [ null, %2 ], [ null, %64 ], [ null, %149 ], [ null, %146 ], [ null, %135 ], [ null, %141 ], [ null, %128 ], [ %102, %113 ], [ %102, %109 ], [ %102, %109 ], [ %94, %106 ], [ %94, %101 ], [ %94, %101 ], [ %4, %177 ]
  ret ptr %179
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_alias_analysis() local_unnamed_addr #0 !prof !710 {
  %1 = load ptr, ptr @reg_base_value, align 8, !tbaa !224
  store ptr %1, ptr @old_reg_base_value, align 8, !tbaa !224
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  tail call void @ggc_free(ptr noundef %2) #17
  store ptr null, ptr @reg_known_value, align 8, !tbaa !224
  store i32 0, ptr @reg_known_value_size, align 4, !tbaa !247
  %3 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !224
  tail call void @free(ptr noundef %3) #16
  store ptr null, ptr @reg_known_equiv_p, align 8, !tbaa !224
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_alias_set_entry_gc(ptr noundef %0) #0 !prof !235 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !831
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_alias_set_entry_d(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !833

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_alias_set_entry_d(ptr noundef %0) local_unnamed_addr #0 !prof !235 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.alias_set_entry_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  tail call void @gt_ggc_m_II12splay_tree_s(ptr noundef %8) #17
  br label %9

9:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_m_II12splay_tree_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_alias_set_entry_gc(ptr noundef %0) #0 !prof !235 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_alias_set_entry_gc, i32 noundef 93) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !831
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_alias_set_entry_d(ptr noundef nonnull %11) #16
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !834

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_22VEC_alias_set_entry_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !235 {
  %5 = load i32, ptr %1, align 8, !tbaa !831
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
  br i1 %16, label %17, label %10, !llvm.loop !835

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_alias_set_entry_d(ptr noundef %0) local_unnamed_addr #0 !prof !235 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17alias_set_entry_d, i32 noundef 94) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.alias_set_entry_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  tail call void @gt_pch_n_II12splay_tree_s(ptr noundef %6) #17
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_17alias_set_entry_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !235 {
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
define internal void @gt_ggc_ma_reg_known_value(ptr nocapture readnone %0) #0 !prof !235 !PGOFuncName !836 {
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !224
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12) #17
  %15 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %16 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = zext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !837

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
define internal void @gt_pch_na_reg_known_value(ptr nocapture readnone %0) #0 !prof !235 !PGOFuncName !838 {
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %17
  %8 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %9 = phi ptr [ %19, %17 ], [ %2, %4 ]
  %10 = phi i64 [ %20, %17 ], [ 0, %4 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !224
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12) #17
  %15 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %16 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = phi ptr [ %9, %7 ], [ %15, %14 ]
  %20 = add i64 %10, 1
  %21 = zext i32 %18 to i64
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %7, !llvm.loop !839

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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_reg_known_value(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !235 !PGOFuncName !840 {
  %5 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
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
  %17 = load ptr, ptr @reg_known_value, align 8, !tbaa !224
  %18 = load i32, ptr @reg_known_value_size, align 4, !tbaa !247
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %11, %10 ], [ %18, %15 ]
  %21 = phi ptr [ %12, %10 ], [ %17, %15 ]
  %22 = add i64 %13, 1
  %23 = zext i32 %20 to i64
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %10, !llvm.loop !841

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
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!208}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!36 = !{ptr @alias_set_subset_of, ptr @get_alias_set_entry, i64 12087006}
!37 = !{ptr @alias_set_subset_of, ptr @splay_tree_lookup, i64 11923426}
!38 = !{ptr @get_alias_set_entry, ptr @VEC_alias_set_entry_base_index, i64 26559144}
!39 = !{ptr @alias_sets_conflict_p, ptr @alias_sets_must_conflict_p, i64 41623380}
!40 = !{ptr @alias_sets_conflict_p, ptr @get_alias_set_entry, i64 14465044}
!41 = !{ptr @alias_sets_conflict_p, ptr @splay_tree_lookup, i64 3456552}
!42 = !{ptr @objects_must_conflict_p, ptr @get_alias_set, i64 3880}
!43 = !{ptr @objects_must_conflict_p, ptr @alias_sets_must_conflict_p, i64 2587}
!44 = !{ptr @get_alias_set, ptr @tree_strip_nop_conversions, i64 23439911}
!45 = !{ptr @get_alias_set, ptr @handled_component_p, i64 21534672}
!46 = !{ptr @get_alias_set, ptr @get_deref_alias_set_1, i64 3821568}
!47 = !{ptr @get_alias_set, ptr @component_uses_parent_alias_set, i64 17303665}
!48 = !{ptr @get_alias_set, ptr @fancy_abort, i64 2}
!49 = !{ptr @get_alias_set, ptr @get_alias_set, i64 498}
!50 = !{ptr @get_alias_set, ptr @new_alias_set, i64 1596}
!51 = !{ptr @get_alias_set, ptr @record_component_aliases, i64 1132}
!52 = !{ptr @component_uses_parent_alias_set, ptr @handled_component_p, i64 23116327}
!53 = !{ptr @component_uses_parent_alias_set, ptr @get_alias_set, i64 4856097}
!54 = !{ptr @get_deref_alias_set, ptr @get_deref_alias_set_1, i64 15661309}
!55 = !{ptr @get_deref_alias_set, ptr @get_alias_set, i64 15605927}
!56 = !{ptr @new_alias_set, ptr @VEC_alias_set_entry_gc_safe_push, i64 1653}
!57 = !{ptr @new_alias_set, ptr @VEC_alias_set_entry_base_length, i64 1651}
!58 = !{ptr @record_component_aliases, ptr @get_alias_set, i64 4861}
!59 = !{ptr @record_component_aliases, ptr @VEC_tree_base_iterate, i64 21}
!60 = !{ptr @record_component_aliases, ptr @record_alias_subset, i64 3696}
!61 = !{ptr @VEC_alias_set_entry_gc_safe_push, ptr @VEC_alias_set_entry_gc_reserve, i64 1653}
!62 = !{ptr @VEC_alias_set_entry_gc_safe_push, ptr @VEC_alias_set_entry_base_quick_push, i64 1653}
!63 = !{ptr @VEC_alias_set_entry_gc_reserve, ptr @VEC_alias_set_entry_base_space, i64 1653}
!64 = !{ptr @VEC_alias_set_entry_gc_reserve, ptr @vec_gc_p_reserve, i64 16}
!65 = !{ptr @record_alias_subset, ptr @fancy_abort, i64 1}
!66 = !{ptr @record_alias_subset, ptr @get_alias_set_entry, i64 7091}
!67 = !{ptr @record_alias_subset, ptr @ggc_alloc_stat, i64 650}
!68 = !{ptr @record_alias_subset, ptr @splay_tree_new_with_allocator, i64 650}
!69 = !{ptr @record_alias_subset, ptr @VEC_alias_set_entry_base_replace, i64 650}
!70 = !{ptr @record_alias_subset, ptr @splay_tree_foreach, i64 236}
!71 = !{ptr @record_alias_subset, ptr @splay_tree_insert, i64 3406}
!72 = !{ptr @insert_subset_children, ptr @splay_tree_insert, i64 841}
!73 = !{ptr @get_frame_alias_set, ptr @new_alias_set, i64 2}
!74 = !{ptr @canon_rtx, ptr @rhs_regno, i64 65391346}
!75 = !{ptr @canon_rtx, ptr @get_reg_known_value, i64 51464497}
!76 = !{ptr @canon_rtx, ptr @canon_rtx, i64 139876495}
!77 = !{ptr @canon_rtx, ptr @plus_constant, i64 6440}
!78 = !{ptr @canon_rtx, ptr @gen_rtx_fmt_ee_stat, i64 74142}
!79 = !{ptr @canon_rtx, ptr @replace_equiv_address_nv, i64 6027867}
!80 = !{ptr @find_base_term, ptr @ix86_find_base_term, i64 188505826}
!81 = !{ptr @find_base_term, ptr @rhs_regno, i64 72858492}
!82 = !{ptr @find_base_term, ptr @VEC_rtx_base_length, i64 72858492}
!83 = !{ptr @find_base_term, ptr @VEC_rtx_base_index, i64 72858469}
!84 = !{ptr @find_base_term, ptr @target_default_pointer_address_modes_p, i64 2189}
!85 = !{ptr @find_base_term, ptr @find_base_term, i64 94709133}
!86 = !{ptr @find_base_term, ptr @convert_memory_address_addr_space, i64 1}
!87 = !{ptr @nonoverlapping_memrefs_p, ptr @get_spill_slot_decl, i64 30371244}
!88 = !{ptr @nonoverlapping_memrefs_p, ptr @nonoverlapping_component_refs_p, i64 14186985}
!89 = !{ptr @nonoverlapping_memrefs_p, ptr @ipa_type_escape_field_does_not_clobber_p, i64 301971}
!90 = !{ptr @nonoverlapping_memrefs_p, ptr @decl_for_component_ref, i64 14938517}
!91 = !{ptr @nonoverlapping_memrefs_p, ptr @adjust_offset_for_component_ref, i64 270874}
!92 = !{ptr @nonoverlapping_memrefs_p, ptr @make_decl_rtl, i64 2}
!93 = !{ptr @nonoverlapping_memrefs_p, ptr @rtx_equal_p, i64 43741}
!94 = !{ptr @nonoverlapping_memrefs_p, ptr @rhs_regno, i64 427}
!95 = !{ptr @nonoverlapping_memrefs_p, ptr @gen_rtx_CONST_INT, i64 4}
!96 = !{ptr @adjust_offset_for_component_ref, ptr @component_ref_field_offset, i64 270259}
!97 = !{ptr @adjust_offset_for_component_ref, ptr @host_integerp, i64 270259}
!98 = !{ptr @adjust_offset_for_component_ref, ptr @tree_low_cst, i64 540516}
!99 = !{ptr @adjust_offset_for_component_ref, ptr @gen_rtx_CONST_INT, i64 266026}
!100 = !{ptr @true_dependence, ptr @get_addr, i64 9294082}
!101 = !{ptr @true_dependence, ptr @find_base_term, i64 4647041}
!102 = !{ptr @true_dependence, ptr @base_alias_check, i64 4647039}
!103 = !{ptr @true_dependence, ptr @canon_rtx, i64 7168342}
!104 = !{ptr @true_dependence, ptr @memrefs_conflict_p, i64 3584171}
!105 = !{ptr @true_dependence, ptr @mems_in_disjoint_alias_sets_p, i64 3278942}
!106 = !{ptr @true_dependence, ptr @nonoverlapping_memrefs_p, i64 1952108}
!107 = !{ptr @true_dependence, ptr @aliases_everything_p, i64 1845064}
!108 = !{ptr @true_dependence, ptr @fixed_scalar_and_varying_struct_p, i64 1612768}
!109 = !{ptr @true_dependence, ptr @rtx_refs_may_alias_p, i64 1611768}
!110 = !{ptr @base_alias_check, ptr @find_base_term, i64 61977140}
!111 = !{ptr @base_alias_check, ptr @canon_rtx, i64 24937342}
!112 = !{ptr @base_alias_check, ptr @rtx_equal_p, i64 6052027}
!113 = !{ptr @memrefs_conflict_p, ptr @get_addr, i64 2994850}
!114 = !{ptr @memrefs_conflict_p, ptr @addr_side_effect_eval, i64 401988256}
!115 = !{ptr @memrefs_conflict_p, ptr @rtx_equal_for_memref_p, i64 233910503}
!116 = !{ptr @memrefs_conflict_p, ptr @canon_rtx, i64 32106756}
!117 = !{ptr @mems_in_disjoint_alias_sets_p, ptr @fancy_abort, i64 1}
!118 = !{ptr @mems_in_disjoint_alias_sets_p, ptr @alias_sets_conflict_p, i64 23870889}
!119 = !{ptr @rtx_refs_may_alias_p, ptr @ao_ref_from_mem, i64 35822671}
!120 = !{ptr @rtx_refs_may_alias_p, ptr @refs_may_alias_p_1, i64 14335267}
!121 = !{ptr @addr_side_effect_eval, ptr @gen_rtx_CONST_INT, i64 55502}
!122 = !{ptr @addr_side_effect_eval, ptr @gen_rtx_fmt_ee_stat, i64 55502}
!123 = !{ptr @addr_side_effect_eval, ptr @canon_rtx, i64 55504}
!124 = !{ptr @rtx_equal_for_memref_p, ptr @rhs_regno, i64 30022146}
!125 = !{ptr @rtx_equal_for_memref_p, ptr @rtx_equal_for_memref_p, i64 15100303}
!126 = !{ptr @rtx_equal_for_memref_p, ptr @canon_rtx, i64 1055664}
!127 = !{ptr @rtx_equal_for_memref_p, ptr @strcmp, i64 1}
!128 = !{ptr @rtx_equal_for_memref_p, ptr @fancy_abort, i64 1}
!129 = !{ptr @ao_ref_from_mem, ptr @ao_ref_init, i64 1}
!130 = !{ptr @ao_ref_from_mem, ptr @ao_ref_base, i64 1}
!131 = !{ptr @ao_ref_from_mem, ptr @get_spill_slot_decl, i64 1}
!132 = !{ptr @canon_true_dependence, ptr @get_addr, i64 23551302}
!133 = !{ptr @canon_true_dependence, ptr @base_alias_check, i64 24095568}
!134 = !{ptr @canon_true_dependence, ptr @canon_rtx, i64 22168779}
!135 = !{ptr @canon_true_dependence, ptr @memrefs_conflict_p, i64 22168779}
!136 = !{ptr @canon_true_dependence, ptr @mems_in_disjoint_alias_sets_p, i64 20591935}
!137 = !{ptr @canon_true_dependence, ptr @nonoverlapping_memrefs_p, i64 18372652}
!138 = !{ptr @canon_true_dependence, ptr @aliases_everything_p, i64 18251698}
!139 = !{ptr @canon_true_dependence, ptr @fixed_scalar_and_varying_struct_p, i64 16690689}
!140 = !{ptr @canon_true_dependence, ptr @rtx_refs_may_alias_p, i64 16686341}
!141 = !{ptr @anti_dependence, ptr @write_dependence_p, i64 388233}
!142 = !{ptr @write_dependence_p, ptr @get_addr, i64 4485482}
!143 = !{ptr @write_dependence_p, ptr @find_base_term, i64 374060}
!144 = !{ptr @write_dependence_p, ptr @base_alias_check, i64 2242739}
!145 = !{ptr @write_dependence_p, ptr @canon_rtx, i64 3329010}
!146 = !{ptr @write_dependence_p, ptr @memrefs_conflict_p, i64 1664505}
!147 = !{ptr @write_dependence_p, ptr @nonoverlapping_memrefs_p, i64 1001345}
!148 = !{ptr @write_dependence_p, ptr @fixed_scalar_and_varying_struct_p, i64 907665}
!149 = !{ptr @write_dependence_p, ptr @aliases_everything_p, i64 2}
!150 = !{ptr @write_dependence_p, ptr @rtx_refs_may_alias_p, i64 907665}
!151 = !{ptr @output_dependence, ptr @write_dependence_p, i64 1899123}
!152 = !{ptr @init_alias_target, ptr @ix86_function_arg_regno_p, i64 27}
!153 = !{ptr @init_alias_target, ptr @ix86_hard_regno_mode_ok, i64 2}
!154 = !{ptr @init_alias_target, ptr @gen_rtx_REG, i64 2}
!155 = !{ptr @init_alias_target, ptr @gen_rtx_fmt_e_stat, i64 6}
!156 = !{ptr @memory_modified_in_insn_p, ptr @note_stores, i64 328052}
!157 = !{ptr @memory_modified_1, ptr @anti_dependence, i64 23062}
!158 = !{ptr @memory_modified_1, ptr @output_dependence, i64 16473}
!159 = !{ptr @init_alias_analysis, ptr @max_reg_num, i64 170774}
!160 = !{ptr @init_alias_analysis, ptr @timevar_push_1, i64 1}
!161 = !{ptr @init_alias_analysis, ptr @ggc_alloc_cleared_stat, i64 73050}
!162 = !{ptr @init_alias_analysis, ptr @xcalloc, i64 73050}
!163 = !{ptr @init_alias_analysis, ptr @VEC_rtx_base_truncate, i64 73048}
!164 = !{ptr @init_alias_analysis, ptr @VEC_rtx_gc_safe_grow_cleared, i64 73050}
!165 = !{ptr @init_alias_analysis, ptr @xmalloc, i64 146100}
!166 = !{ptr @init_alias_analysis, ptr @get_insns, i64 97724}
!167 = !{ptr @init_alias_analysis, ptr @prologue_epilogue_contains, i64 7780060}
!168 = !{ptr @init_alias_analysis, ptr @find_reg_note, i64 7186866}
!169 = !{ptr @init_alias_analysis, ptr @record_set, i64 22804}
!170 = !{ptr @init_alias_analysis, ptr @note_stores, i64 17714361}
!171 = !{ptr @init_alias_analysis, ptr @single_set_2, i64 1}
!172 = !{ptr @init_alias_analysis, ptr @rhs_regno, i64 10873756}
!173 = !{ptr @init_alias_analysis, ptr @find_reg_equal_equiv_note, i64 3988381}
!174 = !{ptr @init_alias_analysis, ptr @rtx_varies_p, i64 2855315}
!175 = !{ptr @init_alias_analysis, ptr @reg_overlap_mentioned_p, i64 1910}
!176 = !{ptr @init_alias_analysis, ptr @set_reg_known_value, i64 115566}
!177 = !{ptr @init_alias_analysis, ptr @set_reg_known_equiv_p, i64 115566}
!178 = !{ptr @init_alias_analysis, ptr @get_reg_known_value, i64 244951}
!179 = !{ptr @init_alias_analysis, ptr @plus_constant, i64 479}
!180 = !{ptr @init_alias_analysis, ptr @fancy_abort, i64 1}
!181 = !{ptr @init_alias_analysis, ptr @VEC_rtx_base_index, i64 760132}
!182 = !{ptr @init_alias_analysis, ptr @rtx_equal_p, i64 431934}
!183 = !{ptr @init_alias_analysis, ptr @VEC_rtx_base_replace, i64 372935}
!184 = !{ptr @init_alias_analysis, ptr @free, i64 146100}
!185 = !{ptr @init_alias_analysis, ptr @timevar_pop_1, i64 1}
!186 = !{ptr @VEC_rtx_gc_safe_grow_cleared, ptr @VEC_rtx_base_length, i64 73050}
!187 = !{ptr @VEC_rtx_gc_safe_grow_cleared, ptr @VEC_rtx_gc_safe_grow, i64 73050}
!188 = !{ptr @VEC_rtx_gc_safe_grow_cleared, ptr @VEC_rtx_base_address, i64 73050}
!189 = !{ptr @record_set, ptr @rhs_regno, i64 17666911}
!190 = !{ptr @record_set, ptr @VEC_rtx_base_length, i64 17666911}
!191 = !{ptr @record_set, ptr @fancy_abort, i64 1}
!192 = !{ptr @record_set, ptr @gen_rtx_CONST_INT, i64 24482}
!193 = !{ptr @record_set, ptr @gen_rtx_fmt_e_stat, i64 24482}
!194 = !{ptr @record_set, ptr @find_base_value, i64 4869577}
!195 = !{ptr @VEC_rtx_gc_safe_grow, ptr @VEC_rtx_gc_reserve_exact, i64 73050}
!196 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @VEC_rtx_base_space, i64 73050}
!197 = !{ptr @VEC_rtx_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 26}
!198 = !{ptr @find_base_value, ptr @ix86_find_base_term, i64 6677992}
!199 = !{ptr @find_base_value, ptr @rhs_regno, i64 2080238}
!200 = !{ptr @find_base_value, ptr @VEC_rtx_base_length, i64 1320047}
!201 = !{ptr @find_base_value, ptr @VEC_rtx_base_index, i64 1155766}
!202 = !{ptr @find_base_value, ptr @gen_rtx_fmt_e_stat, i64 137242}
!203 = !{ptr @find_base_value, ptr @find_base_value, i64 627874}
!204 = !{ptr @find_base_value, ptr @target_default_pointer_address_modes_p, i64 221325}
!205 = !{ptr @find_base_value, ptr @convert_memory_address_addr_space, i64 1}
!206 = !{ptr @end_alias_analysis, ptr @ggc_free, i64 73050}
!207 = !{ptr @end_alias_analysis, ptr @free, i64 73050}
!208 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!209 = !{!"function_entry_count", i64 12091699}
!210 = !{!"branch_weights", i32 4693, i32 12087008}
!211 = !{!"branch_weights", i32 163579, i32 11923430}
!212 = !{!213, !214, i64 4}
!213 = !{!"alias_set_entry_d", !214, i64 0, !214, i64 4, !217, i64 8}
!214 = !{!"int", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C/C++ TBAA"}
!217 = !{!"any pointer", !215, i64 0}
!218 = !{!"branch_weights", i32 180, i32 -2145913133}
!219 = !{!213, !217, i64 8}
!220 = !{!"branch_weights", i32 11920927, i32 2504}
!221 = !{!"function_entry_count", i64 26559144}
!222 = !{!"alias.c:get_alias_set_entry"}
!223 = !{!"alias.c:VEC_alias_set_entry_base_index"}
!224 = !{!217, !217, i64 0}
!225 = !{!"function_entry_count", i64 41623380}
!226 = !{i32 0, i32 2}
!227 = !{!"branch_weights", i32 7982947, i32 33640435}
!228 = !{!"branch_weights", i32 5670663, i32 2312285}
!229 = !{!"branch_weights", i32 1907755, i32 404531}
!230 = !{!"branch_weights", i32 811436, i32 1096320}
!231 = !{!"branch_weights", i32 4741338, i32 1740761}
!232 = !{!"branch_weights", i32 1548799, i32 191963}
!233 = !{!"branch_weights", i32 643373, i32 905427}
!234 = !{!"function_entry_count", i64 41625967}
!235 = !{!"function_entry_count", i64 0}
!236 = !{!"alias.c:walk_mems_1"}
!237 = !{!"alias.c:walk_mems_2"}
!238 = !{!215, !215, i64 0}
!239 = !{!240, !214, i64 24}
!240 = !{!"mem_attrs", !217, i64 0, !217, i64 8, !217, i64 16, !214, i64 24, !214, i64 28, !215, i64 32}
!241 = !{!"function_entry_count", i64 7324}
!242 = !{!"branch_weights", i32 1, i32 7325}
!243 = !{!"branch_weights", i32 4738, i32 2588}
!244 = !{!"branch_weights", i32 2588, i32 1}
!245 = !{!"branch_weights", i32 1073741824, i32 1073741824}
!246 = !{!"function_entry_count", i64 72431763}
!247 = !{!214, !214, i64 0}
!248 = !{!"branch_weights", i32 1, i32 31}
!249 = !{!"branch_weights", i32 1, i32 72431764}
!250 = !{!"branch_weights", i32 53679073, i32 18752692}
!251 = !{!"branch_weights", i32 286, i32 -1611988039}
!252 = !{!253, !217, i64 104}
!253 = !{!"lang_hooks", !217, i64 0, !254, i64 8, !217, i64 16, !217, i64 24, !217, i64 32, !217, i64 40, !217, i64 48, !217, i64 56, !217, i64 64, !217, i64 72, !217, i64 80, !217, i64 88, !217, i64 96, !217, i64 104, !217, i64 112, !217, i64 120, !217, i64 128, !217, i64 136, !217, i64 144, !217, i64 152, !217, i64 160, !217, i64 168, !217, i64 176, !217, i64 184, !217, i64 192, !217, i64 200, !217, i64 208, !217, i64 216, !217, i64 224, !217, i64 232, !255, i64 240, !256, i64 248, !257, i64 256, !258, i64 272, !259, i64 432, !260, i64 560, !217, i64 584, !217, i64 592, !217, i64 600, !217, i64 608, !217, i64 616, !217, i64 624, !217, i64 632, !217, i64 640, !217, i64 648, !217, i64 656, !217, i64 664, !215, i64 672}
!254 = !{!"long", !215, i64 0}
!255 = !{!"lang_hooks_for_tree_inlining", !217, i64 0}
!256 = !{!"lang_hooks_for_callgraph", !217, i64 0}
!257 = !{!"lang_hooks_for_tree_dump", !217, i64 0, !217, i64 8}
!258 = !{!"lang_hooks_for_decls", !217, i64 0, !217, i64 8, !217, i64 16, !217, i64 24, !217, i64 32, !217, i64 40, !217, i64 48, !217, i64 56, !217, i64 64, !217, i64 72, !217, i64 80, !217, i64 88, !217, i64 96, !217, i64 104, !217, i64 112, !217, i64 120, !217, i64 128, !217, i64 136, !217, i64 144, !217, i64 152}
!259 = !{!"lang_hooks_for_types", !217, i64 0, !217, i64 8, !217, i64 16, !217, i64 24, !217, i64 32, !217, i64 40, !217, i64 48, !217, i64 56, !217, i64 64, !217, i64 72, !217, i64 80, !217, i64 88, !217, i64 96, !217, i64 104, !217, i64 112, !215, i64 120}
!260 = !{!"lang_hooks_for_lto", !217, i64 0, !217, i64 8, !217, i64 16}
!261 = !{!"branch_weights", i32 17325121, i32 1427572}
!262 = !{!"branch_weights", i32 27930, i32 17297192}
!263 = !{i8 0, i8 2}
!264 = !{!"branch_weights", i32 12420899, i32 4904222}
!265 = !{!"branch_weights", i32 4904222, i32 0}
!266 = distinct !{!266, !267}
!267 = !{!"llvm.loop.mustprogress"}
!268 = !{!"branch_weights", i32 642333420, i32 -2116276087}
!269 = !{i32 -1, i32 1}
!270 = !{!"branch_weights", i32 3942447, i32 2397}
!271 = !{!"branch_weights", i32 16783598, i32 539127}
!272 = !{!"branch_weights", i32 539127, i32 0}
!273 = distinct !{!273, !267}
!274 = !{!"branch_weights", i32 886605021, i32 -1805070740}
!275 = !{!"branch_weights", i32 151060, i32 12623050}
!276 = !{!"branch_weights", i32 12620652, i32 2399}
!277 = !{!"branch_weights", i32 1, i32 12620652}
!278 = !{!"branch_weights", i32 13, i32 58381134}
!279 = !{!"branch_weights", i32 1, i32 13}
!280 = !{!"branch_weights", i32 -1044504948, i32 111}
!281 = !{!"branch_weights", i32 1167973, i32 57213162}
!282 = !{!"branch_weights", i32 1, i32 1167973}
!283 = !{!"branch_weights", i32 31, i32 -1977150879}
!284 = !{!"branch_weights", i32 2190, i32 1165784}
!285 = !{!"branch_weights", i32 -218412579, i32 66799820, i32 2472924, i32 9887130, i32 1264967282}
!286 = !{!"branch_weights", i32 512, i32 1}
!287 = !{!"branch_weights", i32 -577294740, i32 1863483240, i32 -2105222838, i32 196240218, i32 3630536, i32 3626997}
!288 = !{!"function_entry_count", i64 18339170}
!289 = !{!"branch_weights", i32 17762018, i32 5354315}
!290 = !{!"branch_weights", i32 56391, i32 4306174, i32 991752, i32 1, i32 1, i32 1}
!291 = !{!"branch_weights", i32 3864350, i32 441825}
!292 = !{!"branch_weights", i32 991752, i32 1}
!293 = !{!"branch_weights", i32 78940, i32 4777162}
!294 = !{!"function_entry_count", i64 45345672}
!295 = !{!"alias.c:handled_component_p"}
!296 = !{!"branch_weights", i32 35087138, i32 112781, i32 8258541, i32 1887216, i32 1, i32 1, i32 1, i32 1}
!297 = !{!"function_entry_count", i64 15661309}
!298 = !{!"branch_weights", i32 15605929, i32 55382}
!299 = !{!"branch_weights", i32 193204, i32 15412726}
!300 = !{!"function_entry_count", i64 19606151}
!301 = !{!"alias.c:get_deref_alias_set_1"}
!302 = !{!"branch_weights", i32 1, i32 19606152}
!303 = !{!"branch_weights", i32 193929, i32 19412224}
!304 = !{!"branch_weights", i32 54300, i32 19551853}
!305 = !{!"function_entry_count", i64 1652}
!306 = !{!"branch_weights", i32 1, i32 1653}
!307 = !{!"branch_weights", i32 2, i32 1652}
!308 = !{!"function_entry_count", i64 1165}
!309 = !{!"branch_weights", i32 188, i32 979}
!310 = !{!"branch_weights", i32 325, i32 602, i32 54, i32 1, i32 1}
!311 = !{!"branch_weights", i32 655, i32 1}
!312 = distinct !{!312, !267}
!313 = !{!"branch_weights", i32 1, i32 654}
!314 = !{!"branch_weights", i32 3982, i32 1}
!315 = !{!"branch_weights", i32 3687, i32 296}
!316 = !{!"branch_weights", i32 654, i32 3328}
!317 = distinct !{!317, !267}
!318 = !{!"function_entry_count", i64 1653}
!319 = !{!"alias.c:VEC_alias_set_entry_gc_safe_push"}
!320 = !{!"alias.c:VEC_alias_set_entry_base_length"}
!321 = !{!322, !214, i64 0}
!322 = !{!"VEC_alias_set_entry_base", !214, i64 0, !214, i64 4, !215, i64 8}
!323 = !{!"alias.c:VEC_alias_set_entry_gc_reserve"}
!324 = !{!"branch_weights", i32 16, i32 1639}
!325 = !{!"alias.c:VEC_alias_set_entry_base_quick_push"}
!326 = !{!"alias.c:VEC_alias_set_entry_base_space"}
!327 = !{!"branch_weights", i32 2, i32 1653}
!328 = !{!322, !214, i64 4}
!329 = !{!"function_entry_count", i64 3686}
!330 = !{!"branch_weights", i32 1, i32 3687}
!331 = !{!"branch_weights", i32 651, i32 3037}
!332 = !{!213, !214, i64 0}
!333 = !{!"branch_weights", i32 279, i32 3409}
!334 = !{!"branch_weights", i32 3174, i32 236}
!335 = !{!"branch_weights", i32 203, i32 34}
!336 = !{!"function_entry_count", i64 650}
!337 = !{!"alias.c:VEC_alias_set_entry_base_replace"}
!338 = !{!"function_entry_count", i64 841}
!339 = !{!"alias.c:insert_subset_children"}
!340 = !{!341, !254, i64 0}
!341 = !{!"splay_tree_node_s", !254, i64 0, !254, i64 8, !217, i64 16, !217, i64 24}
!342 = !{!341, !254, i64 8}
!343 = !{!"alias.c:VEC_tree_base_iterate"}
!344 = !{!345, !214, i64 0}
!345 = !{!"VEC_tree_base", !214, i64 0, !214, i64 4, !215, i64 8}
!346 = !{!"function_entry_count", i64 10003}
!347 = !{!"branch_weights", i32 2, i32 10003}
!348 = !{!"function_entry_count", i64 51789527}
!349 = !{!"branch_weights", i32 51746639, i32 42890}
!350 = !{!"branch_weights", i32 51222943, i32 523697}
!351 = !{!"function_entry_count", i64 223452691}
!352 = !{!"branch_weights", i32 65350580, i32 158102113}
!353 = !{!"branch_weights", i32 51432414, i32 13918167}
!354 = !{!"branch_weights", i32 50769413, i32 663002}
!355 = !{!"branch_weights", i32 523697, i32 139306}
!356 = !{!"branch_weights", i32 -1784941204, i32 1684881997, i32 151757167}
!357 = !{!"branch_weights", i32 66858961, i32 23632}
!358 = !{!"branch_weights", i32 66802062, i32 56900}
!359 = !{!"branch_weights", i32 1707, i32 78825}
!360 = !{!"branch_weights", i32 4729, i32 74097}
!361 = !{!"function_entry_count", i64 334626507}
!362 = !{!"alias.c:rhs_regno"}
!363 = !{!"function_entry_count", i64 188409419}
!364 = !{!"branch_weights", i32 42275466, i32 72821238, i32 1, i32 1, i32 1, i32 96199, i32 1, i32 1, i32 1, i32 1, i32 2158, i32 29, i32 1779514, i32 1, i32 13302203, i32 37303129, i32 188, i32 160, i32 20829146, i32 1}
!365 = !{!"branch_weights", i32 72821216, i32 23}
!366 = !{!"branch_weights", i32 1, i32 2186}
!367 = !{!"branch_weights", i32 2186, i32 1}
!368 = !{!"branch_weights", i32 1, i32 1779514}
!369 = !{!"branch_weights", i32 487256, i32 1852719}
!370 = !{!371, !217, i64 8}
!371 = !{!"elt_loc_list", !217, i64 0, !217, i64 8, !217, i64 16}
!372 = !{!"branch_weights", i32 560461, i32 1292259}
!373 = distinct !{!373, !267}
!374 = !{!"branch_weights", i32 26604407, i32 1}
!375 = !{!"branch_weights", i32 1, i32 50605518}
!376 = !{!"branch_weights", i32 -112991173, i32 -2023680125}
!377 = !{!"branch_weights", i32 104559864, i32 -590509836}
!378 = !{!"branch_weights", i32 27774127, i32 14757068}
!379 = !{!"branch_weights", i32 218, i32 -1363582135, i32 218, i32 300366002}
!380 = !{!"branch_weights", i32 45685, i32 1325872}
!381 = !{!"branch_weights", i32 27153121, i32 666691}
!382 = !{!"branch_weights", i32 3763, i32 -1953170044, i32 3763, i32 167150269}
!383 = !{!"branch_weights", i32 1222, i32 43197}
!384 = !{!"branch_weights", i32 152, i32 9}
!385 = !{!"branch_weights", i32 1, i32 152}
!386 = !{!"function_entry_count", i64 91825243}
!387 = !{!"alias.c:VEC_rtx_base_length"}
!388 = !{!"branch_weights", i32 3, i32 91825242}
!389 = !{!390, !214, i64 0}
!390 = !{!"VEC_rtx_base", !214, i64 0, !214, i64 4, !215, i64 8}
!391 = !{!"function_entry_count", i64 75669687}
!392 = !{!"alias.c:VEC_rtx_base_index"}
!393 = !{!"function_entry_count", i64 43119880}
!394 = !{!"branch_weights", i32 2516331, i32 40603551}
!395 = !{!"branch_weights", i32 1, i32 2516331}
!396 = !{!"branch_weights", i32 2326856, i32 2598469}
!397 = !{!"branch_weights", i32 1, i32 1174645}
!398 = !{!"branch_weights", i32 189476, i32 2408994}
!399 = distinct !{!399, !267}
!400 = !{!"branch_weights", i32 -1355206699, i32 -1481790112, i32 393200069}
!401 = !{!"branch_weights", i32 1174645, i32 1234272}
!402 = distinct !{!402, !267}
!403 = !{!"branch_weights", i32 84104703, i32 2063378945}
!404 = !{!"function_entry_count", i64 401171}
!405 = !{!"branch_weights", i32 401169, i32 4}
!406 = !{!"function_entry_count", i64 21330190}
!407 = !{!"branch_weights", i32 302299, i32 21027893}
!408 = !{!240, !217, i64 0}
!409 = !{!"branch_weights", i32 1446512, i32 19883680}
!410 = !{!"branch_weights", i32 507400946, i32 1640082702}
!411 = !{!"branch_weights", i32 39712, i32 15145914}
!412 = !{!"branch_weights", i32 1, i32 39712}
!413 = !{!240, !217, i64 8}
!414 = !{!"branch_weights", i32 42642, i32 15142984}
!415 = !{!"branch_weights", i32 1, i32 42642}
!416 = !{!"branch_weights", i32 14754145, i32 431481}
!417 = !{!"branch_weights", i32 14186993, i32 567153}
!418 = !{!"branch_weights", i32 13901499, i32 285495}
!419 = !{!"branch_weights", i32 1, i32 14900131}
!420 = !{!"branch_weights", i32 123142200, i32 -165668607, i32 283, i32 284, i32 285}
!421 = !{!"branch_weights", i32 555258, i32 13913394}
!422 = !{!"branch_weights", i32 -149961571, i32 -2120460261, i32 11381}
!423 = !{!"branch_weights", i32 14197985, i32 270667}
!424 = !{!"branch_weights", i32 1, i32 702147}
!425 = !{!"branch_weights", i32 171622920, i32 -1558320010, i32 4140, i32 4141, i32 4141}
!426 = !{!"branch_weights", i32 654655, i32 6056}
!427 = !{!"branch_weights", i32 -1988123918, i32 472340989, i32 4245}
!428 = !{!"branch_weights", i32 657974, i32 2737}
!429 = !{!"branch_weights", i32 44174, i32 1}
!430 = !{!"branch_weights", i32 88349, i32 1951342276}
!431 = !{!"branch_weights", i32 1, i32 44174}
!432 = !{!"branch_weights", i32 44173, i32 2}
!433 = !{!"branch_weights", i32 44173, i32 1}
!434 = !{!"branch_weights", i32 2, i32 1}
!435 = !{!"branch_weights", i32 1, i32 44173}
!436 = !{!240, !215, i64 32}
!437 = !{!"branch_weights", i32 39284, i32 4890}
!438 = !{!"branch_weights", i32 39284, i32 1}
!439 = !{!"branch_weights", i32 39040, i32 5134}
!440 = !{!"branch_weights", i32 39040, i32 1}
!441 = !{!"branch_weights", i32 1598, i32 42576}
!442 = !{!"branch_weights", i32 620, i32 979}
!443 = !{!"branch_weights", i32 451, i32 170}
!444 = !{!"branch_weights", i32 170, i32 1}
!445 = !{!"branch_weights", i32 23, i32 649}
!446 = !{!"branch_weights", i32 58081, i32 185371}
!447 = !{!"branch_weights", i32 42576, i32 1}
!448 = !{!240, !217, i64 16}
!449 = !{!"branch_weights", i32 20175816, i32 2127307832}
!450 = !{!"branch_weights", i32 30213282, i32 2117270366}
!451 = !{!"branch_weights", i32 6917, i32 35660}
!452 = !{!"branch_weights", i32 7630, i32 34947}
!453 = !{!"branch_weights", i32 6917, i32 78237}
!454 = !{!"branch_weights", i32 310413, i32 2147173235}
!455 = !{!"branch_weights", i32 7630, i32 77524}
!456 = !{!"branch_weights", i32 281406, i32 2147202242}
!457 = !{!"branch_weights", i32 16849, i32 25728}
!458 = !{!"branch_weights", i32 649, i32 695}
!459 = !{!"function_entry_count", i64 14186992}
!460 = !{!"alias.c:nonoverlapping_component_refs_p"}
!461 = !{!"branch_weights", i32 1, i32 14186993}
!462 = !{!"branch_weights", i32 790780, i32 14613268}
!463 = !{!"branch_weights", i32 1, i32 14613268}
!464 = !{!"branch_weights", i32 618683, i32 13994586}
!465 = distinct !{!465, !267}
!466 = !{!"branch_weights", i32 1, i32 13994586}
!467 = !{!"branch_weights", i32 554277, i32 13440310}
!468 = distinct !{!468, !267}
!469 = !{!"branch_weights", i32 -2115319164, i32 1231533982}
!470 = !{!"branch_weights", i32 -305686956, i32 15790}
!471 = !{!"branch_weights", i32 45935, i32 459352}
!472 = !{!"branch_weights", i32 44097, i32 461190}
!473 = distinct !{!473, !267}
!474 = !{!"function_entry_count", i64 15129359}
!475 = !{!"alias.c:decl_for_component_ref"}
!476 = !{!"branch_weights", i32 1, i32 16020107}
!477 = !{!"branch_weights", i32 890748, i32 15129360}
!478 = distinct !{!478, !267}
!479 = !{!"branch_weights", i32 273403, i32 14855958}
!480 = !{!"function_entry_count", i64 273402}
!481 = !{!"alias.c:adjust_offset_for_component_ref"}
!482 = !{!"branch_weights", i32 7375, i32 266029}
!483 = !{!"branch_weights", i32 1, i32 270260}
!484 = !{!"branch_weights", i32 4232, i32 266029}
!485 = distinct !{!485, !267}
!486 = !{!"function_entry_count", i64 4782006}
!487 = !{!"branch_weights", i32 4781998, i32 10}
!488 = !{!"branch_weights", i32 1, i32 10}
!489 = !{!"branch_weights", i32 564, i32 4781435}
!490 = !{!"branch_weights", i32 1, i32 564}
!491 = !{!"branch_weights", i32 39866, i32 4742133}
!492 = !{!"branch_weights", i32 39211, i32 656}
!493 = !{!"branch_weights", i32 331985, i32 4410804}
!494 = !{!"branch_weights", i32 487, i32 2147483161}
!495 = !{!"branch_weights", i32 135816, i32 4606973}
!496 = !{!"branch_weights", i32 466, i32 2147483182}
!497 = !{!"branch_weights", i32 4647047, i32 95742}
!498 = !{!"branch_weights", i32 322161, i32 4324887}
!499 = !{!"branch_weights", i32 4647047, i32 1}
!500 = !{!"branch_weights", i32 479803, i32 4167245}
!501 = !{!"branch_weights", i32 2585756, i32 2061292}
!502 = !{!"branch_weights", i32 1562682776, i32 2012, i32 -1708307524}
!503 = !{!"branch_weights", i32 1284990, i32 1}
!504 = !{!"branch_weights", i32 1062870, i32 3584178}
!505 = !{!"branch_weights", i32 3278949, i32 305230}
!506 = !{!"branch_weights", i32 1952113, i32 1326837}
!507 = !{!"branch_weights", i32 1845070, i32 107044}
!508 = !{!"branch_weights", i32 417483124, i32 -1387951402}
!509 = !{!"branch_weights", i32 756268, i32 -1753758294}
!510 = !{!"branch_weights", i32 117, i32 1612778}
!511 = !{!"branch_weights", i32 1611779, i32 1000}
!512 = !{!"function_entry_count", i64 30985364}
!513 = !{!"alias.c:base_alias_check"}
!514 = !{!"branch_weights", i32 23385513, i32 7599853}
!515 = !{!"branch_weights", i32 1, i32 23385513}
!516 = !{!"branch_weights", i32 23379407, i32 6107}
!517 = !{!"branch_weights", i32 1551054, i32 6048800}
!518 = !{!"branch_weights", i32 1, i32 1551054}
!519 = !{!"branch_weights", i32 1550750, i32 305}
!520 = !{!"branch_weights", i32 3727086, i32 2321715}
!521 = !{!"branch_weights", i32 1, i32 3727086}
!522 = !{!"branch_weights", i32 1422042, i32 2305045}
!523 = !{!"branch_weights", i32 1401868, i32 903178}
!524 = !{!"branch_weights", i32 1631042688, i32 516440960}
!525 = !{!"branch_weights", i32 -1728516316, i32 257826491}
!526 = !{!"branch_weights", i32 159194, i32 1}
!527 = !{!"function_entry_count", i64 74234437}
!528 = !{!"alias.c:memrefs_conflict_p"}
!529 = !{!"branch_weights", i32 105264, i32 74129175}
!530 = !{!"branch_weights", i32 1000843, i32 73233596}
!531 = !{!"branch_weights", i32 -1667236076, i32 35, i32 35}
!532 = !{!"branch_weights", i32 72847420, i32 1387019}
!533 = !{!"branch_weights", i32 297976, i32 -537998761}
!534 = !{!"branch_weights", i32 400587420, i32 -2010555388}
!535 = !{!"branch_weights", i32 20007238, i32 52840183}
!536 = !{!"branch_weights", i32 6343344, i32 13663895}
!537 = !{!"branch_weights", i32 5797194, i32 546151}
!538 = !{!"branch_weights", i32 4631569, i32 1165626}
!539 = !{!"branch_weights", i32 4233941, i32 397629}
!540 = !{!"branch_weights", i32 3975805, i32 258137}
!541 = !{!"branch_weights", i32 287384, i32 110246}
!542 = !{!"branch_weights", i32 13112310, i32 551586}
!543 = !{!"branch_weights", i32 16489806, i32 36350378}
!544 = !{!"branch_weights", i32 15879969, i32 609838}
!545 = !{!"branch_weights", i32 486974, i32 2146996674}
!546 = !{!"branch_weights", i32 24, i32 8220}
!547 = !{!"branch_weights", i32 8220, i32 1}
!548 = !{!"branch_weights", i32 59, i32 2147483589}
!549 = !{!"branch_weights", i32 1, i32 36893721}
!550 = !{!"branch_weights", i32 27486244, i32 9407478}
!551 = !{!"branch_weights", i32 -517759998, i32 297481216, i32 -1333177091}
!552 = !{!"branch_weights", i32 14521682, i32 -122438504, i32 13669}
!553 = !{!"branch_weights", i32 235216, i32 -1676143509}
!554 = !{!"branch_weights", i32 868397, i32 -1578212561}
!555 = !{!"branch_weights", i32 557065, i32 600468}
!556 = !{!"branch_weights", i32 241896, i32 11327598}
!557 = !{!"branch_weights", i32 13880, i32 14744871}
!558 = !{!"branch_weights", i32 216, i32 14744656}
!559 = !{!"branch_weights", i32 433, i32 46656}
!560 = !{!"branch_weights", i32 216, i32 1}
!561 = !{!"function_entry_count", i64 23870889}
!562 = !{!"alias.c:mems_in_disjoint_alias_sets_p"}
!563 = !{!"branch_weights", i32 1, i32 23870890}
!564 = !{!"branch_weights", i32 309576, i32 23561315}
!565 = !{!"branch_weights", i32 1389725, i32 22481166}
!566 = !{!"function_entry_count", i64 20096774}
!567 = !{!"alias.c:aliases_everything_p"}
!568 = !{!"function_entry_count", i64 19211146}
!569 = !{!"alias.c:fixed_scalar_and_varying_struct_p"}
!570 = !{!"branch_weights", i32 1, i32 19211147}
!571 = !{!"branch_weights", i32 12626357, i32 6344693}
!572 = !{!"branch_weights", i32 6197457, i32 147237}
!573 = !{!"branch_weights", i32 14597, i32 132641}
!574 = !{!"branch_weights", i32 127683, i32 4959}
!575 = !{!"branch_weights", i32 124632, i32 3052}
!576 = !{!"branch_weights", i32 1, i32 19208096}
!577 = !{!"branch_weights", i32 2177622, i32 16989286}
!578 = !{!"branch_weights", i32 1839067, i32 15150220}
!579 = !{!"branch_weights", i32 15060381, i32 89840}
!580 = !{!"branch_weights", i32 87413, i32 2428}
!581 = !{!"branch_weights", i32 2296, i32 133}
!582 = !{!"function_entry_count", i64 19205800}
!583 = !{!"alias.c:rtx_refs_may_alias_p"}
!584 = !{!"branch_weights", i32 2588929, i32 16616873}
!585 = !{!"branch_weights", i32 2281605, i32 14335269}
!586 = !{!"function_entry_count", i64 148468874}
!587 = !{!"alias.c:addr_side_effect_eval"}
!588 = !{!"branch_weights", i32 148413375, i32 1, i32 55501, i32 1, i32 1}
!589 = !{!"branch_weights", i32 0, i32 -2147483648}
!590 = !{!"function_entry_count", i64 101980237}
!591 = !{!"alias.c:rtx_equal_for_memref_p"}
!592 = !{!"branch_weights", i32 29, i32 2147483619}
!593 = !{!"branch_weights", i32 4676657, i32 97303582}
!594 = !{!"branch_weights", i32 30486883, i32 66816700}
!595 = !{!"branch_weights", i32 30486883, i32 1}
!596 = !{!"branch_weights", i32 7200169, i32 15494333, i32 1, i32 1, i32 77125, i32 7715259, i32 1, i32 1}
!597 = !{!"branch_weights", i32 6761996, i32 438174}
!598 = !{!"branch_weights", i32 5203715, i32 1558282}
!599 = !{!"branch_weights", i32 1433859, i32 124424}
!600 = !{!"branch_weights", i32 6631433, i32 6141}
!601 = !{!"branch_weights", i32 31, i32 -1031599711}
!602 = !{!"branch_weights", i32 -333174076, i32 -1363586836, i32 13997932}
!603 = !{!"branch_weights", i32 167616, i32 18345}
!604 = !{!"branch_weights", i32 215, i32 18131}
!605 = !{!"branch_weights", i32 167830, i32 1}
!606 = !{!"branch_weights", i32 634, i32 255}
!607 = !{!"branch_weights", i32 4, i32 251325}
!608 = !{!"branch_weights", i32 1, i32 4319}
!609 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 251325, i32 1, i32 1537}
!610 = !{!611, !214, i64 0}
!611 = !{!"rtvec_def", !214, i64 0, !215, i64 8}
!612 = distinct !{!612, !267}
!613 = !{!"branch_weights", i32 247006, i32 4320}
!614 = !{!"branch_weights", i32 248542, i32 4319}
!615 = distinct !{!615, !267}
!616 = !{!"function_entry_count", i64 35822672}
!617 = !{!"alias.c:ao_ref_from_mem"}
!618 = !{!"branch_weights", i32 265362, i32 35557312}
!619 = !{!"branch_weights", i32 255222965, i32 1892260683}
!620 = !{!"branch_weights", i32 259188, i32 31072229}
!621 = !{!"branch_weights", i32 31072229, i32 1}
!622 = !{!"branch_weights", i32 1, i32 31072229}
!623 = !{!"branch_weights", i32 -1547057556, i32 1948378095}
!624 = !{!"branch_weights", i32 18061274, i32 119826}
!625 = !{!"branch_weights", i32 -356697876, i32 217, i32 217, i32 -1490699506}
!626 = !{!"branch_weights", i32 445414, i32 12427906}
!627 = !{!628, !217, i64 24}
!628 = !{!"function", !217, i64 0, !217, i64 8, !217, i64 16, !217, i64 24, !217, i64 32, !217, i64 40, !217, i64 48, !217, i64 56, !217, i64 64, !217, i64 72, !217, i64 80, !217, i64 88, !217, i64 96, !214, i64 104, !214, i64 108, !214, i64 112, !214, i64 116, !214, i64 120, !214, i64 124, !217, i64 128, !214, i64 136, !214, i64 137, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139}
!629 = !{!630, !217, i64 64}
!630 = !{!"gimple_df", !217, i64 0, !217, i64 8, !217, i64 16, !217, i64 24, !631, i64 32, !631, i64 48, !217, i64 64, !217, i64 72, !217, i64 80, !217, i64 88, !214, i64 96, !632, i64 104}
!631 = !{!"pt_solution", !214, i64 0, !214, i64 0, !214, i64 0, !214, i64 0, !214, i64 0, !214, i64 0, !217, i64 8}
!632 = !{!"ssa_operands", !217, i64 0, !214, i64 8, !214, i64 12, !215, i64 16, !217, i64 24, !217, i64 32}
!633 = !{!"branch_weights", i32 253015, i32 192400}
!634 = !{!"branch_weights", i32 93022, i32 99379}
!635 = !{!636, !214, i64 44}
!636 = !{!"ao_ref_s", !217, i64 0, !217, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !214, i64 40, !214, i64 44}
!637 = !{!636, !217, i64 8}
!638 = !{!"branch_weights", i32 1, i32 30952404}
!639 = !{!636, !214, i64 40}
!640 = !{}
!641 = !{!"branch_weights", i32 76933, i32 30875472}
!642 = !{!636, !254, i64 24}
!643 = !{!636, !254, i64 16}
!644 = !{!636, !254, i64 32}
!645 = !{!"branch_weights", i32 31074, i32 -662973480}
!646 = !{!"branch_weights", i32 1, i32 30875472}
!647 = !{!"branch_weights", i32 12714821, i32 18160652}
!648 = !{!"branch_weights", i32 1, i32 12714821}
!649 = !{!"branch_weights", i32 264, i32 12714558}
!650 = !{!"function_entry_count", i64 24648293}
!651 = !{!"branch_weights", i32 24648294, i32 1}
!652 = !{!"branch_weights", i32 576, i32 24647719}
!653 = !{!"branch_weights", i32 1, i32 576}
!654 = !{!"branch_weights", i32 543379, i32 24104916}
!655 = !{!"branch_weights", i32 536778, i32 6602}
!656 = !{!"branch_weights", i32 561797, i32 23549721}
!657 = !{!"branch_weights", i32 91, i32 2147483557}
!658 = !{!"branch_weights", i32 1440135, i32 22671383}
!659 = !{!"branch_weights", i32 95, i32 2147483553}
!660 = !{!"branch_weights", i32 24095574, i32 15944}
!661 = !{!"branch_weights", i32 561797, i32 23533778}
!662 = !{!"branch_weights", i32 24095574, i32 1}
!663 = !{!"branch_weights", i32 23551309, i32 544266}
!664 = !{!"branch_weights", i32 1926789, i32 22168786}
!665 = !{!"branch_weights", i32 20591942, i32 1576845}
!666 = !{!"branch_weights", i32 18372659, i32 2219284}
!667 = !{!"branch_weights", i32 18251706, i32 120954}
!668 = !{!"branch_weights", i32 216825482, i32 -1970252188}
!669 = !{!"branch_weights", i32 985332, i32 -43176502}
!670 = !{!"branch_weights", i32 41, i32 16690701}
!671 = !{!"branch_weights", i32 16686354, i32 4348}
!672 = !{!"function_entry_count", i64 388233}
!673 = !{i32 0, i32 -1}
!674 = !{!"function_entry_count", i64 2287356}
!675 = !{!"alias.c:write_dependence_p"}
!676 = !{!"branch_weights", i32 2287352, i32 6}
!677 = !{!"branch_weights", i32 1, i32 6}
!678 = !{!"branch_weights", i32 29660, i32 2257693}
!679 = !{!"branch_weights", i32 28682, i32 979}
!680 = !{!"branch_weights", i32 11180, i32 2247492}
!681 = !{!"branch_weights", i32 10581, i32 600}
!682 = !{!"branch_weights", i32 53002, i32 2195090}
!683 = !{!"branch_weights", i32 978, i32 2147482670}
!684 = !{!"branch_weights", i32 80123, i32 2167969}
!685 = !{!"branch_weights", i32 1, i32 2248091}
!686 = !{!"branch_weights", i32 -971086293, i32 7923064}
!687 = !{!"branch_weights", i32 52942, i32 2189805}
!688 = !{!"branch_weights", i32 2242746, i32 1}
!689 = !{!"branch_weights", i32 1868686, i32 374061}
!690 = !{!"branch_weights", i32 146082, i32 227980}
!691 = !{!"branch_weights", i32 -1937953320, i32 14248, i32 891430297}
!692 = !{!"branch_weights", i32 62562, i32 1}
!693 = !{!"branch_weights", i32 578236, i32 1664511}
!694 = !{!"branch_weights", i32 1001349, i32 663163}
!695 = !{!"branch_weights", i32 907670, i32 93680}
!696 = !{!"branch_weights", i32 1, i32 907670}
!697 = !{!"function_entry_count", i64 1899123}
!698 = !{!"function_entry_count", i64 1}
!699 = !{!"branch_weights", i32 51, i32 4}
!700 = !{!"branch_weights", i32 1, i32 4}
!701 = !{!"branch_weights", i32 2, i32 52}
!702 = distinct !{!702, !267}
!703 = !{!"function_entry_count", i64 346689}
!704 = !{!"branch_weights", i32 -1989075608, i32 130997589}
!705 = !{!"function_entry_count", i64 331670}
!706 = !{!"alias.c:memory_modified_1"}
!707 = !{!"branch_weights", i32 23062, i32 308610}
!708 = !{!"branch_weights", i32 16474, i32 6589}
!709 = !{!"branch_weights", i32 16474, i32 1}
!710 = !{!"function_entry_count", i64 73050}
!711 = !{!"branch_weights", i32 73051, i32 1}
!712 = !{!"branch_weights", i32 2, i32 73050}
!713 = !{!"branch_weights", i32 -2147483648, i32 0}
!714 = !{!"branch_weights", i32 1, i32 146829}
!715 = !{!"branch_weights", i32 625053992, i32 -1019298871, i32 158, i32 703908406, i32 349574548, i32 1204313682}
!716 = !{!"branch_weights", i32 15256399, i32 11689485}
!717 = !{!"branch_weights", i32 11393565, i32 295921}
!718 = !{!"branch_weights", i32 23767238, i32 2882726}
!719 = !{!"branch_weights", i32 12969024, i32 10798215}
!720 = !{!"branch_weights", i32 10763953, i32 34263}
!721 = !{!"branch_weights", i32 -9344765, i32 160}
!722 = !{!"branch_weights", i32 23767238, i32 1}
!723 = !{!"branch_weights", i32 15495718, i32 10363265}
!724 = !{!"branch_weights", i32 5814655, i32 9681064}
!725 = !{!"branch_weights", i32 5443415, i32 371241}
!726 = !{!"branch_weights", i32 274124, i32 97118}
!727 = !{!728, !217, i64 216}
!728 = !{!"df", !215, i64 0, !215, i64 64, !217, i64 128, !729, i64 136, !729, i64 176, !217, i64 216, !217, i64 224, !217, i64 232, !214, i64 240, !214, i64 244, !217, i64 248, !214, i64 256, !214, i64 260, !217, i64 264, !217, i64 272, !217, i64 280, !217, i64 288, !217, i64 296, !217, i64 304, !217, i64 312, !217, i64 320, !217, i64 328, !217, i64 336, !214, i64 344, !214, i64 348, !217, i64 352, !214, i64 360, !214, i64 364, !215, i64 365, !215, i64 366}
!729 = !{!"df_ref_info", !217, i64 0, !217, i64 8, !217, i64 16, !214, i64 24, !214, i64 28, !214, i64 32, !214, i64 36}
!730 = !{!731, !214, i64 8}
!731 = !{!"df_reg_info", !217, i64 0, !214, i64 8}
!732 = !{!"branch_weights", i32 235915, i32 38210}
!733 = !{!"branch_weights", i32 1, i32 333032}
!734 = !{!"branch_weights", i32 2784, i32 330249}
!735 = !{!"branch_weights", i32 2784, i32 1}
!736 = !{!"branch_weights", i32 3830429, i32 1981444}
!737 = !{!"branch_weights", i32 363045, i32 3467385}
!738 = !{!"branch_weights", i32 357115, i32 5931}
!739 = !{!"branch_weights", i32 352258, i32 4858}
!740 = !{!"branch_weights", i32 699, i32 4160}
!741 = !{!"branch_weights", i32 165002, i32 3664730}
!742 = !{!"branch_weights", i32 146830, i32 7349168}
!743 = !{!"branch_weights", i32 146829, i32 38185566}
!744 = distinct !{!744, !267}
!745 = !{!"branch_weights", i32 146830, i32 1}
!746 = !{!"branch_weights", i32 30126395, i32 1142093}
!747 = !{!"branch_weights", i32 493116, i32 648978}
!748 = !{!"branch_weights", i32 560333, i32 88646}
!749 = !{!"branch_weights", i32 146829, i32 31121658}
!750 = distinct !{!750, !267}
!751 = !{!"branch_weights", i32 542218851, i32 1605264797}
!752 = distinct !{!752, !267}
!753 = !{!"branch_weights", i32 73050, i32 1}
!754 = !{!"branch_weights", i32 11357692, i32 79493}
!755 = !{!"branch_weights", i32 73050, i32 11364134}
!756 = distinct !{!756, !267}
!757 = !{!"function_entry_count", i64 73049}
!758 = !{!"alias.c:VEC_rtx_base_truncate"}
!759 = !{!"alias.c:VEC_rtx_gc_safe_grow_cleared"}
!760 = !{!"function_entry_count", i64 28009775}
!761 = !{!"alias.c:record_set"}
!762 = !{!"branch_weights", i32 17666912, i32 10342865}
!763 = !{!"branch_weights", i32 17666912, i32 1}
!764 = !{!"branch_weights", i32 11831562, i32 5835351}
!765 = !{!"branch_weights", i32 1412318, i32 -1336249817, i32 250}
!766 = !{!"branch_weights", i32 5646, i32 5645}
!767 = distinct !{!767, !267}
!768 = !{!"branch_weights", i32 31193, i32 17630075}
!769 = !{!"branch_weights", i32 2073057, i32 15557019}
!770 = !{!"branch_weights", i32 15233959, i32 323061}
!771 = !{!"branch_weights", i32 24483, i32 6711}
!772 = !{!"branch_weights", i32 33989, i32 289073}
!773 = !{!"branch_weights", i32 268590, i32 1, i32 281, i32 19679, i32 526}
!774 = !{!"branch_weights", i32 175, i32 107}
!775 = !{!"branch_weights", i32 41, i32 67}
!776 = !{!"branch_weights", i32 10228, i32 9452}
!777 = !{!"branch_weights", i32 954, i32 8499}
!778 = !{!"branch_weights", i32 172667, i32 2147310981}
!779 = !{!"branch_weights", i32 11169, i32 13}
!780 = !{!"branch_weights", i32 418, i32 109}
!781 = !{!"branch_weights", i32 253, i32 166}
!782 = !{!"branch_weights", i32 5767503, i32 9500445}
!783 = !{!"branch_weights", i32 5596467, i32 3903979}
!784 = !{!"branch_weights", i32 -1782185755, i32 -511597580}
!785 = !{!"function_entry_count", i64 168482}
!786 = !{!"alias.c:set_reg_known_value"}
!787 = !{!"branch_weights", i32 168483, i32 1}
!788 = !{!"alias.c:set_reg_known_equiv_p"}
!789 = !{!"function_entry_count", i64 560332}
!790 = !{!"alias.c:VEC_rtx_base_replace"}
!791 = !{!"alias.c:VEC_rtx_gc_safe_grow"}
!792 = !{!"alias.c:VEC_rtx_base_address"}
!793 = !{!"branch_weights", i32 1, i32 73051}
!794 = !{!"alias.c:VEC_rtx_gc_reserve_exact"}
!795 = !{!"branch_weights", i32 26, i32 73026}
!796 = !{!"alias.c:VEC_rtx_base_space"}
!797 = !{!390, !214, i64 4}
!798 = !{!"function_entry_count", i64 6025112}
!799 = !{!"alias.c:find_base_value"}
!800 = !{!"branch_weights", i32 782196, i32 48444, i32 1758, i32 1876868, i32 2355295, i32 43692, i32 456026, i32 33105, i32 1, i32 228053, i32 1409, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 186751, i32 11527}
!801 = !{!"branch_weights", i32 61158156, i32 -1651714852}
!802 = !{!"branch_weights", i32 1139121, i32 695305}
!803 = !{!"branch_weights", i32 643430, i32 51876}
!804 = !{!"branch_weights", i32 1190996, i32 1}
!805 = !{!"branch_weights", i32 1, i32 1190996}
!806 = !{!"branch_weights", i32 1010593, i32 180404}
!807 = !{!"branch_weights", i32 148221, i32 32184}
!808 = !{!"branch_weights", i32 178428, i32 2176868}
!809 = !{!"branch_weights", i32 56239, i32 122190}
!810 = !{!"branch_weights", i32 122190, i32 1}
!811 = !{!"branch_weights", i32 67588, i32 54603}
!812 = !{!"branch_weights", i32 87385, i32 1}
!813 = !{!"branch_weights", i32 1408630345, i32 -1763512158}
!814 = !{!"branch_weights", i32 59279742, i32 -456882802}
!815 = !{!"branch_weights", i32 282344, i32 54782}
!816 = !{!"branch_weights", i32 270249, i32 12096}
!817 = !{!"branch_weights", i32 85871, i32 251255}
!818 = !{!"branch_weights", i32 81573, i32 4299}
!819 = !{!"branch_weights", i32 -1446322132, i32 462588179, i32 10124, i32 102285902}
!820 = !{!"branch_weights", i32 7521, i32 2582}
!821 = !{!"branch_weights", i32 1859546293, i32 178450466, i32 9408700, i32 72949642, i32 -1054756428}
!822 = !{!"branch_weights", i32 2611, i32 1321}
!823 = !{!"branch_weights", i32 1, i32 102815}
!824 = !{!"branch_weights", i32 3804, i32 99012}
!825 = !{!"branch_weights", i32 213538, i32 14516}
!826 = !{!"branch_weights", i32 3, i32 213536}
!827 = !{!"branch_weights", i32 1, i32 1409}
!828 = !{!"branch_weights", i32 1, i32 198277}
!829 = !{!"branch_weights", i32 198223, i32 55}
!830 = !{!"branch_weights", i32 1, i32 55}
!831 = !{!832, !214, i64 0}
!832 = !{!"VEC_alias_set_entry_gc", !322, i64 0}
!833 = distinct !{!833, !267}
!834 = distinct !{!834, !267}
!835 = distinct !{!835, !267}
!836 = !{!"alias.c:gt_ggc_ma_reg_known_value"}
!837 = distinct !{!837, !267}
!838 = !{!"alias.c:gt_pch_na_reg_known_value"}
!839 = distinct !{!839, !267}
!840 = !{!"alias.c:gt_pch_pa_reg_known_value"}
!841 = distinct !{!841, !267}
