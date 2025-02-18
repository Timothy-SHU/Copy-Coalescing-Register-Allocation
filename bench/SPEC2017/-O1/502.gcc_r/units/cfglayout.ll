; ModuleID = 'cfglayout.c'
source_filename = "cfglayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_location_t_base = type { i32, i32, [1 x i32] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@epilogue_locator = dso_local local_unnamed_addr global i32 0, align 4
@prologue_locator = dso_local local_unnamed_addr global i32 0, align 4
@block_locators_locs = internal unnamed_addr global ptr null, align 8
@block_locators_blocks = internal global ptr null, align 8
@locations_locators_locs = internal unnamed_addr global ptr null, align 8
@locations_locators_vals = internal unnamed_addr global ptr null, align 8
@last_location = internal unnamed_addr global i32 0, align 4
@curr_location = internal unnamed_addr global i32 0, align 4
@curr_block = internal unnamed_addr global ptr null, align 8
@last_block = internal unnamed_addr global ptr null, align 8
@curr_rtl_loc = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [15 x i8] c"into_cfglayout\00", align 1
@pass_into_cfg_layout_mode = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @into_cfg_layout_mode, ptr null, ptr null, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 1 } }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"outof_cfglayout\00", align 1
@pass_outof_cfg_layout_mode = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr null, ptr @outof_cfg_layout_mode, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 512, i32 0, i32 1 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Reordered sequence:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %i \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"duplicate of %i \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"compensation \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bb %i \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [%i]\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cfglayout.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@gt_ggc_r_gt_cfglayout_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @block_locators_blocks, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@cfg_layout_function_footer = dso_local local_unnamed_addr global ptr null, align 8
@cfg_layout_function_header = dso_local local_unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Emitting label for block %d\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !85 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !86
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !85 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !86
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !85 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !96

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !85 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !96

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !85 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !96

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !85 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !86
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !85 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !96

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !98
  store i8 %12, ptr %4, align 1, !tbaa !97
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !85 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !96

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !98
  store i8 %12, ptr %4, align 1, !tbaa !97
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !85 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !96

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !98
  store i8 %12, ptr %4, align 1, !tbaa !97
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !85 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !85 {
  %2 = load i32, ptr %0, align 8, !tbaa !100
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !85 {
  %2 = load i32, ptr %0, align 8, !tbaa !100
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !85 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !101
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !85 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !101
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !85 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !102

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @unlink_insn_chain(ptr noundef returned %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !105 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  store ptr null, ptr %3, align 8, !tbaa !97
  store ptr null, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %4, null
  br i1 %7, label %10, label %8, !prof !106

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %6, ptr %9, align 8, !tbaa !97
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12, !prof !107

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %4, ptr %13, align 8, !tbaa !97
  br label %15

14:                                               ; preds = %10
  tail call void @set_last_insn(ptr noundef %4) #19
  br label %15

15:                                               ; preds = %14, %12
  br i1 %7, label %16, label %17, !prof !106

16:                                               ; preds = %15
  tail call void @set_first_insn(ptr noundef %6) #19
  br label %17

17:                                               ; preds = %16, %15
  ret ptr %0
}

declare void @set_last_insn(ptr noundef) local_unnamed_addr #3

declare void @set_first_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @insn_locators_alloc() local_unnamed_addr #10 !prof !108 {
  store i32 0, ptr @epilogue_locator, align 4, !tbaa !101
  store i32 0, ptr @prologue_locator, align 4, !tbaa !101
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 4) #19
  store ptr %1, ptr @block_locators_locs, align 8, !tbaa !86
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 32) #19
  store ptr %2, ptr @block_locators_blocks, align 8, !tbaa !86
  %3 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 4) #19
  store ptr %3, ptr @locations_locators_locs, align 8, !tbaa !86
  %4 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 4) #19
  store ptr %4, ptr @locations_locators_vals, align 8, !tbaa !86
  store i32 -1, ptr @last_location, align 4, !tbaa !101
  store i32 -1, ptr @curr_location, align 4, !tbaa !101
  store ptr null, ptr @curr_block, align 8, !tbaa !86
  store ptr null, ptr @last_block, align 8, !tbaa !86
  store i32 0, ptr @curr_rtl_loc, align 4, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @insn_locators_finalize() local_unnamed_addr #10 !prof !108 {
  %1 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !101
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5, !prof !109

3:                                                ; preds = %0
  %4 = tail call i32 @curr_insn_locator()
  store i32 %4, ptr @epilogue_locator, align 4, !tbaa !101
  br label %5

5:                                                ; preds = %3, %0
  store i32 -1, ptr @curr_rtl_loc, align 4, !tbaa !101
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @curr_insn_locator() local_unnamed_addr #9 !prof !110 {
  %1 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !101
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %81, label %3, !prof !111

3:                                                ; preds = %0
  %4 = load ptr, ptr @last_block, align 8, !tbaa !86
  %5 = load ptr, ptr @curr_block, align 8, !tbaa !86
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %41, label %7, !prof !112

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %1, 1
  store i32 %8, ptr @curr_rtl_loc, align 4, !tbaa !101
  %9 = load ptr, ptr @block_locators_locs, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !113

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.VEC_int_base, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !114
  %14 = load i32, ptr %9, align 4, !tbaa !116
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18, !prof !113

16:                                               ; preds = %7, %11
  %17 = tail call ptr @vec_heap_o_reserve(ptr noundef %9, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  store ptr %17, ptr @block_locators_locs, align 8, !tbaa !86
  br label %18

18:                                               ; preds = %11, %16
  %19 = load ptr, ptr @block_locators_locs, align 8, !tbaa !86
  %20 = load i32, ptr %19, align 4, !tbaa !116
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !116
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.VEC_int_base, ptr %19, i64 0, i32 2, i64 %22
  store i32 %8, ptr %23, align 4, !tbaa !101
  %24 = load ptr, ptr @curr_block, align 8, !tbaa !86
  %25 = load ptr, ptr @block_locators_blocks, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27, !prof !113

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !117
  %30 = load i32, ptr %25, align 8, !tbaa !119
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34, !prof !113

32:                                               ; preds = %18, %27
  %33 = tail call ptr @vec_gc_p_reserve(ptr noundef %25, i32 noundef 1) #19
  store ptr %33, ptr @block_locators_blocks, align 8, !tbaa !86
  br label %34

34:                                               ; preds = %27, %32
  %35 = load ptr, ptr @block_locators_blocks, align 8, !tbaa !86
  %36 = load i32, ptr %35, align 8, !tbaa !119
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !119
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.VEC_tree_base, ptr %35, i64 0, i32 2, i64 %38
  store ptr %24, ptr %39, align 8, !tbaa !86
  %40 = load ptr, ptr @curr_block, align 8, !tbaa !86
  store ptr %40, ptr @last_block, align 8, !tbaa !86
  br label %41

41:                                               ; preds = %34, %3
  %42 = load i32, ptr @last_location, align 4, !tbaa !101
  %43 = load i32, ptr @curr_location, align 4, !tbaa !101
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %79, label %45, !prof !120

45:                                               ; preds = %41
  %46 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !101
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @curr_rtl_loc, align 4, !tbaa !101
  %48 = load ptr, ptr @locations_locators_locs, align 8, !tbaa !86
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50, !prof !121

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.VEC_int_base, ptr %48, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !114
  %53 = load i32, ptr %48, align 4, !tbaa !116
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57, !prof !122

55:                                               ; preds = %45, %50
  %56 = tail call ptr @vec_heap_o_reserve(ptr noundef %48, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  store ptr %56, ptr @locations_locators_locs, align 8, !tbaa !86
  br label %57

57:                                               ; preds = %50, %55
  %58 = load ptr, ptr @locations_locators_locs, align 8, !tbaa !86
  %59 = load i32, ptr %58, align 4, !tbaa !116
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !116
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.VEC_int_base, ptr %58, i64 0, i32 2, i64 %61
  store i32 %47, ptr %62, align 4, !tbaa !101
  %63 = load ptr, ptr @locations_locators_vals, align 8, !tbaa !86
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65, !prof !121

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.VEC_location_t_base, ptr %63, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !123
  %68 = load i32, ptr %63, align 4, !tbaa !125
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72, !prof !122

70:                                               ; preds = %57, %65
  %71 = tail call ptr @vec_heap_o_reserve(ptr noundef %63, i32 noundef 1, i64 noundef 8, i64 noundef 4) #19
  store ptr %71, ptr @locations_locators_vals, align 8, !tbaa !86
  br label %72

72:                                               ; preds = %65, %70
  %73 = load ptr, ptr @locations_locators_vals, align 8, !tbaa !86
  %74 = load i32, ptr %73, align 4, !tbaa !125
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4, !tbaa !125
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds %struct.VEC_location_t_base, ptr %73, i64 0, i32 2, i64 %76
  %78 = load i32, ptr @curr_location, align 4, !tbaa !101
  store i32 %78, ptr %77, align 4, !tbaa !101
  store i32 %78, ptr @last_location, align 4, !tbaa !101
  br label %79

79:                                               ; preds = %72, %41
  %80 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !101
  br label %81

81:                                               ; preds = %0, %79
  %82 = phi i32 [ %80, %79 ], [ 0, %0 ]
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define dso_local void @insn_locators_free() local_unnamed_addr #10 !prof !126 {
  store i32 0, ptr @epilogue_locator, align 4, !tbaa !101
  store i32 0, ptr @prologue_locator, align 4, !tbaa !101
  %1 = load ptr, ptr @block_locators_locs, align 8, !tbaa !86
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !127

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  br label %4

4:                                                ; preds = %0, %3
  store ptr null, ptr @block_locators_locs, align 8, !tbaa !86
  %5 = load ptr, ptr @block_locators_blocks, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !127

7:                                                ; preds = %4
  tail call void @ggc_free(ptr noundef nonnull %5) #19
  br label %8

8:                                                ; preds = %4, %7
  store ptr null, ptr @block_locators_blocks, align 8, !tbaa !86
  %9 = load ptr, ptr @locations_locators_locs, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !127

11:                                               ; preds = %8
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %8, %11
  store ptr null, ptr @locations_locators_locs, align 8, !tbaa !86
  %13 = load ptr, ptr @locations_locators_vals, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !127

15:                                               ; preds = %12
  tail call void @free(ptr noundef %13)
  br label %16

16:                                               ; preds = %12, %15
  store ptr null, ptr @locations_locators_vals, align 8, !tbaa !86
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_curr_insn_source_location(i32 noundef %0) local_unnamed_addr #11 !prof !128 {
  %2 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !101
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %5, label %4, !prof !129

4:                                                ; preds = %1
  store i32 %0, ptr @curr_location, align 4, !tbaa !101
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_curr_insn_source_location() local_unnamed_addr #12 !prof !130 {
  %1 = load i32, ptr @curr_location, align 4, !tbaa !101
  ret i32 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_curr_insn_block(ptr noundef %0) local_unnamed_addr #11 !prof !131 {
  %2 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !101
  %3 = icmp ne i32 %2, -1
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7, !prof !132

6:                                                ; preds = %1
  store ptr %0, ptr @curr_block, align 8, !tbaa !86
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_curr_insn_block() local_unnamed_addr #12 !prof !130 {
  %1 = load ptr, ptr @curr_block, align 8, !tbaa !86
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @into_cfg_layout_mode() #10 !prof !108 !PGOFuncName !133 {
  tail call void @cfg_layout_initialize(i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outof_cfg_layout_mode() #10 !prof !108 !PGOFuncName !134 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = load ptr, ptr %5, align 8, !tbaa !140
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %20, label %10, !prof !142

10:                                               ; preds = %0, %17
  %11 = phi ptr [ %18, %17 ], [ %8, %0 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !140
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %17, label %15, !prof !143

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 2
  store ptr %13, ptr %16, align 8, !tbaa !144
  br label %17

17:                                               ; preds = %10, %15
  %18 = load ptr, ptr %12, align 8, !tbaa !140
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %10, !prof !145, !llvm.loop !146

20:                                               ; preds = %17, %0
  tail call void @cfg_layout_finalize()
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @locator_location(i32 noundef %0) local_unnamed_addr #13 !prof !147 {
  %2 = load ptr, ptr @locations_locators_locs, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !148

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !116
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  br label %8

8:                                                ; preds = %6, %24
  %9 = phi i32 [ %25, %24 ], [ 0, %6 ]
  %10 = phi i32 [ %26, %24 ], [ %7, %6 ]
  %11 = add nsw i32 %10, %9
  %12 = sdiv i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !101
  %16 = icmp sgt i32 %15, %0
  %17 = icmp eq i32 %9, %12
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %24, !prof !149

19:                                               ; preds = %8
  %20 = icmp sle i32 %15, %0
  %21 = icmp eq i32 %10, %12
  %22 = or i1 %20, %21
  br i1 %22, label %24, label %23, !prof !150

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %8, %19, %23
  %25 = phi i32 [ %12, %19 ], [ %9, %23 ], [ %12, %8 ]
  %26 = phi i32 [ %10, %19 ], [ %12, %23 ], [ %10, %8 ]
  %27 = phi i1 [ false, %19 ], [ true, %23 ], [ true, %8 ]
  br i1 %27, label %8, label %28, !prof !151

28:                                               ; preds = %24
  %29 = load ptr, ptr @locations_locators_vals, align 8
  %30 = zext i32 %25 to i64
  %31 = getelementptr inbounds %struct.VEC_location_t_base, ptr %29, i64 0, i32 2, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !101
  ret i32 %32
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @locator_line(i32 noundef %0) local_unnamed_addr #9 !prof !108 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %38, label %4, !prof !152

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %5 = load ptr, ptr @locations_locators_locs, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !153

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4, !tbaa !116
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ 0, %4 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %27
  %12 = phi i32 [ %28, %27 ], [ 0, %9 ]
  %13 = phi i32 [ %29, %27 ], [ %10, %9 ]
  %14 = add nsw i32 %13, %12
  %15 = sdiv i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_int_base, ptr %5, i64 0, i32 2, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = icmp sgt i32 %18, %0
  %20 = icmp eq i32 %12, %15
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %27, !prof !154

22:                                               ; preds = %11
  %23 = icmp sle i32 %18, %0
  %24 = icmp eq i32 %13, %15
  %25 = or i1 %23, %24
  br i1 %25, label %27, label %26, !prof !155

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %11, %26, %22
  %28 = phi i32 [ %15, %22 ], [ %12, %26 ], [ %15, %11 ]
  %29 = phi i32 [ %13, %22 ], [ %15, %26 ], [ %13, %11 ]
  %30 = phi i1 [ false, %22 ], [ true, %26 ], [ true, %11 ]
  br i1 %30, label %11, label %31, !prof !156

31:                                               ; preds = %27
  %32 = load ptr, ptr @locations_locators_vals, align 8
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds %struct.VEC_location_t_base, ptr %32, i64 0, i32 2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !101
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %35) #19
  %36 = getelementptr inbounds i8, ptr %2, i64 8
  %37 = load i32, ptr %36, align 8, !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %38

38:                                               ; preds = %1, %31
  %39 = phi i32 [ %37, %31 ], [ 0, %1 ]
  ret i32 %39
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @insn_line(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !158 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6, !prof !152

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %7 = load ptr, ptr @locations_locators_locs, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !153

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 4, !tbaa !116
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %9 ]
  br label %13

13:                                               ; preds = %11, %29
  %14 = phi i32 [ %30, %29 ], [ 0, %11 ]
  %15 = phi i32 [ %31, %29 ], [ %12, %11 ]
  %16 = add nsw i32 %15, %14
  %17 = sdiv i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_int_base, ptr %7, i64 0, i32 2, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !101
  %21 = icmp sgt i32 %20, %4
  %22 = icmp eq i32 %14, %17
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %29, !prof !154

24:                                               ; preds = %13
  %25 = icmp sle i32 %20, %4
  %26 = icmp eq i32 %15, %17
  %27 = or i1 %25, %26
  br i1 %27, label %29, label %28, !prof !155

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %24, %13
  %30 = phi i32 [ %17, %24 ], [ %14, %28 ], [ %17, %13 ]
  %31 = phi i32 [ %15, %24 ], [ %17, %28 ], [ %15, %13 ]
  %32 = phi i1 [ false, %24 ], [ true, %28 ], [ true, %13 ]
  br i1 %32, label %13, label %33, !prof !156

33:                                               ; preds = %29
  %34 = load ptr, ptr @locations_locators_vals, align 8
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds %struct.VEC_location_t_base, ptr %34, i64 0, i32 2, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !101
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %37) #19
  %38 = getelementptr inbounds i8, ptr %2, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa.struct !157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %40

40:                                               ; preds = %1, %33
  %41 = phi i32 [ %39, %33 ], [ 0, %1 ]
  ret i32 %41
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @locator_file(i32 noundef %0) local_unnamed_addr #9 !prof !108 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %37, label %4, !prof !152

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %5 = load ptr, ptr @locations_locators_locs, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !153

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4, !tbaa !116
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ 0, %4 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %27
  %12 = phi i32 [ %28, %27 ], [ 0, %9 ]
  %13 = phi i32 [ %29, %27 ], [ %10, %9 ]
  %14 = add nsw i32 %13, %12
  %15 = sdiv i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_int_base, ptr %5, i64 0, i32 2, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = icmp sgt i32 %18, %0
  %20 = icmp eq i32 %12, %15
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %27, !prof !154

22:                                               ; preds = %11
  %23 = icmp sle i32 %18, %0
  %24 = icmp eq i32 %13, %15
  %25 = or i1 %23, %24
  br i1 %25, label %27, label %26, !prof !155

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %11, %26, %22
  %28 = phi i32 [ %15, %22 ], [ %12, %26 ], [ %15, %11 ]
  %29 = phi i32 [ %13, %22 ], [ %15, %26 ], [ %13, %11 ]
  %30 = phi i1 [ false, %22 ], [ true, %26 ], [ true, %11 ]
  br i1 %30, label %11, label %31, !prof !156

31:                                               ; preds = %27
  %32 = load ptr, ptr @locations_locators_vals, align 8
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds %struct.VEC_location_t_base, ptr %32, i64 0, i32 2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !101
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %35) #19
  %36 = load ptr, ptr %2, align 8, !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %37

37:                                               ; preds = %1, %31
  %38 = phi ptr [ %36, %31 ], [ null, %1 ]
  ret ptr %38
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @insn_file(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !158 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !97
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6, !prof !152

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %7 = load ptr, ptr @locations_locators_locs, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !153

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 4, !tbaa !116
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %9 ]
  br label %13

13:                                               ; preds = %11, %29
  %14 = phi i32 [ %30, %29 ], [ 0, %11 ]
  %15 = phi i32 [ %31, %29 ], [ %12, %11 ]
  %16 = add nsw i32 %15, %14
  %17 = sdiv i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_int_base, ptr %7, i64 0, i32 2, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !101
  %21 = icmp sgt i32 %20, %4
  %22 = icmp eq i32 %14, %17
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %29, !prof !154

24:                                               ; preds = %13
  %25 = icmp sle i32 %20, %4
  %26 = icmp eq i32 %15, %17
  %27 = or i1 %25, %26
  br i1 %27, label %29, label %28, !prof !155

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %24, %13
  %30 = phi i32 [ %17, %24 ], [ %14, %28 ], [ %17, %13 ]
  %31 = phi i32 [ %15, %24 ], [ %17, %28 ], [ %15, %13 ]
  %32 = phi i1 [ false, %24 ], [ true, %28 ], [ true, %13 ]
  br i1 %32, label %13, label %33, !prof !156

33:                                               ; preds = %29
  %34 = load ptr, ptr @locations_locators_vals, align 8
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds %struct.VEC_location_t_base, ptr %34, i64 0, i32 2, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !101
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %37) #19
  %38 = load ptr, ptr %2, align 8, !tbaa.struct !159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %39

