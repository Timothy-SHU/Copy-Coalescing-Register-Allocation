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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_alias_set_entry_base = type { i32, i32, [1 x ptr] }
%struct.alias_set_entry_d = type { i32, i32, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
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

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !114 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !115
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !114 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !115
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !114 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !125

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !119
  %11 = load i8, ptr %3, align 1, !tbaa !126
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !114 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !125

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !119
  %11 = load i8, ptr %3, align 1, !tbaa !126
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !114 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !125

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !119
  %11 = load i8, ptr %3, align 1, !tbaa !126
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !114 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !115
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !114 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !125

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !127
  store i8 %12, ptr %4, align 1, !tbaa !126
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !114 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !125

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !127
  store i8 %12, ptr %4, align 1, !tbaa !126
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !114 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !115
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !125

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !127
  store i8 %12, ptr %4, align 1, !tbaa !126
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !114 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !114 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !114 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !114 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !130
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !114 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !130
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !114 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
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
  br i1 %23, label %7, label %24, !llvm.loop !131

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @alias_set_subset_of(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !134 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %23, label %4, !prof !135

4:                                                ; preds = %2
  %5 = load ptr, ptr @alias_sets, align 8
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %5, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10, !prof !135

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.alias_set_entry_d, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !136
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq i32 %0, 0
  %15 = and i1 %14, %13
  br i1 %15, label %23, label %16, !prof !135

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.alias_set_entry_d, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = sext i32 %0 to i64
  %20 = tail call ptr @splay_tree_lookup(ptr noundef %18, i64 noundef %19) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !139

22:                                               ; preds = %16, %4
  br label %23

23:                                               ; preds = %16, %10, %2, %22
  %24 = phi i8 [ 0, %22 ], [ 1, %2 ], [ 1, %10 ], [ 1, %16 ]
  ret i8 %24
}

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @alias_sets_conflict_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !140 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  %6 = icmp eq i32 %0, %1
  %7 = or i1 %6, %5
  br i1 %7, label %41, label %8, !prof !141

8:                                                ; preds = %2
  %9 = load ptr, ptr @alias_sets, align 8
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %9, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !142

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.alias_set_entry_d, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !136
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41, !prof !143

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.alias_set_entry_d, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = sext i32 %1 to i64
  %22 = tail call ptr @splay_tree_lookup(ptr noundef %20, i64 noundef %21) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %41, !prof !143

24:                                               ; preds = %18, %8
  %25 = load ptr, ptr @alias_sets, align 8
  %26 = zext i32 %1 to i64
  %27 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %25, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30, !prof !144

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.alias_set_entry_d, ptr %28, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !136
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41, !prof !145

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.alias_set_entry_d, ptr %28, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !138
  %37 = sext i32 %0 to i64
  %38 = tail call ptr @splay_tree_lookup(ptr noundef %36, i64 noundef %37) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !146

40:                                               ; preds = %34, %24
  br label %41

41:                                               ; preds = %30, %34, %14, %18, %2, %40
  %42 = phi i32 [ 0, %40 ], [ 1, %2 ], [ 1, %18 ], [ 1, %14 ], [ 1, %34 ], [ 1, %30 ]
  ret i32 %42
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @alias_sets_must_conflict_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !114 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  %6 = icmp eq i32 %0, %1
  %7 = or i1 %6, %5
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @insn_alias_sets_conflict_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !114 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %5 = tail call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @walk_mems_1, ptr noundef nonnull %4) #22
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @walk_mems_1(ptr nocapture noundef readonly %0, ptr noundef %1) #11 !prof !114 {
  %3 = load ptr, ptr %0, align 8, !tbaa !115
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @for_each_rtx(ptr noundef %1, ptr noundef nonnull @walk_mems_2, ptr noundef nonnull %3) #22
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -1, i32 1
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @objects_must_conflict_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !114 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %33, label %8

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
  br i1 %18, label %19, label %33

19:                                               ; preds = %9, %15
  %20 = tail call i32 @get_alias_set(ptr noundef nonnull %0)
  br label %21

21:                                               ; preds = %8, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %8 ]
  br i1 %4, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @get_alias_set(ptr noundef nonnull %1)
  br label %25

25:                                               ; preds = %21, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %21 ]
  %27 = icmp eq i32 %22, 0
  %28 = icmp eq i32 %26, 0
  %29 = or i1 %27, %28
  %30 = icmp eq i32 %22, %26
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %6, %15, %2, %25
  %34 = phi i32 [ %32, %25 ], [ 0, %2 ], [ 1, %15 ], [ 1, %6 ]
  ret i32 %34
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @get_alias_set(ptr noundef %0) local_unnamed_addr #12 !prof !147 {
  br label %2

2:                                                ; preds = %168, %1
  %3 = phi ptr [ %0, %1 ], [ %170, %168 ]
  %4 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %229, label %6, !prof !148

6:                                                ; preds = %2
  %7 = load ptr, ptr @global_trees, align 16, !tbaa !115
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %229, label %9, !prof !148

9:                                                ; preds = %6
  %10 = load i64, ptr %3, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !130
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %139, label %15, !prof !149

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %7
  %20 = or i1 %18, %19
  br i1 %20, label %229, label %21, !prof !150

21:                                               ; preds = %15
  br i1 %14, label %139, label %22, !prof !149

22:                                               ; preds = %21
  %23 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %3) #22
  %24 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !151
  %25 = tail call i32 %24(ptr noundef %23) #22, !prof !159
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %135, !prof !160

27:                                               ; preds = %22
  %28 = load i64, ptr %23, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 152
  br i1 %30, label %31, label %34, !prof !161

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 1, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %23, %27 ]
  br label %36

36:                                               ; preds = %45, %34
  %37 = phi ptr [ %35, %34 ], [ %48, %45 ]
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %40 [
    i16 42, label %45
    i16 41, label %45
    i16 45, label %45
    i16 46, label %45
    i16 118, label %45
    i16 43, label %45
    i16 44, label %45
  ], !prof !162

40:                                               ; preds = %36
  %41 = trunc i64 %38 to i32
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -47
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %49, label %74, !prof !163

45:                                               ; preds = %36, %36, %36, %36, %36, %36, %36
  %46 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !126
  %48 = tail call ptr @tree_strip_nop_conversions(ptr noundef %47) #22
  br label %36, !llvm.loop !164

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !126
  %52 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %135, label %54, !prof !165

54:                                               ; preds = %49
  %55 = load i64, ptr %51, align 8
  %56 = and i64 %55, 65535
  %57 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !130
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %63, label %60, !prof !165

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !126
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi ptr [ %51, %54 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !126
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 19
  br i1 %69, label %135, label %70, !prof !165

70:                                               ; preds = %63
  %71 = load i64, ptr %64, align 8
  %72 = and i64 %71, 67108864
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %135, !prof !166

74:                                               ; preds = %40, %70
  br label %75

75:                                               ; preds = %74, %111
  %76 = phi ptr [ %114, %111 ], [ %35, %74 ]
  br label %77

77:                                               ; preds = %104, %75
  %78 = phi ptr [ %76, %75 ], [ %106, %104 ]
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %81 [
    i16 41, label %88
    i16 45, label %95
    i16 46, label %95
    i16 43, label %104
    i16 44, label %104
    i16 42, label %111
    i16 118, label %111
  ], !prof !167

81:                                               ; preds = %77
  %82 = load i64, ptr %76, align 8
  %83 = and i64 %82, 65535
  %84 = icmp ne i64 %83, 32
  %85 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %84, i1 true, i1 %86, !prof !168
  br i1 %87, label %132, label %115, !prof !168

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.tree_exp, ptr %78, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !126
  %91 = getelementptr inbounds %struct.tree_decl_common, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 67108864
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %104, label %111, !prof !169

95:                                               ; preds = %77, %77
  %96 = getelementptr inbounds %struct.tree_exp, ptr %78, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !126
  %98 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !126
  %100 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 4096
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111, !prof !170

104:                                              ; preds = %95, %77, %77, %88
  %105 = getelementptr inbounds %struct.tree_exp, ptr %78, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !126
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !126
  %109 = tail call i32 @get_alias_set(ptr noundef %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %77, !prof !171, !llvm.loop !172

111:                                              ; preds = %77, %77, %88, %95, %104
  %112 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !126
  %114 = tail call ptr @tree_strip_nop_conversions(ptr noundef %113) #22
  br label %75, !llvm.loop !173

115:                                              ; preds = %81
  %116 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %76, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !126
  %118 = icmp eq ptr %117, null
  br i1 %118, label %132, label %119, !prof !174

119:                                              ; preds = %115
  %120 = load i32, ptr %117, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 43
  br i1 %122, label %123, label %132, !prof !175

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !126
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127, !prof !176

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !126
  %130 = getelementptr inbounds %struct.mem_attrs, ptr %129, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !177
  br label %135

132:                                              ; preds = %119, %115, %81
  %133 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !126
  br label %135

135:                                              ; preds = %49, %63, %127, %123, %70, %22, %132
  %136 = phi i32 [ undef, %132 ], [ %25, %22 ], [ 0, %70 ], [ %131, %127 ], [ 0, %123 ], [ 0, %63 ], [ 0, %49 ]
  %137 = phi ptr [ %134, %132 ], [ %23, %22 ], [ %35, %70 ], [ %76, %127 ], [ %76, %123 ], [ %35, %63 ], [ %35, %49 ]
  %138 = phi i1 [ true, %132 ], [ false, %22 ], [ false, %70 ], [ false, %127 ], [ false, %123 ], [ false, %63 ], [ false, %49 ]
  br i1 %138, label %139, label %229, !prof !179

139:                                              ; preds = %9, %135, %21
  %140 = phi ptr [ %3, %21 ], [ %137, %135 ], [ %3, %9 ]
  %141 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 16
  %142 = load ptr, ptr %141, align 8, !tbaa !126
  %143 = getelementptr inbounds %struct.tree_type, ptr %142, i64 0, i32 19
  %144 = load ptr, ptr %143, align 8, !tbaa !126
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %151, !prof !180

146:                                              ; preds = %139
  %147 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !151
  %148 = tail call i32 %147(ptr noundef %142) #22
  %149 = icmp eq i32 %148, -1
  %150 = select i1 %149, i32 0, i32 %148
  br label %229

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 19
  %153 = load ptr, ptr %152, align 8, !tbaa !126
  %154 = icmp eq ptr %153, %144
  br i1 %154, label %156, label %155, !prof !181

155:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 710, ptr noundef nonnull @.str.1) #22
  br label %156

156:                                              ; preds = %151, %155
  %157 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 8
  %158 = load i32, ptr %157, align 4, !tbaa !126
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %229, !prof !182

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !126
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %171, !prof !183

164:                                              ; preds = %160
  %165 = load i64, ptr %144, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 15
  br i1 %167, label %168, label %229

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !126
  br label %2

171:                                              ; preds = %160
  %172 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 13), align 8, !tbaa !151
  %173 = tail call i32 %172(ptr noundef nonnull %144) #22, !prof !184
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %229, !prof !185

175:                                              ; preds = %171
  %176 = load i64, ptr %144, align 8
  %177 = trunc i64 %176 to i16
  switch i16 %177, label %191 [
    i16 20, label %224
    i16 21, label %224
    i16 14, label %178
    i16 15, label %182
  ], !prof !186

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !126
  %181 = tail call i32 @get_alias_set(ptr noundef %180)
  br label %224

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 4096
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191, !prof !187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !126
  %190 = tail call i32 @get_alias_set(ptr noundef %189)
  br label %224

191:                                              ; preds = %175, %182
  %192 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %224, label %194, !prof !188

194:                                              ; preds = %191
  %195 = load ptr, ptr @alias_sets, align 8, !tbaa !115
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %203, !prof !189

197:                                              ; preds = %194
  %198 = tail call ptr @vec_gc_p_reserve(ptr noundef %195, i32 noundef 1) #22
  store ptr %198, ptr @alias_sets, align 8, !tbaa !115
  %199 = load i32, ptr %198, align 8, !tbaa !190
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 8, !tbaa !190
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %198, i64 0, i32 2, i64 %201
  store ptr null, ptr %202, align 8, !tbaa !115
  br label %203

203:                                              ; preds = %197, %194
  %204 = load ptr, ptr @alias_sets, align 8, !tbaa !115
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206, !prof !188

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %204, i64 0, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !192
  %209 = load i32, ptr %204, align 8, !tbaa !190
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213, !prof !193

211:                                              ; preds = %206, %203
  %212 = tail call ptr @vec_gc_p_reserve(ptr noundef %204, i32 noundef 1) #22
  store ptr %212, ptr @alias_sets, align 8, !tbaa !115
  br label %213

213:                                              ; preds = %211, %206
  %214 = load ptr, ptr @alias_sets, align 8, !tbaa !115
  %215 = load i32, ptr %214, align 8, !tbaa !190
  %216 = add i32 %215, 1
  store i32 %216, ptr %214, align 8, !tbaa !190
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %214, i64 0, i32 2, i64 %217
  store ptr null, ptr %218, align 8, !tbaa !115
  %219 = load ptr, ptr @alias_sets, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %224, label %221, !prof !188

221:                                              ; preds = %213
  %222 = load i32, ptr %219, align 8, !tbaa !190
  %223 = add i32 %222, -1
  br label %224

224:                                              ; preds = %221, %213, %191, %175, %175, %187, %178
  %225 = phi i32 [ %181, %178 ], [ %190, %187 ], [ 0, %175 ], [ 0, %175 ], [ 0, %191 ], [ %223, %221 ], [ -1, %213 ]
  store i32 %225, ptr %157, align 4, !tbaa !126
  %226 = load i64, ptr %144, align 8
  %227 = trunc i64 %226 to i16
  switch i16 %227, label %229 [
    i16 15, label %228
    i16 16, label %228
    i16 17, label %228
    i16 18, label %228
    i16 13, label %228
  ], !prof !194

228:                                              ; preds = %224, %224, %224, %224, %224
  tail call void @record_component_aliases(ptr noundef nonnull %144)
  br label %229

229:                                              ; preds = %135, %228, %224, %171, %164, %156, %146, %2, %6, %15
  %230 = phi i32 [ 0, %15 ], [ 0, %6 ], [ 0, %2 ], [ %150, %146 ], [ %158, %156 ], [ 0, %164 ], [ %173, %171 ], [ %225, %224 ], [ %225, %228 ], [ %136, %135 ]
  ret i32 %230
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @component_uses_parent_alias_set(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !195 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi ptr [ %0, %1 ], [ %24, %22 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %29 [
    i16 41, label %6
    i16 45, label %13
    i16 46, label %13
    i16 43, label %22
    i16 44, label %22
    i16 42, label %30
    i16 118, label %30
  ], !prof !167

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %30, !prof !169

13:                                               ; preds = %2, %2
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !170

22:                                               ; preds = %13, %2, %2, %6
  %23 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !126
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  %27 = tail call i32 @get_alias_set(ptr noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %2, !prof !171, !llvm.loop !172

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %22, %13, %6, %2, %2, %29
  %31 = phi i8 [ 0, %29 ], [ 1, %2 ], [ 1, %2 ], [ 1, %6 ], [ 1, %13 ], [ 1, %22 ]
  ret i8 %31
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_deref_alias_set(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !196 {
  %2 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4, !prof !197

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !130
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10, !prof !198

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 19
  br i1 %19, label %38, label %20, !prof !197

20:                                               ; preds = %13
  %21 = load i64, ptr %14, align 8
  %22 = and i64 %21, 67108864
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %38, !prof !199

24:                                               ; preds = %20
  %25 = load i64, ptr %0, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !130
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %33, label %30, !prof !198

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi ptr [ %0, %24 ], [ %32, %30 ]
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = tail call i32 @get_alias_set(ptr noundef %36)
  br label %38

38:                                               ; preds = %1, %13, %33, %20
  %39 = phi i32 [ %37, %33 ], [ 0, %20 ], [ 0, %13 ], [ 0, %1 ]
  ret i32 %39
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @new_alias_set() local_unnamed_addr #9 !prof !200 {
  %1 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %33, label %3, !prof !188

3:                                                ; preds = %0
  %4 = load ptr, ptr @alias_sets, align 8, !tbaa !115
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !189

6:                                                ; preds = %3
  %7 = tail call ptr @vec_gc_p_reserve(ptr noundef %4, i32 noundef 1) #22
  store ptr %7, ptr @alias_sets, align 8, !tbaa !115
  %8 = load i32, ptr %7, align 8, !tbaa !190
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !190
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %7, i64 0, i32 2, i64 %10
  store ptr null, ptr %11, align 8, !tbaa !115
  br label %12

12:                                               ; preds = %6, %3
  %13 = load ptr, ptr @alias_sets, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !188

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %13, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !192
  %18 = load i32, ptr %13, align 8, !tbaa !190
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22, !prof !193

20:                                               ; preds = %12, %15
  %21 = tail call ptr @vec_gc_p_reserve(ptr noundef %13, i32 noundef 1) #22
  store ptr %21, ptr @alias_sets, align 8, !tbaa !115
  br label %22

22:                                               ; preds = %15, %20
  %23 = load ptr, ptr @alias_sets, align 8, !tbaa !115
  %24 = load i32, ptr %23, align 8, !tbaa !190
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !190
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %23, i64 0, i32 2, i64 %26
  store ptr null, ptr %27, align 8, !tbaa !115
  %28 = load ptr, ptr @alias_sets, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !188

30:                                               ; preds = %22
  %31 = load i32, ptr %28, align 8, !tbaa !190
  %32 = add i32 %31, -1
  br label %33

33:                                               ; preds = %30, %22, %0
  %34 = phi i32 [ 0, %0 ], [ %32, %30 ], [ -1, %22 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @record_component_aliases(ptr noundef %0) local_unnamed_addr #9 !prof !201 {
  %2 = tail call i32 @get_alias_set(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %54, label %4, !prof !202

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %54 [
    i16 16, label %7
    i16 17, label %7
    i16 18, label %7
    i16 13, label %50
  ], !prof !203

7:                                                ; preds = %4, %4, %4
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11, !prof !204

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_binfo, ptr %9, i64 0, i32 9
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi i64 [ 0, %11 ], [ %27, %23 ]
  %15 = load i32, ptr %12, align 8, !tbaa !205
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.VEC_tree_base, ptr %12, i64 0, i32 2, i64 %14
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %20, %18 ], [ null, %13 ]
  br i1 %17, label %23, label %28

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  %26 = tail call i32 @get_alias_set(ptr noundef %25)
  tail call void @record_alias_subset(i32 noundef %2, i32 noundef %26)
  %27 = add nuw nsw i64 %14, 1
  br label %13, !llvm.loop !207

28:                                               ; preds = %21, %7
  %29 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !126
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32, !prof !208

32:                                               ; preds = %28, %46
  %33 = phi ptr [ %48, %46 ], [ %30, %28 ]
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 31
  br i1 %36, label %37, label %46, !prof !209

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %33, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 67108864
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46, !prof !210

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = tail call i32 @get_alias_set(ptr noundef %44)
  tail call void @record_alias_subset(i32 noundef %2, i32 noundef %45)
  br label %46

46:                                               ; preds = %32, %37, %42
  %47 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %32, !prof !211, !llvm.loop !212

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !126
  %53 = tail call i32 @get_alias_set(ptr noundef %52)
  tail call void @record_alias_subset(i32 noundef %2, i32 noundef %53)
  br label %54

54:                                               ; preds = %46, %28, %50, %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @record_alias_subset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !213 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %48, label %4, !prof !214

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7, !prof !214

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 813, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %4, %6
  %8 = load ptr, ptr @alias_sets, align 8
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %8, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20, !prof !215

13:                                               ; preds = %7
  %14 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #22
  store i32 %0, ptr %14, align 8, !tbaa !216
  %15 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #22
  %16 = getelementptr inbounds %struct.alias_set_entry_d, ptr %14, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !138
  %17 = getelementptr inbounds %struct.alias_set_entry_d, ptr %14, i64 0, i32 1
  store i32 0, ptr %17, align 4, !tbaa !136
  %18 = load ptr, ptr @alias_sets, align 8
  %19 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %18, i64 0, i32 2, i64 %9
  store ptr %14, ptr %19, align 8, !tbaa !115
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %23, label %25, !prof !217

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.alias_set_entry_d, ptr %21, i64 0, i32 1
  store i32 1, ptr %24, align 4, !tbaa !136
  br label %48

25:                                               ; preds = %20
  %26 = load ptr, ptr @alias_sets, align 8
  %27 = zext i32 %1 to i64
  %28 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %26, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31, !prof !218

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.alias_set_entry_d, ptr %29, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !136
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !219

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.alias_set_entry_d, ptr %21, i64 0, i32 1
  store i32 1, ptr %36, align 4, !tbaa !136
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.alias_set_entry_d, ptr %29, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !138
  %40 = getelementptr inbounds %struct.alias_set_entry_d, ptr %21, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = tail call i32 @splay_tree_foreach(ptr noundef %39, ptr noundef nonnull @insert_subset_children, ptr noundef %41) #22
  br label %43

43:                                               ; preds = %37, %25
  %44 = getelementptr inbounds %struct.alias_set_entry_d, ptr %21, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !138
  %46 = sext i32 %1 to i64
  %47 = tail call ptr @splay_tree_insert(ptr noundef %45, i64 noundef %46, i64 noundef 0) #22
  br label %48

48:                                               ; preds = %23, %43, %2
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @insert_subset_children(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !220 !PGOFuncName !221 {
  %3 = load i64, ptr %0, align 8, !tbaa !222
  %4 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !224
  %6 = tail call ptr @splay_tree_insert(ptr noundef %1, i64 noundef %3, i64 noundef %5) #22
  ret i32 0
}

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @get_varargs_alias_set() local_unnamed_addr #10 !prof !114 {
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @get_frame_alias_set() local_unnamed_addr #11 !prof !225 {
  %1 = load i32, ptr @frame_set, align 4, !tbaa !130
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5, !prof !226

3:                                                ; preds = %0
  %4 = tail call i32 @new_alias_set()
  store i32 %4, ptr @frame_set, align 4, !tbaa !130
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, ptr @frame_set, align 4, !tbaa !130
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_reg_known_value(i32 noundef %0) local_unnamed_addr #13 !prof !114 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = add i32 %0, -53
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @get_reg_known_equiv_p(i32 noundef %0) local_unnamed_addr #13 !prof !114 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = add i32 %0, -53
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !115
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !126
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i8 [ %11, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @canon_rtx(ptr noundef %0) local_unnamed_addr #12 !prof !227 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %28, !prof !228

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %9, label %28, !prof !229

9:                                                ; preds = %5
  %10 = add i32 %7, -53
  %11 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %18, !prof !230

13:                                               ; preds = %9
  %14 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  br label %18

18:                                               ; preds = %9, %13
  %19 = phi ptr [ %17, %13 ], [ null, %9 ]
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %25, label %21, !prof !231

21:                                               ; preds = %18
  %22 = icmp eq ptr %19, null
  br i1 %22, label %25, label %23, !prof !232

23:                                               ; preds = %21
  %24 = tail call ptr @canon_rtx(ptr noundef nonnull %19)
  br label %25

25:                                               ; preds = %21, %18, %23
  %26 = phi i1 [ false, %23 ], [ false, %18 ], [ true, %21 ]
  %27 = phi ptr [ %24, %23 ], [ %0, %18 ], [ undef, %21 ]
  br i1 %26, label %28, label %64, !prof !233

28:                                               ; preds = %25, %5, %1
  %29 = load i32, ptr %0, align 8
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %64 [
    i16 49, label %31
    i16 43, label %66
  ], !prof !234

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  %34 = tail call ptr @canon_rtx(ptr noundef %33)
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = tail call ptr @canon_rtx(ptr noundef %36)
  %38 = load ptr, ptr %32, align 8, !tbaa !126
  %39 = icmp eq ptr %34, %38
  br i1 %39, label %40, label %43, !prof !235

40:                                               ; preds = %31
  %41 = load ptr, ptr %35, align 8, !tbaa !126
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %64, label %43, !prof !235

43:                                               ; preds = %40, %31
  %44 = load i32, ptr %34, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !126
  %50 = tail call ptr @plus_constant(ptr noundef %37, i64 noundef %49) #22
  br label %64

51:                                               ; preds = %43
  %52 = load i32, ptr %37, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 30
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !126
  %58 = tail call ptr @plus_constant(ptr noundef nonnull %34, i64 noundef %57) #22
  br label %64

59:                                               ; preds = %51
  %60 = load i32, ptr %0, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %62, ptr noundef nonnull %34, ptr noundef nonnull %37) #22
  br label %64

64:                                               ; preds = %28, %25, %40, %59, %55, %47, %66
  %65 = phi ptr [ %70, %66 ], [ %0, %28 ], [ %27, %25 ], [ %50, %47 ], [ %58, %55 ], [ %63, %59 ], [ %0, %40 ]
  ret ptr %65

66:                                               ; preds = %28
  %67 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !126
  %69 = tail call ptr @canon_rtx(ptr noundef %68)
  %70 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %69) #22
  br label %64
}

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @find_base_term(ptr noundef %0) local_unnamed_addr #12 !prof !236 {
  br label %2

2:                                                ; preds = %86, %139, %68, %33, %1
  %3 = phi ptr [ %0, %1 ], [ %35, %33 ], [ %70, %68 ], [ %140, %139 ], [ %83, %86 ]
  %4 = tail call ptr @ix86_find_base_term(ptr noundef %3) #22
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %141 [
    i16 37, label %7
    i16 100, label %21
    i16 121, label %33
    i16 75, label %33
    i16 74, label %33
    i16 77, label %33
    i16 76, label %33
    i16 78, label %33
    i16 79, label %33
    i16 99, label %36
    i16 98, label %36
    i16 1, label %53
    i16 122, label %68
    i16 35, label %71
    i16 49, label %78
    i16 50, label %78
    i16 61, label %128
    i16 45, label %142
    i16 44, label %142
  ], !prof !237

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = load ptr, ptr @reg_base_value, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !238

12:                                               ; preds = %7
  %13 = load i32, ptr %10, align 8, !tbaa !239
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %17, label %142, !prof !241

17:                                               ; preds = %14
  %18 = zext i32 %9 to i64
  %19 = getelementptr inbounds %struct.VEC_rtx_base, ptr %10, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  br label %142

21:                                               ; preds = %2
  %22 = tail call zeroext i8 @target_default_pointer_address_modes_p() #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %142, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !126
  %31 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !126
  %32 = icmp ult i8 %30, %31
  br i1 %32, label %142, label %33

33:                                               ; preds = %24, %2, %2, %2, %2, %2, %2, %2
  %34 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !126
  br label %2

36:                                               ; preds = %2, %2
  %37 = tail call zeroext i8 @target_default_pointer_address_modes_p() #22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %142, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = tail call ptr @find_base_term(ptr noundef %41)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %142, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %42, align 8
  %46 = and i32 %45, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !130
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %142

51:                                               ; preds = %44
  %52 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %42, i8 noundef zeroext 0) #22
  br label %142

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !126
  %56 = icmp eq ptr %55, null
  br i1 %56, label %142, label %57, !prof !242

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.cselib_val_struct, ptr %55, i64 0, i32 3
  br label %59

59:                                               ; preds = %63, %57
  %60 = phi ptr [ %58, %57 ], [ %61, %63 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = icmp eq ptr %61, null
  br i1 %62, label %142, label %63, !prof !243

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.elt_loc_list, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !244
  %66 = tail call ptr @find_base_term(ptr noundef %65)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %59, label %142, !prof !246, !llvm.loop !247

68:                                               ; preds = %2
  %69 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !126
  br label %2

71:                                               ; preds = %2
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !126
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -49
  %77 = icmp ult i32 %76, 2
  br i1 %77, label %78, label %142, !prof !248

78:                                               ; preds = %2, %71, %2
  %79 = phi ptr [ %4, %2 ], [ %73, %71 ], [ %4, %2 ]
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !126
  %82 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !126
  %84 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !115
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %86, label %93, !prof !249

86:                                               ; preds = %78
  %87 = load i32, ptr %83, align 8
  %88 = and i32 %87, 65535
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !130
  %92 = icmp eq i32 %91, 9
  br i1 %92, label %2, label %93

93:                                               ; preds = %86, %78
  %94 = load i32, ptr %81, align 8
  %95 = and i32 %94, 1073807359
  %96 = icmp eq i32 %95, 1073741861
  br i1 %96, label %97, label %100, !prof !250

97:                                               ; preds = %93
  %98 = tail call ptr @find_base_term(ptr noundef nonnull %81)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %142, !prof !251

100:                                              ; preds = %97, %93
  %101 = phi ptr [ undef, %93 ], [ %98, %97 ]
  %102 = load i32, ptr %83, align 8
  %103 = and i32 %102, 1073807359
  %104 = icmp eq i32 %103, 1073741861
  br i1 %104, label %105, label %109, !prof !252

105:                                              ; preds = %100
  %106 = tail call ptr @find_base_term(ptr noundef nonnull %83)
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, ptr %101, ptr %106
  br i1 %107, label %109, label %142

109:                                              ; preds = %105, %100
  %110 = tail call ptr @find_base_term(ptr noundef nonnull %81)
  %111 = tail call ptr @find_base_term(ptr noundef nonnull %83)
  %112 = icmp eq ptr %110, null
  br i1 %112, label %119, label %113, !prof !253

113:                                              ; preds = %109
  %114 = load i32, ptr %110, align 8
  %115 = trunc i32 %114 to i16
  switch i16 %115, label %119 [
    i16 45, label %142
    i16 44, label %142
    i16 6, label %116
  ], !prof !254

116:                                              ; preds = %113
  %117 = and i32 %114, 16711680
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %142, !prof !255

119:                                              ; preds = %116, %113, %109
  %120 = icmp eq ptr %111, null
  br i1 %120, label %127, label %121, !prof !256

121:                                              ; preds = %119
  %122 = load i32, ptr %111, align 8
  %123 = trunc i32 %122 to i16
  switch i16 %123, label %127 [
    i16 45, label %142
    i16 44, label %142
    i16 6, label %124
  ]

124:                                              ; preds = %121
  %125 = and i32 %122, 16711680
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124, %121, %119
  br label %142

128:                                              ; preds = %2
  %129 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %130 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !126
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 30
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !126
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %129, align 8, !tbaa !126
  br label %2

141:                                              ; preds = %2
  br label %142

142:                                              ; preds = %63, %59, %121, %113, %71, %36, %2, %2, %128, %135, %127, %105, %97, %113, %116, %121, %124, %53, %39, %44, %51, %24, %21, %17, %14, %141
  %143 = phi ptr [ null, %141 ], [ %20, %17 ], [ null, %14 ], [ null, %21 ], [ null, %24 ], [ %52, %51 ], [ %42, %44 ], [ null, %39 ], [ null, %53 ], [ null, %127 ], [ %108, %105 ], [ %98, %97 ], [ %110, %113 ], [ %110, %116 ], [ %111, %121 ], [ %111, %124 ], [ null, %135 ], [ null, %128 ], [ %4, %2 ], [ %4, %2 ], [ null, %36 ], [ null, %71 ], [ %110, %113 ], [ %111, %121 ], [ null, %59 ], [ %66, %63 ]
  ret ptr %143
}

declare ptr @ix86_find_base_term(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @target_default_pointer_address_modes_p() local_unnamed_addr #3

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_addr(ptr noundef readonly %0) local_unnamed_addr #14 !prof !257 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %42, !prof !258

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9, !prof !259

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %7, i64 0, i32 3
  br label %11

11:                                               ; preds = %18, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %18 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !260

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !115
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %27, !prof !261

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.elt_loc_list, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !244
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !130
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %42, label %11, !prof !262, !llvm.loop !263

27:                                               ; preds = %15, %33
  %28 = phi ptr [ %34, %33 ], [ %16, %15 ]
  %29 = getelementptr inbounds %struct.elt_loc_list, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !244
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %42 [
    i16 37, label %33
    i16 43, label %33
  ], !prof !264

33:                                               ; preds = %27, %27
  %34 = load ptr, ptr %28, align 8, !tbaa !115
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !prof !265, !llvm.loop !266

36:                                               ; preds = %33, %15
  %37 = load ptr, ptr %10, align 8, !tbaa !267
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !269

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.elt_loc_list, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !244
  br label %42

42:                                               ; preds = %18, %27, %5, %36, %1, %39
  %43 = phi ptr [ %41, %39 ], [ %0, %1 ], [ %0, %36 ], [ %0, %5 ], [ %30, %27 ], [ %20, %18 ]
  ret ptr %43
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @read_dependence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !270 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 134217728
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !271

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 27
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nonoverlapping_memrefs_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !272 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !273

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !274
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !275

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !274
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi ptr [ %14, %13 ], [ null, %8 ]
  %17 = icmp eq ptr %9, null
  %18 = icmp eq ptr %16, null
  %19 = select i1 %17, i1 true, i1 %18, !prof !276
  br i1 %19, label %610, label %20, !prof !277

20:                                               ; preds = %15
  %21 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #22
  %22 = icmp eq ptr %9, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8, !tbaa !126
  %25 = icmp eq ptr %24, null
  br i1 %25, label %610, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !278
  %29 = icmp eq ptr %28, null
  br i1 %29, label %610, label %30

30:                                               ; preds = %26, %20
  %31 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #22
  %32 = icmp eq ptr %16, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %10, align 8, !tbaa !126
  %35 = icmp eq ptr %34, null
  br i1 %35, label %610, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !278
  %39 = icmp eq ptr %38, null
  br i1 %39, label %610, label %40

40:                                               ; preds = %36, %30
  %41 = load i64, ptr %9, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 41
  br i1 %43, label %44, label %107

44:                                               ; preds = %40
  %45 = load i64, ptr %16, align 8
  %46 = and i64 %45, 65535
  %47 = icmp ne i64 %46, 41
  %48 = load i32, ptr @flag_strict_aliasing, align 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %107, label %51

51:                                               ; preds = %44, %103
  %52 = phi ptr [ %95, %103 ], [ %16, %44 ]
  %53 = phi ptr [ %94, %103 ], [ %9, %44 ]
  br label %54

54:                                               ; preds = %83, %51
  %55 = phi ptr [ %53, %51 ], [ %81, %83 ]
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 0, i32 3
  %57 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !126
  %59 = getelementptr inbounds %struct.tree_decl_minimal, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !126
  %61 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 16
  %62 = load ptr, ptr %61, align 8, !tbaa !126
  br label %63

63:                                               ; preds = %76, %54
  %64 = phi ptr [ %52, %54 ], [ %74, %76 ]
  %65 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %66 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !126
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %67, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !126
  %70 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 16
  %71 = load ptr, ptr %70, align 8, !tbaa !126
  %72 = icmp eq ptr %62, %71
  br i1 %72, label %87, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %65, align 8, !tbaa !126
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 41
  br i1 %79, label %63, label %80, !llvm.loop !279

80:                                               ; preds = %76, %73
  %81 = load ptr, ptr %56, align 8, !tbaa !126
  %82 = icmp eq ptr %81, null
  br i1 %82, label %107, label %83

83:                                               ; preds = %80
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 41
  br i1 %86, label %54, label %107, !llvm.loop !280

87:                                               ; preds = %63
  %88 = load i64, ptr %62, align 8
  %89 = and i64 %88, 65535
  %90 = icmp ne i64 %89, 16
  %91 = icmp eq ptr %58, %67
  %92 = or i1 %91, %90
  br i1 %92, label %93, label %610

93:                                               ; preds = %87
  %94 = load ptr, ptr %56, align 8, !tbaa !126
  %95 = load ptr, ptr %65, align 8, !tbaa !126
  %96 = icmp ne ptr %94, null
  %97 = icmp ne ptr %95, null
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i64, ptr %94, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 41
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, ptr %95, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 41
  br i1 %106, label %51, label %107, !llvm.loop !281

107:                                              ; preds = %99, %93, %103, %80, %83, %44, %40
  %108 = load ptr, ptr %3, align 8, !tbaa !126
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.mem_attrs, ptr %108, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !278
  br label %113

113:                                              ; preds = %107, %110
  %114 = phi ptr [ %112, %110 ], [ null, %107 ]
  %115 = trunc i64 %41 to i16
  switch i16 %115, label %167 [
    i16 41, label %116
    i16 47, label %158
    i16 48, label %158
    i16 49, label %158
  ]

116:                                              ; preds = %113
  %117 = load i64, ptr %16, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 32
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !126
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i16
  switch i16 %124, label %134 [
    i16 10, label %125
    i16 12, label %125
  ]

125:                                              ; preds = %120, %120
  %126 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !126
  %128 = getelementptr inbounds %struct.tree_decl_minimal, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !126
  %130 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !126
  %132 = tail call zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef %129, ptr noundef %131) #22
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %610

134:                                              ; preds = %125, %120, %116
  br label %135

135:                                              ; preds = %134, %140
  %136 = phi ptr [ %138, %140 ], [ %9, %134 ]
  %137 = getelementptr inbounds %struct.tree_exp, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !126
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  %141 = load i64, ptr %138, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 41
  br i1 %143, label %135, label %144, !llvm.loop !282

144:                                              ; preds = %140
  %145 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %142
  %146 = load i32, ptr %145, align 4, !tbaa !130
  %147 = icmp eq i32 %146, 3
  %148 = select i1 %147, ptr %138, ptr null
  br label %149

149:                                              ; preds = %135, %144
  %150 = phi ptr [ %148, %144 ], [ null, %135 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = tail call fastcc ptr @adjust_offset_for_component_ref(ptr noundef nonnull %9, ptr noundef %114)
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi ptr [ %153, %152 ], [ %114, %149 ]
  %156 = phi ptr [ %150, %152 ], [ %9, %149 ]
  %157 = phi i32 [ 1, %152 ], [ 0, %149 ]
  br i1 %151, label %610, label %167

158:                                              ; preds = %113, %113, %113
  %159 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !130
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %610, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !126
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 34
  br i1 %166, label %167, label %610

167:                                              ; preds = %113, %161, %154
  %168 = phi ptr [ %155, %154 ], [ %114, %161 ], [ %114, %113 ]
  %169 = phi ptr [ %156, %154 ], [ %163, %161 ], [ %9, %113 ]
  %170 = phi i32 [ %157, %154 ], [ undef, %161 ], [ undef, %113 ]
  %171 = load ptr, ptr %10, align 8, !tbaa !126
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.mem_attrs, ptr %171, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !278
  br label %176

176:                                              ; preds = %167, %173
  %177 = phi ptr [ %175, %173 ], [ null, %167 ]
  %178 = load i64, ptr %16, align 8
  %179 = trunc i64 %178 to i16
  switch i16 %179, label %233 [
    i16 41, label %180
    i16 47, label %224
    i16 48, label %224
    i16 49, label %224
  ]

180:                                              ; preds = %176
  %181 = load i64, ptr %169, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 32
  br i1 %183, label %184, label %199

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !126
  %187 = load i64, ptr %186, align 8
  %188 = trunc i64 %187 to i16
  switch i16 %188, label %199 [
    i16 10, label %189
    i16 12, label %189
  ]

189:                                              ; preds = %184, %184
  %190 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !126
  %192 = getelementptr inbounds %struct.tree_decl_minimal, ptr %191, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !126
  %194 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !126
  %196 = tail call zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef %193, ptr noundef %195) #22
  %197 = icmp eq i8 %196, 0
  %198 = select i1 %197, i32 %170, i32 1
  br i1 %197, label %199, label %610

199:                                              ; preds = %189, %184, %180
  %200 = phi i32 [ %170, %180 ], [ %170, %184 ], [ %198, %189 ]
  br label %201

201:                                              ; preds = %206, %199
  %202 = phi ptr [ %16, %199 ], [ %204, %206 ]
  %203 = getelementptr inbounds %struct.tree_exp, ptr %202, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !126
  %205 = icmp eq ptr %204, null
  br i1 %205, label %215, label %206

206:                                              ; preds = %201
  %207 = load i64, ptr %204, align 8
  %208 = and i64 %207, 65535
  %209 = icmp eq i64 %208, 41
  br i1 %209, label %201, label %210, !llvm.loop !282

210:                                              ; preds = %206
  %211 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %208
  %212 = load i32, ptr %211, align 4, !tbaa !130
  %213 = icmp eq i32 %212, 3
  %214 = select i1 %213, ptr %204, ptr null
  br label %215

215:                                              ; preds = %201, %210
  %216 = phi ptr [ %214, %210 ], [ null, %201 ]
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = tail call fastcc ptr @adjust_offset_for_component_ref(ptr noundef nonnull %16, ptr noundef %177)
  br label %220

220:                                              ; preds = %215, %218
  %221 = phi ptr [ %219, %218 ], [ %177, %215 ]
  %222 = phi ptr [ %216, %218 ], [ %16, %215 ]
  %223 = phi i32 [ %200, %218 ], [ 0, %215 ]
  br i1 %217, label %610, label %233

224:                                              ; preds = %176, %176, %176
  %225 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !130
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %610, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !126
  %230 = load i64, ptr %229, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 34
  br i1 %232, label %233, label %610

233:                                              ; preds = %176, %227, %220
  %234 = phi ptr [ %221, %220 ], [ %177, %227 ], [ %177, %176 ]
  %235 = phi ptr [ %222, %220 ], [ %229, %227 ], [ %16, %176 ]
  %236 = load i64, ptr %169, align 8
  %237 = and i64 %236, 65535
  %238 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !130
  %240 = icmp eq i32 %239, 3
  br i1 %240, label %241, label %610

241:                                              ; preds = %233
  %242 = load i64, ptr %235, align 8
  %243 = and i64 %242, 65535
  %244 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !130
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %610

247:                                              ; preds = %241
  %248 = icmp eq i64 %237, 33
  %249 = icmp eq i64 %243, 33
  %250 = or i1 %248, %249
  br i1 %250, label %610, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %169, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !126
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  tail call void @make_decl_rtl(ptr noundef nonnull %169) #22
  %256 = load ptr, ptr %252, align 8, !tbaa !126
  br label %257

257:                                              ; preds = %251, %255
  %258 = phi ptr [ %256, %255 ], [ %253, %251 ]
  %259 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %235, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !126
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  tail call void @make_decl_rtl(ptr noundef nonnull %235) #22
  %263 = load ptr, ptr %259, align 8, !tbaa !126
  br label %264

264:                                              ; preds = %257, %262
  %265 = phi ptr [ %263, %262 ], [ %260, %257 ]
  %266 = load i32, ptr %258, align 8
  %267 = and i32 %266, 65535
  %268 = icmp eq i32 %267, 43
  br i1 %268, label %269, label %273

269:                                              ; preds = %264
  %270 = load i32, ptr %265, align 8
  %271 = and i32 %270, 65535
  %272 = icmp eq i32 %271, 43
  br i1 %272, label %276, label %273

273:                                              ; preds = %269, %264
  %274 = tail call i32 @rtx_equal_p(ptr noundef nonnull %258, ptr noundef %265) #22
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %610, label %276

276:                                              ; preds = %273, %269
  %277 = load i32, ptr %258, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 43
  br i1 %279, label %280, label %308

280:                                              ; preds = %276
  %281 = load i32, ptr %265, align 8
  %282 = and i32 %281, 65535
  %283 = icmp eq i32 %282, 43
  br i1 %283, label %284, label %304

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !126
  %287 = icmp eq ptr %286, null
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.mem_attrs, ptr %286, i64 0, i32 5
  %290 = load i8, ptr %289, align 8, !tbaa !283
  %291 = zext i8 %290 to i32
  br label %292

292:                                              ; preds = %284, %288
  %293 = phi i32 [ %291, %288 ], [ 0, %284 ]
  %294 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1, i32 0, i32 0, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !126
  %296 = icmp eq ptr %295, null
  br i1 %296, label %301, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.mem_attrs, ptr %295, i64 0, i32 5
  %299 = load i8, ptr %298, align 8, !tbaa !283
  %300 = zext i8 %299 to i32
  br label %301

301:                                              ; preds = %292, %297
  %302 = phi i32 [ %300, %297 ], [ 0, %292 ]
  %303 = icmp eq i32 %293, %302
  br i1 %303, label %304, label %610

304:                                              ; preds = %301, %280
  br i1 %279, label %305, label %308

305:                                              ; preds = %304
  %306 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !126
  br label %308

308:                                              ; preds = %276, %304, %305
  %309 = phi ptr [ %307, %305 ], [ %258, %304 ], [ %258, %276 ]
  %310 = load i32, ptr %309, align 8
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 49
  br i1 %312, label %313, label %324

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1, i32 0, i32 0, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !126
  %316 = load i32, ptr %315, align 8
  %317 = and i32 %316, 65535
  %318 = icmp eq i32 %317, 30
  br i1 %318, label %319, label %324

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1
  %321 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %322 = load i64, ptr %321, align 8, !tbaa !126
  %323 = load ptr, ptr %320, align 8, !tbaa !126
  br label %324

324:                                              ; preds = %319, %313, %308
  %325 = phi i64 [ %322, %319 ], [ 0, %313 ], [ 0, %308 ]
  %326 = phi ptr [ %323, %319 ], [ %309, %313 ], [ %309, %308 ]
  %327 = load i32, ptr %265, align 8
  %328 = and i32 %327, 65535
  %329 = icmp eq i32 %328, 43
  br i1 %329, label %330, label %333

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !126
  br label %333

333:                                              ; preds = %324, %330
  %334 = phi ptr [ %332, %330 ], [ %265, %324 ]
  %335 = load i32, ptr %334, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 49
  br i1 %337, label %338, label %349

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1, i32 0, i32 0, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !126
  %341 = load i32, ptr %340, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 30
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1
  %346 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1
  %347 = load i64, ptr %346, align 8, !tbaa !126
  %348 = load ptr, ptr %345, align 8, !tbaa !126
  br label %349

349:                                              ; preds = %344, %338, %333
  %350 = phi i64 [ %347, %344 ], [ 0, %338 ], [ 0, %333 ]
  %351 = phi ptr [ %348, %344 ], [ %334, %338 ], [ %334, %333 ]
  %352 = tail call i32 @rtx_equal_p(ptr noundef %326, ptr noundef %351) #22
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %396

354:                                              ; preds = %349
  %355 = load i32, ptr %326, align 8
  %356 = and i32 %355, 65535
  %357 = zext nneg i32 %356 to i64
  %358 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !130
  %360 = icmp eq i32 %359, 9
  br i1 %360, label %361, label %379

361:                                              ; preds = %354
  %362 = load i32, ptr %351, align 8
  %363 = and i32 %362, 65535
  %364 = zext nneg i32 %363 to i64
  %365 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !130
  %367 = icmp eq i32 %366, 9
  br i1 %367, label %610, label %368

368:                                              ; preds = %361
  br i1 %360, label %369, label %379

369:                                              ; preds = %368
  %370 = load i32, ptr %351, align 8
  %371 = and i32 %370, 65535
  %372 = icmp eq i32 %371, 37
  br i1 %372, label %373, label %379

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.rtx_def, ptr %351, i64 0, i32 1
  %375 = load i32, ptr %374, align 8, !tbaa !126
  switch i32 %375, label %376 [
    i32 7, label %610
    i32 20, label %610
    i32 6, label %610
    i32 16, label %610
  ]

376:                                              ; preds = %373
  %377 = add i32 %375, -53
  %378 = icmp ult i32 %377, 5
  br i1 %378, label %610, label %379

379:                                              ; preds = %354, %376, %369, %368
  %380 = load i32, ptr %351, align 8
  %381 = and i32 %380, 65535
  %382 = zext nneg i32 %381 to i64
  %383 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !130
  %385 = icmp eq i32 %384, 9
  %386 = icmp eq i32 %356, 37
  %387 = and i1 %386, %385
  br i1 %387, label %388, label %610

388:                                              ; preds = %379
  %389 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %390 = load i32, ptr %389, align 8, !tbaa !126
  switch i32 %390, label %391 [
    i32 7, label %610
    i32 20, label %610
    i32 6, label %610
    i32 16, label %610
  ]

391:                                              ; preds = %388
  %392 = icmp ugt i32 %390, 52
  br i1 %392, label %393, label %610

393:                                              ; preds = %391
  %394 = icmp ult i32 %390, 58
  %395 = zext i1 %394 to i32
  br label %610

396:                                              ; preds = %349
  %397 = load i32, ptr %258, align 8
  %398 = and i32 %397, 65535
  %399 = icmp eq i32 %398, 43
  br i1 %399, label %407, label %400

400:                                              ; preds = %396
  %401 = lshr i32 %397, 16
  %402 = and i32 %401, 255
  %403 = zext nneg i32 %402 to i64
  %404 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !126
  %406 = zext i8 %405 to i64
  br label %446

407:                                              ; preds = %396
  %408 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %409 = load ptr, ptr %408, align 8, !tbaa !126
  %410 = icmp eq ptr %409, null
  br i1 %410, label %415, label %411

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.mem_attrs, ptr %409, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !284
  %414 = icmp eq ptr %413, null
  br i1 %414, label %446, label %426

415:                                              ; preds = %407
  %416 = lshr i32 %397, 16
  %417 = and i32 %416, 255
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %446, label %419

419:                                              ; preds = %415
  %420 = zext nneg i32 %417 to i64
  %421 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !126
  %423 = zext i8 %422 to i64
  %424 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %423) #22
  %425 = icmp eq ptr %424, null
  br i1 %425, label %446, label %426

426:                                              ; preds = %419, %411
  %427 = load ptr, ptr %408, align 8, !tbaa !126
  %428 = icmp eq ptr %427, null
  br i1 %428, label %432, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.mem_attrs, ptr %427, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !284
  br label %442

432:                                              ; preds = %426
  %433 = load i32, ptr %258, align 8
  %434 = lshr i32 %433, 16
  %435 = and i32 %434, 255
  %436 = icmp ne i32 %435, 1
  tail call void @llvm.assume(i1 %436)
  %437 = zext nneg i32 %435 to i64
  %438 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !126
  %440 = zext i8 %439 to i64
  %441 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %440) #22
  br label %442

442:                                              ; preds = %432, %429
  %443 = phi ptr [ %431, %429 ], [ %441, %432 ]
  %444 = getelementptr inbounds %struct.rtx_def, ptr %443, i64 0, i32 1
  %445 = load i64, ptr %444, align 8, !tbaa !126
  br label %446

446:                                              ; preds = %419, %442, %415, %411, %400
  %447 = phi i64 [ %406, %400 ], [ %445, %442 ], [ -1, %415 ], [ -1, %411 ], [ -1, %419 ]
  %448 = load i32, ptr %265, align 8
  %449 = and i32 %448, 65535
  %450 = icmp eq i32 %449, 43
  br i1 %450, label %458, label %451

451:                                              ; preds = %446
  %452 = lshr i32 %448, 16
  %453 = and i32 %452, 255
  %454 = zext nneg i32 %453 to i64
  %455 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !126
  %457 = zext i8 %456 to i64
  br label %497

458:                                              ; preds = %446
  %459 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1, i32 0, i32 0, i64 1
  %460 = load ptr, ptr %459, align 8, !tbaa !126
  %461 = icmp eq ptr %460, null
  br i1 %461, label %466, label %462

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.mem_attrs, ptr %460, i64 0, i32 2
  %464 = load ptr, ptr %463, align 8, !tbaa !284
  %465 = icmp eq ptr %464, null
  br i1 %465, label %497, label %477

466:                                              ; preds = %458
  %467 = lshr i32 %448, 16
  %468 = and i32 %467, 255
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %497, label %470

470:                                              ; preds = %466
  %471 = zext nneg i32 %468 to i64
  %472 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !126
  %474 = zext i8 %473 to i64
  %475 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %474) #22
  %476 = icmp eq ptr %475, null
  br i1 %476, label %497, label %477

477:                                              ; preds = %470, %462
  %478 = load ptr, ptr %459, align 8, !tbaa !126
  %479 = icmp eq ptr %478, null
  br i1 %479, label %483, label %480

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.mem_attrs, ptr %478, i64 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !284
  br label %493

483:                                              ; preds = %477
  %484 = load i32, ptr %265, align 8
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  %487 = icmp ne i32 %486, 1
  tail call void @llvm.assume(i1 %487)
  %488 = zext nneg i32 %486 to i64
  %489 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !126
  %491 = zext i8 %490 to i64
  %492 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %491) #22
  br label %493

493:                                              ; preds = %483, %480
  %494 = phi ptr [ %482, %480 ], [ %492, %483 ]
  %495 = getelementptr inbounds %struct.rtx_def, ptr %494, i64 0, i32 1
  %496 = load i64, ptr %495, align 8, !tbaa !126
  br label %497

497:                                              ; preds = %470, %493, %466, %462, %451
  %498 = phi i64 [ %457, %451 ], [ %496, %493 ], [ -1, %466 ], [ -1, %462 ], [ -1, %470 ]
  %499 = icmp eq ptr %168, null
  br i1 %499, label %505, label %500

500:                                              ; preds = %497
  %501 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %502 = load i64, ptr %501, align 8, !tbaa !126
  %503 = add nsw i64 %502, %325
  %504 = sub nsw i64 %447, %502
  br label %505

505:                                              ; preds = %500, %497
  %506 = phi i64 [ %503, %500 ], [ %325, %497 ]
  %507 = phi i64 [ %504, %500 ], [ %447, %497 ]
  %508 = icmp eq ptr %234, null
  br i1 %508, label %514, label %509

509:                                              ; preds = %505
  %510 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %511 = load i64, ptr %510, align 8, !tbaa !126
  %512 = add nsw i64 %511, %350
  %513 = sub nsw i64 %498, %511
  br label %514

514:                                              ; preds = %509, %505
  %515 = phi i64 [ %512, %509 ], [ %350, %505 ]
  %516 = phi i64 [ %513, %509 ], [ %498, %505 ]
  %517 = load ptr, ptr %3, align 8, !tbaa !126
  %518 = icmp eq ptr %517, null
  br i1 %518, label %524, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.mem_attrs, ptr %517, i64 0, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !284
  %522 = icmp eq ptr %521, null
  %523 = or i1 %499, %522
  br i1 %523, label %557, label %537