39:                                               ; preds = %1, %33
  %40 = phi ptr [ %38, %33 ], [ null, %1 ]
  ret ptr %40
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @locator_eq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !85 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @locations_locators_locs, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4, !tbaa !116
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ 0, %4 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %27
  %12 = phi i32 [ %28, %27 ], [ 0, %9 ]
  %13 = phi i32 [ %29, %27 ], [ %10, %9 ]
  %14 = add nsw i32 %13, %12
  %15 = sdiv i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_int_base, ptr %5, i64 0, i32 2, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = icmp sgt i32 %18, %0
  %20 = icmp eq i32 %12, %15
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = icmp sle i32 %18, %0
  %24 = icmp eq i32 %13, %15
  %25 = or i1 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %11, %26, %22
  %28 = phi i32 [ %15, %22 ], [ %12, %26 ], [ %15, %11 ]
  %29 = phi i32 [ %13, %22 ], [ %15, %26 ], [ %13, %11 ]
  %30 = phi i1 [ false, %22 ], [ true, %26 ], [ true, %11 ]
  br i1 %30, label %11, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @locations_locators_vals, align 8
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds %struct.VEC_location_t_base, ptr %32, i64 0, i32 2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !101
  br i1 %6, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %5, align 4, !tbaa !116
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ 0, %31 ], [ %37, %36 ]
  br label %40

40:                                               ; preds = %38, %56
  %41 = phi i32 [ %57, %56 ], [ 0, %38 ]
  %42 = phi i32 [ %58, %56 ], [ %39, %38 ]
  %43 = add nsw i32 %42, %41
  %44 = sdiv i32 %43, 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_int_base, ptr %5, i64 0, i32 2, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !101
  %48 = icmp sgt i32 %47, %1
  %49 = icmp eq i32 %41, %44
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = icmp sle i32 %47, %1
  %53 = icmp eq i32 %42, %44
  %54 = or i1 %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %40, %55, %51
  %57 = phi i32 [ %44, %51 ], [ %41, %55 ], [ %44, %40 ]
  %58 = phi i32 [ %42, %51 ], [ %44, %55 ], [ %42, %40 ]
  %59 = phi i1 [ false, %51 ], [ true, %55 ], [ true, %40 ]
  br i1 %59, label %40, label %60

60:                                               ; preds = %56
  %61 = zext i32 %57 to i64
  %62 = getelementptr inbounds %struct.VEC_location_t_base, ptr %32, i64 0, i32 2, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !101
  %64 = icmp eq i32 %35, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = tail call fastcc ptr @locator_scope(i32 noundef %0)
  %67 = tail call fastcc ptr @locator_scope(i32 noundef %1)
  %68 = icmp eq ptr %66, %67
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %60, %2, %65
  %71 = phi i8 [ %69, %65 ], [ 1, %2 ], [ 0, %60 ]
  ret i8 %71
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @locator_scope(i32 noundef %0) unnamed_addr #14 !prof !85 {
  %2 = load ptr, ptr @block_locators_locs, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !116
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = load i32, ptr @prologue_locator, align 4, !tbaa !101
  %9 = icmp eq i32 %8, %0
  %10 = load i32, ptr @epilogue_locator, align 4
  %11 = icmp eq i32 %10, %0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load ptr, ptr @cfun, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !160
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  br label %46

18:                                               ; preds = %6
  %19 = icmp ne i32 %7, 0
  %20 = icmp ne i32 %0, 0
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %49

22:                                               ; preds = %18, %38
  %23 = phi i32 [ %39, %38 ], [ 0, %18 ]
  %24 = phi i32 [ %41, %38 ], [ %7, %18 ]
  %25 = add nsw i32 %24, %23
  %26 = sdiv i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !101
  %30 = icmp sgt i32 %29, %0
  %31 = icmp eq i32 %23, %26
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = icmp sle i32 %29, %0
  %35 = icmp eq i32 %24, %26
  %36 = or i1 %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %22, %33, %37
  %39 = phi i32 [ %26, %33 ], [ %23, %37 ], [ %26, %22 ]
  %40 = phi i1 [ false, %33 ], [ true, %37 ], [ true, %22 ]
  %41 = phi i32 [ %24, %33 ], [ %26, %37 ], [ %24, %22 ]
  br i1 %40, label %22, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @block_locators_blocks, align 8
  %44 = zext i32 %39 to i64
  %45 = getelementptr inbounds %struct.VEC_tree_base, ptr %43, i64 0, i32 2, i64 %44
  br label %46

46:                                               ; preds = %13, %42
  %47 = phi ptr [ %45, %42 ], [ %17, %13 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  br label %49

49:                                               ; preds = %46, %18
  %50 = phi ptr [ null, %18 ], [ %48, %46 ]
  ret ptr %50
}

; Function Attrs: cold nounwind uwtable
define dso_local void @reemit_insn_block_notes() local_unnamed_addr #15 !prof !85 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = tail call ptr @get_insns() #19
  %7 = tail call i32 @active_insn_p(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = tail call ptr @next_active_insn(ptr noundef %6) #19
  br label %11

11:                                               ; preds = %9, %0
  %12 = phi ptr [ %6, %0 ], [ %10, %9 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %11, %72
  %15 = phi ptr [ %73, %72 ], [ %5, %11 ]
  %16 = phi ptr [ %74, %72 ], [ %12, %11 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65534
  %25 = icmp eq i32 %24, 20
  br i1 %25, label %72, label %26

26:                                               ; preds = %20, %14
  %27 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !97
  %29 = tail call fastcc ptr @locator_scope(i32 noundef %28)
  %30 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = load i32, ptr %37, align 8, !tbaa !161
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %62
  %43 = phi i64 [ 0, %40 ], [ %64, %62 ]
  %44 = phi ptr [ null, %40 ], [ %63, %62 ]
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %37, i64 0, i32 1, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !97
  %49 = tail call fastcc ptr @locator_scope(i32 noundef %48)
  %50 = icmp eq ptr %44, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %42
  %52 = icmp eq ptr %49, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_block, ptr %44, i64 0, i32 1
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 1
  %57 = getelementptr inbounds %struct.tree_block, ptr %49, i64 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 1
  %60 = icmp ugt i32 %56, %59
  %61 = select i1 %60, ptr %44, ptr %49
  br label %62

62:                                               ; preds = %42, %51, %53
  %63 = phi ptr [ %49, %42 ], [ %44, %51 ], [ %61, %53 ]
  %64 = add nuw nsw i64 %43, 1
  %65 = icmp eq i64 %64, %41
  br i1 %65, label %66, label %42, !llvm.loop !163

66:                                               ; preds = %62, %35, %26
  %67 = phi ptr [ %29, %26 ], [ null, %35 ], [ %63, %62 ]
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %67, %15
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  tail call fastcc void @change_scope(ptr noundef nonnull %16, ptr noundef %15, ptr noundef nonnull %67)
  br label %72

72:                                               ; preds = %20, %71, %66
  %73 = phi ptr [ %15, %20 ], [ %15, %66 ], [ %67, %71 ]
  %74 = tail call ptr @next_active_insn(ptr noundef nonnull %16) #19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %14, !llvm.loop !164

76:                                               ; preds = %72, %11
  %77 = phi ptr [ %5, %11 ], [ %73, %72 ]
  %78 = tail call ptr @emit_note(i32 noundef 0) #19
  %79 = load ptr, ptr @cfun, align 8, !tbaa !86
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !160
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !97
  tail call fastcc void @change_scope(ptr noundef %78, ptr noundef %77, ptr noundef %83)
  %84 = tail call ptr @delete_insn(ptr noundef %78) #19
  tail call void @reorder_blocks() #19
  ret void
}

declare ptr @get_insns() local_unnamed_addr #3

declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @change_scope(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #15 !prof !85 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %5, label %8

5:                                                ; preds = %36, %3
  %6 = phi ptr [ %1, %3 ], [ %37, %36 ]
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %40, label %42

8:                                                ; preds = %3, %36
  %9 = phi ptr [ %38, %36 ], [ %2, %3 ]
  %10 = phi ptr [ %37, %36 ], [ %1, %3 ]
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %9, null
  %13 = and i1 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 429, ptr noundef nonnull @.str.9) #19
  br label %15

15:                                               ; preds = %8, %14
  %16 = getelementptr inbounds %struct.tree_block, ptr %10, i64 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 1
  %19 = getelementptr inbounds %struct.tree_block, ptr %9, i64 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 1
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tree_block, ptr %10, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  br label %36

26:                                               ; preds = %15
  %27 = icmp ult i32 %18, %21
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.tree_block, ptr %9, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  br label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_block, ptr %10, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = getelementptr inbounds %struct.tree_block, ptr %9, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  br label %36

36:                                               ; preds = %28, %31, %23
  %37 = phi ptr [ %25, %23 ], [ %10, %28 ], [ %33, %31 ]
  %38 = phi ptr [ %9, %23 ], [ %30, %28 ], [ %35, %31 ]
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %5, label %8, !llvm.loop !165

40:                                               ; preds = %42, %5
  %41 = icmp eq ptr %6, %2
  br i1 %41, label %57, label %49

42:                                               ; preds = %5, %42
  %43 = phi ptr [ %47, %42 ], [ %1, %5 ]
  %44 = tail call ptr @emit_note_before(i32 noundef 3, ptr noundef %0) #19
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 2
  store ptr %43, ptr %45, align 8, !tbaa !97
  %46 = getelementptr inbounds %struct.tree_block, ptr %43, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !97
  %48 = icmp eq ptr %47, %6
  br i1 %48, label %40, label %42, !llvm.loop !166

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %52, %49 ], [ %0, %40 ]
  %51 = phi ptr [ %55, %49 ], [ %2, %40 ]
  %52 = tail call ptr @emit_note_before(i32 noundef 2, ptr noundef %50) #19
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  store ptr %51, ptr %53, align 8, !tbaa !97
  %54 = getelementptr inbounds %struct.tree_block, ptr %51, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  %56 = icmp eq ptr %55, %6
  br i1 %56, label %57, label %49, !llvm.loop !167

57:                                               ; preds = %49, %40
  ret void
}

declare ptr @emit_note(i32 noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare void @reorder_blocks() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @relink_block_chain(i8 noundef zeroext %0) local_unnamed_addr #10 !prof !168 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %3 = icmp eq ptr %2, null
  br i1 %3, label %53, label %4, !prof !169

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr nonnull %2)
  %6 = load ptr, ptr @cfun, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %4, %44
  %14 = phi ptr [ %51, %44 ], [ %11, %4 ]
  %15 = phi i32 [ %50, %44 ], [ 2, %4 ]
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %15)
  %18 = tail call ptr @get_bb_original(ptr noundef nonnull %14) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %22 = tail call ptr @get_bb_original(ptr noundef nonnull %14) #19
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !170
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef %24)
  br label %44

26:                                               ; preds = %13
  %27 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %14) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = load ptr, ptr %31, align 8, !tbaa !171
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %38 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 13, i64 1, ptr %37)
  br label %44

39:                                               ; preds = %29, %26
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !170
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %42)
  br label %44

44:                                               ; preds = %36, %39, %20
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !173
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.7, i32 noundef %47)
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 2
  %50 = add nuw nsw i32 %15, 1
  %51 = load ptr, ptr %49, align 8, !tbaa !86
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %13, !llvm.loop !174

53:                                               ; preds = %44, %4, %1
  %54 = load ptr, ptr @cfun, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !135
  %57 = load ptr, ptr %56, align 8, !tbaa !137
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61, !prof !142