524:                                              ; preds = %514
  %525 = load i32, ptr %0, align 8
  %526 = lshr i32 %525, 16
  %527 = and i32 %526, 255
  %528 = icmp eq i32 %527, 1
  br i1 %528, label %557, label %529

529:                                              ; preds = %524
  %530 = zext nneg i32 %527 to i64
  %531 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !126
  %533 = zext i8 %532 to i64
  %534 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %533) #22
  %535 = icmp eq ptr %534, null
  %536 = or i1 %499, %535
  br i1 %536, label %557, label %537

537:                                              ; preds = %529, %519
  %538 = load ptr, ptr %3, align 8, !tbaa !126
  %539 = icmp eq ptr %538, null
  br i1 %539, label %543, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds %struct.mem_attrs, ptr %538, i64 0, i32 2
  %542 = load ptr, ptr %541, align 8, !tbaa !284
  br label %553

543:                                              ; preds = %537
  %544 = load i32, ptr %0, align 8
  %545 = lshr i32 %544, 16
  %546 = and i32 %545, 255
  %547 = icmp ne i32 %546, 1
  tail call void @llvm.assume(i1 %547)
  %548 = zext nneg i32 %546 to i64
  %549 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %548
  %550 = load i8, ptr %549, align 1, !tbaa !126
  %551 = zext i8 %550 to i64
  %552 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %551) #22
  br label %553

553:                                              ; preds = %543, %540
  %554 = phi ptr [ %542, %540 ], [ %552, %543 ]
  %555 = getelementptr inbounds %struct.rtx_def, ptr %554, i64 0, i32 1
  %556 = load i64, ptr %555, align 8, !tbaa !126
  br label %557

557:                                              ; preds = %519, %529, %524, %553
  %558 = phi i64 [ %556, %553 ], [ %507, %519 ], [ %507, %529 ], [ %507, %524 ]
  %559 = load ptr, ptr %10, align 8, !tbaa !126
  %560 = icmp eq ptr %559, null
  br i1 %560, label %566, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.mem_attrs, ptr %559, i64 0, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !284
  %564 = icmp eq ptr %563, null
  %565 = or i1 %508, %564
  br i1 %565, label %599, label %579

566:                                              ; preds = %557
  %567 = load i32, ptr %1, align 8
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %599, label %571

571:                                              ; preds = %566
  %572 = zext nneg i32 %569 to i64
  %573 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !126
  %575 = zext i8 %574 to i64
  %576 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %575) #22
  %577 = icmp eq ptr %576, null
  %578 = or i1 %508, %577
  br i1 %578, label %599, label %579

579:                                              ; preds = %571, %561
  %580 = load ptr, ptr %10, align 8, !tbaa !126
  %581 = icmp eq ptr %580, null
  br i1 %581, label %585, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.mem_attrs, ptr %580, i64 0, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !284
  br label %595

585:                                              ; preds = %579
  %586 = load i32, ptr %1, align 8
  %587 = lshr i32 %586, 16
  %588 = and i32 %587, 255
  %589 = icmp ne i32 %588, 1
  tail call void @llvm.assume(i1 %589)
  %590 = zext nneg i32 %588 to i64
  %591 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %590
  %592 = load i8, ptr %591, align 1, !tbaa !126
  %593 = zext i8 %592 to i64
  %594 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %593) #22
  br label %595

595:                                              ; preds = %585, %582
  %596 = phi ptr [ %584, %582 ], [ %594, %585 ]
  %597 = getelementptr inbounds %struct.rtx_def, ptr %596, i64 0, i32 1
  %598 = load i64, ptr %597, align 8, !tbaa !126
  br label %599

599:                                              ; preds = %561, %571, %566, %595
  %600 = phi i64 [ %598, %595 ], [ %516, %561 ], [ %516, %571 ], [ %516, %566 ]
  %601 = icmp sgt i64 %506, %515
  %602 = tail call i64 @llvm.smin.i64(i64 %506, i64 %515)
  %603 = tail call i64 @llvm.smax.i64(i64 %506, i64 %515)
  %604 = select i1 %601, i64 %600, i64 %558
  %605 = icmp sgt i64 %604, -1
  %606 = add nsw i64 %604, %602
  %607 = icmp sge i64 %603, %606
  %608 = select i1 %605, i1 %607, i1 false
  %609 = zext i1 %608 to i32
  br label %610

610:                                              ; preds = %87, %388, %388, %388, %373, %373, %373, %301, %227, %224, %220, %161, %154, %36, %26, %388, %376, %373, %361, %393, %391, %379, %273, %247, %233, %241, %158, %23, %33, %15, %125, %189, %599
  %611 = phi i32 [ %609, %599 ], [ %198, %189 ], [ 1, %125 ], [ 0, %15 ], [ 0, %33 ], [ 0, %23 ], [ 0, %158 ], [ 0, %241 ], [ 0, %233 ], [ 1, %247 ], [ 1, %273 ], [ 1, %361 ], [ 0, %379 ], [ 0, %391 ], [ %395, %393 ], [ 1, %373 ], [ 1, %376 ], [ 1, %388 ], [ 0, %26 ], [ 0, %36 ], [ %157, %154 ], [ 0, %161 ], [ %223, %220 ], [ 0, %224 ], [ 0, %227 ], [ 0, %301 ], [ 1, %373 ], [ 1, %373 ], [ 1, %373 ], [ 1, %388 ], [ 1, %388 ], [ 1, %388 ], [ 1, %87 ]
  ret i32 %611
}

declare ptr @get_spill_slot_decl(i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @adjust_offset_for_component_ref(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #11 !prof !114 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !126
  br label %7

7:                                                ; preds = %30, %4
  %8 = phi i64 [ %6, %4 ], [ %26, %30 ]
  %9 = phi ptr [ %0, %4 ], [ %27, %30 ]
  %10 = tail call ptr @component_ref_field_offset(ptr noundef %9) #22
  %11 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = tail call i32 @host_integerp(ptr noundef %10, i32 noundef 1) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %17 = tail call i64 @tree_low_cst(ptr noundef %10, i32 noundef 1) #22
  %18 = getelementptr inbounds %struct.tree_field_decl, ptr %12, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = tail call i64 @tree_low_cst(ptr noundef %19, i32 noundef 1) #22
  %21 = sdiv i64 %20, 8
  %22 = add i64 %17, %8
  %23 = add i64 %22, %21
  %24 = load ptr, ptr %16, align 8, !tbaa !126
  br label %25

25:                                               ; preds = %7, %15
  %26 = phi i64 [ %23, %15 ], [ %8, %7 ]
  %27 = phi ptr [ %24, %15 ], [ %9, %7 ]
  br i1 %14, label %36, label %28

28:                                               ; preds = %25
  %29 = icmp eq ptr %27, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = load i64, ptr %27, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 41
  br i1 %33, label %7, label %34, !llvm.loop !285

34:                                               ; preds = %28, %30
  %35 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %26) #22
  br label %36

36:                                               ; preds = %25, %2, %34
  %37 = phi ptr [ %35, %34 ], [ null, %2 ], [ null, %25 ]
  ret ptr %37
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @true_dependence(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #12 !prof !286 {
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = alloca %struct.ao_ref_s, align 8
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !287

10:                                               ; preds = %4
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 134217728
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %446

14:                                               ; preds = %10, %4
  %15 = and i32 %7, 16711680
  %16 = icmp eq i32 %15, 65536
  br i1 %16, label %17, label %23, !prof !288

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 38
  br i1 %22, label %446, label %23

23:                                               ; preds = %17, %14
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 16711680
  %26 = icmp eq i32 %25, 65536
  br i1 %26, label %27, label %33, !prof !289

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 38
  br i1 %32, label %446, label %33, !prof !290

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %35 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38, !prof !291

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !177
  br label %41

41:                                               ; preds = %33, %38
  %42 = phi i32 [ %40, %38 ], [ 0, %33 ]
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %446, label %44, !prof !292

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !126
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !293

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !177
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi i32 [ %51, %49 ], [ 0, %44 ]
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %446, label %55, !prof !292

55:                                               ; preds = %52
  %56 = and i32 %7, 67108864
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %446, !prof !294

58:                                               ; preds = %55
  br i1 %48, label %63, label %59, !prof !293

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 5
  %61 = load i8, ptr %60, align 8, !tbaa !283
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %58, %59
  %64 = phi i32 [ %62, %59 ], [ 0, %58 ]
  br i1 %37, label %69, label %65, !prof !291

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %36, i64 0, i32 5
  %67 = load i8, ptr %66, align 8, !tbaa !283
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %63, %65
  %70 = phi i32 [ %68, %65 ], [ 0, %63 ]
  %71 = icmp eq i32 %64, %70
  br i1 %71, label %72, label %446, !prof !294

72:                                               ; preds = %69
  %73 = icmp eq i32 %1, 0
  %74 = lshr i32 %24, 16
  %75 = and i32 %74, 255
  %76 = select i1 %73, i32 %75, i32 %1, !prof !295
  %77 = load ptr, ptr %34, align 8, !tbaa !126
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %116, !prof !258

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !126
  %84 = icmp eq ptr %83, null
  br i1 %84, label %116, label %85, !prof !259

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.cselib_val_struct, ptr %83, i64 0, i32 3
  br label %87

87:                                               ; preds = %94, %85
  %88 = phi ptr [ %86, %85 ], [ %89, %94 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !115
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94, !prof !260

91:                                               ; preds = %87
  %92 = load ptr, ptr %86, align 8, !tbaa !115
  %93 = icmp eq ptr %92, null
  br i1 %93, label %116, label %103, !prof !261

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.elt_loc_list, ptr %89, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !244
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !130
  %102 = icmp eq i32 %101, 9
  br i1 %102, label %116, label %87, !prof !262, !llvm.loop !263

103:                                              ; preds = %91, %109
  %104 = phi ptr [ %110, %109 ], [ %92, %91 ]
  %105 = getelementptr inbounds %struct.elt_loc_list, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !244
  %107 = load i32, ptr %106, align 8
  %108 = trunc i32 %107 to i16
  switch i16 %108, label %116 [
    i16 37, label %109
    i16 43, label %109
  ], !prof !264

109:                                              ; preds = %103, %103
  %110 = load ptr, ptr %104, align 8, !tbaa !115
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %103, !prof !265, !llvm.loop !266

112:                                              ; preds = %109
  br i1 %93, label %116, label %113, !prof !269

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.elt_loc_list, ptr %92, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !244
  br label %116

116:                                              ; preds = %94, %103, %91, %72, %81, %112, %113
  %117 = phi ptr [ %115, %113 ], [ %77, %72 ], [ %77, %112 ], [ %77, %81 ], [ %77, %91 ], [ %106, %103 ], [ %96, %94 ]
  %118 = load ptr, ptr %45, align 8, !tbaa !126
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %157, !prof !258

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !126
  %125 = icmp eq ptr %124, null
  br i1 %125, label %157, label %126, !prof !259

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.cselib_val_struct, ptr %124, i64 0, i32 3
  br label %128

128:                                              ; preds = %135, %126
  %129 = phi ptr [ %127, %126 ], [ %130, %135 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !115
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %135, !prof !260

132:                                              ; preds = %128
  %133 = load ptr, ptr %127, align 8, !tbaa !115
  %134 = icmp eq ptr %133, null
  br i1 %134, label %157, label %144, !prof !261

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.elt_loc_list, ptr %130, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !244
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !130
  %143 = icmp eq i32 %142, 9
  br i1 %143, label %157, label %128, !prof !262, !llvm.loop !263

144:                                              ; preds = %132, %150
  %145 = phi ptr [ %151, %150 ], [ %133, %132 ]
  %146 = getelementptr inbounds %struct.elt_loc_list, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !244
  %148 = load i32, ptr %147, align 8
  %149 = trunc i32 %148 to i16
  switch i16 %149, label %157 [
    i16 37, label %150
    i16 43, label %150
  ], !prof !264

150:                                              ; preds = %144, %144
  %151 = load ptr, ptr %145, align 8, !tbaa !115
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %144, !prof !265, !llvm.loop !266

153:                                              ; preds = %150
  br i1 %134, label %157, label %154, !prof !269

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.elt_loc_list, ptr %133, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !244
  br label %157

157:                                              ; preds = %135, %144, %132, %116, %122, %153, %154
  %158 = phi ptr [ %156, %154 ], [ %118, %116 ], [ %118, %153 ], [ %118, %122 ], [ %118, %132 ], [ %147, %144 ], [ %137, %135 ]
  %159 = tail call ptr @find_base_term(ptr noundef %117)
  %160 = icmp eq ptr %159, null
  br i1 %160, label %167, label %161, !prof !296

161:                                              ; preds = %157
  %162 = load i32, ptr %159, align 8
  %163 = trunc i32 %162 to i16
  switch i16 %163, label %167 [
    i16 44, label %446
    i16 45, label %164
  ], !prof !297

164:                                              ; preds = %161
  %165 = and i32 %162, 67108864
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %446, !prof !298

167:                                              ; preds = %161, %164, %157
  %168 = load i32, ptr %2, align 8
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  %171 = tail call ptr @find_base_term(ptr noundef %117)
  %172 = tail call ptr @find_base_term(ptr noundef %158)
  %173 = icmp eq ptr %171, null
  br i1 %173, label %174, label %186, !prof !299

174:                                              ; preds = %167
  %175 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !130
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177, !prof !300

177:                                              ; preds = %174
  %178 = tail call ptr @canon_rtx(ptr noundef %117)
  %179 = icmp eq ptr %178, %117
  br i1 %179, label %183, label %180, !prof !301

180:                                              ; preds = %177
  %181 = tail call ptr @find_base_term(ptr noundef %178)
  %182 = icmp ne ptr %181, null
  br label %183

183:                                              ; preds = %180, %177, %174
  %184 = phi ptr [ null, %177 ], [ null, %174 ], [ %181, %180 ]
  %185 = phi i1 [ false, %177 ], [ false, %174 ], [ %182, %180 ]
  br i1 %185, label %186, label %284, !prof !300

186:                                              ; preds = %183, %167
  %187 = phi ptr [ %184, %183 ], [ %171, %167 ]
  %188 = icmp eq ptr %172, null
  br i1 %188, label %189, label %201, !prof !302

189:                                              ; preds = %186
  %190 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !130
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %192, !prof !303

192:                                              ; preds = %189
  %193 = tail call ptr @canon_rtx(ptr noundef %158)
  %194 = icmp eq ptr %193, %158
  br i1 %194, label %198, label %195, !prof !304

195:                                              ; preds = %192
  %196 = tail call ptr @find_base_term(ptr noundef %193)
  %197 = icmp ne ptr %196, null
  br label %198

198:                                              ; preds = %195, %192, %189
  %199 = phi ptr [ null, %192 ], [ null, %189 ], [ %196, %195 ]
  %200 = phi i1 [ false, %192 ], [ false, %189 ], [ %197, %195 ]
  br i1 %200, label %201, label %284, !prof !303

201:                                              ; preds = %198, %186
  %202 = phi ptr [ %199, %198 ], [ %172, %186 ]
  %203 = tail call i32 @rtx_equal_p(ptr noundef %187, ptr noundef %202) #22
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %284, !prof !305

205:                                              ; preds = %201
  %206 = load i32, ptr %117, align 8
  %207 = and i32 %206, 65535
  %208 = icmp eq i32 %207, 61
  br i1 %208, label %209, label %233, !prof !306

209:                                              ; preds = %205
  %210 = load i32, ptr %158, align 8
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %211, 61
  br i1 %212, label %284, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !126
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 30
  br i1 %218, label %219, label %284

219:                                              ; preds = %213
  %220 = zext i32 %76 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !126
  %223 = icmp eq i8 %222, 0
  %224 = zext i8 %222 to i64
  %225 = select i1 %223, i64 %220, i64 %224
  %226 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !126
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !126
  %231 = sub nsw i64 0, %230
  %232 = icmp slt i64 %228, %231
  br i1 %232, label %284, label %233

233:                                              ; preds = %219, %205
  %234 = load i32, ptr %158, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 61
  br i1 %236, label %237, label %257, !prof !306

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1, i32 0, i32 0, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !126
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 30
  br i1 %242, label %243, label %284

243:                                              ; preds = %237
  %244 = zext nneg i32 %170 to i64
  %245 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !126
  %247 = icmp eq i8 %246, 0
  %248 = zext i8 %246 to i64
  %249 = select i1 %247, i64 %244, i64 %248
  %250 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !126
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !126
  %255 = sub nsw i64 0, %254
  %256 = icmp slt i64 %252, %255
  br i1 %256, label %284, label %257

257:                                              ; preds = %243, %233
  %258 = load i32, ptr %187, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 6
  br i1 %260, label %265, label %261, !prof !307

261:                                              ; preds = %257
  %262 = load i32, ptr %202, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 6
  br i1 %264, label %265, label %284, !prof !308

265:                                              ; preds = %261, %257
  %266 = and i32 %258, 16711680
  %267 = and i32 %258, 16777215
  %268 = icmp eq i32 %267, 1048582
  br i1 %268, label %284, label %269, !prof !309

269:                                              ; preds = %265
  %270 = load i32, ptr %202, align 8
  %271 = and i32 %270, 16711680
  %272 = and i32 %270, 16777215
  %273 = icmp eq i32 %272, 1048582
  br i1 %273, label %284, label %274, !prof !310

274:                                              ; preds = %269
  %275 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !130
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %274
  %278 = icmp sgt i32 %275, 1
  br i1 %278, label %284, label %279

279:                                              ; preds = %277
  %280 = icmp eq i32 %266, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %279
  %282 = icmp ne i32 %271, 0
  %283 = zext i1 %282 to i32
  br label %284

284:                                              ; preds = %183, %198, %201, %209, %213, %219, %237, %243, %261, %265, %269, %274, %277, %279, %281
  %285 = phi i32 [ 1, %201 ], [ 1, %209 ], [ 1, %219 ], [ 1, %213 ], [ 1, %243 ], [ 1, %237 ], [ 0, %269 ], [ 1, %274 ], [ 0, %277 ], [ 1, %279 ], [ %283, %281 ], [ 1, %183 ], [ 1, %198 ], [ 0, %261 ], [ 0, %265 ]
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %446, label %287, !prof !311

287:                                              ; preds = %284
  %288 = tail call ptr @canon_rtx(ptr noundef %117)
  %289 = tail call ptr @canon_rtx(ptr noundef %158)
  %290 = zext i32 %76 to i64
  %291 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !126
  %293 = zext i8 %292 to i32
  %294 = load i32, ptr %2, align 8
  %295 = lshr i32 %294, 16
  %296 = and i32 %295, 255
  %297 = zext nneg i32 %296 to i64
  %298 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !126
  %300 = zext i8 %299 to i32
  %301 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %293, ptr noundef %289, i32 noundef %300, ptr noundef %288, i64 noundef 0)
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %446, !prof !312

303:                                              ; preds = %287
  %304 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %321, !prof !313

306:                                              ; preds = %303
  %307 = load ptr, ptr %35, align 8, !tbaa !126
  %308 = icmp eq ptr %307, null
  br i1 %308, label %313, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.mem_attrs, ptr %307, i64 0, i32 3
  %311 = load i32, ptr %310, align 8, !tbaa !177
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %309, %306
  %314 = load ptr, ptr %46, align 8, !tbaa !126
  %315 = icmp eq ptr %314, null
  br i1 %315, label %321, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.mem_attrs, ptr %314, i64 0, i32 3
  %318 = load i32, ptr %317, align 8, !tbaa !177
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %316, %309
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @.str.1) #22
  br label %321

321:                                              ; preds = %316, %320, %313, %303
  %322 = load ptr, ptr %35, align 8, !tbaa !126
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324, !prof !313

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.mem_attrs, ptr %322, i64 0, i32 3
  %326 = load i32, ptr %325, align 8, !tbaa !177
  br label %327

327:                                              ; preds = %324, %321
  %328 = phi i32 [ %326, %324 ], [ 0, %321 ]
  %329 = load ptr, ptr %46, align 8, !tbaa !126
  %330 = icmp eq ptr %329, null
  br i1 %330, label %334, label %331, !prof !314

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.mem_attrs, ptr %329, i64 0, i32 3
  %333 = load i32, ptr %332, align 8, !tbaa !177
  br label %334

334:                                              ; preds = %327, %331
  %335 = phi i32 [ %333, %331 ], [ 0, %327 ]
  %336 = icmp eq i32 %328, 0
  %337 = icmp eq i32 %335, 0
  %338 = or i1 %336, %337
  %339 = icmp eq i32 %328, %335
  %340 = or i1 %339, %338
  br i1 %340, label %373, label %341, !prof !141

341:                                              ; preds = %334
  %342 = load ptr, ptr @alias_sets, align 8
  %343 = zext i32 %328 to i64
  %344 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %342, i64 0, i32 2, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !115
  %346 = icmp eq ptr %345, null
  br i1 %346, label %357, label %347, !prof !142

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.alias_set_entry_d, ptr %345, i64 0, i32 1
  %349 = load i32, ptr %348, align 4, !tbaa !136
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %373, !prof !143

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.alias_set_entry_d, ptr %345, i64 0, i32 2
  %353 = load ptr, ptr %352, align 8, !tbaa !138
  %354 = sext i32 %335 to i64
  %355 = tail call ptr @splay_tree_lookup(ptr noundef %353, i64 noundef %354) #22
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %373, !prof !143

357:                                              ; preds = %351, %341
  %358 = load ptr, ptr @alias_sets, align 8
  %359 = zext i32 %335 to i64
  %360 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %358, i64 0, i32 2, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !115
  %362 = icmp eq ptr %361, null
  br i1 %362, label %446, label %363, !prof !144

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.alias_set_entry_d, ptr %361, i64 0, i32 1
  %365 = load i32, ptr %364, align 4, !tbaa !136
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %373, !prof !145

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.alias_set_entry_d, ptr %361, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !138
  %370 = sext i32 %328 to i64
  %371 = tail call ptr @splay_tree_lookup(ptr noundef %369, i64 noundef %370) #22
  %372 = icmp eq ptr %371, null
  br i1 %372, label %446, label %373, !prof !146

373:                                              ; preds = %367, %363, %351, %347, %334
  %374 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %446, !prof !315

376:                                              ; preds = %373
  %377 = load ptr, ptr %34, align 8, !tbaa !126
  %378 = load i32, ptr %377, align 8
  %379 = and i32 %378, 65535
  %380 = icmp eq i32 %379, 61
  %381 = icmp eq i32 %76, 14
  %382 = or i1 %381, %380
  br i1 %382, label %446, label %383, !prof !313

383:                                              ; preds = %376
  %384 = load i32, ptr %289, align 8
  %385 = and i32 %384, 65535
  %386 = icmp eq i32 %385, 61
  %387 = icmp eq i32 %76, 1
  %388 = or i1 %387, %386
  br i1 %388, label %446, label %389, !prof !313

389:                                              ; preds = %383
  %390 = load i32, ptr %2, align 8
  %391 = and i32 %390, 16711680
  %392 = icmp eq i32 %391, 65536
  br i1 %392, label %446, label %393, !prof !313

393:                                              ; preds = %389
  %394 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %435, label %396, !prof !316

396:                                              ; preds = %393
  %397 = load ptr, ptr %35, align 8, !tbaa !126
  %398 = icmp eq ptr %397, null
  br i1 %398, label %415, label %399, !prof !316

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.mem_attrs, ptr %397, i64 0, i32 3
  %401 = load i32, ptr %400, align 8, !tbaa !177
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %415, label %403, !prof !317

403:                                              ; preds = %399
  %404 = load i32, ptr %0, align 8
  %405 = icmp sgt i32 %404, -1
  br i1 %405, label %415, label %406, !prof !318

406:                                              ; preds = %403
  %407 = and i32 %390, 268435456
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %406
  %410 = tail call zeroext i8 %3(ptr noundef nonnull %289, i8 noundef zeroext 1) #22
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %409
  %413 = tail call zeroext i8 %3(ptr noundef %288, i8 noundef zeroext 1) #22
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %446

415:                                              ; preds = %412, %409, %406, %403, %399, %396
  %416 = load ptr, ptr %46, align 8, !tbaa !126
  %417 = icmp eq ptr %416, null
  br i1 %417, label %435, label %418, !prof !319

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.mem_attrs, ptr %416, i64 0, i32 3
  %420 = load i32, ptr %419, align 8, !tbaa !177
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %435, label %422, !prof !320

422:                                              ; preds = %418
  %423 = load i32, ptr %0, align 8
  %424 = and i32 %423, 268435456
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %435, label %426, !prof !321

426:                                              ; preds = %422
  %427 = load i32, ptr %2, align 8
  %428 = icmp sgt i32 %427, -1
  br i1 %428, label %435, label %429, !prof !322

429:                                              ; preds = %426
  %430 = tail call zeroext i8 %3(ptr noundef nonnull %289, i8 noundef zeroext 1) #22
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %429
  %433 = tail call zeroext i8 %3(ptr noundef %288, i8 noundef zeroext 1) #22
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %446, label %435

435:                                              ; preds = %415, %418, %422, %426, %429, %432, %393
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #22
  %436 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %5, ptr noundef nonnull %2), !range !323
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %444, label %438, !prof !324

438:                                              ; preds = %435
  %439 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %6, ptr noundef nonnull %0), !range !323
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %444, label %441, !prof !325

441:                                              ; preds = %438
  %442 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #22
  %443 = zext i8 %442 to i32
  br label %444