61:                                               ; preds = %53, %61
  %62 = phi ptr [ %67, %61 ], [ %59, %53 ]
  %63 = phi ptr [ %62, %61 ], [ %57, %53 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !175
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  store ptr %62, ptr %65, align 8, !tbaa !140
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !86
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %61, !prof !176, !llvm.loop !177

69:                                               ; preds = %61, %53
  %70 = phi ptr [ %57, %53 ], [ %62, %61 ]
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !139
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 6
  store ptr %72, ptr %73, align 8, !tbaa !140
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 5
  store ptr %70, ptr %74, align 8, !tbaa !175
  %75 = load ptr, ptr %56, align 8, !tbaa !86
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77, !prof !142

77:                                               ; preds = %69
  %78 = icmp eq i8 %0, 0
  br label %79

79:                                               ; preds = %77, %90
  %80 = phi ptr [ %75, %77 ], [ %92, %90 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !144
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.rtl_bb_info, ptr %83, i64 0, i32 4
  store i32 0, ptr %84, align 8, !tbaa !178
  br i1 %78, label %85, label %90, !prof !179

85:                                               ; preds = %79
  %86 = load ptr, ptr %82, align 8, !tbaa !97
  %87 = getelementptr inbounds %struct.rtl_bb_info, ptr %86, i64 0, i32 3
  store ptr null, ptr %87, align 8, !tbaa !180
  %88 = load ptr, ptr %82, align 8, !tbaa !97
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 2
  store ptr null, ptr %89, align 8, !tbaa !181
  br label %90

90:                                               ; preds = %79, %85
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !86
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %79, !prof !182, !llvm.loop !183

94:                                               ; preds = %90, %69
  tail call void @free_original_copy_tables() #19
  %95 = icmp eq i8 %0, 0
  br i1 %95, label %97, label %96, !prof !184

96:                                               ; preds = %94
  tail call void @initialize_original_copy_tables() #19
  br label %97

97:                                               ; preds = %96, %94
  tail call void @compact_blocks() #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_bb_original(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_insn_chain() local_unnamed_addr #15 !prof !85 {
  %1 = tail call ptr @get_insns() #19
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0, %11
  %4 = phi i32 [ %12, %11 ], [ 1, %0 ]
  %5 = phi ptr [ %6, %11 ], [ null, %0 ]
  %6 = phi ptr [ %14, %11 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 998, ptr noundef nonnull @.str.9) #19
  br label %11

11:                                               ; preds = %3, %10
  %12 = add nuw nsw i32 %4, 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !185

16:                                               ; preds = %11, %0
  %17 = phi ptr [ null, %0 ], [ %6, %11 ]
  %18 = phi i32 [ 1, %0 ], [ %12, %11 ]
  %19 = tail call ptr @get_last_insn() #19
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1000, ptr noundef nonnull @.str.9) #19
  br label %22

22:                                               ; preds = %16, %21
  %23 = tail call ptr @get_last_insn() #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %33
  %26 = phi i32 [ %34, %33 ], [ 1, %22 ]
  %27 = phi ptr [ %28, %33 ], [ null, %22 ]
  %28 = phi ptr [ %36, %33 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = icmp eq ptr %30, %27
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1005, ptr noundef nonnull @.str.9) #19
  br label %33

33:                                               ; preds = %25, %32
  %34 = add nuw nsw i32 %26, 1
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !186

38:                                               ; preds = %33, %22
  %39 = phi i32 [ 1, %22 ], [ %34, %33 ]
  %40 = icmp eq i32 %18, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1007, ptr noundef nonnull @.str.9) #19
  br label %42

42:                                               ; preds = %38, %41
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @cfg_layout_can_duplicate_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !187 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = tail call zeroext i8 @tablejump_p(ptr noundef %5, ptr noundef null, ptr noundef null) #19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %30, !prof !189

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !190
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11, !prof !189

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8, !tbaa !97
  br label %13

13:                                               ; preds = %24, %11
  %14 = phi ptr [ %12, %11 ], [ %29, %24 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -7
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !190
  %22 = tail call zeroext i8 %21(ptr noundef nonnull %15) #19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13, %20
  %25 = load ptr, ptr %2, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  %28 = icmp eq ptr %15, %27
  %29 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %28, label %30, label %13, !llvm.loop !202

30:                                               ; preds = %24, %20, %8, %1
  %31 = phi i8 [ 0, %1 ], [ 1, %8 ], [ 0, %20 ], [ 1, %24 ]
  ret i8 %31
}

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @duplicate_insn_chain(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !203 {
  %3 = tail call ptr @emit_note(i32 noundef 0) #19
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %34, label %7, !prof !204

7:                                                ; preds = %2, %29
  %8 = phi ptr [ %31, %29 ], [ %0, %2 ]
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %28 [
    i16 7, label %11
    i16 8, label %11
    i16 10, label %11
    i16 9, label %11
    i16 12, label %29
    i16 11, label %20
    i16 13, label %22
  ], !prof !205

11:                                               ; preds = %7, %7, %7, %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65534
  %16 = icmp eq i32 %15, 20
  br i1 %16, label %29, label %17, !prof !206

17:                                               ; preds = %11
  %18 = tail call ptr @get_last_insn() #19
  %19 = tail call ptr @emit_copy_of_insn_after(ptr noundef nonnull %8, ptr noundef %18) #19
  tail call void @maybe_copy_epilogue_insn(ptr noundef nonnull %8, ptr noundef %19) #19
  br label %29

20:                                               ; preds = %7
  %21 = tail call ptr @emit_barrier() #19
  br label %29

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %24 = load i32, ptr %23, align 8, !tbaa !97
  switch i32 %24, label %27 [
    i32 5, label %29
    i32 0, label %29
    i32 1, label %29
    i32 4, label %29
    i32 10, label %29
    i32 6, label %25
    i32 11, label %25
  ], !prof !207

25:                                               ; preds = %22, %22
  %26 = tail call ptr @emit_note_copy(ptr noundef nonnull %8) #19
  br label %29

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1198, ptr noundef nonnull @.str.9) #19
  br label %29

28:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1202, ptr noundef nonnull @.str.9) #19
  br label %29

29:                                               ; preds = %22, %22, %22, %22, %7, %11, %17, %20, %28, %22, %27, %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = load ptr, ptr %4, align 8, !tbaa !97
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %7, !prof !208, !llvm.loop !209

34:                                               ; preds = %29, %2
  %35 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = tail call ptr @delete_insn(ptr noundef %3) #19
  ret ptr %36
}

declare ptr @emit_copy_of_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @maybe_copy_epilogue_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

declare ptr @emit_note_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @cfg_layout_duplicate_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !210 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = tail call ptr @duplicate_insn_chain(ptr noundef %4, ptr noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !211

9:                                                ; preds = %1
  %10 = tail call ptr @get_last_insn() #19
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  %13 = load ptr, ptr @cfun, align 8, !tbaa !86
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !175
  %20 = tail call ptr @create_basic_block(ptr noundef %7, ptr noundef %12, ptr noundef %19) #19
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !212
  %23 = and i32 %22, -97
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !212
  %26 = and i32 %25, 96
  %27 = or disjoint i32 %26, %23
  store i32 %27, ptr %21, align 8, !tbaa !212
  %28 = load ptr, ptr %2, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !213

32:                                               ; preds = %11, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %11 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !214

37:                                               ; preds = %32
  %38 = tail call ptr @duplicate_insn_chain(ptr noundef nonnull %30, ptr noundef nonnull %33)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @get_last_insn() #19
  %42 = tail call ptr @unlink_insn_chain(ptr noundef nonnull %38, ptr noundef %41)
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 2
  store ptr %38, ptr %45, align 8, !tbaa !181
  br label %46

46:                                               ; preds = %37, %40, %11
  %47 = load ptr, ptr %2, align 8, !tbaa !97
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !180
  %50 = icmp eq ptr %49, null
  br i1 %50, label %79, label %51, !prof !215

51:                                               ; preds = %46, %51
  %52 = phi ptr [ %54, %51 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %51, !prof !216, !llvm.loop !217

56:                                               ; preds = %51
  %57 = tail call ptr @duplicate_insn_chain(ptr noundef nonnull %49, ptr noundef nonnull %52)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59, !prof !218

59:                                               ; preds = %56
  %60 = tail call ptr @get_last_insn() #19
  %61 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !97
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !97
  store ptr null, ptr %61, align 8, !tbaa !97
  store ptr null, ptr %63, align 8, !tbaa !97
  %65 = icmp eq ptr %62, null
  br i1 %65, label %68, label %66, !prof !106

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %64, ptr %67, align 8, !tbaa !97
  br label %68

68:                                               ; preds = %66, %59
  %69 = icmp eq ptr %64, null
  br i1 %69, label %72, label %70, !prof !107

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %62, ptr %71, align 8, !tbaa !97
  br label %73

72:                                               ; preds = %68
  tail call void @set_last_insn(ptr noundef %62) #19
  br label %73

73:                                               ; preds = %72, %70
  br i1 %65, label %74, label %75, !prof !106

74:                                               ; preds = %73
  tail call void @set_first_insn(ptr noundef %64) #19
  br label %75

75:                                               ; preds = %73, %74
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !97
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 3
  store ptr %57, ptr %78, align 8, !tbaa !180
  br label %79

79:                                               ; preds = %56, %75, %46
  ret ptr %20
}

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @cfg_layout_initialize(i32 noundef %0) local_unnamed_addr #10 !prof !219 {
  tail call void @initialize_original_copy_tables() #19
  tail call void @cfg_layout_rtl_register_cfg_hooks() #19
  %2 = tail call ptr @get_insns() #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4, !prof !220

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %15, %13 ], [ %2, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 13
  br i1 %8, label %9, label %19, !prof !221

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %11 = load i32, ptr %10, align 8, !tbaa !97
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %19, label %13, !prof !222

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !prof !223, !llvm.loop !224

17:                                               ; preds = %13, %1
  %18 = phi ptr [ %2, %1 ], [ %15, %13 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 195, ptr noundef nonnull @.str.9) #19
  br label %19

19:                                               ; preds = %9, %4, %17
  %20 = phi ptr [ %18, %17 ], [ %5, %4 ], [ %5, %9 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24, !prof !225

24:                                               ; preds = %19
  %25 = tail call ptr @get_insns() #19
  %26 = load ptr, ptr %21, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  store ptr null, ptr %27, align 8, !tbaa !97
  store ptr null, ptr %29, align 8, !tbaa !97
  %31 = icmp eq ptr %28, null
  br i1 %31, label %34, label %32, !prof !106

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %30, ptr %33, align 8, !tbaa !97
  br label %34

34:                                               ; preds = %32, %24
  %35 = icmp eq ptr %30, null
  br i1 %35, label %38, label %36, !prof !107

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %28, ptr %37, align 8, !tbaa !97
  br label %39

38:                                               ; preds = %34
  tail call void @set_last_insn(ptr noundef %28) #19
  br label %39

39:                                               ; preds = %38, %36
  br i1 %31, label %40, label %41, !prof !106

40:                                               ; preds = %39
  tail call void @set_first_insn(ptr noundef %30) #19
  br label %41

41:                                               ; preds = %40, %39, %19
  %42 = phi ptr [ null, %19 ], [ %25, %39 ], [ %25, %40 ]
  store ptr %42, ptr @cfg_layout_function_header, align 8, !tbaa !86
  %43 = tail call ptr @get_insns() #19
  %44 = load ptr, ptr @cfun, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  %47 = load ptr, ptr %46, align 8, !tbaa !137
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !140
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !139
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %192, label %53, !prof !226

53:                                               ; preds = %41, %178
  %54 = phi ptr [ %185, %178 ], [ %49, %41 ]
  %55 = phi ptr [ %183, %178 ], [ %43, %41 ]
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !97
  %58 = load ptr, ptr %57, align 8, !tbaa !171
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !97
  %61 = icmp eq ptr %60, null
  %62 = icmp eq ptr %55, %58
  %63 = select i1 %61, i1 true, i1 %62, !prof !227
  br i1 %63, label %68, label %64, !prof !228

64:                                               ; preds = %53
  %65 = tail call ptr @unlink_insn_chain(ptr noundef %55, ptr noundef nonnull %60)
  %66 = load ptr, ptr %56, align 8, !tbaa !97
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 2
  store ptr %55, ptr %67, align 8, !tbaa !181
  br label %68

68:                                               ; preds = %64, %53
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !140
  %71 = load ptr, ptr @cfun, align 8, !tbaa !86
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !135
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !139
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %81, label %77, !prof !227

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !97
  %80 = load ptr, ptr %79, align 8, !tbaa !171
  br label %81

81:                                               ; preds = %77, %68
  %82 = phi ptr [ %80, %77 ], [ null, %68 ]
  %83 = load ptr, ptr %56, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.rtl_bb_info, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !188
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !97
  %88 = icmp eq ptr %87, null
  %89 = icmp eq ptr %87, %82
  %90 = select i1 %88, i1 true, i1 %89, !prof !229
  br i1 %90, label %130, label %91, !prof !230

91:                                               ; preds = %81, %123
  %92 = phi ptr [ %126, %123 ], [ %87, %81 ]
  %93 = phi ptr [ %124, %123 ], [ %85, %81 ]
  br label %94

94:                                               ; preds = %91, %102
  %95 = phi ptr [ %92, %91 ], [ %104, %102 ]
  %96 = load i32, ptr %95, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %130 [
    i16 11, label %123
    i16 13, label %98
    i16 12, label %109
  ], !prof !231, !llvm.loop !232

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 1
  %100 = load i32, ptr %99, align 8, !tbaa !97
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %108, label %102, !prof !233

102:                                              ; preds = %98, %108
  %103 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !97
  %105 = icmp eq ptr %104, null
  %106 = icmp eq ptr %104, %82
  %107 = select i1 %105, i1 true, i1 %106, !prof !229
  br i1 %107, label %130, label %94, !prof !234, !llvm.loop !232

108:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 105, ptr noundef nonnull @.str.9) #19
  br label %102

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %111 = load ptr, ptr %110, align 8, !tbaa !97
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113, !prof !235

113:                                              ; preds = %109
  %114 = load i32, ptr %111, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 9
  br i1 %116, label %117, label %130, !prof !236

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !97
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65534
  %122 = icmp eq i32 %121, 20
  br i1 %122, label %123, label %130, !prof !236

123:                                              ; preds = %94, %117
  %124 = phi ptr [ %111, %117 ], [ %95, %94 ]
  %125 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !97
  %127 = icmp eq ptr %126, null
  %128 = icmp eq ptr %126, %82
  %129 = select i1 %127, i1 true, i1 %128, !prof !229
  br i1 %129, label %130, label %91, !prof !234, !llvm.loop !232

130:                                              ; preds = %117, %113, %109, %123, %102, %94, %81
  %131 = phi ptr [ %85, %81 ], [ %93, %94 ], [ %93, %102 ], [ %93, %117 ], [ %93, %113 ], [ %93, %109 ], [ %124, %123 ]
  %132 = load ptr, ptr %56, align 8, !tbaa !97
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !188
  %135 = icmp eq ptr %131, %134
  br i1 %135, label %153, label %136, !prof !237

136:                                              ; preds = %130, %148
  %137 = phi ptr [ %139, %148 ], [ %131, %130 ]
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !97
  %140 = load i32, ptr %137, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 13
  br i1 %142, label %143, label %148, !prof !238

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 1
  %145 = load i32, ptr %144, align 8, !tbaa !97
  switch i32 %145, label %147 [
    i32 3, label %146
    i32 0, label %148
    i32 1, label %148
  ]

146:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 147, ptr noundef nonnull @.str.9) #19
  br label %148

147:                                              ; preds = %143
  tail call void @reorder_insns(ptr noundef nonnull %137, ptr noundef nonnull %137, ptr noundef %131) #19
  br label %148

148:                                              ; preds = %143, %147, %146, %143, %136
  %149 = load ptr, ptr %56, align 8, !tbaa !97
  %150 = getelementptr inbounds %struct.rtl_bb_info, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !188
  %152 = icmp eq ptr %139, %151
  br i1 %152, label %153, label %136, !prof !239, !llvm.loop !240

153:                                              ; preds = %148, %130
  %154 = phi ptr [ %134, %130 ], [ %151, %148 ]
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 2
  %156 = load ptr, ptr %155, align 8, !tbaa !97
  %157 = icmp eq ptr %156, null
  %158 = icmp eq ptr %154, %131
  %159 = or i1 %157, %158
  br i1 %159, label %178, label %160, !prof !241

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !97
  %163 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !97
  store ptr null, ptr %161, align 8, !tbaa !97
  store ptr null, ptr %163, align 8, !tbaa !97
  %165 = icmp eq ptr %162, null
  br i1 %165, label %168, label %166, !prof !106

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %164, ptr %167, align 8, !tbaa !97
  br label %168

168:                                              ; preds = %166, %160
  %169 = icmp eq ptr %164, null
  br i1 %169, label %172, label %170, !prof !107

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %162, ptr %171, align 8, !tbaa !97
  br label %173

172:                                              ; preds = %168
  tail call void @set_last_insn(ptr noundef %162) #19
  br label %173

173:                                              ; preds = %172, %170
  br i1 %165, label %174, label %175, !prof !106

174:                                              ; preds = %173
  tail call void @set_first_insn(ptr noundef %164) #19
  br label %175

175:                                              ; preds = %173, %174
  %176 = load ptr, ptr %56, align 8, !tbaa !97
  %177 = getelementptr inbounds %struct.rtl_bb_info, ptr %176, i64 0, i32 3
  store ptr %156, ptr %177, align 8, !tbaa !180
  br label %178

178:                                              ; preds = %175, %153
  %179 = load ptr, ptr %56, align 8, !tbaa !97
  %180 = getelementptr inbounds %struct.rtl_bb_info, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !188
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !97
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %185 = load ptr, ptr %184, align 8, !tbaa !140
  %186 = load ptr, ptr @cfun, align 8, !tbaa !86
  %187 = getelementptr inbounds %struct.function, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !135
  %189 = getelementptr inbounds %struct.control_flow_graph, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !139
  %191 = icmp eq ptr %185, %190
  br i1 %191, label %192, label %53, !prof !242, !llvm.loop !243

192:                                              ; preds = %178, %41
  %193 = phi ptr [ %43, %41 ], [ %183, %178 ]
  store ptr %193, ptr @cfg_layout_function_footer, align 8, !tbaa !86
  %194 = icmp eq ptr %193, null
  br i1 %194, label %212, label %195, !prof !244

195:                                              ; preds = %192
  %196 = tail call ptr @get_last_insn() #19
  %197 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !97
  %199 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 2
  %200 = load ptr, ptr %199, align 8, !tbaa !97
  store ptr null, ptr %197, align 8, !tbaa !97
  store ptr null, ptr %199, align 8, !tbaa !97
  %201 = icmp eq ptr %198, null
  br i1 %201, label %204, label %202, !prof !106

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %200, ptr %203, align 8, !tbaa !97
  br label %204

204:                                              ; preds = %202, %195
  %205 = icmp eq ptr %200, null
  br i1 %205, label %208, label %206, !prof !107

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %198, ptr %207, align 8, !tbaa !97
  br label %209

208:                                              ; preds = %204
  tail call void @set_last_insn(ptr noundef %198) #19
  br label %209

209:                                              ; preds = %208, %206
  br i1 %201, label %210, label %211, !prof !106

210:                                              ; preds = %209
  tail call void @set_first_insn(ptr noundef %200) #19
  br label %211

211:                                              ; preds = %209, %210
  store ptr %193, ptr @cfg_layout_function_footer, align 8, !tbaa !86
  br label %212

212:                                              ; preds = %192, %211
  %213 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !97
  %214 = icmp eq ptr %213, null
  br i1 %214, label %227, label %215, !prof !245

215:                                              ; preds = %212, %215
  %216 = phi ptr [ %225, %215 ], [ %213, %212 ]
  %217 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !97
  %219 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !97
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %220, i64 0, i32 13
  %222 = load i32, ptr %221, align 8, !tbaa !212
  %223 = or i32 %222, 256
  store i32 %223, ptr %221, align 8, !tbaa !212
  %224 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !97
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %215, !prof !245, !llvm.loop !246

227:                                              ; preds = %215, %212
  %228 = or i32 %0, 32
  %229 = tail call zeroext i8 @cleanup_cfg(i32 noundef %228) #19
  ret void
}

declare void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @break_superblocks() local_unnamed_addr #15 !prof !85 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !247
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #19
  tail call void @sbitmap_zero(ptr noundef %6) #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %66, label %16

16:                                               ; preds = %0, %52
  %17 = phi ptr [ %55, %52 ], [ %12, %0 ]
  %18 = phi i8 [ %53, %52 ], [ 0, %0 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !212
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %16
  %24 = and i32 %20, -9
  store i32 %24, ptr %19, align 8, !tbaa !212
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !170
  %27 = load ptr, ptr %6, align 8, !tbaa !248
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = lshr i32 %26, 6
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !250
  %34 = and i32 %26, 63
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = and i64 %33, %36
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds i8, ptr %27, i64 %31
  %41 = load i8, ptr %40, align 1, !tbaa !97
  %42 = add i8 %41, 1
  store i8 %42, ptr %40, align 1, !tbaa !97
  br label %43

43:                                               ; preds = %23, %29, %39
  %44 = and i32 %26, 63
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = lshr i32 %26, 6
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !250
  %51 = or i64 %50, %46
  store i64 %51, ptr %49, align 8, !tbaa !250
  br label %52

52:                                               ; preds = %16, %43
  %53 = phi i8 [ 1, %43 ], [ %18, %16 ]
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !140
  %56 = load ptr, ptr @cfun, align 8, !tbaa !86
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !135
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !139
  %61 = icmp eq ptr %55, %60
  br i1 %61, label %62, label %16, !llvm.loop !251

62:                                               ; preds = %52
  %63 = icmp eq i8 %53, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = tail call ptr @get_insns() #19
  tail call void @rebuild_jump_labels(ptr noundef %65) #19
  tail call void @find_many_sub_basic_blocks(ptr noundef %6) #19
  br label %66

66:                                               ; preds = %0, %64, %62
  tail call void @free(ptr noundef %6)
  ret void
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @cfg_layout_finalize() local_unnamed_addr #10 !prof !219 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = icmp eq ptr %5, null
  br label %7

7:                                                ; preds = %40, %0
  %8 = phi i32 [ 0, %0 ], [ %41, %40 ]
  %9 = phi ptr [ null, %0 ], [ %33, %40 ]
  br i1 %6, label %10, label %11, !prof !252

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.9) #19
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr %5, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !252

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8, !tbaa !253
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %23, label %19, !prof !255

19:                                               ; preds = %16
  %20 = zext i32 %8 to i64
  %21 = getelementptr inbounds %struct.VEC_edge_base, ptr %12, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi ptr [ %22, %19 ], [ null, %16 ]
  br i1 %18, label %108, label %25, !prof !255

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !256
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !258

30:                                               ; preds = %25
  %31 = icmp eq ptr %9, null
  br i1 %31, label %32, label %42, !prof !109

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %9, %25 ], [ %24, %30 ]
  br i1 %13, label %36, label %34, !prof !259

34:                                               ; preds = %32
  %35 = load i32, ptr %12, align 8, !tbaa !253
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %35, %34 ], [ 0, %32 ]
  %38 = icmp ult i32 %8, %37
  br i1 %38, label %40, label %39, !prof !260

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %40

40:                                               ; preds = %39, %36
  %41 = add i32 %8, 1
  br label %7, !llvm.loop !261

42:                                               ; preds = %30
  %43 = tail call ptr @split_edge(ptr noundef nonnull %9) #19
  %44 = load ptr, ptr @cfun, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  %49 = icmp eq ptr %48, null
  br label %50

50:                                               ; preds = %84, %42
  %51 = phi i32 [ %85, %84 ], [ 0, %42 ]
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %50, %86
  br i1 %49, label %54, label %55

54:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.9) #19
  br label %55

55:                                               ; preds = %54, %53
  %56 = load ptr, ptr %48, align 8, !tbaa !86
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %56, align 8, !tbaa !253
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ 0, %55 ]
  %62 = icmp eq i32 %61, %51
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.VEC_edge_base, ptr %56, i64 0, i32 2, i64 %52
  %65 = load ptr, ptr %64, align 8, !tbaa !86
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi ptr [ %65, %63 ], [ null, %60 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %67, align 8, !tbaa !262
  %71 = icmp eq ptr %70, %43
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !256
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72, %69
  br i1 %57, label %80, label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %56, align 8, !tbaa !253
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32 [ %79, %78 ], [ 0, %77 ]
  %82 = icmp ult i32 %51, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %84

84:                                               ; preds = %83, %80
  %85 = add i32 %51, 1
  br label %50, !llvm.loop !263

86:                                               ; preds = %72
  %87 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %67, ptr noundef %43) #19
  br label %53, !llvm.loop !263

88:                                               ; preds = %66
  %89 = load ptr, ptr @cfun, align 8, !tbaa !86
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !135
  %92 = load ptr, ptr %91, align 8, !tbaa !137
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !139
  br label %95

95:                                               ; preds = %100, %88
  %96 = phi ptr [ %92, %88 ], [ %98, %100 ]
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !140
  %99 = icmp eq ptr %98, %94
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !144
  %103 = icmp ne ptr %102, null
  %104 = icmp eq ptr %98, %43
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %95, label %106, !llvm.loop !264

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 2
  store ptr %43, ptr %107, align 8, !tbaa !144
  br label %108

108:                                              ; preds = %23, %95, %106
  tail call void @rtl_register_cfg_hooks() #19
  %109 = load ptr, ptr @cfg_layout_function_header, align 8, !tbaa !86
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111, !prof !225

111:                                              ; preds = %108
  tail call void @set_first_insn(ptr noundef nonnull %109) #19
  %112 = load ptr, ptr @cfg_layout_function_header, align 8, !tbaa !86
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi ptr [ %112, %111 ], [ %116, %113 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %116 = load ptr, ptr %115, align 8, !tbaa !97
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %113, !prof !265, !llvm.loop !266

118:                                              ; preds = %113, %108
  %119 = phi ptr [ null, %108 ], [ %114, %113 ]
  %120 = load ptr, ptr @cfun, align 8, !tbaa !86
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !135
  %123 = load ptr, ptr %122, align 8, !tbaa !137
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !86
  %126 = icmp eq ptr %125, null
  br i1 %126, label %187, label %127, !prof !226

127:                                              ; preds = %118, %182
  %128 = phi ptr [ %185, %182 ], [ %125, %118 ]
  %129 = phi ptr [ %183, %182 ], [ %119, %118 ]
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !97
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !181
  %134 = icmp eq ptr %133, null
  br i1 %134, label %153, label %135, !prof !267

135:                                              ; preds = %127
  %136 = icmp eq ptr %129, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %133, ptr %138, align 8, !tbaa !97
  br label %140

139:                                              ; preds = %135
  tail call void @set_first_insn(ptr noundef nonnull %133) #19
  br label %140

140:                                              ; preds = %139, %137
  %141 = load ptr, ptr %130, align 8, !tbaa !97
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !181
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %129, ptr %144, align 8, !tbaa !97
  %145 = load ptr, ptr %130, align 8, !tbaa !97
  %146 = getelementptr inbounds %struct.rtl_bb_info, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !181
  br label %148

148:                                              ; preds = %148, %140
  %149 = phi ptr [ %147, %140 ], [ %151, %148 ]
  %150 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 2
  %151 = load ptr, ptr %150, align 8, !tbaa !97
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %148, !llvm.loop !268

153:                                              ; preds = %148, %127
  %154 = phi ptr [ %129, %127 ], [ %149, %148 ]
  %155 = icmp eq ptr %154, null
  %156 = load ptr, ptr %130, align 8, !tbaa !97
  %157 = load ptr, ptr %156, align 8, !tbaa !171
  br i1 %155, label %160, label %158, !prof !269

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %157, ptr %159, align 8, !tbaa !97
  br label %161

160:                                              ; preds = %153
  tail call void @set_first_insn(ptr noundef %157) #19
  br label %161

161:                                              ; preds = %160, %158
  %162 = load ptr, ptr %130, align 8, !tbaa !97
  %163 = load ptr, ptr %162, align 8, !tbaa !171
  %164 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %154, ptr %164, align 8, !tbaa !97
  %165 = load ptr, ptr %130, align 8, !tbaa !97
  %166 = getelementptr inbounds %struct.rtl_bb_info, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !188
  %168 = getelementptr inbounds %struct.rtl_bb_info, ptr %165, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !180
  %170 = icmp eq ptr %169, null
  br i1 %170, label %182, label %171, !prof !270

171:                                              ; preds = %161
  %172 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %169, ptr %172, align 8, !tbaa !97
  %173 = load ptr, ptr %130, align 8, !tbaa !97
  %174 = getelementptr inbounds %struct.rtl_bb_info, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !180
  %176 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %167, ptr %176, align 8, !tbaa !97
  br label %177

177:                                              ; preds = %177, %171
  %178 = phi ptr [ %167, %171 ], [ %180, %177 ]
  %179 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 2
  %180 = load ptr, ptr %179, align 8, !tbaa !97
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %177, !prof !271, !llvm.loop !272

182:                                              ; preds = %177, %161
  %183 = phi ptr [ %167, %161 ], [ %178, %177 ]
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !86
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %127, !prof !273, !llvm.loop !274

187:                                              ; preds = %182, %118
  %188 = phi ptr [ %119, %118 ], [ %183, %182 ]
  %189 = load ptr, ptr @cfg_layout_function_footer, align 8, !tbaa !86
  %190 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %189, ptr %190, align 8, !tbaa !97
  %191 = icmp eq ptr %189, null
  br i1 %191, label %194, label %192, !prof !244

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %188, ptr %193, align 8, !tbaa !97
  br label %194

194:                                              ; preds = %192, %187
  br label %195

195:                                              ; preds = %194, %195
  %196 = phi ptr [ %198, %195 ], [ %188, %194 ]
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 2
  %198 = load ptr, ptr %197, align 8, !tbaa !97
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %195, !prof !275, !llvm.loop !276

200:                                              ; preds = %195
  tail call void @set_last_insn(ptr noundef %196) #19
  %201 = load ptr, ptr @cfun, align 8, !tbaa !86
  %202 = getelementptr inbounds %struct.function, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !135
  %204 = load ptr, ptr %203, align 8, !tbaa !137
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 6
  %206 = load ptr, ptr %205, align 8, !tbaa !86
  %207 = icmp eq ptr %206, null
  br i1 %207, label %474, label %208, !prof !226

208:                                              ; preds = %200, %469
  %209 = phi ptr [ %472, %469 ], [ %206, %200 ]
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !277
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213, !prof !269

213:                                              ; preds = %208
  %214 = load i32, ptr %211, align 8, !tbaa !253
  br label %215

215:                                              ; preds = %213, %208
  %216 = phi i32 [ %214, %213 ], [ 0, %208 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %469, label %218, !prof !278

218:                                              ; preds = %215, %250
  %219 = phi i32 [ %251, %250 ], [ 0, %215 ]
  %220 = phi ptr [ %242, %250 ], [ null, %215 ]
  %221 = phi ptr [ %243, %250 ], [ null, %215 ]
  %222 = load ptr, ptr %210, align 8, !tbaa !86
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224, !prof !279

224:                                              ; preds = %218
  %225 = load i32, ptr %222, align 8, !tbaa !253
  br label %226

226:                                              ; preds = %224, %218
  %227 = phi i32 [ %225, %224 ], [ 0, %218 ]
  %228 = icmp eq i32 %227, %219
  br i1 %228, label %233, label %229, !prof !280

229:                                              ; preds = %226
  %230 = zext i32 %219 to i64
  %231 = getelementptr inbounds %struct.VEC_edge_base, ptr %222, i64 0, i32 2, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !86
  br label %233

233:                                              ; preds = %229, %226
  %234 = phi ptr [ %232, %229 ], [ null, %226 ]
  br i1 %228, label %252, label %235, !prof !280

235:                                              ; preds = %233
  %236 = getelementptr inbounds %struct.edge_def, ptr %234, i64 0, i32 7
  %237 = load i32, ptr %236, align 8, !tbaa !256
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  %240 = and i32 %237, 9
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, ptr %234, ptr %220, !prof !281
  %243 = select i1 %239, ptr %221, ptr %234, !prof !281
  br i1 %223, label %246, label %244, !prof !282

244:                                              ; preds = %235
  %245 = load i32, ptr %222, align 8, !tbaa !253
  br label %246

246:                                              ; preds = %244, %235
  %247 = phi i32 [ %245, %244 ], [ 0, %235 ]
  %248 = icmp ult i32 %219, %247
  br i1 %248, label %250, label %249, !prof !283

249:                                              ; preds = %246
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %250

250:                                              ; preds = %249, %246
  %251 = add i32 %219, 1
  br label %218, !llvm.loop !284

252:                                              ; preds = %233
  %253 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 7
  %254 = load ptr, ptr %253, align 8, !tbaa !97
  %255 = getelementptr inbounds %struct.rtl_bb_info, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !188
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 9
  br i1 %259, label %260, label %396, !prof !285

260:                                              ; preds = %252
  %261 = tail call i32 @any_condjump_p(ptr noundef nonnull %256) #19
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %372, label %263, !prof !286

263:                                              ; preds = %260
  %264 = icmp eq ptr %221, null
  br i1 %264, label %265, label %273, !prof !287

265:                                              ; preds = %263
  %266 = tail call i32 @onlyjump_p(ptr noundef nonnull %256) #19
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 796, ptr noundef nonnull @.str.9) #19
  br label %269

269:                                              ; preds = %268, %265
  %270 = tail call ptr @emit_barrier_after(ptr noundef nonnull %256) #19
  %271 = load ptr, ptr %253, align 8, !tbaa !97
  %272 = getelementptr inbounds %struct.rtl_bb_info, ptr %271, i64 0, i32 3
  store ptr %270, ptr %272, align 8, !tbaa !180
  br label %469

273:                                              ; preds = %263
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !144
  %276 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !288
  %278 = icmp eq ptr %275, %277
  br i1 %278, label %469, label %279, !prof !289

279:                                              ; preds = %273
  %280 = load ptr, ptr @cfun, align 8, !tbaa !86
  %281 = getelementptr inbounds %struct.function, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !135
  %283 = getelementptr inbounds %struct.control_flow_graph, ptr %282, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !139
  %285 = icmp eq ptr %277, %284
  br i1 %285, label %469, label %286, !prof !290

286:                                              ; preds = %279
  %287 = icmp eq ptr %220, null
  br i1 %287, label %411, label %288, !prof !290

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.edge_def, ptr %220, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !288
  %291 = icmp eq ptr %275, %290
  br i1 %291, label %336, label %292, !prof !291

292:                                              ; preds = %288
  %293 = tail call ptr @find_reg_note(ptr noundef nonnull %256, i32 noundef 13, ptr noundef null) #19
  %294 = icmp eq ptr %293, null
  br i1 %294, label %411, label %295, !prof !292

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !97
  %298 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1
  %299 = load i64, ptr %298, align 8, !tbaa !97
  %300 = icmp slt i64 %299, 5000
  br i1 %300, label %301, label %411, !prof !293

301:                                              ; preds = %295
  %302 = load ptr, ptr %276, align 8, !tbaa !288
  %303 = load ptr, ptr @cfun, align 8, !tbaa !86
  %304 = getelementptr inbounds %struct.function, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !135
  %306 = getelementptr inbounds %struct.control_flow_graph, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !139
  %308 = icmp eq ptr %302, %307
  br i1 %308, label %325, label %309, !prof !294

309:                                              ; preds = %301
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %302, i64 0, i32 7
  %311 = load ptr, ptr %310, align 8, !tbaa !97
  %312 = load ptr, ptr %311, align 8, !tbaa !171
  %313 = load i32, ptr %312, align 8
  %314 = and i32 %313, 65535
  %315 = icmp eq i32 %314, 12
  br i1 %315, label %325, label %316, !prof !295

316:                                              ; preds = %309
  %317 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %318 = icmp eq ptr %317, null
  br i1 %318, label %323, label %319, !prof !296

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.basic_block_def, ptr %302, i64 0, i32 9
  %321 = load i32, ptr %320, align 8, !tbaa !170
  %322 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %317, ptr noundef nonnull @.str.11, i32 noundef %321)
  br label %323