444:                                              ; preds = %435, %438, %441
  %445 = phi i32 [ %443, %441 ], [ 1, %438 ], [ 1, %435 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #22
  br label %446

446:                                              ; preds = %357, %367, %432, %412, %164, %161, %41, %389, %383, %376, %373, %287, %284, %69, %55, %52, %27, %17, %10, %444
  %447 = phi i32 [ %445, %444 ], [ 1, %10 ], [ 1, %17 ], [ 1, %27 ], [ 1, %52 ], [ 0, %55 ], [ 1, %69 ], [ 0, %284 ], [ %301, %287 ], [ 0, %373 ], [ 1, %376 ], [ 1, %383 ], [ 1, %389 ], [ 1, %41 ], [ 0, %161 ], [ 0, %164 ], [ 0, %412 ], [ 0, %432 ], [ 0, %367 ], [ 0, %357 ]
  ret i32 %447
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @memrefs_conflict_p(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #12 !prof !326 !PGOFuncName !327 {
  br label %6

6:                                                ; preds = %383, %392, %387, %345, %324, %296, %244, %5
  %7 = phi i32 [ %0, %5 ], [ %7, %244 ], [ %301, %296 ], [ %325, %324 ], [ %7, %345 ], [ %7, %387 ], [ %7, %392 ], [ %7, %383 ]
  %8 = phi ptr [ %1, %5 ], [ %122, %244 ], [ %271, %296 ], [ %327, %324 ], [ %122, %345 ], [ %386, %387 ], [ %122, %392 ], [ %386, %383 ]
  %9 = phi i32 [ %2, %5 ], [ %9, %244 ], [ %304, %296 ], [ %9, %324 ], [ %346, %345 ], [ %9, %387 ], [ %9, %392 ], [ %9, %383 ]
  %10 = phi ptr [ %3, %5 ], [ %246, %244 ], [ %273, %296 ], [ %153, %324 ], [ %348, %345 ], [ %390, %387 ], [ %395, %392 ], [ %153, %383 ]
  %11 = phi i64 [ %4, %5 ], [ %249, %244 ], [ %305, %296 ], [ %11, %324 ], [ %11, %345 ], [ %11, %387 ], [ %11, %392 ], [ %11, %383 ]
  %12 = load i32, ptr %8, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %50, !prof !328

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19, !prof !259

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cselib_val_struct, ptr %17, i64 0, i32 3
  br label %21

21:                                               ; preds = %28, %19
  %22 = phi ptr [ %20, %19 ], [ %23, %28 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28, !prof !260

25:                                               ; preds = %21
  %26 = load ptr, ptr %20, align 8, !tbaa !115
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %37, !prof !261

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.elt_loc_list, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !244
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !130
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %50, label %21, !prof !262, !llvm.loop !263

37:                                               ; preds = %25, %43
  %38 = phi ptr [ %44, %43 ], [ %26, %25 ]
  %39 = getelementptr inbounds %struct.elt_loc_list, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !244
  %41 = load i32, ptr %40, align 8
  %42 = trunc i32 %41 to i16
  switch i16 %42, label %50 [
    i16 37, label %43
    i16 43, label %43
  ], !prof !264

43:                                               ; preds = %37, %37
  %44 = load ptr, ptr %38, align 8, !tbaa !115
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %37, !prof !265, !llvm.loop !266

46:                                               ; preds = %43
  br i1 %27, label %50, label %47, !prof !269

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.elt_loc_list, ptr %26, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !244
  br label %50

50:                                               ; preds = %28, %37, %47, %46, %15, %25, %6
  %51 = phi ptr [ %8, %6 ], [ %49, %47 ], [ %8, %46 ], [ %8, %15 ], [ %8, %25 ], [ %40, %37 ], [ %30, %28 ]
  %52 = load i32, ptr %10, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %90, !prof !329

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !126
  %58 = icmp eq ptr %57, null
  br i1 %58, label %90, label %59, !prof !259

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cselib_val_struct, ptr %57, i64 0, i32 3
  br label %61

61:                                               ; preds = %68, %59
  %62 = phi ptr [ %60, %59 ], [ %63, %68 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !115
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68, !prof !260

65:                                               ; preds = %61
  %66 = load ptr, ptr %60, align 8, !tbaa !115
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %77, !prof !261

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.elt_loc_list, ptr %63, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !244
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !130
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %90, label %61, !prof !262, !llvm.loop !263

77:                                               ; preds = %65, %83
  %78 = phi ptr [ %84, %83 ], [ %66, %65 ]
  %79 = getelementptr inbounds %struct.elt_loc_list, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !244
  %81 = load i32, ptr %80, align 8
  %82 = trunc i32 %81 to i16
  switch i16 %82, label %90 [
    i16 37, label %83
    i16 43, label %83
  ], !prof !264

83:                                               ; preds = %77, %77
  %84 = load ptr, ptr %78, align 8, !tbaa !115
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %77, !prof !265, !llvm.loop !266

86:                                               ; preds = %83
  br i1 %67, label %90, label %87, !prof !269

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.elt_loc_list, ptr %66, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !244
  br label %90

90:                                               ; preds = %68, %77, %87, %86, %55, %65, %50
  %91 = phi ptr [ %10, %50 ], [ %89, %87 ], [ %10, %86 ], [ %10, %55 ], [ %10, %65 ], [ %80, %77 ], [ %70, %68 ]
  %92 = load i32, ptr %51, align 8
  %93 = trunc i32 %92 to i16
  switch i16 %93, label %121 [
    i16 121, label %94
    i16 122, label %97
    i16 75, label %104
    i16 74, label %100
    i16 77, label %102
    i16 76, label %103
  ], !prof !330

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !126
  br label %121

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !126
  br label %121

100:                                              ; preds = %90
  %101 = sub nsw i32 0, %7
  br label %104

102:                                              ; preds = %90
  br label %104

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %90, %103, %102, %100
  %105 = phi i32 [ 0, %103 ], [ 0, %102 ], [ %101, %100 ], [ %7, %90 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %115, label %107, !prof !331

107:                                              ; preds = %104
  %108 = lshr i32 %92, 16
  %109 = and i32 %108, 255
  %110 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !126
  %112 = sext i32 %105 to i64
  %113 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %112) #22
  %114 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %109, ptr noundef %111, ptr noundef %113) #22
  br label %118

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !126
  br label %118

118:                                              ; preds = %115, %107
  %119 = phi ptr [ %114, %107 ], [ %117, %115 ]
  %120 = tail call ptr @canon_rtx(ptr noundef %119)
  br label %121

121:                                              ; preds = %118, %90, %97, %94
  %122 = phi ptr [ %96, %94 ], [ %99, %97 ], [ %120, %118 ], [ %51, %90 ]
  %123 = load i32, ptr %91, align 8
  %124 = trunc i32 %123 to i16
  switch i16 %124, label %152 [
    i16 121, label %125
    i16 122, label %128
    i16 75, label %135
    i16 74, label %131
    i16 77, label %133
    i16 76, label %134
  ], !prof !330

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !126
  br label %152

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !126
  br label %152

131:                                              ; preds = %121
  %132 = sub nsw i32 0, %9
  br label %135

133:                                              ; preds = %121
  br label %135

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %121, %134, %133, %131
  %136 = phi i32 [ 0, %134 ], [ 0, %133 ], [ %132, %131 ], [ %9, %121 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138, !prof !331

138:                                              ; preds = %135
  %139 = lshr i32 %123, 16
  %140 = and i32 %139, 255
  %141 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !126
  %143 = sext i32 %136 to i64
  %144 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %143) #22
  %145 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %140, ptr noundef %142, ptr noundef %144) #22
  br label %149

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !126
  br label %149

149:                                              ; preds = %146, %138
  %150 = phi ptr [ %145, %138 ], [ %148, %146 ]
  %151 = tail call ptr @canon_rtx(ptr noundef %150)
  br label %152

152:                                              ; preds = %149, %121, %128, %125
  %153 = phi ptr [ %127, %125 ], [ %130, %128 ], [ %151, %149 ], [ %91, %121 ]
  %154 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %122, ptr noundef %153), !range !332
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %172, label %156, !prof !333

156:                                              ; preds = %152
  %157 = icmp slt i32 %7, 1
  %158 = icmp slt i32 %9, 1
  %159 = or i1 %157, %158
  br i1 %159, label %420, label %160, !prof !334

160:                                              ; preds = %156
  %161 = icmp sgt i64 %11, -1
  %162 = zext nneg i32 %7 to i64
  %163 = icmp sgt i64 %162, %11
  %164 = select i1 %161, i1 %163, i1 false, !prof !335
  br i1 %164, label %420, label %165, !prof !336

165:                                              ; preds = %160
  %166 = icmp slt i64 %11, 0
  %167 = zext nneg i32 %9 to i64
  %168 = add nsw i64 %167, %11
  %169 = icmp sgt i64 %168, 0
  %170 = select i1 %166, i1 %169, i1 false, !prof !337
  %171 = zext i1 %170 to i32
  br label %420

172:                                              ; preds = %152
  %173 = load i32, ptr %122, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 49
  br i1 %175, label %176, label %234, !prof !338

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !126
  %179 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !126
  %181 = load i32, ptr %153, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 49
  br i1 %183, label %184, label %222, !prof !339

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !126
  %187 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !126
  %189 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %180, ptr noundef %188), !range !332
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191, !prof !340

191:                                              ; preds = %184
  %192 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %7, ptr noundef %178, i32 noundef %9, ptr noundef %186, i64 noundef %11)
  br label %231

193:                                              ; preds = %184
  %194 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %178, ptr noundef %186), !range !332
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196, !prof !341

196:                                              ; preds = %193
  %197 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %7, ptr noundef %180, i32 noundef %9, ptr noundef %188, i64 noundef %11)
  br label %231

198:                                              ; preds = %193
  %199 = load i32, ptr %180, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 30
  %202 = load i32, ptr %188, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 30
  br i1 %201, label %205, label %216, !prof !342

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.rtx_def, ptr %180, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !126
  %208 = sub i64 %11, %207
  br i1 %204, label %209, label %214, !prof !342

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !126
  %212 = add nsw i64 %208, %211
  %213 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %7, ptr noundef %178, i32 noundef %9, ptr noundef %186, i64 noundef %212)
  br label %231

214:                                              ; preds = %205
  %215 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %7, ptr noundef %178, i32 noundef %9, ptr noundef nonnull %153, i64 noundef %208)
  br label %231

216:                                              ; preds = %198
  br i1 %204, label %217, label %231

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %219 = load i64, ptr %218, align 8, !tbaa !126
  %220 = add nsw i64 %219, %11
  %221 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %7, ptr noundef nonnull %122, i32 noundef %9, ptr noundef %186, i64 noundef %220)
  br label %231

222:                                              ; preds = %176
  %223 = load i32, ptr %180, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 30
  br i1 %225, label %226, label %231, !prof !343

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.rtx_def, ptr %180, i64 0, i32 1
  %228 = load i64, ptr %227, align 8, !tbaa !126
  %229 = sub nsw i64 %11, %228
  %230 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %7, ptr noundef %178, i32 noundef %9, ptr noundef nonnull %153, i64 noundef %229)
  br label %231

231:                                              ; preds = %222, %191, %196, %209, %214, %217, %216, %226
  %232 = phi i1 [ false, %226 ], [ false, %216 ], [ false, %217 ], [ false, %214 ], [ false, %209 ], [ false, %196 ], [ false, %191 ], [ true, %222 ]
  %233 = phi i32 [ %230, %226 ], [ -1, %216 ], [ %221, %217 ], [ %215, %214 ], [ %213, %209 ], [ %197, %196 ], [ %192, %191 ], [ undef, %222 ]
  br i1 %232, label %250, label %420, !prof !344

234:                                              ; preds = %172
  %235 = load i32, ptr %153, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 49
  br i1 %237, label %238, label %250, !prof !345

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !126
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 65535
  %243 = icmp eq i32 %242, 30
  br i1 %243, label %244, label %420, !prof !346

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !126
  %247 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !126
  %249 = add nsw i64 %248, %11
  br label %6

250:                                              ; preds = %231, %234
  %251 = load i32, ptr %122, align 8
  %252 = and i32 %251, 65535
  %253 = load i32, ptr %153, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %252, 52
  %256 = icmp eq i32 %254, 52
  %257 = and i1 %255, %256
  br i1 %257, label %258, label %306, !prof !347

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !126
  %261 = tail call ptr @canon_rtx(ptr noundef %260)
  %262 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !126
  %264 = tail call ptr @canon_rtx(ptr noundef %263)
  %265 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %261, ptr noundef %264), !range !332
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %420, label %267

267:                                              ; preds = %258
  %268 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %269 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !126
  %271 = tail call ptr @canon_rtx(ptr noundef %270)
  %272 = load ptr, ptr %268, align 8, !tbaa !126
  %273 = tail call ptr @canon_rtx(ptr noundef %272)
  %274 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %271, ptr noundef %273), !range !332
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %292, label %276

276:                                              ; preds = %267
  %277 = icmp eq i32 %7, 0
  %278 = icmp eq i32 %9, 0
  %279 = or i1 %277, %278
  br i1 %279, label %420, label %280

280:                                              ; preds = %276
  %281 = icmp sgt i64 %11, -1
  %282 = sext i32 %7 to i64
  %283 = icmp sgt i64 %282, %11
  %284 = and i1 %281, %283
  br i1 %284, label %420, label %285

285:                                              ; preds = %280
  %286 = icmp slt i64 %11, 0
  %287 = sext i32 %9 to i64
  %288 = add nsw i64 %287, %11
  %289 = icmp sgt i64 %288, 0
  %290 = select i1 %286, i1 %289, i1 false
  %291 = zext i1 %290 to i32
  br label %420

292:                                              ; preds = %267
  %293 = load i32, ptr %261, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 30
  br i1 %295, label %296, label %420

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1
  %298 = load i64, ptr %297, align 8, !tbaa !126
  %299 = sext i32 %7 to i64
  %300 = sdiv i64 %299, %298
  %301 = trunc i64 %300 to i32
  %302 = sext i32 %9 to i64
  %303 = sdiv i64 %302, %298
  %304 = trunc i64 %303 to i32
  %305 = sdiv i64 %11, %298
  br label %6

306:                                              ; preds = %250
  %307 = icmp eq i32 %252, 61
  br i1 %307, label %308, label %328, !prof !347

308:                                              ; preds = %306
  %309 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %310 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %311 = load ptr, ptr %310, align 8, !tbaa !126
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 30
  br i1 %314, label %315, label %328

315:                                              ; preds = %308
  %316 = icmp eq i32 %254, 61
  br i1 %316, label %323, label %317

317:                                              ; preds = %315
  %318 = sext i32 %9 to i64
  %319 = getelementptr inbounds %struct.rtx_def, ptr %311, i64 0, i32 1
  %320 = load i64, ptr %319, align 8, !tbaa !126
  %321 = sub nsw i64 0, %320
  %322 = icmp slt i64 %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %317, %315
  br label %324

324:                                              ; preds = %323, %317
  %325 = phi i32 [ -1, %323 ], [ %7, %317 ]
  %326 = load ptr, ptr %309, align 8, !tbaa !126
  %327 = tail call ptr @canon_rtx(ptr noundef %326)
  br label %6

328:                                              ; preds = %308, %306
  %329 = icmp eq i32 %254, 61
  br i1 %329, label %330, label %349, !prof !347

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %332 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !126
  %334 = load i32, ptr %333, align 8
  %335 = and i32 %334, 65535
  %336 = icmp eq i32 %335, 30
  br i1 %336, label %337, label %349

337:                                              ; preds = %330
  br i1 %307, label %344, label %338

338:                                              ; preds = %337
  %339 = sext i32 %7 to i64
  %340 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1
  %341 = load i64, ptr %340, align 8, !tbaa !126
  %342 = sub nsw i64 0, %341
  %343 = icmp slt i64 %339, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %338, %337
  br label %345

345:                                              ; preds = %344, %338
  %346 = phi i32 [ -1, %344 ], [ %9, %338 ]
  %347 = load ptr, ptr %331, align 8, !tbaa !126
  %348 = tail call ptr @canon_rtx(ptr noundef %347)
  br label %6

349:                                              ; preds = %330, %328
  %350 = zext nneg i32 %252 to i64
  %351 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !130
  %353 = icmp eq i32 %352, 9
  br i1 %353, label %354, label %420, !prof !348

354:                                              ; preds = %349
  %355 = icmp eq i32 %252, 30
  %356 = icmp eq i32 %254, 30
  %357 = and i1 %355, %356
  br i1 %357, label %358, label %380, !prof !349

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %360 = load i64, ptr %359, align 8, !tbaa !126
  %361 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %362 = load i64, ptr %361, align 8, !tbaa !126
  %363 = sub nsw i64 %360, %362
  %364 = add nsw i64 %363, %11
  %365 = icmp slt i32 %7, 1
  %366 = icmp slt i32 %9, 1
  %367 = or i1 %365, %366
  br i1 %367, label %420, label %368, !prof !350

368:                                              ; preds = %358
  %369 = icmp sgt i64 %364, -1
  %370 = zext nneg i32 %7 to i64
  %371 = icmp slt i64 %364, %370
  %372 = select i1 %369, i1 %371, i1 false, !prof !351
  br i1 %372, label %420, label %373, !prof !350

373:                                              ; preds = %368
  %374 = icmp slt i64 %364, 0
  %375 = zext nneg i32 %9 to i64
  %376 = add nsw i64 %364, %375
  %377 = icmp sgt i64 %376, 0
  %378 = select i1 %374, i1 %377, i1 false, !prof !352
  %379 = zext i1 %378 to i32
  br label %420

380:                                              ; preds = %354
  %381 = icmp eq i32 %252, 35
  %382 = icmp eq i32 %254, 35
  br i1 %381, label %383, label %391

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !126
  %386 = tail call ptr @canon_rtx(ptr noundef %385)
  br i1 %382, label %387, label %6

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !126
  %390 = tail call ptr @canon_rtx(ptr noundef %389)
  br label %6

391:                                              ; preds = %380
  br i1 %382, label %392, label %396

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !126
  %395 = tail call ptr @canon_rtx(ptr noundef %394)
  br label %6

396:                                              ; preds = %391
  %397 = zext nneg i32 %254 to i64
  %398 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !130
  %400 = icmp eq i32 %399, 9
  br i1 %400, label %401, label %420

401:                                              ; preds = %396
  %402 = icmp slt i32 %7, 1
  %403 = icmp slt i32 %9, 1
  %404 = or i1 %402, %403
  br i1 %404, label %420, label %405

405:                                              ; preds = %401
  %406 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef nonnull %122, ptr noundef nonnull %153), !range !332
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %420, label %408

408:                                              ; preds = %405
  %409 = icmp sgt i64 %11, -1
  %410 = zext nneg i32 %7 to i64
  %411 = icmp sgt i64 %410, %11
  %412 = select i1 %409, i1 %411, i1 false
  br i1 %412, label %420, label %413

413:                                              ; preds = %408
  %414 = icmp slt i64 %11, 0
  %415 = zext nneg i32 %9 to i64
  %416 = add nsw i64 %415, %11
  %417 = icmp sgt i64 %416, 0
  %418 = select i1 %414, i1 %417, i1 false
  %419 = zext i1 %418 to i32
  br label %420

420:                                              ; preds = %165, %349, %396, %401, %413, %405, %408, %358, %373, %368, %258, %280, %285, %276, %292, %238, %231, %160, %156
  %421 = phi i32 [ %233, %231 ], [ 1, %156 ], [ 1, %160 ], [ -1, %238 ], [ -1, %258 ], [ 1, %276 ], [ %291, %285 ], [ 1, %280 ], [ -1, %292 ], [ 1, %358 ], [ %379, %373 ], [ 1, %368 ], [ 1, %401 ], [ 0, %405 ], [ %419, %413 ], [ 1, %408 ], [ -1, %396 ], [ -1, %349 ], [ %171, %165 ]
  ret i32 %421
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @canon_true_dependence(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #12 !prof !353 {
  %7 = alloca %struct.ao_ref_s, align 8
  %8 = alloca %struct.ao_ref_s, align 8
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !354

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 134217728
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %391

16:                                               ; preds = %12, %6
  %17 = and i32 %9, 16711680
  %18 = icmp eq i32 %17, 65536
  br i1 %18, label %19, label %25, !prof !355

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !126
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 38
  br i1 %24, label %391, label %25

25:                                               ; preds = %19, %16
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 16711680
  %28 = icmp eq i32 %27, 65536
  br i1 %28, label %29, label %35, !prof !356

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !126
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 38
  br i1 %34, label %391, label %35, !prof !357

35:                                               ; preds = %29, %25
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !358

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mem_attrs, ptr %38, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !177
  br label %43

43:                                               ; preds = %35, %40
  %44 = phi i32 [ %42, %40 ], [ 0, %35 ]
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %391, label %46, !prof !359

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50, !prof !360

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mem_attrs, ptr %48, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !177
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %391, label %54, !prof !359

54:                                               ; preds = %46, %50
  %55 = and i32 %9, 67108864
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %391, !prof !361

57:                                               ; preds = %54
  br i1 %49, label %62, label %58, !prof !360

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %48, i64 0, i32 5
  %60 = load i8, ptr %59, align 8, !tbaa !283
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %57, %58
  %63 = phi i32 [ %61, %58 ], [ 0, %57 ]
  br i1 %39, label %68, label %64, !prof !358

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.mem_attrs, ptr %38, i64 0, i32 5
  %66 = load i8, ptr %65, align 8, !tbaa !283
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %62, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %62 ]
  %70 = icmp eq i32 %63, %69
  br i1 %70, label %71, label %391, !prof !361

71:                                               ; preds = %68
  %72 = icmp eq ptr %4, null
  br i1 %72, label %73, label %113, !prof !362

73:                                               ; preds = %71
  %74 = load ptr, ptr %36, align 8, !tbaa !126
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %113, !prof !258

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !126
  %81 = icmp eq ptr %80, null
  br i1 %81, label %113, label %82, !prof !259

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.cselib_val_struct, ptr %80, i64 0, i32 3
  br label %84

84:                                               ; preds = %91, %82
  %85 = phi ptr [ %83, %82 ], [ %86, %91 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !115
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91, !prof !260

88:                                               ; preds = %84
  %89 = load ptr, ptr %83, align 8, !tbaa !115
  %90 = icmp eq ptr %89, null
  br i1 %90, label %113, label %100, !prof !261

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.elt_loc_list, ptr %86, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !244
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !130
  %99 = icmp eq i32 %98, 9
  br i1 %99, label %113, label %84, !prof !262, !llvm.loop !263

100:                                              ; preds = %88, %106
  %101 = phi ptr [ %107, %106 ], [ %89, %88 ]
  %102 = getelementptr inbounds %struct.elt_loc_list, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !244
  %104 = load i32, ptr %103, align 8
  %105 = trunc i32 %104 to i16
  switch i16 %105, label %113 [
    i16 37, label %106
    i16 43, label %106
  ], !prof !264

106:                                              ; preds = %100, %100
  %107 = load ptr, ptr %101, align 8, !tbaa !115
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %100, !prof !265, !llvm.loop !266

109:                                              ; preds = %106
  br i1 %90, label %113, label %110, !prof !269

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.elt_loc_list, ptr %89, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !244
  br label %113

113:                                              ; preds = %91, %100, %110, %109, %78, %73, %88, %71
  %114 = phi ptr [ %4, %71 ], [ %112, %110 ], [ %74, %73 ], [ %74, %109 ], [ %74, %78 ], [ %74, %88 ], [ %103, %100 ], [ %93, %91 ]
  %115 = lshr i32 %9, 16
  %116 = and i32 %115, 255
  %117 = tail call ptr @find_base_term(ptr noundef %114)
  %118 = tail call ptr @find_base_term(ptr noundef %2)
  %119 = icmp eq ptr %117, null
  br i1 %119, label %120, label %132, !prof !299

120:                                              ; preds = %113
  %121 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !130
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123, !prof !300

123:                                              ; preds = %120
  %124 = tail call ptr @canon_rtx(ptr noundef %114)
  %125 = icmp eq ptr %124, %114
  br i1 %125, label %129, label %126, !prof !301

126:                                              ; preds = %123
  %127 = tail call ptr @find_base_term(ptr noundef %124)
  %128 = icmp ne ptr %127, null
  br label %129

129:                                              ; preds = %126, %123, %120
  %130 = phi ptr [ null, %123 ], [ null, %120 ], [ %127, %126 ]
  %131 = phi i1 [ false, %123 ], [ false, %120 ], [ %128, %126 ]
  br i1 %131, label %132, label %230, !prof !300

132:                                              ; preds = %129, %113
  %133 = phi ptr [ %130, %129 ], [ %117, %113 ]
  %134 = icmp eq ptr %118, null
  br i1 %134, label %135, label %147, !prof !302

135:                                              ; preds = %132
  %136 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !130
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138, !prof !303

138:                                              ; preds = %135
  %139 = tail call ptr @canon_rtx(ptr noundef %2)
  %140 = icmp eq ptr %139, %2
  br i1 %140, label %144, label %141, !prof !304

141:                                              ; preds = %138
  %142 = tail call ptr @find_base_term(ptr noundef %139)
  %143 = icmp ne ptr %142, null
  br label %144

144:                                              ; preds = %141, %138, %135
  %145 = phi ptr [ null, %138 ], [ null, %135 ], [ %142, %141 ]
  %146 = phi i1 [ false, %138 ], [ false, %135 ], [ %143, %141 ]
  br i1 %146, label %147, label %230, !prof !303

147:                                              ; preds = %144, %132
  %148 = phi ptr [ %145, %144 ], [ %118, %132 ]
  %149 = tail call i32 @rtx_equal_p(ptr noundef %133, ptr noundef %148) #22
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %230, !prof !305

151:                                              ; preds = %147
  %152 = load i32, ptr %114, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 61
  br i1 %154, label %155, label %179, !prof !306

155:                                              ; preds = %151
  %156 = load i32, ptr %2, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 61
  br i1 %158, label %230, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !126
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %165, label %230

165:                                              ; preds = %159
  %166 = zext i32 %1 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !126
  %169 = icmp eq i8 %168, 0
  %170 = zext i8 %168 to i64
  %171 = select i1 %169, i64 %166, i64 %170
  %172 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !126
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !126
  %177 = sub nsw i64 0, %176
  %178 = icmp slt i64 %174, %177
  br i1 %178, label %230, label %179

179:                                              ; preds = %165, %151
  %180 = load i32, ptr %2, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 61
  br i1 %182, label %183, label %203, !prof !306

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !126
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 30
  br i1 %188, label %189, label %230

189:                                              ; preds = %183
  %190 = zext nneg i32 %116 to i64
  %191 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !126
  %193 = icmp eq i8 %192, 0
  %194 = zext i8 %192 to i64
  %195 = select i1 %193, i64 %190, i64 %194
  %196 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !126
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !126
  %201 = sub nsw i64 0, %200
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %230, label %203

203:                                              ; preds = %189, %179
  %204 = load i32, ptr %133, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 6
  br i1 %206, label %211, label %207, !prof !307

207:                                              ; preds = %203
  %208 = load i32, ptr %148, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 6
  br i1 %210, label %211, label %230, !prof !308

211:                                              ; preds = %207, %203
  %212 = and i32 %204, 16711680
  %213 = and i32 %204, 16777215
  %214 = icmp eq i32 %213, 1048582
  br i1 %214, label %230, label %215, !prof !309

215:                                              ; preds = %211
  %216 = load i32, ptr %148, align 8
  %217 = and i32 %216, 16711680
  %218 = and i32 %216, 16777215
  %219 = icmp eq i32 %218, 1048582
  br i1 %219, label %230, label %220, !prof !310

220:                                              ; preds = %215
  %221 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !130
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = icmp sgt i32 %221, 1
  br i1 %224, label %230, label %225

225:                                              ; preds = %223
  %226 = icmp eq i32 %212, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = icmp ne i32 %217, 0
  %229 = zext i1 %228 to i32
  br label %230

230:                                              ; preds = %129, %144, %147, %155, %159, %165, %183, %189, %207, %211, %215, %220, %223, %225, %227
  %231 = phi i32 [ 1, %147 ], [ 1, %155 ], [ 1, %165 ], [ 1, %159 ], [ 1, %189 ], [ 1, %183 ], [ 0, %215 ], [ 1, %220 ], [ 0, %223 ], [ 1, %225 ], [ %229, %227 ], [ 1, %129 ], [ 1, %144 ], [ 0, %207 ], [ 0, %211 ]
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %391, label %233, !prof !363

233:                                              ; preds = %230
  %234 = tail call ptr @canon_rtx(ptr noundef %114)
  %235 = zext i32 %1 to i64
  %236 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !126
  %238 = zext i8 %237 to i32
  %239 = load i32, ptr %3, align 8
  %240 = lshr i32 %239, 16
  %241 = and i32 %240, 255
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !126
  %245 = zext i8 %244 to i32
  %246 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %238, ptr noundef %2, i32 noundef %245, ptr noundef %234, i64 noundef 0)
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %391, !prof !364