323:                                              ; preds = %319, %316
  %324 = tail call ptr @block_label(ptr noundef %302) #19
  br label %325

325:                                              ; preds = %323, %309, %301
  %326 = phi ptr [ null, %301 ], [ %312, %309 ], [ %324, %323 ]
  %327 = tail call i32 @invert_jump(ptr noundef nonnull %256, ptr noundef %326, i32 noundef 0) #19
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %411, label %329, !prof !294

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 7
  %331 = load i32, ptr %330, align 8, !tbaa !256
  %332 = and i32 %331, -2
  store i32 %332, ptr %330, align 8, !tbaa !256
  %333 = getelementptr inbounds %struct.edge_def, ptr %220, i64 0, i32 7
  %334 = load i32, ptr %333, align 8, !tbaa !256
  %335 = or i32 %334, 1
  store i32 %335, ptr %333, align 8, !tbaa !256
  tail call void @update_br_prob_note(ptr noundef nonnull %209) #19
  br label %411

336:                                              ; preds = %288
  %337 = getelementptr inbounds %struct.edge_def, ptr %220, i64 0, i32 7
  %338 = load i32, ptr %337, align 8, !tbaa !256
  %339 = and i32 %338, 8192
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341, !prof !297

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 7
  %343 = load i32, ptr %342, align 8, !tbaa !256
  %344 = and i32 %343, 8192
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %469, label %346

346:                                              ; preds = %336, %341
  %347 = getelementptr inbounds %struct.basic_block_def, ptr %277, i64 0, i32 7
  %348 = load ptr, ptr %347, align 8, !tbaa !97
  %349 = load ptr, ptr %348, align 8, !tbaa !171
  %350 = load i32, ptr %349, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 12
  br i1 %352, label %362, label %353, !prof !295

353:                                              ; preds = %346
  %354 = load ptr, ptr @dump_file, align 8, !tbaa !86
  %355 = icmp eq ptr %354, null
  br i1 %355, label %360, label %356, !prof !296

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.basic_block_def, ptr %277, i64 0, i32 9
  %358 = load i32, ptr %357, align 8, !tbaa !170
  %359 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %354, ptr noundef nonnull @.str.11, i32 noundef %358)
  br label %360

360:                                              ; preds = %356, %353
  %361 = tail call ptr @block_label(ptr noundef %277) #19
  br label %362

362:                                              ; preds = %360, %346
  %363 = phi ptr [ %349, %346 ], [ %361, %360 ]
  %364 = tail call i32 @invert_jump(ptr noundef nonnull %256, ptr noundef %363, i32 noundef 0) #19
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %411, label %366, !prof !298

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 7
  %368 = load i32, ptr %367, align 8, !tbaa !256
  %369 = and i32 %368, -2
  store i32 %369, ptr %367, align 8, !tbaa !256
  %370 = load i32, ptr %337, align 8, !tbaa !256
  %371 = or i32 %370, 1
  store i32 %371, ptr %337, align 8, !tbaa !256
  tail call void @update_br_prob_note(ptr noundef nonnull %209) #19
  br label %469

372:                                              ; preds = %260
  %373 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !97
  %375 = tail call ptr @extract_asm_operands(ptr noundef %374) #19
  %376 = icmp eq ptr %375, null
  br i1 %376, label %390, label %377, !prof !299

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !144
  %380 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !288
  %382 = icmp eq ptr %379, %381
  br i1 %382, label %469, label %383

383:                                              ; preds = %377
  %384 = load ptr, ptr @cfun, align 8, !tbaa !86
  %385 = getelementptr inbounds %struct.function, ptr %384, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !135
  %387 = getelementptr inbounds %struct.control_flow_graph, ptr %386, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !139
  %389 = icmp eq ptr %381, %388
  br i1 %389, label %469, label %411

390:                                              ; preds = %372
  %391 = tail call i32 @returnjump_p(ptr noundef nonnull %256) #19
  %392 = icmp eq i32 %391, 0
  %393 = icmp ne ptr %221, null
  %394 = select i1 %392, i1 %393, i1 false, !prof !300
  br i1 %394, label %395, label %469, !prof !301

395:                                              ; preds = %390
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 876, ptr noundef nonnull @.str.9) #19
  br label %469

396:                                              ; preds = %252
  %397 = icmp eq ptr %221, null
  br i1 %397, label %469, label %398, !prof !302

398:                                              ; preds = %396
  %399 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !144
  %401 = getelementptr inbounds %struct.edge_def, ptr %221, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !288
  %403 = icmp eq ptr %400, %402
  br i1 %403, label %469, label %404, !prof !303

404:                                              ; preds = %398
  %405 = load ptr, ptr @cfun, align 8, !tbaa !86
  %406 = getelementptr inbounds %struct.function, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !135
  %408 = getelementptr inbounds %struct.control_flow_graph, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !139
  %410 = icmp eq ptr %402, %409
  br i1 %410, label %469, label %411, !prof !304

411:                                              ; preds = %404, %383, %362, %329, %325, %295, %292, %286
  %412 = phi ptr [ %221, %362 ], [ %221, %286 ], [ %221, %383 ], [ %221, %404 ], [ %220, %329 ], [ %221, %325 ], [ %221, %295 ], [ %221, %292 ]
  %413 = tail call ptr @force_nonfallthru(ptr noundef %412) #19
  %414 = icmp eq ptr %413, null
  br i1 %414, label %469, label %415, !prof !305

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 7
  %417 = load ptr, ptr %416, align 8, !tbaa !97
  %418 = getelementptr inbounds %struct.rtl_bb_info, ptr %417, i64 0, i32 4
  store i32 1, ptr %418, align 8, !tbaa !178
  %419 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !144
  %421 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 2
  store ptr %420, ptr %421, align 8, !tbaa !144
  store ptr %413, ptr %419, align 8, !tbaa !144
  %422 = load ptr, ptr %412, align 8, !tbaa !262
  %423 = getelementptr inbounds %struct.basic_block_def, ptr %422, i64 0, i32 13
  %424 = load i32, ptr %423, align 8, !tbaa !212
  %425 = and i32 %424, -97
  %426 = load ptr, ptr %413, align 8, !tbaa !306
  %427 = icmp eq ptr %426, null
  br i1 %427, label %431, label %428, !prof !292

428:                                              ; preds = %415
  %429 = load i32, ptr %426, align 8, !tbaa !253
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %432, label %431, !prof !307

431:                                              ; preds = %428, %415
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 655, ptr noundef nonnull @.str.9) #19
  br label %432

432:                                              ; preds = %431, %428
  %433 = load ptr, ptr %413, align 8, !tbaa !306
  %434 = getelementptr inbounds %struct.VEC_edge_base, ptr %433, i64 0, i32 2, i64 0
  %435 = load ptr, ptr %434, align 8, !tbaa !86
  %436 = load ptr, ptr %435, align 8, !tbaa !262
  %437 = getelementptr inbounds %struct.basic_block_def, ptr %436, i64 0, i32 13
  %438 = load i32, ptr %437, align 8, !tbaa !212
  %439 = and i32 %438, 96
  %440 = or disjoint i32 %439, %425
  store i32 %440, ptr %423, align 8, !tbaa !212
  %441 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !101
  %442 = icmp ne i32 %441, 0
  %443 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %444 = icmp ne i8 %443, 0
  %445 = select i1 %442, i1 %444, i1 false, !prof !292
  br i1 %445, label %446, label %469, !prof !292

446:                                              ; preds = %432
  %447 = load ptr, ptr %416, align 8, !tbaa !97
  %448 = getelementptr inbounds %struct.rtl_bb_info, ptr %447, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !188
  %450 = load i32, ptr %449, align 8
  %451 = and i32 %450, 65535
  %452 = icmp eq i32 %451, 9
  br i1 %452, label %453, label %469

453:                                              ; preds = %446
  %454 = tail call i32 @any_condjump_p(ptr noundef nonnull %449) #19
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %469

456:                                              ; preds = %453
  %457 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !277
  %459 = getelementptr inbounds %struct.VEC_edge_base, ptr %458, i64 0, i32 2, i64 0
  %460 = load ptr, ptr %459, align 8, !tbaa !86
  %461 = getelementptr inbounds %struct.edge_def, ptr %460, i64 0, i32 7
  %462 = load i32, ptr %461, align 8, !tbaa !256
  %463 = and i32 %462, 8192
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %469, label %465

465:                                              ; preds = %456
  %466 = load ptr, ptr %416, align 8, !tbaa !97
  %467 = getelementptr inbounds %struct.rtl_bb_info, ptr %466, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !188
  tail call void @add_reg_note(ptr noundef %468, i32 noundef 29, ptr noundef null) #19
  br label %469

469:                                              ; preds = %404, %383, %465, %456, %453, %446, %432, %411, %398, %396, %395, %390, %377, %366, %341, %279, %273, %269, %215
  %470 = phi ptr [ %209, %366 ], [ %209, %269 ], [ %209, %215 ], [ %209, %279 ], [ %209, %273 ], [ %209, %341 ], [ %209, %377 ], [ %209, %390 ], [ %209, %395 ], [ %209, %396 ], [ %209, %398 ], [ %413, %453 ], [ %413, %465 ], [ %413, %456 ], [ %413, %446 ], [ %413, %432 ], [ %209, %411 ], [ %209, %383 ], [ %209, %404 ]
  %471 = getelementptr inbounds %struct.basic_block_def, ptr %470, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !86
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %208, !prof !273, !llvm.loop !308

474:                                              ; preds = %469, %200
  tail call void @relink_block_chain(i8 noundef zeroext 0)
  %475 = load ptr, ptr @cfun, align 8, !tbaa !86
  %476 = getelementptr inbounds %struct.function, ptr %475, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !135
  %478 = load ptr, ptr %477, align 8, !tbaa !137
  %479 = getelementptr inbounds %struct.basic_block_def, ptr %478, i64 0, i32 6
  %480 = load ptr, ptr %479, align 8, !tbaa !140
  %481 = getelementptr inbounds %struct.control_flow_graph, ptr %477, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !139
  %483 = icmp eq ptr %480, %482
  br i1 %483, label %535, label %484, !prof !226

484:                                              ; preds = %474, %526
  %485 = phi ptr [ %528, %526 ], [ %480, %474 ]
  %486 = getelementptr inbounds %struct.basic_block_def, ptr %485, i64 0, i32 1
  br label %487

487:                                              ; preds = %514, %484
  %488 = phi i32 [ 0, %484 ], [ %515, %514 ]
  %489 = load ptr, ptr %486, align 8, !tbaa !86
  %490 = icmp eq ptr %489, null
  br i1 %490, label %493, label %491, !prof !309

491:                                              ; preds = %487
  %492 = load i32, ptr %489, align 8, !tbaa !253
  br label %493

493:                                              ; preds = %491, %487
  %494 = phi i32 [ %492, %491 ], [ 0, %487 ]
  %495 = icmp eq i32 %494, %488
  br i1 %495, label %500, label %496, !prof !310

496:                                              ; preds = %493
  %497 = zext i32 %488 to i64
  %498 = getelementptr inbounds %struct.VEC_edge_base, ptr %489, i64 0, i32 2, i64 %497
  %499 = load ptr, ptr %498, align 8, !tbaa !86
  br label %500

500:                                              ; preds = %496, %493
  %501 = phi ptr [ %499, %496 ], [ null, %493 ]
  br i1 %495, label %516, label %502, !prof !310

502:                                              ; preds = %500
  %503 = getelementptr inbounds %struct.edge_def, ptr %501, i64 0, i32 7
  %504 = load i32, ptr %503, align 8, !tbaa !256
  %505 = and i32 %504, 1
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %516, !prof !311

507:                                              ; preds = %502
  br i1 %490, label %510, label %508, !prof !312

508:                                              ; preds = %507
  %509 = load i32, ptr %489, align 8, !tbaa !253
  br label %510

510:                                              ; preds = %508, %507
  %511 = phi i32 [ %509, %508 ], [ 0, %507 ]
  %512 = icmp ult i32 %488, %511
  br i1 %512, label %514, label %513, !prof !313

513:                                              ; preds = %510
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %514

514:                                              ; preds = %513, %510
  %515 = add i32 %488, 1
  br label %487, !llvm.loop !314

516:                                              ; preds = %502, %500
  %517 = icmp eq ptr %501, null
  br i1 %517, label %526, label %518, !prof !315

518:                                              ; preds = %516
  %519 = load ptr, ptr %501, align 8, !tbaa !262
  %520 = getelementptr inbounds %struct.edge_def, ptr %501, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !288
  %522 = tail call zeroext i8 @can_fallthru(ptr noundef %519, ptr noundef %521) #19
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %526, !prof !316

524:                                              ; preds = %518
  %525 = tail call ptr @force_nonfallthru(ptr noundef nonnull %501) #19
  br label %526

526:                                              ; preds = %524, %518, %516
  %527 = getelementptr inbounds %struct.basic_block_def, ptr %485, i64 0, i32 6
  %528 = load ptr, ptr %527, align 8, !tbaa !140
  %529 = load ptr, ptr @cfun, align 8, !tbaa !86
  %530 = getelementptr inbounds %struct.function, ptr %529, i64 0, i32 1
  %531 = load ptr, ptr %530, align 8, !tbaa !135
  %532 = getelementptr inbounds %struct.control_flow_graph, ptr %531, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !139
  %534 = icmp eq ptr %528, %533
  br i1 %534, label %535, label %484, !prof !317, !llvm.loop !318

535:                                              ; preds = %526, %474
  %536 = phi ptr [ %477, %474 ], [ %531, %526 ]
  %537 = load i32, ptr @optimize, align 4, !tbaa !101
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %698, !prof !225

539:                                              ; preds = %535
  %540 = load ptr, ptr %536, align 8, !tbaa !137
  %541 = getelementptr inbounds %struct.basic_block_def, ptr %540, i64 0, i32 6
  %542 = load ptr, ptr %541, align 8, !tbaa !140
  %543 = load ptr, ptr @cfun, align 8, !tbaa !86
  %544 = getelementptr inbounds %struct.function, ptr %543, i64 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !135
  %546 = getelementptr inbounds %struct.control_flow_graph, ptr %545, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !139
  %548 = icmp eq ptr %542, %547
  br i1 %548, label %698, label %558

549:                                              ; preds = %574
  %550 = getelementptr inbounds %struct.basic_block_def, ptr %559, i64 0, i32 6
  %551 = load ptr, ptr %550, align 8, !tbaa !140
  %552 = load ptr, ptr @cfun, align 8, !tbaa !86
  %553 = getelementptr inbounds %struct.function, ptr %552, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !135
  %555 = getelementptr inbounds %struct.control_flow_graph, ptr %554, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !139
  %557 = icmp eq ptr %551, %556
  br i1 %557, label %698, label %558, !llvm.loop !319

558:                                              ; preds = %539, %549
  %559 = phi ptr [ %551, %549 ], [ %542, %539 ]
  %560 = getelementptr inbounds %struct.basic_block_def, ptr %559, i64 0, i32 1
  br label %561

561:                                              ; preds = %696, %558
  %562 = phi i32 [ 0, %558 ], [ %697, %696 ]
  %563 = load ptr, ptr %560, align 8, !tbaa !86
  %564 = icmp eq ptr %563, null
  br i1 %564, label %567, label %565

565:                                              ; preds = %561
  %566 = load i32, ptr %563, align 8, !tbaa !253
  br label %567

567:                                              ; preds = %565, %561
  %568 = phi i32 [ %566, %565 ], [ 0, %561 ]
  %569 = icmp eq i32 %568, %562
  br i1 %569, label %574, label %570

570:                                              ; preds = %567
  %571 = zext i32 %562 to i64
  %572 = getelementptr inbounds %struct.VEC_edge_base, ptr %563, i64 0, i32 2, i64 %571
  %573 = load ptr, ptr %572, align 8, !tbaa !86
  br label %574

574:                                              ; preds = %570, %567
  %575 = phi ptr [ %573, %570 ], [ null, %567 ]
  br i1 %569, label %549, label %576

576:                                              ; preds = %574
  %577 = getelementptr inbounds %struct.edge_def, ptr %575, i64 0, i32 5
  %578 = load i32, ptr %577, align 8, !tbaa !320
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %687, label %580

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.edge_def, ptr %575, i64 0, i32 7
  %582 = load i32, ptr %581, align 8, !tbaa !256
  %583 = and i32 %582, 2
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %687

585:                                              ; preds = %580
  %586 = load ptr, ptr %575, align 8, !tbaa !262
  %587 = getelementptr inbounds %struct.basic_block_def, ptr %586, i64 0, i32 7
  %588 = load ptr, ptr %587, align 8, !tbaa !97
  %589 = getelementptr inbounds %struct.rtl_bb_info, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %588, align 8, !tbaa !171
  %591 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1, i32 0, i32 0, i64 1
  %592 = load ptr, ptr %591, align 8, !tbaa !97
  %593 = load ptr, ptr %589, align 8, !tbaa !97
  %594 = icmp eq ptr %593, %592
  br i1 %594, label %612, label %595

595:                                              ; preds = %585, %605
  %596 = phi ptr [ %607, %605 ], [ %593, %585 ]
  %597 = load i32, ptr %596, align 8
  %598 = and i32 %597, 65535
  %599 = add nsw i32 %598, -7
  %600 = icmp ult i32 %599, 4
  br i1 %600, label %601, label %605

601:                                              ; preds = %595
  %602 = getelementptr inbounds %struct.rtx_def, ptr %596, i64 0, i32 1, i32 0, i32 2
  %603 = load i32, ptr %602, align 8, !tbaa !97
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %601, %595
  %606 = getelementptr inbounds %struct.rtx_def, ptr %596, i64 0, i32 1, i32 0, i32 0, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !97
  %608 = icmp eq ptr %607, %592
  br i1 %608, label %612, label %595, !llvm.loop !321

609:                                              ; preds = %601
  %610 = tail call zeroext i8 @locator_eq(i32 noundef %603, i32 noundef %578), !range !322
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %612, label %687

612:                                              ; preds = %605, %585, %609
  %613 = load ptr, ptr %589, align 8, !tbaa !188
  %614 = tail call i32 @simplejump_p(ptr noundef %613) #19
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %627, label %616

616:                                              ; preds = %612
  %617 = load ptr, ptr %575, align 8, !tbaa !262
  %618 = getelementptr inbounds %struct.basic_block_def, ptr %617, i64 0, i32 7
  %619 = load ptr, ptr %618, align 8, !tbaa !97
  %620 = getelementptr inbounds %struct.rtl_bb_info, ptr %619, i64 0, i32 1
  %621 = load ptr, ptr %620, align 8, !tbaa !188
  %622 = getelementptr inbounds %struct.rtx_def, ptr %621, i64 0, i32 1, i32 0, i32 2
  %623 = load i32, ptr %622, align 8, !tbaa !97
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %627

625:                                              ; preds = %616
  %626 = load i32, ptr %577, align 8, !tbaa !320
  store i32 %626, ptr %622, align 8, !tbaa !97
  br label %687

627:                                              ; preds = %616, %612
  %628 = getelementptr inbounds %struct.edge_def, ptr %575, i64 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !288
  %630 = load ptr, ptr @cfun, align 8, !tbaa !86
  %631 = getelementptr inbounds %struct.function, ptr %630, i64 0, i32 1
  %632 = load ptr, ptr %631, align 8, !tbaa !135
  %633 = getelementptr inbounds %struct.control_flow_graph, ptr %632, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !139
  %635 = icmp eq ptr %629, %634
  br i1 %635, label %663, label %636

636:                                              ; preds = %627
  %637 = getelementptr inbounds %struct.basic_block_def, ptr %629, i64 0, i32 7
  %638 = load ptr, ptr %637, align 8, !tbaa !97
  %639 = getelementptr inbounds %struct.rtl_bb_info, ptr %638, i64 0, i32 1
  %640 = load ptr, ptr %639, align 8, !tbaa !188
  %641 = getelementptr inbounds %struct.rtx_def, ptr %640, i64 0, i32 1, i32 0, i32 0, i64 2
  %642 = load ptr, ptr %641, align 8, !tbaa !97
  %643 = load ptr, ptr %638, align 8, !tbaa !97
  %644 = icmp eq ptr %643, %642
  br i1 %644, label %663, label %645

645:                                              ; preds = %636, %651
  %646 = phi ptr [ %653, %651 ], [ %643, %636 ]
  %647 = load i32, ptr %646, align 8
  %648 = and i32 %647, 65535
  %649 = add nsw i32 %648, -7
  %650 = icmp ult i32 %649, 4
  br i1 %650, label %655, label %651

651:                                              ; preds = %645
  %652 = getelementptr inbounds %struct.rtx_def, ptr %646, i64 0, i32 1, i32 0, i32 0, i64 2
  %653 = load ptr, ptr %652, align 8, !tbaa !97
  %654 = icmp eq ptr %653, %642
  br i1 %654, label %663, label %645, !llvm.loop !323

655:                                              ; preds = %645
  %656 = getelementptr inbounds %struct.rtx_def, ptr %646, i64 0, i32 1, i32 0, i32 2
  %657 = load i32, ptr %656, align 8, !tbaa !97
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %663, label %659

659:                                              ; preds = %655
  %660 = load i32, ptr %577, align 8, !tbaa !320
  %661 = tail call zeroext i8 @locator_eq(i32 noundef %657, i32 noundef %660), !range !322
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %663, label %687

663:                                              ; preds = %651, %636, %659, %655, %627
  %664 = tail call ptr @split_edge(ptr noundef nonnull %575) #19
  %665 = getelementptr inbounds %struct.basic_block_def, ptr %664, i64 0, i32 7
  %666 = load ptr, ptr %665, align 8, !tbaa !97
  %667 = getelementptr inbounds %struct.rtl_bb_info, ptr %666, i64 0, i32 1
  %668 = load ptr, ptr %667, align 8, !tbaa !188
  %669 = load i32, ptr %668, align 8
  %670 = and i32 %669, 65535
  %671 = add nsw i32 %670, -7
  %672 = icmp ult i32 %671, 4
  br i1 %672, label %681, label %673

673:                                              ; preds = %663
  %674 = tail call ptr @gen_nop() #19
  %675 = load ptr, ptr %665, align 8, !tbaa !97
  %676 = getelementptr inbounds %struct.rtl_bb_info, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !188
  %678 = tail call ptr @emit_insn_after_noloc(ptr noundef %674, ptr noundef %677, ptr noundef %664) #19
  %679 = load ptr, ptr %665, align 8, !tbaa !97
  %680 = getelementptr inbounds %struct.rtl_bb_info, ptr %679, i64 0, i32 1
  store ptr %678, ptr %680, align 8, !tbaa !188
  br label %681

681:                                              ; preds = %673, %663
  %682 = load i32, ptr %577, align 8, !tbaa !320
  %683 = load ptr, ptr %665, align 8, !tbaa !97
  %684 = getelementptr inbounds %struct.rtl_bb_info, ptr %683, i64 0, i32 1
  %685 = load ptr, ptr %684, align 8, !tbaa !188
  %686 = getelementptr inbounds %struct.rtx_def, ptr %685, i64 0, i32 1, i32 0, i32 2
  store i32 %682, ptr %686, align 8, !tbaa !97
  br label %687

687:                                              ; preds = %681, %659, %625, %609, %580, %576
  %688 = load ptr, ptr %560, align 8, !tbaa !86
  %689 = icmp eq ptr %688, null
  br i1 %689, label %692, label %690

690:                                              ; preds = %687
  %691 = load i32, ptr %688, align 8, !tbaa !253
  br label %692

692:                                              ; preds = %690, %687
  %693 = phi i32 [ %691, %690 ], [ 0, %687 ]
  %694 = icmp ult i32 %562, %693
  br i1 %694, label %696, label %695

695:                                              ; preds = %692
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %696

696:                                              ; preds = %695, %692
  %697 = add i32 %562, 1
  br label %561, !llvm.loop !324

698:                                              ; preds = %549, %539, %535
  %699 = tail call ptr @get_insns() #19
  tail call void @rebuild_jump_labels(ptr noundef %699) #19
  tail call void @delete_dead_jumptables() #19
  ret void
}

declare void @rtl_register_cfg_hooks() local_unnamed_addr #3

declare void @delete_dead_jumptables() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @can_copy_bbs_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !85 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %74, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %8
  %7 = zext i32 %1 to i64
  br label %17

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %15, %8 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !212
  %14 = or i32 %13, 128
  store i32 %14, ptr %12, align 8, !tbaa !212
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %6, label %8, !llvm.loop !325

17:                                               ; preds = %6, %69
  %18 = phi i64 [ 0, %6 ], [ %70, %69 ]
  %19 = phi i32 [ 1, %6 ], [ %67, %69 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  br label %23

23:                                               ; preds = %58, %17
  %24 = phi i32 [ 0, %17 ], [ %59, %58 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 8, !tbaa !253
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = zext i32 %24 to i64
  %34 = getelementptr inbounds %struct.VEC_edge_base, ptr %25, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  br label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ %35, %32 ], [ null, %29 ]
  br i1 %31, label %60, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !256
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !288
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !212
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43, %38
  %51 = icmp eq ptr %25, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %25, align 8, !tbaa !253
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %53, %52 ], [ 0, %50 ]
  %56 = icmp ult i32 %24, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %58

58:                                               ; preds = %54, %57
  %59 = add i32 %24, 1
  br label %23, !llvm.loop !326

60:                                               ; preds = %36
  %61 = load ptr, ptr %20, align 8, !tbaa !86
  %62 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef %61) #19
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %63, i32 0, i32 %19
  %65 = select i1 %63, i32 5, i32 0
  br label %66

66:                                               ; preds = %43, %60
  %67 = phi i32 [ %64, %60 ], [ 0, %43 ]
  %68 = phi i32 [ %65, %60 ], [ 11, %43 ]
  switch i32 %68, label %88 [
    i32 0, label %69
    i32 5, label %72
    i32 11, label %72
  ]