248:                                              ; preds = %233
  %249 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %266, !prof !365

251:                                              ; preds = %248
  %252 = load ptr, ptr %37, align 8, !tbaa !126
  %253 = icmp eq ptr %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.mem_attrs, ptr %252, i64 0, i32 3
  %256 = load i32, ptr %255, align 8, !tbaa !177
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %254, %251
  %259 = load ptr, ptr %47, align 8, !tbaa !126
  %260 = icmp eq ptr %259, null
  br i1 %260, label %266, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.mem_attrs, ptr %259, i64 0, i32 3
  %263 = load i32, ptr %262, align 8, !tbaa !177
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %261, %254
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 379, ptr noundef nonnull @.str.1) #22
  br label %266

266:                                              ; preds = %261, %265, %258, %248
  %267 = load ptr, ptr %37, align 8, !tbaa !126
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269, !prof !365

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.mem_attrs, ptr %267, i64 0, i32 3
  %271 = load i32, ptr %270, align 8, !tbaa !177
  br label %272

272:                                              ; preds = %269, %266
  %273 = phi i32 [ %271, %269 ], [ 0, %266 ]
  %274 = load ptr, ptr %47, align 8, !tbaa !126
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276, !prof !366

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.mem_attrs, ptr %274, i64 0, i32 3
  %278 = load i32, ptr %277, align 8, !tbaa !177
  br label %279

279:                                              ; preds = %272, %276
  %280 = phi i32 [ %278, %276 ], [ 0, %272 ]
  %281 = icmp eq i32 %273, 0
  %282 = icmp eq i32 %280, 0
  %283 = or i1 %281, %282
  %284 = icmp eq i32 %273, %280
  %285 = or i1 %284, %283
  br i1 %285, label %318, label %286, !prof !141

286:                                              ; preds = %279
  %287 = load ptr, ptr @alias_sets, align 8
  %288 = zext i32 %273 to i64
  %289 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %287, i64 0, i32 2, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !115
  %291 = icmp eq ptr %290, null
  br i1 %291, label %302, label %292, !prof !142

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.alias_set_entry_d, ptr %290, i64 0, i32 1
  %294 = load i32, ptr %293, align 4, !tbaa !136
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %318, !prof !143

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.alias_set_entry_d, ptr %290, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !138
  %299 = sext i32 %280 to i64
  %300 = tail call ptr @splay_tree_lookup(ptr noundef %298, i64 noundef %299) #22
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %318, !prof !143

302:                                              ; preds = %296, %286
  %303 = load ptr, ptr @alias_sets, align 8
  %304 = zext i32 %280 to i64
  %305 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %303, i64 0, i32 2, i64 %304
  %306 = load ptr, ptr %305, align 8, !tbaa !115
  %307 = icmp eq ptr %306, null
  br i1 %307, label %391, label %308, !prof !144

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.alias_set_entry_d, ptr %306, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !136
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %318, !prof !145

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.alias_set_entry_d, ptr %306, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !138
  %315 = sext i32 %273 to i64
  %316 = tail call ptr @splay_tree_lookup(ptr noundef %314, i64 noundef %315) #22
  %317 = icmp eq ptr %316, null
  br i1 %317, label %391, label %318, !prof !146

318:                                              ; preds = %312, %308, %296, %292, %279
  %319 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %3, ptr noundef nonnull %0)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %391, !prof !367

321:                                              ; preds = %318
  %322 = load ptr, ptr %36, align 8, !tbaa !126
  %323 = load i32, ptr %322, align 8
  %324 = and i32 %323, 65535
  %325 = icmp eq i32 %324, 61
  %326 = icmp eq i32 %1, 14
  %327 = or i1 %326, %325
  br i1 %327, label %391, label %328, !prof !368

328:                                              ; preds = %321
  %329 = load i32, ptr %2, align 8
  %330 = and i32 %329, 65535
  %331 = icmp eq i32 %330, 61
  %332 = icmp eq i32 %1, 1
  %333 = or i1 %332, %331
  br i1 %333, label %391, label %334, !prof !369

334:                                              ; preds = %328
  %335 = load i32, ptr %3, align 8
  %336 = and i32 %335, 16711680
  %337 = icmp eq i32 %336, 65536
  br i1 %337, label %391, label %338, !prof !369

338:                                              ; preds = %334
  %339 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %380, label %341, !prof !316

341:                                              ; preds = %338
  %342 = load ptr, ptr %37, align 8, !tbaa !126
  %343 = icmp eq ptr %342, null
  br i1 %343, label %360, label %344, !prof !316

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.mem_attrs, ptr %342, i64 0, i32 3
  %346 = load i32, ptr %345, align 8, !tbaa !177
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %360, label %348, !prof !317

348:                                              ; preds = %344
  %349 = load i32, ptr %0, align 8
  %350 = icmp sgt i32 %349, -1
  br i1 %350, label %360, label %351, !prof !318

351:                                              ; preds = %348
  %352 = and i32 %335, 268435456
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %351
  %355 = tail call zeroext i8 %5(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = tail call zeroext i8 %5(ptr noundef %234, i8 noundef zeroext 1) #22
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %360, label %391

360:                                              ; preds = %357, %354, %351, %348, %344, %341
  %361 = load ptr, ptr %47, align 8, !tbaa !126
  %362 = icmp eq ptr %361, null
  br i1 %362, label %380, label %363, !prof !319

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.mem_attrs, ptr %361, i64 0, i32 3
  %365 = load i32, ptr %364, align 8, !tbaa !177
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %380, label %367, !prof !320

367:                                              ; preds = %363
  %368 = load i32, ptr %0, align 8
  %369 = and i32 %368, 268435456
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %380, label %371, !prof !321

371:                                              ; preds = %367
  %372 = load i32, ptr %3, align 8
  %373 = icmp sgt i32 %372, -1
  br i1 %373, label %380, label %374, !prof !322

374:                                              ; preds = %371
  %375 = tail call zeroext i8 %5(ptr noundef nonnull %2, i8 noundef zeroext 1) #22
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = tail call zeroext i8 %5(ptr noundef %234, i8 noundef zeroext 1) #22
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %391, label %380

380:                                              ; preds = %360, %363, %367, %371, %374, %377, %338
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #22
  %381 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %7, ptr noundef nonnull %3), !range !323
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %389, label %383, !prof !324

383:                                              ; preds = %380
  %384 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %8, ptr noundef nonnull %0), !range !323
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %389, label %386, !prof !325

386:                                              ; preds = %383
  %387 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1) #22
  %388 = zext i8 %387 to i32
  br label %389

389:                                              ; preds = %380, %383, %386
  %390 = phi i32 [ %388, %386 ], [ 1, %383 ], [ 1, %380 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #22
  br label %391

391:                                              ; preds = %302, %312, %377, %357, %43, %334, %328, %321, %318, %233, %230, %68, %54, %50, %29, %19, %12, %389
  %392 = phi i32 [ %390, %389 ], [ 1, %12 ], [ 1, %19 ], [ 1, %29 ], [ 1, %50 ], [ 0, %54 ], [ 1, %68 ], [ 0, %230 ], [ %246, %233 ], [ 0, %318 ], [ 1, %321 ], [ 1, %328 ], [ 1, %334 ], [ 1, %43 ], [ 0, %357 ], [ 0, %377 ], [ 0, %312 ], [ 0, %302 ]
  ret i32 %392
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @anti_dependence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !370 {
  %3 = tail call fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef 0), !range !371
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @write_dependence_p(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #12 !prof !372 !PGOFuncName !373 {
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !374

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 134217728
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %373

13:                                               ; preds = %9, %3
  %14 = and i32 %6, 16711680
  %15 = icmp eq i32 %14, 65536
  br i1 %15, label %16, label %22, !prof !375

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !126
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 38
  br i1 %21, label %373, label %22, !prof !376

22:                                               ; preds = %16, %13
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 65536
  br i1 %25, label %26, label %32, !prof !377

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !126
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 38
  br i1 %31, label %373, label %32, !prof !378

32:                                               ; preds = %26, %22
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !126
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !379

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mem_attrs, ptr %35, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !177
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %373, label %41, !prof !380

41:                                               ; preds = %32, %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !381

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !177
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %373, label %50, !prof !382

50:                                               ; preds = %41, %46
  %51 = icmp ne i32 %2, 0
  %52 = and i32 %23, 67108864
  %53 = icmp eq i32 %52, 0
  %54 = or i1 %51, %53
  br i1 %54, label %55, label %373, !prof !383

55:                                               ; preds = %50
  br i1 %45, label %60, label %56, !prof !381

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 5
  %58 = load i8, ptr %57, align 8, !tbaa !283
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %55, %56
  %61 = phi i32 [ %59, %56 ], [ 0, %55 ]
  br i1 %36, label %66, label %62, !prof !379

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.mem_attrs, ptr %35, i64 0, i32 5
  %64 = load i8, ptr %63, align 8, !tbaa !283
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %60, %62
  %67 = phi i32 [ %65, %62 ], [ 0, %60 ]
  %68 = icmp eq i32 %61, %67
  br i1 %68, label %69, label %373, !prof !384

69:                                               ; preds = %66
  %70 = load ptr, ptr %33, align 8, !tbaa !126
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %109, !prof !258

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !126
  %77 = icmp eq ptr %76, null
  br i1 %77, label %109, label %78, !prof !259

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cselib_val_struct, ptr %76, i64 0, i32 3
  br label %80

80:                                               ; preds = %87, %78
  %81 = phi ptr [ %79, %78 ], [ %82, %87 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !115
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87, !prof !260

84:                                               ; preds = %80
  %85 = load ptr, ptr %79, align 8, !tbaa !115
  %86 = icmp eq ptr %85, null
  br i1 %86, label %109, label %96, !prof !261

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.elt_loc_list, ptr %82, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !244
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !130
  %95 = icmp eq i32 %94, 9
  br i1 %95, label %109, label %80, !prof !262, !llvm.loop !263

96:                                               ; preds = %84, %102
  %97 = phi ptr [ %103, %102 ], [ %85, %84 ]
  %98 = getelementptr inbounds %struct.elt_loc_list, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !244
  %100 = load i32, ptr %99, align 8
  %101 = trunc i32 %100 to i16
  switch i16 %101, label %109 [
    i16 37, label %102
    i16 43, label %102
  ], !prof !264

102:                                              ; preds = %96, %96
  %103 = load ptr, ptr %97, align 8, !tbaa !115
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96, !prof !265, !llvm.loop !266

105:                                              ; preds = %102
  br i1 %86, label %109, label %106, !prof !269

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.elt_loc_list, ptr %85, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !244
  br label %109

109:                                              ; preds = %87, %96, %84, %69, %74, %105, %106
  %110 = phi ptr [ %108, %106 ], [ %70, %69 ], [ %70, %105 ], [ %70, %74 ], [ %70, %84 ], [ %99, %96 ], [ %89, %87 ]
  %111 = load ptr, ptr %42, align 8, !tbaa !126
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %150, !prof !258

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !126
  %118 = icmp eq ptr %117, null
  br i1 %118, label %150, label %119, !prof !259

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.cselib_val_struct, ptr %117, i64 0, i32 3
  br label %121

121:                                              ; preds = %128, %119
  %122 = phi ptr [ %120, %119 ], [ %123, %128 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !115
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128, !prof !260

125:                                              ; preds = %121
  %126 = load ptr, ptr %120, align 8, !tbaa !115
  %127 = icmp eq ptr %126, null
  br i1 %127, label %150, label %137, !prof !261

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.elt_loc_list, ptr %123, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !244
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 65535
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !130
  %136 = icmp eq i32 %135, 9
  br i1 %136, label %150, label %121, !prof !262, !llvm.loop !263

137:                                              ; preds = %125, %143
  %138 = phi ptr [ %144, %143 ], [ %126, %125 ]
  %139 = getelementptr inbounds %struct.elt_loc_list, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !244
  %141 = load i32, ptr %140, align 8
  %142 = trunc i32 %141 to i16
  switch i16 %142, label %150 [
    i16 37, label %143
    i16 43, label %143
  ], !prof !264

143:                                              ; preds = %137, %137
  %144 = load ptr, ptr %138, align 8, !tbaa !115
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %137, !prof !265, !llvm.loop !266

146:                                              ; preds = %143
  br i1 %127, label %150, label %147, !prof !269

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.elt_loc_list, ptr %126, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !244
  br label %150

150:                                              ; preds = %128, %137, %125, %109, %115, %146, %147
  %151 = phi ptr [ %149, %147 ], [ %111, %109 ], [ %111, %146 ], [ %111, %115 ], [ %111, %125 ], [ %140, %137 ], [ %130, %128 ]
  br i1 %51, label %161, label %152, !prof !385

152:                                              ; preds = %150
  %153 = tail call ptr @find_base_term(ptr noundef %151)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %155, !prof !386

155:                                              ; preds = %152
  %156 = load i32, ptr %153, align 8
  %157 = trunc i32 %156 to i16
  switch i16 %157, label %161 [
    i16 44, label %373
    i16 45, label %158
  ], !prof !387

158:                                              ; preds = %155
  %159 = and i32 %156, 67108864
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %373, !prof !388

161:                                              ; preds = %155, %152, %158, %150
  %162 = load i32, ptr %1, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = load i32, ptr %0, align 8
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  %168 = tail call ptr @find_base_term(ptr noundef %110)
  %169 = tail call ptr @find_base_term(ptr noundef %151)
  %170 = icmp eq ptr %168, null
  br i1 %170, label %171, label %183, !prof !299

171:                                              ; preds = %161
  %172 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !130
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174, !prof !300

174:                                              ; preds = %171
  %175 = tail call ptr @canon_rtx(ptr noundef %110)
  %176 = icmp eq ptr %175, %110
  br i1 %176, label %180, label %177, !prof !301

177:                                              ; preds = %174
  %178 = tail call ptr @find_base_term(ptr noundef %175)
  %179 = icmp ne ptr %178, null
  br label %180

180:                                              ; preds = %177, %174, %171
  %181 = phi ptr [ null, %174 ], [ null, %171 ], [ %178, %177 ]
  %182 = phi i1 [ false, %174 ], [ false, %171 ], [ %179, %177 ]
  br i1 %182, label %183, label %281, !prof !300

183:                                              ; preds = %180, %161
  %184 = phi ptr [ %181, %180 ], [ %168, %161 ]
  %185 = icmp eq ptr %169, null
  br i1 %185, label %186, label %198, !prof !302

186:                                              ; preds = %183
  %187 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !130
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189, !prof !303

189:                                              ; preds = %186
  %190 = tail call ptr @canon_rtx(ptr noundef %151)
  %191 = icmp eq ptr %190, %151
  br i1 %191, label %195, label %192, !prof !304

192:                                              ; preds = %189
  %193 = tail call ptr @find_base_term(ptr noundef %190)
  %194 = icmp ne ptr %193, null
  br label %195

195:                                              ; preds = %192, %189, %186
  %196 = phi ptr [ null, %189 ], [ null, %186 ], [ %193, %192 ]
  %197 = phi i1 [ false, %189 ], [ false, %186 ], [ %194, %192 ]
  br i1 %197, label %198, label %281, !prof !303

198:                                              ; preds = %195, %183
  %199 = phi ptr [ %196, %195 ], [ %169, %183 ]
  %200 = tail call i32 @rtx_equal_p(ptr noundef %184, ptr noundef %199) #22
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %281, !prof !305

202:                                              ; preds = %198
  %203 = load i32, ptr %110, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 61
  br i1 %205, label %206, label %230, !prof !306

206:                                              ; preds = %202
  %207 = load i32, ptr %151, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 61
  br i1 %209, label %281, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !126
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 65535
  %215 = icmp eq i32 %214, 30
  br i1 %215, label %216, label %281

216:                                              ; preds = %210
  %217 = zext nneg i32 %167 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !126
  %220 = icmp eq i8 %219, 0
  %221 = zext i8 %219 to i64
  %222 = select i1 %220, i64 %217, i64 %221
  %223 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !126
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !126
  %228 = sub nsw i64 0, %227
  %229 = icmp slt i64 %225, %228
  br i1 %229, label %281, label %230

230:                                              ; preds = %216, %202
  %231 = load i32, ptr %151, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 61
  br i1 %233, label %234, label %254, !prof !306

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !126
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 30
  br i1 %239, label %240, label %281

240:                                              ; preds = %234
  %241 = zext nneg i32 %164 to i64
  %242 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !126
  %244 = icmp eq i8 %243, 0
  %245 = zext i8 %243 to i64
  %246 = select i1 %244, i64 %241, i64 %245
  %247 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !126
  %249 = zext i8 %248 to i64
  %250 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !126
  %252 = sub nsw i64 0, %251
  %253 = icmp slt i64 %249, %252
  br i1 %253, label %281, label %254

254:                                              ; preds = %240, %230
  %255 = load i32, ptr %184, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 6
  br i1 %257, label %265, label %258, !prof !307

258:                                              ; preds = %254
  %259 = load i32, ptr %199, align 8
  %260 = and i32 %259, 65535
  %261 = icmp ne i32 %260, 6
  %262 = and i32 %255, 16777215
  %263 = icmp eq i32 %262, 1048582
  %264 = or i1 %261, %263
  br i1 %264, label %373, label %268, !prof !389

265:                                              ; preds = %254
  %266 = and i32 %255, 16711686
  %267 = icmp eq i32 %266, 1048582
  br i1 %267, label %373, label %268, !prof !309

268:                                              ; preds = %258, %265
  %269 = load i32, ptr %199, align 8
  %270 = and i32 %269, 16777215
  %271 = icmp eq i32 %270, 1048582
  br i1 %271, label %373, label %272, !prof !310

272:                                              ; preds = %268
  %273 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !130
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %272
  %276 = icmp sgt i32 %273, 1
  br i1 %276, label %373, label %277

277:                                              ; preds = %275
  %278 = or i32 %255, %269
  %279 = and i32 %278, 16711680
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %373, label %281, !prof !390

281:                                              ; preds = %198, %206, %216, %210, %240, %234, %272, %180, %195, %277
  %282 = tail call ptr @canon_rtx(ptr noundef %110)
  %283 = tail call ptr @canon_rtx(ptr noundef %151)
  %284 = load i32, ptr %0, align 8
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !126
  %290 = zext i8 %289 to i32
  %291 = load i32, ptr %1, align 8
  %292 = lshr i32 %291, 16
  %293 = and i32 %292, 255
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !126
  %297 = zext i8 %296 to i32
  %298 = tail call fastcc i32 @memrefs_conflict_p(i32 noundef %290, ptr noundef %283, i32 noundef %297, ptr noundef %282, i64 noundef 0)
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %373, !prof !391

300:                                              ; preds = %281
  %301 = tail call i32 @nonoverlapping_memrefs_p(ptr noundef nonnull %1, ptr noundef nonnull %0)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %373, !prof !392

303:                                              ; preds = %300
  %304 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !130
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %347, label %306, !prof !316

306:                                              ; preds = %303
  %307 = load ptr, ptr %34, align 8, !tbaa !126
  %308 = icmp eq ptr %307, null
  br i1 %308, label %326, label %309, !prof !316

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.mem_attrs, ptr %307, i64 0, i32 3
  %311 = load i32, ptr %310, align 8, !tbaa !177
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %326, label %313, !prof !317

313:                                              ; preds = %309
  %314 = load i32, ptr %0, align 8
  %315 = icmp sgt i32 %314, -1
  br i1 %315, label %326, label %316, !prof !318

316:                                              ; preds = %313
  %317 = load i32, ptr %1, align 8
  %318 = and i32 %317, 268435456
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %316
  %321 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %283, i8 noundef zeroext 1) #22
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %282, i8 noundef zeroext 1) #22
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %347

326:                                              ; preds = %323, %320, %316, %313, %309, %306
  %327 = load ptr, ptr %43, align 8, !tbaa !126
  %328 = icmp eq ptr %327, null
  br i1 %328, label %346, label %329, !prof !319

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.mem_attrs, ptr %327, i64 0, i32 3
  %331 = load i32, ptr %330, align 8, !tbaa !177
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %346, label %333, !prof !320

333:                                              ; preds = %329
  %334 = load i32, ptr %0, align 8
  %335 = and i32 %334, 268435456
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %346, label %337, !prof !321

337:                                              ; preds = %333
  %338 = load i32, ptr %1, align 8
  %339 = icmp sgt i32 %338, -1
  br i1 %339, label %346, label %340, !prof !322

340:                                              ; preds = %337
  %341 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %283, i8 noundef zeroext 1) #22
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = tail call zeroext i8 @rtx_addr_varies_p(ptr noundef %282, i8 noundef zeroext 1) #22
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %343, %340, %337, %333, %329, %326
  br label %347

347:                                              ; preds = %303, %323, %343, %346
  %348 = phi ptr [ null, %346 ], [ null, %303 ], [ %0, %323 ], [ %1, %343 ]
  %349 = icmp eq ptr %348, %0
  br i1 %349, label %350, label %355, !prof !393

350:                                              ; preds = %347
  %351 = load ptr, ptr %33, align 8, !tbaa !126
  %352 = load i32, ptr %351, align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 61
  br i1 %354, label %355, label %373

355:                                              ; preds = %350, %347
  %356 = icmp eq ptr %348, %1
  br i1 %356, label %357, label %362, !prof !393

357:                                              ; preds = %355
  %358 = load ptr, ptr %42, align 8, !tbaa !126
  %359 = load i32, ptr %358, align 8
  %360 = and i32 %359, 65535
  %361 = icmp eq i32 %360, 61
  br i1 %361, label %362, label %373

362:                                              ; preds = %357, %355
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #22
  %363 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %4, ptr noundef nonnull %1), !range !323
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %371, label %365, !prof !324

365:                                              ; preds = %362
  %366 = call fastcc zeroext i8 @ao_ref_from_mem(ptr noundef nonnull %5, ptr noundef nonnull %0), !range !323
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %371, label %368, !prof !325

368:                                              ; preds = %365
  %369 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0) #22
  %370 = zext i8 %369 to i32
  br label %371

371:                                              ; preds = %362, %365, %368
  %372 = phi i32 [ %370, %368 ], [ 1, %365 ], [ 1, %362 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #22
  br label %373

373:                                              ; preds = %268, %275, %258, %265, %357, %158, %155, %50, %350, %300, %281, %277, %66, %37, %46, %26, %16, %9, %371
  %374 = phi i32 [ %372, %371 ], [ 1, %9 ], [ 1, %16 ], [ 1, %26 ], [ 1, %46 ], [ 1, %37 ], [ 1, %66 ], [ 0, %277 ], [ %298, %281 ], [ 0, %300 ], [ 0, %350 ], [ 0, %50 ], [ 0, %155 ], [ 0, %158 ], [ 0, %357 ], [ 0, %265 ], [ 0, %258 ], [ 0, %275 ], [ 0, %268 ]
  ret i32 %374
}

; Function Attrs: nounwind uwtable
define dso_local i32 @output_dependence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !394 {
  %3 = tail call fastcc i32 @write_dependence_p(ptr noundef %0, ptr noundef %1, i32 noundef 1), !range !371
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @init_alias_target() local_unnamed_addr #9 !prof !395 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @static_reg_base_value, i8 0, i64 424, i1 false)
  br label %1

1:                                                ; preds = %0, %15
  %2 = phi i64 [ 0, %0 ], [ %16, %15 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %3) #22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !396

6:                                                ; preds = %1
  %7 = trunc i64 %2 to i32
  %8 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %7, i32 noundef 16) #22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !397

10:                                               ; preds = %6
  %11 = trunc i64 %2 to i32
  %12 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %11) #22
  %13 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 0, ptr noundef %12) #22
  %14 = getelementptr inbounds [53 x ptr], ptr @static_reg_base_value, i64 0, i64 %2
  store ptr %13, ptr %14, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %1, %6, %10
  %16 = add nuw nsw i64 %2, 1
  %17 = icmp eq i64 %16, 53
  br i1 %17, label %18, label %1, !prof !398, !llvm.loop !399

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !115
  %20 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %19) #22
  store ptr %20, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 7), align 8, !tbaa !115
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !115
  %22 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %21) #22
  store ptr %22, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 16), align 16, !tbaa !115
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !115
  %24 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %23) #22
  store ptr %24, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 20), align 16, !tbaa !115
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !115
  %26 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %25) #22
  store ptr %26, ptr getelementptr inbounds ([53 x ptr], ptr @static_reg_base_value, i64 0, i64 6), align 16, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @memory_modified_in_insn_p(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !400 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %12, !prof !401

7:                                                ; preds = %2
  store i1 false, ptr @memory_modified, align 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  tail call void @note_stores(ptr noundef %9, ptr noundef nonnull @memory_modified_1, ptr noundef %0) #22
  %10 = load i1, ptr @memory_modified, align 1
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i8 [ %11, %7 ], [ 0, %2 ]
  ret i8 %13
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_modified_1(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #12 !prof !402 !PGOFuncName !403 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %14, !prof !404

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @write_dependence_p(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0), !range !371
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !405

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @write_dependence_p(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1), !range !371
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !406

13:                                               ; preds = %10, %7
  store i1 true, ptr @memory_modified, align 1
  br label %14

14:                                               ; preds = %10, %13, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_alias_analysis() local_unnamed_addr #9 !prof !407 {
  %1 = tail call i32 @max_reg_num() #22
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !126
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !408

4:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 38) #22
  br label %5

5:                                                ; preds = %4, %0
  %6 = add i32 %1, -53
  store i32 %6, ptr @reg_known_value_size, align 4, !tbaa !130
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %8) #22
  store ptr %9, ptr @reg_known_value, align 8, !tbaa !115
  %10 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 1) #22
  store ptr %12, ptr @reg_known_equiv_p, align 8, !tbaa !115
  %13 = load ptr, ptr @old_reg_base_value, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !409

15:                                               ; preds = %5
  store ptr %13, ptr @reg_base_value, align 8, !tbaa !115
  br label %16

16:                                               ; preds = %15, %5
  %17 = load ptr, ptr @reg_base_value, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !409

19:                                               ; preds = %16
  store i32 0, ptr %17, align 8, !tbaa !239
  %20 = getelementptr inbounds %struct.VEC_rtx_base, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !410
  %22 = icmp uge i32 %21, %1
  br label %25

23:                                               ; preds = %16
  %24 = icmp eq i32 %1, 0
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i1 [ %22, %19 ], [ %24, %23 ]
  br i1 %26, label %29, label %27, !prof !411

27:                                               ; preds = %25
  %28 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %17, i32 noundef %1) #22
  store ptr %28, ptr @reg_base_value, align 8, !tbaa !115
  br label %29

29:                                               ; preds = %25, %27
  %30 = load ptr, ptr @reg_base_value, align 8, !tbaa !115, !nonnull !412, !noundef !412
  store i32 %1, ptr %30, align 8, !tbaa !239
  %31 = getelementptr inbounds %struct.VEC_rtx_base, ptr %30, i64 0, i32 2
  %32 = sext i32 %1 to i64
  %33 = shl nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %31, i8 0, i64 %33, i1 false), !prof !413
  %34 = zext i32 %1 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = tail call ptr @xmalloc(i64 noundef %35) #22
  store ptr %36, ptr @new_reg_base_value, align 8, !tbaa !115
  %37 = tail call ptr @xmalloc(i64 noundef %34) #22
  store ptr %37, ptr @reg_seen, align 8, !tbaa !115
  %38 = icmp eq i32 %1, 0
  %39 = zext i32 %1 to i64
  br label %40

40:                                               ; preds = %263, %29
  %41 = phi i32 [ 0, %29 ], [ %266, %263 ]
  store i32 0, ptr @unique_id, align 4, !tbaa !130
  store i1 true, ptr @copying_arguments, align 1
  %42 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr align 8 %42, i8 0, i64 %35, i1 false), !prof !414
  %43 = load ptr, ptr @reg_seen, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr align 1 %43, i8 0, i64 %34, i1 false), !prof !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %42, ptr noundef nonnull align 16 dereferenceable(424) @static_reg_base_value, i64 424, i1 false)
  %44 = tail call ptr @get_insns() #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %233, label %46, !prof !416

46:                                               ; preds = %40, %229
  %47 = phi ptr [ %231, %229 ], [ %44, %40 ]
  %48 = load i32, ptr %47, align 8
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %229 [
    i16 8, label %50
    i16 7, label %50
    i16 9, label %50
    i16 10, label %50
    i16 13, label %224
  ], !prof !417

50:                                               ; preds = %46, %46, %46, %46
  %51 = load i32, ptr @reload_completed, align 4, !tbaa !130
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53, !prof !418

53:                                               ; preds = %50
  %54 = tail call i32 @prologue_epilogue_contains(ptr noundef nonnull %47) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %229, !prof !419

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !126
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 23
  br i1 %61, label %62, label %73, !prof !420

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !126
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66, !prof !421

66:                                               ; preds = %62
  %67 = tail call ptr @find_reg_note(ptr noundef nonnull %47, i32 noundef 15, ptr noundef null) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69, !prof !422

69:                                               ; preds = %66
  %70 = load ptr, ptr %57, align 8, !tbaa !126
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !126
  tail call void @record_set(ptr noundef %72, ptr noundef null, ptr poison)
  br label %75

73:                                               ; preds = %66, %62, %56
  %74 = load ptr, ptr %57, align 8, !tbaa !126
  tail call void @note_stores(ptr noundef %74, ptr noundef nonnull @record_set, ptr noundef null) #22
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32, ptr %47, align 8
  %77 = and i32 %76, 65535
  %78 = add nsw i32 %77, -7
  %79 = icmp ult i32 %78, 4
  br i1 %79, label %80, label %87, !prof !423

80:                                               ; preds = %75
  %81 = load ptr, ptr %57, align 8, !tbaa !126
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 23
  br i1 %84, label %87, label %85, !prof !420

85:                                               ; preds = %80
  %86 = tail call ptr @single_set_2(ptr noundef nonnull %47, ptr noundef nonnull %81) #22
  br label %87

87:                                               ; preds = %75, %80, %85
  %88 = phi ptr [ %86, %85 ], [ null, %75 ], [ %81, %80 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %229, label %90, !prof !424

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !126
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 37
  br i1 %95, label %96, label %229, !prof !425

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !126
  %99 = icmp ugt i32 %98, 52
  br i1 %99, label %100, label %229, !prof !426

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !126
  %103 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %47) #22
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105, !prof !427

105:                                              ; preds = %100
  %106 = load i32, ptr %103, align 8
  %107 = and i32 %106, 16711680
  %108 = icmp eq i32 %107, 262144
  br i1 %108, label %109, label %120, !prof !428

109:                                              ; preds = %105
  %110 = load ptr, ptr @df, align 8, !tbaa !115
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !429
  %113 = zext i32 %98 to i64
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !115
  %116 = getelementptr inbounds %struct.df_reg_info, ptr %115, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !432
  %118 = icmp eq i32 %117, 1
  %119 = select i1 %118, ptr %103, ptr null, !prof !434
  br label %120

120:                                              ; preds = %109, %105, %100
  %121 = phi ptr [ %103, %105 ], [ null, %100 ], [ %119, %109 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %153, label %123, !prof !435

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !126
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %153, label %129, !prof !436

129:                                              ; preds = %123
  %130 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %125, i8 noundef zeroext 1) #22
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %153, !prof !436

132:                                              ; preds = %129
  %133 = load ptr, ptr %91, align 8, !tbaa !126
  %134 = load ptr, ptr %124, align 8, !tbaa !126
  %135 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %133, ptr noundef %134) #22
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = add i32 %98, -53
  %139 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %229

141:                                              ; preds = %137
  %142 = load ptr, ptr %124, align 8, !tbaa !126
  %143 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %144 = zext i32 %138 to i64
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  store ptr %142, ptr %145, align 8, !tbaa !115
  %146 = load i32, ptr %121, align 8
  %147 = and i32 %146, 16711680
  %148 = icmp eq i32 %147, 196608
  %149 = zext i1 %148 to i8
  %150 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !115
  %151 = zext i32 %138 to i64
  %152 = getelementptr inbounds i8, ptr %150, i64 %151
  store i8 %149, ptr %152, align 1, !tbaa !126
  br label %229

153:                                              ; preds = %132, %129, %123, %120
  %154 = load ptr, ptr @df, align 8, !tbaa !115
  %155 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !429
  %157 = zext i32 %98 to i64
  %158 = getelementptr inbounds ptr, ptr %156, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !115
  %160 = getelementptr inbounds %struct.df_reg_info, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !432
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %229, !prof !437

163:                                              ; preds = %153
  %164 = load i32, ptr %102, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 49
  br i1 %166, label %167, label %209, !prof !438

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !126
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 37
  br i1 %172, label %173, label %209, !prof !439

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !126
  %176 = icmp ugt i32 %175, 52
  br i1 %176, label %177, label %186, !prof !440

177:                                              ; preds = %173
  %178 = add i32 %175, -53
  %179 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %186, !prof !440

181:                                              ; preds = %177
  %182 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %183 = zext i32 %178 to i64
  %184 = getelementptr inbounds ptr, ptr %182, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !115
  br label %186

186:                                              ; preds = %173, %177, %181
  %187 = phi ptr [ %185, %181 ], [ null, %177 ], [ null, %173 ]
  %188 = icmp eq ptr %187, null
  br i1 %188, label %209, label %189, !prof !440

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !126
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 30
  br i1 %194, label %195, label %209

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !126
  %198 = tail call ptr @plus_constant(ptr noundef nonnull %187, i64 noundef %197) #22
  %199 = add i32 %98, -53
  %200 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %202, label %229

202:                                              ; preds = %195
  %203 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %204 = zext i32 %199 to i64
  %205 = getelementptr inbounds ptr, ptr %203, i64 %204
  store ptr %198, ptr %205, align 8, !tbaa !115
  %206 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !115
  %207 = zext i32 %199 to i64
  %208 = getelementptr inbounds i8, ptr %206, i64 %207
  store i8 0, ptr %208, align 1, !tbaa !126
  br label %229

209:                                              ; preds = %189, %186, %167, %163
  br i1 %162, label %210, label %229, !prof !437

210:                                              ; preds = %209
  %211 = tail call zeroext i8 @rtx_varies_p(ptr noundef nonnull %102, i8 noundef zeroext 1) #22
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %229, !prof !441

213:                                              ; preds = %210
  %214 = add i32 %98, -53
  %215 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %229, !prof !442

217:                                              ; preds = %213
  %218 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %219 = zext i32 %214 to i64
  %220 = getelementptr inbounds ptr, ptr %218, i64 %219
  store ptr %102, ptr %220, align 8, !tbaa !115
  %221 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !115
  %222 = zext i32 %214 to i64
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  store i8 0, ptr %223, align 1, !tbaa !126
  br label %229

224:                                              ; preds = %46
  %225 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %226 = load i32, ptr %225, align 8, !tbaa !126
  %227 = icmp eq i32 %226, 4
  br i1 %227, label %228, label %229, !prof !443

228:                                              ; preds = %224
  store i1 false, ptr @copying_arguments, align 1
  br label %229

229:                                              ; preds = %213, %153, %195, %137, %217, %202, %141, %46, %53, %209, %210, %96, %90, %87, %228, %224
  %230 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %231 = load ptr, ptr %230, align 8, !tbaa !126
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %46, !prof !444, !llvm.loop !445

233:                                              ; preds = %229, %40
  %234 = tail call i32 @max_reg_num() #22
  %235 = icmp eq i32 %1, %234
  br i1 %235, label %237, label %236, !prof !446

236:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2760, ptr noundef nonnull @.str.1) #22
  br label %237

237:                                              ; preds = %233, %236
  br i1 %38, label %263, label %238, !prof !416

238:                                              ; preds = %237, %259
  %239 = phi i64 [ %261, %259 ], [ 0, %237 ]
  %240 = phi i32 [ %260, %259 ], [ 0, %237 ]
  %241 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %242 = getelementptr inbounds ptr, ptr %241, i64 %239
  %243 = load ptr, ptr %242, align 8, !tbaa !115
  %244 = icmp eq ptr %243, null
  br i1 %244, label %259, label %245, !prof !447

245:                                              ; preds = %238
  %246 = load ptr, ptr @reg_base_value, align 8
  %247 = getelementptr inbounds %struct.VEC_rtx_base, ptr %246, i64 0, i32 2, i64 %239
  %248 = load ptr, ptr %247, align 8, !tbaa !115
  %249 = icmp eq ptr %243, %248
  br i1 %249, label %259, label %250, !prof !448

250:                                              ; preds = %245
  %251 = tail call i32 @rtx_equal_p(ptr noundef nonnull %243, ptr noundef %248) #22
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %259, !prof !449

253:                                              ; preds = %250
  %254 = load ptr, ptr @reg_base_value, align 8
  %255 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %256 = getelementptr inbounds ptr, ptr %255, i64 %239
  %257 = load ptr, ptr %256, align 8, !tbaa !115
  %258 = getelementptr inbounds %struct.VEC_rtx_base, ptr %254, i64 0, i32 2, i64 %239
  store ptr %257, ptr %258, align 8, !tbaa !115
  br label %259

259:                                              ; preds = %238, %245, %250, %253
  %260 = phi i32 [ %240, %250 ], [ 1, %253 ], [ %240, %245 ], [ %240, %238 ]
  %261 = add nuw nsw i64 %239, 1
  %262 = icmp eq i64 %261, %39
  br i1 %262, label %263, label %238, !prof !450, !llvm.loop !451

263:                                              ; preds = %259, %237
  %264 = phi i32 [ 0, %237 ], [ %260, %259 ]
  %265 = icmp ne i32 %264, 0
  %266 = add nuw nsw i32 %41, 1
  %267 = icmp ult i32 %41, 9
  %268 = select i1 %265, i1 %267, i1 false, !prof !452
  br i1 %268, label %40, label %269, !prof !452, !llvm.loop !453

269:                                              ; preds = %263
  %270 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %288, !prof !454

272:                                              ; preds = %269
  %273 = zext nneg i32 %270 to i64
  br label %274

274:                                              ; preds = %272, %285
  %275 = phi i64 [ 0, %272 ], [ %286, %285 ]
  %276 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %277 = getelementptr inbounds ptr, ptr %276, i64 %275
  %278 = load ptr, ptr %277, align 8, !tbaa !115
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %285, !prof !455

280:                                              ; preds = %274
  %281 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  %282 = getelementptr ptr, ptr %281, i64 %275
  %283 = getelementptr ptr, ptr %282, i64 53
  %284 = load ptr, ptr %283, align 8, !tbaa !115
  store ptr %284, ptr %277, align 8, !tbaa !115
  br label %285

285:                                              ; preds = %274, %280
  %286 = add nuw nsw i64 %275, 1
  %287 = icmp eq i64 %286, %273
  br i1 %287, label %288, label %274, !prof !456, !llvm.loop !457

288:                                              ; preds = %285, %269
  %289 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  tail call void @free(ptr noundef %289)
  store ptr null, ptr @new_reg_base_value, align 8, !tbaa !115
  %290 = load ptr, ptr @reg_seen, align 8, !tbaa !115
  tail call void @free(ptr noundef %290)
  store ptr null, ptr @reg_seen, align 8, !tbaa !115
  %291 = load i8, ptr @timevar_enable, align 1, !tbaa !126
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %294, label %293, !prof !408

293:                                              ; preds = %288
  tail call void @timevar_pop_1(i32 noundef 38) #22
  br label %294

294:                                              ; preds = %293, %288
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

declare ptr @get_insns() local_unnamed_addr #3

declare i32 @prologue_epilogue_contains(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @record_set(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture readnone %2) #12 !prof !458 !PGOFuncName !459 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %149, !prof !460

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = load ptr, ptr @reg_base_value, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !461

12:                                               ; preds = %7
  %13 = load i32, ptr %10, align 8, !tbaa !239
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %7 ]
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %18, label %17, !prof !462

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1131, ptr noundef nonnull @.str.1) #22
  br label %18

18:                                               ; preds = %14, %17
  %19 = icmp ult i32 %9, 53
  br i1 %19, label %20, label %29, !prof !463

20:                                               ; preds = %18
  %21 = zext nneg i32 %9 to i64
  %22 = load i32, ptr %0, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %21, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !126
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %18, %20
  %30 = phi i32 [ %28, %20 ], [ 1, %18 ]
  %31 = trunc i32 %30 to i8
  switch i8 %31, label %32 [
    i8 1, label %45
    i8 0, label %149
  ], !prof !464

32:                                               ; preds = %29
  %33 = load ptr, ptr @reg_seen, align 8, !tbaa !115
  %34 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %35 = zext nneg i32 %30 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %38 = add nsw i64 %37, -1
  %39 = trunc i64 %38 to i32
  %40 = add i32 %9, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %33, i64 %41
  store i8 1, ptr %42, align 1, !tbaa !126
  %43 = getelementptr inbounds ptr, ptr %34, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !115
  %44 = icmp sgt i64 %37, 1
  br i1 %44, label %36, label %149, !llvm.loop !465

45:                                               ; preds = %29
  %46 = icmp eq ptr %1, null
  br i1 %46, label %63, label %47, !prof !461

47:                                               ; preds = %45
  %48 = load i32, ptr %1, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 25
  br i1 %50, label %51, label %55, !prof !466

51:                                               ; preds = %47
  %52 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %53 = zext i32 %9 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  store ptr null, ptr %54, align 8, !tbaa !115
  br label %149

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !126
  %58 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %59 = zext i32 %9 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = icmp eq ptr %61, null
  br i1 %62, label %126, label %80, !prof !467

63:                                               ; preds = %45
  %64 = load ptr, ptr @reg_seen, align 8, !tbaa !115
  %65 = zext i32 %9 to i64
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !126
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %71 = getelementptr inbounds ptr, ptr %70, i64 %65
  store ptr null, ptr %71, align 8, !tbaa !115
  br label %149

72:                                               ; preds = %63
  store i8 1, ptr %66, align 1, !tbaa !126
  %73 = load i32, ptr @unique_id, align 4, !tbaa !130
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr @unique_id, align 4, !tbaa !130
  %75 = sext i32 %73 to i64
  %76 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %75) #22
  %77 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 16, ptr noundef %76) #22
  %78 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %79 = getelementptr inbounds ptr, ptr %78, i64 %65
  store ptr %77, ptr %79, align 8, !tbaa !115
  br label %149

80:                                               ; preds = %55
  %81 = tail call fastcc ptr @find_base_value(ptr noundef %57)
  %82 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %83 = getelementptr inbounds ptr, ptr %82, i64 %59
  %84 = load ptr, ptr %83, align 8, !tbaa !115
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %126, label %86, !prof !468

86:                                               ; preds = %80
  %87 = load i32, ptr %57, align 8
  %88 = trunc i32 %87 to i16
  switch i16 %88, label %125 [
    i16 122, label %89
    i16 50, label %89
    i16 49, label %98
    i16 61, label %114
  ], !prof !469

89:                                               ; preds = %86, %86
  %90 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !126
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %146, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !126
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %146, label %97

97:                                               ; preds = %93
  store ptr null, ptr %83, align 8, !tbaa !115
  br label %146

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !126
  %101 = icmp eq ptr %100, %0
  %102 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !126
  %104 = icmp eq ptr %103, %0
  %105 = select i1 %104, ptr %100, ptr null
  %106 = select i1 %101, ptr %103, ptr %105
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %98
  %109 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %106)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %146, label %111

111:                                              ; preds = %108, %98
  %112 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %113 = getelementptr inbounds ptr, ptr %112, i64 %59
  store ptr null, ptr %113, align 8, !tbaa !115
  br label %146

114:                                              ; preds = %86
  %115 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !126
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !126
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 30
  br i1 %123, label %146, label %124

124:                                              ; preds = %118, %114
  store ptr null, ptr %83, align 8, !tbaa !115
  br label %146

125:                                              ; preds = %86
  store ptr null, ptr %83, align 8, !tbaa !115
  br label %146

126:                                              ; preds = %80, %55
  %127 = icmp ugt i32 %9, 52
  br i1 %127, label %132, label %128, !prof !470

128:                                              ; preds = %126
  %129 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %59
  %130 = load i8, ptr %129, align 1, !tbaa !126
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %146, !prof !471

132:                                              ; preds = %128, %126
  %133 = load ptr, ptr @reg_seen, align 8, !tbaa !115
  %134 = getelementptr inbounds i8, ptr %133, i64 %59
  %135 = load i8, ptr %134, align 1, !tbaa !126
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %146, !prof !472

137:                                              ; preds = %132
  %138 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %139 = getelementptr inbounds ptr, ptr %138, i64 %59
  %140 = load ptr, ptr %139, align 8, !tbaa !115
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %146, !prof !473

142:                                              ; preds = %137
  %143 = tail call fastcc ptr @find_base_value(ptr noundef %57)
  %144 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %145 = getelementptr inbounds ptr, ptr %144, i64 %59
  store ptr %143, ptr %145, align 8, !tbaa !115
  br label %146

146:                                              ; preds = %108, %111, %128, %132, %137, %142, %125, %97, %93, %89, %124, %118
  %147 = load ptr, ptr @reg_seen, align 8, !tbaa !115
  %148 = getelementptr inbounds i8, ptr %147, i64 %59
  store i8 1, ptr %148, align 1, !tbaa !126
  br label %149

149:                                              ; preds = %36, %29, %3, %146, %72, %69, %51
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @end_alias_analysis() local_unnamed_addr #9 !prof !407 {
  %1 = load ptr, ptr @reg_base_value, align 8, !tbaa !115
  store ptr %1, ptr @old_reg_base_value, align 8, !tbaa !115
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  tail call void @ggc_free(ptr noundef %2) #22
  store ptr null, ptr @reg_known_value, align 8, !tbaa !115
  store i32 0, ptr @reg_known_value_size, align 4, !tbaa !130
  %3 = load ptr, ptr @reg_known_equiv_p, align 8, !tbaa !115
  tail call void @free(ptr noundef %3)
  store ptr null, ptr @reg_known_equiv_p, align 8, !tbaa !115
  ret void
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_alias_set_entry_gc(ptr noundef %0) #11 !prof !114 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !474
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi i64 [ %22, %21 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp ult ptr %13, inttoptr (i64 2 to ptr)
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @ggc_set_mark(ptr noundef nonnull %13) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.alias_set_entry_d, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  tail call void @gt_ggc_m_II12splay_tree_s(ptr noundef %20) #22
  br label %21

21:                                               ; preds = %10, %18, %15
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !476

24:                                               ; preds = %21, %6, %1, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_alias_set_entry_d(ptr noundef %0) local_unnamed_addr #11 !prof !114 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.alias_set_entry_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  tail call void @gt_ggc_m_II12splay_tree_s(ptr noundef %8) #22
  br label %9

9:                                                ; preds = %1, %6, %3
  ret void
}

declare void @gt_ggc_m_II12splay_tree_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_alias_set_entry_gc(ptr noundef %0) #11 !prof !114 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_alias_set_entry_gc, i32 noundef 93) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !474
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %4, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_alias_set_entry_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull @gt_pch_p_17alias_set_entry_d, i32 noundef 94) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.alias_set_entry_d, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  tail call void @gt_pch_n_II12splay_tree_s(ptr noundef %18) #22
  br label %19

19:                                               ; preds = %16, %13, %8
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %8, !llvm.loop !477

22:                                               ; preds = %19, %4, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_22VEC_alias_set_entry_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #11 !prof !114 {
  %5 = load i32, ptr %1, align 8, !tbaa !474
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
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #22
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !478

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_alias_set_entry_d(ptr noundef %0) local_unnamed_addr #11 !prof !114 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17alias_set_entry_d, i32 noundef 94) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.alias_set_entry_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  tail call void @gt_pch_n_II12splay_tree_s(ptr noundef %6) #22
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_17alias_set_entry_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #11 !prof !114 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.alias_set_entry_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #22
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

declare void @gt_pch_n_II12splay_tree_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_ggc_ma_reg_known_value(ptr nocapture readnone %0) #11 !prof !114 {
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %11) #22
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !479

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %21 = icmp ult ptr %20, inttoptr (i64 2 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @ggc_set_mark(ptr noundef nonnull %20) #22
  br label %24

24:                                               ; preds = %19, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_na_reg_known_value(ptr nocapture readnone %0) #11 !prof !114 {
  %2 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11) #22
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !480

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %21 = tail call i32 @gt_pch_note_object(ptr noundef %20, ptr noundef nonnull @reg_known_value, ptr noundef nonnull @gt_pch_pa_reg_known_value, i32 noundef 217) #22
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare void @gt_ggc_mx_VEC_rtx_gc(ptr noundef) #3

declare void @gt_pch_nx_VEC_rtx_gc(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @walk_mems_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !114 {
  %3 = load ptr, ptr %0, align 8, !tbaa !115
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !177
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !177
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %14 ]
  %24 = tail call i32 @alias_sets_conflict_p(i32 noundef %15, i32 noundef %23), !range !332
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -1, i32 1
  br label %27

27:                                               ; preds = %2, %22
  %28 = phi i32 [ %26, %22 ], [ 0, %2 ]
  ret i32 %28
}

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rtx_equal_for_memref_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #12 !prof !481 !PGOFuncName !482 {
  br label %3

3:                                                ; preds = %120, %111, %98, %68, %2
  %4 = phi ptr [ %0, %2 ], [ %70, %68 ], [ %101, %98 ], [ %114, %111 ], [ %123, %120 ]
  %5 = phi ptr [ %1, %2 ], [ %71, %68 ], [ %83, %98 ], [ %117, %111 ], [ %126, %120 ]
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %5, null
  %8 = and i1 %6, %7
  br i1 %8, label %203, label %9, !prof !483

9:                                                ; preds = %3
  %10 = or i1 %6, %7
  br i1 %10, label %203, label %11, !prof !483

11:                                               ; preds = %9
  %12 = icmp eq ptr %4, %5
  br i1 %12, label %203, label %13, !prof !484

13:                                               ; preds = %11
  %14 = load i32, ptr %4, align 8
  %15 = and i32 %14, 65535
  %16 = load i32, ptr %5, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %203, !prof !485

19:                                               ; preds = %13
  %20 = xor i32 %16, %14
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %203, !prof !486

23:                                               ; preds = %19
  %24 = trunc i32 %14 to i16
  switch i16 %24, label %46 [
    i16 37, label %25
    i16 44, label %32
    i16 45, label %39
    i16 1, label %203
    i16 30, label %203
    i16 32, label %203
    i16 31, label %203
  ], !prof !487

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !126
  %28 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !126
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  br label %203

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !126
  %35 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  %37 = icmp eq ptr %34, %36
  %38 = zext i1 %37 to i32
  br label %203

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !126
  %44 = icmp eq ptr %41, %43
  %45 = zext i1 %44 to i32
  br label %203

46:                                               ; preds = %23
  %47 = icmp eq i32 %15, 49
  br i1 %47, label %48, label %72, !prof !488

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !126
  %51 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !126
  %53 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %50, ptr noundef %52), !range !332
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55, !prof !489

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !126
  %58 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !126
  %60 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %57, ptr noundef %59), !range !332
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %203, !prof !490

62:                                               ; preds = %55, %48
  %63 = load ptr, ptr %49, align 8, !tbaa !126
  %64 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !126
  %66 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %63, ptr noundef %65), !range !332
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %203, label %68, !prof !491

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !126
  %71 = load ptr, ptr %51, align 8, !tbaa !126
  br label %3

72:                                               ; preds = %46
  %73 = zext nneg i32 %15 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !130
  %76 = and i32 %75, -3
  switch i32 %76, label %118 [
    i32 1, label %77
    i32 0, label %102
  ]

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !126
  %80 = tail call ptr @canon_rtx(ptr noundef %79)
  %81 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !126
  %83 = tail call ptr @canon_rtx(ptr noundef %82)
  %84 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !126
  %86 = tail call ptr @canon_rtx(ptr noundef %85)
  %87 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %80, ptr noundef %83), !range !332
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !126
  %92 = tail call ptr @canon_rtx(ptr noundef %91)
  %93 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %92, ptr noundef %86), !range !332
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %203

95:                                               ; preds = %89, %77
  %96 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %80, ptr noundef %86), !range !332
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %203, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !126
  %101 = tail call ptr @canon_rtx(ptr noundef %100)
  br label %3

102:                                              ; preds = %72
  %103 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !126
  %105 = tail call ptr @canon_rtx(ptr noundef %104)
  %106 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !126
  %108 = tail call ptr @canon_rtx(ptr noundef %107)
  %109 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %105, ptr noundef %108), !range !332
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %203, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !126
  %114 = tail call ptr @canon_rtx(ptr noundef %113)
  %115 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !126
  %117 = tail call ptr @canon_rtx(ptr noundef %116)
  br label %3

118:                                              ; preds = %72
  %119 = icmp eq i32 %75, 4
  br i1 %119, label %120, label %127

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !126
  %123 = tail call ptr @canon_rtx(ptr noundef %122)
  %124 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !126
  %126 = tail call ptr @canon_rtx(ptr noundef %125)
  br label %3

127:                                              ; preds = %118
  %128 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %73
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %73
  %131 = load i8, ptr %130, align 1, !tbaa !126
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %203, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %135 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %136 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %137 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %138 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %139 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %140 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %141 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %142 = zext i8 %131 to i64
  br label %143

143:                                              ; preds = %133, %201
  %144 = phi i64 [ %142, %133 ], [ %145, %201 ]
  %145 = add nsw i64 %144, -1
  %146 = getelementptr inbounds i8, ptr %129, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !126
  switch i8 %147, label %200 [
    i8 105, label %148
    i8 69, label %154
    i8 101, label %184
    i8 115, label %193
    i8 48, label %201
  ]

148:                                              ; preds = %143
  %149 = getelementptr inbounds [1 x %union.rtunion_def], ptr %140, i64 0, i64 %145
  %150 = load i32, ptr %149, align 8, !tbaa !126
  %151 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %145
  %152 = load i32, ptr %151, align 8, !tbaa !126
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %201, label %203