69:                                               ; preds = %66
  %70 = add nuw nsw i64 %18, 1
  %71 = icmp eq i64 %70, %7
  br i1 %71, label %72, label %17, !llvm.loop !327

72:                                               ; preds = %69, %66, %66
  %73 = trunc i32 %67 to i8
  br label %74

74:                                               ; preds = %2, %72
  %75 = phi i8 [ %73, %72 ], [ 1, %2 ]
  %76 = icmp eq i32 %1, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = zext i32 %1 to i64
  br label %79

79:                                               ; preds = %77, %79
  %80 = phi i64 [ 0, %77 ], [ %86, %79 ]
  %81 = getelementptr inbounds ptr, ptr %0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !86
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 13
  %84 = load i32, ptr %83, align 8, !tbaa !212
  %85 = and i32 %84, -129
  store i32 %85, ptr %83, align 8, !tbaa !212
  %86 = add nuw nsw i64 %80, 1
  %87 = icmp eq i64 %86, %78
  br i1 %87, label %88, label %79, !llvm.loop !328

88:                                               ; preds = %66, %79, %74
  %89 = phi i8 [ %75, %74 ], [ %75, %79 ], [ undef, %66 ]
  ret i8 %89
}

declare zeroext i8 @can_duplicate_block_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @copy_bbs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr noundef readnone %6, ptr noundef %7) local_unnamed_addr #15 !prof !85 {
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %14

12:                                               ; preds = %44
  %13 = zext i32 %1 to i64
  br label %52

14:                                               ; preds = %10, %44
  %15 = phi i64 [ 0, %10 ], [ %45, %44 ]
  %16 = phi ptr [ %7, %10 ], [ %19, %44 ]
  %17 = getelementptr inbounds ptr, ptr %0, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = tail call ptr @duplicate_block(ptr noundef %18, ptr noundef null, ptr noundef %16) #19
  %20 = getelementptr inbounds ptr, ptr %2, i64 %15
  store ptr %19, ptr %20, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !212
  %23 = or i32 %22, 128
  store i32 %23, ptr %21, align 8, !tbaa !212
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !329
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !330
  %28 = icmp ne ptr %27, %18
  %29 = icmp eq ptr %25, %6
  %30 = or i1 %29, %28
  br i1 %30, label %35, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !329
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 2
  store ptr %19, ptr %34, align 8, !tbaa !330
  br label %35

35:                                               ; preds = %31, %14
  %36 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !334
  %38 = icmp ne ptr %37, %18
  %39 = or i1 %29, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !329
  %43 = getelementptr inbounds %struct.loop, ptr %42, i64 0, i32 3
  store ptr %19, ptr %43, align 8, !tbaa !334
  br label %44

44:                                               ; preds = %35, %40
  %45 = add nuw nsw i64 %15, 1
  %46 = icmp eq i64 %45, %11
  br i1 %46, label %12, label %14, !llvm.loop !335

47:                                               ; preds = %65, %8
  %48 = icmp eq i32 %4, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  %50 = zext i32 %4 to i64
  %51 = shl nuw nsw i64 %50, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %51, i1 false), !tbaa !86
  br label %68

52:                                               ; preds = %12, %65
  %53 = phi i64 [ 0, %12 ], [ %66, %65 ]
  %54 = getelementptr inbounds ptr, ptr %0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = getelementptr inbounds ptr, ptr %2, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %55) #19
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !212
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = tail call ptr @get_bb_copy(ptr noundef %58) #19
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %57, ptr noundef %64) #19
  br label %65

65:                                               ; preds = %52, %63
  %66 = add nuw nsw i64 %53, 1
  %67 = icmp eq i64 %66, %13
  br i1 %67, label %47, label %52, !llvm.loop !336

68:                                               ; preds = %49, %47
  %69 = icmp eq i32 %1, 0
  br i1 %69, label %152, label %70

70:                                               ; preds = %68
  %71 = icmp eq i32 %4, 0
  %72 = zext i32 %1 to i64
  %73 = zext i32 %4 to i64
  br label %76

74:                                               ; preds = %140
  %75 = zext i32 %1 to i64
  br label %143

76:                                               ; preds = %70, %140
  %77 = phi i64 [ 0, %70 ], [ %141, %140 ]
  %78 = getelementptr inbounds ptr, ptr %2, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !86
  %80 = getelementptr inbounds ptr, ptr %0, i64 %77
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 1
  br label %83

83:                                               ; preds = %138, %76
  %84 = phi i32 [ 0, %76 ], [ %139, %138 ]
  %85 = load ptr, ptr %82, align 8, !tbaa !86
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %85, align 8, !tbaa !253
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ 0, %83 ]
  %91 = icmp eq i32 %90, %84
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !86
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  br i1 %91, label %140, label %98

98:                                               ; preds = %96
  br i1 %71, label %119, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 1
  br label %101

101:                                              ; preds = %99, %116
  %102 = phi i64 [ 0, %99 ], [ %117, %116 ]
  %103 = getelementptr inbounds ptr, ptr %3, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !86
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %104, align 8, !tbaa !262
  %108 = icmp eq ptr %107, %81
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !288
  %112 = load ptr, ptr %100, align 8, !tbaa !288
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = getelementptr inbounds ptr, ptr %5, i64 %102
  store ptr %97, ptr %115, align 8, !tbaa !86
  br label %116

116:                                              ; preds = %101, %106, %109, %114
  %117 = add nuw nsw i64 %102, 1
  %118 = icmp eq i64 %117, %73
  br i1 %118, label %119, label %101, !llvm.loop !337

119:                                              ; preds = %116, %98
  %120 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !288
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 13
  %123 = load i32, ptr %122, align 8, !tbaa !212
  %124 = and i32 %123, 128
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = tail call ptr @get_bb_copy(ptr noundef %121) #19
  %128 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %97, ptr noundef %127) #19
  br label %129

129:                                              ; preds = %126, %119
  %130 = load ptr, ptr %82, align 8, !tbaa !86
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i32, ptr %130, align 8, !tbaa !253
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %133, %132 ], [ 0, %129 ]
  %136 = icmp ult i32 %84, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #19
  br label %138

138:                                              ; preds = %134, %137
  %139 = add i32 %84, 1
  br label %83, !llvm.loop !338

140:                                              ; preds = %96
  %141 = add nuw nsw i64 %77, 1
  %142 = icmp eq i64 %141, %72
  br i1 %142, label %74, label %76, !llvm.loop !339

143:                                              ; preds = %74, %143
  %144 = phi i64 [ 0, %74 ], [ %150, %143 ]
  %145 = getelementptr inbounds ptr, ptr %0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !86
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 13
  %148 = load i32, ptr %147, align 8, !tbaa !212
  %149 = and i32 %148, -129
  store i32 %149, ptr %147, align 8, !tbaa !212
  %150 = add nuw nsw i64 %144, 1
  %151 = icmp eq i64 %150, %75
  br i1 %151, label %152, label %143, !llvm.loop !340

152:                                              ; preds = %143, %68
  ret void
}

declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #3

declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #3

declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #3

declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #3

declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_nop() local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!84}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!35 = !{ptr @insn_locators_alloc, ptr @vec_heap_o_reserve_exact, i64 114}
!36 = !{ptr @insn_locators_alloc, ptr @vec_gc_p_reserve_exact, i64 38}
!37 = !{ptr @insn_locators_finalize, ptr @curr_insn_locator, i64 38}
!38 = !{ptr @curr_insn_locator, ptr @vec_heap_o_reserve, i64 528}
!39 = !{ptr @insn_locators_free, ptr @free, i64 114}
!40 = !{ptr @insn_locators_free, ptr @ggc_free, i64 38}
!41 = !{ptr @into_cfg_layout_mode, ptr @cfg_layout_initialize, i64 38}
!42 = !{ptr @outof_cfg_layout_mode, ptr @cfg_layout_finalize, i64 38}
!43 = !{ptr @locator_line, ptr @expand_location, i64 35}
!44 = !{ptr @insn_line, ptr @expand_location, i64 564352}
!45 = !{ptr @locator_file, ptr @expand_location, i64 35}
!46 = !{ptr @insn_file, ptr @expand_location, i64 564352}
!47 = !{ptr @relink_block_chain, ptr @free_original_copy_tables, i64 152}
!48 = !{ptr @relink_block_chain, ptr @initialize_original_copy_tables, i64 38}
!49 = !{ptr @relink_block_chain, ptr @compact_blocks, i64 152}
!50 = !{ptr @cfg_layout_can_duplicate_bb_p, ptr @tablejump_p, i64 68417}
!51 = !{ptr @duplicate_insn_chain, ptr @emit_note, i64 287}
!52 = !{ptr @duplicate_insn_chain, ptr @get_last_insn, i64 404}
!53 = !{ptr @duplicate_insn_chain, ptr @emit_copy_of_insn_after, i64 404}
!54 = !{ptr @duplicate_insn_chain, ptr @maybe_copy_epilogue_insn, i64 404}
!55 = !{ptr @duplicate_insn_chain, ptr @emit_barrier, i64 29}
!56 = !{ptr @duplicate_insn_chain, ptr @emit_note_copy, i64 29}
!57 = !{ptr @duplicate_insn_chain, ptr @delete_insn, i64 287}
!58 = !{ptr @cfg_layout_duplicate_bb, ptr @duplicate_insn_chain, i64 287}
!59 = !{ptr @cfg_layout_duplicate_bb, ptr @get_last_insn, i64 287}
!60 = !{ptr @cfg_layout_duplicate_bb, ptr @create_basic_block, i64 258}
!61 = !{ptr @cfg_layout_initialize, ptr @initialize_original_copy_tables, i64 114}
!62 = !{ptr @cfg_layout_initialize, ptr @cfg_layout_rtl_register_cfg_hooks, i64 114}
!63 = !{ptr @cfg_layout_initialize, ptr @get_insns, i64 342}
!64 = !{ptr @cfg_layout_initialize, ptr @set_last_insn, i64 126}
!65 = !{ptr @cfg_layout_initialize, ptr @set_first_insn, i64 114}
!66 = !{ptr @cfg_layout_initialize, ptr @get_last_insn, i64 76}
!67 = !{ptr @cfg_layout_initialize, ptr @cleanup_cfg, i64 114}
!68 = !{ptr @cfg_layout_finalize, ptr @rtl_register_cfg_hooks, i64 114}
!69 = !{ptr @cfg_layout_finalize, ptr @set_first_insn, i64 114}
!70 = !{ptr @cfg_layout_finalize, ptr @set_last_insn, i64 114}
!71 = !{ptr @cfg_layout_finalize, ptr @any_condjump_p, i64 444620}
!72 = !{ptr @cfg_layout_finalize, ptr @find_reg_note, i64 69059}
!73 = !{ptr @cfg_layout_finalize, ptr @block_label, i64 32476}
!74 = !{ptr @cfg_layout_finalize, ptr @invert_jump, i64 69324}
!75 = !{ptr @cfg_layout_finalize, ptr @update_br_prob_note, i64 69324}
!76 = !{ptr @cfg_layout_finalize, ptr @extract_asm_operands, i64 203}
!77 = !{ptr @cfg_layout_finalize, ptr @returnjump_p, i64 203}
!78 = !{ptr @cfg_layout_finalize, ptr @force_nonfallthru, i64 84179}
!79 = !{ptr @cfg_layout_finalize, ptr @relink_block_chain, i64 114}
!80 = !{ptr @cfg_layout_finalize, ptr @can_fallthru, i64 445155}
!81 = !{ptr @cfg_layout_finalize, ptr @get_insns, i64 114}
!82 = !{ptr @cfg_layout_finalize, ptr @rebuild_jump_labels, i64 114}
!83 = !{ptr @cfg_layout_finalize, ptr @delete_dead_jumptables, i64 114}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = !{!"function_entry_count", i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !{!91, !87, i64 8}
!91 = !{!"_IO_FILE", !92, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !87, i64 104, !92, i64 112, !92, i64 116, !93, i64 120, !94, i64 128, !88, i64 130, !88, i64 131, !87, i64 136, !93, i64 144, !87, i64 152, !87, i64 160, !87, i64 168, !87, i64 176, !93, i64 184, !92, i64 192, !88, i64 196}
!92 = !{!"int", !88, i64 0}
!93 = !{!"long", !88, i64 0}
!94 = !{!"short", !88, i64 0}
!95 = !{!91, !87, i64 16}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{!88, !88, i64 0}
!98 = !{!91, !87, i64 40}
!99 = !{!91, !87, i64 48}
!100 = !{!91, !92, i64 0}
!101 = !{!92, !92, i64 0}
!102 = distinct !{!102, !103, !104}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = !{!"function_entry_count", i64 36}
!106 = !{!"branch_weights", i32 114, i32 118370}
!107 = !{!"branch_weights", i32 126, i32 118358}
!108 = !{!"function_entry_count", i64 38}
!109 = !{!"branch_weights", i32 38, i32 0}
!110 = !{!"function_entry_count", i64 1122600}
!111 = !{!"branch_weights", i32 415431, i32 707169}
!112 = !{!"branch_weights", i32 707049, i32 120}
!113 = !{!"branch_weights", i32 0, i32 120}
!114 = !{!115, !92, i64 4}
!115 = !{!"VEC_int_base", !92, i64 0, !92, i64 4, !88, i64 8}
!116 = !{!115, !92, i64 0}
!117 = !{!118, !92, i64 4}
!118 = !{!"VEC_tree_base", !92, i64 0, !92, i64 4, !88, i64 8}
!119 = !{!118, !92, i64 0}
!120 = !{!"branch_weights", i32 395174, i32 311995}
!121 = !{!"branch_weights", i32 0, i32 311995}
!122 = !{!"branch_weights", i32 264, i32 311731}
!123 = !{!124, !92, i64 4}
!124 = !{!"VEC_location_t_base", !92, i64 0, !92, i64 4, !88, i64 8}
!125 = !{!124, !92, i64 0}
!126 = !{!"function_entry_count", i64 40}
!127 = !{!"branch_weights", i32 2, i32 38}
!128 = !{!"function_entry_count", i64 591165}
!129 = !{!"branch_weights", i32 0, i32 591165}
!130 = !{!"function_entry_count", i64 119344}
!131 = !{!"function_entry_count", i64 526540}
!132 = !{!"branch_weights", i32 525088, i32 1452}
!133 = !{!"cfglayout.c;into_cfg_layout_mode"}
!134 = !{!"cfglayout.c;outof_cfg_layout_mode"}
!135 = !{!136, !87, i64 8}
!136 = !{!"function", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !92, i64 104, !92, i64 108, !92, i64 112, !92, i64 116, !92, i64 120, !92, i64 124, !87, i64 128, !92, i64 136, !92, i64 137, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139}
!137 = !{!138, !87, i64 0}
!138 = !{!"control_flow_graph", !87, i64 0, !87, i64 8, !87, i64 16, !92, i64 24, !92, i64 28, !92, i64 32, !87, i64 40, !92, i64 48, !88, i64 52, !88, i64 60, !92, i64 68, !92, i64 72}
!139 = !{!138, !87, i64 8}
!140 = !{!141, !87, i64 56}
!141 = !{!"basic_block_def", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !88, i64 32, !87, i64 48, !87, i64 56, !88, i64 64, !93, i64 72, !92, i64 80, !92, i64 84, !92, i64 88, !92, i64 92, !92, i64 96}
!142 = !{!"branch_weights", i32 1, i32 151}
!143 = !{!"branch_weights", i32 38, i32 153573}
!144 = !{!141, !87, i64 16}
!145 = !{!"branch_weights", i32 151, i32 614293}
!146 = distinct !{!146, !103, !104}
!147 = !{!"function_entry_count", i64 165}
!148 = !{!"branch_weights", i32 0, i32 165}
!149 = !{!"branch_weights", i32 165, i32 806}
!150 = !{!"branch_weights", i32 165, i32 0}
!151 = !{!"branch_weights", i32 806, i32 165}
!152 = !{!"branch_weights", i32 51843, i32 564387}
!153 = !{!"branch_weights", i32 0, i32 564387}
!154 = !{!"branch_weights", i32 4665337, i32 4509041}
!155 = !{!"branch_weights", i32 564387, i32 4100950}
!156 = !{!"branch_weights", i32 8609991, i32 564387}
!157 = !{i64 0, i64 4, !101, i64 4, i64 4, !101, i64 8, i64 1, !97}
!158 = !{!"function_entry_count", i64 616192}
!159 = !{i64 0, i64 8, !86, i64 8, i64 4, !101, i64 12, i64 4, !101, i64 16, i64 1, !97}
!160 = !{!136, !87, i64 48}
!161 = !{!162, !92, i64 0}
!162 = !{!"rtvec_def", !92, i64 0, !88, i64 8}
!163 = distinct !{!163, !103, !104}
!164 = distinct !{!164, !103, !104}
!165 = distinct !{!165, !103, !104}
!166 = distinct !{!166, !103, !104}
!167 = distinct !{!167, !103, !104}
!168 = !{!"function_entry_count", i64 152}
!169 = !{!"branch_weights", i32 152, i32 0}
!170 = !{!141, !92, i64 80}
!171 = !{!172, !87, i64 0}
!172 = !{!"rtl_bb_info", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !92, i64 32}
!173 = !{!141, !92, i64 88}
!174 = distinct !{!174, !103, !104}
!175 = !{!141, !87, i64 48}
!176 = !{!"branch_weights", i32 151, i32 683151}
!177 = distinct !{!177, !103, !104}
!178 = !{!172, !92, i64 32}
!179 = !{!"branch_weights", i32 529933, i32 153673}
!180 = !{!172, !87, i64 24}
!181 = !{!172, !87, i64 16}
!182 = !{!"branch_weights", i32 151, i32 683455}
!183 = distinct !{!183, !103, !104}
!184 = !{!"branch_weights", i32 114, i32 38}
!185 = distinct !{!185, !103, !104}
!186 = distinct !{!186, !103, !104}
!187 = !{!"function_entry_count", i64 68417}
!188 = !{!172, !87, i64 8}
!189 = !{!"branch_weights", i32 68417, i32 0}
!190 = !{!191, !87, i64 1016}
!191 = !{!"gcc_target", !192, i64 0, !194, i64 368, !195, i64 664, !92, i64 744, !87, i64 752, !87, i64 760, !87, i64 768, !87, i64 776, !87, i64 784, !87, i64 792, !87, i64 800, !87, i64 808, !87, i64 816, !87, i64 824, !87, i64 832, !87, i64 840, !87, i64 848, !87, i64 856, !87, i64 864, !87, i64 872, !87, i64 880, !87, i64 888, !87, i64 896, !87, i64 904, !87, i64 912, !87, i64 920, !87, i64 928, !87, i64 936, !87, i64 944, !87, i64 952, !87, i64 960, !87, i64 968, !87, i64 976, !87, i64 984, !87, i64 992, !87, i64 1000, !87, i64 1008, !87, i64 1016, !87, i64 1024, !87, i64 1032, !87, i64 1040, !87, i64 1048, !87, i64 1056, !93, i64 1064, !93, i64 1072, !87, i64 1080, !87, i64 1088, !87, i64 1096, !87, i64 1104, !87, i64 1112, !87, i64 1120, !87, i64 1128, !87, i64 1136, !87, i64 1144, !87, i64 1152, !87, i64 1160, !87, i64 1168, !196, i64 1176, !87, i64 1232, !87, i64 1240, !87, i64 1248, !87, i64 1256, !87, i64 1264, !87, i64 1272, !87, i64 1280, !87, i64 1288, !87, i64 1296, !87, i64 1304, !87, i64 1312, !87, i64 1320, !87, i64 1328, !87, i64 1336, !87, i64 1344, !87, i64 1352, !87, i64 1360, !87, i64 1368, !87, i64 1376, !87, i64 1384, !87, i64 1392, !87, i64 1400, !87, i64 1408, !87, i64 1416, !87, i64 1424, !87, i64 1432, !87, i64 1440, !87, i64 1448, !87, i64 1456, !93, i64 1464, !197, i64 1472, !87, i64 1664, !87, i64 1672, !87, i64 1680, !87, i64 1688, !87, i64 1696, !87, i64 1704, !87, i64 1712, !87, i64 1720, !87, i64 1728, !87, i64 1736, !87, i64 1744, !87, i64 1752, !87, i64 1760, !87, i64 1768, !87, i64 1776, !198, i64 1784, !199, i64 1792, !200, i64 1896, !201, i64 1968, !87, i64 2016, !88, i64 2024, !88, i64 2025, !88, i64 2026, !88, i64 2027, !88, i64 2028, !88, i64 2029, !88, i64 2030, !88, i64 2031, !88, i64 2032, !88, i64 2033, !88, i64 2034, !88, i64 2035}
!192 = !{!"asm_out", !87, i64 0, !87, i64 8, !87, i64 16, !193, i64 24, !193, i64 56, !87, i64 88, !87, i64 96, !87, i64 104, !87, i64 112, !87, i64 120, !87, i64 128, !87, i64 136, !87, i64 144, !87, i64 152, !87, i64 160, !87, i64 168, !87, i64 176, !87, i64 184, !87, i64 192, !87, i64 200, !87, i64 208, !87, i64 216, !87, i64 224, !87, i64 232, !87, i64 240, !87, i64 248, !87, i64 256, !87, i64 264, !87, i64 272, !87, i64 280, !87, i64 288, !87, i64 296, !87, i64 304, !87, i64 312, !87, i64 320, !87, i64 328, !87, i64 336, !87, i64 344, !87, i64 352, !87, i64 360}
!193 = !{!"asm_int_op", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24}
!194 = !{!"sched", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !87, i64 104, !87, i64 112, !87, i64 120, !87, i64 128, !87, i64 136, !87, i64 144, !87, i64 152, !87, i64 160, !87, i64 168, !87, i64 176, !87, i64 184, !87, i64 192, !87, i64 200, !87, i64 208, !87, i64 216, !87, i64 224, !87, i64 232, !87, i64 240, !87, i64 248, !87, i64 256, !87, i64 264, !87, i64 272, !87, i64 280, !87, i64 288}
!195 = !{!"vectorize", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72}
!196 = !{!"addr_space", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48}
!197 = !{!"calls", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !87, i64 104, !87, i64 112, !87, i64 120, !87, i64 128, !87, i64 136, !87, i64 144, !87, i64 152, !87, i64 160, !87, i64 168, !87, i64 176, !87, i64 184}
!198 = !{!"c", !87, i64 0}
!199 = !{!"cxx", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96}
!200 = !{!"emutls", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !88, i64 64, !88, i64 65}
!201 = !{!"target_option_hooks", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40}
!202 = distinct !{!202, !104}
!203 = !{!"function_entry_count", i64 287}
!204 = !{!"branch_weights", i32 1, i32 286}
!205 = !{!"branch_weights", i32 0, i32 0, i32 375, i32 0, i32 29, i32 258, i32 29, i32 287}
!206 = !{!"branch_weights", i32 0, i32 404}
!207 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 258, i32 29, i32 0}
!208 = !{!"branch_weights", i32 286, i32 692}
!209 = distinct !{!209, !103, !104}
!210 = !{!"function_entry_count", i64 258}
!211 = !{!"branch_weights", i32 0, i32 258}
!212 = !{!141, !92, i64 96}
!213 = !{!"branch_weights", i32 258, i32 0}
!214 = distinct !{!214, !103, !104}
!215 = !{!"branch_weights", i32 229, i32 29}
!216 = !{!"branch_weights", i32 29, i32 0}
!217 = distinct !{!217, !103, !104}
!218 = !{!"branch_weights", i32 0, i32 29}
!219 = !{!"function_entry_count", i64 114}
!220 = !{!"branch_weights", i32 0, i32 1}
!221 = !{!"branch_weights", i32 228, i32 0}
!222 = !{!"branch_weights", i32 114, i32 114}
!223 = !{!"branch_weights", i32 0, i32 228}
!224 = distinct !{!224, !103, !104}
!225 = !{!"branch_weights", i32 0, i32 114}
!226 = !{!"branch_weights", i32 1, i32 227}
!227 = !{!"branch_weights", i32 114, i32 579117}
!228 = !{!"branch_weights", i32 579231, i32 0}
!229 = !{!"branch_weights", i32 114, i32 697560}
!230 = !{!"branch_weights", i32 342345, i32 118443}
!231 = !{!"branch_weights", i32 0, i32 118298, i32 76, i32 69}
!232 = distinct !{!232, !103, !104}
!233 = !{!"branch_weights", i32 0, i32 76}
!234 = !{!"branch_weights", i32 118443, i32 0}
!235 = !{!"branch_weights", i32 0, i32 69}
!236 = !{!"branch_weights", i32 69, i32 0}
!237 = !{!"branch_weights", i32 460795, i32 118436}
!238 = !{!"branch_weights", i32 0, i32 118436}
!239 = !{!"branch_weights", i32 118436, i32 0}
!240 = distinct !{!240, !103, !104}
!241 = !{!"branch_weights", i32 461002, i32 118229}
!242 = !{!"branch_weights", i32 227, i32 1158235}
!243 = distinct !{!243, !103, !104}
!244 = !{!"branch_weights", i32 38, i32 76}
!245 = !{!"branch_weights", i32 1, i32 0}
!246 = distinct !{!246, !103, !104}
!247 = !{!138, !92, i64 32}
!248 = !{!249, !87, i64 0}
!249 = !{!"simple_bitmap_def", !87, i64 0, !92, i64 8, !92, i64 12, !88, i64 16}
!250 = !{!93, !93, i64 0}
!251 = distinct !{!251, !103, !104}
!252 = !{!"branch_weights", i32 0, i32 309}
!253 = !{!254, !92, i64 0}
!254 = !{!"VEC_edge_base", !92, i64 0, !92, i64 4, !88, i64 8}
!255 = !{!"branch_weights", i32 114, i32 195}
!256 = !{!257, !92, i64 48}
!257 = !{!"edge_def", !87, i64 0, !87, i64 8, !88, i64 16, !87, i64 24, !87, i64 32, !92, i64 40, !92, i64 44, !92, i64 48, !92, i64 52, !93, i64 56}
!258 = !{!"branch_weights", i32 157, i32 38}
!259 = !{!"branch_weights", i32 0, i32 195}
!260 = !{!"branch_weights", i32 195, i32 0}
!261 = distinct !{!261, !103, !104}
!262 = !{!257, !87, i64 0}
!263 = distinct !{!263, !103, !104}
!264 = distinct !{!264, !103, !104}
!265 = !{!"branch_weights", i32 114, i32 0}
!266 = distinct !{!266, !103, !104}
!267 = !{!"branch_weights", i32 460646, i32 0}
!268 = distinct !{!268, !103, !104}
!269 = !{!"branch_weights", i32 0, i32 460646}
!270 = !{!"branch_weights", i32 460275, i32 371}
!271 = !{!"branch_weights", i32 371, i32 578}
!272 = distinct !{!272, !103, !104}
!273 = !{!"branch_weights", i32 227, i32 921065}
!274 = distinct !{!274, !103, !104}
!275 = !{!"branch_weights", i32 114, i32 76}
!276 = distinct !{!276, !103, !104}
!277 = !{!141, !87, i64 8}
!278 = !{!"branch_weights", i32 145, i32 460501}
!279 = !{!"branch_weights", i32 0, i32 1373547}
!280 = !{!"branch_weights", i32 460501, i32 913046}
!281 = !{!"branch_weights", i32 452771, i32 460275}
!282 = !{!"branch_weights", i32 0, i32 913046}
!283 = !{!"branch_weights", i32 913046, i32 0}
!284 = distinct !{!284, !103, !104}
!285 = !{!"branch_weights", i32 444620, i32 15881}
!286 = !{!"branch_weights", i32 203, i32 444417}
!287 = !{!"branch_weights", i32 0, i32 444417}
!288 = !{!257, !87, i64 8}
!289 = !{!"branch_weights", i32 338811, i32 105606}
!290 = !{!"branch_weights", i32 0, i32 105606}
!291 = !{!"branch_weights", i32 36547, i32 69059}
!292 = !{!"branch_weights", i32 0, i32 69059}
!293 = !{!"branch_weights", i32 32777, i32 36282}
!294 = !{!"branch_weights", i32 0, i32 32777}
!295 = !{!"branch_weights", i32 36848, i32 32476}
!296 = !{!"branch_weights", i32 32476, i32 0}
!297 = !{!"branch_weights", i32 36547, i32 0}
!298 = !{!"branch_weights", i32 0, i32 36547}
!299 = !{!"branch_weights", i32 203, i32 0}
!300 = !{!"branch_weights", i32 69, i32 134}
!301 = !{!"branch_weights", i32 0, i32 203}
!302 = !{!"branch_weights", i32 23, i32 15858}
!303 = !{!"branch_weights", i32 700, i32 15158}
!304 = !{!"branch_weights", i32 38, i32 15120}
!305 = !{!"branch_weights", i32 15120, i32 69059}
!306 = !{!141, !87, i64 0}
!307 = !{!"branch_weights", i32 69059, i32 0}
!308 = distinct !{!308, !103, !104}
!309 = !{!"branch_weights", i32 0, i32 850200}
!310 = !{!"branch_weights", i32 84550, i32 765650}
!311 = !{!"branch_weights", i32 320495, i32 445155}
!312 = !{!"branch_weights", i32 0, i32 320495}
!313 = !{!"branch_weights", i32 320495, i32 0}
!314 = distinct !{!314, !103, !104}
!315 = !{!"branch_weights", i32 84550, i32 445155}
!316 = !{!"branch_weights", i32 0, i32 445155}
!317 = !{!"branch_weights", i32 227, i32 1059183}
!318 = distinct !{!318, !103, !104}
!319 = distinct !{!319, !103, !104}
!320 = !{!257, !92, i64 40}
!321 = distinct !{!321, !103, !104}
!322 = !{i8 0, i8 2}
!323 = distinct !{!323, !103, !104}
!324 = distinct !{!324, !103, !104}
!325 = distinct !{!325, !103, !104}
!326 = distinct !{!326, !103, !104}
!327 = distinct !{!327, !103, !104}
!328 = distinct !{!328, !103, !104}
!329 = !{!141, !87, i64 24}
!330 = !{!331, !87, i64 8}
!331 = !{!"loop", !92, i64 0, !92, i64 4, !87, i64 8, !87, i64 16, !332, i64 24, !92, i64 32, !92, i64 36, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !333, i64 80, !333, i64 96, !88, i64 112, !88, i64 113, !92, i64 116, !87, i64 120, !87, i64 128, !88, i64 136, !87, i64 144}
!332 = !{!"lpt_decision", !92, i64 0, !92, i64 4}
!333 = !{!"", !93, i64 0, !93, i64 8}
!334 = !{!331, !87, i64 16}
!335 = distinct !{!335, !103, !104}
!336 = distinct !{!336, !103, !104}
!337 = distinct !{!337, !103, !104}
!338 = distinct !{!338, !103, !104}
!339 = distinct !{!339, !103, !104}
!340 = distinct !{!340, !103, !104}