154:                                              ; preds = %143
  %155 = getelementptr inbounds [1 x %union.rtunion_def], ptr %138, i64 0, i64 %145
  %156 = load ptr, ptr %155, align 8, !tbaa !126
  %157 = load i32, ptr %156, align 8, !tbaa !492
  %158 = getelementptr inbounds [1 x %union.rtunion_def], ptr %139, i64 0, i64 %145
  %159 = load ptr, ptr %158, align 8, !tbaa !126
  %160 = load i32, ptr %159, align 8, !tbaa !492
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %203

162:                                              ; preds = %154
  %163 = load ptr, ptr %155, align 8, !tbaa !126
  %164 = load i32, ptr %163, align 8, !tbaa !492
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %172, label %201

166:                                              ; preds = %172
  %167 = add nuw nsw i64 %173, 1
  %168 = load ptr, ptr %155, align 8, !tbaa !126
  %169 = load i32, ptr %168, align 8, !tbaa !492
  %170 = sext i32 %169 to i64
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %172, label %201, !llvm.loop !494

172:                                              ; preds = %162, %166
  %173 = phi i64 [ %167, %166 ], [ 0, %162 ]
  %174 = phi ptr [ %168, %166 ], [ %163, %162 ]
  %175 = getelementptr inbounds %struct.rtvec_def, ptr %174, i64 0, i32 1, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !115
  %177 = tail call ptr @canon_rtx(ptr noundef %176)
  %178 = load ptr, ptr %158, align 8, !tbaa !126
  %179 = getelementptr inbounds %struct.rtvec_def, ptr %178, i64 0, i32 1, i64 %173
  %180 = load ptr, ptr %179, align 8, !tbaa !115
  %181 = tail call ptr @canon_rtx(ptr noundef %180)
  %182 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %177, ptr noundef %181), !range !332
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %203, label %166

184:                                              ; preds = %143
  %185 = getelementptr inbounds [1 x %union.rtunion_def], ptr %136, i64 0, i64 %145
  %186 = load ptr, ptr %185, align 8, !tbaa !126
  %187 = tail call ptr @canon_rtx(ptr noundef %186)
  %188 = getelementptr inbounds [1 x %union.rtunion_def], ptr %137, i64 0, i64 %145
  %189 = load ptr, ptr %188, align 8, !tbaa !126
  %190 = tail call ptr @canon_rtx(ptr noundef %189)
  %191 = tail call fastcc i32 @rtx_equal_for_memref_p(ptr noundef %187, ptr noundef %190), !range !332
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %203, label %201

193:                                              ; preds = %143
  %194 = getelementptr inbounds [1 x %union.rtunion_def], ptr %134, i64 0, i64 %145
  %195 = load ptr, ptr %194, align 8, !tbaa !126
  %196 = getelementptr inbounds [1 x %union.rtunion_def], ptr %135, i64 0, i64 %145
  %197 = load ptr, ptr %196, align 8, !tbaa !126
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %195, ptr noundef nonnull dereferenceable(1) %197)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %203

200:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1462, ptr noundef nonnull @.str.1) #22
  br label %201

201:                                              ; preds = %166, %162, %143, %200, %148, %184, %193
  %202 = icmp sgt i64 %144, 1
  br i1 %202, label %143, label %203, !llvm.loop !495

203:                                              ; preds = %184, %201, %148, %154, %193, %172, %127, %95, %62, %23, %23, %23, %102, %89, %55, %23, %19, %13, %11, %9, %3, %39, %32, %25
  %204 = phi i32 [ %45, %39 ], [ %38, %32 ], [ %31, %25 ], [ 1, %3 ], [ 0, %9 ], [ 1, %11 ], [ 0, %13 ], [ 0, %19 ], [ 0, %23 ], [ 1, %55 ], [ 1, %89 ], [ 0, %102 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %62 ], [ 0, %95 ], [ 1, %127 ], [ 0, %172 ], [ 0, %193 ], [ 0, %154 ], [ 0, %148 ], [ 1, %201 ], [ 0, %184 ]
  ret i32 %204
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ao_ref_from_mem(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !496 !PGOFuncName !497 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !498

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !274
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  %11 = or i1 %5, %10
  br i1 %11, label %151, label %12, !prof !499

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = icmp eq ptr %14, null
  br i1 %15, label %151, label %16, !prof !500

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !284
  %19 = icmp eq ptr %18, null
  br i1 %19, label %151, label %20, !prof !500

20:                                               ; preds = %16
  tail call void @ao_ref_init(ptr noundef %0, ptr noundef nonnull %9) #22
  %21 = tail call ptr @ao_ref_base(ptr noundef %0) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %151, label %23, !prof !500

23:                                               ; preds = %20
  %24 = load i64, ptr %21, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -47
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %29, label %35, !prof !325

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !126
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %151, !prof !325

35:                                               ; preds = %23, %29
  %36 = trunc i64 %24 to i16
  switch i16 %36, label %58 [
    i16 29, label %151
    i16 30, label %151
    i16 32, label %37
  ], !prof !501

37:                                               ; preds = %35
  %38 = and i64 %24, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load ptr, ptr @cfun, align 8, !tbaa !115
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !502
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !504
  %46 = icmp eq ptr %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = tail call ptr @pointer_map_contains(ptr noundef nonnull %45, ptr noundef nonnull %21) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @get_alias_set(ptr noundef nonnull %21)
  %52 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 %51, ptr %52, align 4, !tbaa !508
  %53 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  %55 = load ptr, ptr %48, align 8, !tbaa !115
  %56 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %54, ptr noundef %55) #22
  %57 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !510
  br label %58

58:                                               ; preds = %47, %50, %35, %40, %37
  %59 = load ptr, ptr %3, align 8, !tbaa !126
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61, !prof !500

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.mem_attrs, ptr %59, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !177
  br label %64

64:                                               ; preds = %58, %61
  %65 = phi i32 [ %63, %61 ], [ 0, %58 ]
  %66 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 %65, ptr %66, align 8, !tbaa !511
  %67 = load ptr, ptr %3, align 8, !tbaa !126, !nonnull !412, !noundef !412
  %68 = getelementptr inbounds %struct.mem_attrs, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !278
  %70 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !126
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %83, !prof !500

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.mem_attrs, ptr %67, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !284
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !126
  %78 = add nsw i64 %77, %71
  %79 = shl nsw i64 %78, 3
  %80 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !512
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %151, label %83

83:                                               ; preds = %73, %64
  %84 = shl nsw i64 %71, 3
  %85 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !513
  %87 = add nsw i64 %86, %84
  store i64 %87, ptr %85, align 8, !tbaa !513
  %88 = load ptr, ptr %3, align 8, !tbaa !126
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90, !prof !500

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %88, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !284
  br label %103

93:                                               ; preds = %83
  %94 = load i32, ptr %1, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = icmp ne i32 %96, 1
  tail call void @llvm.assume(i1 %97)
  %98 = zext nneg i32 %96 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !126
  %101 = zext i8 %100 to i64
  %102 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %101) #22
  br label %103

103:                                              ; preds = %93, %90
  %104 = phi ptr [ %92, %90 ], [ %102, %93 ]
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !126
  %107 = shl nsw i64 %106, 3
  %108 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %107, ptr %108, align 8, !tbaa !512
  %109 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !514
  %111 = icmp ne i64 %110, -1
  %112 = icmp sgt i64 %107, %110
  %113 = select i1 %111, i1 %112, i1 false, !prof !325
  br i1 %113, label %114, label %115, !prof !500

114:                                              ; preds = %103
  store i64 %107, ptr %109, align 8, !tbaa !514
  br label %115

115:                                              ; preds = %114, %103
  %116 = load ptr, ptr %3, align 8, !tbaa !126
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118, !prof !500

118:                                              ; preds = %115
  %119 = load ptr, ptr %116, align 8, !tbaa !274
  br label %120

120:                                              ; preds = %115, %118
  %121 = phi ptr [ %119, %118 ], [ null, %115 ]
  %122 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #22
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %150, label %124, !prof !500

124:                                              ; preds = %120
  %125 = load i64, ptr %85, align 8, !tbaa !513
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %151, label %127, !prof !500

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !510
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !130
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %150, !prof !500

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.tree_decl_common, ptr %129, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !126
  %138 = tail call i32 @host_integerp(ptr noundef %137, i32 noundef 1) #22
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %128, align 8, !tbaa !510
  %142 = getelementptr inbounds %struct.tree_decl_common, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !126
  %144 = getelementptr inbounds %struct.tree_int_cst, ptr %143, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !126
  %146 = load i64, ptr %85, align 8, !tbaa !513
  %147 = load i64, ptr %108, align 8, !tbaa !512
  %148 = add nsw i64 %147, %146
  %149 = icmp ult i64 %145, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %140, %127, %120
  br label %151

151:                                              ; preds = %35, %29, %8, %124, %135, %140, %73, %35, %20, %12, %16, %150
  %152 = phi i8 [ 1, %150 ], [ 0, %8 ], [ 0, %16 ], [ 0, %12 ], [ 0, %20 ], [ 0, %35 ], [ 1, %73 ], [ 0, %140 ], [ 0, %135 ], [ 0, %124 ], [ 0, %29 ], [ 0, %35 ]
  ret i8 %152
}

declare zeroext i8 @refs_may_alias_p_1(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @ao_ref_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ao_ref_base(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @find_base_value(ptr noundef %0) unnamed_addr #12 !prof !515 !PGOFuncName !516 {
  br label %2

2:                                                ; preds = %88, %78, %166, %152, %138, %137, %129, %1
  %3 = phi ptr [ %0, %1 ], [ %99, %129 ], [ %108, %137 ], [ %140, %138 ], [ %153, %152 ], [ %168, %166 ], [ %81, %78 ], [ %83, %88 ]
  %4 = tail call ptr @ix86_find_base_term(ptr noundef %3) #22
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %186 [
    i16 45, label %187
    i16 44, label %187
    i16 37, label %7
    i16 43, label %54
    i16 35, label %71
    i16 49, label %78
    i16 50, label %78
    i16 122, label %138
    i16 61, label %141
    i16 100, label %154
    i16 121, label %166
    i16 75, label %166
    i16 74, label %166
    i16 77, label %166
    i16 76, label %166
    i16 78, label %166
    i16 79, label %166
    i16 99, label %169
    i16 98, label %169
  ], !prof !517

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = icmp ult i32 %9, 53
  %11 = load i1, ptr @copying_arguments, align 1
  %12 = select i1 %10, i1 %11, i1 false, !prof !518
  br i1 %12, label %13, label %18, !prof !519

13:                                               ; preds = %7
  %14 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  br label %187

18:                                               ; preds = %7
  %19 = icmp ugt i32 %9, 52
  br i1 %19, label %25, label %20, !prof !520

20:                                               ; preds = %18
  %21 = zext nneg i32 %9 to i64
  %22 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !126
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %187, label %25, !prof !521

25:                                               ; preds = %20, %18
  %26 = load ptr, ptr @reg_base_value, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !522

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 8, !tbaa !239
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp ult i32 %9, %31
  br i1 %32, label %33, label %187, !prof !523

33:                                               ; preds = %30
  %34 = load ptr, ptr @new_reg_base_value, align 8, !tbaa !115
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36, !prof !522

36:                                               ; preds = %33
  %37 = zext i32 %9 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41, !prof !523

41:                                               ; preds = %36
  %42 = load ptr, ptr @df, align 8, !tbaa !115
  %43 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !429
  %45 = getelementptr inbounds ptr, ptr %44, i64 %37
  %46 = load ptr, ptr %45, align 8, !tbaa !115
  %47 = getelementptr inbounds %struct.df_reg_info, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !432
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %187, label %50

50:                                               ; preds = %41, %36, %33
  %51 = zext i32 %9 to i64
  %52 = getelementptr inbounds %struct.VEC_rtx_base, ptr %26, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  br label %187

54:                                               ; preds = %2
  %55 = load i1, ptr @copying_arguments, align 1
  br i1 %55, label %56, label %187, !prof !524

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !126
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !115
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %69, label %61, !prof !525

61:                                               ; preds = %56
  %62 = load i32, ptr %58, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 49
  br i1 %64, label %65, label %187, !prof !526

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !126
  %68 = icmp eq ptr %67, %59
  br i1 %68, label %69, label %187, !prof !527

69:                                               ; preds = %65, %56
  %70 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 6, i32 noundef 0, ptr noundef nonnull %4) #22
  br label %187

71:                                               ; preds = %2
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !126
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -49
  %77 = icmp ult i32 %76, 2
  br i1 %77, label %78, label %186, !prof !528

78:                                               ; preds = %2, %71, %2
  %79 = phi ptr [ %4, %2 ], [ %73, %71 ], [ %4, %2 ]
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !126
  %82 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !126
  %84 = load i32, ptr %81, align 8
  %85 = and i32 %84, 65535
  %86 = and i32 %84, 1073807359
  %87 = icmp eq i32 %86, 1073741861
  br i1 %87, label %2, label %88, !prof !529

88:                                               ; preds = %78
  %89 = load i32, ptr %83, align 8
  %90 = and i32 %89, 1073807359
  %91 = icmp eq i32 %90, 1073741861
  br i1 %91, label %2, label %92, !prof !529

92:                                               ; preds = %88
  %93 = icmp eq i32 %85, 37
  br i1 %93, label %94, label %98, !prof !530

94:                                               ; preds = %92
  %95 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %81)
  %96 = icmp eq ptr %95, null
  %97 = select i1 %96, ptr %81, ptr %95, !prof !531
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi ptr [ %81, %92 ], [ %97, %94 ]
  %100 = load i32, ptr %83, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 37
  br i1 %102, label %103, label %107, !prof !532

103:                                              ; preds = %98
  %104 = tail call fastcc ptr @find_base_value(ptr noundef nonnull %83)
  %105 = icmp eq ptr %104, null
  %106 = select i1 %105, ptr %83, ptr %104, !prof !533
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi ptr [ %83, %98 ], [ %106, %103 ]
  %109 = load i32, ptr %99, align 8
  %110 = trunc i32 %109 to i16
  switch i16 %110, label %114 [
    i16 45, label %187
    i16 44, label %187
    i16 6, label %111
  ], !prof !534

111:                                              ; preds = %107
  %112 = and i32 %109, 16711680
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %187

114:                                              ; preds = %111, %107
  %115 = load i32, ptr %108, align 8
  %116 = trunc i32 %115 to i16
  switch i16 %116, label %120 [
    i16 45, label %187
    i16 44, label %187
    i16 6, label %117
  ], !prof !535

117:                                              ; preds = %114
  %118 = and i32 %115, 16711680
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %187

120:                                              ; preds = %117, %114
  %121 = and i32 %115, 65535
  %122 = icmp eq i32 %121, 30
  br i1 %122, label %129, label %123, !prof !536

123:                                              ; preds = %120
  %124 = and i32 %109, 65535
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !130
  %128 = icmp eq i32 %127, 9
  br i1 %128, label %129, label %130, !prof !537

129:                                              ; preds = %123, %120
  br label %2

130:                                              ; preds = %123
  %131 = icmp eq i32 %124, 30
  br i1 %131, label %137, label %132, !prof !537

132:                                              ; preds = %130
  %133 = zext nneg i32 %121 to i64
  %134 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !130
  %136 = icmp eq i32 %135, 9
  br i1 %136, label %137, label %187, !prof !537

137:                                              ; preds = %132, %130
  br label %2

138:                                              ; preds = %2
  %139 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !126
  br label %2

141:                                              ; preds = %2
  %142 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %143 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !126
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 30
  br i1 %147, label %148, label %187, !prof !538

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !126
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %187, label %152, !prof !539

152:                                              ; preds = %148
  %153 = load ptr, ptr %142, align 8, !tbaa !126
  br label %2

154:                                              ; preds = %2
  %155 = tail call zeroext i8 @target_default_pointer_address_modes_p() #22
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %186, label %157

157:                                              ; preds = %154
  %158 = load i32, ptr %4, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !126
  %164 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !126
  %165 = icmp ult i8 %163, %164
  br i1 %165, label %186, label %166

166:                                              ; preds = %157, %2, %2, %2, %2, %2, %2, %2
  %167 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !126
  br label %2

169:                                              ; preds = %2, %2
  %170 = tail call zeroext i8 @target_default_pointer_address_modes_p() #22
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %186, label %172, !prof !540

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !126
  %175 = tail call fastcc ptr @find_base_value(ptr noundef %174)
  %176 = icmp eq ptr %175, null
  br i1 %176, label %187, label %177, !prof !541

177:                                              ; preds = %172
  %178 = load i32, ptr %175, align 8
  %179 = and i32 %178, 65535
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !130
  %183 = icmp eq i32 %182, 9
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %175, i8 noundef zeroext 0) #22
  br label %187

186:                                              ; preds = %169, %71, %2, %157, %154
  br label %187

187:                                              ; preds = %114, %114, %107, %20, %2, %50, %172, %177, %184, %141, %148, %107, %111, %117, %132, %54, %61, %65, %30, %41, %2, %186, %69, %13
  %188 = phi ptr [ null, %186 ], [ %70, %69 ], [ %17, %13 ], [ %4, %2 ], [ %39, %41 ], [ null, %30 ], [ null, %65 ], [ null, %61 ], [ null, %54 ], [ %99, %107 ], [ %99, %111 ], [ %108, %117 ], [ null, %132 ], [ null, %148 ], [ null, %141 ], [ %185, %184 ], [ %175, %177 ], [ null, %172 ], [ %53, %50 ], [ %4, %2 ], [ null, %20 ], [ %99, %107 ], [ %108, %114 ], [ %108, %114 ]
  ret ptr %188
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_pa_reg_known_value(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #11 !prof !114 {
  %5 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %7 ]
  %12 = load ptr, ptr @reg_known_value, align 8, !tbaa !115
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 %11
  tail call void %2(ptr noundef %15, ptr noundef %3) #22
  br label %16

16:                                               ; preds = %10, %14
  %17 = add i64 %11, 1
  %18 = load i32, ptr @reg_known_value_size, align 4, !tbaa !130
  %19 = zext i32 %18 to i64
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %10, !llvm.loop !542

21:                                               ; preds = %16, %7
  %22 = icmp eq ptr %0, @reg_known_value
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull @reg_known_value, ptr noundef %3) #22
  br label %24

24:                                               ; preds = %21, %23, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!113}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!35 = !{ptr @alias_set_subset_of, ptr @splay_tree_lookup, i64 36}
!36 = !{ptr @alias_sets_conflict_p, ptr @splay_tree_lookup, i64 18}
!37 = !{ptr @get_alias_set, ptr @tree_strip_nop_conversions, i64 409846}
!38 = !{ptr @get_alias_set, ptr @get_alias_set, i64 120548}
!39 = !{ptr @get_alias_set, ptr @vec_gc_p_reserve, i64 6}
!40 = !{ptr @get_alias_set, ptr @record_component_aliases, i64 58}
!41 = !{ptr @component_uses_parent_alias_set, ptr @get_alias_set, i64 6040}
!42 = !{ptr @get_deref_alias_set, ptr @get_alias_set, i64 1122}
!43 = !{ptr @record_component_aliases, ptr @get_alias_set, i64 86}
!44 = !{ptr @record_component_aliases, ptr @record_alias_subset, i64 44}
!45 = !{ptr @record_alias_subset, ptr @ggc_alloc_stat, i64 10}
!46 = !{ptr @record_alias_subset, ptr @splay_tree_new_with_allocator, i64 10}
!47 = !{ptr @record_alias_subset, ptr @splay_tree_foreach, i64 8}
!48 = !{ptr @record_alias_subset, ptr @splay_tree_insert, i64 39}
!49 = !{ptr @insert_subset_children, ptr @splay_tree_insert, i64 68}
!50 = !{ptr @get_frame_alias_set, ptr @new_alias_set, i64 1}
!51 = !{ptr @canon_rtx, ptr @canon_rtx, i64 4303194}
!52 = !{ptr @canon_rtx, ptr @replace_equiv_address_nv, i64 3239468}
!53 = !{ptr @find_base_term, ptr @ix86_find_base_term, i64 4546817}
!54 = !{ptr @find_base_term, ptr @find_base_term, i64 1110477}
!55 = !{ptr @true_dependence, ptr @find_base_term, i64 1229094}
!56 = !{ptr @true_dependence, ptr @canon_rtx, i64 2018}
!57 = !{ptr @true_dependence, ptr @rtx_equal_p, i64 409164}
!58 = !{ptr @true_dependence, ptr @memrefs_conflict_p, i64 742}
!59 = !{ptr @true_dependence, ptr @splay_tree_lookup, i64 13}
!60 = !{ptr @true_dependence, ptr @nonoverlapping_memrefs_p, i64 595}
!61 = !{ptr @true_dependence, ptr @ao_ref_from_mem, i64 1038}
!62 = !{ptr @memrefs_conflict_p, ptr @gen_rtx_CONST_INT, i64 1042}
!63 = !{ptr @memrefs_conflict_p, ptr @gen_rtx_fmt_ee_stat, i64 1042}
!64 = !{ptr @memrefs_conflict_p, ptr @canon_rtx, i64 1042}
!65 = !{ptr @memrefs_conflict_p, ptr @rtx_equal_for_memref_p, i64 262480}
!66 = !{ptr @memrefs_conflict_p, ptr @memrefs_conflict_p, i64 45945}
!67 = !{ptr @canon_true_dependence, ptr @find_base_term, i64 1297468}
!68 = !{ptr @canon_true_dependence, ptr @canon_rtx, i64 57245}
!69 = !{ptr @canon_true_dependence, ptr @rtx_equal_p, i64 647888}
!70 = !{ptr @canon_true_dependence, ptr @memrefs_conflict_p, i64 56399}
!71 = !{ptr @canon_true_dependence, ptr @splay_tree_lookup, i64 16}
!72 = !{ptr @canon_true_dependence, ptr @nonoverlapping_memrefs_p, i64 724}
!73 = !{ptr @canon_true_dependence, ptr @ao_ref_from_mem, i64 1076}
!74 = !{ptr @anti_dependence, ptr @write_dependence_p, i64 173063}
!75 = !{ptr @write_dependence_p, ptr @find_base_term, i64 744568}
!76 = !{ptr @write_dependence_p, ptr @canon_rtx, i64 35619}
!77 = !{ptr @write_dependence_p, ptr @rtx_equal_p, i64 268945}
!78 = !{ptr @write_dependence_p, ptr @memrefs_conflict_p, i64 17634}
!79 = !{ptr @write_dependence_p, ptr @nonoverlapping_memrefs_p, i64 218}
!80 = !{ptr @write_dependence_p, ptr @ao_ref_from_mem, i64 380}
!81 = !{ptr @output_dependence, ptr @write_dependence_p, i64 30731}
!82 = !{ptr @init_alias_target, ptr @ix86_function_arg_regno_p, i64 53}
!83 = !{ptr @init_alias_target, ptr @ix86_hard_regno_mode_ok, i64 3}
!84 = !{ptr @init_alias_target, ptr @gen_rtx_REG, i64 3}
!85 = !{ptr @init_alias_target, ptr @gen_rtx_fmt_e_stat, i64 7}
!86 = !{ptr @memory_modified_in_insn_p, ptr @note_stores, i64 184161}
!87 = !{ptr @memory_modified_1, ptr @write_dependence_p, i64 66139}
!88 = !{ptr @init_alias_analysis, ptr @max_reg_num, i64 1125}
!89 = !{ptr @init_alias_analysis, ptr @ggc_alloc_cleared_stat, i64 375}
!90 = !{ptr @init_alias_analysis, ptr @xcalloc, i64 375}
!91 = !{ptr @init_alias_analysis, ptr @vec_gc_p_reserve_exact, i64 7}
!92 = !{ptr @init_alias_analysis, ptr @xmalloc, i64 750}
!93 = !{ptr @init_alias_analysis, ptr @get_insns, i64 750}
!94 = !{ptr @init_alias_analysis, ptr @prologue_epilogue_contains, i64 5646475}
!95 = !{ptr @init_alias_analysis, ptr @find_reg_note, i64 5501149}
!96 = !{ptr @init_alias_analysis, ptr @note_stores, i64 11045984}
!97 = !{ptr @init_alias_analysis, ptr @single_set_2, i64 315049}
!98 = !{ptr @init_alias_analysis, ptr @find_reg_equal_equiv_note, i64 1635209}
!99 = !{ptr @init_alias_analysis, ptr @rtx_varies_p, i64 786050}
!100 = !{ptr @init_alias_analysis, ptr @rtx_equal_p, i64 16706}
!101 = !{ptr @init_alias_analysis, ptr @free, i64 750}
!102 = !{ptr @record_set, ptr @find_base_value, i64 1122672}
!103 = !{ptr @end_alias_analysis, ptr @ggc_free, i64 375}
!104 = !{ptr @end_alias_analysis, ptr @free, i64 375}
!105 = !{ptr @rtx_equal_for_memref_p, ptr @rtx_equal_for_memref_p, i64 8309}
!106 = !{ptr @ao_ref_from_mem, ptr @ao_ref_init, i64 1179}
!107 = !{ptr @ao_ref_from_mem, ptr @ao_ref_base, i64 1179}
!108 = !{ptr @ao_ref_from_mem, ptr @get_spill_slot_decl, i64 1179}
!109 = !{ptr @find_base_value, ptr @ix86_find_base_term, i64 1306335}
!110 = !{ptr @find_base_value, ptr @gen_rtx_fmt_e_stat, i64 393}
!111 = !{ptr @find_base_value, ptr @find_base_value, i64 37217}
!112 = !{ptr @find_base_value, ptr @target_default_pointer_address_modes_p, i64 2743}
!113 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!114 = !{!"function_entry_count", i64 0}
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !{!120, !116, i64 8}
!120 = !{!"_IO_FILE", !121, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !121, i64 112, !121, i64 116, !122, i64 120, !123, i64 128, !117, i64 130, !117, i64 131, !116, i64 136, !122, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !122, i64 184, !121, i64 192, !117, i64 196}
!121 = !{!"int", !117, i64 0}
!122 = !{!"long", !117, i64 0}
!123 = !{!"short", !117, i64 0}
!124 = !{!120, !116, i64 16}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{!117, !117, i64 0}
!127 = !{!120, !116, i64 40}
!128 = !{!120, !116, i64 48}
!129 = !{!120, !121, i64 0}
!130 = !{!121, !121, i64 0}
!131 = distinct !{!131, !132, !133}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = !{!"function_entry_count", i64 36}
!135 = !{!"branch_weights", i32 0, i32 36}
!136 = !{!137, !121, i64 4}
!137 = !{!"alias_set_entry_d", !121, i64 0, !121, i64 4, !116, i64 8}
!138 = !{!137, !116, i64 8}
!139 = !{!"branch_weights", i32 36, i32 0}
!140 = !{!"function_entry_count", i64 825}
!141 = !{!"branch_weights", i32 2107, i32 41}
!142 = !{!"branch_weights", i32 35, i32 6}
!143 = !{!"branch_weights", i32 6, i32 0}
!144 = !{!"branch_weights", i32 0, i32 41}
!145 = !{!"branch_weights", i32 41, i32 0}
!146 = !{!"branch_weights", i32 6, i32 35}
!147 = !{!"function_entry_count", i64 889983}
!148 = !{!"branch_weights", i32 0, i32 889983}
!149 = !{!"branch_weights", i32 380787, i32 509196}
!150 = !{!"branch_weights", i32 0, i32 509196}
!151 = !{!152, !116, i64 104}
!152 = !{!"lang_hooks", !116, i64 0, !122, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !153, i64 240, !154, i64 248, !155, i64 256, !156, i64 272, !157, i64 432, !158, i64 560, !116, i64 584, !116, i64 592, !116, i64 600, !116, i64 608, !116, i64 616, !116, i64 624, !116, i64 632, !116, i64 640, !116, i64 648, !116, i64 656, !116, i64 664, !117, i64 672}
!153 = !{!"lang_hooks_for_tree_inlining", !116, i64 0}
!154 = !{!"lang_hooks_for_callgraph", !116, i64 0}
!155 = !{!"lang_hooks_for_tree_dump", !116, i64 0, !116, i64 8}
!156 = !{!"lang_hooks_for_decls", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152}
!157 = !{!"lang_hooks_for_types", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !117, i64 120}
!158 = !{!"lang_hooks_for_lto", !116, i64 0, !116, i64 8, !116, i64 16}
!159 = !{!"VP", i32 0, i64 509196, i64 4614904357297757363, i64 509196}
!160 = !{!"branch_weights", i32 506502, i32 2694}
!161 = !{!"branch_weights", i32 0, i32 506502}
!162 = !{!"branch_weights", i32 506502, i32 0, i32 87414, i32 101843, i32 0, i32 0, i32 0, i32 0}
!163 = !{!"branch_weights", i32 1204, i32 505298}
!164 = distinct !{!164, !132, !133}
!165 = !{!"branch_weights", i32 0, i32 1204}
!166 = !{!"branch_weights", i32 1204, i32 0}
!167 = !{!"branch_weights", i32 519424, i32 100508, i32 116445, i32 0, i32 0, i32 0, i32 0, i32 0}
!168 = !{!"branch_weights", i32 87698, i32 418804}
!169 = !{!"branch_weights", i32 99550, i32 958}
!170 = !{!"branch_weights", i32 116445, i32 0}
!171 = !{!"branch_weights", i32 17382, i32 198613}
!172 = distinct !{!172, !133}
!173 = distinct !{!173, !132, !133}
!174 = !{!"branch_weights", i32 294, i32 418510}
!175 = !{!"branch_weights", i32 418510, i32 0}
!176 = !{!"branch_weights", i32 0, i32 418510}
!177 = !{!178, !121, i64 24}
!178 = !{!"mem_attrs", !116, i64 0, !116, i64 8, !116, i64 16, !121, i64 24, !121, i64 28, !117, i64 32}
!179 = !{!"branch_weights", i32 87992, i32 421204}
!180 = !{!"branch_weights", i32 0, i32 468779}
!181 = !{!"branch_weights", i32 468779, i32 0}
!182 = !{!"branch_weights", i32 584, i32 468195}
!183 = !{!"branch_weights", i32 0, i32 584}
!184 = !{!"VP", i32 0, i64 584, i64 4614904357297757363, i64 584}
!185 = !{!"branch_weights", i32 62, i32 522}
!186 = !{!"branch_weights", i32 31, i32 0, i32 0, i32 0, i32 31}
!187 = !{!"branch_weights", i32 31, i32 0}
!188 = !{!"branch_weights", i32 0, i32 34}
!189 = !{!"branch_weights", i32 1, i32 33}
!190 = !{!191, !121, i64 0}
!191 = !{!"VEC_alias_set_entry_base", !121, i64 0, !121, i64 4, !117, i64 8}
!192 = !{!191, !121, i64 4}
!193 = !{!"branch_weights", i32 4, i32 30}
!194 = !{!"branch_weights", i32 20, i32 31, i32 9, i32 2, i32 0, i32 0}
!195 = !{!"function_entry_count", i64 15037}
!196 = !{!"function_entry_count", i64 1122}
!197 = !{!"branch_weights", i32 0, i32 1122}
!198 = !{!"branch_weights", i32 768, i32 354}
!199 = !{!"branch_weights", i32 1122, i32 0}
!200 = !{!"function_entry_count", i64 3}
!201 = !{!"function_entry_count", i64 42}
!202 = !{!"branch_weights", i32 20, i32 22}
!203 = !{!"branch_weights", i32 11, i32 9, i32 2, i32 0, i32 0}
!204 = !{!"branch_weights", i32 11, i32 0}
!205 = !{!206, !121, i64 0}
!206 = !{!"VEC_tree_base", !121, i64 0, !121, i64 4, !117, i64 8}
!207 = distinct !{!207, !132, !133}
!208 = !{!"branch_weights", i32 1, i32 175}
!209 = !{!"branch_weights", i32 69, i32 0}
!210 = !{!"branch_weights", i32 44, i32 25}
!211 = !{!"branch_weights", i32 175, i32 929}
!212 = distinct !{!212, !132, !133}
!213 = !{!"function_entry_count", i64 44}
!214 = !{!"branch_weights", i32 0, i32 44}
!215 = !{!"branch_weights", i32 10, i32 34}
!216 = !{!137, !121, i64 0}
!217 = !{!"branch_weights", i32 5, i32 39}
!218 = !{!"branch_weights", i32 31, i32 8}
!219 = !{!"branch_weights", i32 8, i32 0}
!220 = !{!"function_entry_count", i64 68}
!221 = !{!"alias.c;insert_subset_children"}
!222 = !{!223, !122, i64 0}
!223 = !{!"splay_tree_node_s", !122, i64 0, !122, i64 8, !116, i64 16, !116, i64 24}
!224 = !{!223, !122, i64 8}
!225 = !{!"function_entry_count", i64 12}
!226 = !{!"branch_weights", i32 1, i32 11}
!227 = !{!"function_entry_count", i64 9373938}
!228 = !{!"branch_weights", i32 2594182, i32 6779756}
!229 = !{!"branch_weights", i32 18157, i32 2576025}
!230 = !{!"branch_weights", i32 17675, i32 482}
!231 = !{!"branch_weights", i32 1395, i32 16762}
!232 = !{!"branch_weights", i32 482, i32 16280}
!233 = !{!"branch_weights", i32 482, i32 17675}
!234 = !{!"branch_weights", i32 5593072, i32 523723, i32 3239468}
!235 = !{!"branch_weights", i32 523723, i32 0}
!236 = !{!"function_entry_count", i64 4545774}
!237 = !{!"branch_weights", i32 323660, i32 1617532, i32 0, i32 0, i32 0, i32 1043, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 215094, i32 0, i32 244394, i32 325261, i32 0, i32 0, i32 1818790, i32 0}
!238 = !{!"branch_weights", i32 0, i32 1617532}
!239 = !{!240, !121, i64 0}
!240 = !{!"VEC_rtx_base", !121, i64 0, !121, i64 4, !117, i64 8}
!241 = !{!"branch_weights", i32 1617532, i32 0}
!242 = !{!"branch_weights", i32 0, i32 215094}
!243 = !{!"branch_weights", i32 349, i32 215330}
!244 = !{!245, !116, i64 8}
!245 = !{!"elt_loc_list", !116, i64 0, !116, i64 8, !116, i64 16}
!246 = !{!"branch_weights", i32 585, i32 214745}
!247 = distinct !{!247, !132, !133}
!248 = !{!"branch_weights", i32 244394, i32 0}
!249 = !{!"branch_weights", i32 0, i32 569655}
!250 = !{!"branch_weights", i32 248045, i32 321610}
!251 = !{!"branch_weights", i32 1814, i32 246231}
!252 = !{!"branch_weights", i32 0, i32 323424}
!253 = !{!"branch_weights", i32 2163, i32 321261}
!254 = !{!"branch_weights", i32 0, i32 244394, i32 0, i32 76867}
!255 = !{!"branch_weights", i32 80, i32 76787}
!256 = !{!"branch_weights", i32 2243, i32 0}
!257 = !{!"function_entry_count", i64 987288}
!258 = !{!"branch_weights", i32 181570, i32 2651019}
!259 = !{!"branch_weights", i32 0, i32 181570}
!260 = !{!"branch_weights", i32 53738, i32 181886}
!261 = !{!"branch_weights", i32 1, i32 26722}
!262 = !{!"branch_weights", i32 127832, i32 54054}
!263 = distinct !{!263, !132, !133}
!264 = !{!"branch_weights", i32 27015, i32 26723, i32 316}
!265 = !{!"branch_weights", i32 26722, i32 27332}
!266 = distinct !{!266, !132, !133}
!267 = !{!268, !116, i64 16}
!268 = !{!"cselib_val_struct", !121, i64 0, !121, i64 4, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32}
!269 = !{!"branch_weights", i32 0, i32 26723}
!270 = !{!"function_entry_count", i64 115849}
!271 = !{!"branch_weights", i32 115849, i32 0}
!272 = !{!"function_entry_count", i64 1691}
!273 = !{!"branch_weights", i32 198, i32 1493}
!274 = !{!178, !116, i64 0}
!275 = !{!"branch_weights", i32 132, i32 1559}
!276 = !{!"branch_weights", i32 842, i32 849}
!277 = !{!"branch_weights", i32 1691, i32 0}
!278 = !{!178, !116, i64 8}
!279 = distinct !{!279, !132, !133}
!280 = distinct !{!280, !132, !133}
!281 = distinct !{!281, !132, !133}
!282 = distinct !{!282, !132, !133}
!283 = !{!178, !117, i64 32}
!284 = !{!178, !116, i64 16}
!285 = distinct !{!285, !132, !133}
!286 = !{!"function_entry_count", i64 410511}
!287 = !{!"branch_weights", i32 410511, i32 0}
!288 = !{!"branch_weights", i32 0, i32 410511}
!289 = !{!"branch_weights", i32 813, i32 409698}
!290 = !{!"branch_weights", i32 813, i32 0}
!291 = !{!"branch_weights", i32 382598, i32 27100}
!292 = !{!"branch_weights", i32 0, i32 409698}
!293 = !{!"branch_weights", i32 488, i32 409210}
!294 = !{!"branch_weights", i32 409698, i32 0}
!295 = !{!"branch_weights", i32 408078, i32 1620}
!296 = !{!"branch_weights", i32 557, i32 409141}
!297 = !{!"branch_weights", i32 496, i32 0, i32 408645}
!298 = !{!"branch_weights", i32 408645, i32 0}
!299 = !{!"branch_weights", i32 1326, i32 1326402}
!300 = !{!"branch_weights", i32 0, i32 1326}
!301 = !{!"branch_weights", i32 1326, i32 0}
!302 = !{!"branch_weights", i32 405, i32 1325997}
!303 = !{!"branch_weights", i32 0, i32 405}
!304 = !{!"branch_weights", i32 405, i32 0}
!305 = !{!"branch_weights", i32 1240788, i32 85209}
!306 = !{!"branch_weights", i32 0, i32 1240788}
!307 = !{!"branch_weights", i32 175270, i32 1065518}
!308 = !{!"branch_weights", i32 1065518, i32 0}
!309 = !{!"branch_weights", i32 174734, i32 1066054}
!310 = !{!"branch_weights", i32 1066054, i32 0}
!311 = !{!"branch_weights", i32 408956, i32 742}
!312 = !{!"branch_weights", i32 597, i32 145}
!313 = !{!"branch_weights", i32 0, i32 597}
!314 = !{!"branch_weights", i32 198, i32 399}
!315 = !{!"branch_weights", i32 597, i32 0}
!316 = !{!"branch_weights", i32 0, i32 1584}
!317 = !{!"branch_weights", i32 1354, i32 230}
!318 = !{!"branch_weights", i32 230, i32 0}
!319 = !{!"branch_weights", i32 223, i32 1361}
!320 = !{!"branch_weights", i32 1261, i32 100}
!321 = !{!"branch_weights", i32 0, i32 100}
!322 = !{!"branch_weights", i32 100, i32 0}
!323 = !{i8 0, i8 2}
!324 = !{!"branch_weights", i32 405, i32 1179}
!325 = !{!"branch_weights", i32 1179, i32 0}
!326 = !{!"function_entry_count", i64 173240}
!327 = !{!"alias.c;memrefs_conflict_p"}
!328 = !{!"branch_weights", i32 160, i32 173080}
!329 = !{!"branch_weights", i32 26338, i32 146902}
!330 = !{!"branch_weights", i32 -551153449, i32 0, i32 0, i32 0, i32 7698352, i32 0, i32 0}
!331 = !{!"branch_weights", i32 0, i32 711}
!332 = !{i32 0, i32 2}
!333 = !{!"branch_weights", i32 89682, i32 83558}
!334 = !{!"branch_weights", i32 0, i32 83558}
!335 = !{!"branch_weights", i32 55463, i32 28095}
!336 = !{!"branch_weights", i32 293, i32 83265}
!337 = !{!"branch_weights", i32 28095, i32 55170}
!338 = !{!"branch_weights", i32 31379, i32 58303}
!339 = !{!"branch_weights", i32 3019, i32 28360}
!340 = !{!"branch_weights", i32 3009, i32 10}
!341 = !{!"branch_weights", i32 1318, i32 1691}
!342 = !{!"branch_weights", i32 1318, i32 0}
!343 = !{!"branch_weights", i32 28360, i32 0}
!344 = !{!"branch_weights", i32 0, i32 31379}
!345 = !{!"branch_weights", i32 54921, i32 3382}
!346 = !{!"branch_weights", i32 54921, i32 0}
!347 = !{!"branch_weights", i32 0, i32 3382}
!348 = !{!"branch_weights", i32 1691, i32 1691}
!349 = !{!"branch_weights", i32 2859481, i32 0}
!350 = !{!"branch_weights", i32 0, i32 1691}
!351 = !{!"branch_weights", i32 657, i32 1034}
!352 = !{!"branch_weights", i32 1034, i32 657}
!353 = !{!"function_entry_count", i64 924282}
!354 = !{!"branch_weights", i32 924282, i32 0}
!355 = !{!"branch_weights", i32 0, i32 924282}
!356 = !{!"branch_weights", i32 275548, i32 648734}
!357 = !{!"branch_weights", i32 275548, i32 0}
!358 = !{!"branch_weights", i32 163213, i32 485521}
!359 = !{!"branch_weights", i32 0, i32 648734}
!360 = !{!"branch_weights", i32 213, i32 648521}
!361 = !{!"branch_weights", i32 648734, i32 0}
!362 = !{!"branch_weights", i32 460815, i32 187919}
!363 = !{!"branch_weights", i32 592335, i32 56399}
!364 = !{!"branch_weights", i32 726, i32 55673}
!365 = !{!"branch_weights", i32 0, i32 726}
!366 = !{!"branch_weights", i32 132, i32 594}
!367 = !{!"branch_weights", i32 726, i32 0}
!368 = !{!"branch_weights", i32 107, i32 619}
!369 = !{!"branch_weights", i32 0, i32 619}
!370 = !{!"function_entry_count", i64 173063}
!371 = !{i32 0, i32 -1}
!372 = !{!"function_entry_count", i64 269933}
!373 = !{!"alias.c;write_dependence_p"}
!374 = !{!"branch_weights", i32 269933, i32 0}
!375 = !{!"branch_weights", i32 470, i32 269463}
!376 = !{!"branch_weights", i32 470, i32 0}
!377 = !{!"branch_weights", i32 167, i32 269296}
!378 = !{!"branch_weights", i32 167, i32 0}
!379 = !{!"branch_weights", i32 557, i32 268739}
!380 = !{!"branch_weights", i32 0, i32 269296}
!381 = !{!"branch_weights", i32 509, i32 268787}
!382 = !{!"branch_weights", i32 0, i32 268787}
!383 = !{!"branch_weights", i32 -828185240, i32 0}
!384 = !{!"branch_weights", i32 269296, i32 0}
!385 = !{!"branch_weights", i32 63320, i32 205976}
!386 = !{!"branch_weights", i32 325, i32 205651}
!387 = !{!"branch_weights", i32 33147, i32 0, i32 172504}
!388 = !{!"branch_weights", i32 172504, i32 0}
!389 = !{!"branch_weights", i32 363637152, i32 -2076413144}
!390 = !{!"branch_weights", i32 239497, i32 29799}
!391 = !{!"branch_weights", i32 368, i32 29431}
!392 = !{!"branch_weights", i32 368, i32 0}
!393 = !{!"branch_weights", i32 0, i32 368}
!394 = !{!"function_entry_count", i64 30731}
!395 = !{!"function_entry_count", i64 1}
!396 = !{!"branch_weights", i32 50, i32 3}
!397 = !{!"branch_weights", i32 0, i32 3}
!398 = !{!"branch_weights", i32 1, i32 52}
!399 = distinct !{!399, !132, !133}
!400 = !{!"function_entry_count", i64 184161}
!401 = !{!"branch_weights", i32 184161, i32 0}
!402 = !{!"function_entry_count", i64 186221}
!403 = !{!"alias.c;memory_modified_1"}
!404 = !{!"branch_weights", i32 33091, i32 153130}
!405 = !{!"branch_weights", i32 33048, i32 43}
!406 = !{!"branch_weights", i32 33048, i32 0}
!407 = !{!"function_entry_count", i64 375}
!408 = !{!"branch_weights", i32 375, i32 0}
!409 = !{!"branch_weights", i32 1, i32 374}
!410 = !{!240, !121, i64 4}
!411 = !{!"branch_weights", i32 368, i32 7}
!412 = !{}
!413 = !{!"VP", i32 1, i64 375, i64 513, i64 375}
!414 = !{!"VP", i32 1, i64 750, i64 513, i64 750}
!415 = !{!"VP", i32 1, i64 750, i64 513, i64 308, i64 65, i64 220, i64 129, i64 120, i64 257, i64 102}
!416 = !{!"branch_weights", i32 1, i32 749}
!417 = !{!"branch_weights", i32 1292650, i32 6973774, i32 0, i32 2826714, i32 1247460, i32 3729302}
!418 = !{!"branch_weights", i32 5401462, i32 5646486}
!419 = !{!"branch_weights", i32 5644544, i32 1942}
!420 = !{!"branch_weights", i32 10730956, i32 315050}
!421 = !{!"branch_weights", i32 5229796, i32 5501160}
!422 = !{!"branch_weights", i32 5501160, i32 0}
!423 = !{!"branch_weights", i32 11046006, i32 0}
!424 = !{!"branch_weights", i32 44292, i32 11001714}
!425 = !{!"branch_weights", i32 6586936, i32 4414778}
!426 = !{!"branch_weights", i32 1635212, i32 4951724}
!427 = !{!"branch_weights", i32 1597970, i32 37242}
!428 = !{!"branch_weights", i32 36882, i32 360}
!429 = !{!430, !116, i64 216}
!430 = !{!"df", !117, i64 0, !117, i64 64, !116, i64 128, !431, i64 136, !431, i64 176, !116, i64 216, !116, i64 224, !116, i64 232, !121, i64 240, !121, i64 244, !116, i64 248, !121, i64 256, !121, i64 260, !116, i64 264, !116, i64 272, !116, i64 280, !116, i64 288, !116, i64 296, !116, i64 304, !116, i64 312, !116, i64 320, !116, i64 328, !116, i64 336, !121, i64 344, !121, i64 348, !116, i64 352, !121, i64 360, !121, i64 364, !117, i64 365, !117, i64 366}
!431 = !{!"df_ref_info", !116, i64 0, !116, i64 8, !116, i64 16, !121, i64 24, !121, i64 28, !121, i64 32, !121, i64 36}
!432 = !{!433, !121, i64 8}
!433 = !{!"df_reg_info", !116, i64 0, !121, i64 8}
!434 = !{!"branch_weights", i32 36346, i32 536}
!435 = !{!"branch_weights", i32 1598506, i32 36706}
!436 = !{!"branch_weights", i32 0, i32 36706}
!437 = !{!"branch_weights", i32 1106950, i32 528262}
!438 = !{!"branch_weights", i32 27222, i32 1079728}
!439 = !{!"branch_weights", i32 27094, i32 128}
!440 = !{!"branch_weights", i32 27094, i32 0}
!441 = !{!"branch_weights", i32 83248, i32 1023702}
!442 = !{!"branch_weights", i32 83248, i32 0}
!443 = !{!"branch_weights", i32 750, i32 3728552}
!444 = !{!"branch_weights", i32 749, i32 16069151}
!445 = distinct !{!445, !132, !133}
!446 = !{!"branch_weights", i32 750, i32 0}
!447 = !{!"branch_weights", i32 5247738, i32 33042}
!448 = !{!"branch_weights", i32 16336, i32 16706}
!449 = !{!"branch_weights", i32 16521, i32 185}
!450 = !{!"branch_weights", i32 749, i32 5280031}
!451 = distinct !{!451, !132, !133}
!452 = !{!"branch_weights", i32 375, i32 375}
!453 = distinct !{!453, !132, !133}
!454 = !{!"branch_weights", i32 374, i32 1}
!455 = !{!"branch_weights", i32 2578891, i32 41624}
!456 = !{!"branch_weights", i32 374, i32 2620141}
!457 = distinct !{!457, !132, !133}
!458 = !{!"function_entry_count", i64 11275718}
!459 = !{!"alias.c;record_set"}
!460 = !{!"branch_weights", i32 6966904, i32 4308814}
!461 = !{!"branch_weights", i32 0, i32 6966904}
!462 = !{!"branch_weights", i32 6966904, i32 0}
!463 = !{!"branch_weights", i32 5331384, i32 1635520}
!464 = !{!"branch_weights", i32 0, i32 13933808, i32 0}
!465 = distinct !{!465, !132, !133}
!466 = !{!"branch_weights", i32 270308, i32 6696596}
!467 = !{!"branch_weights", i32 6695292, i32 1304}
!468 = !{!"branch_weights", i32 0, i32 1304}
!469 = !{!"branch_weights", i32 1304, i32 0, i32 0, i32 0, i32 0}
!470 = !{!"branch_weights", i32 1635520, i32 5059772}
!471 = !{!"branch_weights", i32 2214506, i32 2845266}
!472 = !{!"branch_weights", i32 1121368, i32 2728658}
!473 = !{!"branch_weights", i32 1121368, i32 0}
!474 = !{!475, !121, i64 0}
!475 = !{!"VEC_alias_set_entry_gc", !191, i64 0}
!476 = distinct !{!476, !132, !133}
!477 = distinct !{!477, !132, !133}
!478 = distinct !{!478, !132, !133}
!479 = distinct !{!479, !132, !133}
!480 = distinct !{!480, !132, !133}
!481 = !{!"function_entry_count", i64 187577}
!482 = !{!"alias.c;rtx_equal_for_memref_p"}
!483 = !{!"branch_weights", i32 0, i32 187577}
!484 = !{!"branch_weights", i32 87240, i32 100337}
!485 = !{!"branch_weights", i32 12766, i32 87571}
!486 = !{!"branch_weights", i32 12766, i32 0}
!487 = !{!"branch_weights", i32 3309, i32 2746, i32 0, i32 0, i32 320, i32 6391, i32 0, i32 0}
!488 = !{!"branch_weights", i32 3309, i32 0}
!489 = !{!"branch_weights", i32 1328, i32 1981}
!490 = !{!"branch_weights", i32 1691, i32 290}
!491 = !{!"branch_weights", i32 3019, i32 0}
!492 = !{!493, !121, i64 0}
!493 = !{!"rtvec_def", !121, i64 0, !117, i64 8}
!494 = distinct !{!494, !132, !133}
!495 = distinct !{!495, !132, !133}
!496 = !{!"function_entry_count", i64 2763}
!497 = !{!"alias.c;ao_ref_from_mem"}
!498 = !{!"branch_weights", i32 223, i32 2540}
!499 = !{!"branch_weights", i32 1867536, i32 1390041}
!500 = !{!"branch_weights", i32 0, i32 1179}
!501 = !{!"branch_weights", i32 1179, i32 0, i32 0, i32 0}
!502 = !{!503, !116, i64 24}
!503 = !{!"function", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !121, i64 104, !121, i64 108, !121, i64 112, !121, i64 116, !121, i64 120, !121, i64 124, !116, i64 128, !121, i64 136, !121, i64 137, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139}
!504 = !{!505, !116, i64 64}
!505 = !{!"gimple_df", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !506, i64 32, !506, i64 48, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !121, i64 96, !507, i64 104}
!506 = !{!"pt_solution", !121, i64 0, !121, i64 0, !121, i64 0, !121, i64 0, !121, i64 0, !121, i64 0, !116, i64 8}
!507 = !{!"ssa_operands", !116, i64 0, !121, i64 8, !121, i64 12, !117, i64 16, !116, i64 24, !116, i64 32}
!508 = !{!509, !121, i64 44}
!509 = !{!"ao_ref_s", !116, i64 0, !116, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !121, i64 40, !121, i64 44}
!510 = !{!509, !116, i64 8}
!511 = !{!509, !121, i64 40}
!512 = !{!509, !122, i64 24}
!513 = !{!509, !122, i64 16}
!514 = !{!509, !122, i64 32}
!515 = !{!"function_entry_count", i64 1229778}
!516 = !{!"alias.c;find_base_value"}
!517 = !{!"branch_weights", i32 224144, i32 6980, i32 46, i32 644186, i32 252898, i32 21700, i32 27350, i32 60, i32 0, i32 49832, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2582, i32 0}
!518 = !{!"branch_weights", i32 536702, i32 107484}
!519 = !{!"branch_weights", i32 0, i32 644186}
!520 = !{!"branch_weights", i32 107484, i32 536702}
!521 = !{!"branch_weights", i32 536702, i32 0}
!522 = !{!"branch_weights", i32 0, i32 107484}
!523 = !{!"branch_weights", i32 107484, i32 0}
!524 = !{!"branch_weights", i32 750, i32 252148}
!525 = !{!"branch_weights", i32 370, i32 380}
!526 = !{!"branch_weights", i32 380, i32 0}
!527 = !{!"branch_weights", i32 0, i32 380}
!528 = !{!"branch_weights", i32 21700, i32 0}
!529 = !{!"branch_weights", i32 0, i32 49110}
!530 = !{!"branch_weights", i32 27282, i32 21828}
!531 = !{!"branch_weights", i32 27282, i32 0}
!532 = !{!"branch_weights", i32 5172, i32 43938}
!533 = !{!"branch_weights", i32 5172, i32 0}
!534 = !{!"branch_weights", i32 27410, i32 21700, i32 0, i32 0}
!535 = !{!"branch_weights", i32 27410, i32 0, i32 0, i32 0}
!536 = !{!"branch_weights", i32 22238, i32 5172}
!537 = !{!"branch_weights", i32 0, i32 5172}
!538 = !{!"branch_weights", i32 49832, i32 0}
!539 = !{!"branch_weights", i32 0, i32 49832}
!540 = !{!"branch_weights", i32 0, i32 2582}
!541 = !{!"branch_weights", i32 2582, i32 0}
!542 = distinct !{!542, !132, !133}
