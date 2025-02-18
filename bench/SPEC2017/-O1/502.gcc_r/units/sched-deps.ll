; ModuleID = 'sched-deps.c'
source_filename = "sched-deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.reg_pressure_data = type { i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct._deps_list = type { ptr, i32 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct._dep_link = type { ptr, ptr, ptr }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.deps_reg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.reg_use_data = type { i32, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.reg_set_data = type { i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@h_d_i_d = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"sched-deps.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@dn_pool_diff = internal unnamed_addr global i32 0, align 4
@dl_pool_diff = internal unnamed_addr global i32 0, align 4
@sched_luids = external local_unnamed_addr global ptr, align 8
@h_i_d = external local_unnamed_addr global ptr, align 8
@true_dependency_cache = internal unnamed_addr global ptr null, align 8
@output_dependency_cache = internal unnamed_addr global ptr null, align 8
@anti_dependency_cache = internal unnamed_addr global ptr null, align 8
@spec_dependency_cache = internal unnamed_addr global ptr null, align 8
@reg_pending_sets = internal unnamed_addr global ptr null, align 8
@reg_pending_clobbers = internal unnamed_addr global ptr null, align 8
@reg_pending_uses = internal unnamed_addr global ptr null, align 8
@max_regno = external local_unnamed_addr global i32, align 4
@reg_info_p_size = external local_unnamed_addr global i64, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_info_p = external local_unnamed_addr global ptr, align 8
@sched_deps_info = dso_local local_unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@reg_pending_barrier = internal unnamed_addr global i32 0, align 4
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@implicit_reg_pending_uses = internal unnamed_addr global i64 0, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@cache_size = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"deps_list\00", align 1
@dl_pool = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"dep_node\00", align 1
@dn_pool = internal global ptr null, align 8
@implicit_reg_pending_clobbers = internal unnamed_addr global i64 0, align 8
@sched_emulate_haifa_p = external local_unnamed_addr global i32, align 4
@cur_insn = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%d; \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%c; \00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@common_sched_info = external local_unnamed_addr global ptr, align 8
@sd_iterator_start.null_link = internal global ptr null, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@can_start_lhs_rhs_p = internal unnamed_addr global i8 0, align 1
@sched_pressure_p = external local_unnamed_addr global i8, align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@setup_insn_reg_pressure_info.pressure_info = internal unnamed_addr global ptr null, align 8
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@reg_pressure_info = internal unnamed_addr global [27 x %struct.reg_pressure_data] zeroinitializer, align 16
@sched_regno_cover_class = external local_unnamed_addr global ptr, align 8
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"BEGIN_DATA: %d; \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"BE_IN_DATA: %d; \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"BEGIN_CONTROL: %d; \00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"BE_IN_CONTROL: %d; \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"HARD_DEP; \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"DEP_TRUE; \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"DEP_ANTI; \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"DEP_OUTPUT; \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !131 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !132
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !131 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !132
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !131 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !142

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !136
  %11 = load i8, ptr %3, align 1, !tbaa !143
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !131 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !142

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !136
  %11 = load i8, ptr %3, align 1, !tbaa !143
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !131 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !132
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !142

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #29
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !136
  %11 = load i8, ptr %3, align 1, !tbaa !143
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !131 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !132
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !131 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !142

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !144
  store i8 %12, ptr %4, align 1, !tbaa !143
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !131 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !142

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !144
  store i8 %12, ptr %4, align 1, !tbaa !143
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !131 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !132
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !142

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !144
  store i8 %12, ptr %4, align 1, !tbaa !143
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !131 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #29
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !131 {
  %2 = load i32, ptr %0, align 8, !tbaa !146
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !131 {
  %2 = load i32, ptr %0, align 8, !tbaa !146
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !131 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !147
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !131 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !147
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !131 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !131 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !131 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !131 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #29
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
  br i1 %23, label %7, label %24, !llvm.loop !148

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !131 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @ds_to_dk(i32 noundef %0) local_unnamed_addr #9 !prof !131 {
  %2 = and i32 %0, 16777216
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = and i32 %0, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = and i32 %0, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @.str.1) #29
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 11, %4 ], [ 12, %7 ], [ 12, %10 ]
  ret i32 %12
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dk_to_ds(i32 noundef %0) local_unnamed_addr #9 !prof !131 {
  switch i32 %0, label %3 [
    i32 0, label %5
    i32 11, label %2
    i32 12, label %4
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @.str.1) #29
  br label %4

4:                                                ; preds = %1, %3
  br label %5

5:                                                ; preds = %1, %4, %2
  %6 = phi i32 [ 67108864, %4 ], [ 33554432, %2 ], [ 16777216, %1 ]
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_dep_1(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 !prof !131 {
  store ptr %1, ptr %0, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  store i32 %4, ptr %8, align 4, !tbaa !155
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @init_dep(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #11 !prof !156 {
  %5 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.haifa_sched_info, ptr %5, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !157
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !159

10:                                               ; preds = %4
  switch i32 %3, label %12 [
    i32 0, label %14
    i32 11, label %11
    i32 12, label %13
  ]

11:                                               ; preds = %10
  br label %14

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @.str.1) #29
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13, %11, %10, %4
  %15 = phi i32 [ -1, %4 ], [ 67108864, %13 ], [ 33554432, %11 ], [ 16777216, %10 ]
  store ptr %1, ptr %0, align 8, !tbaa !151
  %16 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !153
  %17 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  store i32 %3, ptr %17, align 8, !tbaa !154
  %18 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  store i32 %15, ptr %18, align 4, !tbaa !155
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sd_debug_dep(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !131 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !132
  tail call fastcc void @dump_dep(ptr noundef %2, ptr noundef %0, i32 noundef 1)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !132
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !131 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %2, i32 30
  %7 = tail call i32 @fputc(i32 60, ptr %0)
  %8 = and i32 %6, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !151
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !143
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = and i32 %6, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !153
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !143
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = and i32 %6, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !154
  switch i32 %29, label %32 [
    i32 0, label %33
    i32 11, label %30
    i32 12, label %31
  ]

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #29
  br label %33

33:                                               ; preds = %27, %32, %31, %30
  %34 = phi i32 [ 0, %32 ], [ 97, %31 ], [ 111, %30 ], [ 116, %27 ]
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = and i32 %6, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 17
  %42 = load i32, ptr %41, align 8, !tbaa !157
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !155
  tail call fastcc void @dump_ds(ptr noundef %0, i32 noundef %47)
  br label %48

48:                                               ; preds = %39, %45, %36
  %49 = tail call i32 @fputc(i32 62, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #12 !prof !131 {
  %1 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @dl_pool_diff, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !160 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %133, label %6, !prof !161

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %133, label %10, !prof !162

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !143
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14, !prof !163

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %21, !prof !163

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  br label %48

21:                                               ; preds = %14
  %22 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #29
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24, !prof !164

24:                                               ; preds = %21
  %25 = tail call i32 @onlyjump_p(ptr noundef nonnull %0) #29
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27, !prof !165

27:                                               ; preds = %24
  %28 = tail call ptr @pc_set(ptr noundef nonnull %0) #29
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !143
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !143
  %34 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %38, !prof !166

36:                                               ; preds = %27
  %37 = load ptr, ptr %31, align 8, !tbaa !143
  br label %48

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !143
  %41 = icmp eq ptr %40, %34
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load ptr, ptr %31, align 8, !tbaa !143
  %44 = tail call i32 @reversed_comparison_code(ptr noundef %43, ptr noundef nonnull %0) #29
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i8
  %47 = select i1 %45, ptr %43, ptr null
  br label %48

48:                                               ; preds = %42, %10, %18, %21, %24, %36, %38
  %49 = phi i8 [ 0, %10 ], [ 0, %18 ], [ 0, %21 ], [ 0, %24 ], [ 0, %36 ], [ 0, %38 ], [ %46, %42 ]
  %50 = phi ptr [ null, %10 ], [ %20, %18 ], [ null, %21 ], [ null, %24 ], [ %37, %36 ], [ null, %38 ], [ %47, %42 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !143
  %53 = icmp eq ptr %52, null
  br i1 %53, label %88, label %54, !prof !163

54:                                               ; preds = %48
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 14
  br i1 %57, label %58, label %61, !prof !163

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !143
  br label %88

61:                                               ; preds = %54
  %62 = tail call i32 @any_condjump_p(ptr noundef nonnull %1) #29
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %88, label %64, !prof !164

64:                                               ; preds = %61
  %65 = tail call i32 @onlyjump_p(ptr noundef nonnull %1) #29
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %88, label %67, !prof !165

67:                                               ; preds = %64
  %68 = tail call ptr @pc_set(ptr noundef nonnull %1) #29
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !143
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !143
  %74 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %78, !prof !166

76:                                               ; preds = %67
  %77 = load ptr, ptr %71, align 8, !tbaa !143
  br label %88

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !143
  %81 = icmp eq ptr %80, %74
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load ptr, ptr %71, align 8, !tbaa !143
  %84 = tail call i32 @reversed_comparison_code(ptr noundef %83, ptr noundef nonnull %1) #29
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i8
  %87 = select i1 %85, ptr %83, ptr null
  br label %88

88:                                               ; preds = %82, %48, %58, %61, %64, %76, %78
  %89 = phi i8 [ 0, %48 ], [ 0, %58 ], [ 0, %61 ], [ 0, %64 ], [ 0, %76 ], [ 0, %78 ], [ %86, %82 ]
  %90 = phi ptr [ null, %48 ], [ %60, %58 ], [ null, %61 ], [ null, %64 ], [ %77, %76 ], [ null, %78 ], [ %87, %82 ]
  %91 = icmp ne ptr %50, null
  %92 = icmp ne ptr %90, null
  %93 = select i1 %91, i1 %92, i1 false, !prof !167
  br i1 %93, label %94, label %133, !prof !168

94:                                               ; preds = %88
  %95 = load i32, ptr %50, align 8
  %96 = and i32 %95, 65535
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !147
  %100 = icmp ult i32 %99, 2
  br i1 %100, label %101, label %133

101:                                              ; preds = %94
  %102 = load i32, ptr %90, align 8
  %103 = and i32 %102, 65535
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !147
  %107 = icmp ult i32 %106, 2
  br i1 %107, label %108, label %133

108:                                              ; preds = %101
  %109 = icmp eq i8 %49, %89
  br i1 %109, label %110, label %112

110:                                              ; preds = %108
  %111 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %90, ptr noundef null) #29
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ %103, %108 ]
  %114 = icmp eq i32 %96, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !143
  %118 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !143
  %120 = icmp eq ptr %117, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !143
  %124 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !143
  %126 = icmp eq ptr %123, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = tail call i32 @modified_in_p(ptr noundef nonnull %50, ptr noundef nonnull %1) #29
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = tail call i32 @modified_in_p(ptr noundef nonnull %90, ptr noundef nonnull %0) #29
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %94, %101, %112, %115, %121, %88, %127, %130, %6, %2
  br label %134

134:                                              ; preds = %130, %133
  %135 = phi i8 [ 0, %133 ], [ 1, %130 ]
  ret i8 %135
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @sched_get_condition_with_rev(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #11 !prof !131 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6, !prof !163

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8, !prof !170

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !tbaa !143
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %16, !prof !163

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  br label %44

16:                                               ; preds = %9
  %17 = tail call i32 @any_condjump_p(ptr noundef %0) #29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19, !prof !164

19:                                               ; preds = %16
  %20 = tail call i32 @onlyjump_p(ptr noundef %0) #29
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22, !prof !165

22:                                               ; preds = %19
  %23 = tail call ptr @pc_set(ptr noundef %0) #29
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %33, !prof !166

31:                                               ; preds = %22
  %32 = load ptr, ptr %26, align 8, !tbaa !143
  br label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !143
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 8, !tbaa !143
  %39 = tail call i32 @reversed_comparison_code(ptr noundef %38, ptr noundef %0) #29
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %7, %40
  %42 = select i1 %40, ptr null, ptr %38
  br i1 %41, label %44, label %43

43:                                               ; preds = %37
  store i8 1, ptr %1, align 1, !tbaa !143
  br label %44

44:                                               ; preds = %37, %33, %43, %16, %19, %2, %31, %13
  %45 = phi ptr [ %15, %13 ], [ %32, %31 ], [ null, %2 ], [ null, %19 ], [ null, %16 ], [ %42, %37 ], [ %38, %43 ], [ null, %33 ]
  ret ptr %45
}

declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_int_base, ptr %4, i64 0, i32 2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !147
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %3, i64 0, i32 2, i64 %10, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 268500991
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct.common_sched_info_def, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !173
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %0) #29
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %50

26:                                               ; preds = %18
  %27 = load ptr, ptr @h_i_d, align 8
  %28 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %27, i64 0, i32 2, i64 %7, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !175
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %26, %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !143
  %34 = tail call i32 @side_effects_p(ptr noundef %33) #29
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = and i32 %1, 16519104
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %32, align 8, !tbaa !143
  %41 = tail call i32 @may_trap_p(ptr noundef %40) #29
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = and i32 %1, 4032
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @sched_get_condition_with_rev(ptr noundef nonnull %0, ptr noundef null)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %46, %36
  br label %50

50:                                               ; preds = %46, %39, %31, %23, %26, %14, %2, %49
  %51 = phi i8 [ 1, %49 ], [ 0, %2 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 0, %31 ], [ 0, %39 ], [ 0, %46 ]
  ret i8 %51
}

declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sd_next_list(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 !prof !177 {
  %5 = load i32, ptr %1, align 4, !tbaa !147
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8, !prof !178

8:                                                ; preds = %4
  %9 = load ptr, ptr @h_d_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_int_base, ptr %10, i64 0, i32 2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !147
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %9, i64 0, i32 2, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  store ptr %18, ptr %2, align 8, !tbaa !132
  store i8 0, ptr %3, align 1, !tbaa !143
  %19 = and i32 %5, -2
  br label %81

20:                                               ; preds = %4
  %21 = and i32 %5, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23, !prof !180

23:                                               ; preds = %20
  %24 = load ptr, ptr @h_d_i_d, align 8
  %25 = load ptr, ptr @sched_luids, align 8
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !143
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_int_base, ptr %25, i64 0, i32 2, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !147
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %24, i64 0, i32 2, i64 %31, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  store ptr %33, ptr %2, align 8, !tbaa !132
  store i8 0, ptr %3, align 1, !tbaa !143
  %34 = and i32 %5, -4
  br label %81

35:                                               ; preds = %20
  %36 = and i32 %5, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38, !prof !182

38:                                               ; preds = %35
  %39 = load ptr, ptr @h_d_i_d, align 8
  %40 = load ptr, ptr @sched_luids, align 8
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !143
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_int_base, ptr %40, i64 0, i32 2, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !147
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %39, i64 0, i32 2, i64 %46, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !183
  store ptr %48, ptr %2, align 8, !tbaa !132
  store i8 0, ptr %3, align 1, !tbaa !143
  %49 = and i32 %5, -8
  br label %81

50:                                               ; preds = %35
  %51 = and i32 %5, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @h_d_i_d, align 8
  %55 = load ptr, ptr @sched_luids, align 8
  %56 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !143
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.VEC_int_base, ptr %55, i64 0, i32 2, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !147
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %54, i64 0, i32 2, i64 %61, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !184
  store ptr %63, ptr %2, align 8, !tbaa !132
  store i8 1, ptr %3, align 1, !tbaa !143
  %64 = and i32 %5, -16
  br label %81

65:                                               ; preds = %50
  %66 = and i32 %5, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr @h_d_i_d, align 8
  %70 = load ptr, ptr @sched_luids, align 8
  %71 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !143
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.VEC_int_base, ptr %70, i64 0, i32 2, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !147
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %69, i64 0, i32 2, i64 %76, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !185
  store ptr %78, ptr %2, align 8, !tbaa !132
  store i8 1, ptr %3, align 1, !tbaa !143
  %79 = and i32 %5, -32
  br label %81

80:                                               ; preds = %65
  store ptr null, ptr %2, align 8, !tbaa !132
  store i8 0, ptr %3, align 1, !tbaa !143
  br label %81

81:                                               ; preds = %23, %53, %80, %68, %38, %8
  %82 = phi i32 [ %34, %23 ], [ %64, %53 ], [ 0, %80 ], [ %79, %68 ], [ %49, %38 ], [ %19, %8 ]
  store i32 %82, ptr %1, align 4, !tbaa !147
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @sd_lists_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !186 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %80, label %4, !prof !187

4:                                                ; preds = %2
  %5 = load ptr, ptr @h_d_i_d, align 8
  %6 = load ptr, ptr @sched_luids, align 8
  br label %7

7:                                                ; preds = %4, %77
  %8 = phi i32 [ 0, %4 ], [ %78, %77 ]
  %9 = phi i32 [ %1, %4 ], [ %70, %77 ]
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12, !prof !178

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !143
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %5, i64 0, i32 2, i64 %18, i32 2
  br label %64

20:                                               ; preds = %7
  %21 = and i32 %9, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23, !prof !180

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !143
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !147
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %5, i64 0, i32 2, i64 %29, i32 3
  br label %64

31:                                               ; preds = %20
  %32 = and i32 %9, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34, !prof !182

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !143
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !147
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %5, i64 0, i32 2, i64 %40, i32 4
  br label %64

42:                                               ; preds = %31
  %43 = and i32 %9, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !143
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 2, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !147
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %5, i64 0, i32 2, i64 %51, i32 5
  br label %64

53:                                               ; preds = %42
  %54 = and i32 %9, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !143
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 2, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !147
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %5, i64 0, i32 2, i64 %62, i32 6
  br label %64

64:                                               ; preds = %56, %45, %34, %23, %12
  %65 = phi ptr [ %19, %12 ], [ %30, %23 ], [ %41, %34 ], [ %52, %45 ], [ %63, %56 ]
  %66 = phi i32 [ -2, %12 ], [ -4, %23 ], [ -8, %34 ], [ -16, %45 ], [ -32, %56 ]
  %67 = load ptr, ptr %65, align 8, !tbaa !132
  %68 = and i32 %9, %66
  br label %69

69:                                               ; preds = %64, %53
  %70 = phi i32 [ 0, %53 ], [ %68, %64 ]
  %71 = phi ptr [ null, %53 ], [ %67, %64 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73, !prof !188

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._deps_list, ptr %71, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !189
  %76 = add nsw i32 %75, %8
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %76, %73 ], [ %8, %69 ]
  %79 = icmp eq i32 %70, 0
  br i1 %79, label %80, label %7, !prof !191, !llvm.loop !192

80:                                               ; preds = %77, %2
  %81 = phi i32 [ 0, %2 ], [ %78, %77 ]
  ret i32 %81
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sd_lists_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !131 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !147
  br label %6

6:                                                ; preds = %9, %2
  %7 = load i32, ptr %3, align 4, !tbaa !147
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #29
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %10 = load ptr, ptr %4, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct._deps_list, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !189
  %13 = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %6
  %15 = phi i8 [ 1, %6 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sd_init_insn(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !131 {
  %2 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %3 = tail call ptr @pool_alloc(ptr noundef %2) #29
  store ptr null, ptr %3, align 8, !tbaa !193
  %4 = getelementptr inbounds %struct._deps_list, ptr %3, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !189
  %5 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @dl_pool_diff, align 4, !tbaa !147
  %7 = load ptr, ptr @h_d_i_d, align 8
  %8 = load ptr, ptr @sched_luids, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !143
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.VEC_int_base, ptr %8, i64 0, i32 2, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !147
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %7, i64 0, i32 2, i64 %14, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !179
  %16 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %17 = tail call ptr @pool_alloc(ptr noundef %16) #29
  store ptr null, ptr %17, align 8, !tbaa !193
  %18 = getelementptr inbounds %struct._deps_list, ptr %17, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !189
  %19 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @dl_pool_diff, align 4, !tbaa !147
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = load i32, ptr %9, align 8, !tbaa !143
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_int_base, ptr %22, i64 0, i32 2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !147
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %21, i64 0, i32 2, i64 %27, i32 3
  store ptr %17, ptr %28, align 8, !tbaa !181
  %29 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %30 = tail call ptr @pool_alloc(ptr noundef %29) #29
  store ptr null, ptr %30, align 8, !tbaa !193
  %31 = getelementptr inbounds %struct._deps_list, ptr %30, i64 0, i32 1
  store i32 0, ptr %31, align 8, !tbaa !189
  %32 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @dl_pool_diff, align 4, !tbaa !147
  %34 = load ptr, ptr @h_d_i_d, align 8
  %35 = load ptr, ptr @sched_luids, align 8
  %36 = load i32, ptr %9, align 8, !tbaa !143
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_int_base, ptr %35, i64 0, i32 2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !147
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %34, i64 0, i32 2, i64 %40, i32 5
  store ptr %30, ptr %41, align 8, !tbaa !184
  %42 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %43 = tail call ptr @pool_alloc(ptr noundef %42) #29
  store ptr null, ptr %43, align 8, !tbaa !193
  %44 = getelementptr inbounds %struct._deps_list, ptr %43, i64 0, i32 1
  store i32 0, ptr %44, align 8, !tbaa !189
  %45 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @dl_pool_diff, align 4, !tbaa !147
  %47 = load ptr, ptr @h_d_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = load i32, ptr %9, align 8, !tbaa !143
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_int_base, ptr %48, i64 0, i32 2, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !147
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %47, i64 0, i32 2, i64 %53, i32 4
  store ptr %43, ptr %54, align 8, !tbaa !183
  %55 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %56 = tail call ptr @pool_alloc(ptr noundef %55) #29
  store ptr null, ptr %56, align 8, !tbaa !193
  %57 = getelementptr inbounds %struct._deps_list, ptr %56, i64 0, i32 1
  store i32 0, ptr %57, align 8, !tbaa !189
  %58 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr @dl_pool_diff, align 4, !tbaa !147
  %60 = load ptr, ptr @h_d_i_d, align 8
  %61 = load ptr, ptr @sched_luids, align 8
  %62 = load i32, ptr %9, align 8, !tbaa !143
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.VEC_int_base, ptr %61, i64 0, i32 2, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !147
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %60, i64 0, i32 2, i64 %66, i32 6
  store ptr %56, ptr %67, align 8, !tbaa !185
  %68 = load i32, ptr %0, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %71, label %73, !prof !188

71:                                               ; preds = %1
  %72 = or i32 %68, 67108864
  store i32 %72, ptr %0, align 8
  br label %73

73:                                               ; preds = %71, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sd_finish_insn(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !131 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %12, !prof !188

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #29
  br label %9

9:                                                ; preds = %5, %8
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, -67108865
  store i32 %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load ptr, ptr @h_d_i_d, align 8
  %14 = load ptr, ptr @sched_luids, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !143
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !147
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %13, i64 0, i32 2, i64 %20, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = getelementptr inbounds %struct._deps_list, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !189
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !194

26:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %27

27:                                               ; preds = %12, %26
  %28 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr @dl_pool_diff, align 4, !tbaa !147
  %30 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %30, ptr noundef %22) #29
  %31 = load ptr, ptr @h_d_i_d, align 8
  %32 = load ptr, ptr @sched_luids, align 8
  %33 = load i32, ptr %15, align 8, !tbaa !143
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_int_base, ptr %32, i64 0, i32 2, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !147
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %31, i64 0, i32 2, i64 %37, i32 2
  store ptr null, ptr %38, align 8, !tbaa !179
  %39 = load ptr, ptr @h_d_i_d, align 8
  %40 = load ptr, ptr @sched_luids, align 8
  %41 = load i32, ptr %15, align 8, !tbaa !143
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_int_base, ptr %40, i64 0, i32 2, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !147
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %39, i64 0, i32 2, i64 %45, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !181
  %48 = getelementptr inbounds %struct._deps_list, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !189
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !194

51:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %52

52:                                               ; preds = %27, %51
  %53 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %54 = add nsw i32 %53, -1
  store i32 %54, ptr @dl_pool_diff, align 4, !tbaa !147
  %55 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %55, ptr noundef %47) #29
  %56 = load ptr, ptr @h_d_i_d, align 8
  %57 = load ptr, ptr @sched_luids, align 8
  %58 = load i32, ptr %15, align 8, !tbaa !143
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.VEC_int_base, ptr %57, i64 0, i32 2, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !147
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %56, i64 0, i32 2, i64 %62, i32 3
  store ptr null, ptr %63, align 8, !tbaa !181
  %64 = load ptr, ptr @h_d_i_d, align 8
  %65 = load ptr, ptr @sched_luids, align 8
  %66 = load i32, ptr %15, align 8, !tbaa !143
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.VEC_int_base, ptr %65, i64 0, i32 2, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !147
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %64, i64 0, i32 2, i64 %70, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !184
  %73 = getelementptr inbounds %struct._deps_list, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !189
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !194

76:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %77

77:                                               ; preds = %52, %76
  %78 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %79 = add nsw i32 %78, -1
  store i32 %79, ptr @dl_pool_diff, align 4, !tbaa !147
  %80 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %80, ptr noundef %72) #29
  %81 = load ptr, ptr @h_d_i_d, align 8
  %82 = load ptr, ptr @sched_luids, align 8
  %83 = load i32, ptr %15, align 8, !tbaa !143
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VEC_int_base, ptr %82, i64 0, i32 2, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !147
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %81, i64 0, i32 2, i64 %87, i32 5
  store ptr null, ptr %88, align 8, !tbaa !184
  %89 = load ptr, ptr @h_d_i_d, align 8
  %90 = load ptr, ptr @sched_luids, align 8
  %91 = load i32, ptr %15, align 8, !tbaa !143
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.VEC_int_base, ptr %90, i64 0, i32 2, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !147
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %89, i64 0, i32 2, i64 %95, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !183
  %98 = getelementptr inbounds %struct._deps_list, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !189
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !prof !194

101:                                              ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %102

102:                                              ; preds = %77, %101
  %103 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %104 = add nsw i32 %103, -1
  store i32 %104, ptr @dl_pool_diff, align 4, !tbaa !147
  %105 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %105, ptr noundef %97) #29
  %106 = load ptr, ptr @h_d_i_d, align 8
  %107 = load ptr, ptr @sched_luids, align 8
  %108 = load i32, ptr %15, align 8, !tbaa !143
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.VEC_int_base, ptr %107, i64 0, i32 2, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !147
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %106, i64 0, i32 2, i64 %112, i32 4
  store ptr null, ptr %113, align 8, !tbaa !183
  %114 = load ptr, ptr @h_d_i_d, align 8
  %115 = load ptr, ptr @sched_luids, align 8
  %116 = load i32, ptr %15, align 8, !tbaa !143
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.VEC_int_base, ptr %115, i64 0, i32 2, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !147
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %114, i64 0, i32 2, i64 %120, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !185
  %123 = getelementptr inbounds %struct._deps_list, ptr %122, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !189
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126, !prof !194

126:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %127

127:                                              ; preds = %102, %126
  %128 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %129 = add nsw i32 %128, -1
  store i32 %129, ptr @dl_pool_diff, align 4, !tbaa !147
  %130 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %130, ptr noundef %122) #29
  %131 = load ptr, ptr @h_d_i_d, align 8
  %132 = load ptr, ptr @sched_luids, align 8
  %133 = load i32, ptr %15, align 8, !tbaa !143
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.VEC_int_base, ptr %132, i64 0, i32 2, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !147
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %131, i64 0, i32 2, i64 %137, i32 6
  store ptr null, ptr %138, align 8, !tbaa !185
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @sd_find_dep_between(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !131 {
  %4 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !143
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_int_base, ptr %7, i64 0, i32 2, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !147
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !143
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_int_base, ptr %7, i64 0, i32 2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %19 = icmp ne ptr %18, null
  %20 = load ptr, ptr @anti_dependency_cache, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #29
  br label %24

24:                                               ; preds = %6, %23
  %25 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %26 = sext i32 %17 to i64
  %27 = getelementptr inbounds %struct.bitmap_head_def, ptr %25, i64 %26
  %28 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %12) #29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %32 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %26
  %33 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %12) #29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %37 = getelementptr inbounds %struct.bitmap_head_def, ptr %36, i64 %26
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %37, i32 noundef %12) #29
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %24, %30, %35, %3
  %41 = tail call fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef null)
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %41, %40 ], [ null, %35 ]
  ret ptr %43
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #16 !prof !131 !PGOFuncName !195 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 3, i32 8, !prof !196
  %9 = load ptr, ptr @h_d_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  br label %15

11:                                               ; preds = %76
  %12 = select i1 %7, i32 4, i32 16, !prof !196
  %13 = load ptr, ptr @h_d_i_d, align 8
  %14 = load ptr, ptr @sched_luids, align 8
  br label %79

15:                                               ; preds = %4, %76
  %16 = phi i32 [ 0, %4 ], [ %77, %76 ]
  %17 = phi i32 [ %8, %4 ], [ %69, %76 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20, !prof !178

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !143
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_int_base, ptr %10, i64 0, i32 2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !147
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %9, i64 0, i32 2, i64 %26, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = and i32 %17, -2
  br label %68

30:                                               ; preds = %15
  %31 = and i32 %17, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33, !prof !180

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !143
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.VEC_int_base, ptr %10, i64 0, i32 2, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !147
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %9, i64 0, i32 2, i64 %39, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = and i32 %17, -4
  br label %68

43:                                               ; preds = %30
  %44 = and i32 %17, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46, !prof !182

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !143
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.VEC_int_base, ptr %10, i64 0, i32 2, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !147
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %9, i64 0, i32 2, i64 %52, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !183
  %55 = and i32 %17, -8
  br label %68

56:                                               ; preds = %43
  %57 = and i32 %17, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !143
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_int_base, ptr %10, i64 0, i32 2, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !147
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %9, i64 0, i32 2, i64 %65, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !184
  br label %68

68:                                               ; preds = %56, %20, %33, %46, %59
  %69 = phi i32 [ 0, %59 ], [ %55, %46 ], [ %42, %33 ], [ %29, %20 ], [ 0, %56 ]
  %70 = phi ptr [ %67, %59 ], [ %54, %46 ], [ %41, %33 ], [ %28, %20 ], [ null, %56 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !197

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._deps_list, ptr %70, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !189
  %75 = add nsw i32 %74, %16
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %75, %72 ], [ %16, %68 ]
  %78 = icmp eq i32 %69, 0
  br i1 %78, label %11, label %15, !prof !198, !llvm.loop !192

79:                                               ; preds = %11, %127
  %80 = phi i32 [ 0, %11 ], [ %128, %127 ]
  %81 = phi i32 [ %12, %11 ], [ %120, %127 ]
  %82 = and i32 %81, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84, !prof !182

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !143
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !147
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %13, i64 0, i32 2, i64 %90, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !183
  %93 = and i32 %81, -8
  br label %119

94:                                               ; preds = %79
  %95 = and i32 %81, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !143
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !147
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %13, i64 0, i32 2, i64 %103, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !184
  %106 = and i32 %81, -16
  br label %119

107:                                              ; preds = %94
  %108 = and i32 %81, 16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !143
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.VEC_int_base, ptr %14, i64 0, i32 2, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !147
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %13, i64 0, i32 2, i64 %116, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !185
  br label %119

119:                                              ; preds = %107, %84, %97, %110
  %120 = phi i32 [ 0, %110 ], [ %106, %97 ], [ %93, %84 ], [ 0, %107 ]
  %121 = phi ptr [ %118, %110 ], [ %105, %97 ], [ %92, %84 ], [ null, %107 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123, !prof !199

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._deps_list, ptr %121, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !189
  %126 = add nsw i32 %125, %80
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i32 [ %126, %123 ], [ %80, %119 ]
  %129 = icmp eq i32 %120, 0
  br i1 %129, label %130, label %79, !prof !196, !llvm.loop !192

130:                                              ; preds = %127
  %131 = icmp slt i32 %77, %128
  %132 = getelementptr inbounds i8, ptr %5, i64 8
  %133 = getelementptr inbounds i8, ptr %5, i64 16
  %134 = getelementptr inbounds i8, ptr %5, i64 24
  br i1 %131, label %135, label %148, !prof !200

135:                                              ; preds = %130
  store i32 %8, ptr %5, align 8, !tbaa.struct !201
  store ptr %1, ptr %132, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %133, align 8, !tbaa.struct !203
  store i8 0, ptr %134, align 8, !tbaa.struct !204
  %136 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %167, label %138, !prof !205

138:                                              ; preds = %135, %142
  %139 = load ptr, ptr %6, align 8, !tbaa !132
  %140 = load ptr, ptr %139, align 8, !tbaa !151
  %141 = icmp eq ptr %140, %0
  br i1 %141, label %162, label %142, !prof !206

142:                                              ; preds = %138
  %143 = load ptr, ptr %133, align 8, !tbaa !207
  %144 = load ptr, ptr %143, align 8, !tbaa !132
  %145 = getelementptr inbounds %struct._dep_link, ptr %144, i64 0, i32 1
  store ptr %145, ptr %133, align 8, !tbaa !207
  %146 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %167, label %138, !prof !209, !llvm.loop !210

148:                                              ; preds = %130
  store i32 %12, ptr %5, align 8, !tbaa.struct !201
  store ptr %0, ptr %132, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %133, align 8, !tbaa.struct !203
  store i8 0, ptr %134, align 8, !tbaa.struct !204
  %149 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %167, label %151, !prof !211

151:                                              ; preds = %148, %156
  %152 = load ptr, ptr %6, align 8, !tbaa !132
  %153 = getelementptr inbounds %struct._dep, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !153
  %155 = icmp eq ptr %154, %1
  br i1 %155, label %162, label %156, !prof !212

156:                                              ; preds = %151
  %157 = load ptr, ptr %133, align 8, !tbaa !207
  %158 = load ptr, ptr %157, align 8, !tbaa !132
  %159 = getelementptr inbounds %struct._dep_link, ptr %158, i64 0, i32 1
  store ptr %159, ptr %133, align 8, !tbaa !207
  %160 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %167, label %151, !prof !213, !llvm.loop !214

162:                                              ; preds = %151, %138
  %163 = icmp eq ptr %3, null
  br i1 %163, label %165, label %164, !prof !215

164:                                              ; preds = %162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !201
  br label %165

165:                                              ; preds = %164, %162
  %166 = load ptr, ptr %6, align 8, !tbaa !132
  br label %167

167:                                              ; preds = %156, %142, %148, %135, %165
  %168 = phi ptr [ %166, %165 ], [ null, %135 ], [ null, %148 ], [ null, %142 ], [ null, %156 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  ret ptr %168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sd_add_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #11 !prof !131 {
  %3 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #29
  %5 = getelementptr inbounds %struct._dep_node, ptr %4, i64 0, i32 2
  store ptr %4, ptr %4, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  %7 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %4, ptr %5, align 8, !tbaa !216
  %8 = getelementptr inbounds %struct._dep_node, ptr %4, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @dn_pool_diff, align 4, !tbaa !147
  %11 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !153
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %25, !prof !218

17:                                               ; preds = %2
  %18 = load ptr, ptr %0, align 8, !tbaa !151
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -11
  %22 = icmp ult i32 %21, -4
  %23 = icmp eq ptr %12, %18
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %26, !prof !219

25:                                               ; preds = %17, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #29
  br label %26

26:                                               ; preds = %17, %25
  %27 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %28 = getelementptr inbounds %struct.haifa_sched_info, ptr %27, i64 0, i32 17
  %29 = load i32, ptr %28, align 8, !tbaa !157
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32, !prof !218

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !155
  %35 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %12, i32 noundef %34), !range !220
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, ptr %33, align 4, !tbaa !155
  %39 = and i32 %38, -16777216
  store i32 %39, ptr %33, align 4, !tbaa !155
  br label %40

40:                                               ; preds = %37, %32, %26
  %41 = getelementptr inbounds %struct._dep_node, ptr %4, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %42 = load ptr, ptr %11, align 8, !tbaa !153
  %43 = icmp eq i8 %1, 0
  br i1 %43, label %44, label %87, !prof !221

44:                                               ; preds = %40
  %45 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %46 = getelementptr inbounds %struct.haifa_sched_info, ptr %45, i64 0, i32 17
  %47 = load i32, ptr %46, align 8, !tbaa !157
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50, !prof !221

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !155
  %53 = and i32 %52, 16777215
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr @h_d_i_d, align 8
  %57 = load ptr, ptr @sched_luids, align 8
  %58 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !143
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.VEC_int_base, ptr %57, i64 0, i32 2, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !147
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %56, i64 0, i32 2, i64 %63, i32 3
  br label %75

65:                                               ; preds = %50, %44
  %66 = load ptr, ptr @h_d_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !143
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.VEC_int_base, ptr %67, i64 0, i32 2, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !147
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %66, i64 0, i32 2, i64 %73, i32 2
  br label %75

75:                                               ; preds = %65, %55
  %76 = phi ptr [ %74, %65 ], [ %64, %55 ]
  %77 = load ptr, ptr @h_d_i_d, align 8
  %78 = load ptr, ptr @sched_luids, align 8
  %79 = load ptr, ptr %0, align 8, !tbaa !151
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !143
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.VEC_int_base, ptr %78, i64 0, i32 2, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !147
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %77, i64 0, i32 2, i64 %85, i32 4
  br label %105

87:                                               ; preds = %40
  %88 = load ptr, ptr @h_d_i_d, align 8
  %89 = load ptr, ptr @sched_luids, align 8
  %90 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !143
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.VEC_int_base, ptr %89, i64 0, i32 2, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !147
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %88, i64 0, i32 2, i64 %95, i32 5
  %97 = load ptr, ptr %0, align 8, !tbaa !151
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !143
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.VEC_int_base, ptr %89, i64 0, i32 2, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !147
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %88, i64 0, i32 2, i64 %103, i32 6
  br label %105

105:                                              ; preds = %75, %87
  %106 = phi ptr [ %76, %75 ], [ %96, %87 ]
  %107 = phi ptr [ %86, %75 ], [ %104, %87 ]
  %108 = load ptr, ptr %106, align 8, !tbaa !132
  %109 = load ptr, ptr %107, align 8, !tbaa !132
  %110 = load ptr, ptr %108, align 8, !tbaa !132
  %111 = load ptr, ptr %7, align 8, !tbaa !222
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %116, !prof !221

113:                                              ; preds = %105
  %114 = load ptr, ptr %6, align 8, !tbaa !223
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116, !prof !221

116:                                              ; preds = %113, %105
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %117

117:                                              ; preds = %116, %113
  store ptr %108, ptr %7, align 8, !tbaa !222
  store ptr %110, ptr %6, align 8, !tbaa !223
  %118 = icmp eq ptr %110, null
  br i1 %118, label %125, label %119, !prof !224

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct._dep_link, ptr %110, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !222
  %122 = icmp eq ptr %121, %108
  br i1 %122, label %124, label %123, !prof !225

123:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %124

124:                                              ; preds = %123, %119
  store ptr %6, ptr %120, align 8, !tbaa !222
  br label %125

125:                                              ; preds = %124, %117
  store ptr %4, ptr %108, align 8, !tbaa !132
  %126 = load ptr, ptr %4, align 8, !tbaa !216
  %127 = getelementptr inbounds %struct._dep_node, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !226
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 7
  br i1 %131, label %132, label %138, !prof !228

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct._dep_node, ptr %126, i64 0, i32 1, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !229
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 7
  br i1 %137, label %138, label %142, !prof !221

138:                                              ; preds = %132, %125
  %139 = getelementptr inbounds %struct._deps_list, ptr %108, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !189
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %139, align 8, !tbaa !189
  br label %142

142:                                              ; preds = %132, %138
  %143 = load ptr, ptr %109, align 8, !tbaa !132
  %144 = getelementptr inbounds %struct._dep_node, ptr %4, i64 0, i32 2, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !222
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %151, !prof !221

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct._dep_node, ptr %4, i64 0, i32 2, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !223
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151, !prof !221

151:                                              ; preds = %147, %142
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %152

152:                                              ; preds = %151, %147
  store ptr %109, ptr %144, align 8, !tbaa !222
  %153 = getelementptr inbounds %struct._dep_node, ptr %4, i64 0, i32 2, i32 1
  store ptr %143, ptr %153, align 8, !tbaa !223
  %154 = icmp eq ptr %143, null
  br i1 %154, label %161, label %155, !prof !224

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct._dep_link, ptr %143, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !222
  %158 = icmp eq ptr %157, %109
  br i1 %158, label %160, label %159, !prof !225

159:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %160

160:                                              ; preds = %159, %155
  store ptr %153, ptr %156, align 8, !tbaa !222
  br label %161

161:                                              ; preds = %160, %152
  store ptr %5, ptr %109, align 8, !tbaa !132
  %162 = load ptr, ptr %5, align 8, !tbaa !216
  %163 = getelementptr inbounds %struct._dep_node, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !226
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp eq i32 %166, 7
  br i1 %167, label %168, label %174, !prof !228

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct._dep_node, ptr %162, i64 0, i32 1, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !229
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 7
  br i1 %173, label %174, label %178, !prof !221

174:                                              ; preds = %168, %161
  %175 = getelementptr inbounds %struct._deps_list, ptr %109, i64 0, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !189
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %175, align 8, !tbaa !189
  br label %178

178:                                              ; preds = %168, %174
  %179 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181, !prof !218

181:                                              ; preds = %178
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %0)
  br label %182

182:                                              ; preds = %181, %178
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_back_and_forw_lists(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #13 !prof !131 !PGOFuncName !230 {
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %52, !prof !221

8:                                                ; preds = %4
  %9 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.haifa_sched_info, ptr %9, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !157
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14, !prof !221

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !155
  %17 = and i32 %16, 16777215
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @h_d_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !143
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_int_base, ptr %21, i64 0, i32 2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !147
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %20, i64 0, i32 2, i64 %27, i32 3
  br label %39

29:                                               ; preds = %14, %8
  %30 = load ptr, ptr @h_d_i_d, align 8
  %31 = load ptr, ptr @sched_luids, align 8
  %32 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !143
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_int_base, ptr %31, i64 0, i32 2, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !147
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %30, i64 0, i32 2, i64 %37, i32 2
  br label %39

39:                                               ; preds = %29, %19
  %40 = phi ptr [ %38, %29 ], [ %28, %19 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  store ptr %41, ptr %2, align 8, !tbaa !132
  %42 = load ptr, ptr @h_d_i_d, align 8
  %43 = load ptr, ptr @sched_luids, align 8
  %44 = load ptr, ptr %0, align 8, !tbaa !151
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !143
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_int_base, ptr %43, i64 0, i32 2, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !147
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %42, i64 0, i32 2, i64 %50, i32 4
  br label %73

52:                                               ; preds = %4
  %53 = load ptr, ptr @h_d_i_d, align 8
  %54 = load ptr, ptr @sched_luids, align 8
  %55 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !143
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_int_base, ptr %54, i64 0, i32 2, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !147
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %53, i64 0, i32 2, i64 %60, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !184
  store ptr %62, ptr %2, align 8, !tbaa !132
  %63 = load ptr, ptr @h_d_i_d, align 8
  %64 = load ptr, ptr @sched_luids, align 8
  %65 = load ptr, ptr %0, align 8, !tbaa !151
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !143
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_int_base, ptr %64, i64 0, i32 2, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !147
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %63, i64 0, i32 2, i64 %71, i32 6
  br label %73

73:                                               ; preds = %52, %39
  %74 = phi ptr [ %51, %39 ], [ %72, %52 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !132
  store ptr %75, ptr %3, align 8, !tbaa !132
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !131 !PGOFuncName !231 {
  %3 = load ptr, ptr %1, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !221

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !223
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !221

11:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %12

12:                                               ; preds = %11, %7
  store ptr %1, ptr %4, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  store ptr %3, ptr %13, align 8, !tbaa !223
  %14 = icmp eq ptr %3, null
  br i1 %14, label %21, label %15, !prof !224

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._dep_link, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %20, label %19, !prof !225

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %20

20:                                               ; preds = %19, %15
  store ptr %13, ptr %16, align 8, !tbaa !222
  br label %21

21:                                               ; preds = %12, %20
  store ptr %0, ptr %1, align 8, !tbaa !132
  %22 = load ptr, ptr %0, align 8, !tbaa !216
  %23 = getelementptr inbounds %struct._dep_node, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !226
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %28, label %34, !prof !228

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._dep_node, ptr %22, i64 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !229
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %38, !prof !221

34:                                               ; preds = %21, %28
  %35 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !189
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !189
  br label %38

38:                                               ; preds = %34, %28
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !131 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !143
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !147
  %16 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %17 = getelementptr inbounds %struct.haifa_sched_info, ptr %16, i64 0, i32 17
  %18 = load i32, ptr %17, align 8, !tbaa !157
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !154
  switch i32 %23, label %39 [
    i32 0, label %24
    i32 11, label %29
    i32 12, label %34
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds %struct.bitmap_head_def, ptr %25, i64 %26
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %27, i32 noundef %8) #29
  br label %81

29:                                               ; preds = %21
  %30 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %31 = sext i32 %15 to i64
  %32 = getelementptr inbounds %struct.bitmap_head_def, ptr %30, i64 %31
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %32, i32 noundef %8) #29
  br label %81

34:                                               ; preds = %21
  %35 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %36 = sext i32 %15 to i64
  %37 = getelementptr inbounds %struct.bitmap_head_def, ptr %35, i64 %36
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %37, i32 noundef %8) #29
  br label %81

39:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 963, ptr noundef nonnull @.str.1) #29
  br label %81

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !155
  %43 = and i32 %42, 16777216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %47 = sext i32 %15 to i64
  %48 = getelementptr inbounds %struct.bitmap_head_def, ptr %46, i64 %47
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %8) #29
  br label %50

50:                                               ; preds = %45, %40
  %51 = and i32 %42, 33554432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %55 = sext i32 %15 to i64
  %56 = getelementptr inbounds %struct.bitmap_head_def, ptr %54, i64 %55
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %8) #29
  br label %58

58:                                               ; preds = %53, %50
  %59 = and i32 %42, 67108864
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %63 = sext i32 %15 to i64
  %64 = getelementptr inbounds %struct.bitmap_head_def, ptr %62, i64 %63
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %64, i32 noundef %8) #29
  br label %66

66:                                               ; preds = %61, %58
  %67 = and i32 %42, 16777215
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %71 = getelementptr inbounds %struct.haifa_sched_info, ptr %70, i64 0, i32 17
  %72 = load i32, ptr %71, align 8, !tbaa !157
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 979, ptr noundef nonnull @.str.1) #29
  br label %76

76:                                               ; preds = %69, %75
  %77 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %78 = sext i32 %15 to i64
  %79 = getelementptr inbounds %struct.bitmap_head_def, ptr %77, i64 %78
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %79, i32 noundef %8) #29
  br label %81

81:                                               ; preds = %66, %76, %24, %29, %34, %39
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @sd_add_or_update_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !131 {
  %3 = tail call fastcc i32 @add_or_update_dep_1(ptr noundef %0, i8 noundef zeroext %1, ptr noundef null, ptr noundef null)
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @add_or_update_dep_1(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 !prof !131 !PGOFuncName !232 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._sd_iterator, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !151
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %22, !prof !196

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -11
  %19 = icmp ult i32 %18, -4
  %20 = icmp eq ptr %8, %15
  %21 = or i1 %20, %19
  br i1 %21, label %22, label %23, !prof !199

22:                                               ; preds = %13, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1125, ptr noundef nonnull @.str.1) #29
  br label %23

23:                                               ; preds = %13, %22
  %24 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %25 = icmp eq ptr %24, null
  br i1 %25, label %122, label %26, !prof !196

26:                                               ; preds = %23
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load ptr, ptr %0, align 8, !tbaa !151
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !143
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_int_base, ptr %27, i64 0, i32 2, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !147
  %34 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !153
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !143
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.VEC_int_base, ptr %27, i64 0, i32 2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !147
  %41 = load ptr, ptr @output_dependency_cache, align 8
  %42 = icmp ne ptr %41, null
  %43 = load ptr, ptr @anti_dependency_cache, align 8
  %44 = icmp ne ptr %43, null
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %47, label %46

46:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #29
  br label %47

47:                                               ; preds = %46, %26
  %48 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %49 = getelementptr inbounds %struct.haifa_sched_info, ptr %48, i64 0, i32 17
  %50 = load i32, ptr %49, align 8, !tbaa !157
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %54 = sext i32 %40 to i64
  %55 = getelementptr inbounds %struct.bitmap_head_def, ptr %53, i64 %54
  %56 = tail call i32 @bitmap_bit_p(ptr noundef %55, i32 noundef %33) #29
  %57 = icmp eq i32 %56, 0
  br i1 %52, label %58, label %77

58:                                               ; preds = %47
  br i1 %57, label %59, label %69

59:                                               ; preds = %58
  %60 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %61 = getelementptr inbounds %struct.bitmap_head_def, ptr %60, i64 %54
  %62 = tail call i32 @bitmap_bit_p(ptr noundef %61, i32 noundef %33) #29
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %66 = getelementptr inbounds %struct.bitmap_head_def, ptr %65, i64 %54
  %67 = tail call i32 @bitmap_bit_p(ptr noundef %66, i32 noundef %33) #29
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %59, %58
  %70 = phi i32 [ 0, %58 ], [ 11, %59 ], [ 12, %64 ]
  %71 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !154
  %73 = icmp slt i32 %72, %70
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i32 [ 3, %64 ], [ 1, %69 ]
  %76 = phi i1 [ false, %64 ], [ %73, %69 ]
  br i1 %76, label %117, label %118

77:                                               ; preds = %47
  %78 = select i1 %57, i32 0, i32 16777216
  %79 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %80 = getelementptr inbounds %struct.bitmap_head_def, ptr %79, i64 %54
  %81 = tail call i32 @bitmap_bit_p(ptr noundef %80, i32 noundef %33) #29
  %82 = icmp eq i32 %81, 0
  %83 = or disjoint i32 %78, 33554432
  %84 = select i1 %82, i32 %78, i32 %83
  %85 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %86 = getelementptr inbounds %struct.bitmap_head_def, ptr %85, i64 %54
  %87 = tail call i32 @bitmap_bit_p(ptr noundef %86, i32 noundef %33) #29
  %88 = icmp eq i32 %87, 0
  %89 = or disjoint i32 %84, 67108864
  %90 = select i1 %88, i32 %84, i32 %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %77
  %93 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %94 = getelementptr inbounds %struct.haifa_sched_info, ptr %93, i64 0, i32 17
  %95 = load i32, ptr %94, align 8, !tbaa !157
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %100 = getelementptr inbounds %struct.bitmap_head_def, ptr %99, i64 %54
  %101 = tail call i32 @bitmap_bit_p(ptr noundef %100, i32 noundef %33) #29
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98, %92
  %104 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !155
  %106 = and i32 %105, 117440512
  %107 = or i32 %106, %90
  %108 = icmp eq i32 %107, %90
  br i1 %108, label %114, label %113

109:                                              ; preds = %98
  %110 = and i32 %90, 33554432
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.1) #29
  br label %113

113:                                              ; preds = %112, %109, %103
  br label %114

114:                                              ; preds = %113, %103, %77
  %115 = phi i32 [ undef, %113 ], [ 3, %77 ], [ 1, %103 ]
  %116 = phi i1 [ true, %113 ], [ false, %77 ], [ false, %103 ]
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %74
  br label %118

118:                                              ; preds = %114, %74, %117
  %119 = phi i32 [ 2, %117 ], [ %75, %74 ], [ %115, %114 ]
  switch i32 %119, label %121 [
    i32 1, label %568
    i32 2, label %122
    i32 3, label %120
  ]

120:                                              ; preds = %118
  br label %122

121:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #29
  br label %122

122:                                              ; preds = %118, %120, %121, %23
  %123 = phi i1 [ false, %121 ], [ true, %120 ], [ false, %23 ], [ false, %118 ]
  %124 = phi i1 [ false, %121 ], [ false, %120 ], [ false, %23 ], [ true, %118 ]
  %125 = phi i1 [ true, %121 ], [ true, %120 ], [ true, %23 ], [ false, %118 ]
  br i1 %123, label %375, label %126, !prof !199

126:                                              ; preds = %122
  %127 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %128 = icmp eq ptr %127, null
  %129 = or i1 %124, %128
  br i1 %129, label %131, label %130, !prof !196

130:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #29
  br label %131

131:                                              ; preds = %126, %130
  %132 = load ptr, ptr %0, align 8, !tbaa !151
  %133 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %135 = icmp eq i8 %1, 0
  %136 = select i1 %135, i32 3, i32 8, !prof !196
  %137 = load ptr, ptr @h_d_i_d, align 8
  %138 = load ptr, ptr @sched_luids, align 8
  %139 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  br label %143

140:                                              ; preds = %200
  %141 = select i1 %135, i32 4, i32 16, !prof !196
  %142 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  br label %203

143:                                              ; preds = %200, %131
  %144 = phi i32 [ 0, %131 ], [ %201, %200 ]
  %145 = phi i32 [ %136, %131 ], [ %193, %200 ]
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148, !prof !178

148:                                              ; preds = %143
  %149 = load i32, ptr %139, align 8, !tbaa !143
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !147
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %153, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !179
  %156 = and i32 %145, -2
  br label %192

157:                                              ; preds = %143
  %158 = and i32 %145, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160, !prof !180

160:                                              ; preds = %157
  %161 = load i32, ptr %139, align 8, !tbaa !143
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !147
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %165, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !181
  %168 = and i32 %145, -4
  br label %192

169:                                              ; preds = %157
  %170 = and i32 %145, 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %181, label %172, !prof !182

172:                                              ; preds = %169
  %173 = load i32, ptr %139, align 8, !tbaa !143
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !147
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %177, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !183
  %180 = and i32 %145, -8
  br label %192

181:                                              ; preds = %169
  %182 = and i32 %145, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr %139, align 8, !tbaa !143
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !147
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %189, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !184
  br label %192

192:                                              ; preds = %184, %181, %172, %160, %148
  %193 = phi i32 [ 0, %184 ], [ %180, %172 ], [ %168, %160 ], [ %156, %148 ], [ 0, %181 ]
  %194 = phi ptr [ %191, %184 ], [ %179, %172 ], [ %167, %160 ], [ %155, %148 ], [ null, %181 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196, !prof !197

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct._deps_list, ptr %194, i64 0, i32 1
  %198 = load i32, ptr %197, align 8, !tbaa !189
  %199 = add nsw i32 %198, %144
  br label %200

200:                                              ; preds = %196, %192
  %201 = phi i32 [ %199, %196 ], [ %144, %192 ]
  %202 = icmp eq i32 %193, 0
  br i1 %202, label %140, label %143, !prof !198, !llvm.loop !192

203:                                              ; preds = %248, %140
  %204 = phi i32 [ 0, %140 ], [ %249, %248 ]
  %205 = phi i32 [ %141, %140 ], [ %241, %248 ]
  %206 = and i32 %205, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %217, label %208, !prof !182

208:                                              ; preds = %203
  %209 = load i32, ptr %142, align 8, !tbaa !143
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !147
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %213, i32 4
  %215 = load ptr, ptr %214, align 8, !tbaa !183
  %216 = and i32 %205, -8
  br label %240

217:                                              ; preds = %203
  %218 = and i32 %205, 8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %142, align 8, !tbaa !143
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !147
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %225, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !184
  %228 = and i32 %205, -16
  br label %240

229:                                              ; preds = %217
  %230 = and i32 %205, 16
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %229
  %233 = load i32, ptr %142, align 8, !tbaa !143
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.VEC_int_base, ptr %138, i64 0, i32 2, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !147
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %137, i64 0, i32 2, i64 %237, i32 6
  %239 = load ptr, ptr %238, align 8, !tbaa !185
  br label %240

240:                                              ; preds = %232, %229, %220, %208
  %241 = phi i32 [ 0, %232 ], [ %228, %220 ], [ %216, %208 ], [ 0, %229 ]
  %242 = phi ptr [ %239, %232 ], [ %227, %220 ], [ %215, %208 ], [ null, %229 ]
  %243 = icmp eq ptr %242, null
  br i1 %243, label %248, label %244, !prof !199

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct._deps_list, ptr %242, i64 0, i32 1
  %246 = load i32, ptr %245, align 8, !tbaa !189
  %247 = add nsw i32 %246, %204
  br label %248

248:                                              ; preds = %244, %240
  %249 = phi i32 [ %247, %244 ], [ %204, %240 ]
  %250 = icmp eq i32 %241, 0
  br i1 %250, label %251, label %203, !prof !196, !llvm.loop !192

251:                                              ; preds = %248
  %252 = icmp slt i32 %201, %249
  %253 = getelementptr inbounds i8, ptr %5, i64 8
  %254 = getelementptr inbounds i8, ptr %5, i64 16
  %255 = getelementptr inbounds i8, ptr %5, i64 24
  br i1 %252, label %256, label %269, !prof !200

256:                                              ; preds = %251
  store i32 %136, ptr %5, align 8, !tbaa.struct !201
  store ptr %134, ptr %253, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %254, align 8, !tbaa.struct !203
  store i8 0, ptr %255, align 8, !tbaa.struct !204
  %257 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %285, label %259, !prof !205

259:                                              ; preds = %256, %263
  %260 = load ptr, ptr %6, align 8, !tbaa !132
  %261 = load ptr, ptr %260, align 8, !tbaa !151
  %262 = icmp eq ptr %261, %132
  br i1 %262, label %283, label %263, !prof !206

263:                                              ; preds = %259
  %264 = load ptr, ptr %254, align 8, !tbaa !207
  %265 = load ptr, ptr %264, align 8, !tbaa !132
  %266 = getelementptr inbounds %struct._dep_link, ptr %265, i64 0, i32 1
  store ptr %266, ptr %254, align 8, !tbaa !207
  %267 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %285, label %259, !prof !209, !llvm.loop !210

269:                                              ; preds = %251
  store i32 %141, ptr %5, align 8, !tbaa.struct !201
  store ptr %132, ptr %253, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %254, align 8, !tbaa.struct !203
  store i8 0, ptr %255, align 8, !tbaa.struct !204
  %270 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %285, label %272, !prof !211

272:                                              ; preds = %269, %277
  %273 = load ptr, ptr %6, align 8, !tbaa !132
  %274 = getelementptr inbounds %struct._dep, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !153
  %276 = icmp eq ptr %275, %134
  br i1 %276, label %283, label %277, !prof !212

277:                                              ; preds = %272
  %278 = load ptr, ptr %254, align 8, !tbaa !207
  %279 = load ptr, ptr %278, align 8, !tbaa !132
  %280 = getelementptr inbounds %struct._dep_link, ptr %279, i64 0, i32 1
  store ptr %280, ptr %254, align 8, !tbaa !207
  %281 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %285, label %272, !prof !213, !llvm.loop !214

283:                                              ; preds = %272, %259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !201
  %284 = load ptr, ptr %6, align 8, !tbaa !132
  br label %285

285:                                              ; preds = %277, %263, %256, %269, %283
  %286 = phi ptr [ %284, %283 ], [ null, %256 ], [ null, %269 ], [ null, %263 ], [ null, %277 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  %287 = icmp eq ptr %286, null
  br i1 %287, label %371, label %288, !prof !233

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct._dep, ptr %286, i64 0, i32 2
  %290 = load i32, ptr %289, align 8, !tbaa !154
  %291 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %292 = load i32, ptr %291, align 8, !tbaa !154
  %293 = icmp slt i32 %292, %290
  br i1 %293, label %294, label %295, !prof !234

294:                                              ; preds = %288
  store i32 %292, ptr %289, align 8, !tbaa !154
  br label %295

295:                                              ; preds = %294, %288
  %296 = phi i32 [ 2, %294 ], [ 1, %288 ]
  %297 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %298 = getelementptr inbounds %struct.haifa_sched_info, ptr %297, i64 0, i32 17
  %299 = load i32, ptr %298, align 8, !tbaa !157
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %332, label %302, !prof !235

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct._dep, ptr %286, i64 0, i32 3
  %304 = load i32, ptr %303, align 4, !tbaa !155
  %305 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %306 = load i32, ptr %305, align 4, !tbaa !155
  %307 = or i32 %306, %304
  %308 = and i32 %307, 16777215
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %328, label %310

310:                                              ; preds = %302
  %311 = and i32 %306, 16777215
  %312 = icmp eq i32 %311, 0
  %313 = and i32 %304, 16777215
  %314 = icmp eq i32 %313, 0
  %315 = or i1 %314, %312
  br i1 %315, label %316, label %319

316:                                              ; preds = %310
  %317 = and i32 %307, -16777216
  br i1 %314, label %328, label %318

318:                                              ; preds = %316
  tail call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %7)
  br label %328

319:                                              ; preds = %310
  %320 = icmp eq ptr %2, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %319
  %322 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3), !range !236
  %323 = and i32 %306, -64
  %324 = or disjoint i32 %322, %323
  br label %325

325:                                              ; preds = %321, %319
  %326 = phi i32 [ %324, %321 ], [ %306, %319 ]
  %327 = tail call fastcc i32 @ds_merge_1(i32 noundef %304, i32 noundef %326, i8 noundef zeroext 0)
  br label %328

328:                                              ; preds = %325, %318, %316, %302
  %329 = phi i32 [ %327, %325 ], [ %317, %318 ], [ %317, %316 ], [ %307, %302 ]
  %330 = icmp eq i32 %304, %329
  br i1 %330, label %332, label %331

331:                                              ; preds = %328
  store i32 %329, ptr %303, align 4, !tbaa !155
  br label %332

332:                                              ; preds = %331, %328, %295
  %333 = phi i32 [ %296, %295 ], [ 2, %331 ], [ %296, %328 ]
  %334 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %335 = icmp ne ptr %334, null
  %336 = icmp eq i32 %333, 2
  %337 = and i1 %336, %335
  br i1 %337, label %338, label %373, !prof !215

338:                                              ; preds = %332
  %339 = load ptr, ptr @sched_luids, align 8
  %340 = load ptr, ptr %286, align 8, !tbaa !151
  %341 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !143
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.VEC_int_base, ptr %339, i64 0, i32 2, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !147
  %346 = getelementptr inbounds %struct._dep, ptr %286, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !153
  %348 = getelementptr inbounds %struct.rtx_def, ptr %347, i64 0, i32 1
  %349 = load i32, ptr %348, align 8, !tbaa !143
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.VEC_int_base, ptr %339, i64 0, i32 2, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !147
  %353 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %354 = getelementptr inbounds %struct.haifa_sched_info, ptr %353, i64 0, i32 17
  %355 = load i32, ptr %354, align 8, !tbaa !157
  %356 = and i32 %355, 1
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %370

358:                                              ; preds = %338
  switch i32 %290, label %369 [
    i32 11, label %359
    i32 12, label %364
  ]

359:                                              ; preds = %358
  %360 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %361 = sext i32 %352 to i64
  %362 = getelementptr inbounds %struct.bitmap_head_def, ptr %360, i64 %361
  %363 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %362, i32 noundef %345) #29
  br label %370

364:                                              ; preds = %358
  %365 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %366 = sext i32 %352 to i64
  %367 = getelementptr inbounds %struct.bitmap_head_def, ptr %365, i64 %366
  %368 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %367, i32 noundef %345) #29
  br label %370

369:                                              ; preds = %358
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #29
  br label %370

370:                                              ; preds = %369, %364, %359, %338
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %286)
  br label %373

371:                                              ; preds = %285
  br i1 %125, label %373, label %372, !prof !218

372:                                              ; preds = %371
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.1) #29
  br label %373

373:                                              ; preds = %370, %332, %372, %371
  %374 = phi i32 [ undef, %371 ], [ undef, %372 ], [ %333, %332 ], [ %333, %370 ]
  br i1 %287, label %375, label %568, !prof !233

375:                                              ; preds = %373, %122
  %376 = icmp eq ptr %2, null
  br i1 %376, label %390, label %377, !prof !218

377:                                              ; preds = %375
  %378 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %379 = getelementptr inbounds %struct.sched_deps_info_def, ptr %378, i64 0, i32 12
  %380 = load i8, ptr %379, align 8
  %381 = and i8 %380, 4
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %377
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1181, ptr noundef nonnull @.str.1) #29
  br label %384

384:                                              ; preds = %377, %383
  %385 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %386 = load i32, ptr %385, align 4, !tbaa !155
  %387 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3), !range !236
  %388 = and i32 %386, -64
  %389 = or disjoint i32 %388, %387
  store i32 %389, ptr %385, align 4, !tbaa !155
  br label %390

390:                                              ; preds = %384, %375
  %391 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  %392 = tail call ptr @pool_alloc(ptr noundef %391) #29
  %393 = getelementptr inbounds %struct._dep_node, ptr %392, i64 0, i32 2
  store ptr %392, ptr %392, align 8, !tbaa !216
  %394 = getelementptr inbounds %struct._dep_link, ptr %392, i64 0, i32 1
  %395 = getelementptr inbounds %struct._dep_link, ptr %392, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %394, i8 0, i64 16, i1 false)
  store ptr %392, ptr %393, align 8, !tbaa !216
  %396 = getelementptr inbounds %struct._dep_node, ptr %392, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %396, i8 0, i64 16, i1 false)
  %397 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %398 = add nsw i32 %397, 1
  store i32 %398, ptr @dn_pool_diff, align 4, !tbaa !147
  %399 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !153
  %401 = load i32, ptr %400, align 8
  %402 = and i32 %401, 65535
  %403 = add nsw i32 %402, -7
  %404 = icmp ult i32 %403, 4
  br i1 %404, label %405, label %413, !prof !218

405:                                              ; preds = %390
  %406 = load ptr, ptr %0, align 8, !tbaa !151
  %407 = load i32, ptr %406, align 8
  %408 = and i32 %407, 65535
  %409 = add nsw i32 %408, -11
  %410 = icmp ult i32 %409, -4
  %411 = icmp eq ptr %400, %406
  %412 = or i1 %411, %410
  br i1 %412, label %413, label %414, !prof !219

413:                                              ; preds = %405, %390
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #29
  br label %414

414:                                              ; preds = %413, %405
  %415 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %416 = getelementptr inbounds %struct.haifa_sched_info, ptr %415, i64 0, i32 17
  %417 = load i32, ptr %416, align 8, !tbaa !157
  %418 = and i32 %417, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %428, label %420, !prof !218

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %422 = load i32, ptr %421, align 4, !tbaa !155
  %423 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %400, i32 noundef %422), !range !220
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = load i32, ptr %421, align 4, !tbaa !155
  %427 = and i32 %426, -16777216
  store i32 %427, ptr %421, align 4, !tbaa !155
  br label %428

428:                                              ; preds = %425, %420, %414
  %429 = getelementptr inbounds %struct._dep_node, ptr %392, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %429, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %430 = load ptr, ptr %399, align 8, !tbaa !153
  %431 = icmp eq i8 %1, 0
  br i1 %431, label %432, label %475, !prof !221

432:                                              ; preds = %428
  %433 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %434 = getelementptr inbounds %struct.haifa_sched_info, ptr %433, i64 0, i32 17
  %435 = load i32, ptr %434, align 8, !tbaa !157
  %436 = and i32 %435, 2
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %453, label %438, !prof !221

438:                                              ; preds = %432
  %439 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %440 = load i32, ptr %439, align 4, !tbaa !155
  %441 = and i32 %440, 16777215
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %453, label %443

443:                                              ; preds = %438
  %444 = load ptr, ptr @h_d_i_d, align 8
  %445 = load ptr, ptr @sched_luids, align 8
  %446 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1
  %447 = load i32, ptr %446, align 8, !tbaa !143
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds %struct.VEC_int_base, ptr %445, i64 0, i32 2, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !147
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %444, i64 0, i32 2, i64 %451, i32 3
  br label %463

453:                                              ; preds = %438, %432
  %454 = load ptr, ptr @h_d_i_d, align 8
  %455 = load ptr, ptr @sched_luids, align 8
  %456 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !143
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.VEC_int_base, ptr %455, i64 0, i32 2, i64 %458
  %460 = load i32, ptr %459, align 4, !tbaa !147
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %454, i64 0, i32 2, i64 %461, i32 2
  br label %463

463:                                              ; preds = %453, %443
  %464 = phi ptr [ %462, %453 ], [ %452, %443 ]
  %465 = load ptr, ptr @h_d_i_d, align 8
  %466 = load ptr, ptr @sched_luids, align 8
  %467 = load ptr, ptr %0, align 8, !tbaa !151
  %468 = getelementptr inbounds %struct.rtx_def, ptr %467, i64 0, i32 1
  %469 = load i32, ptr %468, align 8, !tbaa !143
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds %struct.VEC_int_base, ptr %466, i64 0, i32 2, i64 %470
  %472 = load i32, ptr %471, align 4, !tbaa !147
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %465, i64 0, i32 2, i64 %473, i32 4
  br label %493

475:                                              ; preds = %428
  %476 = load ptr, ptr @h_d_i_d, align 8
  %477 = load ptr, ptr @sched_luids, align 8
  %478 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1
  %479 = load i32, ptr %478, align 8, !tbaa !143
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds %struct.VEC_int_base, ptr %477, i64 0, i32 2, i64 %480
  %482 = load i32, ptr %481, align 4, !tbaa !147
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %476, i64 0, i32 2, i64 %483, i32 5
  %485 = load ptr, ptr %0, align 8, !tbaa !151
  %486 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1
  %487 = load i32, ptr %486, align 8, !tbaa !143
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds %struct.VEC_int_base, ptr %477, i64 0, i32 2, i64 %488
  %490 = load i32, ptr %489, align 4, !tbaa !147
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %476, i64 0, i32 2, i64 %491, i32 6
  br label %493

493:                                              ; preds = %475, %463
  %494 = phi ptr [ %464, %463 ], [ %484, %475 ]
  %495 = phi ptr [ %474, %463 ], [ %492, %475 ]
  %496 = load ptr, ptr %494, align 8, !tbaa !132
  %497 = load ptr, ptr %495, align 8, !tbaa !132
  %498 = load ptr, ptr %496, align 8, !tbaa !132
  %499 = load ptr, ptr %395, align 8, !tbaa !222
  %500 = icmp eq ptr %499, null
  br i1 %500, label %501, label %504, !prof !221

501:                                              ; preds = %493
  %502 = load ptr, ptr %394, align 8, !tbaa !223
  %503 = icmp eq ptr %502, null
  br i1 %503, label %505, label %504, !prof !221

504:                                              ; preds = %501, %493
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %505

505:                                              ; preds = %504, %501
  store ptr %496, ptr %395, align 8, !tbaa !222
  store ptr %498, ptr %394, align 8, !tbaa !223
  %506 = icmp eq ptr %498, null
  br i1 %506, label %513, label %507, !prof !224

507:                                              ; preds = %505
  %508 = getelementptr inbounds %struct._dep_link, ptr %498, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !222
  %510 = icmp eq ptr %509, %496
  br i1 %510, label %512, label %511, !prof !225

511:                                              ; preds = %507
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %512

512:                                              ; preds = %511, %507
  store ptr %394, ptr %508, align 8, !tbaa !222
  br label %513

513:                                              ; preds = %512, %505
  store ptr %392, ptr %496, align 8, !tbaa !132
  %514 = load ptr, ptr %392, align 8, !tbaa !216
  %515 = getelementptr inbounds %struct._dep_node, ptr %514, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !226
  %517 = load i32, ptr %516, align 8
  %518 = and i32 %517, 65535
  %519 = icmp eq i32 %518, 7
  br i1 %519, label %520, label %526, !prof !228

520:                                              ; preds = %513
  %521 = getelementptr inbounds %struct._dep_node, ptr %514, i64 0, i32 1, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !229
  %523 = load i32, ptr %522, align 8
  %524 = and i32 %523, 65535
  %525 = icmp eq i32 %524, 7
  br i1 %525, label %526, label %530, !prof !221

526:                                              ; preds = %520, %513
  %527 = getelementptr inbounds %struct._deps_list, ptr %496, i64 0, i32 1
  %528 = load i32, ptr %527, align 8, !tbaa !189
  %529 = add nsw i32 %528, 1
  store i32 %529, ptr %527, align 8, !tbaa !189
  br label %530

530:                                              ; preds = %526, %520
  %531 = load ptr, ptr %497, align 8, !tbaa !132
  %532 = getelementptr inbounds %struct._dep_node, ptr %392, i64 0, i32 2, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !222
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %538, !prof !221

535:                                              ; preds = %530
  %536 = load ptr, ptr %396, align 8, !tbaa !223
  %537 = icmp eq ptr %536, null
  br i1 %537, label %539, label %538, !prof !221

538:                                              ; preds = %535, %530
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %539

539:                                              ; preds = %538, %535
  store ptr %497, ptr %532, align 8, !tbaa !222
  store ptr %531, ptr %396, align 8, !tbaa !223
  %540 = icmp eq ptr %531, null
  br i1 %540, label %547, label %541, !prof !224

541:                                              ; preds = %539
  %542 = getelementptr inbounds %struct._dep_link, ptr %531, i64 0, i32 2
  %543 = load ptr, ptr %542, align 8, !tbaa !222
  %544 = icmp eq ptr %543, %497
  br i1 %544, label %546, label %545, !prof !225

545:                                              ; preds = %541
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %546

546:                                              ; preds = %545, %541
  store ptr %396, ptr %542, align 8, !tbaa !222
  br label %547

547:                                              ; preds = %546, %539
  store ptr %393, ptr %497, align 8, !tbaa !132
  %548 = load ptr, ptr %393, align 8, !tbaa !216
  %549 = getelementptr inbounds %struct._dep_node, ptr %548, i64 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !226
  %551 = load i32, ptr %550, align 8
  %552 = and i32 %551, 65535
  %553 = icmp eq i32 %552, 7
  br i1 %553, label %554, label %560, !prof !228

554:                                              ; preds = %547
  %555 = getelementptr inbounds %struct._dep_node, ptr %548, i64 0, i32 1, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !229
  %557 = load i32, ptr %556, align 8
  %558 = and i32 %557, 65535
  %559 = icmp eq i32 %558, 7
  br i1 %559, label %560, label %564, !prof !221

560:                                              ; preds = %554, %547
  %561 = getelementptr inbounds %struct._deps_list, ptr %497, i64 0, i32 1
  %562 = load i32, ptr %561, align 8, !tbaa !189
  %563 = add nsw i32 %562, 1
  store i32 %563, ptr %561, align 8, !tbaa !189
  br label %564

564:                                              ; preds = %560, %554
  %565 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %566 = icmp eq ptr %565, null
  br i1 %566, label %568, label %567, !prof !218

567:                                              ; preds = %564
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %0)
  br label %568

568:                                              ; preds = %567, %564, %118, %373
  %569 = phi i32 [ %374, %373 ], [ %119, %118 ], [ 3, %564 ], [ 3, %567 ]
  ret i32 %569
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sd_resolve_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #9 !prof !131 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !157
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !155
  %18 = and i32 %17, 16777215
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !143
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_int_base, ptr %22, i64 0, i32 2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !147
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %21, i64 0, i32 2, i64 %28, i32 3
  %30 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %21, i64 0, i32 2, i64 %28, i32 5
  br label %42

31:                                               ; preds = %15, %1
  %32 = load ptr, ptr @h_d_i_d, align 8
  %33 = load ptr, ptr @sched_luids, align 8
  %34 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !143
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.VEC_int_base, ptr %33, i64 0, i32 2, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !147
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %32, i64 0, i32 2, i64 %39, i32 2
  %41 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %32, i64 0, i32 2, i64 %39, i32 5
  br label %42

42:                                               ; preds = %31, %20
  %43 = phi ptr [ %41, %31 ], [ %30, %20 ]
  %44 = phi ptr [ %40, %31 ], [ %29, %20 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !132
  %46 = load ptr, ptr %43, align 8, !tbaa !184
  tail call fastcc void @move_dep_link(ptr noundef %5, ptr noundef %45, ptr noundef %46)
  %47 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %48 = load ptr, ptr @h_d_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !143
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_int_base, ptr %49, i64 0, i32 2, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !147
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %48, i64 0, i32 2, i64 %55, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !183
  %58 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %48, i64 0, i32 2, i64 %55, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !185
  tail call fastcc void @move_dep_link(ptr noundef nonnull %47, ptr noundef %57, ptr noundef %59)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @move_dep_link(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !prof !131 {
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  store ptr %7, ptr %5, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._dep_link, ptr %7, i64 0, i32 2
  store ptr %5, ptr %10, align 8, !tbaa !222
  br label %11

11:                                               ; preds = %9, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %12 = load ptr, ptr %0, align 8, !tbaa !216
  %13 = getelementptr inbounds %struct._dep_node, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._dep_node, ptr %12, i64 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !229
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %28

24:                                               ; preds = %11, %18
  %25 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !189
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 8, !tbaa !189
  br label %28

28:                                               ; preds = %18, %24
  tail call fastcc void @add_to_deps_list(ptr noundef nonnull %0, ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sd_copy_back_deps(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !131 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 3, i32 8
  store i32 %8, ptr %4, align 8, !tbaa.struct !201
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %1, ptr %9, align 8, !tbaa.struct !202
  %10 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @sd_iterator_start.null_link, ptr %10, align 8, !tbaa.struct !203
  %11 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 0, ptr %11, align 8, !tbaa.struct !204
  %12 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._dep, ptr %6, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #29
  %17 = load ptr, ptr %5, align 8, !tbaa !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  store ptr %0, ptr %15, align 8, !tbaa !153
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #29
  %18 = load ptr, ptr %10, align 8, !tbaa !207
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct._dep_link, ptr %19, i64 0, i32 1
  store ptr %20, ptr %10, align 8, !tbaa !207
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %16, !llvm.loop !237

23:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: inlinehint nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 !prof !238 !PGOFuncName !239 {
  %3 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !207
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !240

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !216
  %9 = getelementptr inbounds %struct._dep_node, ptr %8, i64 0, i32 1
  br label %100

10:                                               ; preds = %2
  %11 = load i32, ptr %0, align 8, !tbaa !147
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %100, label %13, !prof !241

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !242
  %16 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  %17 = and i32 %11, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19, !prof !178

19:                                               ; preds = %13
  %20 = load ptr, ptr @h_d_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !143
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_int_base, ptr %21, i64 0, i32 2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !147
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %20, i64 0, i32 2, i64 %27, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !179
  store i8 0, ptr %16, align 1, !tbaa !143
  %30 = and i32 %11, -2
  br label %92

31:                                               ; preds = %13
  %32 = and i32 %11, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34, !prof !180

34:                                               ; preds = %31
  %35 = load ptr, ptr @h_d_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !143
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_int_base, ptr %36, i64 0, i32 2, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !147
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %35, i64 0, i32 2, i64 %42, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !181
  store i8 0, ptr %16, align 1, !tbaa !143
  %45 = and i32 %11, -4
  br label %92

46:                                               ; preds = %31
  %47 = and i32 %11, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49, !prof !182

49:                                               ; preds = %46
  %50 = load ptr, ptr @h_d_i_d, align 8
  %51 = load ptr, ptr @sched_luids, align 8
  %52 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !143
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VEC_int_base, ptr %51, i64 0, i32 2, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !147
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %50, i64 0, i32 2, i64 %57, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !183
  store i8 0, ptr %16, align 1, !tbaa !143
  %60 = and i32 %11, -8
  br label %92

61:                                               ; preds = %46
  %62 = and i32 %11, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @h_d_i_d, align 8
  %66 = load ptr, ptr @sched_luids, align 8
  %67 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !143
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.VEC_int_base, ptr %66, i64 0, i32 2, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !147
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %65, i64 0, i32 2, i64 %72, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !184
  store i8 1, ptr %16, align 1, !tbaa !143
  %75 = and i32 %11, -16
  br label %92

76:                                               ; preds = %61
  %77 = and i32 %11, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @h_d_i_d, align 8
  %81 = load ptr, ptr @sched_luids, align 8
  %82 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !143
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VEC_int_base, ptr %81, i64 0, i32 2, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !147
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %80, i64 0, i32 2, i64 %87, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !185
  store i8 1, ptr %16, align 1, !tbaa !143
  %90 = and i32 %11, -32
  br label %92

91:                                               ; preds = %76
  store i8 0, ptr %16, align 1, !tbaa !143
  br label %92

92:                                               ; preds = %19, %34, %49, %64, %79, %91
  %93 = phi i32 [ %30, %19 ], [ %45, %34 ], [ %60, %49 ], [ %75, %64 ], [ %90, %79 ], [ 0, %91 ]
  %94 = phi ptr [ %29, %19 ], [ %44, %34 ], [ %59, %49 ], [ %74, %64 ], [ %89, %79 ], [ null, %91 ]
  store i32 %93, ptr %0, align 4, !tbaa !147
  store ptr %94, ptr %3, align 8, !tbaa !207
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !243

96:                                               ; preds = %92
  %97 = tail call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1)
  br label %98

98:                                               ; preds = %92, %96
  %99 = phi i8 [ %97, %96 ], [ undef, %92 ]
  br i1 %95, label %100, label %103, !prof !243

100:                                              ; preds = %10, %98, %7
  %101 = phi ptr [ %9, %7 ], [ null, %98 ], [ null, %10 ]
  %102 = phi i8 [ 1, %7 ], [ 0, %98 ], [ 0, %10 ]
  store ptr %101, ptr %1, align 8, !tbaa !132
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i8 [ %99, %98 ], [ %102, %100 ]
  ret i8 %104
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sd_delete_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #9 !prof !131 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !207
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = load ptr, ptr %6, align 8, !tbaa !216
  %8 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !143
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_int_base, ptr %15, i64 0, i32 2, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !147
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !143
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_int_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !147
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bitmap_head_def, ptr %12, i64 %26
  %28 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %27, i32 noundef %20) #29
  %29 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %30 = getelementptr inbounds %struct.bitmap_head_def, ptr %29, i64 %26
  %31 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %30, i32 noundef %20) #29
  %32 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %33 = getelementptr inbounds %struct.bitmap_head_def, ptr %32, i64 %26
  %34 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %33, i32 noundef %20) #29
  %35 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.haifa_sched_info, ptr %35, i64 0, i32 17
  %37 = load i32, ptr %36, align 8, !tbaa !157
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %14
  %41 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.bitmap_head_def, ptr %41, i64 %26
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %42, i32 noundef %20) #29
  br label %44

44:                                               ; preds = %14, %40, %1
  %45 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  %46 = load i8, ptr %45, align 8, !tbaa !244
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %8, i8 noundef zeroext %46, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %47 = load ptr, ptr %2, align 8, !tbaa !132
  %48 = getelementptr inbounds %struct._dep_link, ptr %7, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !222
  %50 = getelementptr inbounds %struct._dep_link, ptr %7, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !223
  store ptr %51, ptr %49, align 8, !tbaa !132
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct._dep_link, ptr %51, i64 0, i32 2
  store ptr %49, ptr %54, align 8, !tbaa !222
  br label %55

55:                                               ; preds = %53, %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  %56 = load ptr, ptr %7, align 8, !tbaa !216
  %57 = getelementptr inbounds %struct._dep_node, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !226
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 7
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct._dep_node, ptr %56, i64 0, i32 1, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !229
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %68, label %72

68:                                               ; preds = %55, %62
  %69 = getelementptr inbounds %struct._deps_list, ptr %47, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !189
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %69, align 8, !tbaa !189
  br label %72

72:                                               ; preds = %62, %68
  %73 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 2
  %74 = load ptr, ptr %3, align 8, !tbaa !132
  %75 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 2, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !222
  %77 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !223
  store ptr %78, ptr %76, align 8, !tbaa !132
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct._dep_link, ptr %78, i64 0, i32 2
  store ptr %76, ptr %81, align 8, !tbaa !222
  br label %82

82:                                               ; preds = %80, %72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %83 = load ptr, ptr %73, align 8, !tbaa !216
  %84 = getelementptr inbounds %struct._dep_node, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !226
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 7
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct._dep_node, ptr %83, i64 0, i32 1, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !229
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %95, label %99

95:                                               ; preds = %82, %89
  %96 = getelementptr inbounds %struct._deps_list, ptr %74, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !189
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %96, align 8, !tbaa !189
  br label %99

99:                                               ; preds = %89, %95
  tail call fastcc void @delete_dep_node(ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delete_dep_node(ptr noundef %0) unnamed_addr #11 !prof !131 !PGOFuncName !245 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !218

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._dep_node, ptr %0, i64 0, i32 2, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !218

9:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #29
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr @dn_pool_diff, align 4, !tbaa !147
  %13 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %13, ptr noundef %0) #29
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sd_debug_lists(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct._sd_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr @stderr, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %9 = tail call i32 @fputc(i32 91, ptr %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %1, ptr %3, align 4, !tbaa !147
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2, %19
  %12 = phi i32 [ %20, %19 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #29
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %13 = load ptr, ptr %4, align 8, !tbaa !132
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._deps_list, ptr %13, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !189
  %18 = add nsw i32 %17, %12
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %18, %15 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  %21 = load i32, ptr %3, align 4, !tbaa !147
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %11, !llvm.loop !192

23:                                               ; preds = %19, %2
  %24 = phi i32 [ 0, %2 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %24) #30
  store i32 %1, ptr %6, align 8, !tbaa.struct !201
  %26 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %0, ptr %26, align 8, !tbaa.struct !202
  %27 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr @sd_iterator_start.null_link, ptr %27, align 8, !tbaa.struct !203
  %28 = getelementptr inbounds i8, ptr %6, i64 24
  store i8 0, ptr %28, align 8, !tbaa.struct !204
  %29 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23, %31
  %32 = load ptr, ptr %7, align 8, !tbaa !132
  tail call fastcc void @dump_dep(ptr noundef %8, ptr noundef %32, i32 noundef 7)
  %33 = tail call i32 @fputc(i32 32, ptr %8)
  %34 = load ptr, ptr %27, align 8, !tbaa !207
  %35 = load ptr, ptr %34, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct._dep_link, ptr %35, i64 0, i32 1
  store ptr %36, ptr %27, align 8, !tbaa !207
  %37 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %31, !llvm.loop !246

39:                                               ; preds = %31, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  %40 = load ptr, ptr @stderr, align 8, !tbaa !132
  %41 = tail call i32 @fputc(i32 10, ptr %40)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @haifa_note_reg_set(i32 noundef %0) #11 !prof !247 {
  %2 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #29
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @haifa_note_reg_clobber(i32 noundef %0) #11 !prof !248 {
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @haifa_note_reg_use(i32 noundef %0) #11 !prof !131 {
  %2 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @ds_to_dt(i32 noundef %0) local_unnamed_addr #11 !prof !249 {
  %2 = and i32 %0, 16777216
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11, !prof !250

4:                                                ; preds = %1
  %5 = and i32 %0, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11, !prof !251

7:                                                ; preds = %4
  %8 = and i32 %0, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !252

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1726, ptr noundef nonnull @.str.1) #29
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 11, %4 ], [ 12, %7 ], [ 12, %10 ]
  ret i32 %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @maybe_extend_reg_info_p() local_unnamed_addr #11 !prof !131 {
  %1 = load i32, ptr @max_regno, align 4, !tbaa !147
  %2 = add i32 %1, -1
  %3 = zext i32 %2 to i64
  %4 = load i64, ptr @reg_info_p_size, align 8, !tbaa !253
  %5 = icmp ugt i64 %4, %3
  br i1 %5, label %21, label %6, !prof !254

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 128
  %8 = sext i32 %7 to i64
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %13 = getelementptr inbounds %struct.common_sched_info_def, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %11, %16
  %18 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %19 = load i64, ptr @reg_info_p_size, align 8, !tbaa !253
  %20 = tail call ptr @xrecalloc(ptr noundef %18, i64 noundef %8, i64 noundef %19, i64 noundef 28) #29
  store ptr %20, ptr @reg_info_p, align 8, !tbaa !132
  store i64 %8, ptr @reg_info_p_size, align 8, !tbaa !253
  br label %21

21:                                               ; preds = %17, %0
  ret void
}

declare ptr @xrecalloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @deps_analyze_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !255 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.sched_deps_info_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !256
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !258

11:                                               ; preds = %2
  tail call void %9(ptr noundef %1) #29, !prof !259
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, ptr %1, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %418 [
    i16 8, label %15
    i16 7, label %15
    i16 9, label %15
    i16 10, label %47
  ], !prof !260

15:                                               ; preds = %12, %12, %12
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = and i32 %13, 65535
  %21 = icmp eq i32 %20, 9
  %22 = and i1 %21, %19
  br i1 %22, label %23, label %44, !prof !261

23:                                               ; preds = %15
  %24 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %25 = getelementptr inbounds %struct.common_sched_info_def, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !173
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %31, !prof !262

28:                                               ; preds = %23
  %29 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %1) #29
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %44, !prof !262

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !263
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !263
  %35 = load ptr, ptr @compiler_params, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.param_info, ptr %35, i64 14, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !266
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %40, !prof !268

39:                                               ; preds = %31
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1)
  br label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !269
  %43 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef %42) #29
  store ptr %43, ptr %41, align 8, !tbaa !269
  br label %44

44:                                               ; preds = %39, %40, %28, %15
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %1)
  br label %418

47:                                               ; preds = %12
  %48 = load ptr, ptr @h_d_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !143
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_int_base, ptr %49, i64 0, i32 2, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !147
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %48, i64 0, i32 2, i64 %55, i32 7
  %57 = load i8, ptr %56, align 8
  %58 = or i8 %57, 1
  store i8 %58, ptr %56, align 8
  %59 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 30, ptr noundef null) #29
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !270

61:                                               ; preds = %47
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %104

62:                                               ; preds = %47, %101
  %63 = phi i64 [ %102, %101 ], [ 0, %47 ]
  %64 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !143
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67, !prof !271

67:                                               ; preds = %62
  %68 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %69 = trunc i64 %63 to i32
  %70 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %68, i32 noundef %69) #29
  %71 = shl nuw i64 1, %63
  %72 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %73 = or i64 %72, %71
  store i64 %73, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  br label %101

74:                                               ; preds = %62
  %75 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !253
  %76 = shl nuw i64 1, %63
  %77 = and i64 %75, %76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79, !prof !272

79:                                               ; preds = %74
  %80 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %81 = trunc i64 %63 to i32
  %82 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %80, i32 noundef %81) #29
  br label %101

83:                                               ; preds = %74
  %84 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %63
  %85 = load i8, ptr %84, align 1, !tbaa !143
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87, !prof !273

87:                                               ; preds = %83
  %88 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %89 = or i64 %88, %76
  store i64 %89, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  br label %101

90:                                               ; preds = %83
  %91 = trunc i64 %63 to i32
  switch i32 %91, label %101 [
    i32 20, label %98
    i32 6, label %92
  ], !prof !274

92:                                               ; preds = %90
  %93 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %94 = icmp eq i32 %93, 0
  %95 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %96 = icmp ne i8 %95, 0
  %97 = select i1 %94, i1 true, i1 %96, !prof !275
  br i1 %97, label %98, label %101, !prof !270

98:                                               ; preds = %90, %92
  %99 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %100 = or i64 %99, %76
  store i64 %100, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  br label %101

101:                                              ; preds = %92, %90, %67, %87, %98, %79
  %102 = add nuw nsw i64 %63, 1
  %103 = icmp eq i64 %102, 53
  br i1 %103, label %104, label %62, !prof !276, !llvm.loop !277

104:                                              ; preds = %101, %61
  %105 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %106 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %107 = load i8, ptr %106, align 4
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  %110 = load ptr, ptr %105, align 8, !tbaa !132
  br i1 %109, label %135, label %111, !prof !278

111:                                              ; preds = %104
  %112 = icmp eq ptr %110, null
  br i1 %112, label %159, label %113, !prof !279

113:                                              ; preds = %111, %131
  %114 = phi ptr [ %133, %131 ], [ %110, %111 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !143
  %117 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119, !prof !280

119:                                              ; preds = %113
  %120 = icmp eq ptr %117, %1
  br i1 %120, label %123, label %121, !prof !281

121:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %123

122:                                              ; preds = %113
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %123

123:                                              ; preds = %122, %121, %119
  %124 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %125 = getelementptr inbounds %struct.sched_deps_info_def, ptr %124, i64 0, i32 11
  %126 = load ptr, ptr %125, align 8, !tbaa !282
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !283

128:                                              ; preds = %123
  tail call void %126(ptr noundef %116, i32 noundef 67108864) #29, !prof !284
  br label %129

129:                                              ; preds = %128, %123
  br i1 %118, label %130, label %131, !prof !280

130:                                              ; preds = %129
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %131

131:                                              ; preds = %130, %129
  %132 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !143
  %134 = icmp eq ptr %133, null
  br i1 %134, label %159, label %113, !prof !285, !llvm.loop !286

135:                                              ; preds = %104
  store ptr null, ptr %105, align 8, !tbaa !132
  %136 = icmp eq ptr %110, null
  br i1 %136, label %159, label %137, !prof !287

137:                                              ; preds = %135, %157
  %138 = phi ptr [ %141, %157 ], [ %110, %135 ]
  %139 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %140 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !143
  %142 = load ptr, ptr %139, align 8, !tbaa !143
  %143 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145, !prof !280

145:                                              ; preds = %137
  %146 = icmp eq ptr %143, %1
  br i1 %146, label %149, label %147, !prof !281

147:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %149

148:                                              ; preds = %137
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %149

149:                                              ; preds = %148, %147, %145
  %150 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %151 = getelementptr inbounds %struct.sched_deps_info_def, ptr %150, i64 0, i32 11
  %152 = load ptr, ptr %151, align 8, !tbaa !282
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154, !prof !283

154:                                              ; preds = %149
  tail call void %152(ptr noundef %142, i32 noundef 67108864) #29, !prof !288
  br label %155

155:                                              ; preds = %154, %149
  br i1 %144, label %156, label %157, !prof !280

156:                                              ; preds = %155
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %157

157:                                              ; preds = %156, %155
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %138) #29
  %158 = icmp eq ptr %141, null
  br i1 %158, label %159, label %137, !prof !289, !llvm.loop !290

159:                                              ; preds = %131, %157, %111, %135
  %160 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %161, ptr noundef nonnull %1)
  %162 = load i32, ptr %1, align 8
  %163 = and i32 %162, 268435456
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165, !prof !270

165:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3310, ptr noundef nonnull @.str.1) #29
  br label %166

166:                                              ; preds = %159, %165
  %167 = load i32, ptr %1, align 8
  %168 = and i32 %167, -2080374784
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %230, !prof !291

170:                                              ; preds = %166
  %171 = load i8, ptr %106, align 4
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  %174 = load ptr, ptr %0, align 8, !tbaa !132
  br i1 %173, label %199, label %175, !prof !278

175:                                              ; preds = %170
  %176 = icmp eq ptr %174, null
  br i1 %176, label %223, label %177, !prof !279

177:                                              ; preds = %175, %195
  %178 = phi ptr [ %197, %195 ], [ %174, %175 ]
  %179 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !143
  %181 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183, !prof !280

183:                                              ; preds = %177
  %184 = icmp eq ptr %181, %1
  br i1 %184, label %187, label %185, !prof !281

185:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %187

186:                                              ; preds = %177
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %187

187:                                              ; preds = %186, %185, %183
  %188 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %189 = getelementptr inbounds %struct.sched_deps_info_def, ptr %188, i64 0, i32 11
  %190 = load ptr, ptr %189, align 8, !tbaa !282
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192, !prof !283

192:                                              ; preds = %187
  tail call void %190(ptr noundef %180, i32 noundef 67108864) #29, !prof !292
  br label %193

193:                                              ; preds = %192, %187
  br i1 %182, label %194, label %195, !prof !280

194:                                              ; preds = %193
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %195

195:                                              ; preds = %194, %193
  %196 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !143
  %198 = icmp eq ptr %197, null
  br i1 %198, label %223, label %177, !prof !285, !llvm.loop !286

199:                                              ; preds = %170
  store ptr null, ptr %0, align 8, !tbaa !132
  %200 = icmp eq ptr %174, null
  br i1 %200, label %223, label %201, !prof !287

201:                                              ; preds = %199, %221
  %202 = phi ptr [ %205, %221 ], [ %174, %199 ]
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %204 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !143
  %206 = load ptr, ptr %203, align 8, !tbaa !143
  %207 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %208 = icmp eq ptr %207, null
  br i1 %208, label %212, label %209, !prof !280

209:                                              ; preds = %201
  %210 = icmp eq ptr %207, %1
  br i1 %210, label %213, label %211, !prof !281

211:                                              ; preds = %209
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %213

212:                                              ; preds = %201
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %213

213:                                              ; preds = %212, %211, %209
  %214 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %215 = getelementptr inbounds %struct.sched_deps_info_def, ptr %214, i64 0, i32 11
  %216 = load ptr, ptr %215, align 8, !tbaa !282
  %217 = icmp eq ptr %216, null
  br i1 %217, label %219, label %218, !prof !283

218:                                              ; preds = %213
  tail call void %216(ptr noundef %206, i32 noundef 67108864) #29, !prof !293
  br label %219

219:                                              ; preds = %218, %213
  br i1 %208, label %220, label %221, !prof !280

220:                                              ; preds = %219
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %221

221:                                              ; preds = %220, %219
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %202) #29
  %222 = icmp eq ptr %205, null
  br i1 %222, label %223, label %201, !prof !289, !llvm.loop !290

223:                                              ; preds = %195, %221, %199, %175
  %224 = load i8, ptr %106, align 4
  %225 = and i8 %224, 1
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %230, !prof !294

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %228) #29
  %229 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  store i32 0, ptr %229, align 8, !tbaa !295
  br label %230

230:                                              ; preds = %227, %223, %166
  %231 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %232 = load i8, ptr %106, align 4
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  %235 = load ptr, ptr %231, align 8, !tbaa !132
  br i1 %234, label %260, label %236, !prof !278

236:                                              ; preds = %230
  %237 = icmp eq ptr %235, null
  br i1 %237, label %284, label %238, !prof !279

238:                                              ; preds = %236, %256
  %239 = phi ptr [ %258, %256 ], [ %235, %236 ]
  %240 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !143
  %242 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %243 = icmp eq ptr %242, null
  br i1 %243, label %247, label %244, !prof !280

244:                                              ; preds = %238
  %245 = icmp eq ptr %242, %1
  br i1 %245, label %248, label %246, !prof !281

246:                                              ; preds = %244
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %248

247:                                              ; preds = %238
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %248

248:                                              ; preds = %247, %246, %244
  %249 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %250 = getelementptr inbounds %struct.sched_deps_info_def, ptr %249, i64 0, i32 11
  %251 = load ptr, ptr %250, align 8, !tbaa !282
  %252 = icmp eq ptr %251, null
  br i1 %252, label %254, label %253, !prof !283

253:                                              ; preds = %248
  tail call void %251(ptr noundef %241, i32 noundef 67108864) #29, !prof !292
  br label %254

254:                                              ; preds = %253, %248
  br i1 %243, label %255, label %256, !prof !280

255:                                              ; preds = %254
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %256

256:                                              ; preds = %255, %254
  %257 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !143
  %259 = icmp eq ptr %258, null
  br i1 %259, label %284, label %238, !prof !285, !llvm.loop !286

260:                                              ; preds = %230
  store ptr null, ptr %231, align 8, !tbaa !132
  %261 = icmp eq ptr %235, null
  br i1 %261, label %284, label %262, !prof !287

262:                                              ; preds = %260, %282
  %263 = phi ptr [ %266, %282 ], [ %235, %260 ]
  %264 = getelementptr inbounds %struct.rtx_def, ptr %263, i64 0, i32 1
  %265 = getelementptr inbounds %struct.rtx_def, ptr %263, i64 0, i32 1, i32 0, i32 0, i64 1
  %266 = load ptr, ptr %265, align 8, !tbaa !143
  %267 = load ptr, ptr %264, align 8, !tbaa !143
  %268 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %269 = icmp eq ptr %268, null
  br i1 %269, label %273, label %270, !prof !280

270:                                              ; preds = %262
  %271 = icmp eq ptr %268, %1
  br i1 %271, label %274, label %272, !prof !281

272:                                              ; preds = %270
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %274

273:                                              ; preds = %262
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %274

274:                                              ; preds = %273, %272, %270
  %275 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %276 = getelementptr inbounds %struct.sched_deps_info_def, ptr %275, i64 0, i32 11
  %277 = load ptr, ptr %276, align 8, !tbaa !282
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279, !prof !283

279:                                              ; preds = %274
  tail call void %277(ptr noundef %267, i32 noundef 67108864) #29, !prof !293
  br label %280

280:                                              ; preds = %279, %274
  br i1 %269, label %281, label %282, !prof !280

281:                                              ; preds = %280
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %282

282:                                              ; preds = %281, %280
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %263) #29
  %283 = icmp eq ptr %266, null
  br i1 %283, label %284, label %262, !prof !289, !llvm.loop !290

284:                                              ; preds = %256, %282, %260, %236
  %285 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %286 = load i8, ptr %106, align 4
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  %289 = load ptr, ptr %285, align 8, !tbaa !132
  br i1 %288, label %314, label %290, !prof !278

290:                                              ; preds = %284
  %291 = icmp eq ptr %289, null
  br i1 %291, label %338, label %292, !prof !279

292:                                              ; preds = %290, %310
  %293 = phi ptr [ %312, %310 ], [ %289, %290 ]
  %294 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !143
  %296 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %297 = icmp eq ptr %296, null
  br i1 %297, label %301, label %298, !prof !280

298:                                              ; preds = %292
  %299 = icmp eq ptr %296, %1
  br i1 %299, label %302, label %300, !prof !281

300:                                              ; preds = %298
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %302

301:                                              ; preds = %292
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %302

302:                                              ; preds = %301, %300, %298
  %303 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %304 = getelementptr inbounds %struct.sched_deps_info_def, ptr %303, i64 0, i32 11
  %305 = load ptr, ptr %304, align 8, !tbaa !282
  %306 = icmp eq ptr %305, null
  br i1 %306, label %308, label %307, !prof !283

307:                                              ; preds = %302
  tail call void %305(ptr noundef %295, i32 noundef 67108864) #29, !prof !296
  br label %308

308:                                              ; preds = %307, %302
  br i1 %297, label %309, label %310, !prof !280

309:                                              ; preds = %308
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %310

310:                                              ; preds = %309, %308
  %311 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1, i32 0, i32 0, i64 1
  %312 = load ptr, ptr %311, align 8, !tbaa !143
  %313 = icmp eq ptr %312, null
  br i1 %313, label %338, label %292, !prof !285, !llvm.loop !286

314:                                              ; preds = %284
  store ptr null, ptr %285, align 8, !tbaa !132
  %315 = icmp eq ptr %289, null
  br i1 %315, label %338, label %316, !prof !287

316:                                              ; preds = %314, %336
  %317 = phi ptr [ %320, %336 ], [ %289, %314 ]
  %318 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1
  %319 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1, i32 0, i32 0, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !143
  %321 = load ptr, ptr %318, align 8, !tbaa !143
  %322 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324, !prof !280

324:                                              ; preds = %316
  %325 = icmp eq ptr %322, %1
  br i1 %325, label %328, label %326, !prof !281

326:                                              ; preds = %324
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %328

327:                                              ; preds = %316
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %328

328:                                              ; preds = %327, %326, %324
  %329 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %330 = getelementptr inbounds %struct.sched_deps_info_def, ptr %329, i64 0, i32 11
  %331 = load ptr, ptr %330, align 8, !tbaa !282
  %332 = icmp eq ptr %331, null
  br i1 %332, label %334, label %333, !prof !283

333:                                              ; preds = %328
  tail call void %331(ptr noundef %321, i32 noundef 67108864) #29, !prof !293
  br label %334

334:                                              ; preds = %333, %328
  br i1 %323, label %335, label %336, !prof !280

335:                                              ; preds = %334
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %336

336:                                              ; preds = %335, %334
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %317) #29
  %337 = icmp eq ptr %320, null
  br i1 %337, label %338, label %316, !prof !289, !llvm.loop !290

338:                                              ; preds = %310, %336, %314, %290
  %339 = load i8, ptr %106, align 4
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %347, !prof !294

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %343) #29
  %344 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  store i32 0, ptr %344, align 4, !tbaa !297
  %345 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef null) #29
  store ptr %345, ptr %285, align 8, !tbaa !269
  %346 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  store i32 1, ptr %346, align 8, !tbaa !263
  br label %347

347:                                              ; preds = %338, %342
  %348 = load i8, ptr %106, align 4
  %349 = and i8 %348, 1
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %418, !prof !298

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %352) #29
  %353 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #29
  store ptr %353, ptr %352, align 8, !tbaa !299
  %354 = load i32, ptr %1, align 8
  %355 = and i32 %354, -2080374784
  %356 = icmp ne i32 %355, 0
  %357 = and i32 %354, 33554432
  %358 = icmp eq i32 %357, 0
  %359 = and i1 %356, %358
  br i1 %359, label %413, label %360, !prof !300

360:                                              ; preds = %351
  %361 = load ptr, ptr %160, align 8, !tbaa !143
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = icmp eq i32 %363, 15
  br i1 %364, label %365, label %370, !prof !300

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !143
  %368 = getelementptr inbounds %struct.rtvec_def, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !132
  br label %370

370:                                              ; preds = %365, %360
  %371 = phi ptr [ %369, %365 ], [ %361, %360 ]
  %372 = load i32, ptr %371, align 8
  %373 = and i32 %372, 65535
  %374 = icmp eq i32 %373, 23
  br i1 %374, label %375, label %378, !prof !301

375:                                              ; preds = %370
  %376 = getelementptr inbounds %struct.rtx_def, ptr %371, i64 0, i32 1, i32 0, i32 0, i64 1
  %377 = load ptr, ptr %376, align 8, !tbaa !143
  br label %378

378:                                              ; preds = %375, %370
  %379 = phi ptr [ %377, %375 ], [ %371, %370 ]
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 65535
  %382 = icmp eq i32 %381, 26
  br i1 %382, label %383, label %410, !prof !302

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !143
  %386 = load i32, ptr %385, align 8
  %387 = and i32 %386, 65535
  %388 = icmp eq i32 %387, 43
  br i1 %388, label %389, label %410, !prof !302

389:                                              ; preds = %383
  %390 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !143
  %392 = load i32, ptr %391, align 8
  %393 = and i32 %392, 67174399
  %394 = icmp eq i32 %393, 45
  br i1 %394, label %395, label %410, !prof !303

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.rtx_def, ptr %391, i64 0, i32 1, i32 0, i32 0, i64 2
  %397 = load ptr, ptr %396, align 8, !tbaa !143
  %398 = icmp eq ptr %397, null
  br i1 %398, label %410, label %399, !prof !300

399:                                              ; preds = %395
  %400 = load i64, ptr %397, align 8
  %401 = and i64 %400, 65535
  %402 = icmp eq i64 %401, 29
  br i1 %402, label %403, label %410, !prof !302

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.tree_function_decl, ptr %397, i64 0, i32 5
  %405 = load i32, ptr %404, align 8
  %406 = and i32 %405, 6144
  %407 = icmp eq i32 %406, 6144
  br i1 %407, label %408, label %410, !prof !300

408:                                              ; preds = %403
  %409 = and i32 %405, 2047
  switch i32 %409, label %410 [
    i32 324, label %413
    i32 325, label %413
    i32 326, label %413
    i32 327, label %413
    i32 328, label %413
    i32 329, label %413
    i32 330, label %413
    i32 331, label %413
    i32 332, label %413
    i32 333, label %413
    i32 334, label %413
    i32 335, label %413
    i32 336, label %413
    i32 338, label %413
    i32 339, label %413
    i32 340, label %413
    i32 341, label %413
    i32 342, label %413
    i32 345, label %413
    i32 347, label %413
    i32 348, label %413
    i32 349, label %413
    i32 350, label %413
    i32 351, label %413
    i32 352, label %413
    i32 353, label %413
  ]

410:                                              ; preds = %395, %399, %403, %408, %389, %383, %378
  %411 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %411) #29
  %412 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #29
  store ptr %412, ptr %411, align 8, !tbaa !304
  br label %413

413:                                              ; preds = %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %408, %351, %410
  %414 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %418, !prof !300

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 1, ptr %417, align 8, !tbaa !305
  br label %418

418:                                              ; preds = %347, %416, %413, %12, %44
  %419 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %420 = getelementptr inbounds %struct.sched_deps_info_def, ptr %419, i64 0, i32 12
  %421 = load i8, ptr %420, align 8
  %422 = and i8 %421, 1
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %425, label %424, !prof !306

424:                                              ; preds = %418
  tail call void @cselib_process_insn(ptr noundef nonnull %1) #29
  br label %425

425:                                              ; preds = %424, %418
  %426 = load i32, ptr %1, align 8
  %427 = and i32 %426, 65535
  %428 = icmp eq i32 %427, 13
  br i1 %428, label %429, label %435, !prof !307

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %431 = load i32, ptr %430, align 8, !tbaa !143
  %432 = add i32 %431, -7
  %433 = icmp ult i32 %432, 2
  br i1 %433, label %434, label %435

434:                                              ; preds = %429
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3347, ptr noundef nonnull @.str.1) #29
  br label %435

435:                                              ; preds = %429, %434, %425
  %436 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %437 = getelementptr inbounds %struct.sched_deps_info_def, ptr %436, i64 0, i32 2
  %438 = load ptr, ptr %437, align 8, !tbaa !308
  %439 = icmp eq ptr %438, null
  br i1 %439, label %441, label %440, !prof !258

440:                                              ; preds = %435
  tail call void %438() #29, !prof !309
  br label %441

441:                                              ; preds = %440, %435
  %442 = load i32, ptr %1, align 8
  %443 = and i32 %442, 268500990
  %444 = icmp eq i32 %443, 268435464
  br i1 %444, label %445, label %514, !prof !307

445:                                              ; preds = %441
  %446 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %447 = getelementptr inbounds %struct.common_sched_info_def, ptr %446, i64 0, i32 4
  %448 = load i32, ptr %447, align 8, !tbaa !173
  %449 = icmp eq i32 %448, 4
  br i1 %449, label %514, label %450

450:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  store i32 3, ptr %5, align 8, !tbaa.struct !201
  %451 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %1, ptr %451, align 8, !tbaa.struct !202
  %452 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr @sd_iterator_start.null_link, ptr %452, align 8, !tbaa.struct !203
  %453 = getelementptr inbounds i8, ptr %5, i64 24
  store i8 0, ptr %453, align 8, !tbaa.struct !204
  %454 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %482, label %456

456:                                              ; preds = %450, %476
  %457 = load ptr, ptr %6, align 8, !tbaa !132
  %458 = load ptr, ptr %457, align 8, !tbaa !151
  br label %459

459:                                              ; preds = %463, %456
  %460 = phi ptr [ %1, %456 ], [ %461, %463 ]
  %461 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %460) #29
  %462 = icmp eq ptr %458, %461
  br i1 %462, label %476, label %463

463:                                              ; preds = %459
  %464 = load i32, ptr %461, align 8
  %465 = and i32 %464, 268435456
  %466 = icmp ne i32 %465, 0
  %467 = and i32 %464, 65535
  %468 = icmp eq i32 %467, 7
  %469 = or i1 %466, %468
  br i1 %469, label %459, label %470, !llvm.loop !310

470:                                              ; preds = %463
  %471 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %461, ptr noundef %458), !range !220
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct._dep, ptr %457, i64 0, i32 2
  %475 = load i32, ptr %474, align 8, !tbaa !154
  tail call void @add_dependence(ptr noundef nonnull %461, ptr noundef %458, i32 noundef %475)
  br label %476

476:                                              ; preds = %459, %473, %470
  %477 = load ptr, ptr %452, align 8, !tbaa !207
  %478 = load ptr, ptr %477, align 8, !tbaa !132
  %479 = getelementptr inbounds %struct._dep_link, ptr %478, i64 0, i32 1
  store ptr %479, ptr %452, align 8, !tbaa !207
  %480 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %482, label %456, !llvm.loop !311

482:                                              ; preds = %476, %450
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  store i32 3, ptr %3, align 8, !tbaa.struct !201
  %483 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %1, ptr %483, align 8, !tbaa.struct !202
  %484 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr @sd_iterator_start.null_link, ptr %484, align 8, !tbaa.struct !203
  %485 = getelementptr inbounds i8, ptr %3, i64 24
  store i8 0, ptr %485, align 8, !tbaa.struct !204
  %486 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %482, %488
  tail call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %3)
  %489 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %491, label %488, !llvm.loop !312

491:                                              ; preds = %488, %482
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  %492 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %1) #29
  %493 = load i32, ptr %492, align 8
  %494 = and i32 %493, 65535
  %495 = icmp eq i32 %494, 7
  br i1 %495, label %496, label %502

496:                                              ; preds = %491, %496
  %497 = phi ptr [ %498, %496 ], [ %492, %491 ]
  %498 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %497) #29
  %499 = load i32, ptr %498, align 8
  %500 = and i32 %499, 65535
  %501 = icmp eq i32 %500, 7
  br i1 %501, label %496, label %502, !llvm.loop !313

502:                                              ; preds = %496, %491
  %503 = phi ptr [ %492, %491 ], [ %498, %496 ]
  %504 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !143
  %506 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1, i32 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !143
  %508 = icmp eq ptr %505, %507
  br i1 %508, label %509, label %513

509:                                              ; preds = %502
  %510 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %1, ptr noundef nonnull %503), !range !220
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %509
  tail call void @add_dependence(ptr noundef nonnull %1, ptr noundef nonnull %503, i32 noundef 12)
  br label %513

513:                                              ; preds = %502, %509, %512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  br label %514

514:                                              ; preds = %441, %513, %445
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 !prof !314 !PGOFuncName !315 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %67, label %6, !prof !316

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr %0, align 8, !tbaa !132
  br i1 %10, label %36, label %12, !prof !278

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %60, label %14, !prof !279

14:                                               ; preds = %12, %32
  %15 = phi ptr [ %34, %32 ], [ %11, %12 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !143
  %18 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !280

20:                                               ; preds = %14
  %21 = icmp eq ptr %18, %1
  br i1 %21, label %24, label %22, !prof !281

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %24

23:                                               ; preds = %14
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %24

24:                                               ; preds = %23, %22, %20
  %25 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct.sched_deps_info_def, ptr %25, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !282
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !283

29:                                               ; preds = %24
  tail call void %27(ptr noundef %17, i32 noundef 67108864) #29, !prof !317
  br label %30

30:                                               ; preds = %29, %24
  br i1 %19, label %31, label %32, !prof !280

31:                                               ; preds = %30
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %14, !prof !285, !llvm.loop !286

36:                                               ; preds = %6
  store ptr null, ptr %0, align 8, !tbaa !132
  %37 = icmp eq ptr %11, null
  br i1 %37, label %60, label %38, !prof !287

38:                                               ; preds = %36, %58
  %39 = phi ptr [ %42, %58 ], [ %11, %36 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !143
  %43 = load ptr, ptr %40, align 8, !tbaa !143
  %44 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !280

46:                                               ; preds = %38
  %47 = icmp eq ptr %44, %1
  br i1 %47, label %50, label %48, !prof !281

48:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %50

49:                                               ; preds = %38
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %50

50:                                               ; preds = %49, %48, %46
  %51 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %52 = getelementptr inbounds %struct.sched_deps_info_def, ptr %51, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !282
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !283

55:                                               ; preds = %50
  tail call void %53(ptr noundef %43, i32 noundef 67108864) #29, !prof !318
  br label %56

56:                                               ; preds = %55, %50
  br i1 %45, label %57, label %58, !prof !280

57:                                               ; preds = %56
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %58

58:                                               ; preds = %57, %56
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %39) #29
  %59 = icmp eq ptr %42, null
  br i1 %59, label %60, label %38, !prof !289, !llvm.loop !290

60:                                               ; preds = %32, %58, %12, %36
  %61 = load i8, ptr %7, align 4
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !294

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %65) #29
  %66 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  store i32 0, ptr %66, align 8, !tbaa !295
  br label %67

67:                                               ; preds = %60, %64, %4
  %68 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %69 = icmp eq i32 %2, 0
  %70 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = load ptr, ptr %68, align 8, !tbaa !132
  br i1 %73, label %100, label %75, !prof !278

75:                                               ; preds = %67
  %76 = icmp eq ptr %74, null
  br i1 %76, label %125, label %77, !prof !279

77:                                               ; preds = %75, %96
  %78 = phi ptr [ %98, %96 ], [ %74, %75 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !143
  %81 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !280

83:                                               ; preds = %77
  %84 = icmp eq ptr %81, %1
  br i1 %84, label %87, label %85, !prof !281

85:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %87

86:                                               ; preds = %77
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %87

87:                                               ; preds = %86, %85, %83
  %88 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %89 = getelementptr inbounds %struct.sched_deps_info_def, ptr %88, i64 0, i32 11
  %90 = load ptr, ptr %89, align 8, !tbaa !282
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !283

92:                                               ; preds = %87
  %93 = select i1 %69, i32 33554432, i32 67108864, !prof !319
  tail call void %90(ptr noundef %80, i32 noundef %93) #29, !prof !317
  br label %94

94:                                               ; preds = %92, %87
  br i1 %82, label %95, label %96, !prof !280

95:                                               ; preds = %94
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %96

96:                                               ; preds = %95, %94
  %97 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !143
  %99 = icmp eq ptr %98, null
  br i1 %99, label %125, label %77, !prof !285, !llvm.loop !286

100:                                              ; preds = %67
  store ptr null, ptr %68, align 8, !tbaa !132
  %101 = icmp eq ptr %74, null
  br i1 %101, label %125, label %102, !prof !287

102:                                              ; preds = %100, %123
  %103 = phi ptr [ %106, %123 ], [ %74, %100 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %105 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !143
  %107 = load ptr, ptr %104, align 8, !tbaa !143
  %108 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110, !prof !280

110:                                              ; preds = %102
  %111 = icmp eq ptr %108, %1
  br i1 %111, label %114, label %112, !prof !281

112:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %114

113:                                              ; preds = %102
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %114

114:                                              ; preds = %113, %112, %110
  %115 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %116 = getelementptr inbounds %struct.sched_deps_info_def, ptr %115, i64 0, i32 11
  %117 = load ptr, ptr %116, align 8, !tbaa !282
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119, !prof !283

119:                                              ; preds = %114
  %120 = select i1 %69, i32 33554432, i32 67108864, !prof !319
  tail call void %117(ptr noundef %107, i32 noundef %120) #29, !prof !318
  br label %121

121:                                              ; preds = %119, %114
  br i1 %109, label %122, label %123, !prof !280

122:                                              ; preds = %121
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %123

123:                                              ; preds = %122, %121
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %103) #29
  %124 = icmp eq ptr %106, null
  br i1 %124, label %125, label %102, !prof !289, !llvm.loop !290

125:                                              ; preds = %96, %123, %75, %100
  %126 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %127 = load i8, ptr %70, align 4
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  %130 = load ptr, ptr %126, align 8, !tbaa !132
  br i1 %129, label %156, label %131, !prof !278

131:                                              ; preds = %125
  %132 = icmp eq ptr %130, null
  br i1 %132, label %181, label %133, !prof !279

133:                                              ; preds = %131, %152
  %134 = phi ptr [ %154, %152 ], [ %130, %131 ]
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  %137 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139, !prof !280

139:                                              ; preds = %133
  %140 = icmp eq ptr %137, %1
  br i1 %140, label %143, label %141, !prof !281

141:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %143

142:                                              ; preds = %133
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %143

143:                                              ; preds = %142, %141, %139
  %144 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %145 = getelementptr inbounds %struct.sched_deps_info_def, ptr %144, i64 0, i32 11
  %146 = load ptr, ptr %145, align 8, !tbaa !282
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148, !prof !283

148:                                              ; preds = %143
  %149 = select i1 %69, i32 33554432, i32 67108864, !prof !319
  tail call void %146(ptr noundef %136, i32 noundef %149) #29, !prof !317
  br label %150

150:                                              ; preds = %148, %143
  br i1 %138, label %151, label %152, !prof !280

151:                                              ; preds = %150
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %152

152:                                              ; preds = %151, %150
  %153 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !143
  %155 = icmp eq ptr %154, null
  br i1 %155, label %181, label %133, !prof !285, !llvm.loop !286

156:                                              ; preds = %125
  store ptr null, ptr %126, align 8, !tbaa !132
  %157 = icmp eq ptr %130, null
  br i1 %157, label %181, label %158, !prof !287

158:                                              ; preds = %156, %179
  %159 = phi ptr [ %162, %179 ], [ %130, %156 ]
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %161 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !143
  %163 = load ptr, ptr %160, align 8, !tbaa !143
  %164 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166, !prof !280

166:                                              ; preds = %158
  %167 = icmp eq ptr %164, %1
  br i1 %167, label %170, label %168, !prof !281

168:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %170

169:                                              ; preds = %158
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %170

170:                                              ; preds = %169, %168, %166
  %171 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %172 = getelementptr inbounds %struct.sched_deps_info_def, ptr %171, i64 0, i32 11
  %173 = load ptr, ptr %172, align 8, !tbaa !282
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175, !prof !283

175:                                              ; preds = %170
  %176 = select i1 %69, i32 33554432, i32 67108864, !prof !319
  tail call void %173(ptr noundef %163, i32 noundef %176) #29, !prof !318
  br label %177

177:                                              ; preds = %175, %170
  br i1 %165, label %178, label %179, !prof !280

178:                                              ; preds = %177
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %179

179:                                              ; preds = %178, %177
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %159) #29
  %180 = icmp eq ptr %162, null
  br i1 %180, label %181, label %158, !prof !289, !llvm.loop !290

181:                                              ; preds = %152, %179, %131, %156
  %182 = load i8, ptr %70, align 4
  %183 = and i8 %182, 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %190, !prof !294

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %186) #29
  %187 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  store i32 0, ptr %187, align 4, !tbaa !297
  %188 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef null) #29
  store ptr %188, ptr %126, align 8, !tbaa !269
  %189 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  store i32 1, ptr %189, align 8, !tbaa !263
  br label %190

190:                                              ; preds = %185, %181
  ret void
}

declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !255 !PGOFuncName !320 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_head_def, align 8
  %6 = alloca %struct.bitmap_head_def, align 8
  %7 = alloca %struct._sd_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !prof !307

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  tail call void @extract_insn(ptr noundef %2) #29
  tail call void @preprocess_constraints() #29
  call void @ira_implicitly_set_insn_hard_regs(ptr noundef nonnull %4) #29
  %14 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !253
  %15 = xor i64 %14, -1
  %16 = load i64, ptr %4, align 8, !tbaa !253
  %17 = and i64 %16, %15
  store i64 %17, ptr %4, align 8, !tbaa !253
  %18 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !253
  %19 = or i64 %18, %17
  store i64 %19, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  br label %20

20:                                               ; preds = %13, %3
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 8
  %24 = icmp eq i32 %10, 23
  %25 = select i1 %23, i1 %24, i1 false, !prof !321
  %26 = zext i1 %25 to i8
  store i8 %26, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  %27 = call i32 @may_trap_p(ptr noundef nonnull %1) #29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29, !prof !322

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !143
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33, !prof !323

33:                                               ; preds = %29, %51
  %34 = phi ptr [ %53, %51 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !143
  %37 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !280

39:                                               ; preds = %33
  %40 = icmp eq ptr %37, %2
  br i1 %40, label %43, label %41, !prof !281

41:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %43

42:                                               ; preds = %33
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %43

43:                                               ; preds = %42, %41, %39
  %44 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %45 = getelementptr inbounds %struct.sched_deps_info_def, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !282
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !283

48:                                               ; preds = %43
  call void %46(ptr noundef %36, i32 noundef 67108864) #29, !prof !324
  br label %49

49:                                               ; preds = %48, %43
  br i1 %38, label %50, label %51, !prof !280

50:                                               ; preds = %49
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %51

51:                                               ; preds = %49, %50
  %52 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !143
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %33, !prof !325, !llvm.loop !286

55:                                               ; preds = %51, %29, %20
  %56 = icmp eq i32 %10, 14
  br i1 %56, label %57, label %64, !prof !307

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !143
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %59, ptr noundef nonnull %2)
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !143
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  br label %64

64:                                               ; preds = %57, %55
  %65 = phi i32 [ %63, %57 ], [ %10, %55 ]
  %66 = phi ptr [ %61, %57 ], [ %1, %55 ]
  %67 = trunc i32 %65 to i16
  switch i16 %67, label %113 [
    i16 25, label %68
    i16 23, label %68
    i16 15, label %81
  ], !prof !326

68:                                               ; preds = %64, %64
  %69 = icmp eq i32 %65, 25
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %66, ptr noundef nonnull %2)
  br i1 %69, label %70, label %114, !prof !327

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !143
  %73 = icmp eq ptr %72, null
  br i1 %73, label %114, label %74

74:                                               ; preds = %70, %74
  %75 = phi ptr [ %79, %74 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %77, i32 noundef 11)
  %78 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !143
  %80 = icmp eq ptr %79, null
  br i1 %80, label %114, label %74, !llvm.loop !286

81:                                               ; preds = %64
  %82 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !143
  %84 = load i32, ptr %83, align 8, !tbaa !328
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %114, label %86, !prof !330

86:                                               ; preds = %81
  %87 = zext i32 %84 to i64
  br label %88

88:                                               ; preds = %86, %111
  %89 = phi i64 [ %87, %86 ], [ %91, %111 ]
  %90 = add nsw i64 %89, -1
  %91 = add nsw i64 %89, -1
  %92 = load ptr, ptr %82, align 8, !tbaa !143
  %93 = getelementptr inbounds %struct.rtvec_def, ptr %92, i64 0, i32 1, i64 %90
  %94 = load ptr, ptr %93, align 8, !tbaa !132
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 14
  br i1 %97, label %98, label %105, !prof !331

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !143
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %100, ptr noundef nonnull %2)
  %101 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !143
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 65535
  br label %105

105:                                              ; preds = %98, %88
  %106 = phi ptr [ %102, %98 ], [ %94, %88 ]
  %107 = phi i32 [ %104, %98 ], [ %96, %88 ]
  %108 = trunc i32 %107 to i16
  switch i16 %108, label %110 [
    i16 25, label %109
    i16 23, label %109
  ], !prof !332

109:                                              ; preds = %105, %105
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %106, ptr noundef nonnull %2)
  br label %111

110:                                              ; preds = %105
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %106, ptr noundef nonnull %2)
  br label %111

111:                                              ; preds = %110, %109
  %112 = icmp eq i64 %90, 0
  br i1 %112, label %114, label %88, !prof !333, !llvm.loop !334

113:                                              ; preds = %64
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %66, ptr noundef nonnull %2)
  br label %114

114:                                              ; preds = %111, %74, %81, %70, %113, %68
  %115 = load i32, ptr %2, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %139, !prof !335

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !143
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122, !prof !336

122:                                              ; preds = %118, %131
  %123 = phi ptr [ %133, %131 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !143
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 25
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %125, ptr noundef nonnull %2)
  br label %131

130:                                              ; preds = %122
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %125, ptr noundef nonnull %2)
  br label %131

131:                                              ; preds = %129, %130
  %132 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !143
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %122, !prof !336, !llvm.loop !337

135:                                              ; preds = %131, %118
  %136 = call ptr @find_reg_note(ptr noundef nonnull %2, i32 noundef 30, ptr noundef null) #29
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138, !prof !270

138:                                              ; preds = %135
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %139

139:                                              ; preds = %135, %138, %114
  %140 = load i32, ptr %2, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %143, label %386, !prof !338

143:                                              ; preds = %139
  %144 = call ptr @next_nonnote_insn(ptr noundef nonnull %2) #29
  %145 = icmp eq ptr %144, null
  br i1 %145, label %154, label %146, !prof !339

146:                                              ; preds = %143, %150
  %147 = phi ptr [ %151, %150 ], [ %144, %143 ]
  %148 = load i32, ptr %147, align 8
  %149 = trunc i32 %148 to i16
  switch i16 %149, label %154 [
    i16 7, label %150
    i16 11, label %153
  ], !prof !340

150:                                              ; preds = %146
  %151 = call ptr @next_nonnote_insn(ptr noundef nonnull %147) #29
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %146, !prof !341, !llvm.loop !342

153:                                              ; preds = %146
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %386

154:                                              ; preds = %150, %146, %143
  %155 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %156 = load ptr, ptr %155, align 8, !tbaa !343
  %157 = icmp eq ptr %156, null
  br i1 %157, label %304, label %158, !prof !344

158:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #29
  %159 = getelementptr inbounds %struct.bitmap_head_def, ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %159, align 8, !tbaa !345
  %160 = getelementptr inbounds %struct.bitmap_head_def, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %160, align 8, !tbaa !345
  %161 = load ptr, ptr %155, align 8, !tbaa !343
  %162 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void %161(ptr noundef nonnull %2, ptr noundef nonnull %162, ptr noundef nonnull %5, ptr noundef nonnull %6) #29, !prof !346
  %163 = load ptr, ptr %5, align 8, !tbaa !347
  %164 = icmp eq ptr %163, null
  %165 = select i1 %164, ptr @bitmap_zero_bits, ptr %163, !prof !348
  %166 = getelementptr inbounds %struct.bitmap_element_def, ptr %165, i64 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !349
  %168 = shl i32 %167, 7
  %169 = getelementptr inbounds %struct.bitmap_element_def, ptr %165, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !253
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = or disjoint i32 %168, %172
  br label %174

174:                                              ; preds = %298, %158
  %175 = phi ptr [ %165, %158 ], [ %230, %298 ]
  %176 = phi i32 [ 0, %158 ], [ %231, %298 ]
  %177 = phi i64 [ %170, %158 ], [ %299, %298 ]
  %178 = phi i32 [ %173, %158 ], [ %300, %298 ]
  %179 = icmp eq i64 %177, 0
  br i1 %179, label %194, label %180, !prof !348

180:                                              ; preds = %208, %174
  %181 = phi ptr [ %175, %174 ], [ %199, %208 ]
  %182 = phi i32 [ %176, %174 ], [ %209, %208 ]
  %183 = phi i64 [ %177, %174 ], [ %213, %208 ]
  %184 = phi i32 [ %178, %174 ], [ %210, %208 ]
  %185 = and i64 %183, 1
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %229

187:                                              ; preds = %180, %187
  %188 = phi i32 [ %191, %187 ], [ %184, %180 ]
  %189 = phi i64 [ %190, %187 ], [ %183, %180 ]
  %190 = lshr exact i64 %189, 1
  %191 = add i32 %188, 1
  %192 = and i64 %189, 2
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %187, label %229, !llvm.loop !351

194:                                              ; preds = %174
  %195 = add i32 %178, 63
  %196 = and i32 %195, -64
  %197 = add i32 %176, 1
  br label %198

198:                                              ; preds = %225, %194
  %199 = phi ptr [ %175, %194 ], [ %223, %225 ]
  %200 = phi i64 [ %177, %194 ], [ %220, %225 ]
  %201 = phi i32 [ %196, %194 ], [ %228, %225 ]
  %202 = phi i32 [ %197, %194 ], [ 0, %225 ]
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %219, label %204, !prof !352

204:                                              ; preds = %198
  %205 = add i32 %201, 128
  %206 = shl i32 %202, 6
  %207 = sub i32 %205, %206
  br label %208

208:                                              ; preds = %204, %215
  %209 = phi i32 [ %217, %215 ], [ %202, %204 ]
  %210 = phi i32 [ %216, %215 ], [ %201, %204 ]
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds %struct.bitmap_element_def, ptr %199, i64 0, i32 3, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !253
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %180, !prof !348

215:                                              ; preds = %208
  %216 = add i32 %210, 64
  %217 = add i32 %209, 1
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %208, !prof !353, !llvm.loop !354

219:                                              ; preds = %215, %198
  %220 = phi i64 [ %200, %198 ], [ %213, %215 ]
  %221 = phi i32 [ %201, %198 ], [ %207, %215 ]
  %222 = phi i32 [ %202, %198 ], [ 2, %215 ]
  %223 = load ptr, ptr %199, align 8, !tbaa !355
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225, !prof !348

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.bitmap_element_def, ptr %223, i64 0, i32 2
  %227 = load i32, ptr %226, align 8, !tbaa !349
  %228 = shl i32 %227, 7
  br label %198, !llvm.loop !356

229:                                              ; preds = %219, %187, %180
  %230 = phi ptr [ %181, %180 ], [ %181, %187 ], [ %223, %219 ]
  %231 = phi i32 [ %182, %180 ], [ %182, %187 ], [ %222, %219 ]
  %232 = phi i64 [ %183, %180 ], [ %190, %187 ], [ %220, %219 ]
  %233 = phi i32 [ %184, %180 ], [ %191, %187 ], [ %221, %219 ]
  %234 = phi i1 [ false, %180 ], [ false, %187 ], [ true, %219 ]
  br i1 %234, label %301, label %235, !prof !348

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %237 = load ptr, ptr %236, align 8, !tbaa !357
  %238 = zext i32 %233 to i64
  %239 = getelementptr inbounds %struct.deps_reg, ptr %237, i64 %238, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !143
  %241 = icmp eq ptr %240, null
  br i1 %241, label %254, label %242

242:                                              ; preds = %235, %250
  %243 = phi ptr [ %252, %250 ], [ %240, %235 ]
  %244 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !143
  %246 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %245), !range !220
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = load ptr, ptr %244, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %249, i32 noundef 12)
  br label %250

250:                                              ; preds = %248, %242
  %251 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !143
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %242, !llvm.loop !286

254:                                              ; preds = %250, %235
  %255 = getelementptr inbounds %struct.deps_reg, ptr %237, i64 %238, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !143
  %257 = icmp eq ptr %256, null
  br i1 %257, label %270, label %258

258:                                              ; preds = %254, %266
  %259 = phi ptr [ %268, %266 ], [ %256, %254 ]
  %260 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !143
  %262 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %261), !range !220
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load ptr, ptr %260, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %265, i32 noundef 12)
  br label %266

266:                                              ; preds = %264, %258
  %267 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1, i32 0, i32 0, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !143
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %258, !llvm.loop !286

270:                                              ; preds = %266, %254
  %271 = getelementptr inbounds %struct.deps_reg, ptr %237, i64 %238, i32 3
  %272 = load ptr, ptr %271, align 8, !tbaa !143
  %273 = icmp eq ptr %272, null
  br i1 %273, label %286, label %274

274:                                              ; preds = %270, %282
  %275 = phi ptr [ %284, %282 ], [ %272, %270 ]
  %276 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !143
  %278 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %277), !range !220
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %274
  %281 = load ptr, ptr %276, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %281, i32 noundef 12)
  br label %282

282:                                              ; preds = %280, %274
  %283 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !143
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %274, !llvm.loop !286

286:                                              ; preds = %282, %270
  %287 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %288 = load i8, ptr %287, align 4
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.deps_reg, ptr %237, i64 %238
  %293 = getelementptr inbounds %struct.deps_reg, ptr %237, i64 %238, i32 4
  %294 = load i32, ptr %293, align 8, !tbaa !358
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr %293, align 8, !tbaa !358
  %296 = load ptr, ptr %292, align 8, !tbaa !360
  %297 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %296) #29
  store ptr %297, ptr %292, align 8, !tbaa !360
  br label %298

298:                                              ; preds = %291, %286
  %299 = lshr i64 %232, 1
  %300 = add i32 %233, 1
  br label %174, !llvm.loop !361

301:                                              ; preds = %229
  %302 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %303 = call zeroext i8 @bitmap_ior_into(ptr noundef %302, ptr noundef nonnull %6) #29
  call void @bitmap_clear(ptr noundef nonnull %5) #29
  call void @bitmap_clear(ptr noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  br label %304

304:                                              ; preds = %301, %154
  %305 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !143
  %307 = icmp eq ptr %306, null
  br i1 %307, label %334, label %308, !prof !362

308:                                              ; preds = %304, %330
  %309 = phi ptr [ %332, %330 ], [ %306, %304 ]
  %310 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !143
  %312 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %311), !range !220
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %330, !prof !363

314:                                              ; preds = %308
  %315 = load ptr, ptr %310, align 8, !tbaa !143
  %316 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %317 = icmp eq ptr %316, null
  br i1 %317, label %321, label %318, !prof !280

318:                                              ; preds = %314
  %319 = icmp eq ptr %316, %2
  br i1 %319, label %322, label %320, !prof !281

320:                                              ; preds = %318
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %322

321:                                              ; preds = %314
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %322

322:                                              ; preds = %321, %320, %318
  %323 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %324 = getelementptr inbounds %struct.sched_deps_info_def, ptr %323, i64 0, i32 11
  %325 = load ptr, ptr %324, align 8, !tbaa !282
  %326 = icmp eq ptr %325, null
  br i1 %326, label %328, label %327, !prof !283

327:                                              ; preds = %322
  call void %325(ptr noundef %315, i32 noundef 33554432) #29, !prof !364
  br label %328

328:                                              ; preds = %327, %322
  br i1 %317, label %329, label %330, !prof !280

329:                                              ; preds = %328
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %330

330:                                              ; preds = %329, %328, %308
  %331 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1, i32 0, i32 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !143
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %308, !prof !363, !llvm.loop !365

334:                                              ; preds = %330, %304
  %335 = load ptr, ptr %0, align 8, !tbaa !143
  %336 = icmp eq ptr %335, null
  br i1 %336, label %360, label %337, !prof !366

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %339

339:                                              ; preds = %337, %355
  %340 = phi ptr [ %358, %355 ], [ %335, %337 ]
  %341 = phi ptr [ %357, %355 ], [ %338, %337 ]
  %342 = load ptr, ptr %341, align 8, !tbaa !143
  %343 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !143
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 134217728
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %355, label %348, !prof !367

348:                                              ; preds = %339
  %349 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !143
  %351 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %350), !range !220
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = load ptr, ptr %349, align 8, !tbaa !143
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %354, i32 noundef 11)
  br label %355

355:                                              ; preds = %353, %348, %339
  %356 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1, i32 0, i32 0, i64 1
  %357 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 0, i32 1, i32 0, i32 0, i64 1
  %358 = load ptr, ptr %356, align 8, !tbaa !143
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %339, !prof !367, !llvm.loop !368

360:                                              ; preds = %355, %334
  %361 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %362 = load ptr, ptr %361, align 8, !tbaa !143
  %363 = icmp eq ptr %362, null
  br i1 %363, label %386, label %364, !prof !369

364:                                              ; preds = %360, %382
  %365 = phi ptr [ %384, %382 ], [ %362, %360 ]
  %366 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !143
  %368 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %369 = icmp eq ptr %368, null
  br i1 %369, label %373, label %370, !prof !280

370:                                              ; preds = %364
  %371 = icmp eq ptr %368, %2
  br i1 %371, label %374, label %372, !prof !281

372:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %374

373:                                              ; preds = %364
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %374

374:                                              ; preds = %373, %372, %370
  %375 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %376 = getelementptr inbounds %struct.sched_deps_info_def, ptr %375, i64 0, i32 11
  %377 = load ptr, ptr %376, align 8, !tbaa !282
  %378 = icmp eq ptr %377, null
  br i1 %378, label %380, label %379, !prof !283

379:                                              ; preds = %374
  call void %377(ptr noundef %367, i32 noundef 67108864) #29, !prof !370
  br label %380

380:                                              ; preds = %379, %374
  br i1 %369, label %381, label %382, !prof !280

381:                                              ; preds = %380
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %382

382:                                              ; preds = %380, %381
  %383 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1, i32 0, i32 0, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !143
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %364, !prof !371, !llvm.loop !286

386:                                              ; preds = %382, %360, %153, %139
  %387 = load i32, ptr %2, align 8
  %388 = and i32 %387, 65535
  %389 = add nsw i32 %388, -9
  %390 = icmp ult i32 %389, 2
  br i1 %390, label %391, label %394, !prof !372

391:                                              ; preds = %386
  %392 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %2) #29
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %401, !prof !373

394:                                              ; preds = %386, %391
  %395 = load i32, ptr %2, align 8
  %396 = and i32 %395, 65535
  %397 = icmp eq i32 %396, 8
  br i1 %397, label %398, label %402, !prof !321

398:                                              ; preds = %394
  %399 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %2) #29
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %402, label %401, !prof !374

401:                                              ; preds = %398, %391
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %402

402:                                              ; preds = %398, %401, %394
  %403 = load i8, ptr @sched_pressure_p, align 1, !tbaa !143
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %693, label %405, !prof !306

405:                                              ; preds = %402
  %406 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %407 = load ptr, ptr %406, align 8, !tbaa !347
  %408 = icmp eq ptr %407, null
  %409 = select i1 %408, ptr @bitmap_zero_bits, ptr %407
  %410 = getelementptr inbounds %struct.bitmap_element_def, ptr %409, i64 0, i32 2
  %411 = load i32, ptr %410, align 8, !tbaa !349
  %412 = shl i32 %411, 7
  %413 = getelementptr inbounds %struct.bitmap_element_def, ptr %409, i64 0, i32 3
  %414 = load i64, ptr %413, align 8, !tbaa !253
  %415 = icmp eq i64 %414, 0
  %416 = zext i1 %415 to i32
  %417 = or disjoint i32 %412, %416
  %418 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %419 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %420

420:                                              ; preds = %539, %405
  %421 = phi i64 [ %414, %405 ], [ %540, %539 ]
  %422 = phi i32 [ 0, %405 ], [ %477, %539 ]
  %423 = phi i32 [ %417, %405 ], [ %541, %539 ]
  %424 = phi ptr [ %409, %405 ], [ %479, %539 ]
  %425 = icmp eq i64 %421, 0
  br i1 %425, label %440, label %426

426:                                              ; preds = %454, %420
  %427 = phi i64 [ %421, %420 ], [ %459, %454 ]
  %428 = phi i32 [ %422, %420 ], [ %455, %454 ]
  %429 = phi i32 [ %423, %420 ], [ %456, %454 ]
  %430 = phi ptr [ %424, %420 ], [ %447, %454 ]
  %431 = and i64 %427, 1
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %475

433:                                              ; preds = %426, %433
  %434 = phi i32 [ %437, %433 ], [ %429, %426 ]
  %435 = phi i64 [ %436, %433 ], [ %427, %426 ]
  %436 = lshr exact i64 %435, 1
  %437 = add i32 %434, 1
  %438 = and i64 %435, 2
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %433, label %475, !llvm.loop !351

440:                                              ; preds = %420
  %441 = add i32 %423, 63
  %442 = and i32 %441, -64
  %443 = add i32 %422, 1
  br label %444

444:                                              ; preds = %471, %440
  %445 = phi i64 [ %421, %440 ], [ %466, %471 ]
  %446 = phi i32 [ %442, %440 ], [ %474, %471 ]
  %447 = phi ptr [ %424, %440 ], [ %469, %471 ]
  %448 = phi i32 [ %443, %440 ], [ 0, %471 ]
  %449 = icmp eq i32 %448, 2
  br i1 %449, label %465, label %450

450:                                              ; preds = %444
  %451 = add i32 %446, 128
  %452 = shl i32 %448, 6
  %453 = sub i32 %451, %452
  br label %454

454:                                              ; preds = %450, %461
  %455 = phi i32 [ %463, %461 ], [ %448, %450 ]
  %456 = phi i32 [ %462, %461 ], [ %446, %450 ]
  %457 = zext i32 %455 to i64
  %458 = getelementptr inbounds %struct.bitmap_element_def, ptr %447, i64 0, i32 3, i64 %457
  %459 = load i64, ptr %458, align 8, !tbaa !253
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %426

461:                                              ; preds = %454
  %462 = add i32 %456, 64
  %463 = add i32 %455, 1
  %464 = icmp eq i32 %463, 2
  br i1 %464, label %465, label %454, !llvm.loop !354

465:                                              ; preds = %461, %444
  %466 = phi i64 [ %445, %444 ], [ %459, %461 ]
  %467 = phi i32 [ %446, %444 ], [ %453, %461 ]
  %468 = phi i32 [ %448, %444 ], [ 2, %461 ]
  %469 = load ptr, ptr %447, align 8, !tbaa !355
  %470 = icmp eq ptr %469, null
  br i1 %470, label %475, label %471

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.bitmap_element_def, ptr %469, i64 0, i32 2
  %473 = load i32, ptr %472, align 8, !tbaa !349
  %474 = shl i32 %473, 7
  br label %444, !llvm.loop !356

475:                                              ; preds = %465, %433, %426
  %476 = phi i64 [ %427, %426 ], [ %436, %433 ], [ %466, %465 ]
  %477 = phi i32 [ %428, %426 ], [ %428, %433 ], [ %468, %465 ]
  %478 = phi i32 [ %429, %426 ], [ %437, %433 ], [ %467, %465 ]
  %479 = phi ptr [ %430, %426 ], [ %430, %433 ], [ %469, %465 ]
  %480 = phi i1 [ false, %426 ], [ false, %433 ], [ true, %465 ]
  br i1 %480, label %542, label %481

481:                                              ; preds = %475
  %482 = icmp ult i32 %478, 53
  br i1 %482, label %483, label %489

483:                                              ; preds = %481
  %484 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !253
  %485 = zext nneg i32 %478 to i64
  %486 = shl nuw nsw i64 1, %485
  %487 = and i64 %484, %486
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %539

489:                                              ; preds = %483, %481
  %490 = call ptr @find_regno_note(ptr noundef %2, i32 noundef 1, i32 noundef %478) #29
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %500

492:                                              ; preds = %489
  %493 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %494 = call i32 @bitmap_bit_p(ptr noundef %493, i32 noundef %478) #29
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %500

496:                                              ; preds = %492
  %497 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %498 = call i32 @bitmap_bit_p(ptr noundef %497, i32 noundef %478) #29
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %539, label %500

500:                                              ; preds = %496, %492, %489
  %501 = call ptr @xmalloc(i64 noundef 32) #29
  store i32 %478, ptr %501, align 8, !tbaa !375
  %502 = getelementptr inbounds %struct.reg_use_data, ptr %501, i64 0, i32 1
  store ptr %2, ptr %502, align 8, !tbaa !377
  %503 = load ptr, ptr @h_i_d, align 8
  %504 = load i32, ptr %418, align 8, !tbaa !143
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %503, i64 0, i32 2, i64 %505, i32 15
  %507 = load ptr, ptr %506, align 8, !tbaa !378
  %508 = getelementptr inbounds %struct.reg_use_data, ptr %501, i64 0, i32 3
  store ptr %507, ptr %508, align 8, !tbaa !379
  %509 = load i32, ptr %418, align 8, !tbaa !143
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %503, i64 0, i32 2, i64 %510, i32 15
  store ptr %501, ptr %511, align 8, !tbaa !378
  %512 = getelementptr inbounds %struct.reg_use_data, ptr %501, i64 0, i32 2
  store ptr %501, ptr %512, align 8, !tbaa !380
  %513 = load ptr, ptr %419, align 8, !tbaa !357
  %514 = zext i32 %478 to i64
  %515 = getelementptr inbounds %struct.deps_reg, ptr %513, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !143
  %517 = icmp eq ptr %516, null
  br i1 %517, label %539, label %518

518:                                              ; preds = %500, %518
  %519 = phi ptr [ %537, %518 ], [ %516, %500 ]
  %520 = getelementptr inbounds %struct.rtx_def, ptr %519, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !143
  %522 = call ptr @xmalloc(i64 noundef 32) #29
  store i32 %478, ptr %522, align 8, !tbaa !375
  %523 = getelementptr inbounds %struct.reg_use_data, ptr %522, i64 0, i32 1
  store ptr %521, ptr %523, align 8, !tbaa !377
  %524 = load ptr, ptr @h_i_d, align 8
  %525 = getelementptr inbounds %struct.rtx_def, ptr %521, i64 0, i32 1
  %526 = load i32, ptr %525, align 8, !tbaa !143
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %524, i64 0, i32 2, i64 %527, i32 15
  %529 = load ptr, ptr %528, align 8, !tbaa !378
  %530 = getelementptr inbounds %struct.reg_use_data, ptr %522, i64 0, i32 3
  store ptr %529, ptr %530, align 8, !tbaa !379
  %531 = load i32, ptr %525, align 8, !tbaa !143
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %524, i64 0, i32 2, i64 %532, i32 15
  store ptr %522, ptr %533, align 8, !tbaa !378
  %534 = load ptr, ptr %512, align 8, !tbaa !380
  store ptr %522, ptr %512, align 8, !tbaa !380
  %535 = getelementptr inbounds %struct.reg_use_data, ptr %522, i64 0, i32 2
  store ptr %534, ptr %535, align 8, !tbaa !380
  %536 = getelementptr inbounds %struct.rtx_def, ptr %519, i64 0, i32 1, i32 0, i32 0, i64 1
  %537 = load ptr, ptr %536, align 8, !tbaa !143
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %518, !llvm.loop !381

539:                                              ; preds = %518, %500, %496, %483
  %540 = lshr i64 %476, 1
  %541 = add i32 %478, 1
  br label %420, !llvm.loop !382

542:                                              ; preds = %475
  %543 = load i8, ptr @sched_pressure_p, align 1, !tbaa !143
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %542
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2005, ptr noundef nonnull @.str.1) #29
  br label %546

546:                                              ; preds = %545, %542
  %547 = load i32, ptr %2, align 8
  %548 = and i32 %547, 65535
  %549 = add nsw i32 %548, -7
  %550 = icmp ult i32 %549, 4
  br i1 %550, label %551, label %693

551:                                              ; preds = %546
  %552 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !147
  %553 = icmp sgt i32 %552, 0
  br i1 %553, label %554, label %564

554:                                              ; preds = %551
  %555 = zext nneg i32 %552 to i64
  br label %556

556:                                              ; preds = %554, %556
  %557 = phi i64 [ 0, %554 ], [ %562, %556 ]
  %558 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %557
  %559 = load i32, ptr %558, align 4, !tbaa !147
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %560
  store i32 0, ptr %561, align 4
  %562 = add nuw nsw i64 %557, 1
  %563 = icmp eq i64 %562, %555
  br i1 %563, label %564, label %556, !llvm.loop !383

564:                                              ; preds = %556, %551
  %565 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %566 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %567 = load ptr, ptr %566, align 8, !tbaa !143
  call void @note_stores(ptr noundef %567, ptr noundef nonnull @mark_insn_reg_clobber, ptr noundef nonnull %2) #29
  %568 = load ptr, ptr %566, align 8, !tbaa !143
  call void @note_stores(ptr noundef %568, ptr noundef nonnull @mark_insn_reg_store, ptr noundef nonnull %2) #29
  %569 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %570 = load ptr, ptr %569, align 8, !tbaa !143
  %571 = icmp eq ptr %570, null
  br i1 %571, label %660, label %572

572:                                              ; preds = %564, %656
  %573 = phi ptr [ %658, %656 ], [ %570, %564 ]
  %574 = load i32, ptr %573, align 8
  %575 = and i32 %574, 16711680
  %576 = icmp eq i32 %575, 65536
  br i1 %576, label %577, label %656

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.rtx_def, ptr %573, i64 0, i32 1
  %579 = load ptr, ptr %578, align 8, !tbaa !143
  %580 = load i32, ptr %579, align 8
  %581 = and i32 %580, 65535
  %582 = icmp eq i32 %581, 39
  br i1 %582, label %583, label %586

583:                                              ; preds = %577
  %584 = getelementptr inbounds %struct.rtx_def, ptr %579, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !143
  br label %586

586:                                              ; preds = %583, %577
  %587 = phi ptr [ %585, %583 ], [ %579, %577 ]
  %588 = load i32, ptr %587, align 8
  %589 = and i32 %588, 65535
  %590 = icmp eq i32 %589, 37
  br i1 %590, label %591, label %656

591:                                              ; preds = %586
  %592 = getelementptr inbounds %struct.rtx_def, ptr %587, i64 0, i32 1
  %593 = load i32, ptr %592, align 8, !tbaa !143
  %594 = icmp slt i32 %593, 53
  br i1 %594, label %595, label %632

595:                                              ; preds = %591
  %596 = sext i32 %593 to i64
  %597 = lshr i32 %588, 16
  %598 = and i32 %597, 255
  %599 = zext nneg i32 %598 to i64
  %600 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %596, i64 %599
  %601 = load i8, ptr %600, align 1, !tbaa !143
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %656, label %603

603:                                              ; preds = %595
  %604 = zext i8 %601 to i32
  %605 = add nsw i32 %593, %604
  %606 = sext i32 %605 to i64
  br label %607

607:                                              ; preds = %603, %629
  %608 = phi i64 [ %596, %603 ], [ %630, %629 ]
  %609 = icmp slt i64 %608, 53
  br i1 %609, label %611, label %610

610:                                              ; preds = %607
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1946, ptr noundef nonnull @.str.1) #29
  br label %611

611:                                              ; preds = %610, %607
  %612 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !253
  %613 = shl nuw i64 1, %608
  %614 = and i64 %612, %613
  %615 = icmp eq i64 %614, 0
  br i1 %615, label %616, label %629

616:                                              ; preds = %611
  %617 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !132
  %618 = getelementptr inbounds i32, ptr %617, i64 %608
  %619 = load i32, ptr %618, align 4, !tbaa !147
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %629, label %621

621:                                              ; preds = %616
  %622 = zext i32 %619 to i64
  %623 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %622
  %624 = load i32, ptr %623, align 4
  %625 = and i32 %624, -16777216
  %626 = add i32 %625, -16777216
  %627 = and i32 %624, 16777215
  %628 = or disjoint i32 %626, %627
  store i32 %628, ptr %623, align 4
  br label %629

629:                                              ; preds = %621, %616, %611
  %630 = add nsw i64 %608, 1
  %631 = icmp slt i64 %630, %606
  br i1 %631, label %607, label %656, !llvm.loop !384

632:                                              ; preds = %591
  %633 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !132
  %634 = zext nneg i32 %593 to i64
  %635 = getelementptr inbounds i32, ptr %633, i64 %634
  %636 = load i32, ptr %635, align 4, !tbaa !147
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %656, label %638

638:                                              ; preds = %632
  %639 = zext i32 %636 to i64
  %640 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !132
  %641 = getelementptr inbounds ptr, ptr %640, i64 %634
  %642 = load ptr, ptr %641, align 8, !tbaa !132
  %643 = load i32, ptr %642, align 8
  %644 = lshr i32 %643, 16
  %645 = and i32 %644, 255
  %646 = zext nneg i32 %645 to i64
  %647 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %639, i64 %646
  %648 = load i32, ptr %647, align 4, !tbaa !147
  %649 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %639
  %650 = load i32, ptr %649, align 4
  %651 = shl i32 %648, 24
  %652 = sub i32 %650, %651
  %653 = and i32 %652, -16777216
  %654 = and i32 %650, 16777215
  %655 = or disjoint i32 %653, %654
  store i32 %655, ptr %649, align 4
  br label %656

656:                                              ; preds = %629, %595, %638, %632, %586, %572
  %657 = getelementptr inbounds %struct.rtx_def, ptr %573, i64 0, i32 1, i32 0, i32 0, i64 1
  %658 = load ptr, ptr %657, align 8, !tbaa !143
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %572, !llvm.loop !385

660:                                              ; preds = %656, %564
  %661 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !147
  %662 = shl i32 %661, 2
  %663 = sext i32 %662 to i64
  %664 = call ptr @xmalloc(i64 noundef %663) #29
  %665 = load ptr, ptr @h_i_d, align 8
  %666 = load i32, ptr %565, align 8, !tbaa !143
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %665, i64 0, i32 2, i64 %667, i32 13
  store ptr %664, ptr %668, align 8, !tbaa !386
  store ptr %664, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !132
  %669 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !147
  %670 = sext i32 %669 to i64
  %671 = shl nsw i64 %670, 2
  %672 = call ptr @xcalloc(i64 noundef %671, i64 noundef 1) #29
  %673 = load ptr, ptr @h_i_d, align 8
  %674 = load i32, ptr %565, align 8, !tbaa !143
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %673, i64 0, i32 2, i64 %675, i32 14
  store ptr %672, ptr %676, align 8, !tbaa !387
  %677 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !147
  %678 = icmp sgt i32 %677, 0
  br i1 %678, label %679, label %693

679:                                              ; preds = %660
  %680 = load ptr, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !132
  br label %681

681:                                              ; preds = %679, %681
  %682 = phi i64 [ 0, %679 ], [ %689, %681 ]
  %683 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %682
  %684 = load i32, ptr %683, align 4, !tbaa !147
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %685
  %687 = load i32, ptr %686, align 4
  %688 = getelementptr inbounds %struct.reg_pressure_data, ptr %680, i64 %682
  store i32 %687, ptr %688, align 4
  %689 = add nuw nsw i64 %682, 1
  %690 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !147
  %691 = sext i32 %690 to i64
  %692 = icmp slt i64 %689, %691
  br i1 %692, label %681, label %693, !llvm.loop !388

693:                                              ; preds = %681, %660, %546, %402
  %694 = load i32, ptr %2, align 8
  %695 = and i32 %694, 65535
  %696 = icmp eq i32 %695, 7
  br i1 %696, label %697, label %861, !prof !307

697:                                              ; preds = %693
  %698 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 12
  %699 = load ptr, ptr %698, align 8, !tbaa !389
  %700 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %701 = load i8, ptr %700, align 4
  %702 = and i8 %701, 1
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %704, label %705

704:                                              ; preds = %697
  store ptr %2, ptr %698, align 8, !tbaa !389
  br label %705

705:                                              ; preds = %704, %697
  %706 = icmp eq ptr %699, null
  br i1 %706, label %708, label %707

707:                                              ; preds = %705
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %699, i32 noundef 12)
  br label %708

708:                                              ; preds = %707, %705
  %709 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %710 = load ptr, ptr %709, align 8, !tbaa !143
  %711 = icmp eq ptr %710, null
  br i1 %711, label %719, label %712

712:                                              ; preds = %708, %712
  %713 = phi ptr [ %717, %712 ], [ %710, %708 ]
  %714 = getelementptr inbounds %struct.rtx_def, ptr %713, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %715, i32 noundef 12)
  %716 = getelementptr inbounds %struct.rtx_def, ptr %713, i64 0, i32 1, i32 0, i32 0, i64 1
  %717 = load ptr, ptr %716, align 8, !tbaa !143
  %718 = icmp eq ptr %717, null
  br i1 %718, label %719, label %712, !llvm.loop !286

719:                                              ; preds = %712, %708
  %720 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %721 = load ptr, ptr %720, align 8, !tbaa !143
  %722 = icmp eq ptr %721, null
  br i1 %722, label %740, label %723

723:                                              ; preds = %719, %736
  %724 = phi ptr [ %738, %736 ], [ %721, %719 ]
  %725 = getelementptr inbounds %struct.rtx_def, ptr %724, i64 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !143
  %727 = load i32, ptr %726, align 8
  %728 = and i32 %727, 65535
  %729 = icmp eq i32 %728, 9
  br i1 %729, label %730, label %735

730:                                              ; preds = %723
  %731 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %732 = getelementptr inbounds %struct.common_sched_info_def, ptr %731, i64 0, i32 4
  %733 = load i32, ptr %732, align 8, !tbaa !173
  %734 = icmp eq i32 %733, 4
  br i1 %734, label %736, label %735

735:                                              ; preds = %730, %723
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %726, i32 noundef 12)
  br label %736

736:                                              ; preds = %730, %735
  %737 = getelementptr inbounds %struct.rtx_def, ptr %724, i64 0, i32 1, i32 0, i32 0, i64 1
  %738 = load ptr, ptr %737, align 8, !tbaa !143
  %739 = icmp eq ptr %738, null
  br i1 %739, label %740, label %723, !llvm.loop !390

740:                                              ; preds = %736, %719
  %741 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %742 = load ptr, ptr %741, align 8, !tbaa !347
  %743 = icmp eq ptr %742, null
  %744 = select i1 %743, ptr @bitmap_zero_bits, ptr %742
  %745 = getelementptr inbounds %struct.bitmap_element_def, ptr %744, i64 0, i32 2
  %746 = load i32, ptr %745, align 8, !tbaa !349
  %747 = shl i32 %746, 7
  %748 = getelementptr inbounds %struct.bitmap_element_def, ptr %744, i64 0, i32 3
  %749 = load i64, ptr %748, align 8, !tbaa !253
  %750 = icmp eq i64 %749, 0
  %751 = zext i1 %750 to i32
  %752 = or disjoint i32 %747, %751
  %753 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %754

754:                                              ; preds = %847, %740
  %755 = phi ptr [ %744, %740 ], [ %810, %847 ]
  %756 = phi i32 [ 0, %740 ], [ %811, %847 ]
  %757 = phi i64 [ %749, %740 ], [ %848, %847 ]
  %758 = phi i32 [ %752, %740 ], [ %849, %847 ]
  %759 = icmp eq i64 %757, 0
  br i1 %759, label %774, label %760

760:                                              ; preds = %788, %754
  %761 = phi ptr [ %755, %754 ], [ %779, %788 ]
  %762 = phi i32 [ %756, %754 ], [ %789, %788 ]
  %763 = phi i64 [ %757, %754 ], [ %793, %788 ]
  %764 = phi i32 [ %758, %754 ], [ %790, %788 ]
  %765 = and i64 %763, 1
  %766 = icmp eq i64 %765, 0
  br i1 %766, label %767, label %809

767:                                              ; preds = %760, %767
  %768 = phi i32 [ %771, %767 ], [ %764, %760 ]
  %769 = phi i64 [ %770, %767 ], [ %763, %760 ]
  %770 = lshr exact i64 %769, 1
  %771 = add i32 %768, 1
  %772 = and i64 %769, 2
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %767, label %809, !llvm.loop !351

774:                                              ; preds = %754
  %775 = add i32 %758, 63
  %776 = and i32 %775, -64
  %777 = add i32 %756, 1
  br label %778

778:                                              ; preds = %805, %774
  %779 = phi ptr [ %755, %774 ], [ %803, %805 ]
  %780 = phi i64 [ %757, %774 ], [ %800, %805 ]
  %781 = phi i32 [ %776, %774 ], [ %808, %805 ]
  %782 = phi i32 [ %777, %774 ], [ 0, %805 ]
  %783 = icmp eq i32 %782, 2
  br i1 %783, label %799, label %784

784:                                              ; preds = %778
  %785 = add i32 %781, 128
  %786 = shl i32 %782, 6
  %787 = sub i32 %785, %786
  br label %788

788:                                              ; preds = %784, %795
  %789 = phi i32 [ %797, %795 ], [ %782, %784 ]
  %790 = phi i32 [ %796, %795 ], [ %781, %784 ]
  %791 = zext i32 %789 to i64
  %792 = getelementptr inbounds %struct.bitmap_element_def, ptr %779, i64 0, i32 3, i64 %791
  %793 = load i64, ptr %792, align 8, !tbaa !253
  %794 = icmp eq i64 %793, 0
  br i1 %794, label %795, label %760

795:                                              ; preds = %788
  %796 = add i32 %790, 64
  %797 = add i32 %789, 1
  %798 = icmp eq i32 %797, 2
  br i1 %798, label %799, label %788, !llvm.loop !354

799:                                              ; preds = %795, %778
  %800 = phi i64 [ %780, %778 ], [ %793, %795 ]
  %801 = phi i32 [ %781, %778 ], [ %787, %795 ]
  %802 = phi i32 [ %782, %778 ], [ 2, %795 ]
  %803 = load ptr, ptr %779, align 8, !tbaa !355
  %804 = icmp eq ptr %803, null
  br i1 %804, label %809, label %805

805:                                              ; preds = %799
  %806 = getelementptr inbounds %struct.bitmap_element_def, ptr %803, i64 0, i32 2
  %807 = load i32, ptr %806, align 8, !tbaa !349
  %808 = shl i32 %807, 7
  br label %778, !llvm.loop !356

809:                                              ; preds = %799, %767, %760
  %810 = phi ptr [ %761, %760 ], [ %761, %767 ], [ %803, %799 ]
  %811 = phi i32 [ %762, %760 ], [ %762, %767 ], [ %802, %799 ]
  %812 = phi i64 [ %763, %760 ], [ %770, %767 ], [ %800, %799 ]
  %813 = phi i32 [ %764, %760 ], [ %771, %767 ], [ %801, %799 ]
  %814 = phi i1 [ false, %760 ], [ false, %767 ], [ true, %799 ]
  br i1 %814, label %850, label %815

815:                                              ; preds = %809
  %816 = load ptr, ptr %753, align 8, !tbaa !357
  %817 = zext i32 %813 to i64
  %818 = getelementptr inbounds %struct.deps_reg, ptr %816, i64 %817, i32 1
  %819 = load ptr, ptr %818, align 8, !tbaa !143
  %820 = icmp eq ptr %819, null
  br i1 %820, label %828, label %821

821:                                              ; preds = %815, %821
  %822 = phi ptr [ %826, %821 ], [ %819, %815 ]
  %823 = getelementptr inbounds %struct.rtx_def, ptr %822, i64 0, i32 1
  %824 = load ptr, ptr %823, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %824, i32 noundef 12)
  %825 = getelementptr inbounds %struct.rtx_def, ptr %822, i64 0, i32 1, i32 0, i32 0, i64 1
  %826 = load ptr, ptr %825, align 8, !tbaa !143
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %821, !llvm.loop !286

828:                                              ; preds = %821, %815
  %829 = getelementptr inbounds %struct.deps_reg, ptr %816, i64 %817, i32 3
  %830 = load ptr, ptr %829, align 8, !tbaa !143
  %831 = icmp eq ptr %830, null
  br i1 %831, label %839, label %832

832:                                              ; preds = %828, %832
  %833 = phi ptr [ %837, %832 ], [ %830, %828 ]
  %834 = getelementptr inbounds %struct.rtx_def, ptr %833, i64 0, i32 1
  %835 = load ptr, ptr %834, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %835, i32 noundef 12)
  %836 = getelementptr inbounds %struct.rtx_def, ptr %833, i64 0, i32 1, i32 0, i32 0, i64 1
  %837 = load ptr, ptr %836, align 8, !tbaa !143
  %838 = icmp eq ptr %837, null
  br i1 %838, label %839, label %832, !llvm.loop !286

839:                                              ; preds = %832, %828
  %840 = load i8, ptr %700, align 4
  %841 = and i8 %840, 1
  %842 = icmp eq i8 %841, 0
  br i1 %842, label %843, label %847

843:                                              ; preds = %839
  %844 = getelementptr inbounds %struct.deps_reg, ptr %816, i64 %817
  %845 = load ptr, ptr %844, align 8, !tbaa !360
  %846 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %845) #29
  store ptr %846, ptr %844, align 8, !tbaa !360
  br label %847

847:                                              ; preds = %843, %839
  %848 = lshr i64 %812, 1
  %849 = add i32 %813, 1
  br label %754, !llvm.loop !391

850:                                              ; preds = %809
  %851 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  call void @bitmap_clear(ptr noundef %851) #29
  %852 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %853 = load ptr, ptr %852, align 8, !tbaa !143
  %854 = icmp eq ptr %853, null
  br i1 %854, label %3348, label %855

855:                                              ; preds = %850
  %856 = load i32, ptr %853, align 8
  %857 = and i32 %856, 65535
  %858 = add nsw i32 %857, -11
  %859 = icmp ult i32 %858, -3
  br i1 %859, label %3348, label %860

860:                                              ; preds = %855
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %853, i32 noundef 12)
  br label %3348

861:                                              ; preds = %693
  %862 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %863 = load ptr, ptr %862, align 8, !tbaa !347
  %864 = icmp eq ptr %863, null
  %865 = select i1 %864, ptr @bitmap_zero_bits, ptr %863, !prof !392
  %866 = getelementptr inbounds %struct.bitmap_element_def, ptr %865, i64 0, i32 2
  %867 = load i32, ptr %866, align 8, !tbaa !349
  %868 = shl i32 %867, 7
  %869 = getelementptr inbounds %struct.bitmap_element_def, ptr %865, i64 0, i32 3
  %870 = load i64, ptr %869, align 8, !tbaa !253
  %871 = icmp eq i64 %870, 0
  %872 = zext i1 %871 to i32
  %873 = or disjoint i32 %868, %872
  br label %874

874:                                              ; preds = %1154, %861
  %875 = phi ptr [ %865, %861 ], [ %930, %1154 ]
  %876 = phi i32 [ 0, %861 ], [ %931, %1154 ]
  %877 = phi i64 [ %870, %861 ], [ %1155, %1154 ]
  %878 = phi i32 [ %873, %861 ], [ %1156, %1154 ]
  %879 = icmp eq i64 %877, 0
  br i1 %879, label %894, label %880, !prof !393

880:                                              ; preds = %908, %874
  %881 = phi ptr [ %875, %874 ], [ %899, %908 ]
  %882 = phi i32 [ %876, %874 ], [ %909, %908 ]
  %883 = phi i64 [ %877, %874 ], [ %913, %908 ]
  %884 = phi i32 [ %878, %874 ], [ %910, %908 ]
  %885 = and i64 %883, 1
  %886 = icmp eq i64 %885, 0
  br i1 %886, label %887, label %929, !prof !394

887:                                              ; preds = %880, %887
  %888 = phi i32 [ %891, %887 ], [ %884, %880 ]
  %889 = phi i64 [ %890, %887 ], [ %883, %880 ]
  %890 = lshr exact i64 %889, 1
  %891 = add i32 %888, 1
  %892 = and i64 %889, 2
  %893 = icmp eq i64 %892, 0
  br i1 %893, label %887, label %929, !prof !395, !llvm.loop !351

894:                                              ; preds = %874
  %895 = add i32 %878, 63
  %896 = and i32 %895, -64
  %897 = add i32 %876, 1
  br label %898

898:                                              ; preds = %925, %894
  %899 = phi ptr [ %875, %894 ], [ %923, %925 ]
  %900 = phi i64 [ %877, %894 ], [ %920, %925 ]
  %901 = phi i32 [ %896, %894 ], [ %928, %925 ]
  %902 = phi i32 [ %897, %894 ], [ 0, %925 ]
  %903 = icmp eq i32 %902, 2
  br i1 %903, label %919, label %904, !prof !396

904:                                              ; preds = %898
  %905 = add i32 %901, 128
  %906 = shl i32 %902, 6
  %907 = sub i32 %905, %906
  br label %908

908:                                              ; preds = %904, %915
  %909 = phi i32 [ %917, %915 ], [ %902, %904 ]
  %910 = phi i32 [ %916, %915 ], [ %901, %904 ]
  %911 = zext i32 %909 to i64
  %912 = getelementptr inbounds %struct.bitmap_element_def, ptr %899, i64 0, i32 3, i64 %911
  %913 = load i64, ptr %912, align 8, !tbaa !253
  %914 = icmp eq i64 %913, 0
  br i1 %914, label %915, label %880, !prof !306

915:                                              ; preds = %908
  %916 = add i32 %910, 64
  %917 = add i32 %909, 1
  %918 = icmp eq i32 %917, 2
  br i1 %918, label %919, label %908, !prof !397, !llvm.loop !354

919:                                              ; preds = %915, %898
  %920 = phi i64 [ %900, %898 ], [ %913, %915 ]
  %921 = phi i32 [ %901, %898 ], [ %907, %915 ]
  %922 = phi i32 [ %902, %898 ], [ 2, %915 ]
  %923 = load ptr, ptr %899, align 8, !tbaa !355
  %924 = icmp eq ptr %923, null
  br i1 %924, label %929, label %925, !prof !306

925:                                              ; preds = %919
  %926 = getelementptr inbounds %struct.bitmap_element_def, ptr %923, i64 0, i32 2
  %927 = load i32, ptr %926, align 8, !tbaa !349
  %928 = shl i32 %927, 7
  br label %898, !llvm.loop !356

929:                                              ; preds = %919, %887, %880
  %930 = phi ptr [ %881, %880 ], [ %881, %887 ], [ %923, %919 ]
  %931 = phi i32 [ %882, %880 ], [ %882, %887 ], [ %922, %919 ]
  %932 = phi i64 [ %883, %880 ], [ %890, %887 ], [ %920, %919 ]
  %933 = phi i32 [ %884, %880 ], [ %891, %887 ], [ %921, %919 ]
  %934 = phi i1 [ false, %880 ], [ false, %887 ], [ true, %919 ]
  br i1 %934, label %1157, label %935, !prof !393

935:                                              ; preds = %929
  %936 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %937 = load ptr, ptr %936, align 8, !tbaa !357
  %938 = zext i32 %933 to i64
  %939 = getelementptr inbounds %struct.deps_reg, ptr %937, i64 %938, i32 1
  %940 = load ptr, ptr %939, align 8, !tbaa !143
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1096, label %942, !prof !398

942:                                              ; preds = %935, %1092
  %943 = phi ptr [ %1094, %1092 ], [ %940, %935 ]
  %944 = getelementptr inbounds %struct.rtx_def, ptr %943, i64 0, i32 1
  %945 = load ptr, ptr %944, align 8, !tbaa !143
  %946 = load i32, ptr %2, align 8
  %947 = and i32 %946, 65535
  %948 = icmp eq i32 %947, 10
  br i1 %948, label %1076, label %949, !prof !161

949:                                              ; preds = %942
  %950 = load i32, ptr %945, align 8
  %951 = and i32 %950, 65535
  %952 = icmp eq i32 %951, 10
  br i1 %952, label %1076, label %953, !prof !162

953:                                              ; preds = %949
  %954 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %955 = load ptr, ptr %954, align 8, !tbaa !143
  %956 = icmp eq ptr %955, null
  br i1 %956, label %991, label %957, !prof !163

957:                                              ; preds = %953
  %958 = load i32, ptr %955, align 8
  %959 = and i32 %958, 65535
  %960 = icmp eq i32 %959, 14
  br i1 %960, label %961, label %964, !prof !163

961:                                              ; preds = %957
  %962 = getelementptr inbounds %struct.rtx_def, ptr %955, i64 0, i32 1
  %963 = load ptr, ptr %962, align 8, !tbaa !143
  br label %991

964:                                              ; preds = %957
  %965 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %991, label %967, !prof !164

967:                                              ; preds = %964
  %968 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %991, label %970, !prof !165

970:                                              ; preds = %967
  %971 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %972 = getelementptr inbounds %struct.rtx_def, ptr %971, i64 0, i32 1, i32 0, i32 0, i64 1
  %973 = load ptr, ptr %972, align 8, !tbaa !143
  %974 = getelementptr inbounds %struct.rtx_def, ptr %973, i64 0, i32 1
  %975 = getelementptr inbounds %struct.rtx_def, ptr %973, i64 0, i32 1, i32 0, i32 0, i64 2
  %976 = load ptr, ptr %975, align 8, !tbaa !143
  %977 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %978 = icmp eq ptr %976, %977
  br i1 %978, label %979, label %981, !prof !166

979:                                              ; preds = %970
  %980 = load ptr, ptr %974, align 8, !tbaa !143
  br label %991

981:                                              ; preds = %970
  %982 = getelementptr inbounds %struct.rtx_def, ptr %973, i64 0, i32 1, i32 0, i32 0, i64 1
  %983 = load ptr, ptr %982, align 8, !tbaa !143
  %984 = icmp eq ptr %983, %977
  br i1 %984, label %985, label %991

985:                                              ; preds = %981
  %986 = load ptr, ptr %974, align 8, !tbaa !143
  %987 = call i32 @reversed_comparison_code(ptr noundef %986, ptr noundef nonnull %2) #29
  %988 = icmp ne i32 %987, 0
  %989 = zext i1 %988 to i8
  %990 = select i1 %988, ptr %986, ptr null
  br label %991

991:                                              ; preds = %985, %981, %979, %967, %964, %961, %953
  %992 = phi i8 [ 0, %953 ], [ 0, %961 ], [ 0, %964 ], [ 0, %967 ], [ 0, %979 ], [ 0, %981 ], [ %989, %985 ]
  %993 = phi ptr [ null, %953 ], [ %963, %961 ], [ null, %964 ], [ null, %967 ], [ %980, %979 ], [ null, %981 ], [ %990, %985 ]
  %994 = getelementptr inbounds %struct.rtx_def, ptr %945, i64 1
  %995 = load ptr, ptr %994, align 8, !tbaa !143
  %996 = icmp eq ptr %995, null
  br i1 %996, label %1031, label %997, !prof !163

997:                                              ; preds = %991
  %998 = load i32, ptr %995, align 8
  %999 = and i32 %998, 65535
  %1000 = icmp eq i32 %999, 14
  br i1 %1000, label %1001, label %1004, !prof !163

1001:                                             ; preds = %997
  %1002 = getelementptr inbounds %struct.rtx_def, ptr %995, i64 0, i32 1
  %1003 = load ptr, ptr %1002, align 8, !tbaa !143
  br label %1031

1004:                                             ; preds = %997
  %1005 = call i32 @any_condjump_p(ptr noundef nonnull %945) #29
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1031, label %1007, !prof !164

1007:                                             ; preds = %1004
  %1008 = call i32 @onlyjump_p(ptr noundef nonnull %945) #29
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1031, label %1010, !prof !165

1010:                                             ; preds = %1007
  %1011 = call ptr @pc_set(ptr noundef nonnull %945) #29
  %1012 = getelementptr inbounds %struct.rtx_def, ptr %1011, i64 0, i32 1, i32 0, i32 0, i64 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !143
  %1014 = getelementptr inbounds %struct.rtx_def, ptr %1013, i64 0, i32 1
  %1015 = getelementptr inbounds %struct.rtx_def, ptr %1013, i64 0, i32 1, i32 0, i32 0, i64 2
  %1016 = load ptr, ptr %1015, align 8, !tbaa !143
  %1017 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %1018 = icmp eq ptr %1016, %1017
  br i1 %1018, label %1019, label %1021, !prof !166

1019:                                             ; preds = %1010
  %1020 = load ptr, ptr %1014, align 8, !tbaa !143
  br label %1031

1021:                                             ; preds = %1010
  %1022 = getelementptr inbounds %struct.rtx_def, ptr %1013, i64 0, i32 1, i32 0, i32 0, i64 1
  %1023 = load ptr, ptr %1022, align 8, !tbaa !143
  %1024 = icmp eq ptr %1023, %1017
  br i1 %1024, label %1025, label %1031

1025:                                             ; preds = %1021
  %1026 = load ptr, ptr %1014, align 8, !tbaa !143
  %1027 = call i32 @reversed_comparison_code(ptr noundef %1026, ptr noundef nonnull %945) #29
  %1028 = icmp ne i32 %1027, 0
  %1029 = zext i1 %1028 to i8
  %1030 = select i1 %1028, ptr %1026, ptr null
  br label %1031

1031:                                             ; preds = %1025, %1021, %1019, %1007, %1004, %1001, %991
  %1032 = phi i8 [ 0, %991 ], [ 0, %1001 ], [ 0, %1004 ], [ 0, %1007 ], [ 0, %1019 ], [ 0, %1021 ], [ %1029, %1025 ]
  %1033 = phi ptr [ null, %991 ], [ %1003, %1001 ], [ null, %1004 ], [ null, %1007 ], [ %1020, %1019 ], [ null, %1021 ], [ %1030, %1025 ]
  %1034 = icmp ne ptr %993, null
  %1035 = icmp ne ptr %1033, null
  %1036 = select i1 %1034, i1 %1035, i1 false, !prof !167
  br i1 %1036, label %1037, label %1076, !prof !168

1037:                                             ; preds = %1031
  %1038 = load i32, ptr %993, align 8
  %1039 = and i32 %1038, 65535
  %1040 = zext nneg i32 %1039 to i64
  %1041 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1040
  %1042 = load i32, ptr %1041, align 4, !tbaa !147
  %1043 = icmp ult i32 %1042, 2
  br i1 %1043, label %1044, label %1076

1044:                                             ; preds = %1037
  %1045 = load i32, ptr %1033, align 8
  %1046 = and i32 %1045, 65535
  %1047 = zext nneg i32 %1046 to i64
  %1048 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1047
  %1049 = load i32, ptr %1048, align 4, !tbaa !147
  %1050 = icmp ult i32 %1049, 2
  br i1 %1050, label %1051, label %1076

1051:                                             ; preds = %1044
  %1052 = icmp eq i8 %992, %1032
  br i1 %1052, label %1053, label %1055

1053:                                             ; preds = %1051
  %1054 = call i32 @reversed_comparison_code(ptr noundef nonnull %1033, ptr noundef null) #29
  br label %1055

1055:                                             ; preds = %1053, %1051
  %1056 = phi i32 [ %1054, %1053 ], [ %1046, %1051 ]
  %1057 = icmp eq i32 %1039, %1056
  br i1 %1057, label %1058, label %1076

1058:                                             ; preds = %1055
  %1059 = getelementptr inbounds %struct.rtx_def, ptr %993, i64 0, i32 1
  %1060 = load ptr, ptr %1059, align 8, !tbaa !143
  %1061 = getelementptr inbounds %struct.rtx_def, ptr %1033, i64 0, i32 1
  %1062 = load ptr, ptr %1061, align 8, !tbaa !143
  %1063 = icmp eq ptr %1060, %1062
  br i1 %1063, label %1064, label %1076

1064:                                             ; preds = %1058
  %1065 = getelementptr inbounds %struct.rtx_def, ptr %993, i64 0, i32 1, i32 0, i32 0, i64 1
  %1066 = load ptr, ptr %1065, align 8, !tbaa !143
  %1067 = getelementptr inbounds %struct.rtx_def, ptr %1033, i64 0, i32 1, i32 0, i32 0, i64 1
  %1068 = load ptr, ptr %1067, align 8, !tbaa !143
  %1069 = icmp eq ptr %1066, %1068
  br i1 %1069, label %1070, label %1076

1070:                                             ; preds = %1064
  %1071 = call i32 @modified_in_p(ptr noundef nonnull %993, ptr noundef nonnull %945) #29
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1076

1073:                                             ; preds = %1070
  %1074 = call i32 @modified_in_p(ptr noundef nonnull %1033, ptr noundef nonnull %2) #29
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1092, label %1076

1076:                                             ; preds = %1073, %1070, %1064, %1058, %1055, %1044, %1037, %1031, %949, %942
  %1077 = load ptr, ptr %944, align 8, !tbaa !143
  %1078 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1083, label %1080, !prof !280

1080:                                             ; preds = %1076
  %1081 = icmp eq ptr %1078, %2
  br i1 %1081, label %1084, label %1082, !prof !281

1082:                                             ; preds = %1080
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %1084

1083:                                             ; preds = %1076
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %1084

1084:                                             ; preds = %1083, %1082, %1080
  %1085 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %1086 = getelementptr inbounds %struct.sched_deps_info_def, ptr %1085, i64 0, i32 11
  %1087 = load ptr, ptr %1086, align 8, !tbaa !282
  %1088 = icmp eq ptr %1087, null
  br i1 %1088, label %1090, label %1089, !prof !283

1089:                                             ; preds = %1084
  call void %1087(ptr noundef %1077, i32 noundef 16777216) #29, !prof !399
  br label %1090

1090:                                             ; preds = %1089, %1084
  br i1 %1079, label %1091, label %1092, !prof !280

1091:                                             ; preds = %1090
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %1092

1092:                                             ; preds = %1073, %1091, %1090
  %1093 = getelementptr inbounds %struct.rtx_def, ptr %943, i64 0, i32 1, i32 0, i32 0, i64 1
  %1094 = load ptr, ptr %1093, align 8, !tbaa !143
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1096, label %942, !prof !400, !llvm.loop !286

1096:                                             ; preds = %1092, %935
  %1097 = getelementptr inbounds %struct.deps_reg, ptr %937, i64 %938, i32 2
  %1098 = load ptr, ptr %1097, align 8, !tbaa !143
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1112, label %1100, !prof !336

1100:                                             ; preds = %1096, %1108
  %1101 = phi ptr [ %1110, %1108 ], [ %1098, %1096 ]
  %1102 = getelementptr inbounds %struct.rtx_def, ptr %1101, i64 0, i32 1
  %1103 = load ptr, ptr %1102, align 8, !tbaa !143
  %1104 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1103), !range !220
  %1105 = icmp eq i8 %1104, 0
  br i1 %1105, label %1106, label %1108

1106:                                             ; preds = %1100
  %1107 = load ptr, ptr %1102, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1107, i32 noundef 12)
  br label %1108

1108:                                             ; preds = %1106, %1100
  %1109 = getelementptr inbounds %struct.rtx_def, ptr %1101, i64 0, i32 1, i32 0, i32 0, i64 1
  %1110 = load ptr, ptr %1109, align 8, !tbaa !143
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1112, label %1100, !prof !336, !llvm.loop !286

1112:                                             ; preds = %1108, %1096
  %1113 = getelementptr inbounds %struct.deps_reg, ptr %937, i64 %938, i32 3
  %1114 = load ptr, ptr %1113, align 8, !tbaa !143
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1142, label %1116, !prof !401

1116:                                             ; preds = %1112, %1138
  %1117 = phi ptr [ %1140, %1138 ], [ %1114, %1112 ]
  %1118 = getelementptr inbounds %struct.rtx_def, ptr %1117, i64 0, i32 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !143
  %1120 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1119), !range !220
  %1121 = icmp eq i8 %1120, 0
  br i1 %1121, label %1122, label %1138, !prof !402

1122:                                             ; preds = %1116
  %1123 = load ptr, ptr %1118, align 8, !tbaa !143
  %1124 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1129, label %1126, !prof !280

1126:                                             ; preds = %1122
  %1127 = icmp eq ptr %1124, %2
  br i1 %1127, label %1130, label %1128, !prof !281

1128:                                             ; preds = %1126
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %1130

1129:                                             ; preds = %1122
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %1130

1130:                                             ; preds = %1129, %1128, %1126
  %1131 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %1132 = getelementptr inbounds %struct.sched_deps_info_def, ptr %1131, i64 0, i32 11
  %1133 = load ptr, ptr %1132, align 8, !tbaa !282
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1136, label %1135, !prof !283

1135:                                             ; preds = %1130
  call void %1133(ptr noundef %1123, i32 noundef 16777216) #29, !prof !403
  br label %1136

1136:                                             ; preds = %1135, %1130
  br i1 %1125, label %1137, label %1138, !prof !280

1137:                                             ; preds = %1136
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %1138

1138:                                             ; preds = %1137, %1136, %1116
  %1139 = getelementptr inbounds %struct.rtx_def, ptr %1117, i64 0, i32 1, i32 0, i32 0, i64 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !143
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1142, label %1116, !prof !402, !llvm.loop !286

1142:                                             ; preds = %1138, %1112
  %1143 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %1144 = load i8, ptr %1143, align 4
  %1145 = and i8 %1144, 1
  %1146 = icmp eq i8 %1145, 0
  br i1 %1146, label %1147, label %1154, !prof !404

1147:                                             ; preds = %1142
  %1148 = getelementptr inbounds %struct.deps_reg, ptr %937, i64 %938
  %1149 = load ptr, ptr %1148, align 8, !tbaa !360
  %1150 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %1149) #29
  store ptr %1150, ptr %1148, align 8, !tbaa !360
  %1151 = getelementptr inbounds %struct.deps_reg, ptr %937, i64 %938, i32 4
  %1152 = load i32, ptr %1151, align 8, !tbaa !358
  %1153 = add nsw i32 %1152, 1
  store i32 %1153, ptr %1151, align 8, !tbaa !358
  br label %1154

1154:                                             ; preds = %1147, %1142
  %1155 = lshr i64 %932, 1
  %1156 = add i32 %933, 1
  br label %874, !llvm.loop !405

1157:                                             ; preds = %929, %1225
  %1158 = phi i64 [ %1226, %1225 ], [ 0, %929 ]
  %1159 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %1160 = shl nuw nsw i64 1, %1158
  %1161 = and i64 %1159, %1160
  %1162 = icmp eq i64 %1161, 0
  br i1 %1162, label %1225, label %1163, !prof !406

1163:                                             ; preds = %1157
  %1164 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %1165 = load ptr, ptr %1164, align 8, !tbaa !357
  %1166 = getelementptr inbounds %struct.deps_reg, ptr %1165, i64 %1158, i32 1
  %1167 = load ptr, ptr %1166, align 8, !tbaa !143
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1181, label %1169, !prof !407

1169:                                             ; preds = %1163, %1177
  %1170 = phi ptr [ %1179, %1177 ], [ %1167, %1163 ]
  %1171 = getelementptr inbounds %struct.rtx_def, ptr %1170, i64 0, i32 1
  %1172 = load ptr, ptr %1171, align 8, !tbaa !143
  %1173 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1172), !range !220
  %1174 = icmp eq i8 %1173, 0
  br i1 %1174, label %1175, label %1177, !prof !408

1175:                                             ; preds = %1169
  %1176 = load ptr, ptr %1171, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1176, i32 noundef 0)
  br label %1177

1177:                                             ; preds = %1175, %1169
  %1178 = getelementptr inbounds %struct.rtx_def, ptr %1170, i64 0, i32 1, i32 0, i32 0, i64 1
  %1179 = load ptr, ptr %1178, align 8, !tbaa !143
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1181, label %1169, !prof !408, !llvm.loop !286

1181:                                             ; preds = %1177, %1163
  %1182 = getelementptr inbounds %struct.deps_reg, ptr %1165, i64 %1158, i32 2
  %1183 = load ptr, ptr %1182, align 8, !tbaa !143
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1197, label %1185, !prof !336

1185:                                             ; preds = %1181, %1193
  %1186 = phi ptr [ %1195, %1193 ], [ %1183, %1181 ]
  %1187 = getelementptr inbounds %struct.rtx_def, ptr %1186, i64 0, i32 1
  %1188 = load ptr, ptr %1187, align 8, !tbaa !143
  %1189 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1188), !range !220
  %1190 = icmp eq i8 %1189, 0
  br i1 %1190, label %1191, label %1193

1191:                                             ; preds = %1185
  %1192 = load ptr, ptr %1187, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1192, i32 noundef 12)
  br label %1193

1193:                                             ; preds = %1191, %1185
  %1194 = getelementptr inbounds %struct.rtx_def, ptr %1186, i64 0, i32 1, i32 0, i32 0, i64 1
  %1195 = load ptr, ptr %1194, align 8, !tbaa !143
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1197, label %1185, !prof !336, !llvm.loop !286

1197:                                             ; preds = %1193, %1181
  %1198 = getelementptr inbounds %struct.deps_reg, ptr %1165, i64 %1158, i32 3
  %1199 = load ptr, ptr %1198, align 8, !tbaa !143
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1213, label %1201, !prof !336

1201:                                             ; preds = %1197, %1209
  %1202 = phi ptr [ %1211, %1209 ], [ %1199, %1197 ]
  %1203 = getelementptr inbounds %struct.rtx_def, ptr %1202, i64 0, i32 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !143
  %1205 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1204), !range !220
  %1206 = icmp eq i8 %1205, 0
  br i1 %1206, label %1207, label %1209

1207:                                             ; preds = %1201
  %1208 = load ptr, ptr %1203, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1208, i32 noundef 0)
  br label %1209

1209:                                             ; preds = %1207, %1201
  %1210 = getelementptr inbounds %struct.rtx_def, ptr %1202, i64 0, i32 1, i32 0, i32 0, i64 1
  %1211 = load ptr, ptr %1210, align 8, !tbaa !143
  %1212 = icmp eq ptr %1211, null
  br i1 %1212, label %1213, label %1201, !prof !336, !llvm.loop !286

1213:                                             ; preds = %1209, %1197
  %1214 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %1215 = load i8, ptr %1214, align 4
  %1216 = and i8 %1215, 1
  %1217 = icmp eq i8 %1216, 0
  br i1 %1217, label %1218, label %1225, !prof !409

1218:                                             ; preds = %1213
  %1219 = getelementptr inbounds %struct.deps_reg, ptr %1165, i64 %1158
  %1220 = load ptr, ptr %1219, align 8, !tbaa !360
  %1221 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %1220) #29
  store ptr %1221, ptr %1219, align 8, !tbaa !360
  %1222 = getelementptr inbounds %struct.deps_reg, ptr %1165, i64 %1158, i32 4
  %1223 = load i32, ptr %1222, align 8, !tbaa !358
  %1224 = add nsw i32 %1223, 1
  store i32 %1224, ptr %1222, align 8, !tbaa !358
  br label %1225

1225:                                             ; preds = %1213, %1218, %1157
  %1226 = add nuw nsw i64 %1158, 1
  %1227 = icmp eq i64 %1226, 53
  br i1 %1227, label %1228, label %1157, !prof !410, !llvm.loop !411

1228:                                             ; preds = %1225
  %1229 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %1230 = load ptr, ptr %1229, align 8, !tbaa !143
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1265, label %1232, !prof !163

1232:                                             ; preds = %1228
  %1233 = load i32, ptr %1230, align 8
  %1234 = and i32 %1233, 65535
  %1235 = icmp eq i32 %1234, 14
  br i1 %1235, label %1236, label %1239, !prof !163

1236:                                             ; preds = %1232
  %1237 = getelementptr inbounds %struct.rtx_def, ptr %1230, i64 0, i32 1
  %1238 = load ptr, ptr %1237, align 8, !tbaa !143
  br label %1265

1239:                                             ; preds = %1232
  %1240 = call i32 @any_condjump_p(ptr noundef %2) #29
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1265, label %1242, !prof !164

1242:                                             ; preds = %1239
  %1243 = call i32 @onlyjump_p(ptr noundef %2) #29
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1265, label %1245, !prof !165

1245:                                             ; preds = %1242
  %1246 = call ptr @pc_set(ptr noundef %2) #29
  %1247 = getelementptr inbounds %struct.rtx_def, ptr %1246, i64 0, i32 1, i32 0, i32 0, i64 1
  %1248 = load ptr, ptr %1247, align 8, !tbaa !143
  %1249 = getelementptr inbounds %struct.rtx_def, ptr %1248, i64 0, i32 1
  %1250 = getelementptr inbounds %struct.rtx_def, ptr %1248, i64 0, i32 1, i32 0, i32 0, i64 2
  %1251 = load ptr, ptr %1250, align 8, !tbaa !143
  %1252 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %1253 = icmp eq ptr %1251, %1252
  br i1 %1253, label %1254, label %1256, !prof !166

1254:                                             ; preds = %1245
  %1255 = load ptr, ptr %1249, align 8, !tbaa !143
  br label %1265

1256:                                             ; preds = %1245
  %1257 = getelementptr inbounds %struct.rtx_def, ptr %1248, i64 0, i32 1, i32 0, i32 0, i64 1
  %1258 = load ptr, ptr %1257, align 8, !tbaa !143
  %1259 = icmp eq ptr %1258, %1252
  br i1 %1259, label %1260, label %1265

1260:                                             ; preds = %1256
  %1261 = load ptr, ptr %1249, align 8, !tbaa !143
  %1262 = call i32 @reversed_comparison_code(ptr noundef %1261, ptr noundef %2) #29
  %1263 = icmp eq i32 %1262, 0
  %1264 = select i1 %1263, ptr null, ptr %1261
  br label %1265

1265:                                             ; preds = %1228, %1236, %1239, %1242, %1254, %1256, %1260
  %1266 = phi ptr [ %1238, %1236 ], [ %1255, %1254 ], [ null, %1228 ], [ null, %1242 ], [ null, %1239 ], [ %1264, %1260 ], [ null, %1256 ]
  %1267 = icmp eq ptr %1266, null
  %1268 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %1269 = load ptr, ptr %1268, align 8, !tbaa !347
  %1270 = icmp eq ptr %1269, null
  %1271 = select i1 %1270, ptr @bitmap_zero_bits, ptr %1269
  %1272 = getelementptr inbounds %struct.bitmap_element_def, ptr %1271, i64 0, i32 2
  %1273 = load i32, ptr %1272, align 8, !tbaa !349
  %1274 = shl i32 %1273, 7
  %1275 = getelementptr inbounds %struct.bitmap_element_def, ptr %1271, i64 0, i32 3
  %1276 = load i64, ptr %1275, align 8, !tbaa !253
  %1277 = icmp eq i64 %1276, 0
  %1278 = zext i1 %1277 to i32
  %1279 = or disjoint i32 %1274, %1278
  %1280 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %1281 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br i1 %1267, label %1561, label %1282, !prof !412

1282:                                             ; preds = %1265, %1404
  %1283 = phi ptr [ %1338, %1404 ], [ %1271, %1265 ]
  %1284 = phi i32 [ %1339, %1404 ], [ 0, %1265 ]
  %1285 = phi i64 [ %1405, %1404 ], [ %1276, %1265 ]
  %1286 = phi i32 [ %1406, %1404 ], [ %1279, %1265 ]
  %1287 = icmp eq i64 %1285, 0
  br i1 %1287, label %1302, label %1288, !prof !413

1288:                                             ; preds = %1316, %1282
  %1289 = phi ptr [ %1283, %1282 ], [ %1307, %1316 ]
  %1290 = phi i32 [ %1284, %1282 ], [ %1317, %1316 ]
  %1291 = phi i64 [ %1285, %1282 ], [ %1321, %1316 ]
  %1292 = phi i32 [ %1286, %1282 ], [ %1318, %1316 ]
  %1293 = and i64 %1291, 1
  %1294 = icmp eq i64 %1293, 0
  br i1 %1294, label %1295, label %1337

1295:                                             ; preds = %1288, %1295
  %1296 = phi i32 [ %1299, %1295 ], [ %1292, %1288 ]
  %1297 = phi i64 [ %1298, %1295 ], [ %1291, %1288 ]
  %1298 = lshr exact i64 %1297, 1
  %1299 = add i32 %1296, 1
  %1300 = and i64 %1297, 2
  %1301 = icmp eq i64 %1300, 0
  br i1 %1301, label %1295, label %1337, !llvm.loop !351

1302:                                             ; preds = %1282
  %1303 = add i32 %1286, 63
  %1304 = and i32 %1303, -64
  %1305 = add i32 %1284, 1
  br label %1306

1306:                                             ; preds = %1333, %1302
  %1307 = phi ptr [ %1283, %1302 ], [ %1331, %1333 ]
  %1308 = phi i64 [ %1285, %1302 ], [ %1328, %1333 ]
  %1309 = phi i32 [ %1304, %1302 ], [ %1336, %1333 ]
  %1310 = phi i32 [ %1305, %1302 ], [ 0, %1333 ]
  %1311 = icmp eq i32 %1310, 2
  br i1 %1311, label %1327, label %1312, !prof !369

1312:                                             ; preds = %1306
  %1313 = add i32 %1309, 128
  %1314 = shl i32 %1310, 6
  %1315 = sub i32 %1313, %1314
  br label %1316

1316:                                             ; preds = %1312, %1323
  %1317 = phi i32 [ %1325, %1323 ], [ %1310, %1312 ]
  %1318 = phi i32 [ %1324, %1323 ], [ %1309, %1312 ]
  %1319 = zext i32 %1317 to i64
  %1320 = getelementptr inbounds %struct.bitmap_element_def, ptr %1307, i64 0, i32 3, i64 %1319
  %1321 = load i64, ptr %1320, align 8, !tbaa !253
  %1322 = icmp eq i64 %1321, 0
  br i1 %1322, label %1323, label %1288, !prof !413

1323:                                             ; preds = %1316
  %1324 = add i32 %1318, 64
  %1325 = add i32 %1317, 1
  %1326 = icmp eq i32 %1325, 2
  br i1 %1326, label %1327, label %1316, !prof !414, !llvm.loop !354

1327:                                             ; preds = %1323, %1306
  %1328 = phi i64 [ %1308, %1306 ], [ %1321, %1323 ]
  %1329 = phi i32 [ %1309, %1306 ], [ %1315, %1323 ]
  %1330 = phi i32 [ %1310, %1306 ], [ 2, %1323 ]
  %1331 = load ptr, ptr %1307, align 8, !tbaa !355
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %1337, label %1333, !prof !413

1333:                                             ; preds = %1327
  %1334 = getelementptr inbounds %struct.bitmap_element_def, ptr %1331, i64 0, i32 2
  %1335 = load i32, ptr %1334, align 8, !tbaa !349
  %1336 = shl i32 %1335, 7
  br label %1306, !llvm.loop !356

1337:                                             ; preds = %1327, %1295, %1288
  %1338 = phi ptr [ %1289, %1288 ], [ %1289, %1295 ], [ %1331, %1327 ]
  %1339 = phi i32 [ %1290, %1288 ], [ %1290, %1295 ], [ %1330, %1327 ]
  %1340 = phi i64 [ %1291, %1288 ], [ %1298, %1295 ], [ %1328, %1327 ]
  %1341 = phi i32 [ %1292, %1288 ], [ %1299, %1295 ], [ %1329, %1327 ]
  %1342 = phi i1 [ false, %1288 ], [ false, %1295 ], [ true, %1327 ]
  br i1 %1342, label %1407, label %1343, !prof !413

1343:                                             ; preds = %1337
  %1344 = load ptr, ptr %1280, align 8, !tbaa !357
  %1345 = zext i32 %1341 to i64
  %1346 = getelementptr inbounds %struct.deps_reg, ptr %1344, i64 %1345
  %1347 = getelementptr inbounds %struct.deps_reg, ptr %1344, i64 %1345, i32 1
  %1348 = load ptr, ptr %1347, align 8, !tbaa !143
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1362, label %1350

1350:                                             ; preds = %1343, %1358
  %1351 = phi ptr [ %1360, %1358 ], [ %1348, %1343 ]
  %1352 = getelementptr inbounds %struct.rtx_def, ptr %1351, i64 0, i32 1
  %1353 = load ptr, ptr %1352, align 8, !tbaa !143
  %1354 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1353), !range !220
  %1355 = icmp eq i8 %1354, 0
  br i1 %1355, label %1356, label %1358

1356:                                             ; preds = %1350
  %1357 = load ptr, ptr %1352, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1357, i32 noundef 11)
  br label %1358

1358:                                             ; preds = %1356, %1350
  %1359 = getelementptr inbounds %struct.rtx_def, ptr %1351, i64 0, i32 1, i32 0, i32 0, i64 1
  %1360 = load ptr, ptr %1359, align 8, !tbaa !143
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1362, label %1350, !llvm.loop !286

1362:                                             ; preds = %1358, %1343
  %1363 = getelementptr inbounds %struct.deps_reg, ptr %1344, i64 %1345, i32 2
  %1364 = load ptr, ptr %1363, align 8, !tbaa !143
  %1365 = icmp eq ptr %1364, null
  br i1 %1365, label %1366, label %1369

1366:                                             ; preds = %1377, %1362
  %1367 = load ptr, ptr %1346, align 8, !tbaa !143
  %1368 = icmp eq ptr %1367, null
  br i1 %1368, label %1393, label %1381

1369:                                             ; preds = %1362, %1377
  %1370 = phi ptr [ %1379, %1377 ], [ %1364, %1362 ]
  %1371 = getelementptr inbounds %struct.rtx_def, ptr %1370, i64 0, i32 1
  %1372 = load ptr, ptr %1371, align 8, !tbaa !143
  %1373 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1372), !range !220
  %1374 = icmp eq i8 %1373, 0
  br i1 %1374, label %1375, label %1377

1375:                                             ; preds = %1369
  %1376 = load ptr, ptr %1371, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1376, i32 noundef 12)
  br label %1377

1377:                                             ; preds = %1375, %1369
  %1378 = getelementptr inbounds %struct.rtx_def, ptr %1370, i64 0, i32 1, i32 0, i32 0, i64 1
  %1379 = load ptr, ptr %1378, align 8, !tbaa !143
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1366, label %1369, !llvm.loop !286

1381:                                             ; preds = %1366, %1389
  %1382 = phi ptr [ %1391, %1389 ], [ %1367, %1366 ]
  %1383 = getelementptr inbounds %struct.rtx_def, ptr %1382, i64 0, i32 1
  %1384 = load ptr, ptr %1383, align 8, !tbaa !143
  %1385 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1384), !range !220
  %1386 = icmp eq i8 %1385, 0
  br i1 %1386, label %1387, label %1389

1387:                                             ; preds = %1381
  %1388 = load ptr, ptr %1383, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1388, i32 noundef 12)
  br label %1389

1389:                                             ; preds = %1387, %1381
  %1390 = getelementptr inbounds %struct.rtx_def, ptr %1382, i64 0, i32 1, i32 0, i32 0, i64 1
  %1391 = load ptr, ptr %1390, align 8, !tbaa !143
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1393, label %1381, !llvm.loop !286

1393:                                             ; preds = %1389, %1366
  %1394 = load i8, ptr %1281, align 4
  %1395 = and i8 %1394, 1
  %1396 = icmp eq i8 %1395, 0
  br i1 %1396, label %1397, label %1404

1397:                                             ; preds = %1393
  %1398 = getelementptr inbounds %struct.deps_reg, ptr %1344, i64 %1345, i32 3
  %1399 = load ptr, ptr %1398, align 8, !tbaa !415
  %1400 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %1399) #29
  store ptr %1400, ptr %1398, align 8, !tbaa !415
  %1401 = getelementptr inbounds %struct.deps_reg, ptr %1344, i64 %1345, i32 5
  %1402 = load i32, ptr %1401, align 4, !tbaa !416
  %1403 = add nsw i32 %1402, 1
  store i32 %1403, ptr %1401, align 4, !tbaa !416
  br label %1404

1404:                                             ; preds = %1397, %1393
  %1405 = lshr i64 %1340, 1
  %1406 = add i32 %1341, 1
  br label %1282, !llvm.loop !417

1407:                                             ; preds = %1337
  %1408 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %1409 = load ptr, ptr %1408, align 8, !tbaa !347
  %1410 = icmp eq ptr %1409, null
  %1411 = select i1 %1410, ptr @bitmap_zero_bits, ptr %1409, !prof !413
  %1412 = getelementptr inbounds %struct.bitmap_element_def, ptr %1411, i64 0, i32 2
  %1413 = load i32, ptr %1412, align 8, !tbaa !349
  %1414 = shl i32 %1413, 7
  %1415 = getelementptr inbounds %struct.bitmap_element_def, ptr %1411, i64 0, i32 3
  %1416 = load i64, ptr %1415, align 8, !tbaa !253
  %1417 = icmp eq i64 %1416, 0
  %1418 = zext i1 %1417 to i32
  %1419 = or disjoint i32 %1414, %1418
  br label %1420

1420:                                             ; preds = %1558, %1407
  %1421 = phi ptr [ %1411, %1407 ], [ %1476, %1558 ]
  %1422 = phi i32 [ 0, %1407 ], [ %1477, %1558 ]
  %1423 = phi i64 [ %1416, %1407 ], [ %1559, %1558 ]
  %1424 = phi i32 [ %1419, %1407 ], [ %1560, %1558 ]
  %1425 = icmp eq i64 %1423, 0
  br i1 %1425, label %1440, label %1426, !prof !413

1426:                                             ; preds = %1454, %1420
  %1427 = phi ptr [ %1421, %1420 ], [ %1445, %1454 ]
  %1428 = phi i32 [ %1422, %1420 ], [ %1455, %1454 ]
  %1429 = phi i64 [ %1423, %1420 ], [ %1459, %1454 ]
  %1430 = phi i32 [ %1424, %1420 ], [ %1456, %1454 ]
  %1431 = and i64 %1429, 1
  %1432 = icmp eq i64 %1431, 0
  br i1 %1432, label %1433, label %1475

1433:                                             ; preds = %1426, %1433
  %1434 = phi i32 [ %1437, %1433 ], [ %1430, %1426 ]
  %1435 = phi i64 [ %1436, %1433 ], [ %1429, %1426 ]
  %1436 = lshr exact i64 %1435, 1
  %1437 = add i32 %1434, 1
  %1438 = and i64 %1435, 2
  %1439 = icmp eq i64 %1438, 0
  br i1 %1439, label %1433, label %1475, !llvm.loop !351

1440:                                             ; preds = %1420
  %1441 = add i32 %1424, 63
  %1442 = and i32 %1441, -64
  %1443 = add i32 %1422, 1
  br label %1444

1444:                                             ; preds = %1471, %1440
  %1445 = phi ptr [ %1421, %1440 ], [ %1469, %1471 ]
  %1446 = phi i64 [ %1423, %1440 ], [ %1466, %1471 ]
  %1447 = phi i32 [ %1442, %1440 ], [ %1474, %1471 ]
  %1448 = phi i32 [ %1443, %1440 ], [ 0, %1471 ]
  %1449 = icmp eq i32 %1448, 2
  br i1 %1449, label %1465, label %1450, !prof !369

1450:                                             ; preds = %1444
  %1451 = add i32 %1447, 128
  %1452 = shl i32 %1448, 6
  %1453 = sub i32 %1451, %1452
  br label %1454

1454:                                             ; preds = %1450, %1461
  %1455 = phi i32 [ %1463, %1461 ], [ %1448, %1450 ]
  %1456 = phi i32 [ %1462, %1461 ], [ %1447, %1450 ]
  %1457 = zext i32 %1455 to i64
  %1458 = getelementptr inbounds %struct.bitmap_element_def, ptr %1445, i64 0, i32 3, i64 %1457
  %1459 = load i64, ptr %1458, align 8, !tbaa !253
  %1460 = icmp eq i64 %1459, 0
  br i1 %1460, label %1461, label %1426, !prof !413

1461:                                             ; preds = %1454
  %1462 = add i32 %1456, 64
  %1463 = add i32 %1455, 1
  %1464 = icmp eq i32 %1463, 2
  br i1 %1464, label %1465, label %1454, !prof !414, !llvm.loop !354

1465:                                             ; preds = %1461, %1444
  %1466 = phi i64 [ %1446, %1444 ], [ %1459, %1461 ]
  %1467 = phi i32 [ %1447, %1444 ], [ %1453, %1461 ]
  %1468 = phi i32 [ %1448, %1444 ], [ 2, %1461 ]
  %1469 = load ptr, ptr %1445, align 8, !tbaa !355
  %1470 = icmp eq ptr %1469, null
  br i1 %1470, label %1475, label %1471, !prof !413

1471:                                             ; preds = %1465
  %1472 = getelementptr inbounds %struct.bitmap_element_def, ptr %1469, i64 0, i32 2
  %1473 = load i32, ptr %1472, align 8, !tbaa !349
  %1474 = shl i32 %1473, 7
  br label %1444, !llvm.loop !356

1475:                                             ; preds = %1465, %1433, %1426
  %1476 = phi ptr [ %1427, %1426 ], [ %1427, %1433 ], [ %1469, %1465 ]
  %1477 = phi i32 [ %1428, %1426 ], [ %1428, %1433 ], [ %1468, %1465 ]
  %1478 = phi i64 [ %1429, %1426 ], [ %1436, %1433 ], [ %1466, %1465 ]
  %1479 = phi i32 [ %1430, %1426 ], [ %1437, %1433 ], [ %1467, %1465 ]
  %1480 = phi i1 [ false, %1426 ], [ false, %1433 ], [ true, %1465 ]
  br i1 %1480, label %3348, label %1481, !prof !413

1481:                                             ; preds = %1475
  %1482 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %1483 = load ptr, ptr %1482, align 8, !tbaa !357
  %1484 = zext i32 %1479 to i64
  %1485 = getelementptr inbounds %struct.deps_reg, ptr %1483, i64 %1484
  %1486 = getelementptr inbounds %struct.deps_reg, ptr %1483, i64 %1484, i32 1
  %1487 = load ptr, ptr %1486, align 8, !tbaa !143
  %1488 = icmp eq ptr %1487, null
  br i1 %1488, label %1501, label %1489

1489:                                             ; preds = %1481, %1497
  %1490 = phi ptr [ %1499, %1497 ], [ %1487, %1481 ]
  %1491 = getelementptr inbounds %struct.rtx_def, ptr %1490, i64 0, i32 1
  %1492 = load ptr, ptr %1491, align 8, !tbaa !143
  %1493 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1492), !range !220
  %1494 = icmp eq i8 %1493, 0
  br i1 %1494, label %1495, label %1497

1495:                                             ; preds = %1489
  %1496 = load ptr, ptr %1491, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1496, i32 noundef 11)
  br label %1497

1497:                                             ; preds = %1495, %1489
  %1498 = getelementptr inbounds %struct.rtx_def, ptr %1490, i64 0, i32 1, i32 0, i32 0, i64 1
  %1499 = load ptr, ptr %1498, align 8, !tbaa !143
  %1500 = icmp eq ptr %1499, null
  br i1 %1500, label %1501, label %1489, !llvm.loop !286

1501:                                             ; preds = %1497, %1481
  %1502 = getelementptr inbounds %struct.deps_reg, ptr %1483, i64 %1484, i32 2
  %1503 = load ptr, ptr %1502, align 8, !tbaa !143
  %1504 = icmp eq ptr %1503, null
  br i1 %1504, label %1517, label %1505

1505:                                             ; preds = %1501, %1513
  %1506 = phi ptr [ %1515, %1513 ], [ %1503, %1501 ]
  %1507 = getelementptr inbounds %struct.rtx_def, ptr %1506, i64 0, i32 1
  %1508 = load ptr, ptr %1507, align 8, !tbaa !143
  %1509 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1508), !range !220
  %1510 = icmp eq i8 %1509, 0
  br i1 %1510, label %1511, label %1513

1511:                                             ; preds = %1505
  %1512 = load ptr, ptr %1507, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1512, i32 noundef 12)
  br label %1513

1513:                                             ; preds = %1511, %1505
  %1514 = getelementptr inbounds %struct.rtx_def, ptr %1506, i64 0, i32 1, i32 0, i32 0, i64 1
  %1515 = load ptr, ptr %1514, align 8, !tbaa !143
  %1516 = icmp eq ptr %1515, null
  br i1 %1516, label %1517, label %1505, !llvm.loop !286

1517:                                             ; preds = %1513, %1501
  %1518 = getelementptr inbounds %struct.deps_reg, ptr %1483, i64 %1484, i32 3
  %1519 = load ptr, ptr %1518, align 8, !tbaa !143
  %1520 = icmp eq ptr %1519, null
  br i1 %1520, label %1521, label %1524

1521:                                             ; preds = %1532, %1517
  %1522 = load ptr, ptr %1485, align 8, !tbaa !143
  %1523 = icmp eq ptr %1522, null
  br i1 %1523, label %1548, label %1536

1524:                                             ; preds = %1517, %1532
  %1525 = phi ptr [ %1534, %1532 ], [ %1519, %1517 ]
  %1526 = getelementptr inbounds %struct.rtx_def, ptr %1525, i64 0, i32 1
  %1527 = load ptr, ptr %1526, align 8, !tbaa !143
  %1528 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1527), !range !220
  %1529 = icmp eq i8 %1528, 0
  br i1 %1529, label %1530, label %1532

1530:                                             ; preds = %1524
  %1531 = load ptr, ptr %1526, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1531, i32 noundef 11)
  br label %1532

1532:                                             ; preds = %1530, %1524
  %1533 = getelementptr inbounds %struct.rtx_def, ptr %1525, i64 0, i32 1, i32 0, i32 0, i64 1
  %1534 = load ptr, ptr %1533, align 8, !tbaa !143
  %1535 = icmp eq ptr %1534, null
  br i1 %1535, label %1521, label %1524, !llvm.loop !286

1536:                                             ; preds = %1521, %1544
  %1537 = phi ptr [ %1546, %1544 ], [ %1522, %1521 ]
  %1538 = getelementptr inbounds %struct.rtx_def, ptr %1537, i64 0, i32 1
  %1539 = load ptr, ptr %1538, align 8, !tbaa !143
  %1540 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1539), !range !220
  %1541 = icmp eq i8 %1540, 0
  br i1 %1541, label %1542, label %1544

1542:                                             ; preds = %1536
  %1543 = load ptr, ptr %1538, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1543, i32 noundef 12)
  br label %1544

1544:                                             ; preds = %1542, %1536
  %1545 = getelementptr inbounds %struct.rtx_def, ptr %1537, i64 0, i32 1, i32 0, i32 0, i64 1
  %1546 = load ptr, ptr %1545, align 8, !tbaa !143
  %1547 = icmp eq ptr %1546, null
  br i1 %1547, label %1548, label %1536, !llvm.loop !286

1548:                                             ; preds = %1544, %1521
  %1549 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %1550 = load i8, ptr %1549, align 4
  %1551 = and i8 %1550, 1
  %1552 = icmp eq i8 %1551, 0
  br i1 %1552, label %1553, label %1558

1553:                                             ; preds = %1548
  %1554 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %1555 = load ptr, ptr %1486, align 8, !tbaa !418
  %1556 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %1555) #29
  store ptr %1556, ptr %1486, align 8, !tbaa !418
  %1557 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %1554, i32 noundef %1479) #29
  br label %1558

1558:                                             ; preds = %1553, %1548
  %1559 = lshr i64 %1478, 1
  %1560 = add i32 %1479, 1
  br label %1420, !llvm.loop !419

1561:                                             ; preds = %1265
  %1562 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %1563

1563:                                             ; preds = %1989, %1561
  %1564 = phi ptr [ %1271, %1561 ], [ %1619, %1989 ]
  %1565 = phi i32 [ 0, %1561 ], [ %1620, %1989 ]
  %1566 = phi i64 [ %1276, %1561 ], [ %1990, %1989 ]
  %1567 = phi i32 [ %1279, %1561 ], [ %1991, %1989 ]
  %1568 = icmp eq i64 %1566, 0
  br i1 %1568, label %1583, label %1569, !prof !420

1569:                                             ; preds = %1597, %1563
  %1570 = phi ptr [ %1564, %1563 ], [ %1588, %1597 ]
  %1571 = phi i32 [ %1565, %1563 ], [ %1598, %1597 ]
  %1572 = phi i64 [ %1566, %1563 ], [ %1602, %1597 ]
  %1573 = phi i32 [ %1567, %1563 ], [ %1599, %1597 ]
  %1574 = and i64 %1572, 1
  %1575 = icmp eq i64 %1574, 0
  br i1 %1575, label %1576, label %1618, !prof !421

1576:                                             ; preds = %1569, %1576
  %1577 = phi i32 [ %1580, %1576 ], [ %1573, %1569 ]
  %1578 = phi i64 [ %1579, %1576 ], [ %1572, %1569 ]
  %1579 = lshr exact i64 %1578, 1
  %1580 = add i32 %1577, 1
  %1581 = and i64 %1578, 2
  %1582 = icmp eq i64 %1581, 0
  br i1 %1582, label %1576, label %1618, !prof !422, !llvm.loop !351

1583:                                             ; preds = %1563
  %1584 = add i32 %1567, 63
  %1585 = and i32 %1584, -64
  %1586 = add i32 %1565, 1
  br label %1587

1587:                                             ; preds = %1614, %1583
  %1588 = phi ptr [ %1564, %1583 ], [ %1612, %1614 ]
  %1589 = phi i64 [ %1566, %1583 ], [ %1609, %1614 ]
  %1590 = phi i32 [ %1585, %1583 ], [ %1617, %1614 ]
  %1591 = phi i32 [ %1586, %1583 ], [ 0, %1614 ]
  %1592 = icmp eq i32 %1591, 2
  br i1 %1592, label %1608, label %1593, !prof !423

1593:                                             ; preds = %1587
  %1594 = add i32 %1590, 128
  %1595 = shl i32 %1591, 6
  %1596 = sub i32 %1594, %1595
  br label %1597

1597:                                             ; preds = %1593, %1604
  %1598 = phi i32 [ %1606, %1604 ], [ %1591, %1593 ]
  %1599 = phi i32 [ %1605, %1604 ], [ %1590, %1593 ]
  %1600 = zext i32 %1598 to i64
  %1601 = getelementptr inbounds %struct.bitmap_element_def, ptr %1588, i64 0, i32 3, i64 %1600
  %1602 = load i64, ptr %1601, align 8, !tbaa !253
  %1603 = icmp eq i64 %1602, 0
  br i1 %1603, label %1604, label %1569, !prof !424

1604:                                             ; preds = %1597
  %1605 = add i32 %1599, 64
  %1606 = add i32 %1598, 1
  %1607 = icmp eq i32 %1606, 2
  br i1 %1607, label %1608, label %1597, !prof !425, !llvm.loop !354

1608:                                             ; preds = %1604, %1587
  %1609 = phi i64 [ %1589, %1587 ], [ %1602, %1604 ]
  %1610 = phi i32 [ %1590, %1587 ], [ %1596, %1604 ]
  %1611 = phi i32 [ %1591, %1587 ], [ 2, %1604 ]
  %1612 = load ptr, ptr %1588, align 8, !tbaa !355
  %1613 = icmp eq ptr %1612, null
  br i1 %1613, label %1618, label %1614, !prof !424

1614:                                             ; preds = %1608
  %1615 = getelementptr inbounds %struct.bitmap_element_def, ptr %1612, i64 0, i32 2
  %1616 = load i32, ptr %1615, align 8, !tbaa !349
  %1617 = shl i32 %1616, 7
  br label %1587, !llvm.loop !356

1618:                                             ; preds = %1608, %1576, %1569
  %1619 = phi ptr [ %1570, %1569 ], [ %1570, %1576 ], [ %1612, %1608 ]
  %1620 = phi i32 [ %1571, %1569 ], [ %1571, %1576 ], [ %1611, %1608 ]
  %1621 = phi i64 [ %1572, %1569 ], [ %1579, %1576 ], [ %1609, %1608 ]
  %1622 = phi i32 [ %1573, %1569 ], [ %1580, %1576 ], [ %1610, %1608 ]
  %1623 = phi i1 [ false, %1569 ], [ false, %1576 ], [ true, %1608 ]
  br i1 %1623, label %1992, label %1624, !prof !420

1624:                                             ; preds = %1618
  %1625 = load ptr, ptr %1280, align 8, !tbaa !357
  %1626 = zext i32 %1622 to i64
  %1627 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626
  %1628 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 4
  %1629 = load i32, ptr %1628, align 8, !tbaa !358
  %1630 = load ptr, ptr @compiler_params, align 8, !tbaa !132
  %1631 = getelementptr inbounds %struct.param_info, ptr %1630, i64 14, i32 1
  %1632 = load i32, ptr %1631, align 8, !tbaa !266
  %1633 = icmp sgt i32 %1629, %1632
  br i1 %1633, label %1638, label %1634, !prof !426

1634:                                             ; preds = %1624
  %1635 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 5
  %1636 = load i32, ptr %1635, align 4, !tbaa !416
  %1637 = icmp sgt i32 %1636, %1632
  br i1 %1637, label %1638, label %1649, !prof !427

1638:                                             ; preds = %1634, %1624
  %1639 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 1
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1639, i32 noundef 0, i32 noundef 11)
  %1640 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1640, i32 noundef 0, i32 noundef 12)
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1627, i32 noundef 0, i32 noundef 12)
  %1641 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 3
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1641, i32 noundef 0, i32 noundef 11)
  %1642 = load i8, ptr %1281, align 4
  %1643 = and i8 %1642, 1
  %1644 = icmp eq i8 %1643, 0
  br i1 %1644, label %1645, label %1978, !prof !428

1645:                                             ; preds = %1638
  %1646 = load ptr, ptr %1639, align 8, !tbaa !418
  %1647 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %1646) #29
  store ptr %1647, ptr %1639, align 8, !tbaa !418
  %1648 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 5
  store i32 0, ptr %1648, align 4, !tbaa !416
  store i32 0, ptr %1628, align 8, !tbaa !358
  br label %1978

1649:                                             ; preds = %1634
  %1650 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !143
  %1652 = icmp eq ptr %1651, null
  br i1 %1652, label %1806, label %1653, !prof !429

1653:                                             ; preds = %1649, %1802
  %1654 = phi ptr [ %1804, %1802 ], [ %1651, %1649 ]
  %1655 = getelementptr inbounds %struct.rtx_def, ptr %1654, i64 0, i32 1
  %1656 = load ptr, ptr %1655, align 8, !tbaa !143
  %1657 = load i32, ptr %2, align 8
  %1658 = and i32 %1657, 65535
  %1659 = icmp eq i32 %1658, 10
  br i1 %1659, label %1786, label %1660, !prof !161

1660:                                             ; preds = %1653
  %1661 = load i32, ptr %1656, align 8
  %1662 = and i32 %1661, 65535
  %1663 = icmp eq i32 %1662, 10
  br i1 %1663, label %1786, label %1664, !prof !162

1664:                                             ; preds = %1660
  %1665 = load ptr, ptr %1229, align 8, !tbaa !143
  %1666 = icmp eq ptr %1665, null
  br i1 %1666, label %1701, label %1667, !prof !163

1667:                                             ; preds = %1664
  %1668 = load i32, ptr %1665, align 8
  %1669 = and i32 %1668, 65535
  %1670 = icmp eq i32 %1669, 14
  br i1 %1670, label %1671, label %1674, !prof !163

1671:                                             ; preds = %1667
  %1672 = getelementptr inbounds %struct.rtx_def, ptr %1665, i64 0, i32 1
  %1673 = load ptr, ptr %1672, align 8, !tbaa !143
  br label %1701

1674:                                             ; preds = %1667
  %1675 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1701, label %1677, !prof !164

1677:                                             ; preds = %1674
  %1678 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1701, label %1680, !prof !165

1680:                                             ; preds = %1677
  %1681 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %1682 = getelementptr inbounds %struct.rtx_def, ptr %1681, i64 0, i32 1, i32 0, i32 0, i64 1
  %1683 = load ptr, ptr %1682, align 8, !tbaa !143
  %1684 = getelementptr inbounds %struct.rtx_def, ptr %1683, i64 0, i32 1
  %1685 = getelementptr inbounds %struct.rtx_def, ptr %1683, i64 0, i32 1, i32 0, i32 0, i64 2
  %1686 = load ptr, ptr %1685, align 8, !tbaa !143
  %1687 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %1688 = icmp eq ptr %1686, %1687
  br i1 %1688, label %1689, label %1691, !prof !166

1689:                                             ; preds = %1680
  %1690 = load ptr, ptr %1684, align 8, !tbaa !143
  br label %1701

1691:                                             ; preds = %1680
  %1692 = getelementptr inbounds %struct.rtx_def, ptr %1683, i64 0, i32 1, i32 0, i32 0, i64 1
  %1693 = load ptr, ptr %1692, align 8, !tbaa !143
  %1694 = icmp eq ptr %1693, %1687
  br i1 %1694, label %1695, label %1701

1695:                                             ; preds = %1691
  %1696 = load ptr, ptr %1684, align 8, !tbaa !143
  %1697 = call i32 @reversed_comparison_code(ptr noundef %1696, ptr noundef nonnull %2) #29
  %1698 = icmp ne i32 %1697, 0
  %1699 = zext i1 %1698 to i8
  %1700 = select i1 %1698, ptr %1696, ptr null
  br label %1701

1701:                                             ; preds = %1695, %1691, %1689, %1677, %1674, %1671, %1664
  %1702 = phi i8 [ 0, %1664 ], [ 0, %1671 ], [ 0, %1674 ], [ 0, %1677 ], [ 0, %1689 ], [ 0, %1691 ], [ %1699, %1695 ]
  %1703 = phi ptr [ null, %1664 ], [ %1673, %1671 ], [ null, %1674 ], [ null, %1677 ], [ %1690, %1689 ], [ null, %1691 ], [ %1700, %1695 ]
  %1704 = getelementptr inbounds %struct.rtx_def, ptr %1656, i64 1
  %1705 = load ptr, ptr %1704, align 8, !tbaa !143
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1741, label %1707, !prof !163

1707:                                             ; preds = %1701
  %1708 = load i32, ptr %1705, align 8
  %1709 = and i32 %1708, 65535
  %1710 = icmp eq i32 %1709, 14
  br i1 %1710, label %1711, label %1714, !prof !163

1711:                                             ; preds = %1707
  %1712 = getelementptr inbounds %struct.rtx_def, ptr %1705, i64 0, i32 1
  %1713 = load ptr, ptr %1712, align 8, !tbaa !143
  br label %1741

1714:                                             ; preds = %1707
  %1715 = call i32 @any_condjump_p(ptr noundef nonnull %1656) #29
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1741, label %1717, !prof !164

1717:                                             ; preds = %1714
  %1718 = call i32 @onlyjump_p(ptr noundef nonnull %1656) #29
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1741, label %1720, !prof !165

1720:                                             ; preds = %1717
  %1721 = call ptr @pc_set(ptr noundef nonnull %1656) #29
  %1722 = getelementptr inbounds %struct.rtx_def, ptr %1721, i64 0, i32 1, i32 0, i32 0, i64 1
  %1723 = load ptr, ptr %1722, align 8, !tbaa !143
  %1724 = getelementptr inbounds %struct.rtx_def, ptr %1723, i64 0, i32 1
  %1725 = getelementptr inbounds %struct.rtx_def, ptr %1723, i64 0, i32 1, i32 0, i32 0, i64 2
  %1726 = load ptr, ptr %1725, align 8, !tbaa !143
  %1727 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %1728 = icmp eq ptr %1726, %1727
  br i1 %1728, label %1729, label %1731, !prof !166

1729:                                             ; preds = %1720
  %1730 = load ptr, ptr %1724, align 8, !tbaa !143
  br label %1741

1731:                                             ; preds = %1720
  %1732 = getelementptr inbounds %struct.rtx_def, ptr %1723, i64 0, i32 1, i32 0, i32 0, i64 1
  %1733 = load ptr, ptr %1732, align 8, !tbaa !143
  %1734 = icmp eq ptr %1733, %1727
  br i1 %1734, label %1735, label %1741

1735:                                             ; preds = %1731
  %1736 = load ptr, ptr %1724, align 8, !tbaa !143
  %1737 = call i32 @reversed_comparison_code(ptr noundef %1736, ptr noundef nonnull %1656) #29
  %1738 = icmp ne i32 %1737, 0
  %1739 = zext i1 %1738 to i8
  %1740 = select i1 %1738, ptr %1736, ptr null
  br label %1741

1741:                                             ; preds = %1735, %1731, %1729, %1717, %1714, %1711, %1701
  %1742 = phi i8 [ 0, %1701 ], [ 0, %1711 ], [ 0, %1714 ], [ 0, %1717 ], [ 0, %1729 ], [ 0, %1731 ], [ %1739, %1735 ]
  %1743 = phi ptr [ null, %1701 ], [ %1713, %1711 ], [ null, %1714 ], [ null, %1717 ], [ %1730, %1729 ], [ null, %1731 ], [ %1740, %1735 ]
  %1744 = icmp ne ptr %1703, null
  %1745 = icmp ne ptr %1743, null
  %1746 = select i1 %1744, i1 %1745, i1 false, !prof !167
  br i1 %1746, label %1747, label %1786, !prof !168

1747:                                             ; preds = %1741
  %1748 = load i32, ptr %1703, align 8
  %1749 = and i32 %1748, 65535
  %1750 = zext nneg i32 %1749 to i64
  %1751 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1750
  %1752 = load i32, ptr %1751, align 4, !tbaa !147
  %1753 = icmp ult i32 %1752, 2
  br i1 %1753, label %1754, label %1786

1754:                                             ; preds = %1747
  %1755 = load i32, ptr %1743, align 8
  %1756 = and i32 %1755, 65535
  %1757 = zext nneg i32 %1756 to i64
  %1758 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1757
  %1759 = load i32, ptr %1758, align 4, !tbaa !147
  %1760 = icmp ult i32 %1759, 2
  br i1 %1760, label %1761, label %1786

1761:                                             ; preds = %1754
  %1762 = icmp eq i8 %1702, %1742
  br i1 %1762, label %1763, label %1765

1763:                                             ; preds = %1761
  %1764 = call i32 @reversed_comparison_code(ptr noundef nonnull %1743, ptr noundef null) #29
  br label %1765

1765:                                             ; preds = %1763, %1761
  %1766 = phi i32 [ %1764, %1763 ], [ %1756, %1761 ]
  %1767 = icmp eq i32 %1749, %1766
  br i1 %1767, label %1768, label %1786

1768:                                             ; preds = %1765
  %1769 = getelementptr inbounds %struct.rtx_def, ptr %1703, i64 0, i32 1
  %1770 = load ptr, ptr %1769, align 8, !tbaa !143
  %1771 = getelementptr inbounds %struct.rtx_def, ptr %1743, i64 0, i32 1
  %1772 = load ptr, ptr %1771, align 8, !tbaa !143
  %1773 = icmp eq ptr %1770, %1772
  br i1 %1773, label %1774, label %1786

1774:                                             ; preds = %1768
  %1775 = getelementptr inbounds %struct.rtx_def, ptr %1703, i64 0, i32 1, i32 0, i32 0, i64 1
  %1776 = load ptr, ptr %1775, align 8, !tbaa !143
  %1777 = getelementptr inbounds %struct.rtx_def, ptr %1743, i64 0, i32 1, i32 0, i32 0, i64 1
  %1778 = load ptr, ptr %1777, align 8, !tbaa !143
  %1779 = icmp eq ptr %1776, %1778
  br i1 %1779, label %1780, label %1786

1780:                                             ; preds = %1774
  %1781 = call i32 @modified_in_p(ptr noundef nonnull %1703, ptr noundef nonnull %1656) #29
  %1782 = icmp eq i32 %1781, 0
  br i1 %1782, label %1783, label %1786

1783:                                             ; preds = %1780
  %1784 = call i32 @modified_in_p(ptr noundef nonnull %1743, ptr noundef nonnull %2) #29
  %1785 = icmp eq i32 %1784, 0
  br i1 %1785, label %1802, label %1786

1786:                                             ; preds = %1783, %1780, %1774, %1768, %1765, %1754, %1747, %1741, %1660, %1653
  %1787 = load ptr, ptr %1655, align 8, !tbaa !143
  %1788 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %1793, label %1790, !prof !280

1790:                                             ; preds = %1786
  %1791 = icmp eq ptr %1788, %2
  br i1 %1791, label %1794, label %1792, !prof !281

1792:                                             ; preds = %1790
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %1794

1793:                                             ; preds = %1786
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %1794

1794:                                             ; preds = %1793, %1792, %1790
  %1795 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %1796 = getelementptr inbounds %struct.sched_deps_info_def, ptr %1795, i64 0, i32 11
  %1797 = load ptr, ptr %1796, align 8, !tbaa !282
  %1798 = icmp eq ptr %1797, null
  br i1 %1798, label %1800, label %1799, !prof !283

1799:                                             ; preds = %1794
  call void %1797(ptr noundef %1787, i32 noundef 33554432) #29, !prof !430
  br label %1800

1800:                                             ; preds = %1799, %1794
  br i1 %1789, label %1801, label %1802, !prof !280

1801:                                             ; preds = %1800
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %1802

1802:                                             ; preds = %1783, %1801, %1800
  %1803 = getelementptr inbounds %struct.rtx_def, ptr %1654, i64 0, i32 1, i32 0, i32 0, i64 1
  %1804 = load ptr, ptr %1803, align 8, !tbaa !143
  %1805 = icmp eq ptr %1804, null
  br i1 %1805, label %1806, label %1653, !prof !431, !llvm.loop !286

1806:                                             ; preds = %1802, %1649
  %1807 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 2
  %1808 = load ptr, ptr %1807, align 8, !tbaa !143
  %1809 = icmp eq ptr %1808, null
  br i1 %1809, label %1810, label %1813, !prof !336

1810:                                             ; preds = %1821, %1806
  %1811 = load ptr, ptr %1627, align 8, !tbaa !143
  %1812 = icmp eq ptr %1811, null
  br i1 %1812, label %1978, label %1825, !prof !432

1813:                                             ; preds = %1806, %1821
  %1814 = phi ptr [ %1823, %1821 ], [ %1808, %1806 ]
  %1815 = getelementptr inbounds %struct.rtx_def, ptr %1814, i64 0, i32 1
  %1816 = load ptr, ptr %1815, align 8, !tbaa !143
  %1817 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %1816), !range !220
  %1818 = icmp eq i8 %1817, 0
  br i1 %1818, label %1819, label %1821

1819:                                             ; preds = %1813
  %1820 = load ptr, ptr %1815, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %1820, i32 noundef 12)
  br label %1821

1821:                                             ; preds = %1819, %1813
  %1822 = getelementptr inbounds %struct.rtx_def, ptr %1814, i64 0, i32 1, i32 0, i32 0, i64 1
  %1823 = load ptr, ptr %1822, align 8, !tbaa !143
  %1824 = icmp eq ptr %1823, null
  br i1 %1824, label %1810, label %1813, !prof !336, !llvm.loop !286

1825:                                             ; preds = %1810, %1974
  %1826 = phi ptr [ %1976, %1974 ], [ %1811, %1810 ]
  %1827 = getelementptr inbounds %struct.rtx_def, ptr %1826, i64 0, i32 1
  %1828 = load ptr, ptr %1827, align 8, !tbaa !143
  %1829 = load i32, ptr %2, align 8
  %1830 = and i32 %1829, 65535
  %1831 = icmp eq i32 %1830, 10
  br i1 %1831, label %1958, label %1832, !prof !161

1832:                                             ; preds = %1825
  %1833 = load i32, ptr %1828, align 8
  %1834 = and i32 %1833, 65535
  %1835 = icmp eq i32 %1834, 10
  br i1 %1835, label %1958, label %1836, !prof !162

1836:                                             ; preds = %1832
  %1837 = load ptr, ptr %1229, align 8, !tbaa !143
  %1838 = icmp eq ptr %1837, null
  br i1 %1838, label %1873, label %1839, !prof !163

1839:                                             ; preds = %1836
  %1840 = load i32, ptr %1837, align 8
  %1841 = and i32 %1840, 65535
  %1842 = icmp eq i32 %1841, 14
  br i1 %1842, label %1843, label %1846, !prof !163

1843:                                             ; preds = %1839
  %1844 = getelementptr inbounds %struct.rtx_def, ptr %1837, i64 0, i32 1
  %1845 = load ptr, ptr %1844, align 8, !tbaa !143
  br label %1873

1846:                                             ; preds = %1839
  %1847 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1873, label %1849, !prof !164

1849:                                             ; preds = %1846
  %1850 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1873, label %1852, !prof !165

1852:                                             ; preds = %1849
  %1853 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %1854 = getelementptr inbounds %struct.rtx_def, ptr %1853, i64 0, i32 1, i32 0, i32 0, i64 1
  %1855 = load ptr, ptr %1854, align 8, !tbaa !143
  %1856 = getelementptr inbounds %struct.rtx_def, ptr %1855, i64 0, i32 1
  %1857 = getelementptr inbounds %struct.rtx_def, ptr %1855, i64 0, i32 1, i32 0, i32 0, i64 2
  %1858 = load ptr, ptr %1857, align 8, !tbaa !143
  %1859 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %1860 = icmp eq ptr %1858, %1859
  br i1 %1860, label %1861, label %1863, !prof !166

1861:                                             ; preds = %1852
  %1862 = load ptr, ptr %1856, align 8, !tbaa !143
  br label %1873

1863:                                             ; preds = %1852
  %1864 = getelementptr inbounds %struct.rtx_def, ptr %1855, i64 0, i32 1, i32 0, i32 0, i64 1
  %1865 = load ptr, ptr %1864, align 8, !tbaa !143
  %1866 = icmp eq ptr %1865, %1859
  br i1 %1866, label %1867, label %1873

1867:                                             ; preds = %1863
  %1868 = load ptr, ptr %1856, align 8, !tbaa !143
  %1869 = call i32 @reversed_comparison_code(ptr noundef %1868, ptr noundef nonnull %2) #29
  %1870 = icmp ne i32 %1869, 0
  %1871 = zext i1 %1870 to i8
  %1872 = select i1 %1870, ptr %1868, ptr null
  br label %1873

1873:                                             ; preds = %1867, %1863, %1861, %1849, %1846, %1843, %1836
  %1874 = phi i8 [ 0, %1836 ], [ 0, %1843 ], [ 0, %1846 ], [ 0, %1849 ], [ 0, %1861 ], [ 0, %1863 ], [ %1871, %1867 ]
  %1875 = phi ptr [ null, %1836 ], [ %1845, %1843 ], [ null, %1846 ], [ null, %1849 ], [ %1862, %1861 ], [ null, %1863 ], [ %1872, %1867 ]
  %1876 = getelementptr inbounds %struct.rtx_def, ptr %1828, i64 1
  %1877 = load ptr, ptr %1876, align 8, !tbaa !143
  %1878 = icmp eq ptr %1877, null
  br i1 %1878, label %1913, label %1879, !prof !163

1879:                                             ; preds = %1873
  %1880 = load i32, ptr %1877, align 8
  %1881 = and i32 %1880, 65535
  %1882 = icmp eq i32 %1881, 14
  br i1 %1882, label %1883, label %1886, !prof !163

1883:                                             ; preds = %1879
  %1884 = getelementptr inbounds %struct.rtx_def, ptr %1877, i64 0, i32 1
  %1885 = load ptr, ptr %1884, align 8, !tbaa !143
  br label %1913

1886:                                             ; preds = %1879
  %1887 = call i32 @any_condjump_p(ptr noundef nonnull %1828) #29
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1913, label %1889, !prof !164

1889:                                             ; preds = %1886
  %1890 = call i32 @onlyjump_p(ptr noundef nonnull %1828) #29
  %1891 = icmp eq i32 %1890, 0
  br i1 %1891, label %1913, label %1892, !prof !165

1892:                                             ; preds = %1889
  %1893 = call ptr @pc_set(ptr noundef nonnull %1828) #29
  %1894 = getelementptr inbounds %struct.rtx_def, ptr %1893, i64 0, i32 1, i32 0, i32 0, i64 1
  %1895 = load ptr, ptr %1894, align 8, !tbaa !143
  %1896 = getelementptr inbounds %struct.rtx_def, ptr %1895, i64 0, i32 1
  %1897 = getelementptr inbounds %struct.rtx_def, ptr %1895, i64 0, i32 1, i32 0, i32 0, i64 2
  %1898 = load ptr, ptr %1897, align 8, !tbaa !143
  %1899 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %1900 = icmp eq ptr %1898, %1899
  br i1 %1900, label %1901, label %1903, !prof !166

1901:                                             ; preds = %1892
  %1902 = load ptr, ptr %1896, align 8, !tbaa !143
  br label %1913

1903:                                             ; preds = %1892
  %1904 = getelementptr inbounds %struct.rtx_def, ptr %1895, i64 0, i32 1, i32 0, i32 0, i64 1
  %1905 = load ptr, ptr %1904, align 8, !tbaa !143
  %1906 = icmp eq ptr %1905, %1899
  br i1 %1906, label %1907, label %1913

1907:                                             ; preds = %1903
  %1908 = load ptr, ptr %1896, align 8, !tbaa !143
  %1909 = call i32 @reversed_comparison_code(ptr noundef %1908, ptr noundef nonnull %1828) #29
  %1910 = icmp ne i32 %1909, 0
  %1911 = zext i1 %1910 to i8
  %1912 = select i1 %1910, ptr %1908, ptr null
  br label %1913

1913:                                             ; preds = %1907, %1903, %1901, %1889, %1886, %1883, %1873
  %1914 = phi i8 [ 0, %1873 ], [ 0, %1883 ], [ 0, %1886 ], [ 0, %1889 ], [ 0, %1901 ], [ 0, %1903 ], [ %1911, %1907 ]
  %1915 = phi ptr [ null, %1873 ], [ %1885, %1883 ], [ null, %1886 ], [ null, %1889 ], [ %1902, %1901 ], [ null, %1903 ], [ %1912, %1907 ]
  %1916 = icmp ne ptr %1875, null
  %1917 = icmp ne ptr %1915, null
  %1918 = select i1 %1916, i1 %1917, i1 false, !prof !167
  br i1 %1918, label %1919, label %1958, !prof !168

1919:                                             ; preds = %1913
  %1920 = load i32, ptr %1875, align 8
  %1921 = and i32 %1920, 65535
  %1922 = zext nneg i32 %1921 to i64
  %1923 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1922
  %1924 = load i32, ptr %1923, align 4, !tbaa !147
  %1925 = icmp ult i32 %1924, 2
  br i1 %1925, label %1926, label %1958

1926:                                             ; preds = %1919
  %1927 = load i32, ptr %1915, align 8
  %1928 = and i32 %1927, 65535
  %1929 = zext nneg i32 %1928 to i64
  %1930 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1929
  %1931 = load i32, ptr %1930, align 4, !tbaa !147
  %1932 = icmp ult i32 %1931, 2
  br i1 %1932, label %1933, label %1958

1933:                                             ; preds = %1926
  %1934 = icmp eq i8 %1874, %1914
  br i1 %1934, label %1935, label %1937

1935:                                             ; preds = %1933
  %1936 = call i32 @reversed_comparison_code(ptr noundef nonnull %1915, ptr noundef null) #29
  br label %1937

1937:                                             ; preds = %1935, %1933
  %1938 = phi i32 [ %1936, %1935 ], [ %1928, %1933 ]
  %1939 = icmp eq i32 %1921, %1938
  br i1 %1939, label %1940, label %1958

1940:                                             ; preds = %1937
  %1941 = getelementptr inbounds %struct.rtx_def, ptr %1875, i64 0, i32 1
  %1942 = load ptr, ptr %1941, align 8, !tbaa !143
  %1943 = getelementptr inbounds %struct.rtx_def, ptr %1915, i64 0, i32 1
  %1944 = load ptr, ptr %1943, align 8, !tbaa !143
  %1945 = icmp eq ptr %1942, %1944
  br i1 %1945, label %1946, label %1958

1946:                                             ; preds = %1940
  %1947 = getelementptr inbounds %struct.rtx_def, ptr %1875, i64 0, i32 1, i32 0, i32 0, i64 1
  %1948 = load ptr, ptr %1947, align 8, !tbaa !143
  %1949 = getelementptr inbounds %struct.rtx_def, ptr %1915, i64 0, i32 1, i32 0, i32 0, i64 1
  %1950 = load ptr, ptr %1949, align 8, !tbaa !143
  %1951 = icmp eq ptr %1948, %1950
  br i1 %1951, label %1952, label %1958

1952:                                             ; preds = %1946
  %1953 = call i32 @modified_in_p(ptr noundef nonnull %1875, ptr noundef nonnull %1828) #29
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1955, label %1958

1955:                                             ; preds = %1952
  %1956 = call i32 @modified_in_p(ptr noundef nonnull %1915, ptr noundef nonnull %2) #29
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %1974, label %1958

1958:                                             ; preds = %1955, %1952, %1946, %1940, %1937, %1926, %1919, %1913, %1832, %1825
  %1959 = load ptr, ptr %1827, align 8, !tbaa !143
  %1960 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1965, label %1962, !prof !280

1962:                                             ; preds = %1958
  %1963 = icmp eq ptr %1960, %2
  br i1 %1963, label %1966, label %1964, !prof !281

1964:                                             ; preds = %1962
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %1966

1965:                                             ; preds = %1958
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %1966

1966:                                             ; preds = %1965, %1964, %1962
  %1967 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %1968 = getelementptr inbounds %struct.sched_deps_info_def, ptr %1967, i64 0, i32 11
  %1969 = load ptr, ptr %1968, align 8, !tbaa !282
  %1970 = icmp eq ptr %1969, null
  br i1 %1970, label %1972, label %1971, !prof !283

1971:                                             ; preds = %1966
  call void %1969(ptr noundef %1959, i32 noundef 67108864) #29, !prof !433
  br label %1972

1972:                                             ; preds = %1971, %1966
  br i1 %1961, label %1973, label %1974, !prof !280

1973:                                             ; preds = %1972
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %1974

1974:                                             ; preds = %1955, %1973, %1972
  %1975 = getelementptr inbounds %struct.rtx_def, ptr %1826, i64 0, i32 1, i32 0, i32 0, i64 1
  %1976 = load ptr, ptr %1975, align 8, !tbaa !143
  %1977 = icmp eq ptr %1976, null
  br i1 %1977, label %1978, label %1825, !prof !434, !llvm.loop !286

1978:                                             ; preds = %1974, %1810, %1638, %1645
  %1979 = load i8, ptr %1562, align 4
  %1980 = and i8 %1979, 1
  %1981 = icmp eq i8 %1980, 0
  br i1 %1981, label %1982, label %1989, !prof !435

1982:                                             ; preds = %1978
  %1983 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 5
  %1984 = load i32, ptr %1983, align 4, !tbaa !416
  %1985 = add nsw i32 %1984, 1
  store i32 %1985, ptr %1983, align 4, !tbaa !416
  %1986 = getelementptr inbounds %struct.deps_reg, ptr %1625, i64 %1626, i32 3
  %1987 = load ptr, ptr %1986, align 8, !tbaa !415
  %1988 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %1987) #29
  store ptr %1988, ptr %1986, align 8, !tbaa !415
  br label %1989

1989:                                             ; preds = %1982, %1978
  %1990 = lshr i64 %1621, 1
  %1991 = add i32 %1622, 1
  br label %1563, !llvm.loop !436

1992:                                             ; preds = %1618
  %1993 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %1994 = load ptr, ptr %1993, align 8, !tbaa !347
  %1995 = icmp eq ptr %1994, null
  %1996 = select i1 %1995, ptr @bitmap_zero_bits, ptr %1994, !prof !437
  %1997 = getelementptr inbounds %struct.bitmap_element_def, ptr %1996, i64 0, i32 2
  %1998 = load i32, ptr %1997, align 8, !tbaa !349
  %1999 = shl i32 %1998, 7
  %2000 = getelementptr inbounds %struct.bitmap_element_def, ptr %1996, i64 0, i32 3
  %2001 = load i64, ptr %2000, align 8, !tbaa !253
  %2002 = icmp eq i64 %2001, 0
  %2003 = zext i1 %2002 to i32
  %2004 = or disjoint i32 %1999, %2003
  br label %2005

2005:                                             ; preds = %3345, %1992
  %2006 = phi ptr [ %1996, %1992 ], [ %2061, %3345 ]
  %2007 = phi i32 [ 0, %1992 ], [ %2062, %3345 ]
  %2008 = phi i64 [ %2001, %1992 ], [ %3346, %3345 ]
  %2009 = phi i32 [ %2004, %1992 ], [ %3347, %3345 ]
  %2010 = icmp eq i64 %2008, 0
  br i1 %2010, label %2025, label %2011, !prof !438

2011:                                             ; preds = %2039, %2005
  %2012 = phi ptr [ %2006, %2005 ], [ %2030, %2039 ]
  %2013 = phi i32 [ %2007, %2005 ], [ %2040, %2039 ]
  %2014 = phi i64 [ %2008, %2005 ], [ %2044, %2039 ]
  %2015 = phi i32 [ %2009, %2005 ], [ %2041, %2039 ]
  %2016 = and i64 %2014, 1
  %2017 = icmp eq i64 %2016, 0
  br i1 %2017, label %2018, label %2060, !prof !439

2018:                                             ; preds = %2011, %2018
  %2019 = phi i32 [ %2022, %2018 ], [ %2015, %2011 ]
  %2020 = phi i64 [ %2021, %2018 ], [ %2014, %2011 ]
  %2021 = lshr exact i64 %2020, 1
  %2022 = add i32 %2019, 1
  %2023 = and i64 %2020, 2
  %2024 = icmp eq i64 %2023, 0
  br i1 %2024, label %2018, label %2060, !prof !440, !llvm.loop !351

2025:                                             ; preds = %2005
  %2026 = add i32 %2009, 63
  %2027 = and i32 %2026, -64
  %2028 = add i32 %2007, 1
  br label %2029

2029:                                             ; preds = %2056, %2025
  %2030 = phi ptr [ %2006, %2025 ], [ %2054, %2056 ]
  %2031 = phi i64 [ %2008, %2025 ], [ %2051, %2056 ]
  %2032 = phi i32 [ %2027, %2025 ], [ %2059, %2056 ]
  %2033 = phi i32 [ %2028, %2025 ], [ 0, %2056 ]
  %2034 = icmp eq i32 %2033, 2
  br i1 %2034, label %2050, label %2035, !prof !423

2035:                                             ; preds = %2029
  %2036 = add i32 %2032, 128
  %2037 = shl i32 %2033, 6
  %2038 = sub i32 %2036, %2037
  br label %2039

2039:                                             ; preds = %2035, %2046
  %2040 = phi i32 [ %2048, %2046 ], [ %2033, %2035 ]
  %2041 = phi i32 [ %2047, %2046 ], [ %2032, %2035 ]
  %2042 = zext i32 %2040 to i64
  %2043 = getelementptr inbounds %struct.bitmap_element_def, ptr %2030, i64 0, i32 3, i64 %2042
  %2044 = load i64, ptr %2043, align 8, !tbaa !253
  %2045 = icmp eq i64 %2044, 0
  br i1 %2045, label %2046, label %2011, !prof !424

2046:                                             ; preds = %2039
  %2047 = add i32 %2041, 64
  %2048 = add i32 %2040, 1
  %2049 = icmp eq i32 %2048, 2
  br i1 %2049, label %2050, label %2039, !prof !425, !llvm.loop !354

2050:                                             ; preds = %2046, %2029
  %2051 = phi i64 [ %2031, %2029 ], [ %2044, %2046 ]
  %2052 = phi i32 [ %2032, %2029 ], [ %2038, %2046 ]
  %2053 = phi i32 [ %2033, %2029 ], [ 2, %2046 ]
  %2054 = load ptr, ptr %2030, align 8, !tbaa !355
  %2055 = icmp eq ptr %2054, null
  br i1 %2055, label %2060, label %2056, !prof !424

2056:                                             ; preds = %2050
  %2057 = getelementptr inbounds %struct.bitmap_element_def, ptr %2054, i64 0, i32 2
  %2058 = load i32, ptr %2057, align 8, !tbaa !349
  %2059 = shl i32 %2058, 7
  br label %2029, !llvm.loop !356

2060:                                             ; preds = %2050, %2018, %2011
  %2061 = phi ptr [ %2012, %2011 ], [ %2012, %2018 ], [ %2054, %2050 ]
  %2062 = phi i32 [ %2013, %2011 ], [ %2013, %2018 ], [ %2053, %2050 ]
  %2063 = phi i64 [ %2014, %2011 ], [ %2021, %2018 ], [ %2051, %2050 ]
  %2064 = phi i32 [ %2015, %2011 ], [ %2022, %2018 ], [ %2052, %2050 ]
  %2065 = phi i1 [ false, %2011 ], [ false, %2018 ], [ true, %2050 ]
  br i1 %2065, label %3348, label %2066, !prof !438

2066:                                             ; preds = %2060
  %2067 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %2068 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %2069 = load ptr, ptr %2067, align 8, !tbaa !357
  %2070 = zext i32 %2064 to i64
  %2071 = getelementptr inbounds %struct.deps_reg, ptr %2069, i64 %2070
  %2072 = getelementptr inbounds %struct.deps_reg, ptr %2069, i64 %2070, i32 1
  %2073 = load i8, ptr %2068, align 4
  %2074 = and i8 %2073, 1
  %2075 = icmp eq i8 %2074, 0
  %2076 = load ptr, ptr %2072, align 8, !tbaa !132
  br i1 %2075, label %2232, label %2077, !prof !278

2077:                                             ; preds = %2066
  %2078 = icmp eq ptr %2076, null
  br i1 %2078, label %2387, label %2079, !prof !279

2079:                                             ; preds = %2077, %2228
  %2080 = phi ptr [ %2230, %2228 ], [ %2076, %2077 ]
  %2081 = getelementptr inbounds %struct.rtx_def, ptr %2080, i64 0, i32 1
  %2082 = load ptr, ptr %2081, align 8, !tbaa !143
  %2083 = load i32, ptr %2, align 8
  %2084 = and i32 %2083, 65535
  %2085 = icmp eq i32 %2084, 10
  br i1 %2085, label %2212, label %2086, !prof !161

2086:                                             ; preds = %2079
  %2087 = load i32, ptr %2082, align 8
  %2088 = and i32 %2087, 65535
  %2089 = icmp eq i32 %2088, 10
  br i1 %2089, label %2212, label %2090, !prof !162

2090:                                             ; preds = %2086
  %2091 = load ptr, ptr %1229, align 8, !tbaa !143
  %2092 = icmp eq ptr %2091, null
  br i1 %2092, label %2127, label %2093, !prof !163

2093:                                             ; preds = %2090
  %2094 = load i32, ptr %2091, align 8
  %2095 = and i32 %2094, 65535
  %2096 = icmp eq i32 %2095, 14
  br i1 %2096, label %2097, label %2100, !prof !163

2097:                                             ; preds = %2093
  %2098 = getelementptr inbounds %struct.rtx_def, ptr %2091, i64 0, i32 1
  %2099 = load ptr, ptr %2098, align 8, !tbaa !143
  br label %2127

2100:                                             ; preds = %2093
  %2101 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2127, label %2103, !prof !164

2103:                                             ; preds = %2100
  %2104 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2127, label %2106, !prof !165

2106:                                             ; preds = %2103
  %2107 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %2108 = getelementptr inbounds %struct.rtx_def, ptr %2107, i64 0, i32 1, i32 0, i32 0, i64 1
  %2109 = load ptr, ptr %2108, align 8, !tbaa !143
  %2110 = getelementptr inbounds %struct.rtx_def, ptr %2109, i64 0, i32 1
  %2111 = getelementptr inbounds %struct.rtx_def, ptr %2109, i64 0, i32 1, i32 0, i32 0, i64 2
  %2112 = load ptr, ptr %2111, align 8, !tbaa !143
  %2113 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2114 = icmp eq ptr %2112, %2113
  br i1 %2114, label %2115, label %2117, !prof !166

2115:                                             ; preds = %2106
  %2116 = load ptr, ptr %2110, align 8, !tbaa !143
  br label %2127

2117:                                             ; preds = %2106
  %2118 = getelementptr inbounds %struct.rtx_def, ptr %2109, i64 0, i32 1, i32 0, i32 0, i64 1
  %2119 = load ptr, ptr %2118, align 8, !tbaa !143
  %2120 = icmp eq ptr %2119, %2113
  br i1 %2120, label %2121, label %2127

2121:                                             ; preds = %2117
  %2122 = load ptr, ptr %2110, align 8, !tbaa !143
  %2123 = call i32 @reversed_comparison_code(ptr noundef %2122, ptr noundef nonnull %2) #29
  %2124 = icmp ne i32 %2123, 0
  %2125 = zext i1 %2124 to i8
  %2126 = select i1 %2124, ptr %2122, ptr null
  br label %2127

2127:                                             ; preds = %2121, %2117, %2115, %2103, %2100, %2097, %2090
  %2128 = phi i8 [ 0, %2090 ], [ 0, %2097 ], [ 0, %2100 ], [ 0, %2103 ], [ 0, %2115 ], [ 0, %2117 ], [ %2125, %2121 ]
  %2129 = phi ptr [ null, %2090 ], [ %2099, %2097 ], [ null, %2100 ], [ null, %2103 ], [ %2116, %2115 ], [ null, %2117 ], [ %2126, %2121 ]
  %2130 = getelementptr inbounds %struct.rtx_def, ptr %2082, i64 1
  %2131 = load ptr, ptr %2130, align 8, !tbaa !143
  %2132 = icmp eq ptr %2131, null
  br i1 %2132, label %2167, label %2133, !prof !163

2133:                                             ; preds = %2127
  %2134 = load i32, ptr %2131, align 8
  %2135 = and i32 %2134, 65535
  %2136 = icmp eq i32 %2135, 14
  br i1 %2136, label %2137, label %2140, !prof !163

2137:                                             ; preds = %2133
  %2138 = getelementptr inbounds %struct.rtx_def, ptr %2131, i64 0, i32 1
  %2139 = load ptr, ptr %2138, align 8, !tbaa !143
  br label %2167

2140:                                             ; preds = %2133
  %2141 = call i32 @any_condjump_p(ptr noundef nonnull %2082) #29
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2167, label %2143, !prof !164

2143:                                             ; preds = %2140
  %2144 = call i32 @onlyjump_p(ptr noundef nonnull %2082) #29
  %2145 = icmp eq i32 %2144, 0
  br i1 %2145, label %2167, label %2146, !prof !165

2146:                                             ; preds = %2143
  %2147 = call ptr @pc_set(ptr noundef nonnull %2082) #29
  %2148 = getelementptr inbounds %struct.rtx_def, ptr %2147, i64 0, i32 1, i32 0, i32 0, i64 1
  %2149 = load ptr, ptr %2148, align 8, !tbaa !143
  %2150 = getelementptr inbounds %struct.rtx_def, ptr %2149, i64 0, i32 1
  %2151 = getelementptr inbounds %struct.rtx_def, ptr %2149, i64 0, i32 1, i32 0, i32 0, i64 2
  %2152 = load ptr, ptr %2151, align 8, !tbaa !143
  %2153 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2154 = icmp eq ptr %2152, %2153
  br i1 %2154, label %2155, label %2157, !prof !166

2155:                                             ; preds = %2146
  %2156 = load ptr, ptr %2150, align 8, !tbaa !143
  br label %2167

2157:                                             ; preds = %2146
  %2158 = getelementptr inbounds %struct.rtx_def, ptr %2149, i64 0, i32 1, i32 0, i32 0, i64 1
  %2159 = load ptr, ptr %2158, align 8, !tbaa !143
  %2160 = icmp eq ptr %2159, %2153
  br i1 %2160, label %2161, label %2167

2161:                                             ; preds = %2157
  %2162 = load ptr, ptr %2150, align 8, !tbaa !143
  %2163 = call i32 @reversed_comparison_code(ptr noundef %2162, ptr noundef nonnull %2082) #29
  %2164 = icmp ne i32 %2163, 0
  %2165 = zext i1 %2164 to i8
  %2166 = select i1 %2164, ptr %2162, ptr null
  br label %2167

2167:                                             ; preds = %2161, %2157, %2155, %2143, %2140, %2137, %2127
  %2168 = phi i8 [ 0, %2127 ], [ 0, %2137 ], [ 0, %2140 ], [ 0, %2143 ], [ 0, %2155 ], [ 0, %2157 ], [ %2165, %2161 ]
  %2169 = phi ptr [ null, %2127 ], [ %2139, %2137 ], [ null, %2140 ], [ null, %2143 ], [ %2156, %2155 ], [ null, %2157 ], [ %2166, %2161 ]
  %2170 = icmp ne ptr %2129, null
  %2171 = icmp ne ptr %2169, null
  %2172 = select i1 %2170, i1 %2171, i1 false, !prof !167
  br i1 %2172, label %2173, label %2212, !prof !168

2173:                                             ; preds = %2167
  %2174 = load i32, ptr %2129, align 8
  %2175 = and i32 %2174, 65535
  %2176 = zext nneg i32 %2175 to i64
  %2177 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2176
  %2178 = load i32, ptr %2177, align 4, !tbaa !147
  %2179 = icmp ult i32 %2178, 2
  br i1 %2179, label %2180, label %2212

2180:                                             ; preds = %2173
  %2181 = load i32, ptr %2169, align 8
  %2182 = and i32 %2181, 65535
  %2183 = zext nneg i32 %2182 to i64
  %2184 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2183
  %2185 = load i32, ptr %2184, align 4, !tbaa !147
  %2186 = icmp ult i32 %2185, 2
  br i1 %2186, label %2187, label %2212

2187:                                             ; preds = %2180
  %2188 = icmp eq i8 %2128, %2168
  br i1 %2188, label %2189, label %2191

2189:                                             ; preds = %2187
  %2190 = call i32 @reversed_comparison_code(ptr noundef nonnull %2169, ptr noundef null) #29
  br label %2191

2191:                                             ; preds = %2189, %2187
  %2192 = phi i32 [ %2190, %2189 ], [ %2182, %2187 ]
  %2193 = icmp eq i32 %2175, %2192
  br i1 %2193, label %2194, label %2212

2194:                                             ; preds = %2191
  %2195 = getelementptr inbounds %struct.rtx_def, ptr %2129, i64 0, i32 1
  %2196 = load ptr, ptr %2195, align 8, !tbaa !143
  %2197 = getelementptr inbounds %struct.rtx_def, ptr %2169, i64 0, i32 1
  %2198 = load ptr, ptr %2197, align 8, !tbaa !143
  %2199 = icmp eq ptr %2196, %2198
  br i1 %2199, label %2200, label %2212

2200:                                             ; preds = %2194
  %2201 = getelementptr inbounds %struct.rtx_def, ptr %2129, i64 0, i32 1, i32 0, i32 0, i64 1
  %2202 = load ptr, ptr %2201, align 8, !tbaa !143
  %2203 = getelementptr inbounds %struct.rtx_def, ptr %2169, i64 0, i32 1, i32 0, i32 0, i64 1
  %2204 = load ptr, ptr %2203, align 8, !tbaa !143
  %2205 = icmp eq ptr %2202, %2204
  br i1 %2205, label %2206, label %2212

2206:                                             ; preds = %2200
  %2207 = call i32 @modified_in_p(ptr noundef nonnull %2129, ptr noundef nonnull %2082) #29
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2209, label %2212

2209:                                             ; preds = %2206
  %2210 = call i32 @modified_in_p(ptr noundef nonnull %2169, ptr noundef nonnull %2) #29
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2228, label %2212

2212:                                             ; preds = %2209, %2206, %2200, %2194, %2191, %2180, %2173, %2167, %2086, %2079
  %2213 = load ptr, ptr %2081, align 8, !tbaa !143
  %2214 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %2215 = icmp eq ptr %2214, null
  br i1 %2215, label %2219, label %2216, !prof !280

2216:                                             ; preds = %2212
  %2217 = icmp eq ptr %2214, %2
  br i1 %2217, label %2220, label %2218, !prof !281

2218:                                             ; preds = %2216
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %2220

2219:                                             ; preds = %2212
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %2220

2220:                                             ; preds = %2219, %2218, %2216
  %2221 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %2222 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2221, i64 0, i32 11
  %2223 = load ptr, ptr %2222, align 8, !tbaa !282
  %2224 = icmp eq ptr %2223, null
  br i1 %2224, label %2226, label %2225, !prof !283

2225:                                             ; preds = %2220
  call void %2223(ptr noundef %2213, i32 noundef 33554432) #29, !prof !441
  br label %2226

2226:                                             ; preds = %2225, %2220
  br i1 %2215, label %2227, label %2228, !prof !280

2227:                                             ; preds = %2226
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %2228

2228:                                             ; preds = %2227, %2226, %2209
  %2229 = getelementptr inbounds %struct.rtx_def, ptr %2080, i64 0, i32 1, i32 0, i32 0, i64 1
  %2230 = load ptr, ptr %2229, align 8, !tbaa !143
  %2231 = icmp eq ptr %2230, null
  br i1 %2231, label %2387, label %2079, !prof !285, !llvm.loop !286

2232:                                             ; preds = %2066
  store ptr null, ptr %2072, align 8, !tbaa !132
  %2233 = icmp eq ptr %2076, null
  br i1 %2233, label %2387, label %2234, !prof !287

2234:                                             ; preds = %2232, %2385
  %2235 = phi ptr [ %2238, %2385 ], [ %2076, %2232 ]
  %2236 = getelementptr inbounds %struct.rtx_def, ptr %2235, i64 0, i32 1
  %2237 = getelementptr inbounds %struct.rtx_def, ptr %2235, i64 0, i32 1, i32 0, i32 0, i64 1
  %2238 = load ptr, ptr %2237, align 8, !tbaa !143
  %2239 = load ptr, ptr %2236, align 8, !tbaa !143
  %2240 = load i32, ptr %2, align 8
  %2241 = and i32 %2240, 65535
  %2242 = icmp eq i32 %2241, 10
  br i1 %2242, label %2369, label %2243, !prof !161

2243:                                             ; preds = %2234
  %2244 = load i32, ptr %2239, align 8
  %2245 = and i32 %2244, 65535
  %2246 = icmp eq i32 %2245, 10
  br i1 %2246, label %2369, label %2247, !prof !162

2247:                                             ; preds = %2243
  %2248 = load ptr, ptr %1229, align 8, !tbaa !143
  %2249 = icmp eq ptr %2248, null
  br i1 %2249, label %2284, label %2250, !prof !163

2250:                                             ; preds = %2247
  %2251 = load i32, ptr %2248, align 8
  %2252 = and i32 %2251, 65535
  %2253 = icmp eq i32 %2252, 14
  br i1 %2253, label %2254, label %2257, !prof !163

2254:                                             ; preds = %2250
  %2255 = getelementptr inbounds %struct.rtx_def, ptr %2248, i64 0, i32 1
  %2256 = load ptr, ptr %2255, align 8, !tbaa !143
  br label %2284

2257:                                             ; preds = %2250
  %2258 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2284, label %2260, !prof !164

2260:                                             ; preds = %2257
  %2261 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2284, label %2263, !prof !165

2263:                                             ; preds = %2260
  %2264 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %2265 = getelementptr inbounds %struct.rtx_def, ptr %2264, i64 0, i32 1, i32 0, i32 0, i64 1
  %2266 = load ptr, ptr %2265, align 8, !tbaa !143
  %2267 = getelementptr inbounds %struct.rtx_def, ptr %2266, i64 0, i32 1
  %2268 = getelementptr inbounds %struct.rtx_def, ptr %2266, i64 0, i32 1, i32 0, i32 0, i64 2
  %2269 = load ptr, ptr %2268, align 8, !tbaa !143
  %2270 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2271 = icmp eq ptr %2269, %2270
  br i1 %2271, label %2272, label %2274, !prof !166

2272:                                             ; preds = %2263
  %2273 = load ptr, ptr %2267, align 8, !tbaa !143
  br label %2284

2274:                                             ; preds = %2263
  %2275 = getelementptr inbounds %struct.rtx_def, ptr %2266, i64 0, i32 1, i32 0, i32 0, i64 1
  %2276 = load ptr, ptr %2275, align 8, !tbaa !143
  %2277 = icmp eq ptr %2276, %2270
  br i1 %2277, label %2278, label %2284

2278:                                             ; preds = %2274
  %2279 = load ptr, ptr %2267, align 8, !tbaa !143
  %2280 = call i32 @reversed_comparison_code(ptr noundef %2279, ptr noundef nonnull %2) #29
  %2281 = icmp ne i32 %2280, 0
  %2282 = zext i1 %2281 to i8
  %2283 = select i1 %2281, ptr %2279, ptr null
  br label %2284

2284:                                             ; preds = %2278, %2274, %2272, %2260, %2257, %2254, %2247
  %2285 = phi i8 [ 0, %2247 ], [ 0, %2254 ], [ 0, %2257 ], [ 0, %2260 ], [ 0, %2272 ], [ 0, %2274 ], [ %2282, %2278 ]
  %2286 = phi ptr [ null, %2247 ], [ %2256, %2254 ], [ null, %2257 ], [ null, %2260 ], [ %2273, %2272 ], [ null, %2274 ], [ %2283, %2278 ]
  %2287 = getelementptr inbounds %struct.rtx_def, ptr %2239, i64 1
  %2288 = load ptr, ptr %2287, align 8, !tbaa !143
  %2289 = icmp eq ptr %2288, null
  br i1 %2289, label %2324, label %2290, !prof !163

2290:                                             ; preds = %2284
  %2291 = load i32, ptr %2288, align 8
  %2292 = and i32 %2291, 65535
  %2293 = icmp eq i32 %2292, 14
  br i1 %2293, label %2294, label %2297, !prof !163

2294:                                             ; preds = %2290
  %2295 = getelementptr inbounds %struct.rtx_def, ptr %2288, i64 0, i32 1
  %2296 = load ptr, ptr %2295, align 8, !tbaa !143
  br label %2324

2297:                                             ; preds = %2290
  %2298 = call i32 @any_condjump_p(ptr noundef nonnull %2239) #29
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2324, label %2300, !prof !164

2300:                                             ; preds = %2297
  %2301 = call i32 @onlyjump_p(ptr noundef nonnull %2239) #29
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2324, label %2303, !prof !165

2303:                                             ; preds = %2300
  %2304 = call ptr @pc_set(ptr noundef nonnull %2239) #29
  %2305 = getelementptr inbounds %struct.rtx_def, ptr %2304, i64 0, i32 1, i32 0, i32 0, i64 1
  %2306 = load ptr, ptr %2305, align 8, !tbaa !143
  %2307 = getelementptr inbounds %struct.rtx_def, ptr %2306, i64 0, i32 1
  %2308 = getelementptr inbounds %struct.rtx_def, ptr %2306, i64 0, i32 1, i32 0, i32 0, i64 2
  %2309 = load ptr, ptr %2308, align 8, !tbaa !143
  %2310 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2311 = icmp eq ptr %2309, %2310
  br i1 %2311, label %2312, label %2314, !prof !166

2312:                                             ; preds = %2303
  %2313 = load ptr, ptr %2307, align 8, !tbaa !143
  br label %2324

2314:                                             ; preds = %2303
  %2315 = getelementptr inbounds %struct.rtx_def, ptr %2306, i64 0, i32 1, i32 0, i32 0, i64 1
  %2316 = load ptr, ptr %2315, align 8, !tbaa !143
  %2317 = icmp eq ptr %2316, %2310
  br i1 %2317, label %2318, label %2324

2318:                                             ; preds = %2314
  %2319 = load ptr, ptr %2307, align 8, !tbaa !143
  %2320 = call i32 @reversed_comparison_code(ptr noundef %2319, ptr noundef nonnull %2239) #29
  %2321 = icmp ne i32 %2320, 0
  %2322 = zext i1 %2321 to i8
  %2323 = select i1 %2321, ptr %2319, ptr null
  br label %2324

2324:                                             ; preds = %2318, %2314, %2312, %2300, %2297, %2294, %2284
  %2325 = phi i8 [ 0, %2284 ], [ 0, %2294 ], [ 0, %2297 ], [ 0, %2300 ], [ 0, %2312 ], [ 0, %2314 ], [ %2322, %2318 ]
  %2326 = phi ptr [ null, %2284 ], [ %2296, %2294 ], [ null, %2297 ], [ null, %2300 ], [ %2313, %2312 ], [ null, %2314 ], [ %2323, %2318 ]
  %2327 = icmp ne ptr %2286, null
  %2328 = icmp ne ptr %2326, null
  %2329 = select i1 %2327, i1 %2328, i1 false, !prof !167
  br i1 %2329, label %2330, label %2369, !prof !168

2330:                                             ; preds = %2324
  %2331 = load i32, ptr %2286, align 8
  %2332 = and i32 %2331, 65535
  %2333 = zext nneg i32 %2332 to i64
  %2334 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2333
  %2335 = load i32, ptr %2334, align 4, !tbaa !147
  %2336 = icmp ult i32 %2335, 2
  br i1 %2336, label %2337, label %2369

2337:                                             ; preds = %2330
  %2338 = load i32, ptr %2326, align 8
  %2339 = and i32 %2338, 65535
  %2340 = zext nneg i32 %2339 to i64
  %2341 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2340
  %2342 = load i32, ptr %2341, align 4, !tbaa !147
  %2343 = icmp ult i32 %2342, 2
  br i1 %2343, label %2344, label %2369

2344:                                             ; preds = %2337
  %2345 = icmp eq i8 %2285, %2325
  br i1 %2345, label %2346, label %2348

2346:                                             ; preds = %2344
  %2347 = call i32 @reversed_comparison_code(ptr noundef nonnull %2326, ptr noundef null) #29
  br label %2348

2348:                                             ; preds = %2346, %2344
  %2349 = phi i32 [ %2347, %2346 ], [ %2339, %2344 ]
  %2350 = icmp eq i32 %2332, %2349
  br i1 %2350, label %2351, label %2369

2351:                                             ; preds = %2348
  %2352 = getelementptr inbounds %struct.rtx_def, ptr %2286, i64 0, i32 1
  %2353 = load ptr, ptr %2352, align 8, !tbaa !143
  %2354 = getelementptr inbounds %struct.rtx_def, ptr %2326, i64 0, i32 1
  %2355 = load ptr, ptr %2354, align 8, !tbaa !143
  %2356 = icmp eq ptr %2353, %2355
  br i1 %2356, label %2357, label %2369

2357:                                             ; preds = %2351
  %2358 = getelementptr inbounds %struct.rtx_def, ptr %2286, i64 0, i32 1, i32 0, i32 0, i64 1
  %2359 = load ptr, ptr %2358, align 8, !tbaa !143
  %2360 = getelementptr inbounds %struct.rtx_def, ptr %2326, i64 0, i32 1, i32 0, i32 0, i64 1
  %2361 = load ptr, ptr %2360, align 8, !tbaa !143
  %2362 = icmp eq ptr %2359, %2361
  br i1 %2362, label %2363, label %2369

2363:                                             ; preds = %2357
  %2364 = call i32 @modified_in_p(ptr noundef nonnull %2286, ptr noundef nonnull %2239) #29
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %2366, label %2369

2366:                                             ; preds = %2363
  %2367 = call i32 @modified_in_p(ptr noundef nonnull %2326, ptr noundef nonnull %2) #29
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2385, label %2369

2369:                                             ; preds = %2366, %2363, %2357, %2351, %2348, %2337, %2330, %2324, %2243, %2234
  %2370 = load ptr, ptr %2236, align 8, !tbaa !143
  %2371 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %2372 = icmp eq ptr %2371, null
  br i1 %2372, label %2376, label %2373, !prof !280

2373:                                             ; preds = %2369
  %2374 = icmp eq ptr %2371, %2
  br i1 %2374, label %2377, label %2375, !prof !281

2375:                                             ; preds = %2373
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %2377

2376:                                             ; preds = %2369
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %2377

2377:                                             ; preds = %2376, %2375, %2373
  %2378 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %2379 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2378, i64 0, i32 11
  %2380 = load ptr, ptr %2379, align 8, !tbaa !282
  %2381 = icmp eq ptr %2380, null
  br i1 %2381, label %2383, label %2382, !prof !283

2382:                                             ; preds = %2377
  call void %2380(ptr noundef %2370, i32 noundef 33554432) #29, !prof !442
  br label %2383

2383:                                             ; preds = %2382, %2377
  br i1 %2372, label %2384, label %2385, !prof !280

2384:                                             ; preds = %2383
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %2385

2385:                                             ; preds = %2384, %2383, %2366
  call void @free_INSN_LIST_node(ptr noundef nonnull %2235) #29
  %2386 = icmp eq ptr %2238, null
  br i1 %2386, label %2387, label %2234, !prof !289, !llvm.loop !290

2387:                                             ; preds = %2228, %2385, %2077, %2232
  %2388 = getelementptr inbounds %struct.deps_reg, ptr %2069, i64 %2070, i32 2
  %2389 = load i8, ptr %2068, align 4
  %2390 = and i8 %2389, 1
  %2391 = icmp eq i8 %2390, 0
  %2392 = load ptr, ptr %2388, align 8, !tbaa !132
  br i1 %2391, label %2548, label %2393, !prof !278

2393:                                             ; preds = %2387
  %2394 = icmp eq ptr %2392, null
  br i1 %2394, label %2703, label %2395, !prof !279

2395:                                             ; preds = %2393, %2544
  %2396 = phi ptr [ %2546, %2544 ], [ %2392, %2393 ]
  %2397 = getelementptr inbounds %struct.rtx_def, ptr %2396, i64 0, i32 1
  %2398 = load ptr, ptr %2397, align 8, !tbaa !143
  %2399 = load i32, ptr %2, align 8
  %2400 = and i32 %2399, 65535
  %2401 = icmp eq i32 %2400, 10
  br i1 %2401, label %2528, label %2402, !prof !161

2402:                                             ; preds = %2395
  %2403 = load i32, ptr %2398, align 8
  %2404 = and i32 %2403, 65535
  %2405 = icmp eq i32 %2404, 10
  br i1 %2405, label %2528, label %2406, !prof !162

2406:                                             ; preds = %2402
  %2407 = load ptr, ptr %1229, align 8, !tbaa !143
  %2408 = icmp eq ptr %2407, null
  br i1 %2408, label %2443, label %2409, !prof !163

2409:                                             ; preds = %2406
  %2410 = load i32, ptr %2407, align 8
  %2411 = and i32 %2410, 65535
  %2412 = icmp eq i32 %2411, 14
  br i1 %2412, label %2413, label %2416, !prof !163

2413:                                             ; preds = %2409
  %2414 = getelementptr inbounds %struct.rtx_def, ptr %2407, i64 0, i32 1
  %2415 = load ptr, ptr %2414, align 8, !tbaa !143
  br label %2443

2416:                                             ; preds = %2409
  %2417 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2443, label %2419, !prof !164

2419:                                             ; preds = %2416
  %2420 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2443, label %2422, !prof !165

2422:                                             ; preds = %2419
  %2423 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %2424 = getelementptr inbounds %struct.rtx_def, ptr %2423, i64 0, i32 1, i32 0, i32 0, i64 1
  %2425 = load ptr, ptr %2424, align 8, !tbaa !143
  %2426 = getelementptr inbounds %struct.rtx_def, ptr %2425, i64 0, i32 1
  %2427 = getelementptr inbounds %struct.rtx_def, ptr %2425, i64 0, i32 1, i32 0, i32 0, i64 2
  %2428 = load ptr, ptr %2427, align 8, !tbaa !143
  %2429 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2430 = icmp eq ptr %2428, %2429
  br i1 %2430, label %2431, label %2433, !prof !166

2431:                                             ; preds = %2422
  %2432 = load ptr, ptr %2426, align 8, !tbaa !143
  br label %2443

2433:                                             ; preds = %2422
  %2434 = getelementptr inbounds %struct.rtx_def, ptr %2425, i64 0, i32 1, i32 0, i32 0, i64 1
  %2435 = load ptr, ptr %2434, align 8, !tbaa !143
  %2436 = icmp eq ptr %2435, %2429
  br i1 %2436, label %2437, label %2443

2437:                                             ; preds = %2433
  %2438 = load ptr, ptr %2426, align 8, !tbaa !143
  %2439 = call i32 @reversed_comparison_code(ptr noundef %2438, ptr noundef nonnull %2) #29
  %2440 = icmp ne i32 %2439, 0
  %2441 = zext i1 %2440 to i8
  %2442 = select i1 %2440, ptr %2438, ptr null
  br label %2443

2443:                                             ; preds = %2437, %2433, %2431, %2419, %2416, %2413, %2406
  %2444 = phi i8 [ 0, %2406 ], [ 0, %2413 ], [ 0, %2416 ], [ 0, %2419 ], [ 0, %2431 ], [ 0, %2433 ], [ %2441, %2437 ]
  %2445 = phi ptr [ null, %2406 ], [ %2415, %2413 ], [ null, %2416 ], [ null, %2419 ], [ %2432, %2431 ], [ null, %2433 ], [ %2442, %2437 ]
  %2446 = getelementptr inbounds %struct.rtx_def, ptr %2398, i64 1
  %2447 = load ptr, ptr %2446, align 8, !tbaa !143
  %2448 = icmp eq ptr %2447, null
  br i1 %2448, label %2483, label %2449, !prof !163

2449:                                             ; preds = %2443
  %2450 = load i32, ptr %2447, align 8
  %2451 = and i32 %2450, 65535
  %2452 = icmp eq i32 %2451, 14
  br i1 %2452, label %2453, label %2456, !prof !163

2453:                                             ; preds = %2449
  %2454 = getelementptr inbounds %struct.rtx_def, ptr %2447, i64 0, i32 1
  %2455 = load ptr, ptr %2454, align 8, !tbaa !143
  br label %2483

2456:                                             ; preds = %2449
  %2457 = call i32 @any_condjump_p(ptr noundef nonnull %2398) #29
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2483, label %2459, !prof !164

2459:                                             ; preds = %2456
  %2460 = call i32 @onlyjump_p(ptr noundef nonnull %2398) #29
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2483, label %2462, !prof !165

2462:                                             ; preds = %2459
  %2463 = call ptr @pc_set(ptr noundef nonnull %2398) #29
  %2464 = getelementptr inbounds %struct.rtx_def, ptr %2463, i64 0, i32 1, i32 0, i32 0, i64 1
  %2465 = load ptr, ptr %2464, align 8, !tbaa !143
  %2466 = getelementptr inbounds %struct.rtx_def, ptr %2465, i64 0, i32 1
  %2467 = getelementptr inbounds %struct.rtx_def, ptr %2465, i64 0, i32 1, i32 0, i32 0, i64 2
  %2468 = load ptr, ptr %2467, align 8, !tbaa !143
  %2469 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2470 = icmp eq ptr %2468, %2469
  br i1 %2470, label %2471, label %2473, !prof !166

2471:                                             ; preds = %2462
  %2472 = load ptr, ptr %2466, align 8, !tbaa !143
  br label %2483

2473:                                             ; preds = %2462
  %2474 = getelementptr inbounds %struct.rtx_def, ptr %2465, i64 0, i32 1, i32 0, i32 0, i64 1
  %2475 = load ptr, ptr %2474, align 8, !tbaa !143
  %2476 = icmp eq ptr %2475, %2469
  br i1 %2476, label %2477, label %2483

2477:                                             ; preds = %2473
  %2478 = load ptr, ptr %2466, align 8, !tbaa !143
  %2479 = call i32 @reversed_comparison_code(ptr noundef %2478, ptr noundef nonnull %2398) #29
  %2480 = icmp ne i32 %2479, 0
  %2481 = zext i1 %2480 to i8
  %2482 = select i1 %2480, ptr %2478, ptr null
  br label %2483

2483:                                             ; preds = %2477, %2473, %2471, %2459, %2456, %2453, %2443
  %2484 = phi i8 [ 0, %2443 ], [ 0, %2453 ], [ 0, %2456 ], [ 0, %2459 ], [ 0, %2471 ], [ 0, %2473 ], [ %2481, %2477 ]
  %2485 = phi ptr [ null, %2443 ], [ %2455, %2453 ], [ null, %2456 ], [ null, %2459 ], [ %2472, %2471 ], [ null, %2473 ], [ %2482, %2477 ]
  %2486 = icmp ne ptr %2445, null
  %2487 = icmp ne ptr %2485, null
  %2488 = select i1 %2486, i1 %2487, i1 false, !prof !167
  br i1 %2488, label %2489, label %2528, !prof !168

2489:                                             ; preds = %2483
  %2490 = load i32, ptr %2445, align 8
  %2491 = and i32 %2490, 65535
  %2492 = zext nneg i32 %2491 to i64
  %2493 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2492
  %2494 = load i32, ptr %2493, align 4, !tbaa !147
  %2495 = icmp ult i32 %2494, 2
  br i1 %2495, label %2496, label %2528

2496:                                             ; preds = %2489
  %2497 = load i32, ptr %2485, align 8
  %2498 = and i32 %2497, 65535
  %2499 = zext nneg i32 %2498 to i64
  %2500 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2499
  %2501 = load i32, ptr %2500, align 4, !tbaa !147
  %2502 = icmp ult i32 %2501, 2
  br i1 %2502, label %2503, label %2528

2503:                                             ; preds = %2496
  %2504 = icmp eq i8 %2444, %2484
  br i1 %2504, label %2505, label %2507

2505:                                             ; preds = %2503
  %2506 = call i32 @reversed_comparison_code(ptr noundef nonnull %2485, ptr noundef null) #29
  br label %2507

2507:                                             ; preds = %2505, %2503
  %2508 = phi i32 [ %2506, %2505 ], [ %2498, %2503 ]
  %2509 = icmp eq i32 %2491, %2508
  br i1 %2509, label %2510, label %2528

2510:                                             ; preds = %2507
  %2511 = getelementptr inbounds %struct.rtx_def, ptr %2445, i64 0, i32 1
  %2512 = load ptr, ptr %2511, align 8, !tbaa !143
  %2513 = getelementptr inbounds %struct.rtx_def, ptr %2485, i64 0, i32 1
  %2514 = load ptr, ptr %2513, align 8, !tbaa !143
  %2515 = icmp eq ptr %2512, %2514
  br i1 %2515, label %2516, label %2528

2516:                                             ; preds = %2510
  %2517 = getelementptr inbounds %struct.rtx_def, ptr %2445, i64 0, i32 1, i32 0, i32 0, i64 1
  %2518 = load ptr, ptr %2517, align 8, !tbaa !143
  %2519 = getelementptr inbounds %struct.rtx_def, ptr %2485, i64 0, i32 1, i32 0, i32 0, i64 1
  %2520 = load ptr, ptr %2519, align 8, !tbaa !143
  %2521 = icmp eq ptr %2518, %2520
  br i1 %2521, label %2522, label %2528

2522:                                             ; preds = %2516
  %2523 = call i32 @modified_in_p(ptr noundef nonnull %2445, ptr noundef nonnull %2398) #29
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2525, label %2528

2525:                                             ; preds = %2522
  %2526 = call i32 @modified_in_p(ptr noundef nonnull %2485, ptr noundef nonnull %2) #29
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2544, label %2528

2528:                                             ; preds = %2525, %2522, %2516, %2510, %2507, %2496, %2489, %2483, %2402, %2395
  %2529 = load ptr, ptr %2397, align 8, !tbaa !143
  %2530 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %2531 = icmp eq ptr %2530, null
  br i1 %2531, label %2535, label %2532, !prof !280

2532:                                             ; preds = %2528
  %2533 = icmp eq ptr %2530, %2
  br i1 %2533, label %2536, label %2534, !prof !281

2534:                                             ; preds = %2532
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %2536

2535:                                             ; preds = %2528
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %2536

2536:                                             ; preds = %2535, %2534, %2532
  %2537 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %2538 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2537, i64 0, i32 11
  %2539 = load ptr, ptr %2538, align 8, !tbaa !282
  %2540 = icmp eq ptr %2539, null
  br i1 %2540, label %2542, label %2541, !prof !283

2541:                                             ; preds = %2536
  call void %2539(ptr noundef %2529, i32 noundef 67108864) #29, !prof !443
  br label %2542

2542:                                             ; preds = %2541, %2536
  br i1 %2531, label %2543, label %2544, !prof !280

2543:                                             ; preds = %2542
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %2544

2544:                                             ; preds = %2543, %2542, %2525
  %2545 = getelementptr inbounds %struct.rtx_def, ptr %2396, i64 0, i32 1, i32 0, i32 0, i64 1
  %2546 = load ptr, ptr %2545, align 8, !tbaa !143
  %2547 = icmp eq ptr %2546, null
  br i1 %2547, label %2703, label %2395, !prof !285, !llvm.loop !286

2548:                                             ; preds = %2387
  store ptr null, ptr %2388, align 8, !tbaa !132
  %2549 = icmp eq ptr %2392, null
  br i1 %2549, label %2703, label %2550, !prof !287

2550:                                             ; preds = %2548, %2701
  %2551 = phi ptr [ %2554, %2701 ], [ %2392, %2548 ]
  %2552 = getelementptr inbounds %struct.rtx_def, ptr %2551, i64 0, i32 1
  %2553 = getelementptr inbounds %struct.rtx_def, ptr %2551, i64 0, i32 1, i32 0, i32 0, i64 1
  %2554 = load ptr, ptr %2553, align 8, !tbaa !143
  %2555 = load ptr, ptr %2552, align 8, !tbaa !143
  %2556 = load i32, ptr %2, align 8
  %2557 = and i32 %2556, 65535
  %2558 = icmp eq i32 %2557, 10
  br i1 %2558, label %2685, label %2559, !prof !161

2559:                                             ; preds = %2550
  %2560 = load i32, ptr %2555, align 8
  %2561 = and i32 %2560, 65535
  %2562 = icmp eq i32 %2561, 10
  br i1 %2562, label %2685, label %2563, !prof !162

2563:                                             ; preds = %2559
  %2564 = load ptr, ptr %1229, align 8, !tbaa !143
  %2565 = icmp eq ptr %2564, null
  br i1 %2565, label %2600, label %2566, !prof !163

2566:                                             ; preds = %2563
  %2567 = load i32, ptr %2564, align 8
  %2568 = and i32 %2567, 65535
  %2569 = icmp eq i32 %2568, 14
  br i1 %2569, label %2570, label %2573, !prof !163

2570:                                             ; preds = %2566
  %2571 = getelementptr inbounds %struct.rtx_def, ptr %2564, i64 0, i32 1
  %2572 = load ptr, ptr %2571, align 8, !tbaa !143
  br label %2600

2573:                                             ; preds = %2566
  %2574 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2600, label %2576, !prof !164

2576:                                             ; preds = %2573
  %2577 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2600, label %2579, !prof !165

2579:                                             ; preds = %2576
  %2580 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %2581 = getelementptr inbounds %struct.rtx_def, ptr %2580, i64 0, i32 1, i32 0, i32 0, i64 1
  %2582 = load ptr, ptr %2581, align 8, !tbaa !143
  %2583 = getelementptr inbounds %struct.rtx_def, ptr %2582, i64 0, i32 1
  %2584 = getelementptr inbounds %struct.rtx_def, ptr %2582, i64 0, i32 1, i32 0, i32 0, i64 2
  %2585 = load ptr, ptr %2584, align 8, !tbaa !143
  %2586 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2587 = icmp eq ptr %2585, %2586
  br i1 %2587, label %2588, label %2590, !prof !166

2588:                                             ; preds = %2579
  %2589 = load ptr, ptr %2583, align 8, !tbaa !143
  br label %2600

2590:                                             ; preds = %2579
  %2591 = getelementptr inbounds %struct.rtx_def, ptr %2582, i64 0, i32 1, i32 0, i32 0, i64 1
  %2592 = load ptr, ptr %2591, align 8, !tbaa !143
  %2593 = icmp eq ptr %2592, %2586
  br i1 %2593, label %2594, label %2600

2594:                                             ; preds = %2590
  %2595 = load ptr, ptr %2583, align 8, !tbaa !143
  %2596 = call i32 @reversed_comparison_code(ptr noundef %2595, ptr noundef nonnull %2) #29
  %2597 = icmp ne i32 %2596, 0
  %2598 = zext i1 %2597 to i8
  %2599 = select i1 %2597, ptr %2595, ptr null
  br label %2600

2600:                                             ; preds = %2594, %2590, %2588, %2576, %2573, %2570, %2563
  %2601 = phi i8 [ 0, %2563 ], [ 0, %2570 ], [ 0, %2573 ], [ 0, %2576 ], [ 0, %2588 ], [ 0, %2590 ], [ %2598, %2594 ]
  %2602 = phi ptr [ null, %2563 ], [ %2572, %2570 ], [ null, %2573 ], [ null, %2576 ], [ %2589, %2588 ], [ null, %2590 ], [ %2599, %2594 ]
  %2603 = getelementptr inbounds %struct.rtx_def, ptr %2555, i64 1
  %2604 = load ptr, ptr %2603, align 8, !tbaa !143
  %2605 = icmp eq ptr %2604, null
  br i1 %2605, label %2640, label %2606, !prof !163

2606:                                             ; preds = %2600
  %2607 = load i32, ptr %2604, align 8
  %2608 = and i32 %2607, 65535
  %2609 = icmp eq i32 %2608, 14
  br i1 %2609, label %2610, label %2613, !prof !163

2610:                                             ; preds = %2606
  %2611 = getelementptr inbounds %struct.rtx_def, ptr %2604, i64 0, i32 1
  %2612 = load ptr, ptr %2611, align 8, !tbaa !143
  br label %2640

2613:                                             ; preds = %2606
  %2614 = call i32 @any_condjump_p(ptr noundef nonnull %2555) #29
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2640, label %2616, !prof !164

2616:                                             ; preds = %2613
  %2617 = call i32 @onlyjump_p(ptr noundef nonnull %2555) #29
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2640, label %2619, !prof !165

2619:                                             ; preds = %2616
  %2620 = call ptr @pc_set(ptr noundef nonnull %2555) #29
  %2621 = getelementptr inbounds %struct.rtx_def, ptr %2620, i64 0, i32 1, i32 0, i32 0, i64 1
  %2622 = load ptr, ptr %2621, align 8, !tbaa !143
  %2623 = getelementptr inbounds %struct.rtx_def, ptr %2622, i64 0, i32 1
  %2624 = getelementptr inbounds %struct.rtx_def, ptr %2622, i64 0, i32 1, i32 0, i32 0, i64 2
  %2625 = load ptr, ptr %2624, align 8, !tbaa !143
  %2626 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2627 = icmp eq ptr %2625, %2626
  br i1 %2627, label %2628, label %2630, !prof !166

2628:                                             ; preds = %2619
  %2629 = load ptr, ptr %2623, align 8, !tbaa !143
  br label %2640

2630:                                             ; preds = %2619
  %2631 = getelementptr inbounds %struct.rtx_def, ptr %2622, i64 0, i32 1, i32 0, i32 0, i64 1
  %2632 = load ptr, ptr %2631, align 8, !tbaa !143
  %2633 = icmp eq ptr %2632, %2626
  br i1 %2633, label %2634, label %2640

2634:                                             ; preds = %2630
  %2635 = load ptr, ptr %2623, align 8, !tbaa !143
  %2636 = call i32 @reversed_comparison_code(ptr noundef %2635, ptr noundef nonnull %2555) #29
  %2637 = icmp ne i32 %2636, 0
  %2638 = zext i1 %2637 to i8
  %2639 = select i1 %2637, ptr %2635, ptr null
  br label %2640

2640:                                             ; preds = %2634, %2630, %2628, %2616, %2613, %2610, %2600
  %2641 = phi i8 [ 0, %2600 ], [ 0, %2610 ], [ 0, %2613 ], [ 0, %2616 ], [ 0, %2628 ], [ 0, %2630 ], [ %2638, %2634 ]
  %2642 = phi ptr [ null, %2600 ], [ %2612, %2610 ], [ null, %2613 ], [ null, %2616 ], [ %2629, %2628 ], [ null, %2630 ], [ %2639, %2634 ]
  %2643 = icmp ne ptr %2602, null
  %2644 = icmp ne ptr %2642, null
  %2645 = select i1 %2643, i1 %2644, i1 false, !prof !167
  br i1 %2645, label %2646, label %2685, !prof !168

2646:                                             ; preds = %2640
  %2647 = load i32, ptr %2602, align 8
  %2648 = and i32 %2647, 65535
  %2649 = zext nneg i32 %2648 to i64
  %2650 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2649
  %2651 = load i32, ptr %2650, align 4, !tbaa !147
  %2652 = icmp ult i32 %2651, 2
  br i1 %2652, label %2653, label %2685

2653:                                             ; preds = %2646
  %2654 = load i32, ptr %2642, align 8
  %2655 = and i32 %2654, 65535
  %2656 = zext nneg i32 %2655 to i64
  %2657 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2656
  %2658 = load i32, ptr %2657, align 4, !tbaa !147
  %2659 = icmp ult i32 %2658, 2
  br i1 %2659, label %2660, label %2685

2660:                                             ; preds = %2653
  %2661 = icmp eq i8 %2601, %2641
  br i1 %2661, label %2662, label %2664

2662:                                             ; preds = %2660
  %2663 = call i32 @reversed_comparison_code(ptr noundef nonnull %2642, ptr noundef null) #29
  br label %2664

2664:                                             ; preds = %2662, %2660
  %2665 = phi i32 [ %2663, %2662 ], [ %2655, %2660 ]
  %2666 = icmp eq i32 %2648, %2665
  br i1 %2666, label %2667, label %2685

2667:                                             ; preds = %2664
  %2668 = getelementptr inbounds %struct.rtx_def, ptr %2602, i64 0, i32 1
  %2669 = load ptr, ptr %2668, align 8, !tbaa !143
  %2670 = getelementptr inbounds %struct.rtx_def, ptr %2642, i64 0, i32 1
  %2671 = load ptr, ptr %2670, align 8, !tbaa !143
  %2672 = icmp eq ptr %2669, %2671
  br i1 %2672, label %2673, label %2685

2673:                                             ; preds = %2667
  %2674 = getelementptr inbounds %struct.rtx_def, ptr %2602, i64 0, i32 1, i32 0, i32 0, i64 1
  %2675 = load ptr, ptr %2674, align 8, !tbaa !143
  %2676 = getelementptr inbounds %struct.rtx_def, ptr %2642, i64 0, i32 1, i32 0, i32 0, i64 1
  %2677 = load ptr, ptr %2676, align 8, !tbaa !143
  %2678 = icmp eq ptr %2675, %2677
  br i1 %2678, label %2679, label %2685

2679:                                             ; preds = %2673
  %2680 = call i32 @modified_in_p(ptr noundef nonnull %2602, ptr noundef nonnull %2555) #29
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2682, label %2685

2682:                                             ; preds = %2679
  %2683 = call i32 @modified_in_p(ptr noundef nonnull %2642, ptr noundef nonnull %2) #29
  %2684 = icmp eq i32 %2683, 0
  br i1 %2684, label %2701, label %2685

2685:                                             ; preds = %2682, %2679, %2673, %2667, %2664, %2653, %2646, %2640, %2559, %2550
  %2686 = load ptr, ptr %2552, align 8, !tbaa !143
  %2687 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %2688 = icmp eq ptr %2687, null
  br i1 %2688, label %2692, label %2689, !prof !280

2689:                                             ; preds = %2685
  %2690 = icmp eq ptr %2687, %2
  br i1 %2690, label %2693, label %2691, !prof !281

2691:                                             ; preds = %2689
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %2693

2692:                                             ; preds = %2685
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %2693

2693:                                             ; preds = %2692, %2691, %2689
  %2694 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %2695 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2694, i64 0, i32 11
  %2696 = load ptr, ptr %2695, align 8, !tbaa !282
  %2697 = icmp eq ptr %2696, null
  br i1 %2697, label %2699, label %2698, !prof !283

2698:                                             ; preds = %2693
  call void %2696(ptr noundef %2686, i32 noundef 67108864) #29, !prof !444
  br label %2699

2699:                                             ; preds = %2698, %2693
  br i1 %2688, label %2700, label %2701, !prof !280

2700:                                             ; preds = %2699
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %2701

2701:                                             ; preds = %2700, %2699, %2682
  call void @free_INSN_LIST_node(ptr noundef nonnull %2551) #29
  %2702 = icmp eq ptr %2554, null
  br i1 %2702, label %2703, label %2550, !prof !289, !llvm.loop !290

2703:                                             ; preds = %2544, %2701, %2393, %2548
  %2704 = getelementptr inbounds %struct.deps_reg, ptr %2069, i64 %2070, i32 3
  %2705 = load i8, ptr %2068, align 4
  %2706 = and i8 %2705, 1
  %2707 = icmp eq i8 %2706, 0
  %2708 = load ptr, ptr %2704, align 8, !tbaa !132
  br i1 %2707, label %2864, label %2709, !prof !278

2709:                                             ; preds = %2703
  %2710 = icmp eq ptr %2708, null
  br i1 %2710, label %3019, label %2711, !prof !279

2711:                                             ; preds = %2709, %2860
  %2712 = phi ptr [ %2862, %2860 ], [ %2708, %2709 ]
  %2713 = getelementptr inbounds %struct.rtx_def, ptr %2712, i64 0, i32 1
  %2714 = load ptr, ptr %2713, align 8, !tbaa !143
  %2715 = load i32, ptr %2, align 8
  %2716 = and i32 %2715, 65535
  %2717 = icmp eq i32 %2716, 10
  br i1 %2717, label %2844, label %2718, !prof !161

2718:                                             ; preds = %2711
  %2719 = load i32, ptr %2714, align 8
  %2720 = and i32 %2719, 65535
  %2721 = icmp eq i32 %2720, 10
  br i1 %2721, label %2844, label %2722, !prof !162

2722:                                             ; preds = %2718
  %2723 = load ptr, ptr %1229, align 8, !tbaa !143
  %2724 = icmp eq ptr %2723, null
  br i1 %2724, label %2759, label %2725, !prof !163

2725:                                             ; preds = %2722
  %2726 = load i32, ptr %2723, align 8
  %2727 = and i32 %2726, 65535
  %2728 = icmp eq i32 %2727, 14
  br i1 %2728, label %2729, label %2732, !prof !163

2729:                                             ; preds = %2725
  %2730 = getelementptr inbounds %struct.rtx_def, ptr %2723, i64 0, i32 1
  %2731 = load ptr, ptr %2730, align 8, !tbaa !143
  br label %2759

2732:                                             ; preds = %2725
  %2733 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2759, label %2735, !prof !164

2735:                                             ; preds = %2732
  %2736 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2759, label %2738, !prof !165

2738:                                             ; preds = %2735
  %2739 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %2740 = getelementptr inbounds %struct.rtx_def, ptr %2739, i64 0, i32 1, i32 0, i32 0, i64 1
  %2741 = load ptr, ptr %2740, align 8, !tbaa !143
  %2742 = getelementptr inbounds %struct.rtx_def, ptr %2741, i64 0, i32 1
  %2743 = getelementptr inbounds %struct.rtx_def, ptr %2741, i64 0, i32 1, i32 0, i32 0, i64 2
  %2744 = load ptr, ptr %2743, align 8, !tbaa !143
  %2745 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2746 = icmp eq ptr %2744, %2745
  br i1 %2746, label %2747, label %2749, !prof !166

2747:                                             ; preds = %2738
  %2748 = load ptr, ptr %2742, align 8, !tbaa !143
  br label %2759

2749:                                             ; preds = %2738
  %2750 = getelementptr inbounds %struct.rtx_def, ptr %2741, i64 0, i32 1, i32 0, i32 0, i64 1
  %2751 = load ptr, ptr %2750, align 8, !tbaa !143
  %2752 = icmp eq ptr %2751, %2745
  br i1 %2752, label %2753, label %2759

2753:                                             ; preds = %2749
  %2754 = load ptr, ptr %2742, align 8, !tbaa !143
  %2755 = call i32 @reversed_comparison_code(ptr noundef %2754, ptr noundef nonnull %2) #29
  %2756 = icmp ne i32 %2755, 0
  %2757 = zext i1 %2756 to i8
  %2758 = select i1 %2756, ptr %2754, ptr null
  br label %2759

2759:                                             ; preds = %2753, %2749, %2747, %2735, %2732, %2729, %2722
  %2760 = phi i8 [ 0, %2722 ], [ 0, %2729 ], [ 0, %2732 ], [ 0, %2735 ], [ 0, %2747 ], [ 0, %2749 ], [ %2757, %2753 ]
  %2761 = phi ptr [ null, %2722 ], [ %2731, %2729 ], [ null, %2732 ], [ null, %2735 ], [ %2748, %2747 ], [ null, %2749 ], [ %2758, %2753 ]
  %2762 = getelementptr inbounds %struct.rtx_def, ptr %2714, i64 1
  %2763 = load ptr, ptr %2762, align 8, !tbaa !143
  %2764 = icmp eq ptr %2763, null
  br i1 %2764, label %2799, label %2765, !prof !163

2765:                                             ; preds = %2759
  %2766 = load i32, ptr %2763, align 8
  %2767 = and i32 %2766, 65535
  %2768 = icmp eq i32 %2767, 14
  br i1 %2768, label %2769, label %2772, !prof !163

2769:                                             ; preds = %2765
  %2770 = getelementptr inbounds %struct.rtx_def, ptr %2763, i64 0, i32 1
  %2771 = load ptr, ptr %2770, align 8, !tbaa !143
  br label %2799

2772:                                             ; preds = %2765
  %2773 = call i32 @any_condjump_p(ptr noundef nonnull %2714) #29
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2799, label %2775, !prof !164

2775:                                             ; preds = %2772
  %2776 = call i32 @onlyjump_p(ptr noundef nonnull %2714) #29
  %2777 = icmp eq i32 %2776, 0
  br i1 %2777, label %2799, label %2778, !prof !165

2778:                                             ; preds = %2775
  %2779 = call ptr @pc_set(ptr noundef nonnull %2714) #29
  %2780 = getelementptr inbounds %struct.rtx_def, ptr %2779, i64 0, i32 1, i32 0, i32 0, i64 1
  %2781 = load ptr, ptr %2780, align 8, !tbaa !143
  %2782 = getelementptr inbounds %struct.rtx_def, ptr %2781, i64 0, i32 1
  %2783 = getelementptr inbounds %struct.rtx_def, ptr %2781, i64 0, i32 1, i32 0, i32 0, i64 2
  %2784 = load ptr, ptr %2783, align 8, !tbaa !143
  %2785 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2786 = icmp eq ptr %2784, %2785
  br i1 %2786, label %2787, label %2789, !prof !166

2787:                                             ; preds = %2778
  %2788 = load ptr, ptr %2782, align 8, !tbaa !143
  br label %2799

2789:                                             ; preds = %2778
  %2790 = getelementptr inbounds %struct.rtx_def, ptr %2781, i64 0, i32 1, i32 0, i32 0, i64 1
  %2791 = load ptr, ptr %2790, align 8, !tbaa !143
  %2792 = icmp eq ptr %2791, %2785
  br i1 %2792, label %2793, label %2799

2793:                                             ; preds = %2789
  %2794 = load ptr, ptr %2782, align 8, !tbaa !143
  %2795 = call i32 @reversed_comparison_code(ptr noundef %2794, ptr noundef nonnull %2714) #29
  %2796 = icmp ne i32 %2795, 0
  %2797 = zext i1 %2796 to i8
  %2798 = select i1 %2796, ptr %2794, ptr null
  br label %2799

2799:                                             ; preds = %2793, %2789, %2787, %2775, %2772, %2769, %2759
  %2800 = phi i8 [ 0, %2759 ], [ 0, %2769 ], [ 0, %2772 ], [ 0, %2775 ], [ 0, %2787 ], [ 0, %2789 ], [ %2797, %2793 ]
  %2801 = phi ptr [ null, %2759 ], [ %2771, %2769 ], [ null, %2772 ], [ null, %2775 ], [ %2788, %2787 ], [ null, %2789 ], [ %2798, %2793 ]
  %2802 = icmp ne ptr %2761, null
  %2803 = icmp ne ptr %2801, null
  %2804 = select i1 %2802, i1 %2803, i1 false, !prof !167
  br i1 %2804, label %2805, label %2844, !prof !168

2805:                                             ; preds = %2799
  %2806 = load i32, ptr %2761, align 8
  %2807 = and i32 %2806, 65535
  %2808 = zext nneg i32 %2807 to i64
  %2809 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2808
  %2810 = load i32, ptr %2809, align 4, !tbaa !147
  %2811 = icmp ult i32 %2810, 2
  br i1 %2811, label %2812, label %2844

2812:                                             ; preds = %2805
  %2813 = load i32, ptr %2801, align 8
  %2814 = and i32 %2813, 65535
  %2815 = zext nneg i32 %2814 to i64
  %2816 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2815
  %2817 = load i32, ptr %2816, align 4, !tbaa !147
  %2818 = icmp ult i32 %2817, 2
  br i1 %2818, label %2819, label %2844

2819:                                             ; preds = %2812
  %2820 = icmp eq i8 %2760, %2800
  br i1 %2820, label %2821, label %2823

2821:                                             ; preds = %2819
  %2822 = call i32 @reversed_comparison_code(ptr noundef nonnull %2801, ptr noundef null) #29
  br label %2823

2823:                                             ; preds = %2821, %2819
  %2824 = phi i32 [ %2822, %2821 ], [ %2814, %2819 ]
  %2825 = icmp eq i32 %2807, %2824
  br i1 %2825, label %2826, label %2844

2826:                                             ; preds = %2823
  %2827 = getelementptr inbounds %struct.rtx_def, ptr %2761, i64 0, i32 1
  %2828 = load ptr, ptr %2827, align 8, !tbaa !143
  %2829 = getelementptr inbounds %struct.rtx_def, ptr %2801, i64 0, i32 1
  %2830 = load ptr, ptr %2829, align 8, !tbaa !143
  %2831 = icmp eq ptr %2828, %2830
  br i1 %2831, label %2832, label %2844

2832:                                             ; preds = %2826
  %2833 = getelementptr inbounds %struct.rtx_def, ptr %2761, i64 0, i32 1, i32 0, i32 0, i64 1
  %2834 = load ptr, ptr %2833, align 8, !tbaa !143
  %2835 = getelementptr inbounds %struct.rtx_def, ptr %2801, i64 0, i32 1, i32 0, i32 0, i64 1
  %2836 = load ptr, ptr %2835, align 8, !tbaa !143
  %2837 = icmp eq ptr %2834, %2836
  br i1 %2837, label %2838, label %2844

2838:                                             ; preds = %2832
  %2839 = call i32 @modified_in_p(ptr noundef nonnull %2761, ptr noundef nonnull %2714) #29
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2841, label %2844

2841:                                             ; preds = %2838
  %2842 = call i32 @modified_in_p(ptr noundef nonnull %2801, ptr noundef nonnull %2) #29
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2860, label %2844

2844:                                             ; preds = %2841, %2838, %2832, %2826, %2823, %2812, %2805, %2799, %2718, %2711
  %2845 = load ptr, ptr %2713, align 8, !tbaa !143
  %2846 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %2847 = icmp eq ptr %2846, null
  br i1 %2847, label %2851, label %2848, !prof !280

2848:                                             ; preds = %2844
  %2849 = icmp eq ptr %2846, %2
  br i1 %2849, label %2852, label %2850, !prof !281

2850:                                             ; preds = %2848
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %2852

2851:                                             ; preds = %2844
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %2852

2852:                                             ; preds = %2851, %2850, %2848
  %2853 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %2854 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2853, i64 0, i32 11
  %2855 = load ptr, ptr %2854, align 8, !tbaa !282
  %2856 = icmp eq ptr %2855, null
  br i1 %2856, label %2858, label %2857, !prof !283

2857:                                             ; preds = %2852
  call void %2855(ptr noundef %2845, i32 noundef 33554432) #29, !prof !445
  br label %2858

2858:                                             ; preds = %2857, %2852
  br i1 %2847, label %2859, label %2860, !prof !280

2859:                                             ; preds = %2858
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %2860

2860:                                             ; preds = %2859, %2858, %2841
  %2861 = getelementptr inbounds %struct.rtx_def, ptr %2712, i64 0, i32 1, i32 0, i32 0, i64 1
  %2862 = load ptr, ptr %2861, align 8, !tbaa !143
  %2863 = icmp eq ptr %2862, null
  br i1 %2863, label %3019, label %2711, !prof !285, !llvm.loop !286

2864:                                             ; preds = %2703
  store ptr null, ptr %2704, align 8, !tbaa !132
  %2865 = icmp eq ptr %2708, null
  br i1 %2865, label %3019, label %2866, !prof !287

2866:                                             ; preds = %2864, %3017
  %2867 = phi ptr [ %2870, %3017 ], [ %2708, %2864 ]
  %2868 = getelementptr inbounds %struct.rtx_def, ptr %2867, i64 0, i32 1
  %2869 = getelementptr inbounds %struct.rtx_def, ptr %2867, i64 0, i32 1, i32 0, i32 0, i64 1
  %2870 = load ptr, ptr %2869, align 8, !tbaa !143
  %2871 = load ptr, ptr %2868, align 8, !tbaa !143
  %2872 = load i32, ptr %2, align 8
  %2873 = and i32 %2872, 65535
  %2874 = icmp eq i32 %2873, 10
  br i1 %2874, label %3001, label %2875, !prof !161

2875:                                             ; preds = %2866
  %2876 = load i32, ptr %2871, align 8
  %2877 = and i32 %2876, 65535
  %2878 = icmp eq i32 %2877, 10
  br i1 %2878, label %3001, label %2879, !prof !162

2879:                                             ; preds = %2875
  %2880 = load ptr, ptr %1229, align 8, !tbaa !143
  %2881 = icmp eq ptr %2880, null
  br i1 %2881, label %2916, label %2882, !prof !163

2882:                                             ; preds = %2879
  %2883 = load i32, ptr %2880, align 8
  %2884 = and i32 %2883, 65535
  %2885 = icmp eq i32 %2884, 14
  br i1 %2885, label %2886, label %2889, !prof !163

2886:                                             ; preds = %2882
  %2887 = getelementptr inbounds %struct.rtx_def, ptr %2880, i64 0, i32 1
  %2888 = load ptr, ptr %2887, align 8, !tbaa !143
  br label %2916

2889:                                             ; preds = %2882
  %2890 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2916, label %2892, !prof !164

2892:                                             ; preds = %2889
  %2893 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2916, label %2895, !prof !165

2895:                                             ; preds = %2892
  %2896 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %2897 = getelementptr inbounds %struct.rtx_def, ptr %2896, i64 0, i32 1, i32 0, i32 0, i64 1
  %2898 = load ptr, ptr %2897, align 8, !tbaa !143
  %2899 = getelementptr inbounds %struct.rtx_def, ptr %2898, i64 0, i32 1
  %2900 = getelementptr inbounds %struct.rtx_def, ptr %2898, i64 0, i32 1, i32 0, i32 0, i64 2
  %2901 = load ptr, ptr %2900, align 8, !tbaa !143
  %2902 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2903 = icmp eq ptr %2901, %2902
  br i1 %2903, label %2904, label %2906, !prof !166

2904:                                             ; preds = %2895
  %2905 = load ptr, ptr %2899, align 8, !tbaa !143
  br label %2916

2906:                                             ; preds = %2895
  %2907 = getelementptr inbounds %struct.rtx_def, ptr %2898, i64 0, i32 1, i32 0, i32 0, i64 1
  %2908 = load ptr, ptr %2907, align 8, !tbaa !143
  %2909 = icmp eq ptr %2908, %2902
  br i1 %2909, label %2910, label %2916

2910:                                             ; preds = %2906
  %2911 = load ptr, ptr %2899, align 8, !tbaa !143
  %2912 = call i32 @reversed_comparison_code(ptr noundef %2911, ptr noundef nonnull %2) #29
  %2913 = icmp ne i32 %2912, 0
  %2914 = zext i1 %2913 to i8
  %2915 = select i1 %2913, ptr %2911, ptr null
  br label %2916

2916:                                             ; preds = %2910, %2906, %2904, %2892, %2889, %2886, %2879
  %2917 = phi i8 [ 0, %2879 ], [ 0, %2886 ], [ 0, %2889 ], [ 0, %2892 ], [ 0, %2904 ], [ 0, %2906 ], [ %2914, %2910 ]
  %2918 = phi ptr [ null, %2879 ], [ %2888, %2886 ], [ null, %2889 ], [ null, %2892 ], [ %2905, %2904 ], [ null, %2906 ], [ %2915, %2910 ]
  %2919 = getelementptr inbounds %struct.rtx_def, ptr %2871, i64 1
  %2920 = load ptr, ptr %2919, align 8, !tbaa !143
  %2921 = icmp eq ptr %2920, null
  br i1 %2921, label %2956, label %2922, !prof !163

2922:                                             ; preds = %2916
  %2923 = load i32, ptr %2920, align 8
  %2924 = and i32 %2923, 65535
  %2925 = icmp eq i32 %2924, 14
  br i1 %2925, label %2926, label %2929, !prof !163

2926:                                             ; preds = %2922
  %2927 = getelementptr inbounds %struct.rtx_def, ptr %2920, i64 0, i32 1
  %2928 = load ptr, ptr %2927, align 8, !tbaa !143
  br label %2956

2929:                                             ; preds = %2922
  %2930 = call i32 @any_condjump_p(ptr noundef nonnull %2871) #29
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %2956, label %2932, !prof !164

2932:                                             ; preds = %2929
  %2933 = call i32 @onlyjump_p(ptr noundef nonnull %2871) #29
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %2956, label %2935, !prof !165

2935:                                             ; preds = %2932
  %2936 = call ptr @pc_set(ptr noundef nonnull %2871) #29
  %2937 = getelementptr inbounds %struct.rtx_def, ptr %2936, i64 0, i32 1, i32 0, i32 0, i64 1
  %2938 = load ptr, ptr %2937, align 8, !tbaa !143
  %2939 = getelementptr inbounds %struct.rtx_def, ptr %2938, i64 0, i32 1
  %2940 = getelementptr inbounds %struct.rtx_def, ptr %2938, i64 0, i32 1, i32 0, i32 0, i64 2
  %2941 = load ptr, ptr %2940, align 8, !tbaa !143
  %2942 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %2943 = icmp eq ptr %2941, %2942
  br i1 %2943, label %2944, label %2946, !prof !166

2944:                                             ; preds = %2935
  %2945 = load ptr, ptr %2939, align 8, !tbaa !143
  br label %2956

2946:                                             ; preds = %2935
  %2947 = getelementptr inbounds %struct.rtx_def, ptr %2938, i64 0, i32 1, i32 0, i32 0, i64 1
  %2948 = load ptr, ptr %2947, align 8, !tbaa !143
  %2949 = icmp eq ptr %2948, %2942
  br i1 %2949, label %2950, label %2956

2950:                                             ; preds = %2946
  %2951 = load ptr, ptr %2939, align 8, !tbaa !143
  %2952 = call i32 @reversed_comparison_code(ptr noundef %2951, ptr noundef nonnull %2871) #29
  %2953 = icmp ne i32 %2952, 0
  %2954 = zext i1 %2953 to i8
  %2955 = select i1 %2953, ptr %2951, ptr null
  br label %2956

2956:                                             ; preds = %2950, %2946, %2944, %2932, %2929, %2926, %2916
  %2957 = phi i8 [ 0, %2916 ], [ 0, %2926 ], [ 0, %2929 ], [ 0, %2932 ], [ 0, %2944 ], [ 0, %2946 ], [ %2954, %2950 ]
  %2958 = phi ptr [ null, %2916 ], [ %2928, %2926 ], [ null, %2929 ], [ null, %2932 ], [ %2945, %2944 ], [ null, %2946 ], [ %2955, %2950 ]
  %2959 = icmp ne ptr %2918, null
  %2960 = icmp ne ptr %2958, null
  %2961 = select i1 %2959, i1 %2960, i1 false, !prof !167
  br i1 %2961, label %2962, label %3001, !prof !168

2962:                                             ; preds = %2956
  %2963 = load i32, ptr %2918, align 8
  %2964 = and i32 %2963, 65535
  %2965 = zext nneg i32 %2964 to i64
  %2966 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2965
  %2967 = load i32, ptr %2966, align 4, !tbaa !147
  %2968 = icmp ult i32 %2967, 2
  br i1 %2968, label %2969, label %3001

2969:                                             ; preds = %2962
  %2970 = load i32, ptr %2958, align 8
  %2971 = and i32 %2970, 65535
  %2972 = zext nneg i32 %2971 to i64
  %2973 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2972
  %2974 = load i32, ptr %2973, align 4, !tbaa !147
  %2975 = icmp ult i32 %2974, 2
  br i1 %2975, label %2976, label %3001

2976:                                             ; preds = %2969
  %2977 = icmp eq i8 %2917, %2957
  br i1 %2977, label %2978, label %2980

2978:                                             ; preds = %2976
  %2979 = call i32 @reversed_comparison_code(ptr noundef nonnull %2958, ptr noundef null) #29
  br label %2980

2980:                                             ; preds = %2978, %2976
  %2981 = phi i32 [ %2979, %2978 ], [ %2971, %2976 ]
  %2982 = icmp eq i32 %2964, %2981
  br i1 %2982, label %2983, label %3001

2983:                                             ; preds = %2980
  %2984 = getelementptr inbounds %struct.rtx_def, ptr %2918, i64 0, i32 1
  %2985 = load ptr, ptr %2984, align 8, !tbaa !143
  %2986 = getelementptr inbounds %struct.rtx_def, ptr %2958, i64 0, i32 1
  %2987 = load ptr, ptr %2986, align 8, !tbaa !143
  %2988 = icmp eq ptr %2985, %2987
  br i1 %2988, label %2989, label %3001

2989:                                             ; preds = %2983
  %2990 = getelementptr inbounds %struct.rtx_def, ptr %2918, i64 0, i32 1, i32 0, i32 0, i64 1
  %2991 = load ptr, ptr %2990, align 8, !tbaa !143
  %2992 = getelementptr inbounds %struct.rtx_def, ptr %2958, i64 0, i32 1, i32 0, i32 0, i64 1
  %2993 = load ptr, ptr %2992, align 8, !tbaa !143
  %2994 = icmp eq ptr %2991, %2993
  br i1 %2994, label %2995, label %3001

2995:                                             ; preds = %2989
  %2996 = call i32 @modified_in_p(ptr noundef nonnull %2918, ptr noundef nonnull %2871) #29
  %2997 = icmp eq i32 %2996, 0
  br i1 %2997, label %2998, label %3001

2998:                                             ; preds = %2995
  %2999 = call i32 @modified_in_p(ptr noundef nonnull %2958, ptr noundef nonnull %2) #29
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3017, label %3001

3001:                                             ; preds = %2998, %2995, %2989, %2983, %2980, %2969, %2962, %2956, %2875, %2866
  %3002 = load ptr, ptr %2868, align 8, !tbaa !143
  %3003 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %3004 = icmp eq ptr %3003, null
  br i1 %3004, label %3008, label %3005, !prof !280

3005:                                             ; preds = %3001
  %3006 = icmp eq ptr %3003, %2
  br i1 %3006, label %3009, label %3007, !prof !281

3007:                                             ; preds = %3005
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %3009

3008:                                             ; preds = %3001
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %3009

3009:                                             ; preds = %3008, %3007, %3005
  %3010 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %3011 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3010, i64 0, i32 11
  %3012 = load ptr, ptr %3011, align 8, !tbaa !282
  %3013 = icmp eq ptr %3012, null
  br i1 %3013, label %3015, label %3014, !prof !283

3014:                                             ; preds = %3009
  call void %3012(ptr noundef %3002, i32 noundef 33554432) #29, !prof !446
  br label %3015

3015:                                             ; preds = %3014, %3009
  br i1 %3004, label %3016, label %3017, !prof !280

3016:                                             ; preds = %3015
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %3017

3017:                                             ; preds = %3016, %3015, %2998
  call void @free_INSN_LIST_node(ptr noundef nonnull %2867) #29
  %3018 = icmp eq ptr %2870, null
  br i1 %3018, label %3019, label %2866, !prof !289, !llvm.loop !290

3019:                                             ; preds = %2860, %3017, %2709, %2864
  %3020 = load i8, ptr %2068, align 4
  %3021 = and i8 %3020, 1
  %3022 = icmp eq i8 %3021, 0
  %3023 = load ptr, ptr %2071, align 8, !tbaa !132
  br i1 %3022, label %3179, label %3024, !prof !278

3024:                                             ; preds = %3019
  %3025 = icmp eq ptr %3023, null
  br i1 %3025, label %3334, label %3026, !prof !279

3026:                                             ; preds = %3024, %3175
  %3027 = phi ptr [ %3177, %3175 ], [ %3023, %3024 ]
  %3028 = getelementptr inbounds %struct.rtx_def, ptr %3027, i64 0, i32 1
  %3029 = load ptr, ptr %3028, align 8, !tbaa !143
  %3030 = load i32, ptr %2, align 8
  %3031 = and i32 %3030, 65535
  %3032 = icmp eq i32 %3031, 10
  br i1 %3032, label %3159, label %3033, !prof !161

3033:                                             ; preds = %3026
  %3034 = load i32, ptr %3029, align 8
  %3035 = and i32 %3034, 65535
  %3036 = icmp eq i32 %3035, 10
  br i1 %3036, label %3159, label %3037, !prof !162

3037:                                             ; preds = %3033
  %3038 = load ptr, ptr %1229, align 8, !tbaa !143
  %3039 = icmp eq ptr %3038, null
  br i1 %3039, label %3074, label %3040, !prof !163

3040:                                             ; preds = %3037
  %3041 = load i32, ptr %3038, align 8
  %3042 = and i32 %3041, 65535
  %3043 = icmp eq i32 %3042, 14
  br i1 %3043, label %3044, label %3047, !prof !163

3044:                                             ; preds = %3040
  %3045 = getelementptr inbounds %struct.rtx_def, ptr %3038, i64 0, i32 1
  %3046 = load ptr, ptr %3045, align 8, !tbaa !143
  br label %3074

3047:                                             ; preds = %3040
  %3048 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %3049 = icmp eq i32 %3048, 0
  br i1 %3049, label %3074, label %3050, !prof !164

3050:                                             ; preds = %3047
  %3051 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3074, label %3053, !prof !165

3053:                                             ; preds = %3050
  %3054 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %3055 = getelementptr inbounds %struct.rtx_def, ptr %3054, i64 0, i32 1, i32 0, i32 0, i64 1
  %3056 = load ptr, ptr %3055, align 8, !tbaa !143
  %3057 = getelementptr inbounds %struct.rtx_def, ptr %3056, i64 0, i32 1
  %3058 = getelementptr inbounds %struct.rtx_def, ptr %3056, i64 0, i32 1, i32 0, i32 0, i64 2
  %3059 = load ptr, ptr %3058, align 8, !tbaa !143
  %3060 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3061 = icmp eq ptr %3059, %3060
  br i1 %3061, label %3062, label %3064, !prof !166

3062:                                             ; preds = %3053
  %3063 = load ptr, ptr %3057, align 8, !tbaa !143
  br label %3074

3064:                                             ; preds = %3053
  %3065 = getelementptr inbounds %struct.rtx_def, ptr %3056, i64 0, i32 1, i32 0, i32 0, i64 1
  %3066 = load ptr, ptr %3065, align 8, !tbaa !143
  %3067 = icmp eq ptr %3066, %3060
  br i1 %3067, label %3068, label %3074

3068:                                             ; preds = %3064
  %3069 = load ptr, ptr %3057, align 8, !tbaa !143
  %3070 = call i32 @reversed_comparison_code(ptr noundef %3069, ptr noundef nonnull %2) #29
  %3071 = icmp ne i32 %3070, 0
  %3072 = zext i1 %3071 to i8
  %3073 = select i1 %3071, ptr %3069, ptr null
  br label %3074

3074:                                             ; preds = %3068, %3064, %3062, %3050, %3047, %3044, %3037
  %3075 = phi i8 [ 0, %3037 ], [ 0, %3044 ], [ 0, %3047 ], [ 0, %3050 ], [ 0, %3062 ], [ 0, %3064 ], [ %3072, %3068 ]
  %3076 = phi ptr [ null, %3037 ], [ %3046, %3044 ], [ null, %3047 ], [ null, %3050 ], [ %3063, %3062 ], [ null, %3064 ], [ %3073, %3068 ]
  %3077 = getelementptr inbounds %struct.rtx_def, ptr %3029, i64 1
  %3078 = load ptr, ptr %3077, align 8, !tbaa !143
  %3079 = icmp eq ptr %3078, null
  br i1 %3079, label %3114, label %3080, !prof !163

3080:                                             ; preds = %3074
  %3081 = load i32, ptr %3078, align 8
  %3082 = and i32 %3081, 65535
  %3083 = icmp eq i32 %3082, 14
  br i1 %3083, label %3084, label %3087, !prof !163

3084:                                             ; preds = %3080
  %3085 = getelementptr inbounds %struct.rtx_def, ptr %3078, i64 0, i32 1
  %3086 = load ptr, ptr %3085, align 8, !tbaa !143
  br label %3114

3087:                                             ; preds = %3080
  %3088 = call i32 @any_condjump_p(ptr noundef nonnull %3029) #29
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3114, label %3090, !prof !164

3090:                                             ; preds = %3087
  %3091 = call i32 @onlyjump_p(ptr noundef nonnull %3029) #29
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3114, label %3093, !prof !165

3093:                                             ; preds = %3090
  %3094 = call ptr @pc_set(ptr noundef nonnull %3029) #29
  %3095 = getelementptr inbounds %struct.rtx_def, ptr %3094, i64 0, i32 1, i32 0, i32 0, i64 1
  %3096 = load ptr, ptr %3095, align 8, !tbaa !143
  %3097 = getelementptr inbounds %struct.rtx_def, ptr %3096, i64 0, i32 1
  %3098 = getelementptr inbounds %struct.rtx_def, ptr %3096, i64 0, i32 1, i32 0, i32 0, i64 2
  %3099 = load ptr, ptr %3098, align 8, !tbaa !143
  %3100 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3101 = icmp eq ptr %3099, %3100
  br i1 %3101, label %3102, label %3104, !prof !166

3102:                                             ; preds = %3093
  %3103 = load ptr, ptr %3097, align 8, !tbaa !143
  br label %3114

3104:                                             ; preds = %3093
  %3105 = getelementptr inbounds %struct.rtx_def, ptr %3096, i64 0, i32 1, i32 0, i32 0, i64 1
  %3106 = load ptr, ptr %3105, align 8, !tbaa !143
  %3107 = icmp eq ptr %3106, %3100
  br i1 %3107, label %3108, label %3114

3108:                                             ; preds = %3104
  %3109 = load ptr, ptr %3097, align 8, !tbaa !143
  %3110 = call i32 @reversed_comparison_code(ptr noundef %3109, ptr noundef nonnull %3029) #29
  %3111 = icmp ne i32 %3110, 0
  %3112 = zext i1 %3111 to i8
  %3113 = select i1 %3111, ptr %3109, ptr null
  br label %3114

3114:                                             ; preds = %3108, %3104, %3102, %3090, %3087, %3084, %3074
  %3115 = phi i8 [ 0, %3074 ], [ 0, %3084 ], [ 0, %3087 ], [ 0, %3090 ], [ 0, %3102 ], [ 0, %3104 ], [ %3112, %3108 ]
  %3116 = phi ptr [ null, %3074 ], [ %3086, %3084 ], [ null, %3087 ], [ null, %3090 ], [ %3103, %3102 ], [ null, %3104 ], [ %3113, %3108 ]
  %3117 = icmp ne ptr %3076, null
  %3118 = icmp ne ptr %3116, null
  %3119 = select i1 %3117, i1 %3118, i1 false, !prof !167
  br i1 %3119, label %3120, label %3159, !prof !168

3120:                                             ; preds = %3114
  %3121 = load i32, ptr %3076, align 8
  %3122 = and i32 %3121, 65535
  %3123 = zext nneg i32 %3122 to i64
  %3124 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3123
  %3125 = load i32, ptr %3124, align 4, !tbaa !147
  %3126 = icmp ult i32 %3125, 2
  br i1 %3126, label %3127, label %3159

3127:                                             ; preds = %3120
  %3128 = load i32, ptr %3116, align 8
  %3129 = and i32 %3128, 65535
  %3130 = zext nneg i32 %3129 to i64
  %3131 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3130
  %3132 = load i32, ptr %3131, align 4, !tbaa !147
  %3133 = icmp ult i32 %3132, 2
  br i1 %3133, label %3134, label %3159

3134:                                             ; preds = %3127
  %3135 = icmp eq i8 %3075, %3115
  br i1 %3135, label %3136, label %3138

3136:                                             ; preds = %3134
  %3137 = call i32 @reversed_comparison_code(ptr noundef nonnull %3116, ptr noundef null) #29
  br label %3138

3138:                                             ; preds = %3136, %3134
  %3139 = phi i32 [ %3137, %3136 ], [ %3129, %3134 ]
  %3140 = icmp eq i32 %3122, %3139
  br i1 %3140, label %3141, label %3159

3141:                                             ; preds = %3138
  %3142 = getelementptr inbounds %struct.rtx_def, ptr %3076, i64 0, i32 1
  %3143 = load ptr, ptr %3142, align 8, !tbaa !143
  %3144 = getelementptr inbounds %struct.rtx_def, ptr %3116, i64 0, i32 1
  %3145 = load ptr, ptr %3144, align 8, !tbaa !143
  %3146 = icmp eq ptr %3143, %3145
  br i1 %3146, label %3147, label %3159

3147:                                             ; preds = %3141
  %3148 = getelementptr inbounds %struct.rtx_def, ptr %3076, i64 0, i32 1, i32 0, i32 0, i64 1
  %3149 = load ptr, ptr %3148, align 8, !tbaa !143
  %3150 = getelementptr inbounds %struct.rtx_def, ptr %3116, i64 0, i32 1, i32 0, i32 0, i64 1
  %3151 = load ptr, ptr %3150, align 8, !tbaa !143
  %3152 = icmp eq ptr %3149, %3151
  br i1 %3152, label %3153, label %3159

3153:                                             ; preds = %3147
  %3154 = call i32 @modified_in_p(ptr noundef nonnull %3076, ptr noundef nonnull %3029) #29
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3156, label %3159

3156:                                             ; preds = %3153
  %3157 = call i32 @modified_in_p(ptr noundef nonnull %3116, ptr noundef nonnull %2) #29
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3175, label %3159

3159:                                             ; preds = %3156, %3153, %3147, %3141, %3138, %3127, %3120, %3114, %3033, %3026
  %3160 = load ptr, ptr %3028, align 8, !tbaa !143
  %3161 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %3162 = icmp eq ptr %3161, null
  br i1 %3162, label %3166, label %3163, !prof !280

3163:                                             ; preds = %3159
  %3164 = icmp eq ptr %3161, %2
  br i1 %3164, label %3167, label %3165, !prof !281

3165:                                             ; preds = %3163
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %3167

3166:                                             ; preds = %3159
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %3167

3167:                                             ; preds = %3166, %3165, %3163
  %3168 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %3169 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3168, i64 0, i32 11
  %3170 = load ptr, ptr %3169, align 8, !tbaa !282
  %3171 = icmp eq ptr %3170, null
  br i1 %3171, label %3173, label %3172, !prof !283

3172:                                             ; preds = %3167
  call void %3170(ptr noundef %3160, i32 noundef 67108864) #29, !prof !445
  br label %3173

3173:                                             ; preds = %3172, %3167
  br i1 %3162, label %3174, label %3175, !prof !280

3174:                                             ; preds = %3173
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %3175

3175:                                             ; preds = %3174, %3173, %3156
  %3176 = getelementptr inbounds %struct.rtx_def, ptr %3027, i64 0, i32 1, i32 0, i32 0, i64 1
  %3177 = load ptr, ptr %3176, align 8, !tbaa !143
  %3178 = icmp eq ptr %3177, null
  br i1 %3178, label %3334, label %3026, !prof !285, !llvm.loop !286

3179:                                             ; preds = %3019
  store ptr null, ptr %2071, align 8, !tbaa !132
  %3180 = icmp eq ptr %3023, null
  br i1 %3180, label %3334, label %3181, !prof !287

3181:                                             ; preds = %3179, %3332
  %3182 = phi ptr [ %3185, %3332 ], [ %3023, %3179 ]
  %3183 = getelementptr inbounds %struct.rtx_def, ptr %3182, i64 0, i32 1
  %3184 = getelementptr inbounds %struct.rtx_def, ptr %3182, i64 0, i32 1, i32 0, i32 0, i64 1
  %3185 = load ptr, ptr %3184, align 8, !tbaa !143
  %3186 = load ptr, ptr %3183, align 8, !tbaa !143
  %3187 = load i32, ptr %2, align 8
  %3188 = and i32 %3187, 65535
  %3189 = icmp eq i32 %3188, 10
  br i1 %3189, label %3316, label %3190, !prof !161

3190:                                             ; preds = %3181
  %3191 = load i32, ptr %3186, align 8
  %3192 = and i32 %3191, 65535
  %3193 = icmp eq i32 %3192, 10
  br i1 %3193, label %3316, label %3194, !prof !162

3194:                                             ; preds = %3190
  %3195 = load ptr, ptr %1229, align 8, !tbaa !143
  %3196 = icmp eq ptr %3195, null
  br i1 %3196, label %3231, label %3197, !prof !163

3197:                                             ; preds = %3194
  %3198 = load i32, ptr %3195, align 8
  %3199 = and i32 %3198, 65535
  %3200 = icmp eq i32 %3199, 14
  br i1 %3200, label %3201, label %3204, !prof !163

3201:                                             ; preds = %3197
  %3202 = getelementptr inbounds %struct.rtx_def, ptr %3195, i64 0, i32 1
  %3203 = load ptr, ptr %3202, align 8, !tbaa !143
  br label %3231

3204:                                             ; preds = %3197
  %3205 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3231, label %3207, !prof !164

3207:                                             ; preds = %3204
  %3208 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %3209 = icmp eq i32 %3208, 0
  br i1 %3209, label %3231, label %3210, !prof !165

3210:                                             ; preds = %3207
  %3211 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %3212 = getelementptr inbounds %struct.rtx_def, ptr %3211, i64 0, i32 1, i32 0, i32 0, i64 1
  %3213 = load ptr, ptr %3212, align 8, !tbaa !143
  %3214 = getelementptr inbounds %struct.rtx_def, ptr %3213, i64 0, i32 1
  %3215 = getelementptr inbounds %struct.rtx_def, ptr %3213, i64 0, i32 1, i32 0, i32 0, i64 2
  %3216 = load ptr, ptr %3215, align 8, !tbaa !143
  %3217 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3218 = icmp eq ptr %3216, %3217
  br i1 %3218, label %3219, label %3221, !prof !166

3219:                                             ; preds = %3210
  %3220 = load ptr, ptr %3214, align 8, !tbaa !143
  br label %3231

3221:                                             ; preds = %3210
  %3222 = getelementptr inbounds %struct.rtx_def, ptr %3213, i64 0, i32 1, i32 0, i32 0, i64 1
  %3223 = load ptr, ptr %3222, align 8, !tbaa !143
  %3224 = icmp eq ptr %3223, %3217
  br i1 %3224, label %3225, label %3231

3225:                                             ; preds = %3221
  %3226 = load ptr, ptr %3214, align 8, !tbaa !143
  %3227 = call i32 @reversed_comparison_code(ptr noundef %3226, ptr noundef nonnull %2) #29
  %3228 = icmp ne i32 %3227, 0
  %3229 = zext i1 %3228 to i8
  %3230 = select i1 %3228, ptr %3226, ptr null
  br label %3231

3231:                                             ; preds = %3225, %3221, %3219, %3207, %3204, %3201, %3194
  %3232 = phi i8 [ 0, %3194 ], [ 0, %3201 ], [ 0, %3204 ], [ 0, %3207 ], [ 0, %3219 ], [ 0, %3221 ], [ %3229, %3225 ]
  %3233 = phi ptr [ null, %3194 ], [ %3203, %3201 ], [ null, %3204 ], [ null, %3207 ], [ %3220, %3219 ], [ null, %3221 ], [ %3230, %3225 ]
  %3234 = getelementptr inbounds %struct.rtx_def, ptr %3186, i64 1
  %3235 = load ptr, ptr %3234, align 8, !tbaa !143
  %3236 = icmp eq ptr %3235, null
  br i1 %3236, label %3271, label %3237, !prof !163

3237:                                             ; preds = %3231
  %3238 = load i32, ptr %3235, align 8
  %3239 = and i32 %3238, 65535
  %3240 = icmp eq i32 %3239, 14
  br i1 %3240, label %3241, label %3244, !prof !163

3241:                                             ; preds = %3237
  %3242 = getelementptr inbounds %struct.rtx_def, ptr %3235, i64 0, i32 1
  %3243 = load ptr, ptr %3242, align 8, !tbaa !143
  br label %3271

3244:                                             ; preds = %3237
  %3245 = call i32 @any_condjump_p(ptr noundef nonnull %3186) #29
  %3246 = icmp eq i32 %3245, 0
  br i1 %3246, label %3271, label %3247, !prof !164

3247:                                             ; preds = %3244
  %3248 = call i32 @onlyjump_p(ptr noundef nonnull %3186) #29
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3271, label %3250, !prof !165

3250:                                             ; preds = %3247
  %3251 = call ptr @pc_set(ptr noundef nonnull %3186) #29
  %3252 = getelementptr inbounds %struct.rtx_def, ptr %3251, i64 0, i32 1, i32 0, i32 0, i64 1
  %3253 = load ptr, ptr %3252, align 8, !tbaa !143
  %3254 = getelementptr inbounds %struct.rtx_def, ptr %3253, i64 0, i32 1
  %3255 = getelementptr inbounds %struct.rtx_def, ptr %3253, i64 0, i32 1, i32 0, i32 0, i64 2
  %3256 = load ptr, ptr %3255, align 8, !tbaa !143
  %3257 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3258 = icmp eq ptr %3256, %3257
  br i1 %3258, label %3259, label %3261, !prof !166

3259:                                             ; preds = %3250
  %3260 = load ptr, ptr %3254, align 8, !tbaa !143
  br label %3271

3261:                                             ; preds = %3250
  %3262 = getelementptr inbounds %struct.rtx_def, ptr %3253, i64 0, i32 1, i32 0, i32 0, i64 1
  %3263 = load ptr, ptr %3262, align 8, !tbaa !143
  %3264 = icmp eq ptr %3263, %3257
  br i1 %3264, label %3265, label %3271

3265:                                             ; preds = %3261
  %3266 = load ptr, ptr %3254, align 8, !tbaa !143
  %3267 = call i32 @reversed_comparison_code(ptr noundef %3266, ptr noundef nonnull %3186) #29
  %3268 = icmp ne i32 %3267, 0
  %3269 = zext i1 %3268 to i8
  %3270 = select i1 %3268, ptr %3266, ptr null
  br label %3271

3271:                                             ; preds = %3265, %3261, %3259, %3247, %3244, %3241, %3231
  %3272 = phi i8 [ 0, %3231 ], [ 0, %3241 ], [ 0, %3244 ], [ 0, %3247 ], [ 0, %3259 ], [ 0, %3261 ], [ %3269, %3265 ]
  %3273 = phi ptr [ null, %3231 ], [ %3243, %3241 ], [ null, %3244 ], [ null, %3247 ], [ %3260, %3259 ], [ null, %3261 ], [ %3270, %3265 ]
  %3274 = icmp ne ptr %3233, null
  %3275 = icmp ne ptr %3273, null
  %3276 = select i1 %3274, i1 %3275, i1 false, !prof !167
  br i1 %3276, label %3277, label %3316, !prof !168

3277:                                             ; preds = %3271
  %3278 = load i32, ptr %3233, align 8
  %3279 = and i32 %3278, 65535
  %3280 = zext nneg i32 %3279 to i64
  %3281 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3280
  %3282 = load i32, ptr %3281, align 4, !tbaa !147
  %3283 = icmp ult i32 %3282, 2
  br i1 %3283, label %3284, label %3316

3284:                                             ; preds = %3277
  %3285 = load i32, ptr %3273, align 8
  %3286 = and i32 %3285, 65535
  %3287 = zext nneg i32 %3286 to i64
  %3288 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3287
  %3289 = load i32, ptr %3288, align 4, !tbaa !147
  %3290 = icmp ult i32 %3289, 2
  br i1 %3290, label %3291, label %3316

3291:                                             ; preds = %3284
  %3292 = icmp eq i8 %3232, %3272
  br i1 %3292, label %3293, label %3295

3293:                                             ; preds = %3291
  %3294 = call i32 @reversed_comparison_code(ptr noundef nonnull %3273, ptr noundef null) #29
  br label %3295

3295:                                             ; preds = %3293, %3291
  %3296 = phi i32 [ %3294, %3293 ], [ %3286, %3291 ]
  %3297 = icmp eq i32 %3279, %3296
  br i1 %3297, label %3298, label %3316

3298:                                             ; preds = %3295
  %3299 = getelementptr inbounds %struct.rtx_def, ptr %3233, i64 0, i32 1
  %3300 = load ptr, ptr %3299, align 8, !tbaa !143
  %3301 = getelementptr inbounds %struct.rtx_def, ptr %3273, i64 0, i32 1
  %3302 = load ptr, ptr %3301, align 8, !tbaa !143
  %3303 = icmp eq ptr %3300, %3302
  br i1 %3303, label %3304, label %3316

3304:                                             ; preds = %3298
  %3305 = getelementptr inbounds %struct.rtx_def, ptr %3233, i64 0, i32 1, i32 0, i32 0, i64 1
  %3306 = load ptr, ptr %3305, align 8, !tbaa !143
  %3307 = getelementptr inbounds %struct.rtx_def, ptr %3273, i64 0, i32 1, i32 0, i32 0, i64 1
  %3308 = load ptr, ptr %3307, align 8, !tbaa !143
  %3309 = icmp eq ptr %3306, %3308
  br i1 %3309, label %3310, label %3316

3310:                                             ; preds = %3304
  %3311 = call i32 @modified_in_p(ptr noundef nonnull %3233, ptr noundef nonnull %3186) #29
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3313, label %3316

3313:                                             ; preds = %3310
  %3314 = call i32 @modified_in_p(ptr noundef nonnull %3273, ptr noundef nonnull %2) #29
  %3315 = icmp eq i32 %3314, 0
  br i1 %3315, label %3332, label %3316

3316:                                             ; preds = %3313, %3310, %3304, %3298, %3295, %3284, %3277, %3271, %3190, %3181
  %3317 = load ptr, ptr %3183, align 8, !tbaa !143
  %3318 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %3319 = icmp eq ptr %3318, null
  br i1 %3319, label %3323, label %3320, !prof !280

3320:                                             ; preds = %3316
  %3321 = icmp eq ptr %3318, %2
  br i1 %3321, label %3324, label %3322, !prof !281

3322:                                             ; preds = %3320
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %3324

3323:                                             ; preds = %3316
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %3324

3324:                                             ; preds = %3323, %3322, %3320
  %3325 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %3326 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3325, i64 0, i32 11
  %3327 = load ptr, ptr %3326, align 8, !tbaa !282
  %3328 = icmp eq ptr %3327, null
  br i1 %3328, label %3330, label %3329, !prof !283

3329:                                             ; preds = %3324
  call void %3327(ptr noundef %3317, i32 noundef 67108864) #29, !prof !446
  br label %3330

3330:                                             ; preds = %3329, %3324
  br i1 %3319, label %3331, label %3332, !prof !280

3331:                                             ; preds = %3330
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %3332

3332:                                             ; preds = %3331, %3330, %3313
  call void @free_INSN_LIST_node(ptr noundef nonnull %3182) #29
  %3333 = icmp eq ptr %3185, null
  br i1 %3333, label %3334, label %3181, !prof !289, !llvm.loop !290

3334:                                             ; preds = %3175, %3332, %3024, %3179
  %3335 = load i8, ptr %2068, align 4
  %3336 = and i8 %3335, 1
  %3337 = icmp eq i8 %3336, 0
  br i1 %3337, label %3338, label %3345, !prof !447

3338:                                             ; preds = %3334
  %3339 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %3340 = load ptr, ptr %2072, align 8, !tbaa !418
  %3341 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %3340) #29
  store ptr %3341, ptr %2072, align 8, !tbaa !418
  %3342 = getelementptr inbounds %struct.deps_reg, ptr %2069, i64 %2070, i32 4
  store i32 0, ptr %3342, align 8, !tbaa !358
  %3343 = getelementptr inbounds %struct.deps_reg, ptr %2069, i64 %2070, i32 5
  store i32 0, ptr %3343, align 4, !tbaa !416
  %3344 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %3339, i32 noundef %2064) #29
  br label %3345

3345:                                             ; preds = %3338, %3334
  %3346 = lshr i64 %2063, 1
  %3347 = add i32 %2064, 1
  br label %2005, !llvm.loop !448

3348:                                             ; preds = %1475, %2060, %855, %850, %860
  br label %3349

3349:                                             ; preds = %3348, %3414
  %3350 = phi i64 [ 0, %3348 ], [ %3415, %3414 ]
  %3351 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !253
  %3352 = shl nuw nsw i64 1, %3350
  %3353 = and i64 %3351, %3352
  %3354 = icmp eq i64 %3353, 0
  br i1 %3354, label %3414, label %3355, !prof !449

3355:                                             ; preds = %3349
  %3356 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %3357 = load ptr, ptr %3356, align 8, !tbaa !357
  %3358 = getelementptr inbounds %struct.deps_reg, ptr %3357, i64 %3350
  %3359 = getelementptr inbounds %struct.deps_reg, ptr %3357, i64 %3350, i32 1
  %3360 = load ptr, ptr %3359, align 8, !tbaa !143
  %3361 = icmp eq ptr %3360, null
  br i1 %3361, label %3374, label %3362

3362:                                             ; preds = %3355, %3370
  %3363 = phi ptr [ %3372, %3370 ], [ %3360, %3355 ]
  %3364 = getelementptr inbounds %struct.rtx_def, ptr %3363, i64 0, i32 1
  %3365 = load ptr, ptr %3364, align 8, !tbaa !143
  %3366 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3365), !range !220
  %3367 = icmp eq i8 %3366, 0
  br i1 %3367, label %3368, label %3370

3368:                                             ; preds = %3362
  %3369 = load ptr, ptr %3364, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3369, i32 noundef 12)
  br label %3370

3370:                                             ; preds = %3368, %3362
  %3371 = getelementptr inbounds %struct.rtx_def, ptr %3363, i64 0, i32 1, i32 0, i32 0, i64 1
  %3372 = load ptr, ptr %3371, align 8, !tbaa !143
  %3373 = icmp eq ptr %3372, null
  br i1 %3373, label %3374, label %3362, !llvm.loop !286

3374:                                             ; preds = %3370, %3355
  %3375 = getelementptr inbounds %struct.deps_reg, ptr %3357, i64 %3350, i32 3
  %3376 = load ptr, ptr %3375, align 8, !tbaa !143
  %3377 = icmp eq ptr %3376, null
  br i1 %3377, label %3378, label %3381

3378:                                             ; preds = %3389, %3374
  %3379 = load ptr, ptr %3358, align 8, !tbaa !143
  %3380 = icmp eq ptr %3379, null
  br i1 %3380, label %3405, label %3393

3381:                                             ; preds = %3374, %3389
  %3382 = phi ptr [ %3391, %3389 ], [ %3376, %3374 ]
  %3383 = getelementptr inbounds %struct.rtx_def, ptr %3382, i64 0, i32 1
  %3384 = load ptr, ptr %3383, align 8, !tbaa !143
  %3385 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3384), !range !220
  %3386 = icmp eq i8 %3385, 0
  br i1 %3386, label %3387, label %3389

3387:                                             ; preds = %3381
  %3388 = load ptr, ptr %3383, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3388, i32 noundef 12)
  br label %3389

3389:                                             ; preds = %3387, %3381
  %3390 = getelementptr inbounds %struct.rtx_def, ptr %3382, i64 0, i32 1, i32 0, i32 0, i64 1
  %3391 = load ptr, ptr %3390, align 8, !tbaa !143
  %3392 = icmp eq ptr %3391, null
  br i1 %3392, label %3378, label %3381, !llvm.loop !286

3393:                                             ; preds = %3378, %3401
  %3394 = phi ptr [ %3403, %3401 ], [ %3379, %3378 ]
  %3395 = getelementptr inbounds %struct.rtx_def, ptr %3394, i64 0, i32 1
  %3396 = load ptr, ptr %3395, align 8, !tbaa !143
  %3397 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3396), !range !220
  %3398 = icmp eq i8 %3397, 0
  br i1 %3398, label %3399, label %3401

3399:                                             ; preds = %3393
  %3400 = load ptr, ptr %3395, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3400, i32 noundef 12)
  br label %3401

3401:                                             ; preds = %3399, %3393
  %3402 = getelementptr inbounds %struct.rtx_def, ptr %3394, i64 0, i32 1, i32 0, i32 0, i64 1
  %3403 = load ptr, ptr %3402, align 8, !tbaa !143
  %3404 = icmp eq ptr %3403, null
  br i1 %3404, label %3405, label %3393, !llvm.loop !286

3405:                                             ; preds = %3401, %3378
  %3406 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %3407 = load i8, ptr %3406, align 4
  %3408 = and i8 %3407, 1
  %3409 = icmp eq i8 %3408, 0
  br i1 %3409, label %3410, label %3414

3410:                                             ; preds = %3405
  %3411 = getelementptr inbounds %struct.deps_reg, ptr %3357, i64 %3350, i32 2
  %3412 = load ptr, ptr %3411, align 8, !tbaa !450
  %3413 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %3412) #29
  store ptr %3413, ptr %3411, align 8, !tbaa !450
  br label %3414

3414:                                             ; preds = %3405, %3410, %3349
  %3415 = add nuw nsw i64 %3350, 1
  %3416 = icmp eq i64 %3415, 53
  br i1 %3416, label %3417, label %3349, !prof !410, !llvm.loop !451

3417:                                             ; preds = %3414
  %3418 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %3419 = load i8, ptr %3418, align 4
  %3420 = and i8 %3419, 1
  %3421 = icmp eq i8 %3420, 0
  br i1 %3421, label %3422, label %3449, !prof !452

3422:                                             ; preds = %3417
  %3423 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %3424 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %3425 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %3423, ptr noundef %3424) #29
  %3426 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %3427 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %3423, ptr noundef %3426) #29
  %3428 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %3429 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %3423, ptr noundef %3428) #29
  br label %3430

3430:                                             ; preds = %3422, %3443
  %3431 = phi i64 [ 0, %3422 ], [ %3444, %3443 ]
  %3432 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %3433 = shl nuw nsw i64 1, %3431
  %3434 = and i64 %3432, %3433
  %3435 = icmp eq i64 %3434, 0
  br i1 %3435, label %3436, label %3440, !prof !453

3436:                                             ; preds = %3430
  %3437 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !253
  %3438 = and i64 %3437, %3433
  %3439 = icmp eq i64 %3438, 0
  br i1 %3439, label %3443, label %3440, !prof !454

3440:                                             ; preds = %3436, %3430
  %3441 = trunc i64 %3431 to i32
  %3442 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3423, i32 noundef %3441) #29
  br label %3443

3443:                                             ; preds = %3436, %3440
  %3444 = add nuw nsw i64 %3431, 1
  %3445 = icmp eq i64 %3444, 53
  br i1 %3445, label %3446, label %3430, !prof !455, !llvm.loop !456

3446:                                             ; preds = %3443
  %3447 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !147
  %3448 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 %3447, ptr %3448, align 8, !tbaa !457
  br label %3449

3449:                                             ; preds = %3446, %3417
  %3450 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  call void @bitmap_clear(ptr noundef %3450) #29
  %3451 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  call void @bitmap_clear(ptr noundef %3451) #29
  %3452 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  call void @bitmap_clear(ptr noundef %3452) #29
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !253
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %3453 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !147
  %3454 = icmp eq i32 %3453, 0
  br i1 %3454, label %4400, label %3455, !prof !458

3455:                                             ; preds = %3449
  %3456 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %3457 = load ptr, ptr %3456, align 8, !tbaa !143
  %3458 = icmp eq ptr %3457, null
  br i1 %3458, label %3492, label %3459, !prof !163

3459:                                             ; preds = %3455
  %3460 = load i32, ptr %3457, align 8
  %3461 = and i32 %3460, 65535
  %3462 = icmp eq i32 %3461, 14
  br i1 %3462, label %3463, label %3466, !prof !163

3463:                                             ; preds = %3459
  %3464 = getelementptr inbounds %struct.rtx_def, ptr %3457, i64 0, i32 1
  %3465 = load ptr, ptr %3464, align 8, !tbaa !143
  br label %3492

3466:                                             ; preds = %3459
  %3467 = call i32 @any_condjump_p(ptr noundef %2) #29
  %3468 = icmp eq i32 %3467, 0
  br i1 %3468, label %3492, label %3469, !prof !164

3469:                                             ; preds = %3466
  %3470 = call i32 @onlyjump_p(ptr noundef %2) #29
  %3471 = icmp eq i32 %3470, 0
  br i1 %3471, label %3492, label %3472, !prof !165

3472:                                             ; preds = %3469
  %3473 = call ptr @pc_set(ptr noundef %2) #29
  %3474 = getelementptr inbounds %struct.rtx_def, ptr %3473, i64 0, i32 1, i32 0, i32 0, i64 1
  %3475 = load ptr, ptr %3474, align 8, !tbaa !143
  %3476 = getelementptr inbounds %struct.rtx_def, ptr %3475, i64 0, i32 1
  %3477 = getelementptr inbounds %struct.rtx_def, ptr %3475, i64 0, i32 1, i32 0, i32 0, i64 2
  %3478 = load ptr, ptr %3477, align 8, !tbaa !143
  %3479 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3480 = icmp eq ptr %3478, %3479
  br i1 %3480, label %3481, label %3483, !prof !166

3481:                                             ; preds = %3472
  %3482 = load ptr, ptr %3476, align 8, !tbaa !143
  br label %3492

3483:                                             ; preds = %3472
  %3484 = getelementptr inbounds %struct.rtx_def, ptr %3475, i64 0, i32 1, i32 0, i32 0, i64 1
  %3485 = load ptr, ptr %3484, align 8, !tbaa !143
  %3486 = icmp eq ptr %3485, %3479
  br i1 %3486, label %3487, label %3492

3487:                                             ; preds = %3483
  %3488 = load ptr, ptr %3476, align 8, !tbaa !143
  %3489 = call i32 @reversed_comparison_code(ptr noundef %3488, ptr noundef %2) #29
  %3490 = icmp eq i32 %3489, 0
  %3491 = select i1 %3490, ptr null, ptr %3488
  br label %3492

3492:                                             ; preds = %3455, %3463, %3466, %3469, %3481, %3483, %3487
  %3493 = phi ptr [ %3465, %3463 ], [ %3482, %3481 ], [ null, %3455 ], [ null, %3469 ], [ null, %3466 ], [ %3491, %3487 ], [ null, %3483 ]
  %3494 = icmp eq ptr %3493, null
  %3495 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %3496 = load ptr, ptr %3495, align 8, !tbaa !347
  %3497 = icmp eq ptr %3496, null
  %3498 = select i1 %3497, ptr @bitmap_zero_bits, ptr %3496, !prof !459
  %3499 = getelementptr inbounds %struct.bitmap_element_def, ptr %3498, i64 0, i32 2
  %3500 = load i32, ptr %3499, align 8, !tbaa !349
  %3501 = shl i32 %3500, 7
  %3502 = getelementptr inbounds %struct.bitmap_element_def, ptr %3498, i64 0, i32 3
  %3503 = load i64, ptr %3502, align 8, !tbaa !253
  %3504 = icmp eq i64 %3503, 0
  %3505 = zext i1 %3504 to i32
  %3506 = or disjoint i32 %3501, %3505
  %3507 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br i1 %3494, label %3644, label %3508, !prof !460

3508:                                             ; preds = %3492, %3641
  %3509 = phi ptr [ %3564, %3641 ], [ %3498, %3492 ]
  %3510 = phi i32 [ %3565, %3641 ], [ 0, %3492 ]
  %3511 = phi i64 [ %3642, %3641 ], [ %3503, %3492 ]
  %3512 = phi i32 [ %3643, %3641 ], [ %3506, %3492 ]
  %3513 = icmp eq i64 %3511, 0
  br i1 %3513, label %3528, label %3514

3514:                                             ; preds = %3542, %3508
  %3515 = phi ptr [ %3509, %3508 ], [ %3533, %3542 ]
  %3516 = phi i32 [ %3510, %3508 ], [ %3543, %3542 ]
  %3517 = phi i64 [ %3511, %3508 ], [ %3547, %3542 ]
  %3518 = phi i32 [ %3512, %3508 ], [ %3544, %3542 ]
  %3519 = and i64 %3517, 1
  %3520 = icmp eq i64 %3519, 0
  br i1 %3520, label %3521, label %3563

3521:                                             ; preds = %3514, %3521
  %3522 = phi i32 [ %3525, %3521 ], [ %3518, %3514 ]
  %3523 = phi i64 [ %3524, %3521 ], [ %3517, %3514 ]
  %3524 = lshr exact i64 %3523, 1
  %3525 = add i32 %3522, 1
  %3526 = and i64 %3523, 2
  %3527 = icmp eq i64 %3526, 0
  br i1 %3527, label %3521, label %3563, !llvm.loop !351

3528:                                             ; preds = %3508
  %3529 = add i32 %3512, 63
  %3530 = and i32 %3529, -64
  %3531 = add i32 %3510, 1
  br label %3532

3532:                                             ; preds = %3559, %3528
  %3533 = phi ptr [ %3509, %3528 ], [ %3557, %3559 ]
  %3534 = phi i64 [ %3511, %3528 ], [ %3554, %3559 ]
  %3535 = phi i32 [ %3530, %3528 ], [ %3562, %3559 ]
  %3536 = phi i32 [ %3531, %3528 ], [ 0, %3559 ]
  %3537 = icmp eq i32 %3536, 2
  br i1 %3537, label %3553, label %3538

3538:                                             ; preds = %3532
  %3539 = add i32 %3535, 128
  %3540 = shl i32 %3536, 6
  %3541 = sub i32 %3539, %3540
  br label %3542

3542:                                             ; preds = %3538, %3549
  %3543 = phi i32 [ %3551, %3549 ], [ %3536, %3538 ]
  %3544 = phi i32 [ %3550, %3549 ], [ %3535, %3538 ]
  %3545 = zext i32 %3543 to i64
  %3546 = getelementptr inbounds %struct.bitmap_element_def, ptr %3533, i64 0, i32 3, i64 %3545
  %3547 = load i64, ptr %3546, align 8, !tbaa !253
  %3548 = icmp eq i64 %3547, 0
  br i1 %3548, label %3549, label %3514

3549:                                             ; preds = %3542
  %3550 = add i32 %3544, 64
  %3551 = add i32 %3543, 1
  %3552 = icmp eq i32 %3551, 2
  br i1 %3552, label %3553, label %3542, !llvm.loop !354

3553:                                             ; preds = %3549, %3532
  %3554 = phi i64 [ %3534, %3532 ], [ %3547, %3549 ]
  %3555 = phi i32 [ %3535, %3532 ], [ %3541, %3549 ]
  %3556 = phi i32 [ %3536, %3532 ], [ 2, %3549 ]
  %3557 = load ptr, ptr %3533, align 8, !tbaa !355
  %3558 = icmp eq ptr %3557, null
  br i1 %3558, label %3563, label %3559

3559:                                             ; preds = %3553
  %3560 = getelementptr inbounds %struct.bitmap_element_def, ptr %3557, i64 0, i32 2
  %3561 = load i32, ptr %3560, align 8, !tbaa !349
  %3562 = shl i32 %3561, 7
  br label %3532, !llvm.loop !356

3563:                                             ; preds = %3553, %3521, %3514
  %3564 = phi ptr [ %3515, %3514 ], [ %3515, %3521 ], [ %3557, %3553 ]
  %3565 = phi i32 [ %3516, %3514 ], [ %3516, %3521 ], [ %3556, %3553 ]
  %3566 = phi i64 [ %3517, %3514 ], [ %3524, %3521 ], [ %3554, %3553 ]
  %3567 = phi i32 [ %3518, %3514 ], [ %3525, %3521 ], [ %3555, %3553 ]
  %3568 = phi i1 [ false, %3514 ], [ false, %3521 ], [ true, %3553 ]
  br i1 %3568, label %4357, label %3569

3569:                                             ; preds = %3563
  %3570 = load ptr, ptr %3507, align 8, !tbaa !357
  %3571 = zext i32 %3567 to i64
  %3572 = getelementptr inbounds %struct.deps_reg, ptr %3570, i64 %3571
  %3573 = load ptr, ptr %3572, align 8, !tbaa !143
  %3574 = icmp eq ptr %3573, null
  br i1 %3574, label %3587, label %3575

3575:                                             ; preds = %3569, %3583
  %3576 = phi ptr [ %3585, %3583 ], [ %3573, %3569 ]
  %3577 = getelementptr inbounds %struct.rtx_def, ptr %3576, i64 0, i32 1
  %3578 = load ptr, ptr %3577, align 8, !tbaa !143
  %3579 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3578), !range !220
  %3580 = icmp eq i8 %3579, 0
  br i1 %3580, label %3581, label %3583

3581:                                             ; preds = %3575
  %3582 = load ptr, ptr %3577, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3582, i32 noundef 12)
  br label %3583

3583:                                             ; preds = %3581, %3575
  %3584 = getelementptr inbounds %struct.rtx_def, ptr %3576, i64 0, i32 1, i32 0, i32 0, i64 1
  %3585 = load ptr, ptr %3584, align 8, !tbaa !143
  %3586 = icmp eq ptr %3585, null
  br i1 %3586, label %3587, label %3575, !llvm.loop !286

3587:                                             ; preds = %3583, %3569
  %3588 = getelementptr inbounds %struct.deps_reg, ptr %3570, i64 %3571, i32 1
  %3589 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !147
  %3590 = icmp eq i32 %3589, 2
  %3591 = select i1 %3590, i32 0, i32 12
  %3592 = load ptr, ptr %3588, align 8, !tbaa !143
  %3593 = icmp eq ptr %3592, null
  br i1 %3593, label %3606, label %3594

3594:                                             ; preds = %3587, %3602
  %3595 = phi ptr [ %3604, %3602 ], [ %3592, %3587 ]
  %3596 = getelementptr inbounds %struct.rtx_def, ptr %3595, i64 0, i32 1
  %3597 = load ptr, ptr %3596, align 8, !tbaa !143
  %3598 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3597), !range !220
  %3599 = icmp eq i8 %3598, 0
  br i1 %3599, label %3600, label %3602

3600:                                             ; preds = %3594
  %3601 = load ptr, ptr %3596, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3601, i32 noundef %3591)
  br label %3602

3602:                                             ; preds = %3600, %3594
  %3603 = getelementptr inbounds %struct.rtx_def, ptr %3595, i64 0, i32 1, i32 0, i32 0, i64 1
  %3604 = load ptr, ptr %3603, align 8, !tbaa !143
  %3605 = icmp eq ptr %3604, null
  br i1 %3605, label %3606, label %3594, !llvm.loop !286

3606:                                             ; preds = %3602, %3587
  %3607 = getelementptr inbounds %struct.deps_reg, ptr %3570, i64 %3571, i32 2
  %3608 = load ptr, ptr %3607, align 8, !tbaa !143
  %3609 = icmp eq ptr %3608, null
  br i1 %3609, label %3622, label %3610

3610:                                             ; preds = %3606, %3618
  %3611 = phi ptr [ %3620, %3618 ], [ %3608, %3606 ]
  %3612 = getelementptr inbounds %struct.rtx_def, ptr %3611, i64 0, i32 1
  %3613 = load ptr, ptr %3612, align 8, !tbaa !143
  %3614 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3613), !range !220
  %3615 = icmp eq i8 %3614, 0
  br i1 %3615, label %3616, label %3618

3616:                                             ; preds = %3610
  %3617 = load ptr, ptr %3612, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3617, i32 noundef 12)
  br label %3618

3618:                                             ; preds = %3616, %3610
  %3619 = getelementptr inbounds %struct.rtx_def, ptr %3611, i64 0, i32 1, i32 0, i32 0, i64 1
  %3620 = load ptr, ptr %3619, align 8, !tbaa !143
  %3621 = icmp eq ptr %3620, null
  br i1 %3621, label %3622, label %3610, !llvm.loop !286

3622:                                             ; preds = %3618, %3606
  %3623 = getelementptr inbounds %struct.deps_reg, ptr %3570, i64 %3571, i32 3
  %3624 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !147
  %3625 = icmp eq i32 %3624, 2
  %3626 = select i1 %3625, i32 0, i32 12
  %3627 = load ptr, ptr %3623, align 8, !tbaa !143
  %3628 = icmp eq ptr %3627, null
  br i1 %3628, label %3641, label %3629

3629:                                             ; preds = %3622, %3637
  %3630 = phi ptr [ %3639, %3637 ], [ %3627, %3622 ]
  %3631 = getelementptr inbounds %struct.rtx_def, ptr %3630, i64 0, i32 1
  %3632 = load ptr, ptr %3631, align 8, !tbaa !143
  %3633 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %3632), !range !220
  %3634 = icmp eq i8 %3633, 0
  br i1 %3634, label %3635, label %3637

3635:                                             ; preds = %3629
  %3636 = load ptr, ptr %3631, align 8, !tbaa !143
  call void @add_dependence(ptr noundef %2, ptr noundef %3636, i32 noundef %3626)
  br label %3637

3637:                                             ; preds = %3635, %3629
  %3638 = getelementptr inbounds %struct.rtx_def, ptr %3630, i64 0, i32 1, i32 0, i32 0, i64 1
  %3639 = load ptr, ptr %3638, align 8, !tbaa !143
  %3640 = icmp eq ptr %3639, null
  br i1 %3640, label %3641, label %3629, !llvm.loop !286

3641:                                             ; preds = %3637, %3622
  %3642 = lshr i64 %3566, 1
  %3643 = add i32 %3567, 1
  br label %3508, !llvm.loop !461

3644:                                             ; preds = %3492, %4354
  %3645 = phi ptr [ %3700, %4354 ], [ %3498, %3492 ]
  %3646 = phi i32 [ %3701, %4354 ], [ 0, %3492 ]
  %3647 = phi i64 [ %4355, %4354 ], [ %3503, %3492 ]
  %3648 = phi i32 [ %4356, %4354 ], [ %3506, %3492 ]
  %3649 = icmp eq i64 %3647, 0
  br i1 %3649, label %3664, label %3650, !prof !462

3650:                                             ; preds = %3678, %3644
  %3651 = phi ptr [ %3645, %3644 ], [ %3669, %3678 ]
  %3652 = phi i32 [ %3646, %3644 ], [ %3679, %3678 ]
  %3653 = phi i64 [ %3647, %3644 ], [ %3683, %3678 ]
  %3654 = phi i32 [ %3648, %3644 ], [ %3680, %3678 ]
  %3655 = and i64 %3653, 1
  %3656 = icmp eq i64 %3655, 0
  br i1 %3656, label %3657, label %3699, !prof !463

3657:                                             ; preds = %3650, %3657
  %3658 = phi i32 [ %3661, %3657 ], [ %3654, %3650 ]
  %3659 = phi i64 [ %3660, %3657 ], [ %3653, %3650 ]
  %3660 = lshr exact i64 %3659, 1
  %3661 = add i32 %3658, 1
  %3662 = and i64 %3659, 2
  %3663 = icmp eq i64 %3662, 0
  br i1 %3663, label %3657, label %3699, !prof !464, !llvm.loop !351

3664:                                             ; preds = %3644
  %3665 = add i32 %3648, 63
  %3666 = and i32 %3665, -64
  %3667 = add i32 %3646, 1
  br label %3668

3668:                                             ; preds = %3695, %3664
  %3669 = phi ptr [ %3645, %3664 ], [ %3693, %3695 ]
  %3670 = phi i64 [ %3647, %3664 ], [ %3690, %3695 ]
  %3671 = phi i32 [ %3666, %3664 ], [ %3698, %3695 ]
  %3672 = phi i32 [ %3667, %3664 ], [ 0, %3695 ]
  %3673 = icmp eq i32 %3672, 2
  br i1 %3673, label %3689, label %3674, !prof !465

3674:                                             ; preds = %3668
  %3675 = add i32 %3671, 128
  %3676 = shl i32 %3672, 6
  %3677 = sub i32 %3675, %3676
  br label %3678

3678:                                             ; preds = %3674, %3685
  %3679 = phi i32 [ %3687, %3685 ], [ %3672, %3674 ]
  %3680 = phi i32 [ %3686, %3685 ], [ %3671, %3674 ]
  %3681 = zext i32 %3679 to i64
  %3682 = getelementptr inbounds %struct.bitmap_element_def, ptr %3669, i64 0, i32 3, i64 %3681
  %3683 = load i64, ptr %3682, align 8, !tbaa !253
  %3684 = icmp eq i64 %3683, 0
  br i1 %3684, label %3685, label %3650, !prof !460

3685:                                             ; preds = %3678
  %3686 = add i32 %3680, 64
  %3687 = add i32 %3679, 1
  %3688 = icmp eq i32 %3687, 2
  br i1 %3688, label %3689, label %3678, !prof !466, !llvm.loop !354

3689:                                             ; preds = %3685, %3668
  %3690 = phi i64 [ %3670, %3668 ], [ %3683, %3685 ]
  %3691 = phi i32 [ %3671, %3668 ], [ %3677, %3685 ]
  %3692 = phi i32 [ %3672, %3668 ], [ 2, %3685 ]
  %3693 = load ptr, ptr %3669, align 8, !tbaa !355
  %3694 = icmp eq ptr %3693, null
  br i1 %3694, label %3699, label %3695, !prof !460

3695:                                             ; preds = %3689
  %3696 = getelementptr inbounds %struct.bitmap_element_def, ptr %3693, i64 0, i32 2
  %3697 = load i32, ptr %3696, align 8, !tbaa !349
  %3698 = shl i32 %3697, 7
  br label %3668, !llvm.loop !356

3699:                                             ; preds = %3689, %3657, %3650
  %3700 = phi ptr [ %3651, %3650 ], [ %3651, %3657 ], [ %3693, %3689 ]
  %3701 = phi i32 [ %3652, %3650 ], [ %3652, %3657 ], [ %3692, %3689 ]
  %3702 = phi i64 [ %3653, %3650 ], [ %3660, %3657 ], [ %3690, %3689 ]
  %3703 = phi i32 [ %3654, %3650 ], [ %3661, %3657 ], [ %3691, %3689 ]
  %3704 = phi i1 [ false, %3650 ], [ false, %3657 ], [ true, %3689 ]
  br i1 %3704, label %4357, label %3705, !prof !462

3705:                                             ; preds = %3699
  %3706 = load ptr, ptr %3507, align 8, !tbaa !357
  %3707 = zext i32 %3703 to i64
  %3708 = getelementptr inbounds %struct.deps_reg, ptr %3706, i64 %3707
  %3709 = load i8, ptr %3418, align 4
  %3710 = and i8 %3709, 1
  %3711 = icmp eq i8 %3710, 0
  %3712 = load ptr, ptr %3708, align 8, !tbaa !132
  br i1 %3711, label %3868, label %3713, !prof !278

3713:                                             ; preds = %3705
  %3714 = icmp eq ptr %3712, null
  br i1 %3714, label %4023, label %3715, !prof !279

3715:                                             ; preds = %3713, %3864
  %3716 = phi ptr [ %3866, %3864 ], [ %3712, %3713 ]
  %3717 = getelementptr inbounds %struct.rtx_def, ptr %3716, i64 0, i32 1
  %3718 = load ptr, ptr %3717, align 8, !tbaa !143
  %3719 = load i32, ptr %2, align 8
  %3720 = and i32 %3719, 65535
  %3721 = icmp eq i32 %3720, 10
  br i1 %3721, label %3848, label %3722, !prof !161

3722:                                             ; preds = %3715
  %3723 = load i32, ptr %3718, align 8
  %3724 = and i32 %3723, 65535
  %3725 = icmp eq i32 %3724, 10
  br i1 %3725, label %3848, label %3726, !prof !162

3726:                                             ; preds = %3722
  %3727 = load ptr, ptr %3456, align 8, !tbaa !143
  %3728 = icmp eq ptr %3727, null
  br i1 %3728, label %3763, label %3729, !prof !163

3729:                                             ; preds = %3726
  %3730 = load i32, ptr %3727, align 8
  %3731 = and i32 %3730, 65535
  %3732 = icmp eq i32 %3731, 14
  br i1 %3732, label %3733, label %3736, !prof !163

3733:                                             ; preds = %3729
  %3734 = getelementptr inbounds %struct.rtx_def, ptr %3727, i64 0, i32 1
  %3735 = load ptr, ptr %3734, align 8, !tbaa !143
  br label %3763

3736:                                             ; preds = %3729
  %3737 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %3763, label %3739, !prof !164

3739:                                             ; preds = %3736
  %3740 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %3741 = icmp eq i32 %3740, 0
  br i1 %3741, label %3763, label %3742, !prof !165

3742:                                             ; preds = %3739
  %3743 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %3744 = getelementptr inbounds %struct.rtx_def, ptr %3743, i64 0, i32 1, i32 0, i32 0, i64 1
  %3745 = load ptr, ptr %3744, align 8, !tbaa !143
  %3746 = getelementptr inbounds %struct.rtx_def, ptr %3745, i64 0, i32 1
  %3747 = getelementptr inbounds %struct.rtx_def, ptr %3745, i64 0, i32 1, i32 0, i32 0, i64 2
  %3748 = load ptr, ptr %3747, align 8, !tbaa !143
  %3749 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3750 = icmp eq ptr %3748, %3749
  br i1 %3750, label %3751, label %3753, !prof !166

3751:                                             ; preds = %3742
  %3752 = load ptr, ptr %3746, align 8, !tbaa !143
  br label %3763

3753:                                             ; preds = %3742
  %3754 = getelementptr inbounds %struct.rtx_def, ptr %3745, i64 0, i32 1, i32 0, i32 0, i64 1
  %3755 = load ptr, ptr %3754, align 8, !tbaa !143
  %3756 = icmp eq ptr %3755, %3749
  br i1 %3756, label %3757, label %3763

3757:                                             ; preds = %3753
  %3758 = load ptr, ptr %3746, align 8, !tbaa !143
  %3759 = call i32 @reversed_comparison_code(ptr noundef %3758, ptr noundef nonnull %2) #29
  %3760 = icmp ne i32 %3759, 0
  %3761 = zext i1 %3760 to i8
  %3762 = select i1 %3760, ptr %3758, ptr null
  br label %3763

3763:                                             ; preds = %3757, %3753, %3751, %3739, %3736, %3733, %3726
  %3764 = phi i8 [ 0, %3726 ], [ 0, %3733 ], [ 0, %3736 ], [ 0, %3739 ], [ 0, %3751 ], [ 0, %3753 ], [ %3761, %3757 ]
  %3765 = phi ptr [ null, %3726 ], [ %3735, %3733 ], [ null, %3736 ], [ null, %3739 ], [ %3752, %3751 ], [ null, %3753 ], [ %3762, %3757 ]
  %3766 = getelementptr inbounds %struct.rtx_def, ptr %3718, i64 1
  %3767 = load ptr, ptr %3766, align 8, !tbaa !143
  %3768 = icmp eq ptr %3767, null
  br i1 %3768, label %3803, label %3769, !prof !163

3769:                                             ; preds = %3763
  %3770 = load i32, ptr %3767, align 8
  %3771 = and i32 %3770, 65535
  %3772 = icmp eq i32 %3771, 14
  br i1 %3772, label %3773, label %3776, !prof !163

3773:                                             ; preds = %3769
  %3774 = getelementptr inbounds %struct.rtx_def, ptr %3767, i64 0, i32 1
  %3775 = load ptr, ptr %3774, align 8, !tbaa !143
  br label %3803

3776:                                             ; preds = %3769
  %3777 = call i32 @any_condjump_p(ptr noundef nonnull %3718) #29
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3803, label %3779, !prof !164

3779:                                             ; preds = %3776
  %3780 = call i32 @onlyjump_p(ptr noundef nonnull %3718) #29
  %3781 = icmp eq i32 %3780, 0
  br i1 %3781, label %3803, label %3782, !prof !165

3782:                                             ; preds = %3779
  %3783 = call ptr @pc_set(ptr noundef nonnull %3718) #29
  %3784 = getelementptr inbounds %struct.rtx_def, ptr %3783, i64 0, i32 1, i32 0, i32 0, i64 1
  %3785 = load ptr, ptr %3784, align 8, !tbaa !143
  %3786 = getelementptr inbounds %struct.rtx_def, ptr %3785, i64 0, i32 1
  %3787 = getelementptr inbounds %struct.rtx_def, ptr %3785, i64 0, i32 1, i32 0, i32 0, i64 2
  %3788 = load ptr, ptr %3787, align 8, !tbaa !143
  %3789 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3790 = icmp eq ptr %3788, %3789
  br i1 %3790, label %3791, label %3793, !prof !166

3791:                                             ; preds = %3782
  %3792 = load ptr, ptr %3786, align 8, !tbaa !143
  br label %3803

3793:                                             ; preds = %3782
  %3794 = getelementptr inbounds %struct.rtx_def, ptr %3785, i64 0, i32 1, i32 0, i32 0, i64 1
  %3795 = load ptr, ptr %3794, align 8, !tbaa !143
  %3796 = icmp eq ptr %3795, %3789
  br i1 %3796, label %3797, label %3803

3797:                                             ; preds = %3793
  %3798 = load ptr, ptr %3786, align 8, !tbaa !143
  %3799 = call i32 @reversed_comparison_code(ptr noundef %3798, ptr noundef nonnull %3718) #29
  %3800 = icmp ne i32 %3799, 0
  %3801 = zext i1 %3800 to i8
  %3802 = select i1 %3800, ptr %3798, ptr null
  br label %3803

3803:                                             ; preds = %3797, %3793, %3791, %3779, %3776, %3773, %3763
  %3804 = phi i8 [ 0, %3763 ], [ 0, %3773 ], [ 0, %3776 ], [ 0, %3779 ], [ 0, %3791 ], [ 0, %3793 ], [ %3801, %3797 ]
  %3805 = phi ptr [ null, %3763 ], [ %3775, %3773 ], [ null, %3776 ], [ null, %3779 ], [ %3792, %3791 ], [ null, %3793 ], [ %3802, %3797 ]
  %3806 = icmp ne ptr %3765, null
  %3807 = icmp ne ptr %3805, null
  %3808 = select i1 %3806, i1 %3807, i1 false, !prof !167
  br i1 %3808, label %3809, label %3848, !prof !168

3809:                                             ; preds = %3803
  %3810 = load i32, ptr %3765, align 8
  %3811 = and i32 %3810, 65535
  %3812 = zext nneg i32 %3811 to i64
  %3813 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3812
  %3814 = load i32, ptr %3813, align 4, !tbaa !147
  %3815 = icmp ult i32 %3814, 2
  br i1 %3815, label %3816, label %3848

3816:                                             ; preds = %3809
  %3817 = load i32, ptr %3805, align 8
  %3818 = and i32 %3817, 65535
  %3819 = zext nneg i32 %3818 to i64
  %3820 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3819
  %3821 = load i32, ptr %3820, align 4, !tbaa !147
  %3822 = icmp ult i32 %3821, 2
  br i1 %3822, label %3823, label %3848

3823:                                             ; preds = %3816
  %3824 = icmp eq i8 %3764, %3804
  br i1 %3824, label %3825, label %3827

3825:                                             ; preds = %3823
  %3826 = call i32 @reversed_comparison_code(ptr noundef nonnull %3805, ptr noundef null) #29
  br label %3827

3827:                                             ; preds = %3825, %3823
  %3828 = phi i32 [ %3826, %3825 ], [ %3818, %3823 ]
  %3829 = icmp eq i32 %3811, %3828
  br i1 %3829, label %3830, label %3848

3830:                                             ; preds = %3827
  %3831 = getelementptr inbounds %struct.rtx_def, ptr %3765, i64 0, i32 1
  %3832 = load ptr, ptr %3831, align 8, !tbaa !143
  %3833 = getelementptr inbounds %struct.rtx_def, ptr %3805, i64 0, i32 1
  %3834 = load ptr, ptr %3833, align 8, !tbaa !143
  %3835 = icmp eq ptr %3832, %3834
  br i1 %3835, label %3836, label %3848

3836:                                             ; preds = %3830
  %3837 = getelementptr inbounds %struct.rtx_def, ptr %3765, i64 0, i32 1, i32 0, i32 0, i64 1
  %3838 = load ptr, ptr %3837, align 8, !tbaa !143
  %3839 = getelementptr inbounds %struct.rtx_def, ptr %3805, i64 0, i32 1, i32 0, i32 0, i64 1
  %3840 = load ptr, ptr %3839, align 8, !tbaa !143
  %3841 = icmp eq ptr %3838, %3840
  br i1 %3841, label %3842, label %3848

3842:                                             ; preds = %3836
  %3843 = call i32 @modified_in_p(ptr noundef nonnull %3765, ptr noundef nonnull %3718) #29
  %3844 = icmp eq i32 %3843, 0
  br i1 %3844, label %3845, label %3848

3845:                                             ; preds = %3842
  %3846 = call i32 @modified_in_p(ptr noundef nonnull %3805, ptr noundef nonnull %2) #29
  %3847 = icmp eq i32 %3846, 0
  br i1 %3847, label %3864, label %3848

3848:                                             ; preds = %3845, %3842, %3836, %3830, %3827, %3816, %3809, %3803, %3722, %3715
  %3849 = load ptr, ptr %3717, align 8, !tbaa !143
  %3850 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %3851 = icmp eq ptr %3850, null
  br i1 %3851, label %3855, label %3852, !prof !280

3852:                                             ; preds = %3848
  %3853 = icmp eq ptr %3850, %2
  br i1 %3853, label %3856, label %3854, !prof !281

3854:                                             ; preds = %3852
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %3856

3855:                                             ; preds = %3848
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %3856

3856:                                             ; preds = %3855, %3854, %3852
  %3857 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %3858 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3857, i64 0, i32 11
  %3859 = load ptr, ptr %3858, align 8, !tbaa !282
  %3860 = icmp eq ptr %3859, null
  br i1 %3860, label %3862, label %3861, !prof !283

3861:                                             ; preds = %3856
  call void %3859(ptr noundef %3849, i32 noundef 67108864) #29, !prof !467
  br label %3862

3862:                                             ; preds = %3861, %3856
  br i1 %3851, label %3863, label %3864, !prof !280

3863:                                             ; preds = %3862
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %3864

3864:                                             ; preds = %3863, %3862, %3845
  %3865 = getelementptr inbounds %struct.rtx_def, ptr %3716, i64 0, i32 1, i32 0, i32 0, i64 1
  %3866 = load ptr, ptr %3865, align 8, !tbaa !143
  %3867 = icmp eq ptr %3866, null
  br i1 %3867, label %4023, label %3715, !prof !285, !llvm.loop !286

3868:                                             ; preds = %3705
  store ptr null, ptr %3708, align 8, !tbaa !132
  %3869 = icmp eq ptr %3712, null
  br i1 %3869, label %4023, label %3870, !prof !287

3870:                                             ; preds = %3868, %4021
  %3871 = phi ptr [ %3874, %4021 ], [ %3712, %3868 ]
  %3872 = getelementptr inbounds %struct.rtx_def, ptr %3871, i64 0, i32 1
  %3873 = getelementptr inbounds %struct.rtx_def, ptr %3871, i64 0, i32 1, i32 0, i32 0, i64 1
  %3874 = load ptr, ptr %3873, align 8, !tbaa !143
  %3875 = load ptr, ptr %3872, align 8, !tbaa !143
  %3876 = load i32, ptr %2, align 8
  %3877 = and i32 %3876, 65535
  %3878 = icmp eq i32 %3877, 10
  br i1 %3878, label %4005, label %3879, !prof !161

3879:                                             ; preds = %3870
  %3880 = load i32, ptr %3875, align 8
  %3881 = and i32 %3880, 65535
  %3882 = icmp eq i32 %3881, 10
  br i1 %3882, label %4005, label %3883, !prof !162

3883:                                             ; preds = %3879
  %3884 = load ptr, ptr %3456, align 8, !tbaa !143
  %3885 = icmp eq ptr %3884, null
  br i1 %3885, label %3920, label %3886, !prof !163

3886:                                             ; preds = %3883
  %3887 = load i32, ptr %3884, align 8
  %3888 = and i32 %3887, 65535
  %3889 = icmp eq i32 %3888, 14
  br i1 %3889, label %3890, label %3893, !prof !163

3890:                                             ; preds = %3886
  %3891 = getelementptr inbounds %struct.rtx_def, ptr %3884, i64 0, i32 1
  %3892 = load ptr, ptr %3891, align 8, !tbaa !143
  br label %3920

3893:                                             ; preds = %3886
  %3894 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %3895 = icmp eq i32 %3894, 0
  br i1 %3895, label %3920, label %3896, !prof !164

3896:                                             ; preds = %3893
  %3897 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %3898 = icmp eq i32 %3897, 0
  br i1 %3898, label %3920, label %3899, !prof !165

3899:                                             ; preds = %3896
  %3900 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %3901 = getelementptr inbounds %struct.rtx_def, ptr %3900, i64 0, i32 1, i32 0, i32 0, i64 1
  %3902 = load ptr, ptr %3901, align 8, !tbaa !143
  %3903 = getelementptr inbounds %struct.rtx_def, ptr %3902, i64 0, i32 1
  %3904 = getelementptr inbounds %struct.rtx_def, ptr %3902, i64 0, i32 1, i32 0, i32 0, i64 2
  %3905 = load ptr, ptr %3904, align 8, !tbaa !143
  %3906 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3907 = icmp eq ptr %3905, %3906
  br i1 %3907, label %3908, label %3910, !prof !166

3908:                                             ; preds = %3899
  %3909 = load ptr, ptr %3903, align 8, !tbaa !143
  br label %3920

3910:                                             ; preds = %3899
  %3911 = getelementptr inbounds %struct.rtx_def, ptr %3902, i64 0, i32 1, i32 0, i32 0, i64 1
  %3912 = load ptr, ptr %3911, align 8, !tbaa !143
  %3913 = icmp eq ptr %3912, %3906
  br i1 %3913, label %3914, label %3920

3914:                                             ; preds = %3910
  %3915 = load ptr, ptr %3903, align 8, !tbaa !143
  %3916 = call i32 @reversed_comparison_code(ptr noundef %3915, ptr noundef nonnull %2) #29
  %3917 = icmp ne i32 %3916, 0
  %3918 = zext i1 %3917 to i8
  %3919 = select i1 %3917, ptr %3915, ptr null
  br label %3920

3920:                                             ; preds = %3914, %3910, %3908, %3896, %3893, %3890, %3883
  %3921 = phi i8 [ 0, %3883 ], [ 0, %3890 ], [ 0, %3893 ], [ 0, %3896 ], [ 0, %3908 ], [ 0, %3910 ], [ %3918, %3914 ]
  %3922 = phi ptr [ null, %3883 ], [ %3892, %3890 ], [ null, %3893 ], [ null, %3896 ], [ %3909, %3908 ], [ null, %3910 ], [ %3919, %3914 ]
  %3923 = getelementptr inbounds %struct.rtx_def, ptr %3875, i64 1
  %3924 = load ptr, ptr %3923, align 8, !tbaa !143
  %3925 = icmp eq ptr %3924, null
  br i1 %3925, label %3960, label %3926, !prof !163

3926:                                             ; preds = %3920
  %3927 = load i32, ptr %3924, align 8
  %3928 = and i32 %3927, 65535
  %3929 = icmp eq i32 %3928, 14
  br i1 %3929, label %3930, label %3933, !prof !163

3930:                                             ; preds = %3926
  %3931 = getelementptr inbounds %struct.rtx_def, ptr %3924, i64 0, i32 1
  %3932 = load ptr, ptr %3931, align 8, !tbaa !143
  br label %3960

3933:                                             ; preds = %3926
  %3934 = call i32 @any_condjump_p(ptr noundef nonnull %3875) #29
  %3935 = icmp eq i32 %3934, 0
  br i1 %3935, label %3960, label %3936, !prof !164

3936:                                             ; preds = %3933
  %3937 = call i32 @onlyjump_p(ptr noundef nonnull %3875) #29
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3960, label %3939, !prof !165

3939:                                             ; preds = %3936
  %3940 = call ptr @pc_set(ptr noundef nonnull %3875) #29
  %3941 = getelementptr inbounds %struct.rtx_def, ptr %3940, i64 0, i32 1, i32 0, i32 0, i64 1
  %3942 = load ptr, ptr %3941, align 8, !tbaa !143
  %3943 = getelementptr inbounds %struct.rtx_def, ptr %3942, i64 0, i32 1
  %3944 = getelementptr inbounds %struct.rtx_def, ptr %3942, i64 0, i32 1, i32 0, i32 0, i64 2
  %3945 = load ptr, ptr %3944, align 8, !tbaa !143
  %3946 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %3947 = icmp eq ptr %3945, %3946
  br i1 %3947, label %3948, label %3950, !prof !166

3948:                                             ; preds = %3939
  %3949 = load ptr, ptr %3943, align 8, !tbaa !143
  br label %3960

3950:                                             ; preds = %3939
  %3951 = getelementptr inbounds %struct.rtx_def, ptr %3942, i64 0, i32 1, i32 0, i32 0, i64 1
  %3952 = load ptr, ptr %3951, align 8, !tbaa !143
  %3953 = icmp eq ptr %3952, %3946
  br i1 %3953, label %3954, label %3960

3954:                                             ; preds = %3950
  %3955 = load ptr, ptr %3943, align 8, !tbaa !143
  %3956 = call i32 @reversed_comparison_code(ptr noundef %3955, ptr noundef nonnull %3875) #29
  %3957 = icmp ne i32 %3956, 0
  %3958 = zext i1 %3957 to i8
  %3959 = select i1 %3957, ptr %3955, ptr null
  br label %3960

3960:                                             ; preds = %3954, %3950, %3948, %3936, %3933, %3930, %3920
  %3961 = phi i8 [ 0, %3920 ], [ 0, %3930 ], [ 0, %3933 ], [ 0, %3936 ], [ 0, %3948 ], [ 0, %3950 ], [ %3958, %3954 ]
  %3962 = phi ptr [ null, %3920 ], [ %3932, %3930 ], [ null, %3933 ], [ null, %3936 ], [ %3949, %3948 ], [ null, %3950 ], [ %3959, %3954 ]
  %3963 = icmp ne ptr %3922, null
  %3964 = icmp ne ptr %3962, null
  %3965 = select i1 %3963, i1 %3964, i1 false, !prof !167
  br i1 %3965, label %3966, label %4005, !prof !168

3966:                                             ; preds = %3960
  %3967 = load i32, ptr %3922, align 8
  %3968 = and i32 %3967, 65535
  %3969 = zext nneg i32 %3968 to i64
  %3970 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3969
  %3971 = load i32, ptr %3970, align 4, !tbaa !147
  %3972 = icmp ult i32 %3971, 2
  br i1 %3972, label %3973, label %4005

3973:                                             ; preds = %3966
  %3974 = load i32, ptr %3962, align 8
  %3975 = and i32 %3974, 65535
  %3976 = zext nneg i32 %3975 to i64
  %3977 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3976
  %3978 = load i32, ptr %3977, align 4, !tbaa !147
  %3979 = icmp ult i32 %3978, 2
  br i1 %3979, label %3980, label %4005

3980:                                             ; preds = %3973
  %3981 = icmp eq i8 %3921, %3961
  br i1 %3981, label %3982, label %3984

3982:                                             ; preds = %3980
  %3983 = call i32 @reversed_comparison_code(ptr noundef nonnull %3962, ptr noundef null) #29
  br label %3984

3984:                                             ; preds = %3982, %3980
  %3985 = phi i32 [ %3983, %3982 ], [ %3975, %3980 ]
  %3986 = icmp eq i32 %3968, %3985
  br i1 %3986, label %3987, label %4005

3987:                                             ; preds = %3984
  %3988 = getelementptr inbounds %struct.rtx_def, ptr %3922, i64 0, i32 1
  %3989 = load ptr, ptr %3988, align 8, !tbaa !143
  %3990 = getelementptr inbounds %struct.rtx_def, ptr %3962, i64 0, i32 1
  %3991 = load ptr, ptr %3990, align 8, !tbaa !143
  %3992 = icmp eq ptr %3989, %3991
  br i1 %3992, label %3993, label %4005

3993:                                             ; preds = %3987
  %3994 = getelementptr inbounds %struct.rtx_def, ptr %3922, i64 0, i32 1, i32 0, i32 0, i64 1
  %3995 = load ptr, ptr %3994, align 8, !tbaa !143
  %3996 = getelementptr inbounds %struct.rtx_def, ptr %3962, i64 0, i32 1, i32 0, i32 0, i64 1
  %3997 = load ptr, ptr %3996, align 8, !tbaa !143
  %3998 = icmp eq ptr %3995, %3997
  br i1 %3998, label %3999, label %4005

3999:                                             ; preds = %3993
  %4000 = call i32 @modified_in_p(ptr noundef nonnull %3922, ptr noundef nonnull %3875) #29
  %4001 = icmp eq i32 %4000, 0
  br i1 %4001, label %4002, label %4005

4002:                                             ; preds = %3999
  %4003 = call i32 @modified_in_p(ptr noundef nonnull %3962, ptr noundef nonnull %2) #29
  %4004 = icmp eq i32 %4003, 0
  br i1 %4004, label %4021, label %4005

4005:                                             ; preds = %4002, %3999, %3993, %3987, %3984, %3973, %3966, %3960, %3879, %3870
  %4006 = load ptr, ptr %3872, align 8, !tbaa !143
  %4007 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %4008 = icmp eq ptr %4007, null
  br i1 %4008, label %4012, label %4009, !prof !280

4009:                                             ; preds = %4005
  %4010 = icmp eq ptr %4007, %2
  br i1 %4010, label %4013, label %4011, !prof !281

4011:                                             ; preds = %4009
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %4013

4012:                                             ; preds = %4005
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %4013

4013:                                             ; preds = %4012, %4011, %4009
  %4014 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %4015 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4014, i64 0, i32 11
  %4016 = load ptr, ptr %4015, align 8, !tbaa !282
  %4017 = icmp eq ptr %4016, null
  br i1 %4017, label %4019, label %4018, !prof !283

4018:                                             ; preds = %4013
  call void %4016(ptr noundef %4006, i32 noundef 67108864) #29, !prof !468
  br label %4019

4019:                                             ; preds = %4018, %4013
  br i1 %4008, label %4020, label %4021, !prof !280

4020:                                             ; preds = %4019
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %4021

4021:                                             ; preds = %4020, %4019, %4002
  call void @free_INSN_LIST_node(ptr noundef nonnull %3871) #29
  %4022 = icmp eq ptr %3874, null
  br i1 %4022, label %4023, label %3870, !prof !289, !llvm.loop !290

4023:                                             ; preds = %3864, %4021, %3713, %3868
  %4024 = getelementptr inbounds %struct.deps_reg, ptr %3706, i64 %3707, i32 1
  %4025 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !147
  %4026 = icmp eq i32 %4025, 2
  %4027 = select i1 %4026, i32 0, i32 12, !prof !469
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4024, i32 noundef 0, i32 noundef %4027)
  %4028 = getelementptr inbounds %struct.deps_reg, ptr %3706, i64 %3707, i32 2
  %4029 = load i8, ptr %3418, align 4
  %4030 = and i8 %4029, 1
  %4031 = icmp eq i8 %4030, 0
  %4032 = load ptr, ptr %4028, align 8, !tbaa !132
  br i1 %4031, label %4188, label %4033, !prof !278

4033:                                             ; preds = %4023
  %4034 = icmp eq ptr %4032, null
  br i1 %4034, label %4343, label %4035, !prof !279

4035:                                             ; preds = %4033, %4184
  %4036 = phi ptr [ %4186, %4184 ], [ %4032, %4033 ]
  %4037 = getelementptr inbounds %struct.rtx_def, ptr %4036, i64 0, i32 1
  %4038 = load ptr, ptr %4037, align 8, !tbaa !143
  %4039 = load i32, ptr %2, align 8
  %4040 = and i32 %4039, 65535
  %4041 = icmp eq i32 %4040, 10
  br i1 %4041, label %4168, label %4042, !prof !161

4042:                                             ; preds = %4035
  %4043 = load i32, ptr %4038, align 8
  %4044 = and i32 %4043, 65535
  %4045 = icmp eq i32 %4044, 10
  br i1 %4045, label %4168, label %4046, !prof !162

4046:                                             ; preds = %4042
  %4047 = load ptr, ptr %3456, align 8, !tbaa !143
  %4048 = icmp eq ptr %4047, null
  br i1 %4048, label %4083, label %4049, !prof !163

4049:                                             ; preds = %4046
  %4050 = load i32, ptr %4047, align 8
  %4051 = and i32 %4050, 65535
  %4052 = icmp eq i32 %4051, 14
  br i1 %4052, label %4053, label %4056, !prof !163

4053:                                             ; preds = %4049
  %4054 = getelementptr inbounds %struct.rtx_def, ptr %4047, i64 0, i32 1
  %4055 = load ptr, ptr %4054, align 8, !tbaa !143
  br label %4083

4056:                                             ; preds = %4049
  %4057 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %4058 = icmp eq i32 %4057, 0
  br i1 %4058, label %4083, label %4059, !prof !164

4059:                                             ; preds = %4056
  %4060 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %4061 = icmp eq i32 %4060, 0
  br i1 %4061, label %4083, label %4062, !prof !165

4062:                                             ; preds = %4059
  %4063 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %4064 = getelementptr inbounds %struct.rtx_def, ptr %4063, i64 0, i32 1, i32 0, i32 0, i64 1
  %4065 = load ptr, ptr %4064, align 8, !tbaa !143
  %4066 = getelementptr inbounds %struct.rtx_def, ptr %4065, i64 0, i32 1
  %4067 = getelementptr inbounds %struct.rtx_def, ptr %4065, i64 0, i32 1, i32 0, i32 0, i64 2
  %4068 = load ptr, ptr %4067, align 8, !tbaa !143
  %4069 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %4070 = icmp eq ptr %4068, %4069
  br i1 %4070, label %4071, label %4073, !prof !166

4071:                                             ; preds = %4062
  %4072 = load ptr, ptr %4066, align 8, !tbaa !143
  br label %4083

4073:                                             ; preds = %4062
  %4074 = getelementptr inbounds %struct.rtx_def, ptr %4065, i64 0, i32 1, i32 0, i32 0, i64 1
  %4075 = load ptr, ptr %4074, align 8, !tbaa !143
  %4076 = icmp eq ptr %4075, %4069
  br i1 %4076, label %4077, label %4083

4077:                                             ; preds = %4073
  %4078 = load ptr, ptr %4066, align 8, !tbaa !143
  %4079 = call i32 @reversed_comparison_code(ptr noundef %4078, ptr noundef nonnull %2) #29
  %4080 = icmp ne i32 %4079, 0
  %4081 = zext i1 %4080 to i8
  %4082 = select i1 %4080, ptr %4078, ptr null
  br label %4083

4083:                                             ; preds = %4077, %4073, %4071, %4059, %4056, %4053, %4046
  %4084 = phi i8 [ 0, %4046 ], [ 0, %4053 ], [ 0, %4056 ], [ 0, %4059 ], [ 0, %4071 ], [ 0, %4073 ], [ %4081, %4077 ]
  %4085 = phi ptr [ null, %4046 ], [ %4055, %4053 ], [ null, %4056 ], [ null, %4059 ], [ %4072, %4071 ], [ null, %4073 ], [ %4082, %4077 ]
  %4086 = getelementptr inbounds %struct.rtx_def, ptr %4038, i64 1
  %4087 = load ptr, ptr %4086, align 8, !tbaa !143
  %4088 = icmp eq ptr %4087, null
  br i1 %4088, label %4123, label %4089, !prof !163

4089:                                             ; preds = %4083
  %4090 = load i32, ptr %4087, align 8
  %4091 = and i32 %4090, 65535
  %4092 = icmp eq i32 %4091, 14
  br i1 %4092, label %4093, label %4096, !prof !163

4093:                                             ; preds = %4089
  %4094 = getelementptr inbounds %struct.rtx_def, ptr %4087, i64 0, i32 1
  %4095 = load ptr, ptr %4094, align 8, !tbaa !143
  br label %4123

4096:                                             ; preds = %4089
  %4097 = call i32 @any_condjump_p(ptr noundef nonnull %4038) #29
  %4098 = icmp eq i32 %4097, 0
  br i1 %4098, label %4123, label %4099, !prof !164

4099:                                             ; preds = %4096
  %4100 = call i32 @onlyjump_p(ptr noundef nonnull %4038) #29
  %4101 = icmp eq i32 %4100, 0
  br i1 %4101, label %4123, label %4102, !prof !165

4102:                                             ; preds = %4099
  %4103 = call ptr @pc_set(ptr noundef nonnull %4038) #29
  %4104 = getelementptr inbounds %struct.rtx_def, ptr %4103, i64 0, i32 1, i32 0, i32 0, i64 1
  %4105 = load ptr, ptr %4104, align 8, !tbaa !143
  %4106 = getelementptr inbounds %struct.rtx_def, ptr %4105, i64 0, i32 1
  %4107 = getelementptr inbounds %struct.rtx_def, ptr %4105, i64 0, i32 1, i32 0, i32 0, i64 2
  %4108 = load ptr, ptr %4107, align 8, !tbaa !143
  %4109 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %4110 = icmp eq ptr %4108, %4109
  br i1 %4110, label %4111, label %4113, !prof !166

4111:                                             ; preds = %4102
  %4112 = load ptr, ptr %4106, align 8, !tbaa !143
  br label %4123

4113:                                             ; preds = %4102
  %4114 = getelementptr inbounds %struct.rtx_def, ptr %4105, i64 0, i32 1, i32 0, i32 0, i64 1
  %4115 = load ptr, ptr %4114, align 8, !tbaa !143
  %4116 = icmp eq ptr %4115, %4109
  br i1 %4116, label %4117, label %4123

4117:                                             ; preds = %4113
  %4118 = load ptr, ptr %4106, align 8, !tbaa !143
  %4119 = call i32 @reversed_comparison_code(ptr noundef %4118, ptr noundef nonnull %4038) #29
  %4120 = icmp ne i32 %4119, 0
  %4121 = zext i1 %4120 to i8
  %4122 = select i1 %4120, ptr %4118, ptr null
  br label %4123

4123:                                             ; preds = %4117, %4113, %4111, %4099, %4096, %4093, %4083
  %4124 = phi i8 [ 0, %4083 ], [ 0, %4093 ], [ 0, %4096 ], [ 0, %4099 ], [ 0, %4111 ], [ 0, %4113 ], [ %4121, %4117 ]
  %4125 = phi ptr [ null, %4083 ], [ %4095, %4093 ], [ null, %4096 ], [ null, %4099 ], [ %4112, %4111 ], [ null, %4113 ], [ %4122, %4117 ]
  %4126 = icmp ne ptr %4085, null
  %4127 = icmp ne ptr %4125, null
  %4128 = select i1 %4126, i1 %4127, i1 false, !prof !167
  br i1 %4128, label %4129, label %4168, !prof !168

4129:                                             ; preds = %4123
  %4130 = load i32, ptr %4085, align 8
  %4131 = and i32 %4130, 65535
  %4132 = zext nneg i32 %4131 to i64
  %4133 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4132
  %4134 = load i32, ptr %4133, align 4, !tbaa !147
  %4135 = icmp ult i32 %4134, 2
  br i1 %4135, label %4136, label %4168

4136:                                             ; preds = %4129
  %4137 = load i32, ptr %4125, align 8
  %4138 = and i32 %4137, 65535
  %4139 = zext nneg i32 %4138 to i64
  %4140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4139
  %4141 = load i32, ptr %4140, align 4, !tbaa !147
  %4142 = icmp ult i32 %4141, 2
  br i1 %4142, label %4143, label %4168

4143:                                             ; preds = %4136
  %4144 = icmp eq i8 %4084, %4124
  br i1 %4144, label %4145, label %4147

4145:                                             ; preds = %4143
  %4146 = call i32 @reversed_comparison_code(ptr noundef nonnull %4125, ptr noundef null) #29
  br label %4147

4147:                                             ; preds = %4145, %4143
  %4148 = phi i32 [ %4146, %4145 ], [ %4138, %4143 ]
  %4149 = icmp eq i32 %4131, %4148
  br i1 %4149, label %4150, label %4168

4150:                                             ; preds = %4147
  %4151 = getelementptr inbounds %struct.rtx_def, ptr %4085, i64 0, i32 1
  %4152 = load ptr, ptr %4151, align 8, !tbaa !143
  %4153 = getelementptr inbounds %struct.rtx_def, ptr %4125, i64 0, i32 1
  %4154 = load ptr, ptr %4153, align 8, !tbaa !143
  %4155 = icmp eq ptr %4152, %4154
  br i1 %4155, label %4156, label %4168

4156:                                             ; preds = %4150
  %4157 = getelementptr inbounds %struct.rtx_def, ptr %4085, i64 0, i32 1, i32 0, i32 0, i64 1
  %4158 = load ptr, ptr %4157, align 8, !tbaa !143
  %4159 = getelementptr inbounds %struct.rtx_def, ptr %4125, i64 0, i32 1, i32 0, i32 0, i64 1
  %4160 = load ptr, ptr %4159, align 8, !tbaa !143
  %4161 = icmp eq ptr %4158, %4160
  br i1 %4161, label %4162, label %4168

4162:                                             ; preds = %4156
  %4163 = call i32 @modified_in_p(ptr noundef nonnull %4085, ptr noundef nonnull %4038) #29
  %4164 = icmp eq i32 %4163, 0
  br i1 %4164, label %4165, label %4168

4165:                                             ; preds = %4162
  %4166 = call i32 @modified_in_p(ptr noundef nonnull %4125, ptr noundef nonnull %2) #29
  %4167 = icmp eq i32 %4166, 0
  br i1 %4167, label %4184, label %4168

4168:                                             ; preds = %4165, %4162, %4156, %4150, %4147, %4136, %4129, %4123, %4042, %4035
  %4169 = load ptr, ptr %4037, align 8, !tbaa !143
  %4170 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %4171 = icmp eq ptr %4170, null
  br i1 %4171, label %4175, label %4172, !prof !280

4172:                                             ; preds = %4168
  %4173 = icmp eq ptr %4170, %2
  br i1 %4173, label %4176, label %4174, !prof !281

4174:                                             ; preds = %4172
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %4176

4175:                                             ; preds = %4168
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %4176

4176:                                             ; preds = %4175, %4174, %4172
  %4177 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %4178 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4177, i64 0, i32 11
  %4179 = load ptr, ptr %4178, align 8, !tbaa !282
  %4180 = icmp eq ptr %4179, null
  br i1 %4180, label %4182, label %4181, !prof !283

4181:                                             ; preds = %4176
  call void %4179(ptr noundef %4169, i32 noundef 67108864) #29, !prof !467
  br label %4182

4182:                                             ; preds = %4181, %4176
  br i1 %4171, label %4183, label %4184, !prof !280

4183:                                             ; preds = %4182
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %4184

4184:                                             ; preds = %4183, %4182, %4165
  %4185 = getelementptr inbounds %struct.rtx_def, ptr %4036, i64 0, i32 1, i32 0, i32 0, i64 1
  %4186 = load ptr, ptr %4185, align 8, !tbaa !143
  %4187 = icmp eq ptr %4186, null
  br i1 %4187, label %4343, label %4035, !prof !285, !llvm.loop !286

4188:                                             ; preds = %4023
  store ptr null, ptr %4028, align 8, !tbaa !132
  %4189 = icmp eq ptr %4032, null
  br i1 %4189, label %4343, label %4190, !prof !287

4190:                                             ; preds = %4188, %4341
  %4191 = phi ptr [ %4194, %4341 ], [ %4032, %4188 ]
  %4192 = getelementptr inbounds %struct.rtx_def, ptr %4191, i64 0, i32 1
  %4193 = getelementptr inbounds %struct.rtx_def, ptr %4191, i64 0, i32 1, i32 0, i32 0, i64 1
  %4194 = load ptr, ptr %4193, align 8, !tbaa !143
  %4195 = load ptr, ptr %4192, align 8, !tbaa !143
  %4196 = load i32, ptr %2, align 8
  %4197 = and i32 %4196, 65535
  %4198 = icmp eq i32 %4197, 10
  br i1 %4198, label %4325, label %4199, !prof !161

4199:                                             ; preds = %4190
  %4200 = load i32, ptr %4195, align 8
  %4201 = and i32 %4200, 65535
  %4202 = icmp eq i32 %4201, 10
  br i1 %4202, label %4325, label %4203, !prof !162

4203:                                             ; preds = %4199
  %4204 = load ptr, ptr %3456, align 8, !tbaa !143
  %4205 = icmp eq ptr %4204, null
  br i1 %4205, label %4240, label %4206, !prof !163

4206:                                             ; preds = %4203
  %4207 = load i32, ptr %4204, align 8
  %4208 = and i32 %4207, 65535
  %4209 = icmp eq i32 %4208, 14
  br i1 %4209, label %4210, label %4213, !prof !163

4210:                                             ; preds = %4206
  %4211 = getelementptr inbounds %struct.rtx_def, ptr %4204, i64 0, i32 1
  %4212 = load ptr, ptr %4211, align 8, !tbaa !143
  br label %4240

4213:                                             ; preds = %4206
  %4214 = call i32 @any_condjump_p(ptr noundef nonnull %2) #29
  %4215 = icmp eq i32 %4214, 0
  br i1 %4215, label %4240, label %4216, !prof !164

4216:                                             ; preds = %4213
  %4217 = call i32 @onlyjump_p(ptr noundef nonnull %2) #29
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4240, label %4219, !prof !165

4219:                                             ; preds = %4216
  %4220 = call ptr @pc_set(ptr noundef nonnull %2) #29
  %4221 = getelementptr inbounds %struct.rtx_def, ptr %4220, i64 0, i32 1, i32 0, i32 0, i64 1
  %4222 = load ptr, ptr %4221, align 8, !tbaa !143
  %4223 = getelementptr inbounds %struct.rtx_def, ptr %4222, i64 0, i32 1
  %4224 = getelementptr inbounds %struct.rtx_def, ptr %4222, i64 0, i32 1, i32 0, i32 0, i64 2
  %4225 = load ptr, ptr %4224, align 8, !tbaa !143
  %4226 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %4227 = icmp eq ptr %4225, %4226
  br i1 %4227, label %4228, label %4230, !prof !166

4228:                                             ; preds = %4219
  %4229 = load ptr, ptr %4223, align 8, !tbaa !143
  br label %4240

4230:                                             ; preds = %4219
  %4231 = getelementptr inbounds %struct.rtx_def, ptr %4222, i64 0, i32 1, i32 0, i32 0, i64 1
  %4232 = load ptr, ptr %4231, align 8, !tbaa !143
  %4233 = icmp eq ptr %4232, %4226
  br i1 %4233, label %4234, label %4240

4234:                                             ; preds = %4230
  %4235 = load ptr, ptr %4223, align 8, !tbaa !143
  %4236 = call i32 @reversed_comparison_code(ptr noundef %4235, ptr noundef nonnull %2) #29
  %4237 = icmp ne i32 %4236, 0
  %4238 = zext i1 %4237 to i8
  %4239 = select i1 %4237, ptr %4235, ptr null
  br label %4240

4240:                                             ; preds = %4234, %4230, %4228, %4216, %4213, %4210, %4203
  %4241 = phi i8 [ 0, %4203 ], [ 0, %4210 ], [ 0, %4213 ], [ 0, %4216 ], [ 0, %4228 ], [ 0, %4230 ], [ %4238, %4234 ]
  %4242 = phi ptr [ null, %4203 ], [ %4212, %4210 ], [ null, %4213 ], [ null, %4216 ], [ %4229, %4228 ], [ null, %4230 ], [ %4239, %4234 ]
  %4243 = getelementptr inbounds %struct.rtx_def, ptr %4195, i64 1
  %4244 = load ptr, ptr %4243, align 8, !tbaa !143
  %4245 = icmp eq ptr %4244, null
  br i1 %4245, label %4280, label %4246, !prof !163

4246:                                             ; preds = %4240
  %4247 = load i32, ptr %4244, align 8
  %4248 = and i32 %4247, 65535
  %4249 = icmp eq i32 %4248, 14
  br i1 %4249, label %4250, label %4253, !prof !163

4250:                                             ; preds = %4246
  %4251 = getelementptr inbounds %struct.rtx_def, ptr %4244, i64 0, i32 1
  %4252 = load ptr, ptr %4251, align 8, !tbaa !143
  br label %4280

4253:                                             ; preds = %4246
  %4254 = call i32 @any_condjump_p(ptr noundef nonnull %4195) #29
  %4255 = icmp eq i32 %4254, 0
  br i1 %4255, label %4280, label %4256, !prof !164

4256:                                             ; preds = %4253
  %4257 = call i32 @onlyjump_p(ptr noundef nonnull %4195) #29
  %4258 = icmp eq i32 %4257, 0
  br i1 %4258, label %4280, label %4259, !prof !165

4259:                                             ; preds = %4256
  %4260 = call ptr @pc_set(ptr noundef nonnull %4195) #29
  %4261 = getelementptr inbounds %struct.rtx_def, ptr %4260, i64 0, i32 1, i32 0, i32 0, i64 1
  %4262 = load ptr, ptr %4261, align 8, !tbaa !143
  %4263 = getelementptr inbounds %struct.rtx_def, ptr %4262, i64 0, i32 1
  %4264 = getelementptr inbounds %struct.rtx_def, ptr %4262, i64 0, i32 1, i32 0, i32 0, i64 2
  %4265 = load ptr, ptr %4264, align 8, !tbaa !143
  %4266 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %4267 = icmp eq ptr %4265, %4266
  br i1 %4267, label %4268, label %4270, !prof !166

4268:                                             ; preds = %4259
  %4269 = load ptr, ptr %4263, align 8, !tbaa !143
  br label %4280

4270:                                             ; preds = %4259
  %4271 = getelementptr inbounds %struct.rtx_def, ptr %4262, i64 0, i32 1, i32 0, i32 0, i64 1
  %4272 = load ptr, ptr %4271, align 8, !tbaa !143
  %4273 = icmp eq ptr %4272, %4266
  br i1 %4273, label %4274, label %4280

4274:                                             ; preds = %4270
  %4275 = load ptr, ptr %4263, align 8, !tbaa !143
  %4276 = call i32 @reversed_comparison_code(ptr noundef %4275, ptr noundef nonnull %4195) #29
  %4277 = icmp ne i32 %4276, 0
  %4278 = zext i1 %4277 to i8
  %4279 = select i1 %4277, ptr %4275, ptr null
  br label %4280

4280:                                             ; preds = %4274, %4270, %4268, %4256, %4253, %4250, %4240
  %4281 = phi i8 [ 0, %4240 ], [ 0, %4250 ], [ 0, %4253 ], [ 0, %4256 ], [ 0, %4268 ], [ 0, %4270 ], [ %4278, %4274 ]
  %4282 = phi ptr [ null, %4240 ], [ %4252, %4250 ], [ null, %4253 ], [ null, %4256 ], [ %4269, %4268 ], [ null, %4270 ], [ %4279, %4274 ]
  %4283 = icmp ne ptr %4242, null
  %4284 = icmp ne ptr %4282, null
  %4285 = select i1 %4283, i1 %4284, i1 false, !prof !167
  br i1 %4285, label %4286, label %4325, !prof !168

4286:                                             ; preds = %4280
  %4287 = load i32, ptr %4242, align 8
  %4288 = and i32 %4287, 65535
  %4289 = zext nneg i32 %4288 to i64
  %4290 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4289
  %4291 = load i32, ptr %4290, align 4, !tbaa !147
  %4292 = icmp ult i32 %4291, 2
  br i1 %4292, label %4293, label %4325

4293:                                             ; preds = %4286
  %4294 = load i32, ptr %4282, align 8
  %4295 = and i32 %4294, 65535
  %4296 = zext nneg i32 %4295 to i64
  %4297 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4296
  %4298 = load i32, ptr %4297, align 4, !tbaa !147
  %4299 = icmp ult i32 %4298, 2
  br i1 %4299, label %4300, label %4325

4300:                                             ; preds = %4293
  %4301 = icmp eq i8 %4241, %4281
  br i1 %4301, label %4302, label %4304

4302:                                             ; preds = %4300
  %4303 = call i32 @reversed_comparison_code(ptr noundef nonnull %4282, ptr noundef null) #29
  br label %4304

4304:                                             ; preds = %4302, %4300
  %4305 = phi i32 [ %4303, %4302 ], [ %4295, %4300 ]
  %4306 = icmp eq i32 %4288, %4305
  br i1 %4306, label %4307, label %4325

4307:                                             ; preds = %4304
  %4308 = getelementptr inbounds %struct.rtx_def, ptr %4242, i64 0, i32 1
  %4309 = load ptr, ptr %4308, align 8, !tbaa !143
  %4310 = getelementptr inbounds %struct.rtx_def, ptr %4282, i64 0, i32 1
  %4311 = load ptr, ptr %4310, align 8, !tbaa !143
  %4312 = icmp eq ptr %4309, %4311
  br i1 %4312, label %4313, label %4325

4313:                                             ; preds = %4307
  %4314 = getelementptr inbounds %struct.rtx_def, ptr %4242, i64 0, i32 1, i32 0, i32 0, i64 1
  %4315 = load ptr, ptr %4314, align 8, !tbaa !143
  %4316 = getelementptr inbounds %struct.rtx_def, ptr %4282, i64 0, i32 1, i32 0, i32 0, i64 1
  %4317 = load ptr, ptr %4316, align 8, !tbaa !143
  %4318 = icmp eq ptr %4315, %4317
  br i1 %4318, label %4319, label %4325

4319:                                             ; preds = %4313
  %4320 = call i32 @modified_in_p(ptr noundef nonnull %4242, ptr noundef nonnull %4195) #29
  %4321 = icmp eq i32 %4320, 0
  br i1 %4321, label %4322, label %4325

4322:                                             ; preds = %4319
  %4323 = call i32 @modified_in_p(ptr noundef nonnull %4282, ptr noundef nonnull %2) #29
  %4324 = icmp eq i32 %4323, 0
  br i1 %4324, label %4341, label %4325

4325:                                             ; preds = %4322, %4319, %4313, %4307, %4304, %4293, %4286, %4280, %4199, %4190
  %4326 = load ptr, ptr %4192, align 8, !tbaa !143
  %4327 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %4328 = icmp eq ptr %4327, null
  br i1 %4328, label %4332, label %4329, !prof !280

4329:                                             ; preds = %4325
  %4330 = icmp eq ptr %4327, %2
  br i1 %4330, label %4333, label %4331, !prof !281

4331:                                             ; preds = %4329
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %4333

4332:                                             ; preds = %4325
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %4333

4333:                                             ; preds = %4332, %4331, %4329
  %4334 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %4335 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4334, i64 0, i32 11
  %4336 = load ptr, ptr %4335, align 8, !tbaa !282
  %4337 = icmp eq ptr %4336, null
  br i1 %4337, label %4339, label %4338, !prof !283

4338:                                             ; preds = %4333
  call void %4336(ptr noundef %4326, i32 noundef 67108864) #29, !prof !468
  br label %4339

4339:                                             ; preds = %4338, %4333
  br i1 %4328, label %4340, label %4341, !prof !280

4340:                                             ; preds = %4339
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %4341

4341:                                             ; preds = %4340, %4339, %4322
  call void @free_INSN_LIST_node(ptr noundef nonnull %4191) #29
  %4342 = icmp eq ptr %4194, null
  br i1 %4342, label %4343, label %4190, !prof !289, !llvm.loop !290

4343:                                             ; preds = %4184, %4341, %4033, %4188
  %4344 = getelementptr inbounds %struct.deps_reg, ptr %3706, i64 %3707, i32 3
  %4345 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !147
  %4346 = icmp eq i32 %4345, 2
  %4347 = select i1 %4346, i32 0, i32 12, !prof !469
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4344, i32 noundef 0, i32 noundef %4347)
  %4348 = load i8, ptr %3418, align 4
  %4349 = and i8 %4348, 1
  %4350 = icmp eq i8 %4349, 0
  br i1 %4350, label %4351, label %4354, !prof !470

4351:                                             ; preds = %4343
  %4352 = getelementptr inbounds %struct.deps_reg, ptr %3706, i64 %3707, i32 4
  store i32 0, ptr %4352, align 8, !tbaa !358
  %4353 = getelementptr inbounds %struct.deps_reg, ptr %3706, i64 %3707, i32 5
  store i32 0, ptr %4353, align 4, !tbaa !416
  br label %4354

4354:                                             ; preds = %4351, %4343
  %4355 = lshr i64 %3702, 1
  %4356 = add i32 %3703, 1
  br label %3644, !llvm.loop !471

4357:                                             ; preds = %3563, %3699
  %4358 = load i8, ptr %3418, align 4
  %4359 = and i8 %4358, 1
  %4360 = icmp eq i8 %4359, 0
  br i1 %4360, label %4361, label %4380, !prof !472

4361:                                             ; preds = %4357
  %4362 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %4363 = load i32, ptr %4362, align 8, !tbaa !473
  %4364 = icmp eq i32 %4363, 0
  br i1 %4364, label %4380, label %4365, !prof !474

4365:                                             ; preds = %4361
  %4366 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %4367 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  br label %4368

4368:                                             ; preds = %4365, %4368
  %4369 = phi i64 [ 0, %4365 ], [ %4376, %4368 ]
  %4370 = load ptr, ptr %4366, align 8, !tbaa !357
  %4371 = getelementptr inbounds %struct.deps_reg, ptr %4370, i64 %4369, i32 1
  %4372 = load ptr, ptr %4371, align 8, !tbaa !418
  %4373 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %4372) #29
  store ptr %4373, ptr %4371, align 8, !tbaa !418
  %4374 = trunc i64 %4369 to i32
  %4375 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %4367, i32 noundef %4374) #29
  %4376 = add nuw nsw i64 %4369, 1
  %4377 = load i32, ptr %4362, align 8, !tbaa !473
  %4378 = zext i32 %4377 to i64
  %4379 = icmp ult i64 %4376, %4378
  br i1 %4379, label %4368, label %4380, !prof !475, !llvm.loop !476

4380:                                             ; preds = %4368, %4361, %4357
  %4381 = load i32, ptr %2, align 8
  %4382 = and i32 %4381, 65535
  %4383 = icmp eq i32 %4382, 9
  br i1 %4383, label %4384, label %4393, !prof !460

4384:                                             ; preds = %4380
  %4385 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %4386 = getelementptr inbounds %struct.common_sched_info_def, ptr %4385, i64 0, i32 4
  %4387 = load i32, ptr %4386, align 8, !tbaa !173
  %4388 = icmp eq i32 %4387, 4
  br i1 %4388, label %4389, label %4392, !prof !460

4389:                                             ; preds = %4384
  %4390 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %2) #29
  %4391 = icmp eq i8 %4390, 0
  br i1 %4391, label %4392, label %4393, !prof !460

4392:                                             ; preds = %4389, %4384
  call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1)
  br label %4393

4393:                                             ; preds = %4392, %4389, %4380
  %4394 = load i8, ptr %3418, align 4
  %4395 = and i8 %4394, 1
  %4396 = icmp eq i8 %4395, 0
  br i1 %4396, label %4397, label %4399, !prof !472

4397:                                             ; preds = %4393
  %4398 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void @bitmap_clear(ptr noundef nonnull %4398) #29
  br label %4399

4399:                                             ; preds = %4397, %4393
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %4400

4400:                                             ; preds = %4399, %3449
  %4401 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  %4402 = load i32, ptr %4401, align 8, !tbaa !305
  %4403 = icmp eq i32 %4402, 0
  br i1 %4403, label %4512, label %4404, !prof !306

4404:                                             ; preds = %4400
  %4405 = load i32, ptr %2, align 8
  %4406 = and i32 %4405, 65535
  %4407 = add nsw i32 %4406, -7
  %4408 = icmp ult i32 %4407, 4
  br i1 %4408, label %4409, label %4417

4409:                                             ; preds = %4404
  %4410 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %4411 = load ptr, ptr %4410, align 8, !tbaa !143
  %4412 = load i32, ptr %4411, align 8
  %4413 = and i32 %4412, 65535
  %4414 = icmp eq i32 %4413, 23
  br i1 %4414, label %4417, label %4415

4415:                                             ; preds = %4409
  %4416 = call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %4411) #29
  br label %4417

4417:                                             ; preds = %4404, %4409, %4415
  %4418 = phi ptr [ %4416, %4415 ], [ null, %4404 ], [ %4411, %4409 ]
  %4419 = icmp eq ptr %4418, null
  br i1 %4419, label %4420, label %4424

4420:                                             ; preds = %4417
  %4421 = load i32, ptr %2, align 8
  %4422 = and i32 %4421, 65535
  %4423 = icmp eq i32 %4422, 7
  br i1 %4423, label %4512, label %4507

4424:                                             ; preds = %4417
  %4425 = getelementptr inbounds %struct.rtx_def, ptr %4418, i64 0, i32 1
  %4426 = load ptr, ptr %4425, align 8, !tbaa !143
  %4427 = load i32, ptr %4426, align 8
  %4428 = and i32 %4427, 65535
  %4429 = icmp eq i32 %4428, 39
  br i1 %4429, label %4430, label %4433

4430:                                             ; preds = %4424
  %4431 = getelementptr inbounds %struct.rtx_def, ptr %4426, i64 0, i32 1
  %4432 = load ptr, ptr %4431, align 8, !tbaa !143
  br label %4433

4433:                                             ; preds = %4430, %4424
  %4434 = phi ptr [ %4432, %4430 ], [ %4426, %4424 ]
  %4435 = load i32, ptr %4434, align 8
  %4436 = and i32 %4435, 65535
  %4437 = icmp eq i32 %4436, 37
  br i1 %4437, label %4438, label %4507

4438:                                             ; preds = %4433
  %4439 = getelementptr inbounds %struct.rtx_def, ptr %4434, i64 0, i32 1
  %4440 = load i32, ptr %4439, align 8, !tbaa !143
  %4441 = getelementptr inbounds %struct.rtx_def, ptr %4418, i64 0, i32 1, i32 0, i32 0, i64 1
  %4442 = load ptr, ptr %4441, align 8, !tbaa !143
  %4443 = load i32, ptr %4442, align 8
  %4444 = and i32 %4443, 65535
  %4445 = icmp eq i32 %4444, 39
  br i1 %4445, label %4446, label %4449

4446:                                             ; preds = %4438
  %4447 = getelementptr inbounds %struct.rtx_def, ptr %4442, i64 0, i32 1
  %4448 = load ptr, ptr %4447, align 8, !tbaa !143
  br label %4449

4449:                                             ; preds = %4446, %4438
  %4450 = phi ptr [ %4448, %4446 ], [ %4442, %4438 ]
  %4451 = load i32, ptr %4450, align 8
  %4452 = and i32 %4451, 65535
  %4453 = add nsw i32 %4452, -49
  %4454 = icmp ult i32 %4453, 2
  br i1 %4454, label %4455, label %4467

4455:                                             ; preds = %4449
  %4456 = getelementptr inbounds %struct.rtx_def, ptr %4450, i64 0, i32 1
  %4457 = load ptr, ptr %4456, align 8, !tbaa !143
  %4458 = load i32, ptr %4457, align 8
  %4459 = and i32 %4458, 65535
  %4460 = icmp eq i32 %4459, 37
  br i1 %4460, label %4461, label %4467

4461:                                             ; preds = %4455
  %4462 = getelementptr inbounds %struct.rtx_def, ptr %4457, i64 0, i32 1
  %4463 = load i32, ptr %4462, align 8, !tbaa !143
  %4464 = icmp eq i32 %4463, 7
  %4465 = icmp eq i32 %4440, 7
  %4466 = select i1 %4464, i1 %4465, i1 false
  br i1 %4466, label %4473, label %4467

4467:                                             ; preds = %4461, %4449, %4455
  %4468 = icmp eq i32 %4452, 37
  br i1 %4468, label %4469, label %4507

4469:                                             ; preds = %4467
  %4470 = getelementptr inbounds %struct.rtx_def, ptr %4450, i64 0, i32 1
  %4471 = load i32, ptr %4470, align 8, !tbaa !143
  %4472 = icmp slt i32 %4471, 53
  br label %4473

4473:                                             ; preds = %4461, %4469
  %4474 = phi i1 [ %4472, %4469 ], [ true, %4461 ]
  %4475 = icmp slt i32 %4440, 53
  %4476 = select i1 %4474, i1 true, i1 %4475
  br i1 %4476, label %4477, label %4507

4477:                                             ; preds = %4473
  %4478 = load i8, ptr %3418, align 4
  %4479 = and i8 %4478, 1
  %4480 = icmp eq i8 %4479, 0
  br i1 %4480, label %4481, label %4485

4481:                                             ; preds = %4477
  %4482 = load i32, ptr %4401, align 8, !tbaa !305
  %4483 = icmp eq i32 %4482, 2
  br i1 %4483, label %4484, label %4485

4484:                                             ; preds = %4481
  store i32 1, ptr %4401, align 8, !tbaa !305
  br label %4485

4485:                                             ; preds = %4484, %4481, %4477
  %4486 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %4487 = getelementptr inbounds %struct.common_sched_info_def, ptr %4486, i64 0, i32 4
  %4488 = load i32, ptr %4487, align 8, !tbaa !173
  %4489 = icmp ne i32 %4488, 4
  %4490 = load i32, ptr @sched_emulate_haifa_p, align 4
  %4491 = icmp ne i32 %4490, 0
  %4492 = select i1 %4489, i1 true, i1 %4491
  br i1 %4492, label %4493, label %4512

4493:                                             ; preds = %4485
  %4494 = load i32, ptr %2, align 8
  %4495 = or i32 %4494, 268435456
  store i32 %4495, ptr %2, align 8
  %4496 = load ptr, ptr @h_d_i_d, align 8
  %4497 = load ptr, ptr @sched_luids, align 8
  %4498 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4499 = load i32, ptr %4498, align 8, !tbaa !143
  %4500 = zext i32 %4499 to i64
  %4501 = getelementptr inbounds %struct.VEC_int_base, ptr %4497, i64 0, i32 2, i64 %4500
  %4502 = load i32, ptr %4501, align 4, !tbaa !147
  %4503 = zext i32 %4502 to i64
  %4504 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %4496, i64 0, i32 2, i64 %4503, i32 7
  %4505 = load i8, ptr %4504, align 8
  %4506 = or i8 %4505, 1
  store i8 %4506, ptr %4504, align 8
  br label %4512

4507:                                             ; preds = %4420, %4473, %4467, %4433
  %4508 = load i8, ptr %3418, align 4
  %4509 = and i8 %4508, 1
  %4510 = icmp eq i8 %4509, 0
  br i1 %4510, label %4511, label %4512

4511:                                             ; preds = %4507
  store i32 0, ptr %4401, align 8, !tbaa !305
  br label %4512

4512:                                             ; preds = %4420, %4507, %4511, %4493, %4485, %4400
  %4513 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %4514 = getelementptr inbounds %struct.haifa_sched_info, ptr %4513, i64 0, i32 17
  %4515 = load i32, ptr %4514, align 8, !tbaa !157
  %4516 = and i32 %4515, 2
  %4517 = icmp eq i32 %4516, 0
  br i1 %4517, label %4537, label %4518, !prof !306

4518:                                             ; preds = %4512
  %4519 = call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %2, i32 noundef 0), !range !220
  %4520 = icmp eq i8 %4519, 0
  br i1 %4520, label %4521, label %4537

4521:                                             ; preds = %4518
  %4522 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %4523 = getelementptr inbounds %struct.common_sched_info_def, ptr %4522, i64 0, i32 4
  %4524 = load i32, ptr %4523, align 8, !tbaa !173
  %4525 = icmp eq i32 %4524, 4
  br i1 %4525, label %4526, label %4527

4526:                                             ; preds = %4521
  call void @sel_mark_hard_insn(ptr noundef nonnull %2) #29
  br label %4537

4527:                                             ; preds = %4521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  store i32 2, ptr %7, align 8, !tbaa.struct !201
  %4528 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %2, ptr %4528, align 8, !tbaa.struct !202
  %4529 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr @sd_iterator_start.null_link, ptr %4529, align 8, !tbaa.struct !203
  %4530 = getelementptr inbounds i8, ptr %7, i64 24
  store i8 0, ptr %4530, align 8, !tbaa.struct !204
  %4531 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %4532 = icmp eq i8 %4531, 0
  br i1 %4532, label %4536, label %4533

4533:                                             ; preds = %4527, %4533
  call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %7)
  %4534 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %4535 = icmp eq i8 %4534, 0
  br i1 %4535, label %4536, label %4533, !llvm.loop !477

4536:                                             ; preds = %4533, %4527
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #29
  br label %4537

4537:                                             ; preds = %4526, %4536, %4518, %4512
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_dependence_list_and_free(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 !prof !478 !PGOFuncName !479 {
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %2, align 8, !tbaa !132
  br i1 %9, label %176, label %11, !prof !278

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %340, label %13, !prof !279

13:                                               ; preds = %11
  %14 = icmp eq i32 %3, 0
  br label %15

15:                                               ; preds = %172, %13
  %16 = phi ptr [ %10, %13 ], [ %174, %172 ]
  br i1 %14, label %17, label %150, !prof !480

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %150, label %23, !prof !161

23:                                               ; preds = %17
  %24 = load i32, ptr %19, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %150, label %27, !prof !162

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !143
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31, !prof !163

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 14
  br i1 %34, label %35, label %38, !prof !163

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  br label %65

38:                                               ; preds = %31
  %39 = tail call i32 @any_condjump_p(ptr noundef nonnull %1) #29
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %65, label %41, !prof !164

41:                                               ; preds = %38
  %42 = tail call i32 @onlyjump_p(ptr noundef nonnull %1) #29
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %65, label %44, !prof !165

44:                                               ; preds = %41
  %45 = tail call ptr @pc_set(ptr noundef nonnull %1) #29
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !143
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !143
  %51 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %55, !prof !166

53:                                               ; preds = %44
  %54 = load ptr, ptr %48, align 8, !tbaa !143
  br label %65

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !143
  %58 = icmp eq ptr %57, %51
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load ptr, ptr %48, align 8, !tbaa !143
  %61 = tail call i32 @reversed_comparison_code(ptr noundef %60, ptr noundef nonnull %1) #29
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i8
  %64 = select i1 %62, ptr %60, ptr null
  br label %65

65:                                               ; preds = %59, %55, %53, %41, %38, %35, %27
  %66 = phi i8 [ 0, %27 ], [ 0, %35 ], [ 0, %38 ], [ 0, %41 ], [ 0, %53 ], [ 0, %55 ], [ %63, %59 ]
  %67 = phi ptr [ null, %27 ], [ %37, %35 ], [ null, %38 ], [ null, %41 ], [ %54, %53 ], [ null, %55 ], [ %64, %59 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !143
  %70 = icmp eq ptr %69, null
  br i1 %70, label %105, label %71, !prof !163

71:                                               ; preds = %65
  %72 = load i32, ptr %69, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 14
  br i1 %74, label %75, label %78, !prof !163

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !143
  br label %105

78:                                               ; preds = %71
  %79 = tail call i32 @any_condjump_p(ptr noundef nonnull %19) #29
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %105, label %81, !prof !164

81:                                               ; preds = %78
  %82 = tail call i32 @onlyjump_p(ptr noundef nonnull %19) #29
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %105, label %84, !prof !165

84:                                               ; preds = %81
  %85 = tail call ptr @pc_set(ptr noundef nonnull %19) #29
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !143
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %89 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !143
  %91 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %95, !prof !166

93:                                               ; preds = %84
  %94 = load ptr, ptr %88, align 8, !tbaa !143
  br label %105

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !143
  %98 = icmp eq ptr %97, %91
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load ptr, ptr %88, align 8, !tbaa !143
  %101 = tail call i32 @reversed_comparison_code(ptr noundef %100, ptr noundef nonnull %19) #29
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i8
  %104 = select i1 %102, ptr %100, ptr null
  br label %105

105:                                              ; preds = %99, %95, %93, %81, %78, %75, %65
  %106 = phi i8 [ 0, %65 ], [ 0, %75 ], [ 0, %78 ], [ 0, %81 ], [ 0, %93 ], [ 0, %95 ], [ %103, %99 ]
  %107 = phi ptr [ null, %65 ], [ %77, %75 ], [ null, %78 ], [ null, %81 ], [ %94, %93 ], [ null, %95 ], [ %104, %99 ]
  %108 = icmp ne ptr %67, null
  %109 = icmp ne ptr %107, null
  %110 = select i1 %108, i1 %109, i1 false, !prof !167
  br i1 %110, label %111, label %150, !prof !168

111:                                              ; preds = %105
  %112 = load i32, ptr %67, align 8
  %113 = and i32 %112, 65535
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !147
  %117 = icmp ult i32 %116, 2
  br i1 %117, label %118, label %150

118:                                              ; preds = %111
  %119 = load i32, ptr %107, align 8
  %120 = and i32 %119, 65535
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !147
  %124 = icmp ult i32 %123, 2
  br i1 %124, label %125, label %150

125:                                              ; preds = %118
  %126 = icmp eq i8 %66, %106
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  %128 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %107, ptr noundef null) #29
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %128, %127 ], [ %120, %125 ]
  %131 = icmp eq i32 %113, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !143
  %135 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  %137 = icmp eq ptr %134, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !143
  %141 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !143
  %143 = icmp eq ptr %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = tail call i32 @modified_in_p(ptr noundef nonnull %67, ptr noundef nonnull %19) #29
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = tail call i32 @modified_in_p(ptr noundef nonnull %107, ptr noundef nonnull %1) #29
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %172, label %150

150:                                              ; preds = %147, %144, %138, %132, %129, %118, %111, %105, %23, %17, %15
  %151 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !143
  switch i32 %4, label %154 [
    i32 0, label %156
    i32 11, label %153
    i32 12, label %155
  ], !prof !481

153:                                              ; preds = %150
  br label %156

154:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #29
  br label %155

155:                                              ; preds = %154, %150
  br label %156

156:                                              ; preds = %155, %153, %150
  %157 = phi i32 [ 33554432, %153 ], [ 67108864, %155 ], [ 16777216, %150 ]
  %158 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160, !prof !280

160:                                              ; preds = %156
  %161 = icmp eq ptr %158, %1
  br i1 %161, label %164, label %162, !prof !281

162:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %164

163:                                              ; preds = %156
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %164

164:                                              ; preds = %163, %162, %160
  %165 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %166 = getelementptr inbounds %struct.sched_deps_info_def, ptr %165, i64 0, i32 11
  %167 = load ptr, ptr %166, align 8, !tbaa !282
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169, !prof !283

169:                                              ; preds = %164
  tail call void %167(ptr noundef %152, i32 noundef %157) #29, !prof !482
  br label %170

170:                                              ; preds = %169, %164
  br i1 %159, label %171, label %172, !prof !280

171:                                              ; preds = %170
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %172

172:                                              ; preds = %171, %170, %147
  %173 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !143
  %175 = icmp eq ptr %174, null
  br i1 %175, label %340, label %15, !prof !285, !llvm.loop !286

176:                                              ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !132
  %177 = icmp eq ptr %10, null
  br i1 %177, label %340, label %178, !prof !287

178:                                              ; preds = %176
  %179 = icmp eq i32 %3, 0
  br label %180

180:                                              ; preds = %178, %338
  %181 = phi ptr [ %10, %178 ], [ %184, %338 ]
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %183 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !143
  br i1 %179, label %185, label %317, !prof !483

185:                                              ; preds = %180
  %186 = load ptr, ptr %182, align 8, !tbaa !143
  %187 = load i32, ptr %1, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 10
  br i1 %189, label %317, label %190, !prof !161

190:                                              ; preds = %185
  %191 = load i32, ptr %186, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 10
  br i1 %193, label %317, label %194, !prof !162

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !143
  %197 = icmp eq ptr %196, null
  br i1 %197, label %232, label %198, !prof !163

198:                                              ; preds = %194
  %199 = load i32, ptr %196, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 14
  br i1 %201, label %202, label %205, !prof !163

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !143
  br label %232

205:                                              ; preds = %198
  %206 = tail call i32 @any_condjump_p(ptr noundef nonnull %1) #29
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %232, label %208, !prof !164

208:                                              ; preds = %205
  %209 = tail call i32 @onlyjump_p(ptr noundef nonnull %1) #29
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %232, label %211, !prof !165

211:                                              ; preds = %208
  %212 = tail call ptr @pc_set(ptr noundef nonnull %1) #29
  %213 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !143
  %215 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %216 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 2
  %217 = load ptr, ptr %216, align 8, !tbaa !143
  %218 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %219 = icmp eq ptr %217, %218
  br i1 %219, label %220, label %222, !prof !166

220:                                              ; preds = %211
  %221 = load ptr, ptr %215, align 8, !tbaa !143
  br label %232

222:                                              ; preds = %211
  %223 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !143
  %225 = icmp eq ptr %224, %218
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = load ptr, ptr %215, align 8, !tbaa !143
  %228 = tail call i32 @reversed_comparison_code(ptr noundef %227, ptr noundef nonnull %1) #29
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i8
  %231 = select i1 %229, ptr %227, ptr null
  br label %232

232:                                              ; preds = %226, %222, %220, %208, %205, %202, %194
  %233 = phi i8 [ 0, %194 ], [ 0, %202 ], [ 0, %205 ], [ 0, %208 ], [ 0, %220 ], [ 0, %222 ], [ %230, %226 ]
  %234 = phi ptr [ null, %194 ], [ %204, %202 ], [ null, %205 ], [ null, %208 ], [ %221, %220 ], [ null, %222 ], [ %231, %226 ]
  %235 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !143
  %237 = icmp eq ptr %236, null
  br i1 %237, label %272, label %238, !prof !163

238:                                              ; preds = %232
  %239 = load i32, ptr %236, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 14
  br i1 %241, label %242, label %245, !prof !163

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !143
  br label %272

245:                                              ; preds = %238
  %246 = tail call i32 @any_condjump_p(ptr noundef nonnull %186) #29
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %272, label %248, !prof !164

248:                                              ; preds = %245
  %249 = tail call i32 @onlyjump_p(ptr noundef nonnull %186) #29
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %272, label %251, !prof !165

251:                                              ; preds = %248
  %252 = tail call ptr @pc_set(ptr noundef nonnull %186) #29
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 0, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !143
  %255 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1
  %256 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1, i32 0, i32 0, i64 2
  %257 = load ptr, ptr %256, align 8, !tbaa !143
  %258 = load ptr, ptr @global_rtl, align 16, !tbaa !132
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %260, label %262, !prof !166

260:                                              ; preds = %251
  %261 = load ptr, ptr %255, align 8, !tbaa !143
  br label %272

262:                                              ; preds = %251
  %263 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !143
  %265 = icmp eq ptr %264, %258
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load ptr, ptr %255, align 8, !tbaa !143
  %268 = tail call i32 @reversed_comparison_code(ptr noundef %267, ptr noundef nonnull %186) #29
  %269 = icmp ne i32 %268, 0
  %270 = zext i1 %269 to i8
  %271 = select i1 %269, ptr %267, ptr null
  br label %272

272:                                              ; preds = %266, %262, %260, %248, %245, %242, %232
  %273 = phi i8 [ 0, %232 ], [ 0, %242 ], [ 0, %245 ], [ 0, %248 ], [ 0, %260 ], [ 0, %262 ], [ %270, %266 ]
  %274 = phi ptr [ null, %232 ], [ %244, %242 ], [ null, %245 ], [ null, %248 ], [ %261, %260 ], [ null, %262 ], [ %271, %266 ]
  %275 = icmp ne ptr %234, null
  %276 = icmp ne ptr %274, null
  %277 = select i1 %275, i1 %276, i1 false, !prof !167
  br i1 %277, label %278, label %317, !prof !168

278:                                              ; preds = %272
  %279 = load i32, ptr %234, align 8
  %280 = and i32 %279, 65535
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !147
  %284 = icmp ult i32 %283, 2
  br i1 %284, label %285, label %317

285:                                              ; preds = %278
  %286 = load i32, ptr %274, align 8
  %287 = and i32 %286, 65535
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !147
  %291 = icmp ult i32 %290, 2
  br i1 %291, label %292, label %317

292:                                              ; preds = %285
  %293 = icmp eq i8 %233, %273
  br i1 %293, label %294, label %296

294:                                              ; preds = %292
  %295 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %274, ptr noundef null) #29
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %295, %294 ], [ %287, %292 ]
  %298 = icmp eq i32 %280, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !143
  %302 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !143
  %304 = icmp eq ptr %301, %303
  br i1 %304, label %305, label %317

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1, i32 0, i32 0, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !143
  %308 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !143
  %310 = icmp eq ptr %307, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %305
  %312 = tail call i32 @modified_in_p(ptr noundef nonnull %234, ptr noundef nonnull %186) #29
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = tail call i32 @modified_in_p(ptr noundef nonnull %274, ptr noundef nonnull %1) #29
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %338, label %317

317:                                              ; preds = %185, %190, %272, %278, %285, %296, %299, %305, %311, %314, %180
  %318 = load ptr, ptr %182, align 8, !tbaa !143
  switch i32 %4, label %320 [
    i32 0, label %322
    i32 11, label %319
    i32 12, label %321
  ], !prof !481

319:                                              ; preds = %317
  br label %322

320:                                              ; preds = %317
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #29
  br label %321

321:                                              ; preds = %320, %317
  br label %322

322:                                              ; preds = %321, %319, %317
  %323 = phi i32 [ 33554432, %319 ], [ 67108864, %321 ], [ 16777216, %317 ]
  %324 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %325 = icmp eq ptr %324, null
  br i1 %325, label %329, label %326, !prof !280

326:                                              ; preds = %322
  %327 = icmp eq ptr %324, %1
  br i1 %327, label %330, label %328, !prof !281

328:                                              ; preds = %326
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %330

329:                                              ; preds = %322
  store ptr %1, ptr @cur_insn, align 8, !tbaa !132
  br label %330

330:                                              ; preds = %329, %328, %326
  %331 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %332 = getelementptr inbounds %struct.sched_deps_info_def, ptr %331, i64 0, i32 11
  %333 = load ptr, ptr %332, align 8, !tbaa !282
  %334 = icmp eq ptr %333, null
  br i1 %334, label %336, label %335, !prof !283

335:                                              ; preds = %330
  tail call void %333(ptr noundef %318, i32 noundef %323) #29, !prof !484
  br label %336

336:                                              ; preds = %335, %330
  br i1 %325, label %337, label %338, !prof !280

337:                                              ; preds = %336
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %338

338:                                              ; preds = %314, %337, %336
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %181) #29
  %339 = icmp eq ptr %184, null
  br i1 %339, label %340, label %180, !prof !289, !llvm.loop !290

340:                                              ; preds = %172, %338, %176, %11
  ret void
}

declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @deps_start_bb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !131 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !485

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3362, ptr noundef nonnull @.str.1) #29
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27, !prof !486

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %1) #29
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15, %22
  %19 = phi ptr [ %23, %22 ], [ %16, %15 ]
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %27 [
    i16 7, label %22
    i16 10, label %25
  ]

22:                                               ; preds = %18
  %23 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %19) #29
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %18, !llvm.loop !487

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 2, ptr %26, align 8, !tbaa !305
  br label %27

27:                                               ; preds = %22, %18, %15, %25, %11, %8
  ret void
}

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_analyze(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #11 !prof !488 {
  %4 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4, i64 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !485

9:                                                ; preds = %3
  tail call void @cselib_init(i32 noundef 1) #29
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !485

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3362, ptr noundef nonnull @.str.1) #29
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %35, !prof !486

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %1) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %30
  %27 = phi ptr [ %31, %30 ], [ %24, %23 ]
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i16
  switch i16 %29, label %35 [
    i16 7, label %30
    i16 10, label %33
  ]

30:                                               ; preds = %26
  %31 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %27) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %26, !llvm.loop !487

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 2, ptr %34, align 8, !tbaa !305
  br label %35

35:                                               ; preds = %26, %30, %16, %19, %23, %33
  br label %36

36:                                               ; preds = %35, %124
  %37 = phi ptr [ %126, %124 ], [ %1, %35 ]
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %114, !prof !489

42:                                               ; preds = %36
  %43 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %44 = tail call ptr @pool_alloc(ptr noundef %43) #29
  store ptr null, ptr %44, align 8, !tbaa !193
  %45 = getelementptr inbounds %struct._deps_list, ptr %44, i64 0, i32 1
  store i32 0, ptr %45, align 8, !tbaa !189
  %46 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @dl_pool_diff, align 4, !tbaa !147
  %48 = load ptr, ptr @h_d_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !143
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_int_base, ptr %49, i64 0, i32 2, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !147
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %48, i64 0, i32 2, i64 %55, i32 2
  store ptr %44, ptr %56, align 8, !tbaa !179
  %57 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %58 = tail call ptr @pool_alloc(ptr noundef %57) #29
  store ptr null, ptr %58, align 8, !tbaa !193
  %59 = getelementptr inbounds %struct._deps_list, ptr %58, i64 0, i32 1
  store i32 0, ptr %59, align 8, !tbaa !189
  %60 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr @dl_pool_diff, align 4, !tbaa !147
  %62 = load ptr, ptr @h_d_i_d, align 8
  %63 = load ptr, ptr @sched_luids, align 8
  %64 = load i32, ptr %50, align 8, !tbaa !143
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_int_base, ptr %63, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !147
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %62, i64 0, i32 2, i64 %68, i32 3
  store ptr %58, ptr %69, align 8, !tbaa !181
  %70 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %71 = tail call ptr @pool_alloc(ptr noundef %70) #29
  store ptr null, ptr %71, align 8, !tbaa !193
  %72 = getelementptr inbounds %struct._deps_list, ptr %71, i64 0, i32 1
  store i32 0, ptr %72, align 8, !tbaa !189
  %73 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr @dl_pool_diff, align 4, !tbaa !147
  %75 = load ptr, ptr @h_d_i_d, align 8
  %76 = load ptr, ptr @sched_luids, align 8
  %77 = load i32, ptr %50, align 8, !tbaa !143
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.VEC_int_base, ptr %76, i64 0, i32 2, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !147
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %75, i64 0, i32 2, i64 %81, i32 5
  store ptr %71, ptr %82, align 8, !tbaa !184
  %83 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %84 = tail call ptr @pool_alloc(ptr noundef %83) #29
  store ptr null, ptr %84, align 8, !tbaa !193
  %85 = getelementptr inbounds %struct._deps_list, ptr %84, i64 0, i32 1
  store i32 0, ptr %85, align 8, !tbaa !189
  %86 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @dl_pool_diff, align 4, !tbaa !147
  %88 = load ptr, ptr @h_d_i_d, align 8
  %89 = load ptr, ptr @sched_luids, align 8
  %90 = load i32, ptr %50, align 8, !tbaa !143
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.VEC_int_base, ptr %89, i64 0, i32 2, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !147
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %88, i64 0, i32 2, i64 %94, i32 4
  store ptr %84, ptr %95, align 8, !tbaa !183
  %96 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  %97 = tail call ptr @pool_alloc(ptr noundef %96) #29
  store ptr null, ptr %97, align 8, !tbaa !193
  %98 = getelementptr inbounds %struct._deps_list, ptr %97, i64 0, i32 1
  store i32 0, ptr %98, align 8, !tbaa !189
  %99 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr @dl_pool_diff, align 4, !tbaa !147
  %101 = load ptr, ptr @h_d_i_d, align 8
  %102 = load ptr, ptr @sched_luids, align 8
  %103 = load i32, ptr %50, align 8, !tbaa !143
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.VEC_int_base, ptr %102, i64 0, i32 2, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !147
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %101, i64 0, i32 2, i64 %107, i32 6
  store ptr %97, ptr %108, align 8, !tbaa !185
  %109 = load i32, ptr %37, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 7
  br i1 %111, label %112, label %114, !prof !188

112:                                              ; preds = %42
  %113 = or i32 %109, 67108864
  store i32 %113, ptr %37, align 8
  br label %114

114:                                              ; preds = %112, %42, %36
  tail call void @deps_analyze_insn(ptr noundef %0, ptr noundef nonnull %37)
  %115 = icmp eq ptr %37, %2
  br i1 %115, label %116, label %124, !prof !490

116:                                              ; preds = %114
  %117 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %118 = getelementptr inbounds %struct.sched_deps_info_def, ptr %117, i64 0, i32 12
  %119 = load i8, ptr %118, align 8
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122, !prof !485

122:                                              ; preds = %116
  tail call void @cselib_finish() #29
  br label %123

123:                                              ; preds = %122, %116
  ret void

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !143
  br label %36, !llvm.loop !491
}

declare void @cselib_init(i32 noundef) local_unnamed_addr #3

declare void @cselib_finish() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_free_deps(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #11 !prof !488 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %308, label %9, !prof !492

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, i32 3, i32 8
  %12 = getelementptr inbounds i8, ptr %4, i64 8
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = getelementptr inbounds i8, ptr %4, i64 24
  br label %15

15:                                               ; preds = %9, %304
  %16 = phi ptr [ %0, %9 ], [ %306, %304 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -7
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %21, label %304, !prof !489

21:                                               ; preds = %15
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !143
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.VEC_int_base, ptr %22, i64 0, i32 2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !147
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %304, !prof !489

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  store i32 %11, ptr %4, align 8, !tbaa.struct !201
  store ptr %16, ptr %12, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %13, align 8, !tbaa.struct !203
  store i8 0, ptr %14, align 8, !tbaa.struct !204
  %30 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %122, label %32, !prof !187

32:                                               ; preds = %29, %116
  %33 = load ptr, ptr %13, align 8, !tbaa !207
  %34 = load ptr, ptr %33, align 8, !tbaa !132
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = load ptr, ptr %5, align 8, !tbaa !132
  %37 = getelementptr inbounds %struct._dep, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  br i1 %10, label %39, label %70, !prof !221

39:                                               ; preds = %32
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 17
  %42 = load i32, ptr %41, align 8, !tbaa !157
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45, !prof !221

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._dep, ptr %36, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !155
  %48 = and i32 %47, 16777215
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @h_d_i_d, align 8
  %52 = load ptr, ptr @sched_luids, align 8
  %53 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !143
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_int_base, ptr %52, i64 0, i32 2, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !147
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %51, i64 0, i32 2, i64 %58, i32 3
  br label %80

60:                                               ; preds = %45, %39
  %61 = load ptr, ptr @h_d_i_d, align 8
  %62 = load ptr, ptr @sched_luids, align 8
  %63 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !143
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_int_base, ptr %62, i64 0, i32 2, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !147
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %61, i64 0, i32 2, i64 %68, i32 2
  br label %80

70:                                               ; preds = %32
  %71 = load ptr, ptr @h_d_i_d, align 8
  %72 = load ptr, ptr @sched_luids, align 8
  %73 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !143
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_int_base, ptr %72, i64 0, i32 2, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !147
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %71, i64 0, i32 2, i64 %78, i32 5
  br label %80

80:                                               ; preds = %50, %60, %70
  %81 = phi ptr [ %79, %70 ], [ %69, %60 ], [ %59, %50 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !132
  %83 = getelementptr inbounds %struct._dep_link, ptr %34, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !222
  %85 = getelementptr inbounds %struct._dep_link, ptr %34, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !223
  store ptr %86, ptr %84, align 8, !tbaa !132
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88, !prof !493

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct._dep_link, ptr %86, i64 0, i32 2
  store ptr %84, ptr %89, align 8, !tbaa !222
  br label %90

90:                                               ; preds = %88, %80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %85, i8 0, i64 16, i1 false)
  %91 = load ptr, ptr %34, align 8, !tbaa !216
  %92 = getelementptr inbounds %struct._dep_node, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !226
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 7
  br i1 %96, label %97, label %103, !prof !219

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct._dep_node, ptr %91, i64 0, i32 1, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !229
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 7
  br i1 %102, label %103, label %107

103:                                              ; preds = %97, %90
  %104 = getelementptr inbounds %struct._deps_list, ptr %82, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !189
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr %104, align 8, !tbaa !189
  br label %107

107:                                              ; preds = %103, %97
  %108 = getelementptr inbounds %struct._dep_link, ptr %35, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !222
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %115, !prof !218

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._dep_node, ptr %35, i64 0, i32 2, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !222
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !218

115:                                              ; preds = %111, %107
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #29
  br label %116

116:                                              ; preds = %111, %115
  %117 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %118 = add nsw i32 %117, -1
  store i32 %118, ptr @dn_pool_diff, align 4, !tbaa !147
  %119 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %119, ptr noundef %35) #29
  %120 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %32, !prof !494, !llvm.loop !495

122:                                              ; preds = %116, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  %123 = load ptr, ptr @h_d_i_d, align 8
  %124 = load ptr, ptr @sched_luids, align 8
  %125 = load i32, ptr %23, align 8, !tbaa !143
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.VEC_int_base, ptr %124, i64 0, i32 2, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !147
  %129 = zext i32 %128 to i64
  br i1 %10, label %133, label %130, !prof !489

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %123, i64 0, i32 2, i64 %129, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !185
  tail call fastcc void @clear_deps_list(ptr noundef %132)
  br label %167

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %123, i64 0, i32 2, i64 %129, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !183
  %136 = getelementptr inbounds %struct._deps_list, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %135, align 8, !tbaa !193
  %138 = icmp eq ptr %137, null
  br i1 %138, label %167, label %139, !prof !187

139:                                              ; preds = %133, %164
  %140 = phi ptr [ %165, %164 ], [ %137, %133 ]
  %141 = getelementptr inbounds %struct._dep_link, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !222
  %143 = getelementptr inbounds %struct._dep_link, ptr %140, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !223
  store ptr %144, ptr %142, align 8, !tbaa !132
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146, !prof !496

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct._dep_link, ptr %144, i64 0, i32 2
  store ptr %142, ptr %147, align 8, !tbaa !222
  br label %148

148:                                              ; preds = %146, %139
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %143, i8 0, i64 16, i1 false)
  %149 = load ptr, ptr %140, align 8, !tbaa !216
  %150 = getelementptr inbounds %struct._dep_node, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !226
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 7
  br i1 %154, label %155, label %161, !prof !219

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct._dep_node, ptr %149, i64 0, i32 1, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !229
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 7
  br i1 %160, label %161, label %164

161:                                              ; preds = %155, %148
  %162 = load i32, ptr %136, align 8, !tbaa !189
  %163 = add nsw i32 %162, -1
  store i32 %163, ptr %136, align 8, !tbaa !189
  br label %164

164:                                              ; preds = %161, %155
  %165 = load ptr, ptr %135, align 8, !tbaa !193
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %139, !prof !494

167:                                              ; preds = %164, %133, %130
  %168 = load i32, ptr %16, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 7
  br i1 %170, label %171, label %178, !prof !188

171:                                              ; preds = %167
  %172 = and i32 %168, 67108864
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #29
  br label %175

175:                                              ; preds = %174, %171
  %176 = load i32, ptr %16, align 8
  %177 = and i32 %176, -67108865
  store i32 %177, ptr %16, align 8
  br label %178

178:                                              ; preds = %175, %167
  %179 = load ptr, ptr @h_d_i_d, align 8
  %180 = load ptr, ptr @sched_luids, align 8
  %181 = load i32, ptr %23, align 8, !tbaa !143
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.VEC_int_base, ptr %180, i64 0, i32 2, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !147
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %179, i64 0, i32 2, i64 %185, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !179
  %188 = getelementptr inbounds %struct._deps_list, ptr %187, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !189
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191, !prof !194

191:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %192

192:                                              ; preds = %191, %178
  %193 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %194 = add nsw i32 %193, -1
  store i32 %194, ptr @dl_pool_diff, align 4, !tbaa !147
  %195 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %195, ptr noundef %187) #29
  %196 = load ptr, ptr @h_d_i_d, align 8
  %197 = load ptr, ptr @sched_luids, align 8
  %198 = load i32, ptr %23, align 8, !tbaa !143
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.VEC_int_base, ptr %197, i64 0, i32 2, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !147
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %196, i64 0, i32 2, i64 %202, i32 2
  store ptr null, ptr %203, align 8, !tbaa !179
  %204 = load ptr, ptr @h_d_i_d, align 8
  %205 = load ptr, ptr @sched_luids, align 8
  %206 = load i32, ptr %23, align 8, !tbaa !143
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.VEC_int_base, ptr %205, i64 0, i32 2, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !147
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %204, i64 0, i32 2, i64 %210, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !181
  %213 = getelementptr inbounds %struct._deps_list, ptr %212, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !189
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216, !prof !194

216:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %217

217:                                              ; preds = %216, %192
  %218 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %219 = add nsw i32 %218, -1
  store i32 %219, ptr @dl_pool_diff, align 4, !tbaa !147
  %220 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %220, ptr noundef %212) #29
  %221 = load ptr, ptr @h_d_i_d, align 8
  %222 = load ptr, ptr @sched_luids, align 8
  %223 = load i32, ptr %23, align 8, !tbaa !143
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.VEC_int_base, ptr %222, i64 0, i32 2, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !147
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %221, i64 0, i32 2, i64 %227, i32 3
  store ptr null, ptr %228, align 8, !tbaa !181
  %229 = load ptr, ptr @h_d_i_d, align 8
  %230 = load ptr, ptr @sched_luids, align 8
  %231 = load i32, ptr %23, align 8, !tbaa !143
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.VEC_int_base, ptr %230, i64 0, i32 2, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !147
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %229, i64 0, i32 2, i64 %235, i32 5
  %237 = load ptr, ptr %236, align 8, !tbaa !184
  %238 = getelementptr inbounds %struct._deps_list, ptr %237, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !189
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241, !prof !194

241:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %242

242:                                              ; preds = %241, %217
  %243 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %244 = add nsw i32 %243, -1
  store i32 %244, ptr @dl_pool_diff, align 4, !tbaa !147
  %245 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %245, ptr noundef %237) #29
  %246 = load ptr, ptr @h_d_i_d, align 8
  %247 = load ptr, ptr @sched_luids, align 8
  %248 = load i32, ptr %23, align 8, !tbaa !143
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.VEC_int_base, ptr %247, i64 0, i32 2, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !147
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %246, i64 0, i32 2, i64 %252, i32 5
  store ptr null, ptr %253, align 8, !tbaa !184
  %254 = load ptr, ptr @h_d_i_d, align 8
  %255 = load ptr, ptr @sched_luids, align 8
  %256 = load i32, ptr %23, align 8, !tbaa !143
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.VEC_int_base, ptr %255, i64 0, i32 2, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !147
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %254, i64 0, i32 2, i64 %260, i32 4
  %262 = load ptr, ptr %261, align 8, !tbaa !183
  %263 = getelementptr inbounds %struct._deps_list, ptr %262, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !189
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266, !prof !194

266:                                              ; preds = %242
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %267

267:                                              ; preds = %266, %242
  %268 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %269 = add nsw i32 %268, -1
  store i32 %269, ptr @dl_pool_diff, align 4, !tbaa !147
  %270 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %270, ptr noundef %262) #29
  %271 = load ptr, ptr @h_d_i_d, align 8
  %272 = load ptr, ptr @sched_luids, align 8
  %273 = load i32, ptr %23, align 8, !tbaa !143
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.VEC_int_base, ptr %272, i64 0, i32 2, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !147
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %271, i64 0, i32 2, i64 %277, i32 4
  store ptr null, ptr %278, align 8, !tbaa !183
  %279 = load ptr, ptr @h_d_i_d, align 8
  %280 = load ptr, ptr @sched_luids, align 8
  %281 = load i32, ptr %23, align 8, !tbaa !143
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.VEC_int_base, ptr %280, i64 0, i32 2, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !147
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %279, i64 0, i32 2, i64 %285, i32 6
  %287 = load ptr, ptr %286, align 8, !tbaa !185
  %288 = getelementptr inbounds %struct._deps_list, ptr %287, i64 0, i32 1
  %289 = load i32, ptr %288, align 8, !tbaa !189
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %292, label %291, !prof !194

291:                                              ; preds = %267
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #29
  br label %292

292:                                              ; preds = %267, %291
  %293 = load i32, ptr @dl_pool_diff, align 4, !tbaa !147
  %294 = add nsw i32 %293, -1
  store i32 %294, ptr @dl_pool_diff, align 4, !tbaa !147
  %295 = load ptr, ptr @dl_pool, align 8, !tbaa !132
  tail call void @pool_free(ptr noundef %295, ptr noundef %287) #29
  %296 = load ptr, ptr @h_d_i_d, align 8
  %297 = load ptr, ptr @sched_luids, align 8
  %298 = load i32, ptr %23, align 8, !tbaa !143
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.VEC_int_base, ptr %297, i64 0, i32 2, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !147
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %296, i64 0, i32 2, i64 %302, i32 6
  store ptr null, ptr %303, align 8, !tbaa !185
  br label %304

304:                                              ; preds = %15, %21, %292
  %305 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %306 = load ptr, ptr %305, align 8, !tbaa !143
  %307 = icmp eq ptr %306, %7
  br i1 %307, label %308, label %15, !prof !497, !llvm.loop !498

308:                                              ; preds = %304, %3
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_deps_list(ptr nocapture noundef %0) unnamed_addr #18 !prof !131 !PGOFuncName !499 {
  br label %2

2:                                                ; preds = %30, %1
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5, !prof !500

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._dep_link, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = getelementptr inbounds %struct._dep_link, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !223
  store ptr %9, ptr %7, align 8, !tbaa !132
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !496

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._dep_link, ptr %9, i64 0, i32 2
  store ptr %7, ptr %12, align 8, !tbaa !222
  br label %13

13:                                               ; preds = %11, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %3, align 8, !tbaa !216
  %15 = getelementptr inbounds %struct._dep_node, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !226
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %26, !prof !219

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct._dep_node, ptr %14, i64 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !229
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %30

26:                                               ; preds = %13, %20
  %27 = getelementptr inbounds %struct._deps_list, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !189
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 8, !tbaa !189
  br label %30

30:                                               ; preds = %26, %20
  br i1 %4, label %31, label %2, !prof !500

31:                                               ; preds = %2, %30
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @init_deps(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #11 !prof !501 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !502

5:                                                ; preds = %2
  %6 = tail call i32 @max_reg_num() #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 53, %2 ]
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  store i32 %8, ptr %9, align 8, !tbaa !473
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %14, !prof !503

11:                                               ; preds = %7
  %12 = sext i32 %8 to i64
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 40) #29
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  store ptr %15, ptr %16, align 8, !tbaa !357
  %17 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %18, align 8, !tbaa !345
  %19 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %20 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %20, align 8, !tbaa !345
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 12
  store ptr null, ptr %22, align 8, !tbaa !389
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 0, ptr %23, align 8, !tbaa !457
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false)
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, -2
  store i8 %26, ptr %24, align 4
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @init_deps_reg_last(ptr noundef %0) local_unnamed_addr #11 !prof !504 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !505

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !473
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7, !prof !506

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3503, ptr noundef nonnull @.str.1) #29
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !357
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !506

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3504, ptr noundef nonnull @.str.1) #29
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !473
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 40) #29
  store ptr %17, ptr %9, align 8, !tbaa !357
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @free_deps(ptr noundef %0) local_unnamed_addr #11 !prof !501 {
  %2 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !473
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10, !prof !502

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !357
  %8 = icmp eq ptr %7, null
  br i1 %8, label %121, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3521, ptr noundef nonnull @.str.1) #29
  br label %121

10:                                               ; preds = %1
  store i32 0, ptr %2, align 8, !tbaa !473
  tail call void @free_INSN_LIST_list(ptr noundef %0) #29
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %11) #29
  %12 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %12) #29
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %13) #29
  %14 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %14) #29
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !347
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @bitmap_zero_bits, ptr %16, !prof !507
  %19 = getelementptr inbounds %struct.bitmap_element_def, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !349
  %21 = shl i32 %20, 7
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %18, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !253
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or disjoint i32 %21, %25
  %27 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %28

28:                                               ; preds = %111, %10
  %29 = phi i64 [ %23, %10 ], [ %112, %111 ]
  %30 = phi i32 [ 0, %10 ], [ %85, %111 ]
  %31 = phi i32 [ %26, %10 ], [ %113, %111 ]
  %32 = phi ptr [ %18, %10 ], [ %87, %111 ]
  %33 = icmp eq i64 %29, 0
  br i1 %33, label %48, label %34, !prof !508

34:                                               ; preds = %62, %28
  %35 = phi i64 [ %29, %28 ], [ %67, %62 ]
  %36 = phi i32 [ %30, %28 ], [ %63, %62 ]
  %37 = phi i32 [ %31, %28 ], [ %64, %62 ]
  %38 = phi ptr [ %32, %28 ], [ %55, %62 ]
  %39 = and i64 %35, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %83, !prof !509

41:                                               ; preds = %34, %41
  %42 = phi i32 [ %45, %41 ], [ %37, %34 ]
  %43 = phi i64 [ %44, %41 ], [ %35, %34 ]
  %44 = lshr exact i64 %43, 1
  %45 = add i32 %42, 1
  %46 = and i64 %43, 2
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %41, label %83, !prof !510, !llvm.loop !351

48:                                               ; preds = %28
  %49 = add i32 %31, 63
  %50 = and i32 %49, -64
  %51 = add i32 %30, 1
  br label %52

52:                                               ; preds = %79, %48
  %53 = phi i64 [ %29, %48 ], [ %74, %79 ]
  %54 = phi i32 [ %50, %48 ], [ %82, %79 ]
  %55 = phi ptr [ %32, %48 ], [ %77, %79 ]
  %56 = phi i32 [ %51, %48 ], [ 0, %79 ]
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %73, label %58, !prof !511

58:                                               ; preds = %52
  %59 = add i32 %54, 128
  %60 = shl i32 %56, 6
  %61 = sub i32 %59, %60
  br label %62

62:                                               ; preds = %58, %69
  %63 = phi i32 [ %71, %69 ], [ %56, %58 ]
  %64 = phi i32 [ %70, %69 ], [ %54, %58 ]
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %55, i64 0, i32 3, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !253
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %34, !prof !512

69:                                               ; preds = %62
  %70 = add i32 %64, 64
  %71 = add i32 %63, 1
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %62, !prof !513, !llvm.loop !354

73:                                               ; preds = %69, %52
  %74 = phi i64 [ %53, %52 ], [ %67, %69 ]
  %75 = phi i32 [ %54, %52 ], [ %61, %69 ]
  %76 = phi i32 [ %56, %52 ], [ 2, %69 ]
  %77 = load ptr, ptr %55, align 8, !tbaa !355
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79, !prof !512

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.bitmap_element_def, ptr %77, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !349
  %82 = shl i32 %81, 7
  br label %52, !llvm.loop !356

83:                                               ; preds = %73, %41, %34
  %84 = phi i64 [ %35, %34 ], [ %44, %41 ], [ %74, %73 ]
  %85 = phi i32 [ %36, %34 ], [ %36, %41 ], [ %76, %73 ]
  %86 = phi i32 [ %37, %34 ], [ %45, %41 ], [ %75, %73 ]
  %87 = phi ptr [ %38, %34 ], [ %38, %41 ], [ %77, %73 ]
  %88 = phi i1 [ false, %34 ], [ false, %41 ], [ true, %73 ]
  br i1 %88, label %114, label %89, !prof !508

89:                                               ; preds = %83
  %90 = load ptr, ptr %27, align 8, !tbaa !357
  %91 = zext i32 %86 to i64
  %92 = getelementptr inbounds %struct.deps_reg, ptr %90, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !360
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !514

95:                                               ; preds = %89
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %92) #29
  br label %96

96:                                               ; preds = %95, %89
  %97 = getelementptr inbounds %struct.deps_reg, ptr %90, i64 %91, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !418
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !515

100:                                              ; preds = %96
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %97) #29
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %struct.deps_reg, ptr %90, i64 %91, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !450
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105, !prof !516

105:                                              ; preds = %101
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %102) #29
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.deps_reg, ptr %90, i64 %91, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !415
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110, !prof !517

110:                                              ; preds = %106
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %107) #29
  br label %111

111:                                              ; preds = %110, %106
  %112 = lshr i64 %84, 1
  %113 = add i32 %86, 1
  br label %28, !llvm.loop !518

114:                                              ; preds = %83
  tail call void @bitmap_clear(ptr noundef nonnull %15) #29
  %115 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  tail call void @bitmap_clear(ptr noundef nonnull %115) #29
  %116 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %117 = load ptr, ptr %116, align 8, !tbaa !357
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119, !prof !519

119:                                              ; preds = %114
  tail call void @free(ptr noundef %117)
  br label %120

120:                                              ; preds = %119, %114
  store ptr null, ptr %116, align 8, !tbaa !357
  br label %121

121:                                              ; preds = %9, %5, %120
  ret void
}

declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_from_deps(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #11 !prof !520 {
  %3 = load ptr, ptr %0, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5, !prof !521

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %24
  %8 = phi ptr [ %28, %24 ], [ %3, %5 ]
  %9 = phi i32 [ %14, %24 ], [ 0, %5 ]
  %10 = phi ptr [ %27, %24 ], [ %6, %5 ]
  %11 = phi ptr [ %25, %24 ], [ %0, %5 ]
  br label %12

12:                                               ; preds = %7, %18
  %13 = phi ptr [ %8, %7 ], [ %22, %18 ]
  %14 = phi i32 [ %9, %7 ], [ %21, %18 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %24, !prof !522

18:                                               ; preds = %12
  %19 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %11) #29
  %20 = tail call ptr @remove_free_EXPR_LIST_node(ptr noundef nonnull %10) #29
  %21 = add nsw i32 %14, 1
  %22 = load ptr, ptr %11, align 8, !tbaa !132
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %12, !prof !523, !llvm.loop !524

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %10, align 8, !tbaa !132
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %25, align 8, !tbaa !132
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !prof !523, !llvm.loop !524

30:                                               ; preds = %24, %18, %2
  %31 = phi i32 [ 0, %2 ], [ %21, %18 ], [ %14, %24 ]
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %39, label %35, !prof !525

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !295
  %38 = sub nsw i32 %37, %31
  store i32 %38, ptr %36, align 8, !tbaa !295
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %43, !prof !526

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %45

45:                                               ; preds = %43, %62
  %46 = phi ptr [ %66, %62 ], [ %41, %43 ]
  %47 = phi i32 [ %52, %62 ], [ 0, %43 ]
  %48 = phi ptr [ %65, %62 ], [ %44, %43 ]
  %49 = phi ptr [ %63, %62 ], [ %40, %43 ]
  br label %50

50:                                               ; preds = %45, %56
  %51 = phi ptr [ %46, %45 ], [ %60, %56 ]
  %52 = phi i32 [ %47, %45 ], [ %59, %56 ]
  %53 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !143
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %56, label %62, !prof !527

56:                                               ; preds = %50
  %57 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %49) #29
  %58 = tail call ptr @remove_free_EXPR_LIST_node(ptr noundef nonnull %48) #29
  %59 = add nsw i32 %52, 1
  %60 = load ptr, ptr %49, align 8, !tbaa !132
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %50, !prof !528, !llvm.loop !524

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %48, align 8, !tbaa !132
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %63, align 8, !tbaa !132
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %45, !prof !528, !llvm.loop !524

68:                                               ; preds = %62, %56, %39
  %69 = phi i32 [ 0, %39 ], [ %59, %56 ], [ %52, %62 ]
  %70 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !297
  %72 = sub nsw i32 %71, %69
  store i32 %72, ptr %70, align 4, !tbaa !297
  %73 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !132
  %75 = icmp eq ptr %74, null
  br i1 %75, label %95, label %76, !prof !529

76:                                               ; preds = %68, %91
  %77 = phi ptr [ %93, %91 ], [ %74, %68 ]
  %78 = phi i32 [ %82, %91 ], [ 0, %68 ]
  %79 = phi ptr [ %92, %91 ], [ %73, %68 ]
  br label %80

80:                                               ; preds = %76, %86
  %81 = phi ptr [ %77, %76 ], [ %89, %86 ]
  %82 = phi i32 [ %78, %76 ], [ %88, %86 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !143
  %85 = icmp eq ptr %84, %1
  br i1 %85, label %86, label %91, !prof !530

86:                                               ; preds = %80
  %87 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %79) #29
  %88 = add nsw i32 %82, 1
  %89 = load ptr, ptr %79, align 8, !tbaa !132
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %80, !prof !531, !llvm.loop !532

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !132
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %76, !prof !533, !llvm.loop !532

95:                                               ; preds = %91, %86, %68
  %96 = phi i32 [ 0, %68 ], [ %88, %86 ], [ %82, %91 ]
  %97 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %98 = load i32, ptr %97, align 8, !tbaa !263
  %99 = sub nsw i32 %98, %96
  store i32 %99, ptr %97, align 8, !tbaa !263
  %100 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %101 = load ptr, ptr %100, align 8, !tbaa !347
  %102 = icmp eq ptr %101, null
  %103 = select i1 %102, ptr @bitmap_zero_bits, ptr %101, !prof !525
  %104 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !349
  %106 = shl i32 %105, 7
  %107 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 3
  %108 = load i64, ptr %107, align 8, !tbaa !253
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = or disjoint i32 %106, %110
  %112 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %113

113:                                              ; preds = %282, %95
  %114 = phi i64 [ %108, %95 ], [ %283, %282 ]
  %115 = phi i32 [ 0, %95 ], [ %170, %282 ]
  %116 = phi i32 [ %111, %95 ], [ %284, %282 ]
  %117 = phi ptr [ %103, %95 ], [ %172, %282 ]
  %118 = icmp eq i64 %114, 0
  br i1 %118, label %133, label %119, !prof !534

119:                                              ; preds = %147, %113
  %120 = phi i64 [ %114, %113 ], [ %152, %147 ]
  %121 = phi i32 [ %115, %113 ], [ %148, %147 ]
  %122 = phi i32 [ %116, %113 ], [ %149, %147 ]
  %123 = phi ptr [ %117, %113 ], [ %140, %147 ]
  %124 = and i64 %120, 1
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %168, !prof !535

126:                                              ; preds = %119, %126
  %127 = phi i32 [ %130, %126 ], [ %122, %119 ]
  %128 = phi i64 [ %129, %126 ], [ %120, %119 ]
  %129 = lshr exact i64 %128, 1
  %130 = add i32 %127, 1
  %131 = and i64 %128, 2
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %126, label %168, !prof !536, !llvm.loop !351

133:                                              ; preds = %113
  %134 = add i32 %116, 63
  %135 = and i32 %134, -64
  %136 = add i32 %115, 1
  br label %137

137:                                              ; preds = %164, %133
  %138 = phi i64 [ %114, %133 ], [ %159, %164 ]
  %139 = phi i32 [ %135, %133 ], [ %167, %164 ]
  %140 = phi ptr [ %117, %133 ], [ %162, %164 ]
  %141 = phi i32 [ %136, %133 ], [ 0, %164 ]
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %158, label %143, !prof !537

143:                                              ; preds = %137
  %144 = add i32 %139, 128
  %145 = shl i32 %141, 6
  %146 = sub i32 %144, %145
  br label %147

147:                                              ; preds = %143, %154
  %148 = phi i32 [ %156, %154 ], [ %141, %143 ]
  %149 = phi i32 [ %155, %154 ], [ %139, %143 ]
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds %struct.bitmap_element_def, ptr %140, i64 0, i32 3, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !253
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %119, !prof !538

154:                                              ; preds = %147
  %155 = add i32 %149, 64
  %156 = add i32 %148, 1
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %147, !prof !539, !llvm.loop !354

158:                                              ; preds = %154, %137
  %159 = phi i64 [ %138, %137 ], [ %152, %154 ]
  %160 = phi i32 [ %139, %137 ], [ %146, %154 ]
  %161 = phi i32 [ %141, %137 ], [ 2, %154 ]
  %162 = load ptr, ptr %140, align 8, !tbaa !355
  %163 = icmp eq ptr %162, null
  br i1 %163, label %168, label %164, !prof !538

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.bitmap_element_def, ptr %162, i64 0, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !349
  %167 = shl i32 %166, 7
  br label %137, !llvm.loop !356

168:                                              ; preds = %158, %126, %119
  %169 = phi i64 [ %120, %119 ], [ %129, %126 ], [ %159, %158 ]
  %170 = phi i32 [ %121, %119 ], [ %121, %126 ], [ %161, %158 ]
  %171 = phi i32 [ %122, %119 ], [ %130, %126 ], [ %160, %158 ]
  %172 = phi ptr [ %123, %119 ], [ %123, %126 ], [ %162, %158 ]
  %173 = phi i1 [ false, %119 ], [ false, %126 ], [ true, %158 ]
  br i1 %173, label %285, label %174, !prof !534

174:                                              ; preds = %168
  %175 = load ptr, ptr %112, align 8, !tbaa !357
  %176 = zext i32 %171 to i64
  %177 = getelementptr inbounds %struct.deps_reg, ptr %175, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !360
  %179 = icmp eq ptr %178, null
  br i1 %179, label %199, label %180, !prof !540

180:                                              ; preds = %174
  %181 = load ptr, ptr %177, align 8, !tbaa !132
  %182 = icmp eq ptr %181, null
  br i1 %182, label %199, label %183, !prof !541

183:                                              ; preds = %180, %195
  %184 = phi ptr [ %197, %195 ], [ %181, %180 ]
  %185 = phi ptr [ %196, %195 ], [ %177, %180 ]
  br label %186

186:                                              ; preds = %183, %191
  %187 = phi ptr [ %184, %183 ], [ %193, %191 ]
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !143
  %190 = icmp eq ptr %189, %1
  br i1 %190, label %191, label %195, !prof !542

191:                                              ; preds = %186
  %192 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %185) #29
  %193 = load ptr, ptr %185, align 8, !tbaa !132
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %186, !prof !543, !llvm.loop !532

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !132
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %183, !prof !544, !llvm.loop !532

199:                                              ; preds = %195, %191, %180, %174
  %200 = getelementptr inbounds %struct.deps_reg, ptr %175, i64 %176, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !418
  %202 = icmp eq ptr %201, null
  br i1 %202, label %222, label %203, !prof !545

203:                                              ; preds = %199
  %204 = load ptr, ptr %200, align 8, !tbaa !132
  %205 = icmp eq ptr %204, null
  br i1 %205, label %222, label %206, !prof !541

206:                                              ; preds = %203, %218
  %207 = phi ptr [ %220, %218 ], [ %204, %203 ]
  %208 = phi ptr [ %219, %218 ], [ %200, %203 ]
  br label %209

209:                                              ; preds = %206, %214
  %210 = phi ptr [ %207, %206 ], [ %216, %214 ]
  %211 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !143
  %213 = icmp eq ptr %212, %1
  br i1 %213, label %214, label %218, !prof !546

214:                                              ; preds = %209
  %215 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %208) #29
  %216 = load ptr, ptr %208, align 8, !tbaa !132
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %209, !prof !547, !llvm.loop !532

218:                                              ; preds = %209
  %219 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !132
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %206, !prof !548, !llvm.loop !532

222:                                              ; preds = %218, %214, %203, %199
  %223 = getelementptr inbounds %struct.deps_reg, ptr %175, i64 %176, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !450
  %225 = icmp eq ptr %224, null
  br i1 %225, label %245, label %226, !prof !549

226:                                              ; preds = %222
  %227 = load ptr, ptr %223, align 8, !tbaa !132
  %228 = icmp eq ptr %227, null
  br i1 %228, label %245, label %229

229:                                              ; preds = %226, %241
  %230 = phi ptr [ %243, %241 ], [ %227, %226 ]
  %231 = phi ptr [ %242, %241 ], [ %223, %226 ]
  br label %232

232:                                              ; preds = %229, %237
  %233 = phi ptr [ %230, %229 ], [ %239, %237 ]
  %234 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !143
  %236 = icmp eq ptr %235, %1
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %231) #29
  %239 = load ptr, ptr %231, align 8, !tbaa !132
  %240 = icmp eq ptr %239, null
  br i1 %240, label %245, label %232, !llvm.loop !532

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !132
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %229, !llvm.loop !532

245:                                              ; preds = %241, %237, %226, %222
  %246 = getelementptr inbounds %struct.deps_reg, ptr %175, i64 %176, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !415
  %248 = icmp eq ptr %247, null
  br i1 %248, label %268, label %249, !prof !550

249:                                              ; preds = %245
  %250 = load ptr, ptr %246, align 8, !tbaa !132
  %251 = icmp eq ptr %250, null
  br i1 %251, label %268, label %252, !prof !541

252:                                              ; preds = %249, %264
  %253 = phi ptr [ %266, %264 ], [ %250, %249 ]
  %254 = phi ptr [ %265, %264 ], [ %246, %249 ]
  br label %255

255:                                              ; preds = %252, %260
  %256 = phi ptr [ %253, %252 ], [ %262, %260 ]
  %257 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !143
  %259 = icmp eq ptr %258, %1
  br i1 %259, label %260, label %264, !prof !551

260:                                              ; preds = %255
  %261 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %254) #29
  %262 = load ptr, ptr %254, align 8, !tbaa !132
  %263 = icmp eq ptr %262, null
  br i1 %263, label %268, label %255, !prof !552, !llvm.loop !532

264:                                              ; preds = %255
  %265 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 1
  %266 = load ptr, ptr %265, align 8, !tbaa !132
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %252, !prof !553, !llvm.loop !532

268:                                              ; preds = %264, %260, %249, %245
  %269 = load ptr, ptr %177, align 8, !tbaa !360
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %282, !prof !554

271:                                              ; preds = %268
  %272 = load ptr, ptr %200, align 8, !tbaa !418
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %282, !prof !555

274:                                              ; preds = %271
  %275 = load ptr, ptr %223, align 8, !tbaa !450
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %282, !prof !556

277:                                              ; preds = %274
  %278 = load ptr, ptr %246, align 8, !tbaa !415
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %282, !prof !557

280:                                              ; preds = %277
  %281 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %100, i32 noundef %171) #29
  br label %282

282:                                              ; preds = %280, %277, %274, %271, %268
  %283 = lshr i64 %169, 1
  %284 = add i32 %171, 1
  br label %113, !llvm.loop !558

285:                                              ; preds = %168
  %286 = load i32, ptr %1, align 8
  %287 = and i32 %286, 65535
  %288 = icmp eq i32 %287, 10
  br i1 %288, label %289, label %329, !prof !559

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %291 = load ptr, ptr %290, align 8, !tbaa !132
  %292 = icmp eq ptr %291, null
  br i1 %292, label %309, label %293, !prof !541

293:                                              ; preds = %289, %305
  %294 = phi ptr [ %307, %305 ], [ %291, %289 ]
  %295 = phi ptr [ %306, %305 ], [ %290, %289 ]
  br label %296

296:                                              ; preds = %293, %301
  %297 = phi ptr [ %294, %293 ], [ %303, %301 ]
  %298 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !143
  %300 = icmp eq ptr %299, %1
  br i1 %300, label %301, label %305, !prof !560

301:                                              ; preds = %296
  %302 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %295) #29
  %303 = load ptr, ptr %295, align 8, !tbaa !132
  %304 = icmp eq ptr %303, null
  br i1 %304, label %309, label %296, !prof !561, !llvm.loop !532

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1, i32 0, i32 0, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !132
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %293, !prof !562, !llvm.loop !532

309:                                              ; preds = %305, %301, %289
  %310 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %311 = load ptr, ptr %310, align 8, !tbaa !132
  %312 = icmp eq ptr %311, null
  br i1 %312, label %329, label %313, !prof !541

313:                                              ; preds = %309, %325
  %314 = phi ptr [ %327, %325 ], [ %311, %309 ]
  %315 = phi ptr [ %326, %325 ], [ %310, %309 ]
  br label %316

316:                                              ; preds = %313, %321
  %317 = phi ptr [ %314, %313 ], [ %323, %321 ]
  %318 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !143
  %320 = icmp eq ptr %319, %1
  br i1 %320, label %321, label %325, !prof !560

321:                                              ; preds = %316
  %322 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %315) #29
  %323 = load ptr, ptr %315, align 8, !tbaa !132
  %324 = icmp eq ptr %323, null
  br i1 %324, label %329, label %316, !prof !561, !llvm.loop !532

325:                                              ; preds = %316
  %326 = getelementptr inbounds %struct.rtx_def, ptr %317, i64 0, i32 1, i32 0, i32 0, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !132
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %313, !prof !562, !llvm.loop !532

329:                                              ; preds = %325, %321, %309, %285
  %330 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %331 = load ptr, ptr %330, align 8, !tbaa !132
  %332 = icmp eq ptr %331, null
  br i1 %332, label %349, label %333, !prof !336

333:                                              ; preds = %329, %345
  %334 = phi ptr [ %347, %345 ], [ %331, %329 ]
  %335 = phi ptr [ %346, %345 ], [ %330, %329 ]
  br label %336

336:                                              ; preds = %333, %341
  %337 = phi ptr [ %334, %333 ], [ %343, %341 ]
  %338 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !143
  %340 = icmp eq ptr %339, %1
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %335) #29
  %343 = load ptr, ptr %335, align 8, !tbaa !132
  %344 = icmp eq ptr %343, null
  br i1 %344, label %349, label %336, !prof !336, !llvm.loop !532

345:                                              ; preds = %336
  %346 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !132
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %333, !prof !336, !llvm.loop !532

349:                                              ; preds = %345, %341, %329
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_deps_init(i8 noundef zeroext %0) local_unnamed_addr #11 !prof !563 {
  %2 = load i32, ptr @sched_max_luid, align 4, !tbaa !147
  %3 = load ptr, ptr @cfun, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !564
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !566
  %8 = sdiv i32 %2, %7
  %9 = add nsw i32 %8, 1
  %10 = add nsw i32 %2, 1
  %11 = load ptr, ptr @h_d_i_d, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !568

13:                                               ; preds = %1
  %14 = load i32, ptr %11, align 8, !tbaa !569
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %17 = sub i32 %10, %16
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %58, !prof !571

19:                                               ; preds = %15
  br i1 %12, label %26, label %20, !prof !572

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %11, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !573
  %23 = load i32, ptr %11, align 8, !tbaa !569
  %24 = sub i32 %22, %23
  %25 = icmp ult i32 %24, %17
  br i1 %25, label %26, label %58, !prof !574

26:                                               ; preds = %19, %20
  %27 = mul nsw i32 %2, 3
  %28 = sdiv i32 %27, 2
  br i1 %12, label %31, label %29, !prof !572

29:                                               ; preds = %26
  %30 = load i32, ptr %11, align 8, !tbaa !569
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  br i1 %12, label %35, label %33, !prof !572

33:                                               ; preds = %31
  %34 = load i32, ptr %11, align 8, !tbaa !569
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %34, %33 ], [ 0, %31 ]
  %37 = sub nsw i32 %28, %36
  br i1 %12, label %44, label %38, !prof !572

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %11, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !573
  %41 = load i32, ptr %11, align 8, !tbaa !569
  %42 = sub i32 %40, %41
  %43 = icmp uge i32 %42, %37
  br label %46

44:                                               ; preds = %35
  %45 = icmp eq i32 %36, %28
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i1 [ %43, %38 ], [ %45, %44 ]
  br i1 %47, label %50, label %48, !prof !575

48:                                               ; preds = %46
  %49 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %11, i32 noundef %37, i64 noundef 8, i64 noundef 56) #29
  store ptr %49, ptr @h_d_i_d, align 8, !tbaa !132
  br label %50

50:                                               ; preds = %48, %46
  %51 = load ptr, ptr @h_d_i_d, align 8, !tbaa !132, !nonnull !576, !noundef !576
  store i32 %28, ptr %51, align 8, !tbaa !569
  %52 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %51, i64 0, i32 2
  %53 = sext i32 %32 to i64
  %54 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 %53
  %55 = sub nsw i32 %28, %32
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %54, i8 0, i64 %57, i1 false), !prof !577
  br label %58

58:                                               ; preds = %15, %20, %50
  %59 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %60 = getelementptr inbounds %struct.common_sched_info_def, ptr %59, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !173
  %62 = icmp ne i32 %61, 4
  %63 = icmp ne i8 %0, 0
  %64 = and i1 %63, %62
  %65 = icmp sgt i32 %8, 499
  %66 = select i1 %64, i1 %65, i1 false, !prof !578
  br i1 %66, label %67, label %69, !prof !578

67:                                               ; preds = %58
  store i32 0, ptr @cache_size, align 4, !tbaa !147
  %68 = load i32, ptr @sched_max_luid, align 4, !tbaa !147
  tail call void @extend_dependency_caches(i32 noundef %68, i8 noundef zeroext 1)
  br label %69

69:                                               ; preds = %67, %58
  %70 = icmp eq i8 %0, 0
  br i1 %70, label %77, label %71, !prof !579

71:                                               ; preds = %69
  %72 = sext i32 %9 to i64
  %73 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 16, i64 noundef %72) #29
  store ptr %73, ptr @dl_pool, align 8, !tbaa !132
  %74 = mul nsw i32 %9, 5
  %75 = sext i32 %74 to i64
  %76 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 72, i64 noundef %75) #29
  store ptr %76, ptr @dn_pool, align 8, !tbaa !132
  br label %77

77:                                               ; preds = %71, %69
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @extend_dependency_caches(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !131 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr @true_dependency_cache, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %55

7:                                                ; preds = %2
  %8 = load i32, ptr @cache_size, align 4, !tbaa !147
  %9 = add nsw i32 %8, %0
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 5
  %12 = tail call ptr @xrealloc(ptr noundef %4, i64 noundef %11) #29
  store ptr %12, ptr @true_dependency_cache, align 8, !tbaa !132
  %13 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %14 = tail call ptr @xrealloc(ptr noundef %13, i64 noundef %11) #29
  store ptr %14, ptr @output_dependency_cache, align 8, !tbaa !132
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %16 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %11) #29
  store ptr %16, ptr @anti_dependency_cache, align 8, !tbaa !132
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !157
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %24 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %11) #29
  store ptr %24, ptr @spec_dependency_cache, align 8, !tbaa !132
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, ptr @cache_size, align 4, !tbaa !147
  %27 = icmp slt i32 %26, %9
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %30 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %32 = load ptr, ptr @spec_dependency_cache, align 8
  %33 = sext i32 %26 to i64
  %34 = sext i32 %9 to i64
  br label %35

35:                                               ; preds = %28, %51
  %36 = phi i64 [ %33, %28 ], [ %52, %51 ]
  %37 = getelementptr inbounds %struct.bitmap_head_def, ptr %29, i64 %36
  %38 = getelementptr inbounds %struct.bitmap_head_def, ptr %29, i64 %36, i32 3
  store ptr null, ptr %38, align 8, !tbaa !345
  %39 = getelementptr inbounds %struct.bitmap_head_def, ptr %30, i64 %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.bitmap_head_def, ptr %30, i64 %36, i32 3
  store ptr null, ptr %40, align 8, !tbaa !345
  %41 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %36, i32 3
  store ptr null, ptr %42, align 8, !tbaa !345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %44 = getelementptr inbounds %struct.haifa_sched_info, ptr %43, i64 0, i32 17
  %45 = load i32, ptr %44, align 8, !tbaa !157
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.bitmap_head_def, ptr %32, i64 %36
  %50 = getelementptr inbounds %struct.bitmap_head_def, ptr %32, i64 %36, i32 3
  store ptr null, ptr %50, align 8, !tbaa !345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  br label %51

51:                                               ; preds = %35, %48
  %52 = add nsw i64 %36, 1
  %53 = icmp eq i64 %52, %34
  br i1 %53, label %54, label %35, !llvm.loop !580

54:                                               ; preds = %51, %25
  store i32 %9, ptr @cache_size, align 4, !tbaa !147
  br label %55

55:                                               ; preds = %2, %54
  ret void
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @sched_deps_finish() local_unnamed_addr #20 !prof !581 {
  %1 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @dl_pool_diff, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !582
  br i1 %5, label %6, label %7, !prof !582

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3691, ptr noundef nonnull @.str.1) #29
  br label %7

7:                                                ; preds = %0, %6
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dn_pool) #29
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dl_pool) #29
  %8 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @dl_pool, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false, !prof !583
  br i1 %12, label %14, label %13, !prof !583

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3694, ptr noundef nonnull @.str.1) #29
  br label %14

14:                                               ; preds = %7, %13
  %15 = load ptr, ptr @h_d_i_d, align 8, !tbaa !132
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !582

17:                                               ; preds = %14
  tail call void @free(ptr noundef %15)
  br label %18

18:                                               ; preds = %14, %17
  store ptr null, ptr @h_d_i_d, align 8, !tbaa !132
  store i32 0, ptr @cache_size, align 4, !tbaa !147
  %19 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21, !prof !583

21:                                               ; preds = %18
  %22 = load i32, ptr @cache_size, align 4, !tbaa !147
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21, %40
  %25 = phi i64 [ %41, %40 ], [ 0, %21 ]
  %26 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %27 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %25
  tail call void @bitmap_clear(ptr noundef %27) #29
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %25
  tail call void @bitmap_clear(ptr noundef %29) #29
  %30 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.bitmap_head_def, ptr %30, i64 %25
  tail call void @bitmap_clear(ptr noundef %31) #29
  %32 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %33 = getelementptr inbounds %struct.sched_deps_info_def, ptr %32, i64 0, i32 12
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %39 = getelementptr inbounds %struct.bitmap_head_def, ptr %38, i64 %25
  tail call void @bitmap_clear(ptr noundef %39) #29
  br label %40

40:                                               ; preds = %24, %37
  %41 = add nuw nsw i64 %25, 1
  %42 = load i32, ptr @cache_size, align 4, !tbaa !147
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %24, label %45, !llvm.loop !584

45:                                               ; preds = %40, %21
  %46 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  tail call void @free(ptr noundef %46)
  store ptr null, ptr @true_dependency_cache, align 8, !tbaa !132
  %47 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  tail call void @free(ptr noundef %47)
  store ptr null, ptr @output_dependency_cache, align 8, !tbaa !132
  %48 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  tail call void @free(ptr noundef %48)
  store ptr null, ptr @anti_dependency_cache, align 8, !tbaa !132
  %49 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %50 = getelementptr inbounds %struct.sched_deps_info_def, ptr %49, i64 0, i32 12
  %51 = load i8, ptr %50, align 8
  %52 = and i8 %51, 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  tail call void @free(ptr noundef %55)
  store ptr null, ptr @spec_dependency_cache, align 8, !tbaa !132
  br label %56

56:                                               ; preds = %45, %54, %18
  ret void
}

declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @init_deps_global() local_unnamed_addr #11 !prof !585 {
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !253
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #29
  store ptr %1, ptr @reg_pending_sets, align 8, !tbaa !132
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #29
  store ptr %2, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #29
  store ptr %3, ptr @reg_pending_uses, align 8, !tbaa !132
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !147
  %4 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.common_sched_info_def, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !173
  %7 = icmp ne i32 %6, 4
  %8 = load i32, ptr @sched_emulate_haifa_p, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9, !prof !586
  br i1 %10, label %11, label %20, !prof !587

11:                                               ; preds = %0
  %12 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %13 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 1
  store ptr @haifa_start_insn, ptr %13, align 8, !tbaa !256
  %14 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 2
  store ptr @haifa_finish_insn, ptr %14, align 8, !tbaa !308
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 7
  store ptr @haifa_note_reg_set, ptr %15, align 8, !tbaa !588
  %16 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 8
  store ptr @haifa_note_reg_clobber, ptr %16, align 8, !tbaa !589
  %17 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 9
  store ptr @haifa_note_reg_use, ptr %17, align 8, !tbaa !590
  %18 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 10
  store ptr @haifa_note_mem_dep, ptr %18, align 8, !tbaa !591
  %19 = getelementptr inbounds %struct.sched_deps_info_def, ptr %12, i64 0, i32 11
  store ptr @haifa_note_dep, ptr %19, align 8, !tbaa !282
  br label %20

20:                                               ; preds = %0, %11
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @haifa_start_insn(ptr noundef %0) #11 !prof !186 !PGOFuncName !592 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @cur_insn, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4, !prof !188
  br i1 %5, label %6, label %7, !prof !188

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @.str.1) #29
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr @cur_insn, align 8, !tbaa !132
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @haifa_finish_insn() #21 !prof !186 !PGOFuncName !593 {
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @haifa_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #20 !prof !594 !PGOFuncName !595 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._sd_iterator, align 8
  %8 = alloca %struct._dep, align 8
  %9 = and i32 %3, 16777215
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !596

11:                                               ; preds = %4
  %12 = and i32 %3, 63
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1659, ptr noundef nonnull @.str.1) #29
  br label %15

15:                                               ; preds = %4, %14, %11
  %16 = phi ptr [ %1, %11 ], [ %1, %14 ], [ null, %4 ]
  %17 = phi ptr [ %0, %11 ], [ %0, %14 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #29
  %18 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %19 = and i32 %3, 16777216
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28, !prof !597

21:                                               ; preds = %15
  %22 = and i32 %3, 33554432
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !598

24:                                               ; preds = %21
  %25 = and i32 %3, 67108864
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !599

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1726, ptr noundef nonnull @.str.1) #29
  br label %28

28:                                               ; preds = %15, %21, %24, %27
  %29 = phi i32 [ 0, %15 ], [ 11, %21 ], [ 12, %24 ], [ 12, %27 ]
  %30 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.haifa_sched_info, ptr %30, i64 0, i32 17
  %32 = load i32, ptr %31, align 8, !tbaa !157
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 -1, i32 %3, !prof !596
  store ptr %2, ptr %8, align 8, !tbaa !151
  %36 = getelementptr inbounds %struct._dep, ptr %8, i64 0, i32 1
  store ptr %18, ptr %36, align 8, !tbaa !153
  %37 = getelementptr inbounds %struct._dep, ptr %8, i64 0, i32 2
  store i32 %29, ptr %37, align 8, !tbaa !154
  %38 = getelementptr inbounds %struct._dep, ptr %8, i64 0, i32 3
  store i32 %35, ptr %38, align 4, !tbaa !155
  %39 = load i32, ptr %18, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %48, !prof !600

43:                                               ; preds = %28
  %44 = load i32, ptr %2, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %49, label %48, !prof !600

48:                                               ; preds = %43, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 849, ptr noundef nonnull @.str.1) #29
  br label %49

49:                                               ; preds = %48, %43
  %50 = icmp eq ptr %18, %2
  br i1 %50, label %51, label %67, !prof !601

51:                                               ; preds = %49
  %52 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %53 = getelementptr inbounds %struct.sched_deps_info_def, ptr %52, i64 0, i32 12
  %54 = load i8, ptr %53, align 8
  %55 = and i8 %54, 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %511, label %57, !prof !602

57:                                               ; preds = %51
  %58 = load ptr, ptr @h_d_i_d, align 8
  %59 = load ptr, ptr @sched_luids, align 8
  %60 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !143
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_int_base, ptr %59, i64 0, i32 2, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !147
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %58, i64 0, i32 2, i64 %65, i32 1
  store i32 1, ptr %66, align 4, !tbaa !171
  br label %511

67:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7)
  %68 = load i32, ptr %2, align 8
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -7
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %77, !prof !196

72:                                               ; preds = %67
  %73 = load i32, ptr %18, align 8
  %74 = and i32 %73, 65535
  %75 = add nsw i32 %74, -11
  %76 = icmp ult i32 %75, -4
  br i1 %76, label %77, label %78, !prof !199

77:                                               ; preds = %72, %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1125, ptr noundef nonnull @.str.1) #29
  br label %78

78:                                               ; preds = %77, %72
  %79 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %80 = icmp eq ptr %79, null
  br i1 %80, label %170, label %81, !prof !196

81:                                               ; preds = %78
  %82 = load ptr, ptr @sched_luids, align 8
  %83 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !143
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.VEC_int_base, ptr %82, i64 0, i32 2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !147
  %88 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !143
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.VEC_int_base, ptr %82, i64 0, i32 2, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !147
  %93 = load ptr, ptr @output_dependency_cache, align 8
  %94 = icmp ne ptr %93, null
  %95 = load ptr, ptr @anti_dependency_cache, align 8
  %96 = icmp ne ptr %95, null
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %99, label %98

98:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #29
  br label %99

99:                                               ; preds = %98, %81
  %100 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %101 = getelementptr inbounds %struct.haifa_sched_info, ptr %100, i64 0, i32 17
  %102 = load i32, ptr %101, align 8, !tbaa !157
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  %105 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %106 = sext i32 %92 to i64
  %107 = getelementptr inbounds %struct.bitmap_head_def, ptr %105, i64 %106
  %108 = tail call i32 @bitmap_bit_p(ptr noundef %107, i32 noundef %87) #29
  %109 = icmp eq i32 %108, 0
  br i1 %104, label %110, label %127

110:                                              ; preds = %99
  br i1 %109, label %111, label %121

111:                                              ; preds = %110
  %112 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %113 = getelementptr inbounds %struct.bitmap_head_def, ptr %112, i64 %106
  %114 = tail call i32 @bitmap_bit_p(ptr noundef %113, i32 noundef %87) #29
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %118 = getelementptr inbounds %struct.bitmap_head_def, ptr %117, i64 %106
  %119 = tail call i32 @bitmap_bit_p(ptr noundef %118, i32 noundef %87) #29
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116, %111, %110
  %122 = phi i32 [ 0, %110 ], [ 11, %111 ], [ 12, %116 ]
  %123 = icmp ult i32 %29, %122
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ 3, %116 ], [ 1, %121 ]
  %126 = phi i1 [ false, %116 ], [ %123, %121 ]
  br i1 %126, label %165, label %166

127:                                              ; preds = %99
  %128 = select i1 %109, i32 0, i32 16777216
  %129 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %130 = getelementptr inbounds %struct.bitmap_head_def, ptr %129, i64 %106
  %131 = tail call i32 @bitmap_bit_p(ptr noundef %130, i32 noundef %87) #29
  %132 = icmp eq i32 %131, 0
  %133 = or disjoint i32 %128, 33554432
  %134 = select i1 %132, i32 %128, i32 %133
  %135 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %136 = getelementptr inbounds %struct.bitmap_head_def, ptr %135, i64 %106
  %137 = tail call i32 @bitmap_bit_p(ptr noundef %136, i32 noundef %87) #29
  %138 = icmp eq i32 %137, 0
  %139 = or disjoint i32 %134, 67108864
  %140 = select i1 %138, i32 %134, i32 %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %127
  %143 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %144 = getelementptr inbounds %struct.haifa_sched_info, ptr %143, i64 0, i32 17
  %145 = load i32, ptr %144, align 8, !tbaa !157
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %142
  %149 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %150 = getelementptr inbounds %struct.bitmap_head_def, ptr %149, i64 %106
  %151 = tail call i32 @bitmap_bit_p(ptr noundef %150, i32 noundef %87) #29
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148, %142
  %154 = and i32 %35, 117440512
  %155 = or i32 %140, %154
  %156 = icmp eq i32 %155, %140
  br i1 %156, label %162, label %161

157:                                              ; preds = %148
  %158 = and i32 %140, 33554432
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.1) #29
  br label %161

161:                                              ; preds = %160, %157, %153
  br label %162

162:                                              ; preds = %161, %153, %127
  %163 = phi i32 [ undef, %161 ], [ 3, %127 ], [ 1, %153 ]
  %164 = phi i1 [ true, %161 ], [ false, %127 ], [ false, %153 ]
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %124
  br label %166

166:                                              ; preds = %165, %162, %124
  %167 = phi i32 [ 2, %165 ], [ %125, %124 ], [ %163, %162 ]
  switch i32 %167, label %169 [
    i32 1, label %510
    i32 2, label %170
    i32 3, label %168
  ]

168:                                              ; preds = %166
  br label %170

169:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #29
  br label %170

170:                                              ; preds = %169, %168, %166, %78
  %171 = phi i1 [ false, %169 ], [ true, %168 ], [ false, %78 ], [ false, %166 ]
  %172 = phi i1 [ false, %169 ], [ false, %168 ], [ false, %78 ], [ true, %166 ]
  %173 = phi i1 [ true, %169 ], [ true, %168 ], [ true, %78 ], [ false, %166 ]
  br i1 %171, label %352, label %174, !prof !199

174:                                              ; preds = %170
  %175 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %176 = icmp eq ptr %175, null
  %177 = or i1 %172, %176
  br i1 %177, label %179, label %178, !prof !196

178:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #29
  br label %179

179:                                              ; preds = %178, %174
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %180 = load ptr, ptr @h_d_i_d, align 8
  %181 = load ptr, ptr @sched_luids, align 8
  %182 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  br label %193

183:                                              ; preds = %226
  %184 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %185 = load i32, ptr %184, align 8, !tbaa !143
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.VEC_int_base, ptr %181, i64 0, i32 2, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !147
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %180, i64 0, i32 2, i64 %189, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !183
  %192 = icmp eq ptr %191, null
  br i1 %192, label %232, label %229, !prof !199

193:                                              ; preds = %226, %179
  %194 = phi i32 [ 0, %179 ], [ %227, %226 ]
  %195 = phi i32 [ 3, %179 ], [ %219, %226 ]
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %207, label %198, !prof !178

198:                                              ; preds = %193
  %199 = load i32, ptr %182, align 8, !tbaa !143
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.VEC_int_base, ptr %181, i64 0, i32 2, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !147
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %180, i64 0, i32 2, i64 %203, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !179
  %206 = and i32 %195, -2
  br label %218

207:                                              ; preds = %193
  %208 = and i32 %195, 2
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %218, label %210, !prof !180

210:                                              ; preds = %207
  %211 = load i32, ptr %182, align 8, !tbaa !143
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.VEC_int_base, ptr %181, i64 0, i32 2, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !147
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %180, i64 0, i32 2, i64 %215, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !181
  br label %218

218:                                              ; preds = %210, %207, %198
  %219 = phi i32 [ 0, %210 ], [ %206, %198 ], [ 0, %207 ]
  %220 = phi ptr [ %217, %210 ], [ %205, %198 ], [ null, %207 ]
  %221 = icmp eq ptr %220, null
  br i1 %221, label %226, label %222, !prof !197

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct._deps_list, ptr %220, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !189
  %225 = add nsw i32 %224, %194
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i32 [ %225, %222 ], [ %194, %218 ]
  %228 = icmp eq i32 %219, 0
  br i1 %228, label %183, label %193, !prof !198, !llvm.loop !192

229:                                              ; preds = %183
  %230 = getelementptr inbounds %struct._deps_list, ptr %191, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !189
  br label %232

232:                                              ; preds = %229, %183
  %233 = phi i32 [ %231, %229 ], [ 0, %183 ]
  %234 = icmp slt i32 %227, %233
  %235 = getelementptr inbounds i8, ptr %5, i64 8
  %236 = getelementptr inbounds i8, ptr %5, i64 16
  %237 = getelementptr inbounds i8, ptr %5, i64 24
  br i1 %234, label %238, label %251, !prof !200

238:                                              ; preds = %232
  store i32 3, ptr %5, align 8, !tbaa.struct !201
  store ptr %18, ptr %235, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %236, align 8, !tbaa.struct !203
  store i8 0, ptr %237, align 8, !tbaa.struct !204
  %239 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %267, label %241, !prof !205

241:                                              ; preds = %238, %245
  %242 = load ptr, ptr %6, align 8, !tbaa !132
  %243 = load ptr, ptr %242, align 8, !tbaa !151
  %244 = icmp eq ptr %243, %2
  br i1 %244, label %265, label %245, !prof !206

245:                                              ; preds = %241
  %246 = load ptr, ptr %236, align 8, !tbaa !207
  %247 = load ptr, ptr %246, align 8, !tbaa !132
  %248 = getelementptr inbounds %struct._dep_link, ptr %247, i64 0, i32 1
  store ptr %248, ptr %236, align 8, !tbaa !207
  %249 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %267, label %241, !prof !209, !llvm.loop !210

251:                                              ; preds = %232
  store i32 4, ptr %5, align 8, !tbaa.struct !201
  store ptr %2, ptr %235, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %236, align 8, !tbaa.struct !203
  store i8 0, ptr %237, align 8, !tbaa.struct !204
  %252 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %267, label %254, !prof !211

254:                                              ; preds = %251, %259
  %255 = load ptr, ptr %6, align 8, !tbaa !132
  %256 = getelementptr inbounds %struct._dep, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !153
  %258 = icmp eq ptr %257, %18
  br i1 %258, label %265, label %259, !prof !212

259:                                              ; preds = %254
  %260 = load ptr, ptr %236, align 8, !tbaa !207
  %261 = load ptr, ptr %260, align 8, !tbaa !132
  %262 = getelementptr inbounds %struct._dep_link, ptr %261, i64 0, i32 1
  store ptr %262, ptr %236, align 8, !tbaa !207
  %263 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %267, label %254, !prof !213, !llvm.loop !214

265:                                              ; preds = %254, %241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !201
  %266 = load ptr, ptr %6, align 8, !tbaa !132
  br label %267

267:                                              ; preds = %259, %245, %265, %251, %238
  %268 = phi ptr [ %266, %265 ], [ null, %238 ], [ null, %251 ], [ null, %245 ], [ null, %259 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  %269 = icmp eq ptr %268, null
  br i1 %269, label %349, label %270, !prof !233

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct._dep, ptr %268, i64 0, i32 2
  %272 = load i32, ptr %271, align 8, !tbaa !154
  %273 = icmp slt i32 %29, %272
  br i1 %273, label %274, label %275, !prof !234

274:                                              ; preds = %270
  store i32 %29, ptr %271, align 8, !tbaa !154
  br label %275

275:                                              ; preds = %274, %270
  %276 = phi i32 [ 2, %274 ], [ 1, %270 ]
  %277 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %278 = getelementptr inbounds %struct.haifa_sched_info, ptr %277, i64 0, i32 17
  %279 = load i32, ptr %278, align 8, !tbaa !157
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %310, label %282, !prof !235

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct._dep, ptr %268, i64 0, i32 3
  %284 = load i32, ptr %283, align 4, !tbaa !155
  %285 = or i32 %284, %35
  %286 = and i32 %285, 16777215
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %306, label %288

288:                                              ; preds = %282
  %289 = and i32 %35, 16777215
  %290 = icmp eq i32 %289, 0
  %291 = and i32 %284, 16777215
  %292 = icmp eq i32 %291, 0
  %293 = or i1 %290, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %288
  %295 = and i32 %285, -16777216
  br i1 %292, label %306, label %296

296:                                              ; preds = %294
  tail call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %7)
  br label %306

297:                                              ; preds = %288
  %298 = icmp eq ptr %16, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %297
  %300 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %16, ptr noundef %17), !range !236
  %301 = and i32 %35, -64
  %302 = or disjoint i32 %300, %301
  br label %303

303:                                              ; preds = %299, %297
  %304 = phi i32 [ %302, %299 ], [ %35, %297 ]
  %305 = tail call fastcc i32 @ds_merge_1(i32 noundef %284, i32 noundef %304, i8 noundef zeroext 0)
  br label %306

306:                                              ; preds = %303, %296, %294, %282
  %307 = phi i32 [ %305, %303 ], [ %295, %296 ], [ %295, %294 ], [ %285, %282 ]
  %308 = icmp eq i32 %284, %307
  br i1 %308, label %310, label %309

309:                                              ; preds = %306
  store i32 %307, ptr %283, align 4, !tbaa !155
  br label %310

310:                                              ; preds = %309, %306, %275
  %311 = phi i32 [ %276, %275 ], [ 2, %309 ], [ %276, %306 ]
  %312 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %313 = icmp ne ptr %312, null
  %314 = icmp eq i32 %311, 2
  %315 = and i1 %314, %313
  br i1 %315, label %316, label %351, !prof !215

316:                                              ; preds = %310
  %317 = load ptr, ptr @sched_luids, align 8
  %318 = load ptr, ptr %268, align 8, !tbaa !151
  %319 = getelementptr inbounds %struct.rtx_def, ptr %318, i64 0, i32 1
  %320 = load i32, ptr %319, align 8, !tbaa !143
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds %struct.VEC_int_base, ptr %317, i64 0, i32 2, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !147
  %324 = getelementptr inbounds %struct._dep, ptr %268, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !153
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %327 = load i32, ptr %326, align 8, !tbaa !143
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.VEC_int_base, ptr %317, i64 0, i32 2, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !147
  %331 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %332 = getelementptr inbounds %struct.haifa_sched_info, ptr %331, i64 0, i32 17
  %333 = load i32, ptr %332, align 8, !tbaa !157
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %348

336:                                              ; preds = %316
  switch i32 %272, label %347 [
    i32 11, label %337
    i32 12, label %342
  ]

337:                                              ; preds = %336
  %338 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %339 = sext i32 %330 to i64
  %340 = getelementptr inbounds %struct.bitmap_head_def, ptr %338, i64 %339
  %341 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %340, i32 noundef %323) #29
  br label %348

342:                                              ; preds = %336
  %343 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %344 = sext i32 %330 to i64
  %345 = getelementptr inbounds %struct.bitmap_head_def, ptr %343, i64 %344
  %346 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %345, i32 noundef %323) #29
  br label %348

347:                                              ; preds = %336
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #29
  br label %348

348:                                              ; preds = %347, %342, %337, %316
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %268)
  br label %351

349:                                              ; preds = %267
  br i1 %173, label %351, label %350, !prof !218

350:                                              ; preds = %349
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.1) #29
  br label %351

351:                                              ; preds = %350, %349, %348, %310
  br i1 %269, label %352, label %510, !prof !233

352:                                              ; preds = %351, %170
  %353 = icmp eq ptr %16, null
  br i1 %353, label %365, label %354, !prof !218

354:                                              ; preds = %352
  %355 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %356 = getelementptr inbounds %struct.sched_deps_info_def, ptr %355, i64 0, i32 12
  %357 = load i8, ptr %356, align 8
  %358 = and i8 %357, 4
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1181, ptr noundef nonnull @.str.1) #29
  br label %361

361:                                              ; preds = %360, %354
  %362 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %16, ptr noundef %17), !range !236
  %363 = and i32 %35, -64
  %364 = or disjoint i32 %362, %363
  store i32 %364, ptr %38, align 4, !tbaa !155
  br label %365

365:                                              ; preds = %361, %352
  %366 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  %367 = tail call ptr @pool_alloc(ptr noundef %366) #29
  %368 = getelementptr inbounds %struct._dep_node, ptr %367, i64 0, i32 2
  store ptr %367, ptr %367, align 8, !tbaa !216
  %369 = getelementptr inbounds %struct._dep_link, ptr %367, i64 0, i32 1
  %370 = getelementptr inbounds %struct._dep_link, ptr %367, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %369, i8 0, i64 16, i1 false)
  store ptr %367, ptr %368, align 8, !tbaa !216
  %371 = getelementptr inbounds %struct._dep_node, ptr %367, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %371, i8 0, i64 16, i1 false)
  %372 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr @dn_pool_diff, align 4, !tbaa !147
  %374 = load i32, ptr %18, align 8
  %375 = and i32 %374, 65535
  %376 = add nsw i32 %375, -7
  %377 = icmp ult i32 %376, 4
  br i1 %377, label %378, label %383, !prof !218

378:                                              ; preds = %365
  %379 = load i32, ptr %2, align 8
  %380 = and i32 %379, 65535
  %381 = add nsw i32 %380, -11
  %382 = icmp ult i32 %381, -4
  br i1 %382, label %383, label %384, !prof !219

383:                                              ; preds = %378, %365
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #29
  br label %384

384:                                              ; preds = %383, %378
  %385 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %386 = getelementptr inbounds %struct.haifa_sched_info, ptr %385, i64 0, i32 17
  %387 = load i32, ptr %386, align 8, !tbaa !157
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %396, label %390, !prof !218

390:                                              ; preds = %384
  %391 = load i32, ptr %38, align 4, !tbaa !155
  %392 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %18, i32 noundef %391), !range !220
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %390
  %395 = and i32 %391, -16777216
  store i32 %395, ptr %38, align 4, !tbaa !155
  br label %396

396:                                              ; preds = %394, %390, %384
  %397 = getelementptr inbounds %struct._dep_node, ptr %367, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %397, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %398 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %399 = getelementptr inbounds %struct.haifa_sched_info, ptr %398, i64 0, i32 17
  %400 = load i32, ptr %399, align 8, !tbaa !157
  %401 = and i32 %400, 2
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %417, label %403, !prof !221

403:                                              ; preds = %396
  %404 = load i32, ptr %38, align 4, !tbaa !155
  %405 = and i32 %404, 16777215
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %417, label %407

407:                                              ; preds = %403
  %408 = load ptr, ptr @h_d_i_d, align 8
  %409 = load ptr, ptr @sched_luids, align 8
  %410 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %411 = load i32, ptr %410, align 8, !tbaa !143
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.VEC_int_base, ptr %409, i64 0, i32 2, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !147
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %408, i64 0, i32 2, i64 %415, i32 3
  br label %427

417:                                              ; preds = %403, %396
  %418 = load ptr, ptr @h_d_i_d, align 8
  %419 = load ptr, ptr @sched_luids, align 8
  %420 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %421 = load i32, ptr %420, align 8, !tbaa !143
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds %struct.VEC_int_base, ptr %419, i64 0, i32 2, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !147
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %418, i64 0, i32 2, i64 %425, i32 2
  br label %427

427:                                              ; preds = %417, %407
  %428 = phi ptr [ %426, %417 ], [ %416, %407 ]
  %429 = load ptr, ptr @h_d_i_d, align 8
  %430 = load ptr, ptr @sched_luids, align 8
  %431 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !143
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds %struct.VEC_int_base, ptr %430, i64 0, i32 2, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !147
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %429, i64 0, i32 2, i64 %436, i32 4
  %438 = load ptr, ptr %428, align 8, !tbaa !132
  %439 = load ptr, ptr %437, align 8, !tbaa !132
  %440 = load ptr, ptr %438, align 8, !tbaa !132
  %441 = load ptr, ptr %370, align 8, !tbaa !222
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %446, !prof !221

443:                                              ; preds = %427
  %444 = load ptr, ptr %369, align 8, !tbaa !223
  %445 = icmp eq ptr %444, null
  br i1 %445, label %447, label %446, !prof !221

446:                                              ; preds = %443, %427
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %447

447:                                              ; preds = %446, %443
  store ptr %438, ptr %370, align 8, !tbaa !222
  store ptr %440, ptr %369, align 8, !tbaa !223
  %448 = icmp eq ptr %440, null
  br i1 %448, label %455, label %449, !prof !224

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct._dep_link, ptr %440, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !222
  %452 = icmp eq ptr %451, %438
  br i1 %452, label %454, label %453, !prof !225

453:                                              ; preds = %449
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %454

454:                                              ; preds = %453, %449
  store ptr %369, ptr %450, align 8, !tbaa !222
  br label %455

455:                                              ; preds = %454, %447
  store ptr %367, ptr %438, align 8, !tbaa !132
  %456 = load ptr, ptr %367, align 8, !tbaa !216
  %457 = getelementptr inbounds %struct._dep_node, ptr %456, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !226
  %459 = load i32, ptr %458, align 8
  %460 = and i32 %459, 65535
  %461 = icmp eq i32 %460, 7
  br i1 %461, label %462, label %468, !prof !228

462:                                              ; preds = %455
  %463 = getelementptr inbounds %struct._dep_node, ptr %456, i64 0, i32 1, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !229
  %465 = load i32, ptr %464, align 8
  %466 = and i32 %465, 65535
  %467 = icmp eq i32 %466, 7
  br i1 %467, label %468, label %472, !prof !221

468:                                              ; preds = %462, %455
  %469 = getelementptr inbounds %struct._deps_list, ptr %438, i64 0, i32 1
  %470 = load i32, ptr %469, align 8, !tbaa !189
  %471 = add nsw i32 %470, 1
  store i32 %471, ptr %469, align 8, !tbaa !189
  br label %472

472:                                              ; preds = %468, %462
  %473 = load ptr, ptr %439, align 8, !tbaa !132
  %474 = getelementptr inbounds %struct._dep_node, ptr %367, i64 0, i32 2, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !222
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %480, !prof !221

477:                                              ; preds = %472
  %478 = load ptr, ptr %371, align 8, !tbaa !223
  %479 = icmp eq ptr %478, null
  br i1 %479, label %481, label %480, !prof !221

480:                                              ; preds = %477, %472
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %481

481:                                              ; preds = %480, %477
  store ptr %439, ptr %474, align 8, !tbaa !222
  store ptr %473, ptr %371, align 8, !tbaa !223
  %482 = icmp eq ptr %473, null
  br i1 %482, label %489, label %483, !prof !224

483:                                              ; preds = %481
  %484 = getelementptr inbounds %struct._dep_link, ptr %473, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !222
  %486 = icmp eq ptr %485, %439
  br i1 %486, label %488, label %487, !prof !225

487:                                              ; preds = %483
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %488

488:                                              ; preds = %487, %483
  store ptr %371, ptr %484, align 8, !tbaa !222
  br label %489

489:                                              ; preds = %488, %481
  store ptr %368, ptr %439, align 8, !tbaa !132
  %490 = load ptr, ptr %368, align 8, !tbaa !216
  %491 = getelementptr inbounds %struct._dep_node, ptr %490, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !226
  %493 = load i32, ptr %492, align 8
  %494 = and i32 %493, 65535
  %495 = icmp eq i32 %494, 7
  br i1 %495, label %496, label %502, !prof !228

496:                                              ; preds = %489
  %497 = getelementptr inbounds %struct._dep_node, ptr %490, i64 0, i32 1, i32 1
  %498 = load ptr, ptr %497, align 8, !tbaa !229
  %499 = load i32, ptr %498, align 8
  %500 = and i32 %499, 65535
  %501 = icmp eq i32 %500, 7
  br i1 %501, label %502, label %506, !prof !221

502:                                              ; preds = %496, %489
  %503 = getelementptr inbounds %struct._deps_list, ptr %439, i64 0, i32 1
  %504 = load i32, ptr %503, align 8, !tbaa !189
  %505 = add nsw i32 %504, 1
  store i32 %505, ptr %503, align 8, !tbaa !189
  br label %506

506:                                              ; preds = %502, %496
  %507 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %508 = icmp eq ptr %507, null
  br i1 %508, label %510, label %509, !prof !218

509:                                              ; preds = %506
  call fastcc void @set_dependency_caches(ptr noundef nonnull %8)
  br label %510

510:                                              ; preds = %509, %506, %351, %166
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7)
  br label %511

511:                                              ; preds = %51, %57, %510
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @haifa_note_dep(ptr noundef %0, i32 noundef %1) #11 !prof !603 !PGOFuncName !604 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #29
  %7 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %8 = and i32 %1, 16777216
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !605

10:                                               ; preds = %2
  %11 = and i32 %1, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !prof !606

13:                                               ; preds = %10
  %14 = and i32 %1, 67108864
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !607

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1726, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %2, %10, %13, %16
  %18 = phi i32 [ 0, %2 ], [ 11, %10 ], [ 12, %13 ], [ 12, %16 ]
  %19 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct.haifa_sched_info, ptr %19, i64 0, i32 17
  %21 = load i32, ptr %20, align 8, !tbaa !157
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !281

24:                                               ; preds = %17
  switch i32 %18, label %26 [
    i32 0, label %28
    i32 11, label %25
    i32 12, label %27
  ]

25:                                               ; preds = %24
  br label %28

26:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @.str.1) #29
  br label %27

27:                                               ; preds = %26, %24
  br label %28

28:                                               ; preds = %17, %24, %25, %27
  %29 = phi i32 [ -1, %17 ], [ 67108864, %27 ], [ 33554432, %25 ], [ 16777216, %24 ]
  store ptr %0, ptr %6, align 8, !tbaa !151
  %30 = getelementptr inbounds %struct._dep, ptr %6, i64 0, i32 1
  store ptr %7, ptr %30, align 8, !tbaa !153
  %31 = getelementptr inbounds %struct._dep, ptr %6, i64 0, i32 2
  store i32 %18, ptr %31, align 8, !tbaa !154
  %32 = getelementptr inbounds %struct._dep, ptr %6, i64 0, i32 3
  store i32 %29, ptr %32, align 4, !tbaa !155
  %33 = load i32, ptr %7, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -7
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %42, !prof !600

37:                                               ; preds = %28
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %43, label %42, !prof !600

42:                                               ; preds = %37, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 849, ptr noundef nonnull @.str.1) #29
  br label %43

43:                                               ; preds = %42, %37
  %44 = icmp eq ptr %7, %0
  br i1 %44, label %45, label %61, !prof !601

45:                                               ; preds = %43
  %46 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %47 = getelementptr inbounds %struct.sched_deps_info_def, ptr %46, i64 0, i32 12
  %48 = load i8, ptr %47, align 8
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %484, label %51, !prof !602

51:                                               ; preds = %45
  %52 = load ptr, ptr @h_d_i_d, align 8
  %53 = load ptr, ptr @sched_luids, align 8
  %54 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !143
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_int_base, ptr %53, i64 0, i32 2, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !147
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %52, i64 0, i32 2, i64 %59, i32 1
  store i32 1, ptr %60, align 4, !tbaa !171
  br label %484

61:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  %62 = load i32, ptr %0, align 8
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %71, !prof !196

66:                                               ; preds = %61
  %67 = load i32, ptr %7, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -11
  %70 = icmp ult i32 %69, -4
  br i1 %70, label %71, label %72, !prof !199

71:                                               ; preds = %66, %61
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1125, ptr noundef nonnull @.str.1) #29
  br label %72

72:                                               ; preds = %71, %66
  %73 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %74 = icmp eq ptr %73, null
  br i1 %74, label %164, label %75, !prof !196

75:                                               ; preds = %72
  %76 = load ptr, ptr @sched_luids, align 8
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !143
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.VEC_int_base, ptr %76, i64 0, i32 2, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !147
  %82 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !143
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VEC_int_base, ptr %76, i64 0, i32 2, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !147
  %87 = load ptr, ptr @output_dependency_cache, align 8
  %88 = icmp ne ptr %87, null
  %89 = load ptr, ptr @anti_dependency_cache, align 8
  %90 = icmp ne ptr %89, null
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %93, label %92

92:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #29
  br label %93

93:                                               ; preds = %92, %75
  %94 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %95 = getelementptr inbounds %struct.haifa_sched_info, ptr %94, i64 0, i32 17
  %96 = load i32, ptr %95, align 8, !tbaa !157
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  %99 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %100 = sext i32 %86 to i64
  %101 = getelementptr inbounds %struct.bitmap_head_def, ptr %99, i64 %100
  %102 = tail call i32 @bitmap_bit_p(ptr noundef %101, i32 noundef %81) #29
  %103 = icmp eq i32 %102, 0
  br i1 %98, label %104, label %121

104:                                              ; preds = %93
  br i1 %103, label %105, label %115

105:                                              ; preds = %104
  %106 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %107 = getelementptr inbounds %struct.bitmap_head_def, ptr %106, i64 %100
  %108 = tail call i32 @bitmap_bit_p(ptr noundef %107, i32 noundef %81) #29
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %112 = getelementptr inbounds %struct.bitmap_head_def, ptr %111, i64 %100
  %113 = tail call i32 @bitmap_bit_p(ptr noundef %112, i32 noundef %81) #29
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110, %105, %104
  %116 = phi i32 [ 0, %104 ], [ 11, %105 ], [ 12, %110 ]
  %117 = icmp ult i32 %18, %116
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi i32 [ 3, %110 ], [ 1, %115 ]
  %120 = phi i1 [ false, %110 ], [ %117, %115 ]
  br i1 %120, label %159, label %160

121:                                              ; preds = %93
  %122 = select i1 %103, i32 0, i32 16777216
  %123 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %124 = getelementptr inbounds %struct.bitmap_head_def, ptr %123, i64 %100
  %125 = tail call i32 @bitmap_bit_p(ptr noundef %124, i32 noundef %81) #29
  %126 = icmp eq i32 %125, 0
  %127 = or disjoint i32 %122, 33554432
  %128 = select i1 %126, i32 %122, i32 %127
  %129 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %130 = getelementptr inbounds %struct.bitmap_head_def, ptr %129, i64 %100
  %131 = tail call i32 @bitmap_bit_p(ptr noundef %130, i32 noundef %81) #29
  %132 = icmp eq i32 %131, 0
  %133 = or disjoint i32 %128, 67108864
  %134 = select i1 %132, i32 %128, i32 %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %121
  %137 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %138 = getelementptr inbounds %struct.haifa_sched_info, ptr %137, i64 0, i32 17
  %139 = load i32, ptr %138, align 8, !tbaa !157
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %144 = getelementptr inbounds %struct.bitmap_head_def, ptr %143, i64 %100
  %145 = tail call i32 @bitmap_bit_p(ptr noundef %144, i32 noundef %81) #29
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142, %136
  %148 = and i32 %29, 117440512
  %149 = or i32 %134, %148
  %150 = icmp eq i32 %149, %134
  br i1 %150, label %156, label %155

151:                                              ; preds = %142
  %152 = and i32 %134, 33554432
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.1) #29
  br label %155

155:                                              ; preds = %154, %151, %147
  br label %156

156:                                              ; preds = %155, %147, %121
  %157 = phi i32 [ undef, %155 ], [ 3, %121 ], [ 1, %147 ]
  %158 = phi i1 [ true, %155 ], [ false, %121 ], [ false, %147 ]
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %118
  br label %160

160:                                              ; preds = %159, %156, %118
  %161 = phi i32 [ 2, %159 ], [ %119, %118 ], [ %157, %156 ]
  switch i32 %161, label %163 [
    i32 1, label %483
    i32 2, label %164
    i32 3, label %162
  ]

162:                                              ; preds = %160
  br label %164

163:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #29
  br label %164

164:                                              ; preds = %163, %162, %160, %72
  %165 = phi i1 [ false, %163 ], [ true, %162 ], [ false, %72 ], [ false, %160 ]
  %166 = phi i1 [ false, %163 ], [ false, %162 ], [ false, %72 ], [ true, %160 ]
  %167 = phi i1 [ true, %163 ], [ true, %162 ], [ true, %72 ], [ false, %160 ]
  br i1 %165, label %339, label %168, !prof !199

168:                                              ; preds = %164
  %169 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %170 = icmp eq ptr %169, null
  %171 = or i1 %166, %170
  br i1 %171, label %173, label %172, !prof !196

172:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #29
  br label %173

173:                                              ; preds = %172, %168
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %174 = load ptr, ptr @h_d_i_d, align 8
  %175 = load ptr, ptr @sched_luids, align 8
  %176 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  br label %187

177:                                              ; preds = %220
  %178 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !143
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.VEC_int_base, ptr %175, i64 0, i32 2, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !147
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %174, i64 0, i32 2, i64 %183, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !183
  %186 = icmp eq ptr %185, null
  br i1 %186, label %226, label %223, !prof !199

187:                                              ; preds = %220, %173
  %188 = phi i32 [ 0, %173 ], [ %221, %220 ]
  %189 = phi i32 [ 3, %173 ], [ %213, %220 ]
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %201, label %192, !prof !178

192:                                              ; preds = %187
  %193 = load i32, ptr %176, align 8, !tbaa !143
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.VEC_int_base, ptr %175, i64 0, i32 2, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !147
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %174, i64 0, i32 2, i64 %197, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !179
  %200 = and i32 %189, -2
  br label %212

201:                                              ; preds = %187
  %202 = and i32 %189, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %212, label %204, !prof !180

204:                                              ; preds = %201
  %205 = load i32, ptr %176, align 8, !tbaa !143
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.VEC_int_base, ptr %175, i64 0, i32 2, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !147
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %174, i64 0, i32 2, i64 %209, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !181
  br label %212

212:                                              ; preds = %204, %201, %192
  %213 = phi i32 [ 0, %204 ], [ %200, %192 ], [ 0, %201 ]
  %214 = phi ptr [ %211, %204 ], [ %199, %192 ], [ null, %201 ]
  %215 = icmp eq ptr %214, null
  br i1 %215, label %220, label %216, !prof !197

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct._deps_list, ptr %214, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !189
  %219 = add nsw i32 %218, %188
  br label %220

220:                                              ; preds = %216, %212
  %221 = phi i32 [ %219, %216 ], [ %188, %212 ]
  %222 = icmp eq i32 %213, 0
  br i1 %222, label %177, label %187, !prof !198, !llvm.loop !192

223:                                              ; preds = %177
  %224 = getelementptr inbounds %struct._deps_list, ptr %185, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !189
  br label %226

226:                                              ; preds = %223, %177
  %227 = phi i32 [ %225, %223 ], [ 0, %177 ]
  %228 = icmp slt i32 %221, %227
  %229 = getelementptr inbounds i8, ptr %3, i64 8
  %230 = getelementptr inbounds i8, ptr %3, i64 16
  %231 = getelementptr inbounds i8, ptr %3, i64 24
  br i1 %228, label %232, label %245, !prof !200

232:                                              ; preds = %226
  store i32 3, ptr %3, align 8, !tbaa.struct !201
  store ptr %7, ptr %229, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %230, align 8, !tbaa.struct !203
  store i8 0, ptr %231, align 8, !tbaa.struct !204
  %233 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %261, label %235, !prof !205

235:                                              ; preds = %232, %239
  %236 = load ptr, ptr %4, align 8, !tbaa !132
  %237 = load ptr, ptr %236, align 8, !tbaa !151
  %238 = icmp eq ptr %237, %0
  br i1 %238, label %259, label %239, !prof !206

239:                                              ; preds = %235
  %240 = load ptr, ptr %230, align 8, !tbaa !207
  %241 = load ptr, ptr %240, align 8, !tbaa !132
  %242 = getelementptr inbounds %struct._dep_link, ptr %241, i64 0, i32 1
  store ptr %242, ptr %230, align 8, !tbaa !207
  %243 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %261, label %235, !prof !209, !llvm.loop !210

245:                                              ; preds = %226
  store i32 4, ptr %3, align 8, !tbaa.struct !201
  store ptr %0, ptr %229, align 8, !tbaa.struct !202
  store ptr @sd_iterator_start.null_link, ptr %230, align 8, !tbaa.struct !203
  store i8 0, ptr %231, align 8, !tbaa.struct !204
  %246 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %261, label %248, !prof !211

248:                                              ; preds = %245, %253
  %249 = load ptr, ptr %4, align 8, !tbaa !132
  %250 = getelementptr inbounds %struct._dep, ptr %249, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !153
  %252 = icmp eq ptr %251, %7
  br i1 %252, label %259, label %253, !prof !212

253:                                              ; preds = %248
  %254 = load ptr, ptr %230, align 8, !tbaa !207
  %255 = load ptr, ptr %254, align 8, !tbaa !132
  %256 = getelementptr inbounds %struct._dep_link, ptr %255, i64 0, i32 1
  store ptr %256, ptr %230, align 8, !tbaa !207
  %257 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %261, label %248, !prof !213, !llvm.loop !214

259:                                              ; preds = %248, %235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !201
  %260 = load ptr, ptr %4, align 8, !tbaa !132
  br label %261

261:                                              ; preds = %253, %239, %259, %245, %232
  %262 = phi ptr [ %260, %259 ], [ null, %232 ], [ null, %245 ], [ null, %239 ], [ null, %253 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  %263 = icmp eq ptr %262, null
  br i1 %263, label %336, label %264, !prof !233

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct._dep, ptr %262, i64 0, i32 2
  %266 = load i32, ptr %265, align 8, !tbaa !154
  %267 = icmp slt i32 %18, %266
  br i1 %267, label %268, label %269, !prof !234

268:                                              ; preds = %264
  store i32 %18, ptr %265, align 8, !tbaa !154
  br label %269

269:                                              ; preds = %268, %264
  %270 = phi i32 [ 2, %268 ], [ 1, %264 ]
  %271 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %272 = getelementptr inbounds %struct.haifa_sched_info, ptr %271, i64 0, i32 17
  %273 = load i32, ptr %272, align 8, !tbaa !157
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %297, label %276, !prof !235

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct._dep, ptr %262, i64 0, i32 3
  %278 = load i32, ptr %277, align 4, !tbaa !155
  %279 = or i32 %278, %29
  %280 = and i32 %279, 16777215
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %293, label %282

282:                                              ; preds = %276
  %283 = and i32 %29, 16777215
  %284 = icmp eq i32 %283, 0
  %285 = and i32 %278, 16777215
  %286 = icmp eq i32 %285, 0
  %287 = or i1 %284, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = and i32 %279, -16777216
  br i1 %286, label %293, label %290

290:                                              ; preds = %288
  tail call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %5)
  br label %293

291:                                              ; preds = %282
  %292 = tail call fastcc i32 @ds_merge_1(i32 noundef %278, i32 noundef %29, i8 noundef zeroext 0)
  br label %293

293:                                              ; preds = %291, %290, %288, %276
  %294 = phi i32 [ %292, %291 ], [ %289, %290 ], [ %289, %288 ], [ %279, %276 ]
  %295 = icmp eq i32 %278, %294
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  store i32 %294, ptr %277, align 4, !tbaa !155
  br label %297

297:                                              ; preds = %296, %293, %269
  %298 = phi i32 [ %270, %269 ], [ 2, %296 ], [ %270, %293 ]
  %299 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %300 = icmp ne ptr %299, null
  %301 = icmp eq i32 %298, 2
  %302 = and i1 %301, %300
  br i1 %302, label %303, label %338, !prof !215

303:                                              ; preds = %297
  %304 = load ptr, ptr @sched_luids, align 8
  %305 = load ptr, ptr %262, align 8, !tbaa !151
  %306 = getelementptr inbounds %struct.rtx_def, ptr %305, i64 0, i32 1
  %307 = load i32, ptr %306, align 8, !tbaa !143
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.VEC_int_base, ptr %304, i64 0, i32 2, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !147
  %311 = getelementptr inbounds %struct._dep, ptr %262, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !153
  %313 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !143
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.VEC_int_base, ptr %304, i64 0, i32 2, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !147
  %318 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %319 = getelementptr inbounds %struct.haifa_sched_info, ptr %318, i64 0, i32 17
  %320 = load i32, ptr %319, align 8, !tbaa !157
  %321 = and i32 %320, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %303
  switch i32 %266, label %334 [
    i32 11, label %324
    i32 12, label %329
  ]

324:                                              ; preds = %323
  %325 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !132
  %326 = sext i32 %317 to i64
  %327 = getelementptr inbounds %struct.bitmap_head_def, ptr %325, i64 %326
  %328 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %327, i32 noundef %310) #29
  br label %335

329:                                              ; preds = %323
  %330 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !132
  %331 = sext i32 %317 to i64
  %332 = getelementptr inbounds %struct.bitmap_head_def, ptr %330, i64 %331
  %333 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %332, i32 noundef %310) #29
  br label %335

334:                                              ; preds = %323
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #29
  br label %335

335:                                              ; preds = %334, %329, %324, %303
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %262)
  br label %338

336:                                              ; preds = %261
  br i1 %167, label %338, label %337, !prof !218

337:                                              ; preds = %336
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.1) #29
  br label %338

338:                                              ; preds = %337, %336, %335, %297
  br i1 %263, label %339, label %483, !prof !233

339:                                              ; preds = %338, %164
  %340 = load ptr, ptr @dn_pool, align 8, !tbaa !132
  %341 = tail call ptr @pool_alloc(ptr noundef %340) #29
  %342 = getelementptr inbounds %struct._dep_node, ptr %341, i64 0, i32 2
  store ptr %341, ptr %341, align 8, !tbaa !216
  %343 = getelementptr inbounds %struct._dep_link, ptr %341, i64 0, i32 1
  %344 = getelementptr inbounds %struct._dep_link, ptr %341, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %343, i8 0, i64 16, i1 false)
  store ptr %341, ptr %342, align 8, !tbaa !216
  %345 = getelementptr inbounds %struct._dep_node, ptr %341, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %345, i8 0, i64 16, i1 false)
  %346 = load i32, ptr @dn_pool_diff, align 4, !tbaa !147
  %347 = add nsw i32 %346, 1
  store i32 %347, ptr @dn_pool_diff, align 4, !tbaa !147
  %348 = load i32, ptr %7, align 8
  %349 = and i32 %348, 65535
  %350 = add nsw i32 %349, -7
  %351 = icmp ult i32 %350, 4
  br i1 %351, label %352, label %357, !prof !218

352:                                              ; preds = %339
  %353 = load i32, ptr %0, align 8
  %354 = and i32 %353, 65535
  %355 = add nsw i32 %354, -11
  %356 = icmp ult i32 %355, -4
  br i1 %356, label %357, label %358, !prof !219

357:                                              ; preds = %352, %339
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #29
  br label %358

358:                                              ; preds = %357, %352
  %359 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %360 = getelementptr inbounds %struct.haifa_sched_info, ptr %359, i64 0, i32 17
  %361 = load i32, ptr %360, align 8, !tbaa !157
  %362 = and i32 %361, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %369, label %364, !prof !218

364:                                              ; preds = %358
  %365 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %7, i32 noundef %29), !range !220
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = and i32 %29, -16777216
  store i32 %368, ptr %32, align 4, !tbaa !155
  br label %369

369:                                              ; preds = %367, %364, %358
  %370 = getelementptr inbounds %struct._dep_node, ptr %341, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %370, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %371 = load ptr, ptr @current_sched_info, align 8, !tbaa !132
  %372 = getelementptr inbounds %struct.haifa_sched_info, ptr %371, i64 0, i32 17
  %373 = load i32, ptr %372, align 8, !tbaa !157
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %390, label %376, !prof !221

376:                                              ; preds = %369
  %377 = load i32, ptr %32, align 4, !tbaa !155
  %378 = and i32 %377, 16777215
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %390, label %380

380:                                              ; preds = %376
  %381 = load ptr, ptr @h_d_i_d, align 8
  %382 = load ptr, ptr @sched_luids, align 8
  %383 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %384 = load i32, ptr %383, align 8, !tbaa !143
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.VEC_int_base, ptr %382, i64 0, i32 2, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !147
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %381, i64 0, i32 2, i64 %388, i32 3
  br label %400

390:                                              ; preds = %376, %369
  %391 = load ptr, ptr @h_d_i_d, align 8
  %392 = load ptr, ptr @sched_luids, align 8
  %393 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %394 = load i32, ptr %393, align 8, !tbaa !143
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds %struct.VEC_int_base, ptr %392, i64 0, i32 2, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !147
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %391, i64 0, i32 2, i64 %398, i32 2
  br label %400

400:                                              ; preds = %390, %380
  %401 = phi ptr [ %399, %390 ], [ %389, %380 ]
  %402 = load ptr, ptr @h_d_i_d, align 8
  %403 = load ptr, ptr @sched_luids, align 8
  %404 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %405 = load i32, ptr %404, align 8, !tbaa !143
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.VEC_int_base, ptr %403, i64 0, i32 2, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !147
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %402, i64 0, i32 2, i64 %409, i32 4
  %411 = load ptr, ptr %401, align 8, !tbaa !132
  %412 = load ptr, ptr %410, align 8, !tbaa !132
  %413 = load ptr, ptr %411, align 8, !tbaa !132
  %414 = load ptr, ptr %344, align 8, !tbaa !222
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %419, !prof !221

416:                                              ; preds = %400
  %417 = load ptr, ptr %343, align 8, !tbaa !223
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419, !prof !221

419:                                              ; preds = %416, %400
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %420

420:                                              ; preds = %419, %416
  store ptr %411, ptr %344, align 8, !tbaa !222
  store ptr %413, ptr %343, align 8, !tbaa !223
  %421 = icmp eq ptr %413, null
  br i1 %421, label %428, label %422, !prof !224

422:                                              ; preds = %420
  %423 = getelementptr inbounds %struct._dep_link, ptr %413, i64 0, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !222
  %425 = icmp eq ptr %424, %411
  br i1 %425, label %427, label %426, !prof !225

426:                                              ; preds = %422
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %427

427:                                              ; preds = %426, %422
  store ptr %343, ptr %423, align 8, !tbaa !222
  br label %428

428:                                              ; preds = %427, %420
  store ptr %341, ptr %411, align 8, !tbaa !132
  %429 = load ptr, ptr %341, align 8, !tbaa !216
  %430 = getelementptr inbounds %struct._dep_node, ptr %429, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !226
  %432 = load i32, ptr %431, align 8
  %433 = and i32 %432, 65535
  %434 = icmp eq i32 %433, 7
  br i1 %434, label %435, label %441, !prof !228

435:                                              ; preds = %428
  %436 = getelementptr inbounds %struct._dep_node, ptr %429, i64 0, i32 1, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !229
  %438 = load i32, ptr %437, align 8
  %439 = and i32 %438, 65535
  %440 = icmp eq i32 %439, 7
  br i1 %440, label %441, label %445, !prof !221

441:                                              ; preds = %435, %428
  %442 = getelementptr inbounds %struct._deps_list, ptr %411, i64 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !189
  %444 = add nsw i32 %443, 1
  store i32 %444, ptr %442, align 8, !tbaa !189
  br label %445

445:                                              ; preds = %441, %435
  %446 = load ptr, ptr %412, align 8, !tbaa !132
  %447 = getelementptr inbounds %struct._dep_node, ptr %341, i64 0, i32 2, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !222
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %453, !prof !221

450:                                              ; preds = %445
  %451 = load ptr, ptr %345, align 8, !tbaa !223
  %452 = icmp eq ptr %451, null
  br i1 %452, label %454, label %453, !prof !221

453:                                              ; preds = %450, %445
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #29
  br label %454

454:                                              ; preds = %453, %450
  store ptr %412, ptr %447, align 8, !tbaa !222
  store ptr %446, ptr %345, align 8, !tbaa !223
  %455 = icmp eq ptr %446, null
  br i1 %455, label %462, label %456, !prof !224

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct._dep_link, ptr %446, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !222
  %459 = icmp eq ptr %458, %412
  br i1 %459, label %461, label %460, !prof !225

460:                                              ; preds = %456
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #29
  br label %461

461:                                              ; preds = %460, %456
  store ptr %345, ptr %457, align 8, !tbaa !222
  br label %462

462:                                              ; preds = %461, %454
  store ptr %342, ptr %412, align 8, !tbaa !132
  %463 = load ptr, ptr %342, align 8, !tbaa !216
  %464 = getelementptr inbounds %struct._dep_node, ptr %463, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !226
  %466 = load i32, ptr %465, align 8
  %467 = and i32 %466, 65535
  %468 = icmp eq i32 %467, 7
  br i1 %468, label %469, label %475, !prof !228

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct._dep_node, ptr %463, i64 0, i32 1, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !229
  %472 = load i32, ptr %471, align 8
  %473 = and i32 %472, 65535
  %474 = icmp eq i32 %473, 7
  br i1 %474, label %475, label %479, !prof !221

475:                                              ; preds = %469, %462
  %476 = getelementptr inbounds %struct._deps_list, ptr %412, i64 0, i32 1
  %477 = load i32, ptr %476, align 8, !tbaa !189
  %478 = add nsw i32 %477, 1
  store i32 %478, ptr %476, align 8, !tbaa !189
  br label %479

479:                                              ; preds = %475, %469
  %480 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %481 = icmp eq ptr %480, null
  br i1 %481, label %483, label %482, !prof !218

482:                                              ; preds = %479
  call fastcc void @set_dependency_caches(ptr noundef nonnull %6)
  br label %483

483:                                              ; preds = %482, %479, %338, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  br label %484

484:                                              ; preds = %45, %51, %483
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @finish_deps_global() local_unnamed_addr #11 !prof !585 {
  %1 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  tail call void @bitmap_obstack_free(ptr noundef %1) #29
  store ptr null, ptr @reg_pending_sets, align 8, !tbaa !132
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  tail call void @bitmap_obstack_free(ptr noundef %2) #29
  store ptr null, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %3 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  tail call void @bitmap_obstack_free(ptr noundef %3) #29
  store ptr null, ptr @reg_pending_uses, align 8, !tbaa !132
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @estimate_dep_weak(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #22 !prof !608 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %35, label %4, !prof !609

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %35, label %10, !prof !609

10:                                               ; preds = %4
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %30, !prof !610

14:                                               ; preds = %10
  %15 = load i32, ptr %8, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %24, !prof !611

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !143
  %21 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !143
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %18, %14
  br i1 %13, label %25, label %30, !prof !610

25:                                               ; preds = %24
  %26 = load i32, ptr %8, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %35, !prof !611

29:                                               ; preds = %25
  br i1 %13, label %34, label %30, !prof !612

30:                                               ; preds = %10, %24, %29
  %31 = load i32, ptr %8, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %35, label %34, !prof !612

34:                                               ; preds = %30, %29
  br label %35

35:                                               ; preds = %25, %30, %4, %18, %2, %34
  %36 = phi i32 [ 47, %34 ], [ 1, %2 ], [ 1, %18 ], [ 1, %4 ], [ 55, %30 ], [ 55, %25 ]
  ret i32 %36
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_dependence(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !613 {
  switch i32 %2, label %5 [
    i32 0, label %7
    i32 11, label %4
    i32 12, label %6
  ], !prof !481

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #29
  br label %6

6:                                                ; preds = %3, %5
  br label %7

7:                                                ; preds = %3, %4, %6
  %8 = phi i32 [ 33554432, %4 ], [ 67108864, %6 ], [ 16777216, %3 ]
  %9 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !280

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %0
  br i1 %12, label %15, label %13, !prof !281

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %15

14:                                               ; preds = %7
  store ptr %0, ptr @cur_insn, align 8, !tbaa !132
  br label %15

15:                                               ; preds = %13, %11, %14
  %16 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %17 = getelementptr inbounds %struct.sched_deps_info_def, ptr %16, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !282
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !283

20:                                               ; preds = %15
  tail call void %18(ptr noundef %1, i32 noundef %8) #29, !prof !614
  br label %21

21:                                               ; preds = %15, %20
  br i1 %10, label %22, label %23, !prof !280

22:                                               ; preds = %21
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %23

23:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = and i32 %1, %0
  switch i32 %1, label %10 [
    i32 63, label %11
    i32 4032, label %4
    i32 258048, label %6
    i32 16515072, label %8
  ]

4:                                                ; preds = %2
  %5 = ashr i32 %3, 6
  br label %11

6:                                                ; preds = %2
  %7 = ashr i32 %3, 12
  br label %11

8:                                                ; preds = %2
  %9 = ashr i32 %3, 18
  br label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3837, ptr noundef nonnull @.str.1) #29
  br label %11

11:                                               ; preds = %2, %10, %8, %6, %4
  %12 = phi i32 [ %3, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @get_dep_weak(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = tail call i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %1)
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 62
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #29
  br label %7

7:                                                ; preds = %2, %6
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @set_dep_weak(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !131 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 62
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3857, ptr noundef nonnull @.str.1) #29
  br label %7

7:                                                ; preds = %3, %6
  %8 = xor i32 %1, -1
  %9 = and i32 %8, %0
  switch i32 %1, label %21 [
    i32 63, label %10
    i32 4032, label %12
    i32 258048, label %15
    i32 16515072, label %18
  ]

10:                                               ; preds = %7
  %11 = or i32 %9, %2
  br label %22

12:                                               ; preds = %7
  %13 = shl i32 %2, 6
  %14 = or i32 %13, %9
  br label %22

15:                                               ; preds = %7
  %16 = shl i32 %2, 12
  %17 = or i32 %16, %9
  br label %22

18:                                               ; preds = %7
  %19 = shl i32 %2, 18
  %20 = or i32 %19, %9
  br label %22

21:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3866, ptr noundef nonnull @.str.1) #29
  br label %22

22:                                               ; preds = %21, %18, %15, %12, %10
  %23 = phi i32 [ %9, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %10 ]
  ret i32 %23
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ds_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = tail call fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 0)
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !131 {
  %4 = and i32 %0, 16777215
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %1, 16777215
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3880, ptr noundef nonnull @.str.1) #29
  br label %10

10:                                               ; preds = %3, %9
  %11 = or i32 %1, %0
  %12 = and i32 %11, 117440512
  br label %13

13:                                               ; preds = %48, %10
  %14 = phi i32 [ 63, %10 ], [ %51, %48 ]
  %15 = phi i32 [ %12, %10 ], [ %49, %48 ]
  %16 = and i32 %14, %0
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %14, %1
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = or i32 %15, %16
  br label %48

23:                                               ; preds = %13
  br i1 %17, label %26, label %24

24:                                               ; preds = %23
  %25 = or i32 %15, %18
  br label %48

26:                                               ; preds = %23
  br i1 %19, label %48, label %27

27:                                               ; preds = %26
  %28 = tail call i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %14)
  %29 = add i32 %28, -1
  %30 = icmp ult i32 %29, 62
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #29
  br label %32

32:                                               ; preds = %27, %31
  %33 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef %14)
  %34 = add i32 %33, -1
  %35 = icmp ult i32 %34, 62
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #29
  br label %37

37:                                               ; preds = %32, %36
  %38 = icmp eq i8 %2, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = mul nsw i32 %33, %28
  %41 = sdiv i32 %40, 62
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 1)
  br label %45

43:                                               ; preds = %37
  %44 = tail call i32 @llvm.smax.i32(i32 %28, i32 %33)
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ]
  %47 = tail call i32 @set_dep_weak(i32 noundef %15, i32 noundef %14, i32 noundef %46)
  br label %48

48:                                               ; preds = %24, %45, %26, %21
  %49 = phi i32 [ %47, %45 ], [ %15, %26 ], [ %22, %21 ], [ %25, %24 ]
  %50 = icmp eq i32 %14, 16515072
  %51 = shl i32 %14, 6
  br i1 %50, label %52, label %13, !llvm.loop !615

52:                                               ; preds = %48
  ret i32 %49
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ds_full_merge(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !616 {
  %5 = or i32 %1, %0
  %6 = and i32 %5, 16777215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8, !prof !617

8:                                                ; preds = %4
  %9 = icmp ne i32 %0, 0
  %10 = and i32 %0, 16777215
  %11 = icmp eq i32 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = icmp eq i32 %1, 0
  %15 = and i32 %1, 16777215
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %8
  %19 = and i32 %5, -16777216
  br label %33

20:                                               ; preds = %13
  %21 = icmp eq ptr %2, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3), !range !236
  %24 = and i32 %0, -64
  %25 = or disjoint i32 %23, %24
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %25, %22 ], [ %0, %20 ]
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %14, %28
  %30 = select i1 %28, i32 %1, i32 %27
  br i1 %29, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @ds_merge_1(i32 noundef %1, i32 noundef %27, i8 noundef zeroext 0)
  br label %33

33:                                               ; preds = %26, %18, %31, %4
  %34 = phi i32 [ %32, %31 ], [ %19, %18 ], [ %5, %4 ], [ %30, %26 ]
  ret i32 %34
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ds_max_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = icmp eq i32 %1, 0
  %4 = or i32 %1, %0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp ne i32 %0, 0
  %12 = and i1 %11, %3
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 1)
  br label %15

15:                                               ; preds = %10, %6, %2, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %2 ], [ %1, %6 ], [ %0, %10 ]
  ret i32 %16
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ds_weak(i32 noundef %0) local_unnamed_addr #9 !prof !131 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi i32 [ 1, %1 ], [ %17, %16 ]
  %4 = phi i32 [ 63, %1 ], [ %20, %16 ]
  %5 = phi i32 [ 0, %1 ], [ %18, %16 ]
  %6 = and i32 %4, %0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %4)
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 62
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #29
  br label %13

13:                                               ; preds = %8, %12
  %14 = mul nsw i32 %9, %3
  %15 = add nsw i32 %5, 1
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ %14, %13 ], [ %3, %2 ]
  %18 = phi i32 [ %15, %13 ], [ %5, %2 ]
  %19 = icmp eq i32 %4, 16515072
  %20 = shl i32 %4, 6
  br i1 %19, label %21, label %2, !llvm.loop !618

21:                                               ; preds = %16
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4007, ptr noundef nonnull @.str.1) #29
  br label %24

24:                                               ; preds = %21, %23
  %25 = add nsw i32 %18, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ %31, %27 ], [ %25, %24 ]
  %29 = phi i32 [ %30, %27 ], [ %17, %24 ]
  %30 = sdiv i32 %29, 62
  %31 = add nsw i32 %28, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %27, !llvm.loop !619

33:                                               ; preds = %27, %24
  %34 = phi i32 [ %17, %24 ], [ %30, %27 ]
  %35 = icmp slt i32 %34, 63
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4014, ptr noundef nonnull @.str.1) #29
  br label %37

37:                                               ; preds = %33, %36
  %38 = tail call i32 @llvm.smax.i32(i32 %34, i32 1)
  ret i32 %38
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @ds_get_speculation_types(i32 noundef %0) local_unnamed_addr #23 !prof !620 {
  %2 = and i32 %0, 63
  %3 = icmp eq i32 %2, 0
  %4 = or i32 %0, 63
  %5 = select i1 %3, i32 %0, i32 %4, !prof !621
  %6 = and i32 %5, 4032
  %7 = icmp eq i32 %6, 0
  %8 = or i32 %5, 4032
  %9 = select i1 %7, i32 %5, i32 %8, !prof !621
  %10 = and i32 %9, 258048
  %11 = icmp eq i32 %10, 0
  %12 = or i32 %9, 258048
  %13 = select i1 %11, i32 %9, i32 %12, !prof !621
  %14 = and i32 %13, 16515072
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %13, 16515072
  %17 = select i1 %15, i32 %13, i32 %16, !prof !621
  %18 = and i32 %17, 16777215
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @ds_get_max_dep_weak(i32 noundef %0) local_unnamed_addr #24 !prof !622 {
  %2 = and i32 %0, 63
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %0, -64
  %5 = or disjoint i32 %4, 62
  %6 = select i1 %3, i32 %0, i32 %5, !prof !623
  %7 = and i32 %6, 4032
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, -4033
  %10 = or disjoint i32 %9, 3968
  %11 = select i1 %8, i32 %6, i32 %10, !prof !623
  %12 = and i32 %11, 258048
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, -258049
  %15 = or disjoint i32 %14, 253952
  %16 = select i1 %13, i32 %11, i32 %15, !prof !623
  %17 = and i32 %16, 16515072
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, -16515073
  %20 = or disjoint i32 %19, 16252928
  %21 = select i1 %18, i32 %16, i32 %20, !prof !623
  ret i32 %21
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_ds(i32 noundef %0) local_unnamed_addr #25 !prof !131 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !132
  tail call fastcc void @dump_ds(ptr noundef %2, i32 noundef %0)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !132
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_ds(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #25 !prof !131 {
  %3 = tail call i32 @fputc(i32 123, ptr %0)
  %4 = and i32 %1, 63
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %4)
  br label %8

8:                                                ; preds = %6, %2
  %9 = and i32 %1, 4032
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = lshr exact i32 %9, 6
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = and i32 %1, 258048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = lshr exact i32 %15, 12
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = and i32 %1, 16515072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = lshr exact i32 %21, 18
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = and i32 %1, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 10, i64 1, ptr %0)
  br label %31

31:                                               ; preds = %29, %26
  %32 = and i32 %1, 16777216
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 10, i64 1, ptr %0)
  br label %36

36:                                               ; preds = %34, %31
  %37 = and i32 %1, 67108864
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 10, i64 1, ptr %0)
  br label %41

41:                                               ; preds = %39, %36
  %42 = and i32 %1, 33554432
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 12, i64 1, ptr %0)
  br label %46

46:                                               ; preds = %44, %41
  %47 = tail call i32 @fputc(i32 125, ptr %0)
  ret void
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @change_spec_dep_to_hard(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) unnamed_addr #9 !prof !131 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = load ptr, ptr %4, align 8, !tbaa !216
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !153
  %10 = load ptr, ptr @h_d_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !143
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_int_base, ptr %11, i64 0, i32 2, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !147
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %10, i64 0, i32 2, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !181
  %20 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %10, i64 0, i32 2, i64 %17, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !179
  tail call fastcc void @move_dep_link(ptr noundef %5, ptr noundef %19, ptr noundef %21)
  %22 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !155
  %24 = and i32 %23, -16777216
  store i32 %24, ptr %22, align 4, !tbaa !155
  %25 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !132
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !132
  %29 = load ptr, ptr @sched_luids, align 8
  %30 = load i32, ptr %12, align 8, !tbaa !143
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_int_base, ptr %29, i64 0, i32 2, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !147
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !143
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.VEC_int_base, ptr %29, i64 0, i32 2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !147
  %41 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %35, i32 noundef %40) #29
  br label %42

42:                                               ; preds = %27, %1
  ret void
}

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare void @preprocess_constraints() local_unnamed_addr #3

declare void @ira_implicitly_set_insn_hard_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !624 !PGOFuncName !625 {
  %4 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !626

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2371, ptr noundef nonnull @.str.1) #29
  br label %524

7:                                                ; preds = %3
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %15, label %9, !prof !627

9:                                                ; preds = %7
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !628
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !629

14:                                               ; preds = %9
  tail call void %12(ptr noundef nonnull %1) #29, !prof !630
  br label %15

15:                                               ; preds = %14, %9, %7
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = trunc i32 %16 to i16
  switch i16 %18, label %481 [
    i16 30, label %19
    i16 32, label %19
    i16 31, label %19
    i16 33, label %19
    i16 45, label %19
    i16 35, label %19
    i16 44, label %19
    i16 37, label %26
    i16 43, label %201
    i16 29, label %425
    i16 22, label %426
    i16 19, label %430
    i16 17, label %431
    i16 16, label %431
    i16 74, label %461
    i16 76, label %461
    i16 75, label %461
    i16 77, label %461
    i16 79, label %470
    i16 78, label %470
  ], !prof !631

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  br i1 %8, label %524, label %20, !prof !632

20:                                               ; preds = %19
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !633
  %24 = icmp eq ptr %23, null
  br i1 %24, label %524, label %25, !prof !634

25:                                               ; preds = %20
  tail call void %23() #29, !prof !635
  br label %524

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !143
  %29 = lshr i32 %16, 16
  %30 = and i32 %29, 255
  %31 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %79, !prof !636

33:                                               ; preds = %26
  %34 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %35 = getelementptr inbounds %struct.common_sched_info_def, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !173
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = tail call i32 @max_reg_num() #29
  %40 = add nsw i32 %39, -1
  %41 = icmp sgt i32 %40, %28
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !473
  %45 = icmp sgt i32 %44, %28
  br i1 %45, label %79, label %46

46:                                               ; preds = %42, %38
  %47 = add nsw i32 %28, 1
  %48 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2065, ptr noundef nonnull @.str.1) #29
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  br label %77

61:                                               ; preds = %54, %51
  %62 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !473
  %64 = icmp sgt i32 %63, %28
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %67 = load ptr, ptr %66, align 8, !tbaa !357
  %68 = sext i32 %47 to i64
  %69 = mul nsw i64 %68, 40
  %70 = tail call ptr @xrealloc(ptr noundef %67, i64 noundef %69) #29
  store ptr %70, ptr %66, align 8, !tbaa !357
  %71 = load i32, ptr %62, align 8, !tbaa !473
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.deps_reg, ptr %70, i64 %72
  %74 = sub nsw i32 %47, %71
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %73, i8 0, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %59, %65
  %78 = phi ptr [ %62, %65 ], [ %60, %59 ]
  store i32 %47, ptr %78, align 8, !tbaa !473
  br label %79

79:                                               ; preds = %77, %61, %42, %33, %26
  %80 = load i32, ptr @max_regno, align 4, !tbaa !147
  %81 = add i32 %80, -1
  %82 = zext i32 %81 to i64
  %83 = load i64, ptr @reg_info_p_size, align 8, !tbaa !253
  %84 = icmp ugt i64 %83, %82
  br i1 %84, label %100, label %85, !prof !254

85:                                               ; preds = %79
  %86 = add nsw i32 %80, 128
  %87 = sext i32 %86 to i64
  %88 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %92 = getelementptr inbounds %struct.common_sched_info_def, ptr %91, i64 0, i32 4
  %93 = load i32, ptr %92, align 8, !tbaa !173
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %96, label %95

95:                                               ; preds = %90, %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #29
  br label %96

96:                                               ; preds = %95, %90
  %97 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %98 = load i64, ptr @reg_info_p_size, align 8, !tbaa !253
  %99 = tail call ptr @xrecalloc(ptr noundef %97, i64 noundef %87, i64 noundef %98, i64 noundef 28) #29
  store ptr %99, ptr @reg_info_p, align 8, !tbaa !132
  store i64 %87, ptr @reg_info_p_size, align 8, !tbaa !253
  br label %100

100:                                              ; preds = %79, %96
  %101 = icmp slt i32 %28, 53
  br i1 %101, label %102, label %126, !prof !254

102:                                              ; preds = %100
  %103 = sext i32 %28 to i64
  %104 = zext nneg i32 %30 to i64
  %105 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %103, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !143
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %187, label %108, !prof !637

108:                                              ; preds = %102
  %109 = zext i8 %106 to i32
  br label %110

110:                                              ; preds = %108, %124
  %111 = phi i32 [ %112, %124 ], [ %109, %108 ]
  %112 = add nsw i32 %111, -1
  %113 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %114 = getelementptr inbounds %struct.sched_deps_info_def, ptr %113, i64 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !590
  %116 = icmp eq ptr %115, null
  br i1 %116, label %124, label %117, !prof !638

117:                                              ; preds = %110
  %118 = add nsw i32 %112, %28
  %119 = icmp eq ptr %115, @haifa_note_reg_use
  br i1 %119, label %120, label %123, !prof !639

120:                                              ; preds = %117
  %121 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %122 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %121, i32 noundef %118) #29
  br label %124

123:                                              ; preds = %117
  tail call void %115(i32 noundef %118) #29, !prof !640
  br label %124

124:                                              ; preds = %120, %123, %110
  %125 = icmp sgt i32 %111, 1
  br i1 %125, label %110, label %187, !prof !637, !llvm.loop !641

126:                                              ; preds = %100
  %127 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %128 = load i32, ptr %127, align 8, !tbaa !473
  %129 = icmp sgt i32 %128, %28
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !143
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65534
  %135 = icmp eq i32 %134, 24
  br i1 %135, label %187, label %136

136:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #29
  br label %187

137:                                              ; preds = %126
  %138 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %139 = getelementptr inbounds %struct.sched_deps_info_def, ptr %138, i64 0, i32 9
  %140 = load ptr, ptr %139, align 8, !tbaa !590
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  tail call void %140(i32 noundef %28) #29
  br label %143

143:                                              ; preds = %142, %137
  %144 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = tail call zeroext i8 @get_reg_known_equiv_p(i32 noundef %28) #29
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %146
  %150 = tail call ptr @get_reg_known_value(i32 noundef %28) #29
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 43
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %156, ptr noundef %2)
  br label %157

157:                                              ; preds = %154, %149, %146, %143
  %158 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %159 = zext nneg i32 %28 to i64
  %160 = getelementptr inbounds %struct.reg_info_t, ptr %158, i64 %159, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !642
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %165 = load i8, ptr %164, align 4
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32, ptr %2, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 7
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %174 = load ptr, ptr %173, align 8, !tbaa !644
  %175 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %174) #29
  store ptr %175, ptr %173, align 8, !tbaa !644
  br label %187

176:                                              ; preds = %168, %163
  %177 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %178 = load ptr, ptr %177, align 8, !tbaa !143
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %176, %180
  %181 = phi ptr [ %185, %180 ], [ %178, %176 ]
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !143
  tail call void @add_dependence(ptr noundef %2, ptr noundef %183, i32 noundef 12)
  %184 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !143
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %180, !llvm.loop !286

187:                                              ; preds = %180, %124, %176, %102, %130, %136, %157, %172
  %188 = and i32 %28, -8
  %189 = icmp eq i32 %188, 8
  br i1 %189, label %190, label %194, !prof !638

190:                                              ; preds = %187
  %191 = icmp eq i32 %28, 8
  br i1 %191, label %193, label %192

192:                                              ; preds = %190
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %30, i32 noundef 24, ptr noundef %2)
  br label %193

193:                                              ; preds = %192, %190
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %30, i32 noundef 23, ptr noundef %2)
  br label %194

194:                                              ; preds = %193, %187
  br i1 %8, label %524, label %195, !prof !645

195:                                              ; preds = %194
  %196 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %197 = getelementptr inbounds %struct.sched_deps_info_def, ptr %196, i64 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !633
  %199 = icmp eq ptr %198, null
  br i1 %199, label %524, label %200, !prof !646

200:                                              ; preds = %195
  tail call void %198() #29, !prof !647
  br label %524

201:                                              ; preds = %15
  %202 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %203 = getelementptr inbounds %struct.sched_deps_info_def, ptr %202, i64 0, i32 12
  %204 = load i8, ptr %203, align 8
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %224, label %207, !prof !648

207:                                              ; preds = %201
  %208 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !649
  %209 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !143
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.mem_attrs, ptr %210, i64 0, i32 5
  %214 = load i8, ptr %213, align 8, !tbaa !661
  br label %215

215:                                              ; preds = %207, %212
  %216 = phi i8 [ %214, %212 ], [ 0, %207 ]
  %217 = tail call i32 %208(i8 noundef zeroext %216) #29
  %218 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %1) #29
  %219 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !143
  %221 = tail call ptr @cselib_lookup_from_insn(ptr noundef %220, i32 noundef %217, i32 noundef 1, ptr noundef %2) #29
  %222 = load ptr, ptr %219, align 8, !tbaa !143
  %223 = tail call ptr @cselib_subst_to_values(ptr noundef %222) #29
  store ptr %223, ptr %219, align 8, !tbaa !143
  br label %224

224:                                              ; preds = %215, %201
  %225 = phi ptr [ %218, %215 ], [ %1, %201 ]
  %226 = load i32, ptr %2, align 8
  %227 = and i32 %226, 65535
  %228 = icmp eq i32 %227, 7
  br i1 %228, label %384, label %229, !prof !663

229:                                              ; preds = %224
  %230 = tail call ptr @canon_rtx(ptr noundef %225) #29
  %231 = load ptr, ptr %0, align 8, !tbaa !143
  %232 = icmp eq ptr %231, null
  br i1 %232, label %261, label %233, !prof !664

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %235

235:                                              ; preds = %233, %256
  %236 = phi ptr [ %259, %256 ], [ %231, %233 ]
  %237 = phi ptr [ %258, %256 ], [ %234, %233 ]
  %238 = load ptr, ptr %237, align 8, !tbaa !143
  %239 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !143
  %241 = tail call i32 @read_dependence(ptr noundef %240, ptr noundef %230) #29
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %256, label %243, !prof !665

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !143
  %246 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %245), !range !220
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %243
  %249 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %250 = getelementptr inbounds %struct.sched_deps_info_def, ptr %249, i64 0, i32 10
  %251 = load ptr, ptr %250, align 8, !tbaa !591
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %248
  %254 = load ptr, ptr %244, align 8, !tbaa !143
  %255 = load ptr, ptr %239, align 8, !tbaa !143
  tail call void %251(ptr noundef %230, ptr noundef %255, ptr noundef %254, i32 noundef 67108864) #29
  br label %256

256:                                              ; preds = %253, %248, %243, %235
  %257 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1, i32 0, i32 0, i64 1
  %259 = load ptr, ptr %257, align 8, !tbaa !143
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %235, !prof !665, !llvm.loop !666

261:                                              ; preds = %256, %229
  %262 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !143
  %264 = icmp eq ptr %263, null
  br i1 %264, label %298, label %265, !prof !667

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %267

267:                                              ; preds = %265, %293
  %268 = phi ptr [ %296, %293 ], [ %263, %265 ]
  %269 = phi ptr [ %295, %293 ], [ %266, %265 ]
  %270 = load ptr, ptr %269, align 8, !tbaa !143
  %271 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !143
  %273 = tail call i32 @true_dependence(ptr noundef %272, i32 noundef 0, ptr noundef %230, ptr noundef nonnull @rtx_varies_p) #29
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %293, label %275, !prof !668

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !143
  %278 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %277), !range !220
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %293, !prof !669

280:                                              ; preds = %275
  %281 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %282 = getelementptr inbounds %struct.sched_deps_info_def, ptr %281, i64 0, i32 10
  %283 = load ptr, ptr %282, align 8, !tbaa !591
  %284 = icmp eq ptr %283, null
  br i1 %284, label %293, label %285, !prof !670

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.sched_deps_info_def, ptr %281, i64 0, i32 12
  %287 = load i8, ptr %286, align 8
  %288 = and i8 %287, 4
  %289 = icmp eq i8 %288, 0
  %290 = select i1 %289, i32 16777216, i32 16777279, !prof !671
  %291 = load ptr, ptr %276, align 8, !tbaa !143
  %292 = load ptr, ptr %271, align 8, !tbaa !143
  tail call void %283(ptr noundef %230, ptr noundef %292, ptr noundef %291, i32 noundef %290) #29, !prof !672
  br label %293

293:                                              ; preds = %285, %280, %275, %267
  %294 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1, i32 0, i32 0, i64 1
  %295 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1, i32 0, i32 0, i64 1
  %296 = load ptr, ptr %294, align 8, !tbaa !143
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %267, !prof !673, !llvm.loop !674

298:                                              ; preds = %293, %261
  %299 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !143
  %301 = icmp eq ptr %300, null
  br i1 %301, label %384, label %302, !prof !675

302:                                              ; preds = %298, %380
  %303 = phi ptr [ %382, %380 ], [ %300, %298 ]
  %304 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !143
  %306 = load i32, ptr %305, align 8
  %307 = and i32 %306, 65535
  %308 = icmp eq i32 %307, 9
  br i1 %308, label %324, label %309, !prof !676

309:                                              ; preds = %302
  %310 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %311 = icmp eq ptr %310, null
  br i1 %311, label %315, label %312, !prof !280

312:                                              ; preds = %309
  %313 = icmp eq ptr %310, %2
  br i1 %313, label %316, label %314, !prof !281

314:                                              ; preds = %312
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %316

315:                                              ; preds = %309
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %316

316:                                              ; preds = %315, %314, %312
  %317 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %318 = getelementptr inbounds %struct.sched_deps_info_def, ptr %317, i64 0, i32 11
  %319 = load ptr, ptr %318, align 8, !tbaa !282
  %320 = icmp eq ptr %319, null
  br i1 %320, label %322, label %321, !prof !283

321:                                              ; preds = %316
  tail call void %319(ptr noundef nonnull %305, i32 noundef 67108864) #29, !prof !677
  br label %322

322:                                              ; preds = %321, %316
  br i1 %311, label %323, label %380, !prof !280

323:                                              ; preds = %322
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %380

324:                                              ; preds = %302
  %325 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !143
  %327 = load i32, ptr %326, align 8
  %328 = and i32 %327, 65535
  %329 = icmp eq i32 %328, 37
  br i1 %329, label %330, label %338, !prof !678

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %332 = load i32, ptr %331, align 8, !tbaa !143
  %333 = icmp ugt i32 %332, 52
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = tail call ptr @get_reg_known_value(i32 noundef %332) #29
  %336 = icmp eq ptr %335, null
  %337 = select i1 %336, ptr %326, ptr %335
  br label %338

338:                                              ; preds = %324, %330, %334
  %339 = phi ptr [ %337, %334 ], [ %326, %330 ], [ %326, %324 ]
  %340 = tail call i32 @rtx_addr_can_trap_p(ptr noundef %339) #29
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %380, label %342, !prof !679

342:                                              ; preds = %338
  %343 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %344 = getelementptr inbounds %struct.sched_deps_info_def, ptr %343, i64 0, i32 12
  %345 = load i8, ptr %344, align 8
  %346 = and i8 %345, 4
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %364, label %348, !prof !680

348:                                              ; preds = %342
  %349 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %350 = getelementptr inbounds %struct.common_sched_info_def, ptr %349, i64 0, i32 4
  %351 = load i32, ptr %350, align 8, !tbaa !173
  %352 = icmp eq i32 %351, 4
  br i1 %352, label %353, label %364

353:                                              ; preds = %348
  %354 = load ptr, ptr @spec_info, align 8, !tbaa !132
  %355 = load i32, ptr %354, align 8, !tbaa !681
  %356 = and i32 %355, 258048
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %364, label %358

358:                                              ; preds = %353
  %359 = getelementptr inbounds %struct.sched_deps_info_def, ptr %343, i64 0, i32 11
  %360 = load ptr, ptr %359, align 8, !tbaa !282
  %361 = icmp eq ptr %360, null
  br i1 %361, label %380, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %304, align 8, !tbaa !143
  tail call void %360(ptr noundef %363, i32 noundef 67362816) #29
  br label %380

364:                                              ; preds = %353, %348, %342
  %365 = load ptr, ptr %304, align 8, !tbaa !143
  %366 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368, !prof !280

368:                                              ; preds = %364
  %369 = icmp eq ptr %366, %2
  br i1 %369, label %372, label %370, !prof !281

370:                                              ; preds = %368
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %372

371:                                              ; preds = %364
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %372

372:                                              ; preds = %371, %370, %368
  %373 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %374 = getelementptr inbounds %struct.sched_deps_info_def, ptr %373, i64 0, i32 11
  %375 = load ptr, ptr %374, align 8, !tbaa !282
  %376 = icmp eq ptr %375, null
  br i1 %376, label %378, label %377, !prof !283

377:                                              ; preds = %372
  tail call void %375(ptr noundef %365, i32 noundef 67108864) #29, !prof !683
  br label %378

378:                                              ; preds = %377, %372
  br i1 %367, label %379, label %380, !prof !280

379:                                              ; preds = %378
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %380

380:                                              ; preds = %379, %378, %323, %322, %362, %358, %338
  %381 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !143
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %302, !prof !684, !llvm.loop !685

384:                                              ; preds = %380, %298, %224
  %385 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %386 = load i8, ptr %385, align 4
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %389, label %416, !prof !686

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %391 = load i32, ptr %2, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 7
  br i1 %393, label %398, label %394, !prof !687

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %396 = load i32, ptr %395, align 8, !tbaa !295
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr %395, align 8, !tbaa !295
  br label %398

398:                                              ; preds = %394, %389
  %399 = load ptr, ptr %0, align 8, !tbaa !132
  %400 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %399) #29
  store ptr %400, ptr %0, align 8, !tbaa !132
  %401 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %402 = getelementptr inbounds %struct.sched_deps_info_def, ptr %401, i64 0, i32 12
  %403 = load i8, ptr %402, align 8
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %411, label %406, !prof !688

406:                                              ; preds = %398
  %407 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %1) #29
  %408 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !143
  %410 = tail call ptr @cselib_subst_to_values(ptr noundef %409) #29
  store ptr %410, ptr %408, align 8, !tbaa !143
  br label %411

411:                                              ; preds = %398, %406
  %412 = phi ptr [ %407, %406 ], [ %1, %398 ]
  %413 = tail call ptr @canon_rtx(ptr noundef %412) #29
  %414 = load ptr, ptr %390, align 8, !tbaa !132
  %415 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %413, ptr noundef %414) #29
  store ptr %415, ptr %390, align 8, !tbaa !132
  br label %416

416:                                              ; preds = %411, %384
  %417 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %418, ptr noundef nonnull %2)
  br i1 %8, label %524, label %419, !prof !689

419:                                              ; preds = %416
  %420 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %421 = getelementptr inbounds %struct.sched_deps_info_def, ptr %420, i64 0, i32 6
  %422 = load ptr, ptr %421, align 8, !tbaa !633
  %423 = icmp eq ptr %422, null
  br i1 %423, label %524, label %424, !prof !690

424:                                              ; preds = %419
  tail call void %422() #29, !prof !691
  br label %524

425:                                              ; preds = %15
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %2, i32 noundef 1, i32 noundef 0)
  br label %481

426:                                              ; preds = %15
  %427 = and i32 %16, 134217728
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %481, label %429

429:                                              ; preds = %426
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %481

430:                                              ; preds = %15
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %2, i32 noundef 1, i32 noundef 1)
  br label %431

431:                                              ; preds = %15, %15, %430
  %432 = icmp eq i32 %17, 17
  br i1 %432, label %433, label %437

433:                                              ; preds = %431
  %434 = load i32, ptr %1, align 8
  %435 = and i32 %434, 134217728
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %433, %431
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !147
  br label %438

438:                                              ; preds = %437, %433
  br i1 %432, label %439, label %481

439:                                              ; preds = %438
  %440 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !143
  %442 = load i32, ptr %441, align 8, !tbaa !328
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %454

444:                                              ; preds = %439, %444
  %445 = phi i64 [ %449, %444 ], [ 0, %439 ]
  %446 = phi ptr [ %450, %444 ], [ %441, %439 ]
  %447 = getelementptr inbounds %struct.rtvec_def, ptr %446, i64 0, i32 1, i64 %445
  %448 = load ptr, ptr %447, align 8, !tbaa !132
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %448, ptr noundef %2)
  %449 = add nuw nsw i64 %445, 1
  %450 = load ptr, ptr %440, align 8, !tbaa !143
  %451 = load i32, ptr %450, align 8, !tbaa !328
  %452 = sext i32 %451 to i64
  %453 = icmp slt i64 %449, %452
  br i1 %453, label %444, label %454, !llvm.loop !692

454:                                              ; preds = %444, %439
  br i1 %8, label %524, label %455

455:                                              ; preds = %454
  %456 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %457 = getelementptr inbounds %struct.sched_deps_info_def, ptr %456, i64 0, i32 6
  %458 = load ptr, ptr %457, align 8, !tbaa !633
  %459 = icmp eq ptr %458, null
  br i1 %459, label %524, label %460

460:                                              ; preds = %455
  tail call void %458() #29
  br label %524

461:                                              ; preds = %15, %15, %15, %15
  %462 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %463, ptr noundef %2)
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br i1 %8, label %524, label %464, !prof !693

464:                                              ; preds = %461
  %465 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %466 = getelementptr inbounds %struct.sched_deps_info_def, ptr %465, i64 0, i32 6
  %467 = load ptr, ptr %466, align 8, !tbaa !633
  %468 = icmp eq ptr %467, null
  br i1 %468, label %524, label %469

469:                                              ; preds = %464
  tail call void %467() #29
  br label %524

470:                                              ; preds = %15, %15
  %471 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %472, ptr noundef %2)
  %473 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %474 = load ptr, ptr %473, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %474, ptr noundef %2)
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br i1 %8, label %524, label %475

475:                                              ; preds = %470
  %476 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %477 = getelementptr inbounds %struct.sched_deps_info_def, ptr %476, i64 0, i32 6
  %478 = load ptr, ptr %477, align 8, !tbaa !633
  %479 = icmp eq ptr %478, null
  br i1 %479, label %524, label %480

480:                                              ; preds = %475
  tail call void %478() #29
  br label %524

481:                                              ; preds = %15, %438, %426, %429, %425
  %482 = zext nneg i32 %17 to i64
  %483 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !132
  %485 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %482
  %486 = load i8, ptr %485, align 1, !tbaa !143
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %517, label %488, !prof !694

488:                                              ; preds = %481
  %489 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %490 = zext i8 %486 to i64
  br label %491

491:                                              ; preds = %488, %515
  %492 = phi i64 [ %490, %488 ], [ %493, %515 ]
  %493 = add nsw i64 %492, -1
  %494 = getelementptr inbounds i8, ptr %484, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !143
  switch i8 %495, label %515 [
    i8 101, label %502
    i8 69, label %496
  ], !prof !695

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %498 = getelementptr inbounds [1 x %union.rtunion_def], ptr %497, i64 0, i64 %493
  %499 = load ptr, ptr %498, align 8, !tbaa !143
  %500 = load i32, ptr %499, align 8, !tbaa !328
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %505, label %515

502:                                              ; preds = %491
  %503 = getelementptr inbounds [1 x %union.rtunion_def], ptr %489, i64 0, i64 %493
  %504 = load ptr, ptr %503, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %504, ptr noundef %2)
  br label %515

505:                                              ; preds = %496, %505
  %506 = phi i64 [ %510, %505 ], [ 0, %496 ]
  %507 = phi ptr [ %511, %505 ], [ %499, %496 ]
  %508 = getelementptr inbounds %struct.rtvec_def, ptr %507, i64 0, i32 1, i64 %506
  %509 = load ptr, ptr %508, align 8, !tbaa !132
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %509, ptr noundef %2)
  %510 = add nuw nsw i64 %506, 1
  %511 = load ptr, ptr %498, align 8, !tbaa !143
  %512 = load i32, ptr %511, align 8, !tbaa !328
  %513 = sext i32 %512 to i64
  %514 = icmp slt i64 %510, %513
  br i1 %514, label %505, label %515, !llvm.loop !696

515:                                              ; preds = %505, %496, %491, %502
  %516 = icmp sgt i64 %492, 1
  br i1 %516, label %491, label %517, !prof !697, !llvm.loop !698

517:                                              ; preds = %515, %481
  br i1 %8, label %524, label %518, !prof !699

518:                                              ; preds = %517
  %519 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %520 = getelementptr inbounds %struct.sched_deps_info_def, ptr %519, i64 0, i32 6
  %521 = load ptr, ptr %520, align 8, !tbaa !633
  %522 = icmp eq ptr %521, null
  br i1 %522, label %524, label %523, !prof !700

523:                                              ; preds = %518
  tail call void %521() #29, !prof !701
  br label %524

524:                                              ; preds = %470, %461, %6, %517, %518, %523, %475, %480, %464, %469, %454, %455, %460, %416, %419, %424, %194, %195, %200, %19, %20, %25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sched_analyze_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #11 !prof !702 !PGOFuncName !703 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  %9 = icmp eq ptr %5, null
  br i1 %9, label %10, label %11, !prof !704

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.1) #29
  br label %479

11:                                               ; preds = %3
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %19, label %13, !prof !705

13:                                               ; preds = %11
  %14 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !629

18:                                               ; preds = %13
  tail call void %16(ptr noundef nonnull %5) #29, !prof !707
  br label %19

19:                                               ; preds = %18, %13, %11
  %20 = load i32, ptr %5, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %55, !prof !704

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  %26 = load i32, ptr %25, align 8, !tbaa !328
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %41
  %31 = phi i64 [ %29, %28 ], [ %32, %41 ]
  %32 = add nsw i64 %31, -1
  %33 = load ptr, ptr %24, align 8, !tbaa !143
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %37) #29
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef %40, ptr noundef %2)
  br label %41

41:                                               ; preds = %30, %39
  %42 = icmp sgt i64 %31, 1
  br i1 %42, label %30, label %43, !llvm.loop !708

43:                                               ; preds = %41, %23
  br i1 %12, label %50, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %46 = getelementptr inbounds %struct.sched_deps_info_def, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !709
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void %47() #29
  br label %50

50:                                               ; preds = %49, %44, %43
  %51 = icmp eq i32 %7, 23
  br i1 %51, label %52, label %479

52:                                               ; preds = %50
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %54, ptr noundef %2)
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  br label %479

55:                                               ; preds = %19, %74
  %56 = phi ptr [ %76, %74 ], [ %5, %19 ]
  %57 = load i32, ptr %56, align 8
  %58 = trunc i32 %57 to i16
  switch i16 %58, label %465 [
    i16 43, label %307
    i16 37, label %77
    i16 40, label %62
    i16 120, label %62
    i16 39, label %59
  ], !prof !710

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %56) #29
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %55, %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %64, ptr noundef %2)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, ptr %56, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 120
  br i1 %68, label %69, label %74, !prof !711

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %71, ptr noundef %2)
  %72 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %73, ptr noundef %2)
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !143
  br label %55, !llvm.loop !712

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !143
  %80 = lshr i32 %57, 16
  %81 = and i32 %80, 255
  %82 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %130, !prof !636

84:                                               ; preds = %77
  %85 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %86 = getelementptr inbounds %struct.common_sched_info_def, ptr %85, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !173
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %130

89:                                               ; preds = %84
  %90 = tail call i32 @max_reg_num() #29
  %91 = add nsw i32 %90, -1
  %92 = icmp sgt i32 %91, %79
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %95 = load i32, ptr %94, align 8, !tbaa !473
  %96 = icmp sgt i32 %95, %79
  br i1 %96, label %130, label %97

97:                                               ; preds = %93, %89
  %98 = add nsw i32 %79, 1
  %99 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2065, ptr noundef nonnull @.str.1) #29
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %107 = load i8, ptr %106, align 4
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  br label %128

112:                                              ; preds = %105, %102
  %113 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %114 = load i32, ptr %113, align 8, !tbaa !473
  %115 = icmp sgt i32 %114, %79
  br i1 %115, label %130, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %118 = load ptr, ptr %117, align 8, !tbaa !357
  %119 = sext i32 %98 to i64
  %120 = mul nsw i64 %119, 40
  %121 = tail call ptr @xrealloc(ptr noundef %118, i64 noundef %120) #29
  store ptr %121, ptr %117, align 8, !tbaa !357
  %122 = load i32, ptr %113, align 8, !tbaa !473
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.deps_reg, ptr %121, i64 %123
  %125 = sub nsw i32 %98, %122
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %124, i8 0, i64 %127, i1 false)
  br label %128

128:                                              ; preds = %110, %116
  %129 = phi ptr [ %113, %116 ], [ %111, %110 ]
  store i32 %98, ptr %129, align 8, !tbaa !473
  br label %130

130:                                              ; preds = %128, %112, %93, %84, %77
  %131 = load i32, ptr @max_regno, align 4, !tbaa !147
  %132 = add i32 %131, -1
  %133 = zext i32 %132 to i64
  %134 = load i64, ptr @reg_info_p_size, align 8, !tbaa !253
  %135 = icmp ugt i64 %134, %133
  br i1 %135, label %151, label %136, !prof !254

136:                                              ; preds = %130
  %137 = add nsw i32 %131, 128
  %138 = sext i32 %137 to i64
  %139 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %143 = getelementptr inbounds %struct.common_sched_info_def, ptr %142, i64 0, i32 4
  %144 = load i32, ptr %143, align 8, !tbaa !173
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %147, label %146

146:                                              ; preds = %141, %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #29
  br label %147

147:                                              ; preds = %146, %141
  %148 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %149 = load i64, ptr @reg_info_p_size, align 8, !tbaa !253
  %150 = tail call ptr @xrecalloc(ptr noundef %148, i64 noundef %138, i64 noundef %149, i64 noundef 28) #29
  store ptr %150, ptr @reg_info_p, align 8, !tbaa !132
  store i64 %138, ptr @reg_info_p_size, align 8, !tbaa !253
  br label %151

151:                                              ; preds = %130, %147
  %152 = icmp slt i32 %79, 53
  br i1 %152, label %153, label %212, !prof !254

153:                                              ; preds = %151
  %154 = sext i32 %79 to i64
  %155 = zext nneg i32 %81 to i64
  %156 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %154, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !143
  %158 = zext i8 %157 to i32
  %159 = trunc i32 %6 to i16
  %160 = icmp eq i8 %157, 0
  switch i16 %159, label %163 [
    i16 23, label %162
    i16 24, label %161
  ], !prof !713

161:                                              ; preds = %153
  br i1 %160, label %286, label %180, !prof !637

162:                                              ; preds = %153
  br i1 %160, label %286, label %164, !prof !714

163:                                              ; preds = %153
  br i1 %160, label %286, label %196, !prof !715

164:                                              ; preds = %162, %178
  %165 = phi i32 [ %166, %178 ], [ %158, %162 ]
  %166 = add nsw i32 %165, -1
  %167 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %168 = getelementptr inbounds %struct.sched_deps_info_def, ptr %167, i64 0, i32 7
  %169 = load ptr, ptr %168, align 8, !tbaa !588
  %170 = icmp eq ptr %169, null
  br i1 %170, label %178, label %171, !prof !716

171:                                              ; preds = %164
  %172 = add nsw i32 %166, %79
  %173 = icmp eq ptr %169, @haifa_note_reg_set
  br i1 %173, label %174, label %177, !prof !717

174:                                              ; preds = %171
  %175 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %176 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %175, i32 noundef %172) #29
  br label %178

177:                                              ; preds = %171
  tail call void %169(i32 noundef %172) #29, !prof !718
  br label %178

178:                                              ; preds = %174, %177, %164
  %179 = icmp sgt i32 %165, 1
  br i1 %179, label %164, label %286, !prof !714, !llvm.loop !719

180:                                              ; preds = %161, %194
  %181 = phi i32 [ %182, %194 ], [ %158, %161 ]
  %182 = add nsw i32 %181, -1
  %183 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %184 = getelementptr inbounds %struct.sched_deps_info_def, ptr %183, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !590
  %186 = icmp eq ptr %185, null
  br i1 %186, label %194, label %187, !prof !638

187:                                              ; preds = %180
  %188 = add nsw i32 %182, %79
  %189 = icmp eq ptr %185, @haifa_note_reg_use
  br i1 %189, label %190, label %193, !prof !639

190:                                              ; preds = %187
  %191 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %192 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %191, i32 noundef %188) #29
  br label %194

193:                                              ; preds = %187
  tail call void %185(i32 noundef %188) #29, !prof !720
  br label %194

194:                                              ; preds = %190, %193, %180
  %195 = icmp sgt i32 %181, 1
  br i1 %195, label %180, label %286, !prof !637, !llvm.loop !641

196:                                              ; preds = %163, %210
  %197 = phi i32 [ %198, %210 ], [ %158, %163 ]
  %198 = add nsw i32 %197, -1
  %199 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %200 = getelementptr inbounds %struct.sched_deps_info_def, ptr %199, i64 0, i32 8
  %201 = load ptr, ptr %200, align 8, !tbaa !589
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203, !prof !721

203:                                              ; preds = %196
  %204 = add nsw i32 %198, %79
  %205 = icmp eq ptr %201, @haifa_note_reg_clobber
  br i1 %205, label %206, label %209, !prof !722

206:                                              ; preds = %203
  %207 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %208 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %207, i32 noundef %204) #29
  br label %210

209:                                              ; preds = %203
  tail call void %201(i32 noundef %204) #29, !prof !723
  br label %210

210:                                              ; preds = %206, %209, %196
  %211 = icmp sgt i32 %197, 1
  br i1 %211, label %196, label %286, !prof !715, !llvm.loop !724

212:                                              ; preds = %151
  %213 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %214 = load i32, ptr %213, align 8, !tbaa !473
  %215 = icmp sgt i32 %214, %79
  br i1 %215, label %223, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !143
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65534
  %221 = icmp eq i32 %220, 24
  br i1 %221, label %286, label %222

222:                                              ; preds = %216
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #29
  br label %286

223:                                              ; preds = %212
  %224 = trunc i32 %6 to i16
  %225 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  switch i16 %224, label %234 [
    i16 23, label %226
    i16 24, label %230
  ]

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.sched_deps_info_def, ptr %225, i64 0, i32 7
  %228 = load ptr, ptr %227, align 8, !tbaa !588
  %229 = icmp eq ptr %228, null
  br i1 %229, label %240, label %238

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.sched_deps_info_def, ptr %225, i64 0, i32 9
  %232 = load ptr, ptr %231, align 8, !tbaa !590
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %238

234:                                              ; preds = %223
  %235 = getelementptr inbounds %struct.sched_deps_info_def, ptr %225, i64 0, i32 8
  %236 = load ptr, ptr %235, align 8, !tbaa !589
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %234, %230, %226
  %239 = phi ptr [ %228, %226 ], [ %232, %230 ], [ %236, %234 ]
  tail call void %239(i32 noundef %79) #29
  br label %240

240:                                              ; preds = %238, %234, %230, %226
  %241 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = tail call zeroext i8 @get_reg_known_equiv_p(i32 noundef %79) #29
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %243
  %247 = tail call ptr @get_reg_known_value(i32 noundef %79) #29
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 43
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %253, ptr noundef %2)
  br label %254

254:                                              ; preds = %251, %246, %243, %240
  %255 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %256 = zext nneg i32 %79 to i64
  %257 = getelementptr inbounds %struct.reg_info_t, ptr %255, i64 %256, i32 3
  %258 = load i32, ptr %257, align 4, !tbaa !642
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %286

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %262 = load i8, ptr %261, align 4
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  %265 = icmp eq i32 %7, 24
  %266 = and i1 %265, %264
  br i1 %266, label %267, label %275

267:                                              ; preds = %260
  %268 = load i32, ptr %2, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 7
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %273 = load ptr, ptr %272, align 8, !tbaa !644
  %274 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %273) #29
  store ptr %274, ptr %272, align 8, !tbaa !644
  br label %286

275:                                              ; preds = %267, %260
  %276 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %277 = load ptr, ptr %276, align 8, !tbaa !143
  %278 = icmp eq ptr %277, null
  br i1 %278, label %286, label %279

279:                                              ; preds = %275, %279
  %280 = phi ptr [ %284, %279 ], [ %277, %275 ]
  %281 = getelementptr inbounds %struct.rtx_def, ptr %280, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !143
  tail call void @add_dependence(ptr noundef %2, ptr noundef %282, i32 noundef 12)
  %283 = getelementptr inbounds %struct.rtx_def, ptr %280, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !143
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %279, !llvm.loop !286

286:                                              ; preds = %279, %194, %178, %210, %275, %161, %162, %163, %216, %222, %254, %271
  %287 = and i32 %79, -8
  %288 = icmp eq i32 %287, 8
  br i1 %288, label %289, label %465, !prof !725

289:                                              ; preds = %286
  %290 = icmp eq i32 %79, 8
  br i1 %290, label %292, label %291

291:                                              ; preds = %289
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %81, i32 noundef %7, ptr noundef %2)
  br label %292

292:                                              ; preds = %291, %289
  %293 = zext nneg i32 %81 to i64
  %294 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 8, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !143
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %465, label %297

297:                                              ; preds = %292
  %298 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  %299 = zext i8 %295 to i64
  br label %300

300:                                              ; preds = %297, %300
  %301 = phi i64 [ %299, %297 ], [ %303, %300 ]
  %302 = phi i64 [ %298, %297 ], [ %305, %300 ]
  %303 = add nsw i64 %301, -1
  %304 = shl i64 128, %301
  %305 = or i64 %302, %304
  %306 = icmp sgt i64 %301, 1
  br i1 %306, label %300, label %464, !llvm.loop !726

307:                                              ; preds = %55
  %308 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %309 = getelementptr inbounds %struct.sched_deps_info_def, ptr %308, i64 0, i32 12
  %310 = load i8, ptr %309, align 8
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %330, label %313, !prof !727

313:                                              ; preds = %307
  %314 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !649
  %315 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !143
  %317 = icmp eq ptr %316, null
  br i1 %317, label %321, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.mem_attrs, ptr %316, i64 0, i32 5
  %320 = load i8, ptr %319, align 8, !tbaa !661
  br label %321

321:                                              ; preds = %313, %318
  %322 = phi i8 [ %320, %318 ], [ 0, %313 ]
  %323 = tail call i32 %314(i8 noundef zeroext %322) #29
  %324 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %56) #29
  %325 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !143
  %327 = tail call ptr @cselib_lookup_from_insn(ptr noundef %326, i32 noundef %323, i32 noundef 1, ptr noundef %2) #29
  %328 = load ptr, ptr %325, align 8, !tbaa !143
  %329 = tail call ptr @cselib_subst_to_values(ptr noundef %328) #29
  store ptr %329, ptr %325, align 8, !tbaa !143
  br label %330

330:                                              ; preds = %321, %307
  %331 = phi ptr [ %324, %321 ], [ %56, %307 ]
  %332 = tail call ptr @canon_rtx(ptr noundef %331) #29
  %333 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %334 = load i8, ptr %333, align 4
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %348, !prof !728

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %339 = load i32, ptr %338, align 8, !tbaa !295
  %340 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %341 = load i32, ptr %340, align 4, !tbaa !297
  %342 = add nsw i32 %341, %339
  %343 = load ptr, ptr @compiler_params, align 8, !tbaa !132
  %344 = getelementptr inbounds %struct.param_info, ptr %343, i64 14, i32 1
  %345 = load i32, ptr %344, align 8, !tbaa !266
  %346 = icmp sgt i32 %342, %345
  br i1 %346, label %347, label %348, !prof !729

347:                                              ; preds = %337
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %461

348:                                              ; preds = %337, %330
  %349 = load ptr, ptr %0, align 8, !tbaa !143
  %350 = icmp eq ptr %349, null
  br i1 %350, label %379, label %351, !prof !730

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %353

353:                                              ; preds = %351, %374
  %354 = phi ptr [ %377, %374 ], [ %349, %351 ]
  %355 = phi ptr [ %376, %374 ], [ %352, %351 ]
  %356 = load ptr, ptr %355, align 8, !tbaa !143
  %357 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !143
  %359 = tail call i32 @anti_dependence(ptr noundef %358, ptr noundef %332) #29
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %374, label %361, !prof !731

361:                                              ; preds = %353
  %362 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !143
  %364 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %363), !range !220
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %374, !prof !732

366:                                              ; preds = %361
  %367 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %368 = getelementptr inbounds %struct.sched_deps_info_def, ptr %367, i64 0, i32 10
  %369 = load ptr, ptr %368, align 8, !tbaa !591
  %370 = icmp eq ptr %369, null
  br i1 %370, label %374, label %371, !prof !733

371:                                              ; preds = %366
  %372 = load ptr, ptr %362, align 8, !tbaa !143
  %373 = load ptr, ptr %357, align 8, !tbaa !143
  tail call void %369(ptr noundef %332, ptr noundef %373, ptr noundef %372, i32 noundef 67108864) #29, !prof !734
  br label %374

374:                                              ; preds = %371, %366, %361, %353
  %375 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1, i32 0, i32 0, i64 1
  %376 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1, i32 0, i32 0, i64 1
  %377 = load ptr, ptr %375, align 8, !tbaa !143
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %353, !prof !735, !llvm.loop !736

379:                                              ; preds = %374, %348
  %380 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %381 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %382 = load ptr, ptr %380, align 8, !tbaa !143
  %383 = icmp eq ptr %382, null
  br i1 %383, label %410, label %384, !prof !737

384:                                              ; preds = %379, %405
  %385 = phi ptr [ %408, %405 ], [ %382, %379 ]
  %386 = phi ptr [ %407, %405 ], [ %381, %379 ]
  %387 = load ptr, ptr %386, align 8, !tbaa !143
  %388 = getelementptr inbounds %struct.rtx_def, ptr %387, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !143
  %390 = tail call i32 @output_dependence(ptr noundef %389, ptr noundef %332) #29
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %405, label %392, !prof !738

392:                                              ; preds = %384
  %393 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !143
  %395 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %394), !range !220
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %405, !prof !739

397:                                              ; preds = %392
  %398 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %399 = getelementptr inbounds %struct.sched_deps_info_def, ptr %398, i64 0, i32 10
  %400 = load ptr, ptr %399, align 8, !tbaa !591
  %401 = icmp eq ptr %400, null
  br i1 %401, label %405, label %402, !prof !740

402:                                              ; preds = %397
  %403 = load ptr, ptr %393, align 8, !tbaa !143
  %404 = load ptr, ptr %388, align 8, !tbaa !143
  tail call void %400(ptr noundef %332, ptr noundef %404, ptr noundef %403, i32 noundef 33554432) #29, !prof !741
  br label %405

405:                                              ; preds = %402, %397, %392, %384
  %406 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = getelementptr inbounds %struct.rtx_def, ptr %387, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load ptr, ptr %406, align 8, !tbaa !143
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %384, !prof !742, !llvm.loop !743

410:                                              ; preds = %405, %379
  %411 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %412 = load ptr, ptr %411, align 8, !tbaa !143
  %413 = icmp eq ptr %412, null
  br i1 %413, label %436, label %414, !prof !744

414:                                              ; preds = %410, %432
  %415 = phi ptr [ %434, %432 ], [ %412, %410 ]
  %416 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !143
  %418 = load ptr, ptr @cur_insn, align 8, !tbaa !132
  %419 = icmp eq ptr %418, null
  br i1 %419, label %423, label %420, !prof !280

420:                                              ; preds = %414
  %421 = icmp eq ptr %418, %2
  br i1 %421, label %424, label %422, !prof !281

422:                                              ; preds = %420
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #29
  br label %424

423:                                              ; preds = %414
  store ptr %2, ptr @cur_insn, align 8, !tbaa !132
  br label %424

424:                                              ; preds = %423, %422, %420
  %425 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %426 = getelementptr inbounds %struct.sched_deps_info_def, ptr %425, i64 0, i32 11
  %427 = load ptr, ptr %426, align 8, !tbaa !282
  %428 = icmp eq ptr %427, null
  br i1 %428, label %430, label %429, !prof !283

429:                                              ; preds = %424
  tail call void %427(ptr noundef %417, i32 noundef 67108864) #29, !prof !745
  br label %430

430:                                              ; preds = %429, %424
  br i1 %419, label %431, label %432, !prof !280

431:                                              ; preds = %430
  store ptr null, ptr @cur_insn, align 8, !tbaa !132
  br label %432

432:                                              ; preds = %430, %431
  %433 = getelementptr inbounds %struct.rtx_def, ptr %415, i64 0, i32 1, i32 0, i32 0, i64 1
  %434 = load ptr, ptr %433, align 8, !tbaa !143
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %414, !prof !746, !llvm.loop !286

436:                                              ; preds = %432, %410
  %437 = load i8, ptr %333, align 4
  %438 = and i8 %437, 1
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %440, label %461, !prof !728

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %442 = load i32, ptr %441, align 4, !tbaa !297
  %443 = add nsw i32 %442, 1
  store i32 %443, ptr %441, align 4, !tbaa !297
  %444 = load ptr, ptr %380, align 8, !tbaa !132
  %445 = tail call ptr @alloc_INSN_LIST(ptr noundef %2, ptr noundef %444) #29
  store ptr %445, ptr %380, align 8, !tbaa !132
  %446 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %447 = getelementptr inbounds %struct.sched_deps_info_def, ptr %446, i64 0, i32 12
  %448 = load i8, ptr %447, align 8
  %449 = and i8 %448, 1
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %456, label %451, !prof !688

451:                                              ; preds = %440
  %452 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %56) #29
  %453 = getelementptr inbounds %struct.rtx_def, ptr %452, i64 0, i32 1
  %454 = load ptr, ptr %453, align 8, !tbaa !143
  %455 = tail call ptr @cselib_subst_to_values(ptr noundef %454) #29
  store ptr %455, ptr %453, align 8, !tbaa !143
  br label %456

456:                                              ; preds = %440, %451
  %457 = phi ptr [ %452, %451 ], [ %56, %440 ]
  %458 = tail call ptr @canon_rtx(ptr noundef %457) #29
  %459 = load ptr, ptr %381, align 8, !tbaa !132
  %460 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %458, ptr noundef %459) #29
  store ptr %460, ptr %381, align 8, !tbaa !132
  br label %461

461:                                              ; preds = %436, %456, %347
  %462 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %463, ptr noundef %2)
  br label %465

464:                                              ; preds = %300
  store i64 %305, ptr @implicit_reg_pending_uses, align 8, !tbaa !253
  br label %465

465:                                              ; preds = %55, %292, %464, %286, %461
  br i1 %12, label %472, label %466, !prof !705

466:                                              ; preds = %465
  %467 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %468 = getelementptr inbounds %struct.sched_deps_info_def, ptr %467, i64 0, i32 4
  %469 = load ptr, ptr %468, align 8, !tbaa !709
  %470 = icmp eq ptr %469, null
  br i1 %470, label %472, label %471, !prof !629

471:                                              ; preds = %466
  tail call void %469() #29, !prof !747
  br label %472

472:                                              ; preds = %471, %466, %465
  %473 = load i32, ptr %1, align 8
  %474 = and i32 %473, 65535
  %475 = icmp eq i32 %474, 23
  br i1 %475, label %476, label %479, !prof !748

476:                                              ; preds = %472
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  %477 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %478 = load ptr, ptr %477, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %478, ptr noundef %2)
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !143
  br label %479

479:                                              ; preds = %10, %472, %476, %50, %52
  ret void
}

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sel_mark_hard_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #11 !prof !131 !PGOFuncName !749 {
  %6 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %54, !prof !636

8:                                                ; preds = %5
  %9 = load ptr, ptr @common_sched_info, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.common_sched_info_def, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !173
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %54

13:                                               ; preds = %8
  %14 = tail call i32 @max_reg_num() #29
  %15 = add nsw i32 %14, -1
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !473
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %54, label %21

21:                                               ; preds = %17, %13
  %22 = add nsw i32 %1, 1
  %23 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2065, ptr noundef nonnull @.str.1) #29
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  br label %52

36:                                               ; preds = %29, %26
  %37 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !473
  %39 = icmp sgt i32 %38, %1
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %42 = load ptr, ptr %41, align 8, !tbaa !357
  %43 = sext i32 %22 to i64
  %44 = mul nsw i64 %43, 40
  %45 = tail call ptr @xrealloc(ptr noundef %42, i64 noundef %44) #29
  store ptr %45, ptr %41, align 8, !tbaa !357
  %46 = load i32, ptr %37, align 8, !tbaa !473
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.deps_reg, ptr %45, i64 %47
  %49 = sub nsw i32 %22, %46
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %48, i8 0, i64 %51, i1 false)
  br label %52

52:                                               ; preds = %34, %40
  %53 = phi ptr [ %37, %40 ], [ %35, %34 ]
  store i32 %22, ptr %53, align 8, !tbaa !473
  br label %54

54:                                               ; preds = %52, %36, %17, %8, %5
  tail call void @maybe_extend_reg_info_p()
  %55 = icmp slt i32 %1, 53
  br i1 %55, label %56, label %114, !prof !254

56:                                               ; preds = %54
  %57 = sext i32 %1 to i64
  %58 = zext nneg i32 %2 to i64
  %59 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %57, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !143
  %61 = zext i8 %60 to i32
  %62 = icmp eq i8 %60, 0
  switch i32 %3, label %65 [
    i32 23, label %64
    i32 24, label %63
  ], !prof !713

63:                                               ; preds = %56
  br i1 %62, label %187, label %82, !prof !637

64:                                               ; preds = %56
  br i1 %62, label %187, label %66, !prof !714

65:                                               ; preds = %56
  br i1 %62, label %187, label %98, !prof !715

66:                                               ; preds = %64, %80
  %67 = phi i32 [ %68, %80 ], [ %61, %64 ]
  %68 = add nsw i32 %67, -1
  %69 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %70 = getelementptr inbounds %struct.sched_deps_info_def, ptr %69, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !588
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73, !prof !716

73:                                               ; preds = %66
  %74 = add nsw i32 %68, %1
  %75 = icmp eq ptr %71, @haifa_note_reg_set
  br i1 %75, label %76, label %79, !prof !717

76:                                               ; preds = %73
  %77 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !132
  %78 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %77, i32 noundef %74) #29
  br label %80

79:                                               ; preds = %73
  tail call void %71(i32 noundef %74) #29, !prof !750
  br label %80

80:                                               ; preds = %76, %79, %66
  %81 = icmp sgt i32 %67, 1
  br i1 %81, label %66, label %187, !prof !714, !llvm.loop !719

82:                                               ; preds = %63, %96
  %83 = phi i32 [ %84, %96 ], [ %61, %63 ]
  %84 = add nsw i32 %83, -1
  %85 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %86 = getelementptr inbounds %struct.sched_deps_info_def, ptr %85, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !590
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89, !prof !638

89:                                               ; preds = %82
  %90 = add nsw i32 %84, %1
  %91 = icmp eq ptr %87, @haifa_note_reg_use
  br i1 %91, label %92, label %95, !prof !639

92:                                               ; preds = %89
  %93 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !132
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %93, i32 noundef %90) #29
  br label %96

95:                                               ; preds = %89
  tail call void %87(i32 noundef %90) #29, !prof !751
  br label %96

96:                                               ; preds = %92, %95, %82
  %97 = icmp sgt i32 %83, 1
  br i1 %97, label %82, label %187, !prof !637, !llvm.loop !641

98:                                               ; preds = %65, %112
  %99 = phi i32 [ %100, %112 ], [ %61, %65 ]
  %100 = add nsw i32 %99, -1
  %101 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  %102 = getelementptr inbounds %struct.sched_deps_info_def, ptr %101, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !589
  %104 = icmp eq ptr %103, null
  br i1 %104, label %112, label %105, !prof !721

105:                                              ; preds = %98
  %106 = add nsw i32 %100, %1
  %107 = icmp eq ptr %103, @haifa_note_reg_clobber
  br i1 %107, label %108, label %111, !prof !722

108:                                              ; preds = %105
  %109 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !132
  %110 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %109, i32 noundef %106) #29
  br label %112

111:                                              ; preds = %105
  tail call void %103(i32 noundef %106) #29, !prof !752
  br label %112

112:                                              ; preds = %108, %111, %98
  %113 = icmp sgt i32 %99, 1
  br i1 %113, label %98, label %187, !prof !715, !llvm.loop !724

114:                                              ; preds = %54
  %115 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %116 = load i32, ptr %115, align 8, !tbaa !473
  %117 = icmp sgt i32 %116, %1
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !143
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65534
  %123 = icmp eq i32 %122, 24
  br i1 %123, label %187, label %124

124:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #29
  br label %187

125:                                              ; preds = %114
  %126 = load ptr, ptr @sched_deps_info, align 8, !tbaa !132
  switch i32 %3, label %135 [
    i32 23, label %127
    i32 24, label %131
  ]

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.sched_deps_info_def, ptr %126, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !588
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %139

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.sched_deps_info_def, ptr %126, i64 0, i32 9
  %133 = load ptr, ptr %132, align 8, !tbaa !590
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %139

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.sched_deps_info_def, ptr %126, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !589
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135, %131, %127
  %140 = phi ptr [ %129, %127 ], [ %133, %131 ], [ %137, %135 ]
  tail call void %140(i32 noundef %1) #29
  br label %141

141:                                              ; preds = %139, %135, %131, %127
  %142 = load i32, ptr @reload_completed, align 4, !tbaa !147
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = tail call zeroext i8 @get_reg_known_equiv_p(i32 noundef %1) #29
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = tail call ptr @get_reg_known_value(i32 noundef %1) #29
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !143
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %154, ptr noundef %4)
  br label %155

155:                                              ; preds = %147, %152, %144, %141
  %156 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %157 = zext nneg i32 %1 to i64
  %158 = getelementptr inbounds %struct.reg_info_t, ptr %156, i64 %157, i32 3
  %159 = load i32, ptr %158, align 4, !tbaa !642
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %163 = load i8, ptr %162, align 4
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  %166 = icmp eq i32 %3, 24
  %167 = and i1 %166, %165
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load i32, ptr %4, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 7
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %174 = load ptr, ptr %173, align 8, !tbaa !644
  %175 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %4, ptr noundef %174) #29
  store ptr %175, ptr %173, align 8, !tbaa !644
  br label %187

176:                                              ; preds = %168, %161
  %177 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %178 = load ptr, ptr %177, align 8, !tbaa !143
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %176, %180
  %181 = phi ptr [ %185, %180 ], [ %178, %176 ]
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !143
  tail call void @add_dependence(ptr noundef %4, ptr noundef %183, i32 noundef 12)
  %184 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !143
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %180, !llvm.loop !286

187:                                              ; preds = %180, %96, %80, %112, %176, %63, %64, %65, %124, %118, %172, %155
  ret void
}

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare ptr @cselib_lookup_from_insn(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cselib_subst_to_values(ptr noundef) local_unnamed_addr #3

declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @read_dependence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) #3

declare zeroext i8 @get_reg_known_equiv_p(i32 noundef) local_unnamed_addr #3

declare ptr @get_reg_known_value(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

declare i32 @rtx_addr_can_trap_p(ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_read_modify_subreg_p(ptr noundef) local_unnamed_addr #3

declare i32 @anti_dependence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @output_dependence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @mark_insn_reg_clobber(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #9 !prof !131 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @mark_insn_reg_birth(ptr noundef %2, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @mark_insn_reg_store(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #9 !prof !131 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %3
  %10 = tail call ptr @find_reg_note(ptr noundef %2, i32 noundef 6, ptr noundef %0) #29
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  tail call fastcc void @mark_insn_reg_birth(ptr noundef %2, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %12)
  br label %13

13:                                               ; preds = %5, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_insn_reg_birth(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #9 !prof !131 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %1, %4 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %197

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !143
  %19 = icmp slt i32 %18, 53
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = sext i32 %18 to i64
  %22 = lshr i32 %13, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !143
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %197, label %28

28:                                               ; preds = %20
  %29 = zext i8 %26 to i32
  %30 = add nsw i32 %18, %29
  %31 = icmp eq i8 %2, 0
  %32 = icmp eq i8 %3, 0
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = sext i32 %30 to i64
  br label %35

35:                                               ; preds = %28, %114
  %36 = phi i64 [ %21, %28 ], [ %115, %114 ]
  %37 = icmp slt i64 %36, 53
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1864, ptr noundef nonnull @.str.1) #29
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !253
  %41 = shl nuw i64 1, %36
  %42 = and i64 %40, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %114

44:                                               ; preds = %39
  %45 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !132
  %46 = getelementptr inbounds i32, ptr %45, i64 %36
  %47 = load i32, ptr %46, align 4, !tbaa !147
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %114, label %49

49:                                               ; preds = %44
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  br i1 %31, label %59, label %53

53:                                               ; preds = %49
  %54 = and i32 %52, 255
  %55 = add nuw nsw i32 %54, 1
  %56 = and i32 %55, 255
  %57 = and i32 %52, -256
  %58 = or disjoint i32 %56, %57
  store i32 %58, ptr %51, align 4
  br label %110

59:                                               ; preds = %49
  br i1 %32, label %68, label %60

60:                                               ; preds = %59
  %61 = lshr i32 %52, 16
  %62 = and i32 %61, 255
  %63 = add nuw nsw i32 %62, 1
  %64 = shl nuw nsw i32 %63, 16
  %65 = and i32 %64, 16711680
  %66 = and i32 %52, -16711681
  %67 = or disjoint i32 %65, %66
  store i32 %67, ptr %51, align 4
  br label %110

68:                                               ; preds = %59
  %69 = lshr i32 %52, 8
  %70 = and i32 %69, 255
  %71 = add nuw nsw i32 %70, 1
  %72 = shl nuw nsw i32 %71, 8
  %73 = and i32 %72, 65280
  %74 = and i32 %52, -65281
  %75 = or disjoint i32 %73, %74
  store i32 %75, ptr %51, align 4
  %76 = load ptr, ptr @h_i_d, align 8
  %77 = load i32, ptr %33, align 8, !tbaa !143
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %76, i64 0, i32 2, i64 %78, i32 15
  %80 = load ptr, ptr %79, align 8, !tbaa !132
  %81 = icmp eq ptr %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %68
  %83 = trunc i64 %36 to i32
  br label %88

84:                                               ; preds = %88
  %85 = getelementptr inbounds %struct.reg_use_data, ptr %89, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !132
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88, !llvm.loop !753

88:                                               ; preds = %82, %84
  %89 = phi ptr [ %86, %84 ], [ %80, %82 ]
  %90 = load i32, ptr %89, align 8, !tbaa !375
  %91 = icmp eq i32 %90, %83
  br i1 %91, label %97, label %84

92:                                               ; preds = %84, %68
  %93 = and i32 %52, -16777216
  %94 = add i32 %93, 16777216
  %95 = and i32 %75, 16777215
  %96 = or disjoint i32 %95, %94
  store i32 %96, ptr %51, align 4
  br label %97

97:                                               ; preds = %88, %92
  %98 = tail call ptr @xmalloc(i64 noundef 24) #29
  %99 = trunc i64 %36 to i32
  store i32 %99, ptr %98, align 8, !tbaa !754
  %100 = getelementptr inbounds %struct.reg_set_data, ptr %98, i64 0, i32 1
  store ptr %0, ptr %100, align 8, !tbaa !756
  %101 = load ptr, ptr @h_i_d, align 8
  %102 = load i32, ptr %33, align 8, !tbaa !143
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %101, i64 0, i32 2, i64 %103, i32 16
  %105 = load ptr, ptr %104, align 8, !tbaa !757
  %106 = getelementptr inbounds %struct.reg_set_data, ptr %98, i64 0, i32 2
  store ptr %105, ptr %106, align 8, !tbaa !758
  %107 = load i32, ptr %33, align 8, !tbaa !143
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %101, i64 0, i32 2, i64 %108, i32 16
  store ptr %98, ptr %109, align 8, !tbaa !757
  br label %110

110:                                              ; preds = %97, %60, %53
  %111 = phi i32 [ %55, %53 ], [ %63, %60 ], [ %71, %97 ]
  %112 = icmp slt i32 %111, 256
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1888, ptr noundef nonnull @.str.1) #29
  br label %114

114:                                              ; preds = %113, %110, %44, %39
  %115 = add nsw i64 %36, 1
  %116 = icmp slt i64 %115, %34
  br i1 %116, label %35, label %197, !llvm.loop !759

117:                                              ; preds = %16
  %118 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !132
  %119 = zext nneg i32 %18 to i64
  %120 = getelementptr inbounds i32, ptr %118, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !147
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %197, label %123

123:                                              ; preds = %117
  %124 = zext i32 %121 to i64
  %125 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !132
  %126 = getelementptr inbounds ptr, ptr %125, i64 %119
  %127 = load ptr, ptr %126, align 8, !tbaa !132
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %124, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !147
  %134 = icmp eq i8 %2, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %123
  %136 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %124
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 255
  %139 = add nsw i32 %138, %133
  %140 = and i32 %139, 255
  %141 = and i32 %137, -256
  %142 = or disjoint i32 %140, %141
  store i32 %142, ptr %136, align 4
  br label %193

143:                                              ; preds = %123
  %144 = icmp eq i8 %3, 0
  %145 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %124
  %146 = load i32, ptr %145, align 4
  br i1 %144, label %155, label %147

147:                                              ; preds = %143
  %148 = lshr i32 %146, 16
  %149 = and i32 %148, 255
  %150 = add nsw i32 %149, %133
  %151 = shl i32 %150, 16
  %152 = and i32 %151, 16711680
  %153 = and i32 %146, -16711681
  %154 = or disjoint i32 %152, %153
  store i32 %154, ptr %145, align 4
  br label %193

155:                                              ; preds = %143
  %156 = lshr i32 %146, 8
  %157 = and i32 %156, 255
  %158 = add nsw i32 %157, %133
  %159 = shl i32 %158, 8
  %160 = and i32 %159, 65280
  %161 = and i32 %146, -65281
  %162 = or disjoint i32 %160, %161
  store i32 %162, ptr %145, align 4
  %163 = load ptr, ptr @h_i_d, align 8
  %164 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !143
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %163, i64 0, i32 2, i64 %166, i32 15
  %168 = load ptr, ptr %167, align 8, !tbaa !132
  %169 = icmp eq ptr %168, null
  br i1 %169, label %178, label %174

170:                                              ; preds = %174
  %171 = getelementptr inbounds %struct.reg_use_data, ptr %175, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !132
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174, !llvm.loop !753

174:                                              ; preds = %155, %170
  %175 = phi ptr [ %172, %170 ], [ %168, %155 ]
  %176 = load i32, ptr %175, align 8, !tbaa !375
  %177 = icmp eq i32 %176, %18
  br i1 %177, label %181, label %170

178:                                              ; preds = %170, %155
  %179 = shl i32 %133, 24
  %180 = add i32 %162, %179
  store i32 %180, ptr %145, align 4
  br label %181

181:                                              ; preds = %174, %178
  %182 = tail call ptr @xmalloc(i64 noundef 24) #29
  store i32 %18, ptr %182, align 8, !tbaa !754
  %183 = getelementptr inbounds %struct.reg_set_data, ptr %182, i64 0, i32 1
  store ptr %0, ptr %183, align 8, !tbaa !756
  %184 = load ptr, ptr @h_i_d, align 8
  %185 = load i32, ptr %164, align 8, !tbaa !143
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %184, i64 0, i32 2, i64 %186, i32 16
  %188 = load ptr, ptr %187, align 8, !tbaa !757
  %189 = getelementptr inbounds %struct.reg_set_data, ptr %182, i64 0, i32 2
  store ptr %188, ptr %189, align 8, !tbaa !758
  %190 = load i32, ptr %164, align 8, !tbaa !143
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %184, i64 0, i32 2, i64 %191, i32 16
  store ptr %182, ptr %192, align 8, !tbaa !757
  br label %193

193:                                              ; preds = %181, %147, %135
  %194 = phi i32 [ %139, %135 ], [ %150, %147 ], [ %158, %181 ]
  %195 = icmp slt i32 %194, 256
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1849, ptr noundef nonnull @.str.1) #29
  br label %197

197:                                              ; preds = %114, %20, %196, %193, %117, %11
  ret void
}

declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #3

declare ptr @remove_free_INSN_LIST_node(ptr noundef) local_unnamed_addr #3

declare ptr @remove_free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!130}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!35 = !{ptr @sched_insns_conditions_mutex_p, ptr @any_condjump_p, i64 2804494}
!36 = !{ptr @sched_insns_conditions_mutex_p, ptr @onlyjump_p, i64 603510}
!37 = !{ptr @sched_insns_conditions_mutex_p, ptr @pc_set, i64 603510}
!38 = !{ptr @sd_iterator_cond, ptr @sd_iterator_cond, i64 2647162}
!39 = !{ptr @haifa_note_reg_set, ptr @bitmap_set_bit, i64 759498}
!40 = !{ptr @haifa_note_reg_clobber, ptr @bitmap_set_bit, i64 58265}
!41 = !{ptr @deps_analyze_insn, ptr @haifa_start_insn, i64 590470}
!42 = !{ptr @deps_analyze_insn, ptr @sel_insn_is_speculation_check, i64 422399}
!43 = !{ptr @deps_analyze_insn, ptr @alloc_INSN_LIST, i64 1058568}
!44 = !{ptr @deps_analyze_insn, ptr @sched_analyze_insn, i64 3338869}
!45 = !{ptr @deps_analyze_insn, ptr @find_reg_note, i64 436966}
!46 = !{ptr @deps_analyze_insn, ptr @bitmap_set_bit, i64 20100436}
!47 = !{ptr @deps_analyze_insn, ptr @haifa_note_dep, i64 151364}
!48 = !{ptr @deps_analyze_insn, ptr @free_INSN_LIST_node, i64 298712}
!49 = !{ptr @deps_analyze_insn, ptr @free_EXPR_LIST_list, i64 447830}
!50 = !{ptr @deps_analyze_insn, ptr @free_INSN_LIST_list, i64 412254}
!51 = !{ptr @deps_analyze_insn, ptr @haifa_finish_insn, i64 590470}
!52 = !{ptr @flush_pending_lists, ptr @haifa_note_dep, i64 30138}
!53 = !{ptr @flush_pending_lists, ptr @free_INSN_LIST_node, i64 59475}
!54 = !{ptr @flush_pending_lists, ptr @free_EXPR_LIST_list, i64 118888}
!55 = !{ptr @flush_pending_lists, ptr @alloc_INSN_LIST, i64 59444}
!56 = !{ptr @sched_analyze_insn, ptr @may_trap_p, i64 3338869}
!57 = !{ptr @sched_analyze_insn, ptr @haifa_note_dep, i64 1287286}
!58 = !{ptr @sched_analyze_insn, ptr @sched_analyze_1, i64 3337968}
!59 = !{ptr @sched_analyze_insn, ptr @sched_analyze_2, i64 151787}
!60 = !{ptr @sched_analyze_insn, ptr @find_reg_note, i64 436966}
!61 = !{ptr @sched_analyze_insn, ptr @next_nonnote_insn, i64 756374}
!62 = !{ptr @sched_analyze_insn, ptr @bitmap_ior_into, i64 5140242}
!63 = !{ptr @sched_analyze_insn, ptr @bitmap_clear, i64 10390077}
!64 = !{ptr @sched_analyze_insn, ptr @sched_insns_conditions_mutex_p, i64 849}
!65 = !{ptr @sched_analyze_insn, ptr @can_throw_internal, i64 1193340}
!66 = !{ptr @sched_analyze_insn, ptr @control_flow_insn_p, i64 2145529}
!67 = !{ptr @sched_analyze_insn, ptr @xmalloc, i64 1}
!68 = !{ptr @sched_analyze_insn, ptr @add_dependence, i64 21}
!69 = !{ptr @sched_analyze_insn, ptr @any_condjump_p, i64 7267182}
!70 = !{ptr @sched_analyze_insn, ptr @onlyjump_p, i64 1563860}
!71 = !{ptr @sched_analyze_insn, ptr @pc_set, i64 1563860}
!72 = !{ptr @sched_analyze_insn, ptr @alloc_INSN_LIST, i64 16449353}
!73 = !{ptr @sched_analyze_insn, ptr @add_dependence_list_and_free, i64 368476}
!74 = !{ptr @sched_analyze_insn, ptr @free_INSN_LIST_node, i64 1047556}
!75 = !{ptr @sched_analyze_insn, ptr @bitmap_clear_bit, i64 852426}
!76 = !{ptr @sched_analyze_insn, ptr @bitmap_set_bit, i64 4917804}
!77 = !{ptr @sched_analyze_insn, ptr @sel_insn_is_speculation_check, i64 116005}
!78 = !{ptr @sched_analyze_insn, ptr @flush_pending_lists, i64 116005}
!79 = !{ptr @add_dependence_list_and_free, ptr @any_condjump_p, i64 69878}
!80 = !{ptr @add_dependence_list_and_free, ptr @onlyjump_p, i64 15038}
!81 = !{ptr @add_dependence_list_and_free, ptr @pc_set, i64 15038}
!82 = !{ptr @add_dependence_list_and_free, ptr @haifa_note_dep, i64 31910}
!83 = !{ptr @add_dependence_list_and_free, ptr @free_INSN_LIST_node, i64 62973}
!84 = !{ptr @sched_analyze, ptr @pool_alloc, i64 2952350}
!85 = !{ptr @sched_analyze, ptr @deps_analyze_insn, i64 590470}
!86 = !{ptr @sched_free_deps, ptr @sd_iterator_cond, i64 1378190}
!87 = !{ptr @sched_free_deps, ptr @pool_free, i64 3740070}
!88 = !{ptr @init_deps, ptr @xcalloc, i64 518308}
!89 = !{ptr @init_deps_reg_last, ptr @xcalloc, i64 337394}
!90 = !{ptr @free_deps, ptr @free_INSN_LIST_list, i64 19461006}
!91 = !{ptr @free_deps, ptr @free_EXPR_LIST_list, i64 2223356}
!92 = !{ptr @free_deps, ptr @bitmap_clear, i64 2223356}
!93 = !{ptr @free_deps, ptr @free, i64 855702}
!94 = !{ptr @remove_from_deps, ptr @remove_free_INSN_LIST_node, i64 8661425}
!95 = !{ptr @remove_from_deps, ptr @remove_free_EXPR_LIST_node, i64 63210}
!96 = !{ptr @remove_from_deps, ptr @bitmap_clear_bit, i64 1182417}
!97 = !{ptr @sched_deps_init, ptr @vec_heap_o_reserve_exact, i64 133}
!98 = !{ptr @sched_deps_init, ptr @create_alloc_pool, i64 76}
!99 = !{ptr @sched_deps_finish, ptr @free_alloc_pool_if_empty, i64 76}
!100 = !{ptr @sched_deps_finish, ptr @free, i64 38}
!101 = !{ptr @init_deps_global, ptr @bitmap_obstack_alloc_stat, i64 828594}
!102 = !{ptr @haifa_note_mem_dep, ptr @sd_iterator_cond, i64 825}
!103 = !{ptr @haifa_note_mem_dep, ptr @pool_alloc, i64 374}
!104 = !{ptr @haifa_note_dep, ptr @sd_iterator_cond, i64 1735185}
!105 = !{ptr @haifa_note_dep, ptr @pool_alloc, i64 787346}
!106 = !{ptr @finish_deps_global, ptr @bitmap_obstack_free, i64 828594}
!107 = !{ptr @add_dependence, ptr @haifa_note_dep, i64 5}
!108 = !{ptr @sched_analyze_2, ptr @bitmap_set_bit, i64 1940229}
!109 = !{ptr @sched_analyze_2, ptr @canon_rtx, i64 1254220}
!110 = !{ptr @sched_analyze_2, ptr @read_dependence, i64 115849}
!111 = !{ptr @sched_analyze_2, ptr @true_dependence, i64 408884}
!112 = !{ptr @sched_analyze_2, ptr @sched_insns_conditions_mutex_p, i64 1291}
!113 = !{ptr @sched_analyze_2, ptr @haifa_note_mem_dep, i64 416}
!114 = !{ptr @sched_analyze_2, ptr @haifa_note_dep, i64 30744}
!115 = !{ptr @sched_analyze_2, ptr @rtx_addr_can_trap_p, i64 192425}
!116 = !{ptr @sched_analyze_2, ptr @alloc_INSN_LIST, i64 411232}
!117 = !{ptr @sched_analyze_2, ptr @alloc_EXPR_LIST, i64 411232}
!118 = !{ptr @sched_analyze_2, ptr @sched_analyze_2, i64 7096308}
!119 = !{ptr @sched_analyze_2, ptr @sched_analyze_1, i64 452}
!120 = !{ptr @sched_analyze_1, ptr @sched_analyze_2, i64 3795082}
!121 = !{ptr @sched_analyze_1, ptr @bitmap_set_bit, i64 1654627}
!122 = !{ptr @sched_analyze_1, ptr @canon_rtx, i64 694159}
!123 = !{ptr @sched_analyze_1, ptr @anti_dependence, i64 173063}
!124 = !{ptr @sched_analyze_1, ptr @sched_insns_conditions_mutex_p, i64 1252}
!125 = !{ptr @sched_analyze_1, ptr @haifa_note_mem_dep, i64 340}
!126 = !{ptr @sched_analyze_1, ptr @output_dependence, i64 30731}
!127 = !{ptr @sched_analyze_1, ptr @haifa_note_dep, i64 58860}
!128 = !{ptr @sched_analyze_1, ptr @alloc_INSN_LIST, i64 245741}
!129 = !{ptr @sched_analyze_1, ptr @alloc_EXPR_LIST, i64 245741}
!130 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!131 = !{!"function_entry_count", i64 0}
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !{!137, !133, i64 8}
!137 = !{!"_IO_FILE", !138, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104, !138, i64 112, !138, i64 116, !139, i64 120, !140, i64 128, !134, i64 130, !134, i64 131, !133, i64 136, !139, i64 144, !133, i64 152, !133, i64 160, !133, i64 168, !133, i64 176, !139, i64 184, !138, i64 192, !134, i64 196}
!138 = !{!"int", !134, i64 0}
!139 = !{!"long", !134, i64 0}
!140 = !{!"short", !134, i64 0}
!141 = !{!137, !133, i64 16}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{!134, !134, i64 0}
!144 = !{!137, !133, i64 40}
!145 = !{!137, !133, i64 48}
!146 = !{!137, !138, i64 0}
!147 = !{!138, !138, i64 0}
!148 = distinct !{!148, !149, !150}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"llvm.loop.unroll.disable"}
!151 = !{!152, !133, i64 0}
!152 = !{!"_dep", !133, i64 0, !133, i64 8, !138, i64 16, !138, i64 20}
!153 = !{!152, !133, i64 8}
!154 = !{!152, !138, i64 16}
!155 = !{!152, !138, i64 20}
!156 = !{!"function_entry_count", i64 1618289}
!157 = !{!158, !138, i64 128}
!158 = !{!"haifa_sched_info", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !138, i64 96, !138, i64 100, !133, i64 104, !133, i64 112, !133, i64 120, !138, i64 128}
!159 = !{!"branch_weights", i32 1618289, i32 0}
!160 = !{!"function_entry_count", i64 2258026}
!161 = !{!"branch_weights", i32 949536, i32 4133571}
!162 = !{!"branch_weights", i32 976933, i32 3156638}
!163 = !{!"branch_weights", i32 0, i32 9768150}
!164 = !{!"branch_weights", i32 7666100, i32 2102050}
!165 = !{!"branch_weights", i32 0, i32 2102050}
!166 = !{!"branch_weights", i32 2102050, i32 0}
!167 = !{!"branch_weights", i32 1313486, i32 1843152}
!168 = !{!"branch_weights", i32 0, i32 3156638}
!169 = !{!"sched-deps.c;sched_get_condition_with_rev"}
!170 = !{!"branch_weights", i32 3454874, i32 6313276}
!171 = !{!172, !138, i64 4}
!172 = !{!"_haifa_deps_insn_data", !138, i64 0, !138, i64 4, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !138, i64 48}
!173 = !{!174, !138, i64 32}
!174 = !{!"common_sched_info_def", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !138, i64 32}
!175 = !{!176, !133, i64 40}
!176 = !{!"_haifa_insn_data", !138, i64 0, !138, i64 4, !138, i64 8, !138, i64 12, !138, i64 16, !140, i64 20, !138, i64 22, !138, i64 22, !134, i64 23, !138, i64 24, !138, i64 28, !138, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !138, i64 88}
!177 = !{!"function_entry_count", i64 415397}
!178 = !{!"branch_weights", i32 5248055, i32 2102888}
!179 = !{!172, !133, i64 8}
!180 = !{!"branch_weights", i32 3191363, i32 2056692}
!181 = !{!172, !133, i64 16}
!182 = !{!"branch_weights", i32 0, i32 3191363}
!183 = !{!172, !133, i64 24}
!184 = !{!172, !133, i64 32}
!185 = !{!172, !133, i64 40}
!186 = !{!"function_entry_count", i64 590470}
!187 = !{!"branch_weights", i32 1, i32 590469}
!188 = !{!"branch_weights", i32 0, i32 590470}
!189 = !{!190, !138, i64 8}
!190 = !{!"_deps_list", !133, i64 0, !138, i64 8}
!191 = !{!"branch_weights", i32 590469, i32 1}
!192 = distinct !{!192, !149, !150}
!193 = !{!190, !133, i64 0}
!194 = !{!"branch_weights", i32 2952350, i32 0}
!195 = !{!"sched-deps.c;sd_find_dep_between_no_cache"}
!196 = !{!"branch_weights", i32 1232638, i32 0}
!197 = !{!"branch_weights", i32 0, i32 2465276}
!198 = !{!"branch_weights", i32 1232638, i32 1232638}
!199 = !{!"branch_weights", i32 0, i32 1232638}
!200 = !{!"branch_weights", i32 279780, i32 952858}
!201 = !{i64 0, i64 4, !147, i64 8, i64 8, !132, i64 16, i64 8, !132, i64 24, i64 1, !143}
!202 = !{i64 0, i64 8, !132, i64 8, i64 8, !132, i64 16, i64 1, !143}
!203 = !{i64 0, i64 8, !132, i64 8, i64 1, !143}
!204 = !{i64 0, i64 1, !143}
!205 = !{!"branch_weights", i32 43470, i32 190114}
!206 = !{!"branch_weights", i32 46196, i32 143918}
!207 = !{!208, !133, i64 16}
!208 = !{!"_sd_iterator", !138, i64 0, !133, i64 8, !133, i64 16, !134, i64 24}
!209 = !{!"branch_weights", i32 190114, i32 0}
!210 = distinct !{!210, !149, !150}
!211 = !{!"branch_weights", i32 1, i32 554135}
!212 = !{!"branch_weights", i32 398722, i32 203561}
!213 = !{!"branch_weights", i32 554135, i32 48148}
!214 = distinct !{!214, !149, !150}
!215 = !{!"branch_weights", i32 0, i32 444918}
!216 = !{!217, !133, i64 0}
!217 = !{!"_dep_link", !133, i64 0, !133, i64 8, !133, i64 16}
!218 = !{!"branch_weights", i32 787720, i32 0}
!219 = !{!"branch_weights", i32 0, i32 787720}
!220 = !{i8 0, i8 2}
!221 = !{!"branch_weights", i32 1575440, i32 0}
!222 = !{!217, !133, i64 16}
!223 = !{!217, !133, i64 8}
!224 = !{!"branch_weights", i32 812181, i32 763259}
!225 = !{!"branch_weights", i32 763259, i32 0}
!226 = !{!227, !133, i64 24}
!227 = !{!"_dep_node", !217, i64 0, !152, i64 24, !217, i64 48}
!228 = !{!"branch_weights", i32 0, i32 1575440}
!229 = !{!227, !133, i64 32}
!230 = !{!"sched-deps.c;get_back_and_forw_lists"}
!231 = !{!"sched-deps.c;add_to_deps_list"}
!232 = !{!"sched-deps.c;add_or_update_dep_1"}
!233 = !{!"branch_weights", i32 787720, i32 444918}
!234 = !{!"branch_weights", i32 31328, i32 413590}
!235 = !{!"branch_weights", i32 444918, i32 0}
!236 = !{i32 1, i32 56}
!237 = distinct !{!237, !149, !150}
!238 = !{!"function_entry_count", i64 5605469}
!239 = !{!"sched-deps.c;sd_iterator_cond"}
!240 = !{!"branch_weights", i32 4025352, i32 1580117}
!241 = !{!"branch_weights", i32 1378190, i32 2647162}
!242 = !{!208, !133, i64 8}
!243 = !{!"branch_weights", i32 0, i32 2647162}
!244 = !{!208, !134, i64 24}
!245 = !{!"sched-deps.c;delete_dep_node"}
!246 = distinct !{!246, !149, !150}
!247 = !{!"function_entry_count", i64 759498}
!248 = !{!"function_entry_count", i64 58265}
!249 = !{!"function_entry_count", i64 1619300}
!250 = !{!"branch_weights", i32 1087352, i32 531948}
!251 = !{!"branch_weights", i32 759006, i32 328346}
!252 = !{!"branch_weights", i32 0, i32 759006}
!253 = !{!139, !139, i64 0}
!254 = !{!"branch_weights", i32 4495312, i32 0}
!255 = !{!"function_entry_count", i64 3338869}
!256 = !{!257, !133, i64 8}
!257 = !{!"sched_deps_info_def", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !138, i64 96, !138, i64 96, !138, i64 96}
!258 = !{!"branch_weights", i32 2005022, i32 1333847}
!259 = !{!"VP", i32 0, i64 1333847, i64 -530407077507991769, i64 599120, i64 -5191645498075075404, i64 590470, i64 8109319591881373037, i64 144257}
!260 = !{!"branch_weights", i32 0, i32 2145529, i32 0, i32 756374, i32 436966}
!261 = !{!"branch_weights", i32 601388101, i32 -764788005}
!262 = !{!"branch_weights", i32 422399, i32 0}
!263 = !{!264, !138, i64 40}
!264 = !{!"deps", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !138, i64 32, !138, i64 36, !138, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !138, i64 80, !133, i64 88, !138, i64 96, !133, i64 104, !265, i64 112, !265, i64 144, !138, i64 176, !138, i64 180}
!265 = !{!"bitmap_head_def", !133, i64 0, !133, i64 8, !138, i64 16, !133, i64 24}
!266 = !{!267, !138, i64 8}
!267 = !{!"param_info", !133, i64 0, !138, i64 8, !134, i64 12, !138, i64 16, !138, i64 20, !133, i64 24}
!268 = !{!"branch_weights", i32 0, i32 422399}
!269 = !{!264, !133, i64 48}
!270 = !{!"branch_weights", i32 436966, i32 0}
!271 = !{!"branch_weights", i32 23159198, i32 0}
!272 = !{!"branch_weights", i32 3058762, i32 20100436}
!273 = !{!"branch_weights", i32 1747864, i32 1310898}
!274 = !{!"branch_weights", i32 1310898, i32 0, i32 436966}
!275 = !{!"branch_weights", i32 0, i32 436966}
!276 = !{!"branch_weights", i32 436966, i32 22722232}
!277 = distinct !{!277, !149, !150}
!278 = !{!"branch_weights", i32 5043160, i32 3550803}
!279 = !{!"branch_weights", i32 2837129, i32 713674}
!280 = !{!"branch_weights", i32 3072830, i32 1590345}
!281 = !{!"branch_weights", i32 1590345, i32 0}
!282 = !{!257, !133, i64 88}
!283 = !{!"branch_weights", i32 1329636, i32 3333539}
!284 = !{!"VP", i32 0, i64 25939, i64 -6874542013666640028, i64 12584, i64 -6074259777161133934, i64 12374, i64 7433850701940115713, i64 978}
!285 = !{!"branch_weights", i32 713674, i32 0}
!286 = distinct !{!286, !149, !150}
!287 = !{!"branch_weights", i32 3574440, i32 1468720}
!288 = !{!"VP", i32 0, i64 53383, i64 -6874542013666640028, i64 25898, i64 -6074259777161133934, i64 25467, i64 7433850701940115713, i64 2015}
!289 = !{!"branch_weights", i32 1468720, i32 0}
!290 = distinct !{!290, !149, !150}
!291 = !{!"branch_weights", i32 552971, i32 0}
!292 = !{!"VP", i32 0, i64 25940, i64 -6874542013666640028, i64 12584, i64 -6074259777161133934, i64 12374, i64 7433850701940115713, i64 979}
!293 = !{!"VP", i32 0, i64 53384, i64 -6874542013666640028, i64 25899, i64 -6074259777161133934, i64 25467, i64 7433850701940115713, i64 2015}
!294 = !{!"branch_weights", i32 283359, i32 269612}
!295 = !{!264, !138, i64 32}
!296 = !{!"VP", i32 0, i64 25939, i64 -6874542013666640028, i64 12584, i64 -6074259777161133934, i64 12374, i64 7433850701940115713, i64 979}
!297 = !{!264, !138, i64 36}
!298 = !{!"branch_weights", i32 206127, i32 230839}
!299 = !{!264, !133, i64 56}
!300 = !{!"branch_weights", i32 0, i32 206127}
!301 = !{!"branch_weights", i32 199826, i32 6301}
!302 = !{!"branch_weights", i32 206127, i32 0}
!303 = !{!"branch_weights", i32 -1639446038, i32 0}
!304 = !{!264, !133, i64 64}
!305 = !{!264, !138, i64 80}
!306 = !{!"branch_weights", i32 3338869, i32 0}
!307 = !{!"branch_weights", i32 0, i32 3338869}
!308 = !{!257, !133, i64 16}
!309 = !{!"VP", i32 0, i64 1333847, i64 -6430236676124269685, i64 599120, i64 408325857919966832, i64 590470, i64 -3233456882230186266, i64 144257}
!310 = distinct !{!310, !149, !150}
!311 = distinct !{!311, !149, !150}
!312 = distinct !{!312, !149, !150}
!313 = distinct !{!313, !149, !150}
!314 = !{!"function_entry_count", i64 116005}
!315 = !{!"sched-deps.c;flush_pending_lists"}
!316 = !{!"branch_weights", i32 0, i32 552971}
!317 = !{!"VP", i32 0, i64 6886, i64 -6874542013666640028, i64 3341, i64 -6074259777161133934, i64 3285, i64 7433850701940115713, i64 259}
!318 = !{!"VP", i32 0, i64 14172, i64 -6874542013666640028, i64 6875, i64 -6074259777161133934, i64 6761, i64 7433850701940115713, i64 535}
!319 = !{!"branch_weights", i32 935941, i32 2647942}
!320 = !{!"sched-deps.c;sched_analyze_insn"}
!321 = !{!"branch_weights", i32 2145529, i32 1193340}
!322 = !{!"branch_weights", i32 3336904, i32 1965}
!323 = !{!"branch_weights", i32 1691, i32 274}
!324 = !{!"VP", i32 0, i64 195, i64 -6874542013666640028, i64 95, i64 -6074259777161133934, i64 93, i64 7433850701940115713, i64 7}
!325 = !{!"branch_weights", i32 274, i32 0}
!326 = !{!"branch_weights", i32 151718, i32 0, i32 3036912, i32 150239}
!327 = !{!"branch_weights", i32 0, i32 3036912}
!328 = !{!329, !138, i64 0}
!329 = !{!"rtvec_def", !138, i64 0, !134, i64 8}
!330 = !{!"branch_weights", i32 1, i32 150238}
!331 = !{!"branch_weights", i32 0, i32 301125}
!332 = !{!"branch_weights", i32 69, i32 149076, i32 151980}
!333 = !{!"branch_weights", i32 150238, i32 150887}
!334 = distinct !{!334, !149, !150}
!335 = !{!"branch_weights", i32 436966, i32 2901903}
!336 = !{!"branch_weights", i32 1, i32 0}
!337 = distinct !{!337, !149, !150}
!338 = !{!"branch_weights", i32 756374, i32 2582495}
!339 = !{!"branch_weights", i32 0, i32 1}
!340 = !{!"branch_weights", i32 640369, i32 0, i32 116005}
!341 = !{!"branch_weights", i32 0, i32 756374}
!342 = distinct !{!342, !149, !150}
!343 = !{!257, !133, i64 0}
!344 = !{!"branch_weights", i32 492250, i32 148119}
!345 = !{!265, !133, i64 24}
!346 = !{!"VP", i32 0, i64 148119, i64 -2819070364849974170, i64 148119}
!347 = !{!265, !133, i64 0}
!348 = !{!"branch_weights", i32 148119, i32 0}
!349 = !{!350, !138, i64 16}
!350 = !{!"bitmap_element_def", !133, i64 0, !133, i64 8, !138, i64 16, !134, i64 24}
!351 = distinct !{!351, !149, !150}
!352 = !{!"branch_weights", i32 1, i32 148118}
!353 = !{!"branch_weights", i32 148118, i32 1}
!354 = distinct !{!354, !149, !150}
!355 = !{!350, !133, i64 0}
!356 = distinct !{!356, !150}
!357 = !{!264, !133, i64 104}
!358 = !{!359, !138, i64 32}
!359 = !{!"deps_reg", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !138, i64 32, !138, i64 36}
!360 = !{!359, !133, i64 0}
!361 = distinct !{!361, !149, !150}
!362 = !{!"branch_weights", i32 640218, i32 151}
!363 = !{!"branch_weights", i32 151, i32 0}
!364 = !{!"VP", i32 0, i64 107, i64 -6874542013666640028, i64 52, i64 -6074259777161133934, i64 51, i64 7433850701940115713, i64 4}
!365 = distinct !{!365, !149, !150}
!366 = !{!"branch_weights", i32 367982, i32 272387}
!367 = !{!"branch_weights", i32 272387, i32 0}
!368 = distinct !{!368, !149, !150}
!369 = !{!"branch_weights", i32 1, i32 640368}
!370 = !{!"VP", i32 0, i64 503293, i64 -6874542013666640028, i64 244173, i64 -6074259777161133934, i64 240108, i64 7433850701940115713, i64 19009}
!371 = !{!"branch_weights", i32 640368, i32 63674}
!372 = !{!"branch_weights", i32 1193340, i32 2145529}
!373 = !{!"branch_weights", i32 1193340, i32 0}
!374 = !{!"branch_weights", i32 2145529, i32 0}
!375 = !{!376, !138, i64 0}
!376 = !{!"reg_use_data", !138, i64 0, !133, i64 8, !133, i64 16, !133, i64 24}
!377 = !{!376, !133, i64 8}
!378 = !{!176, !133, i64 72}
!379 = !{!376, !133, i64 24}
!380 = !{!376, !133, i64 16}
!381 = distinct !{!381, !149, !150}
!382 = distinct !{!382, !149, !150}
!383 = distinct !{!383, !149, !150}
!384 = distinct !{!384, !149, !150}
!385 = distinct !{!385, !149, !150}
!386 = !{!176, !133, i64 56}
!387 = !{!176, !133, i64 64}
!388 = distinct !{!388, !149, !150}
!389 = !{!264, !133, i64 88}
!390 = distinct !{!390, !149, !150}
!391 = distinct !{!391, !149, !150}
!392 = !{!"branch_weights", i32 1752577, i32 1586292}
!393 = !{!"branch_weights", i32 3338869, i32 1940123}
!394 = !{!"branch_weights", i32 1940122, i32 1}
!395 = !{!"branch_weights", i32 11928641, i32 1940122}
!396 = !{!"branch_weights", i32 1, i32 3338868}
!397 = !{!"branch_weights", i32 3338868, i32 1}
!398 = !{!"branch_weights", i32 861523, i32 1078600}
!399 = !{!"VP", i32 0, i64 771051, i64 -6874542013666640028, i64 374077, i64 -6074259777161133934, i64 367847, i64 7433850701940115713, i64 29122}
!400 = !{!"branch_weights", i32 1078600, i32 0}
!401 = !{!"branch_weights", i32 1939447, i32 676}
!402 = !{!"branch_weights", i32 676, i32 0}
!403 = !{!"VP", i32 0, i64 483, i64 -6874542013666640028, i64 234, i64 -6074259777161133934, i64 230, i64 7433850701940115713, i64 18}
!404 = !{!"branch_weights", i32 1134187, i32 805936}
!405 = distinct !{!405, !149, !150}
!406 = !{!"branch_weights", i32 175212193, i32 1747864}
!407 = !{!"branch_weights", i32 1747848, i32 16}
!408 = !{!"branch_weights", i32 16, i32 0}
!409 = !{!"branch_weights", i32 824508, i32 923356}
!410 = !{!"branch_weights", i32 3338869, i32 173621188}
!411 = distinct !{!411, !149, !150}
!412 = !{!"branch_weights", i32 2698500, i32 640369}
!413 = !{!"branch_weights", i32 640369, i32 0}
!414 = !{!"branch_weights", i32 640368, i32 1}
!415 = !{!359, !133, i64 24}
!416 = !{!359, !138, i64 36}
!417 = distinct !{!417, !149, !150}
!418 = !{!359, !133, i64 8}
!419 = distinct !{!419, !149, !150}
!420 = !{!"branch_weights", i32 2698500, i32 20211353}
!421 = !{!"branch_weights", i32 3811660, i32 16399693}
!422 = !{!"branch_weights", i32 0, i32 3811660}
!423 = !{!"branch_weights", i32 1, i32 2698499}
!424 = !{!"branch_weights", i32 2698500, i32 0}
!425 = !{!"branch_weights", i32 2698499, i32 1}
!426 = !{!"branch_weights", i32 0, i32 20211353}
!427 = !{!"branch_weights", i32 176, i32 20211177}
!428 = !{!"branch_weights", i32 88, i32 88}
!429 = !{!"branch_weights", i32 20016102, i32 195075}
!430 = !{!"VP", i32 0, i64 139451, i64 -6874542013666640028, i64 67654, i64 -6074259777161133934, i64 66528, i64 7433850701940115713, i64 5266}
!431 = !{!"branch_weights", i32 195075, i32 0}
!432 = !{!"branch_weights", i32 19971972, i32 239205}
!433 = !{!"VP", i32 0, i64 170997, i64 -6874542013666640028, i64 82959, i64 -6074259777161133934, i64 81577, i64 7433850701940115713, i64 6457}
!434 = !{!"branch_weights", i32 239205, i32 0}
!435 = !{!"branch_weights", i32 9544848, i32 10666505}
!436 = distinct !{!436, !149, !150}
!437 = !{!"branch_weights", i32 1259448, i32 1439052}
!438 = !{!"branch_weights", i32 2698500, i32 1440459}
!439 = !{!"branch_weights", i32 1440458, i32 1}
!440 = !{!"branch_weights", i32 9784220, i32 1440458}
!441 = !{!"VP", i32 0, i64 85512, i64 -6874542013666640028, i64 41486, i64 -6074259777161133934, i64 40795, i64 7433850701940115713, i64 3229}
!442 = !{!"VP", i32 0, i64 175982, i64 -6874542013666640028, i64 85378, i64 -6074259777161133934, i64 83956, i64 7433850701940115713, i64 6647}
!443 = !{!"VP", i32 0, i64 85512, i64 -6874542013666640028, i64 41485, i64 -6074259777161133934, i64 40795, i64 7433850701940115713, i64 3229}
!444 = !{!"VP", i32 0, i64 175981, i64 -6874542013666640028, i64 85378, i64 -6074259777161133934, i64 83956, i64 7433850701940115713, i64 6646}
!445 = !{!"VP", i32 0, i64 85511, i64 -6874542013666640028, i64 41485, i64 -6074259777161133934, i64 40795, i64 7433850701940115713, i64 3229}
!446 = !{!"VP", i32 0, i64 175981, i64 -6874542013666640028, i64 85377, i64 -6074259777161133934, i64 83956, i64 7433850701940115713, i64 6646}
!447 = !{!"branch_weights", i32 852426, i32 588033}
!448 = distinct !{!448, !149, !150}
!449 = !{!"branch_weights", i32 176960057, i32 0}
!450 = !{!359, !133, i64 16}
!451 = distinct !{!451, !149, !150}
!452 = !{!"branch_weights", i32 1664041, i32 1674828}
!453 = !{!"branch_weights", i32 87369665, i32 824508}
!454 = !{!"branch_weights", i32 87369665, i32 0}
!455 = !{!"branch_weights", i32 1664041, i32 86530132}
!456 = distinct !{!456, !149, !150}
!457 = !{!264, !138, i64 176}
!458 = !{!"branch_weights", i32 3222864, i32 116005}
!459 = !{!"branch_weights", i32 100412, i32 15593}
!460 = !{!"branch_weights", i32 116005, i32 0}
!461 = distinct !{!461, !149, !150}
!462 = !{!"branch_weights", i32 116005, i32 183886}
!463 = !{!"branch_weights", i32 140175, i32 43711}
!464 = !{!"branch_weights", i32 0, i32 140175}
!465 = !{!"branch_weights", i32 1, i32 116004}
!466 = !{!"branch_weights", i32 116004, i32 1}
!467 = !{!"VP", i32 0, i64 10916, i64 -6874542013666640028, i64 5295, i64 -6074259777161133934, i64 5207, i64 7433850701940115713, i64 412}
!468 = !{!"VP", i32 0, i64 22465, i64 -6874542013666640028, i64 10899, i64 -6074259777161133934, i64 10717, i64 7433850701940115713, i64 848}
!469 = !{!"branch_weights", i32 0, i32 183886}
!470 = !{!"branch_weights", i32 144225, i32 39661}
!471 = distinct !{!471, !149, !150}
!472 = !{!"branch_weights", i32 77232, i32 38773}
!473 = !{!264, !138, i64 96}
!474 = !{!"branch_weights", i32 1, i32 77231}
!475 = !{!"branch_weights", i32 4016065, i32 77231}
!476 = distinct !{!476, !149, !150}
!477 = distinct !{!477, !149, !150}
!478 = !{!"function_entry_count", i64 368476}
!479 = !{!"sched-deps.c;add_dependence_list_and_free"}
!480 = !{!"branch_weights", i32 398614, i32 315060}
!481 = !{!"branch_weights", i32 0, i32 1079292, i32 935941, i32 2647942}
!482 = !{!"VP", i32 0, i64 21873, i64 -6874542013666640028, i64 10612, i64 -6074259777161133934, i64 10435, i64 7433850701940115713, i64 825}
!483 = !{!"branch_weights", i32 913587, i32 555133}
!484 = !{!"VP", i32 0, i64 45016, i64 -6874542013666640028, i64 21839, i64 -6074259777161133934, i64 21475, i64 7433850701940115713, i64 1699}
!485 = !{!"branch_weights", i32 187028, i32 0}
!486 = !{!"branch_weights", i32 0, i32 187028}
!487 = distinct !{!487, !149, !150}
!488 = !{!"function_entry_count", i64 187028}
!489 = !{!"branch_weights", i32 590470, i32 0}
!490 = !{!"branch_weights", i32 187028, i32 403442}
!491 = distinct !{!491, !150}
!492 = !{!"branch_weights", i32 1, i32 187027}
!493 = !{!"branch_weights", i32 396784, i32 390936}
!494 = !{!"branch_weights", i32 590469, i32 197251}
!495 = distinct !{!495, !149, !150}
!496 = !{!"branch_weights", i32 415397, i32 372323}
!497 = !{!"branch_weights", i32 187027, i32 403443}
!498 = distinct !{!498, !149, !150}
!499 = !{!"sched-deps.c;clear_deps_list"}
!500 = !{!"branch_weights", i32 590470, i32 787720}
!501 = !{!"function_entry_count", i64 1111678}
!502 = !{!"branch_weights", i32 0, i32 1111678}
!503 = !{!"branch_weights", i32 518308, i32 593370}
!504 = !{!"function_entry_count", i64 337394}
!505 = !{!"branch_weights", i32 0, i32 337394}
!506 = !{!"branch_weights", i32 337394, i32 0}
!507 = !{!"branch_weights", i32 394075, i32 717603}
!508 = !{!"branch_weights", i32 1111678, i32 15593541}
!509 = !{!"branch_weights", i32 5267874, i32 10325667}
!510 = !{!"branch_weights", i32 0, i32 5267874}
!511 = !{!"branch_weights", i32 1, i32 1111677}
!512 = !{!"branch_weights", i32 1111678, i32 0}
!513 = !{!"branch_weights", i32 1111677, i32 1}
!514 = !{!"branch_weights", i32 13891587, i32 1701954}
!515 = !{!"branch_weights", i32 10718732, i32 4874809}
!516 = !{!"branch_weights", i32 15593541, i32 0}
!517 = !{!"branch_weights", i32 6044332, i32 9549209}
!518 = distinct !{!518, !149, !150}
!519 = !{!"branch_weights", i32 255976, i32 855702}
!520 = !{!"function_entry_count", i64 269460}
!521 = !{!"branch_weights", i32 47218, i32 111121}
!522 = !{!"branch_weights", i32 28230, i32 82891}
!523 = !{!"branch_weights", i32 111121, i32 0}
!524 = distinct !{!524, !149, !150}
!525 = !{!"branch_weights", i32 0, i32 269460}
!526 = !{!"branch_weights", i32 175292, i32 47084}
!527 = !{!"branch_weights", i32 12518, i32 34566}
!528 = !{!"branch_weights", i32 47084, i32 0}
!529 = !{!"branch_weights", i32 1, i32 8543}
!530 = !{!"branch_weights", i32 41430, i32 219486}
!531 = !{!"branch_weights", i32 260916, i32 0}
!532 = distinct !{!532, !149, !150}
!533 = !{!"branch_weights", i32 8543, i32 252373}
!534 = !{!"branch_weights", i32 269460, i32 8087621}
!535 = !{!"branch_weights", i32 1847004, i32 6240617}
!536 = !{!"branch_weights", i32 0, i32 1847004}
!537 = !{!"branch_weights", i32 1, i32 269459}
!538 = !{!"branch_weights", i32 269460, i32 0}
!539 = !{!"branch_weights", i32 269459, i32 1}
!540 = !{!"branch_weights", i32 7185695, i32 901926}
!541 = !{!"branch_weights", i32 1, i32 127}
!542 = !{!"branch_weights", i32 276639, i32 750613}
!543 = !{!"branch_weights", i32 901925, i32 125327}
!544 = !{!"branch_weights", i32 127, i32 115446273}
!545 = !{!"branch_weights", i32 7665174, i32 422447}
!546 = !{!"branch_weights", i32 111081, i32 311366}
!547 = !{!"branch_weights", i32 422446, i32 1}
!548 = !{!"branch_weights", i32 127, i32 54072961}
!549 = !{!"branch_weights", i32 8087621, i32 0}
!550 = !{!"branch_weights", i32 1203665, i32 6883956}
!551 = !{!"branch_weights", i32 992411, i32 5947567}
!552 = !{!"branch_weights", i32 6883955, i32 56023}
!553 = !{!"branch_weights", i32 127, i32 881146113}
!554 = !{!"branch_weights", i32 7384391, i32 703230}
!555 = !{!"branch_weights", i32 7103651, i32 280740}
!556 = !{!"branch_weights", i32 7103651, i32 0}
!557 = !{!"branch_weights", i32 1182417, i32 5921234}
!558 = distinct !{!558, !149, !150}
!559 = !{!"branch_weights", i32 22419, i32 247041}
!560 = !{!"branch_weights", i32 21576, i32 843}
!561 = !{!"branch_weights", i32 22418, i32 1}
!562 = !{!"branch_weights", i32 127, i32 2869377}
!563 = !{!"function_entry_count", i64 641205}
!564 = !{!565, !133, i64 8}
!565 = !{!"function", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !138, i64 104, !138, i64 108, !138, i64 112, !138, i64 116, !138, i64 120, !138, i64 124, !133, i64 128, !138, i64 136, !138, i64 137, !138, i64 138, !138, i64 138, !138, i64 138, !138, i64 138, !138, i64 138, !138, i64 138, !138, i64 138, !138, i64 139, !138, i64 139, !138, i64 139, !138, i64 139, !138, i64 139, !138, i64 139, !138, i64 139}
!566 = !{!567, !138, i64 24}
!567 = !{!"control_flow_graph", !133, i64 0, !133, i64 8, !133, i64 16, !138, i64 24, !138, i64 28, !138, i64 32, !133, i64 40, !138, i64 48, !134, i64 52, !134, i64 60, !138, i64 68, !138, i64 72}
!568 = !{!"branch_weights", i32 38, i32 641167}
!569 = !{!570, !138, i64 0}
!570 = !{!"VEC_haifa_deps_insn_data_def_base", !138, i64 0, !138, i64 4, !134, i64 8}
!571 = !{!"branch_weights", i32 133, i32 641072}
!572 = !{!"branch_weights", i32 38, i32 95}
!573 = !{!570, !138, i64 4}
!574 = !{!"branch_weights", i32 95, i32 0}
!575 = !{!"branch_weights", i32 0, i32 133}
!576 = !{}
!577 = !{!"VP", i32 1, i64 133, i64 513, i64 72, i64 33, i64 38, i64 257, i64 23}
!578 = !{!"branch_weights", i32 0, i32 641205}
!579 = !{!"branch_weights", i32 641167, i32 38}
!580 = distinct !{!580, !149, !150}
!581 = !{!"function_entry_count", i64 38}
!582 = !{!"branch_weights", i32 0, i32 38}
!583 = !{!"branch_weights", i32 38, i32 0}
!584 = distinct !{!584, !149, !150}
!585 = !{!"function_entry_count", i64 276198}
!586 = !{!"branch_weights", i32 0, i32 276198}
!587 = !{!"branch_weights", i32 138099, i32 138099}
!588 = !{!257, !133, i64 56}
!589 = !{!257, !133, i64 64}
!590 = !{!257, !133, i64 72}
!591 = !{!257, !133, i64 80}
!592 = !{!"sched-deps.c;haifa_start_insn"}
!593 = !{!"sched-deps.c;haifa_finish_insn"}
!594 = !{!"function_entry_count", i64 756}
!595 = !{!"sched-deps.c;haifa_note_mem_dep"}
!596 = !{!"branch_weights", i32 756, i32 0}
!597 = !{!"branch_weights", i32 340, i32 416}
!598 = !{!"branch_weights", i32 145, i32 195}
!599 = !{!"branch_weights", i32 0, i32 145}
!600 = !{!"branch_weights", i32 1591101, i32 0}
!601 = !{!"branch_weights", i32 358463, i32 1232638}
!602 = !{!"branch_weights", i32 358463, i32 0}
!603 = !{!"function_entry_count", i64 1590345}
!604 = !{!"sched-deps.c;haifa_note_dep"}
!605 = !{!"branch_weights", i32 1306773, i32 283572}
!606 = !{!"branch_weights", i32 986708, i32 320065}
!607 = !{!"branch_weights", i32 0, i32 986708}
!608 = !{!"function_entry_count", i64 489}
!609 = !{!"branch_weights", i32 0, i32 489}
!610 = !{!"branch_weights", i32 243, i32 246}
!611 = !{!"branch_weights", i32 0, i32 243}
!612 = !{!"branch_weights", i32 0, i32 246}
!613 = !{!"function_entry_count", i64 16}
!614 = !{!"VP", i32 0, i64 11, i64 -6874542013666640028, i64 5, i64 -6074259777161133934, i64 5, i64 7433850701940115713, i64 0}
!615 = distinct !{!615, !150}
!616 = !{!"function_entry_count", i64 1923577}
!617 = !{!"branch_weights", i32 1923577, i32 0}
!618 = distinct !{!618, !150}
!619 = distinct !{!619, !149, !150}
!620 = !{!"function_entry_count", i64 591920}
!621 = !{!"branch_weights", i32 591920, i32 0}
!622 = !{!"function_entry_count", i64 28172}
!623 = !{!"branch_weights", i32 28172, i32 0}
!624 = !{!"function_entry_count", i64 11043177}
!625 = !{!"sched-deps.c;sched_analyze_2"}
!626 = !{!"branch_weights", i32 0, i32 11043177}
!627 = !{!"branch_weights", i32 9186178, i32 1856999}
!628 = !{!257, !133, i64 40}
!629 = !{!"branch_weights", i32 1359295, i32 497704}
!630 = !{!"VP", i32 0, i64 497704, i64 6018196491586814936, i64 491546, i64 -74545715632693850, i64 6158}
!631 = !{!"branch_weights", i32 3422843, i32 2820579, i32 0, i32 0, i32 0, i32 781044, i32 57680, i32 756175, i32 2361416, i32 842988, i32 0, i32 0, i32 0, i32 0, i32 0, i32 452, i32 0, i32 0, i32 0, i32 0, i32 0}
!632 = !{!"branch_weights", i32 3892813, i32 522665}
!633 = !{!257, !133, i64 48}
!634 = !{!"branch_weights", i32 345267, i32 177398}
!635 = !{!"VP", i32 0, i64 177398, i64 5775349374099242852, i64 177398}
!636 = !{!"branch_weights", i32 0, i32 4495312}
!637 = !{!"branch_weights", i32 1, i32 2361415}
!638 = !{!"branch_weights", i32 0, i32 2361416}
!639 = !{!"branch_weights", i32 1940229, i32 421187}
!640 = !{!"VP", i32 0, i64 221252, i64 8273253666426072195, i64 219972, i64 61800664113347938, i64 1279}
!641 = distinct !{!641, !149, !150}
!642 = !{!643, !138, i64 12}
!643 = !{!"reg_info_t", !138, i64 0, !138, i64 4, !138, i64 8, !138, i64 12, !138, i64 16, !138, i64 20, !138, i64 24}
!644 = !{!264, !133, i64 72}
!645 = !{!"branch_weights", i32 1983730, i32 377686}
!646 = !{!"branch_weights", i32 322496, i32 55190}
!647 = !{!"VP", i32 0, i64 55190, i64 5775349374099242852, i64 54963, i64 5829204829290210433, i64 227}
!648 = !{!"branch_weights", i32 842988, i32 0}
!649 = !{!650, !133, i64 1184}
!650 = !{!"gcc_target", !651, i64 0, !653, i64 368, !654, i64 664, !138, i64 744, !133, i64 752, !133, i64 760, !133, i64 768, !133, i64 776, !133, i64 784, !133, i64 792, !133, i64 800, !133, i64 808, !133, i64 816, !133, i64 824, !133, i64 832, !133, i64 840, !133, i64 848, !133, i64 856, !133, i64 864, !133, i64 872, !133, i64 880, !133, i64 888, !133, i64 896, !133, i64 904, !133, i64 912, !133, i64 920, !133, i64 928, !133, i64 936, !133, i64 944, !133, i64 952, !133, i64 960, !133, i64 968, !133, i64 976, !133, i64 984, !133, i64 992, !133, i64 1000, !133, i64 1008, !133, i64 1016, !133, i64 1024, !133, i64 1032, !133, i64 1040, !133, i64 1048, !133, i64 1056, !139, i64 1064, !139, i64 1072, !133, i64 1080, !133, i64 1088, !133, i64 1096, !133, i64 1104, !133, i64 1112, !133, i64 1120, !133, i64 1128, !133, i64 1136, !133, i64 1144, !133, i64 1152, !133, i64 1160, !133, i64 1168, !655, i64 1176, !133, i64 1232, !133, i64 1240, !133, i64 1248, !133, i64 1256, !133, i64 1264, !133, i64 1272, !133, i64 1280, !133, i64 1288, !133, i64 1296, !133, i64 1304, !133, i64 1312, !133, i64 1320, !133, i64 1328, !133, i64 1336, !133, i64 1344, !133, i64 1352, !133, i64 1360, !133, i64 1368, !133, i64 1376, !133, i64 1384, !133, i64 1392, !133, i64 1400, !133, i64 1408, !133, i64 1416, !133, i64 1424, !133, i64 1432, !133, i64 1440, !133, i64 1448, !133, i64 1456, !139, i64 1464, !656, i64 1472, !133, i64 1664, !133, i64 1672, !133, i64 1680, !133, i64 1688, !133, i64 1696, !133, i64 1704, !133, i64 1712, !133, i64 1720, !133, i64 1728, !133, i64 1736, !133, i64 1744, !133, i64 1752, !133, i64 1760, !133, i64 1768, !133, i64 1776, !657, i64 1784, !658, i64 1792, !659, i64 1896, !660, i64 1968, !133, i64 2016, !134, i64 2024, !134, i64 2025, !134, i64 2026, !134, i64 2027, !134, i64 2028, !134, i64 2029, !134, i64 2030, !134, i64 2031, !134, i64 2032, !134, i64 2033, !134, i64 2034, !134, i64 2035}
!651 = !{!"asm_out", !133, i64 0, !133, i64 8, !133, i64 16, !652, i64 24, !652, i64 56, !133, i64 88, !133, i64 96, !133, i64 104, !133, i64 112, !133, i64 120, !133, i64 128, !133, i64 136, !133, i64 144, !133, i64 152, !133, i64 160, !133, i64 168, !133, i64 176, !133, i64 184, !133, i64 192, !133, i64 200, !133, i64 208, !133, i64 216, !133, i64 224, !133, i64 232, !133, i64 240, !133, i64 248, !133, i64 256, !133, i64 264, !133, i64 272, !133, i64 280, !133, i64 288, !133, i64 296, !133, i64 304, !133, i64 312, !133, i64 320, !133, i64 328, !133, i64 336, !133, i64 344, !133, i64 352, !133, i64 360}
!652 = !{!"asm_int_op", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24}
!653 = !{!"sched", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104, !133, i64 112, !133, i64 120, !133, i64 128, !133, i64 136, !133, i64 144, !133, i64 152, !133, i64 160, !133, i64 168, !133, i64 176, !133, i64 184, !133, i64 192, !133, i64 200, !133, i64 208, !133, i64 216, !133, i64 224, !133, i64 232, !133, i64 240, !133, i64 248, !133, i64 256, !133, i64 264, !133, i64 272, !133, i64 280, !133, i64 288}
!654 = !{!"vectorize", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72}
!655 = !{!"addr_space", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48}
!656 = !{!"calls", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104, !133, i64 112, !133, i64 120, !133, i64 128, !133, i64 136, !133, i64 144, !133, i64 152, !133, i64 160, !133, i64 168, !133, i64 176, !133, i64 184}
!657 = !{!"c", !133, i64 0}
!658 = !{!"cxx", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96}
!659 = !{!"emutls", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !134, i64 64, !134, i64 65}
!660 = !{!"target_option_hooks", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40}
!661 = !{!662, !134, i64 32}
!662 = !{!"mem_attrs", !133, i64 0, !133, i64 8, !133, i64 16, !138, i64 24, !138, i64 28, !134, i64 32}
!663 = !{!"branch_weights", i32 0, i32 842988}
!664 = !{!"branch_weights", i32 727139, i32 115849}
!665 = !{!"branch_weights", i32 115849, i32 0}
!666 = distinct !{!666, !149, !150}
!667 = !{!"branch_weights", i32 434104, i32 408884}
!668 = !{!"branch_weights", i32 407593, i32 1291}
!669 = !{!"branch_weights", i32 1291, i32 0}
!670 = !{!"branch_weights", i32 228, i32 1063}
!671 = !{!"branch_weights", i32 1063, i32 0}
!672 = !{!"VP", i32 0, i64 1063, i64 8408545790232731623, i64 489, i64 6501893523050219266, i64 416, i64 1578737845455283885, i64 158}
!673 = !{!"branch_weights", i32 408884, i32 0}
!674 = distinct !{!674, !149, !150}
!675 = !{!"branch_weights", i32 572515, i32 270473}
!676 = !{!"branch_weights", i32 192425, i32 78048}
!677 = !{!"VP", i32 0, i64 55793, i64 -6874542013666640028, i64 27068, i64 -6074259777161133934, i64 26617, i64 7433850701940115713, i64 2107}
!678 = !{!"branch_weights", i32 0, i32 192425}
!679 = !{!"branch_weights", i32 180322, i32 12103}
!680 = !{!"branch_weights", i32 12103, i32 0}
!681 = !{!682, !138, i64 0}
!682 = !{!"spec_info_def", !138, i64 0, !133, i64 8, !138, i64 16, !138, i64 20, !138, i64 24}
!683 = !{!"VP", i32 0, i64 8652, i64 -6874542013666640028, i64 4197, i64 -6074259777161133934, i64 4127, i64 7433850701940115713, i64 326}
!684 = !{!"branch_weights", i32 270473, i32 0}
!685 = distinct !{!685, !149, !150}
!686 = !{!"branch_weights", i32 411232, i32 431756}
!687 = !{!"branch_weights", i32 0, i32 411232}
!688 = !{!"branch_weights", i32 656973, i32 0}
!689 = !{!"branch_weights", i32 673940, i32 169048}
!690 = !{!"branch_weights", i32 129466, i32 39582}
!691 = !{!"VP", i32 0, i64 39582, i64 5775349374099242852, i64 35013, i64 5829204829290210433, i64 4569}
!692 = distinct !{!692, !149, !150}
!693 = !{!"branch_weights", i32 452, i32 0}
!694 = !{!"branch_weights", i32 1, i32 3422842}
!695 = !{!"branch_weights", i32 647, i32 6252868, i32 0}
!696 = distinct !{!696, !149, !150}
!697 = !{!"branch_weights", i32 2830673, i32 3422842}
!698 = distinct !{!698, !149, !150}
!699 = !{!"branch_weights", i32 2635243, i32 787600}
!700 = !{!"branch_weights", i32 562066, i32 225534}
!701 = !{!"VP", i32 0, i64 225534, i64 5775349374099242852, i64 224172, i64 5829204829290210433, i64 1362}
!702 = !{!"function_entry_count", i64 3338420}
!703 = !{!"sched-deps.c;sched_analyze_1"}
!704 = !{!"branch_weights", i32 0, i32 3338420}
!705 = !{!"branch_weights", i32 1481421, i32 1856999}
!706 = !{!257, !133, i64 24}
!707 = !{!"VP", i32 0, i64 497704, i64 6413109470862153921, i64 491546, i64 -6327152153141044355, i64 6158}
!708 = distinct !{!708, !149, !150}
!709 = !{!257, !133, i64 32}
!710 = !{!"branch_weights", i32 756106, i32 448418, i32 2133896, i32 157772, i32 0, i32 0}
!711 = !{!"branch_weights", i32 0, i32 157772}
!712 = distinct !{!712, !149, !150}
!713 = !{!"branch_weights", i32 148881, i32 1985015, i32 2361416}
!714 = !{!"branch_weights", i32 1, i32 1985014}
!715 = !{!"branch_weights", i32 1, i32 148880}
!716 = !{!"branch_weights", i32 0, i32 1985015}
!717 = !{!"branch_weights", i32 1434528, i32 550487}
!718 = !{!"VP", i32 0, i64 550487, i64 -7897706180025172577, i64 544556, i64 -1396654222356204403, i64 5931}
!719 = distinct !{!719, !149, !150}
!720 = !{!"VP", i32 0, i64 199934, i64 8273253666426072195, i64 198778, i64 61800664113347938, i64 1156}
!721 = !{!"branch_weights", i32 0, i32 148881}
!722 = !{!"branch_weights", i32 110917, i32 37964}
!723 = !{!"VP", i32 0, i64 37964, i64 1478978621742744434, i64 37964}
!724 = distinct !{!724, !149, !150}
!725 = !{!"branch_weights", i32 0, i32 2133896}
!726 = distinct !{!726, !149, !150}
!727 = !{!"branch_weights", i32 448418, i32 0}
!728 = !{!"branch_weights", i32 245741, i32 202677}
!729 = !{!"branch_weights", i32 0, i32 245741}
!730 = !{!"branch_weights", i32 275355, i32 173063}
!731 = !{!"branch_weights", i32 172560, i32 503}
!732 = !{!"branch_weights", i32 503, i32 0}
!733 = !{!"branch_weights", i32 112, i32 391}
!734 = !{!"VP", i32 0, i64 391, i64 8408545790232731623, i64 180, i64 6501893523050219266, i64 145, i64 1578737845455283885, i64 66}
!735 = !{!"branch_weights", i32 173063, i32 0}
!736 = distinct !{!736, !149, !150}
!737 = !{!"branch_weights", i32 417687, i32 30731}
!738 = !{!"branch_weights", i32 29982, i32 749}
!739 = !{!"branch_weights", i32 749, i32 0}
!740 = !{!"branch_weights", i32 135, i32 614}
!741 = !{!"VP", i32 0, i64 614, i64 8408545790232731623, i64 342, i64 6501893523050219266, i64 195, i64 1578737845455283885, i64 77}
!742 = !{!"branch_weights", i32 30731, i32 0}
!743 = distinct !{!743, !149, !150}
!744 = !{!"branch_weights", i32 275827, i32 172591}
!745 = !{!"VP", i32 0, i64 123379, i64 -6874542013666640028, i64 59857, i64 -6074259777161133934, i64 58860, i64 7433850701940115713, i64 4660}
!746 = !{!"branch_weights", i32 172591, i32 0}
!747 = !{!"VP", i32 0, i64 497704, i64 -1550722271972736832, i64 491546, i64 2040095084619936561, i64 6158}
!748 = !{!"branch_weights", i32 3188892, i32 149528}
!749 = !{!"sched-deps.c;sched_analyze_reg"}
!750 = !{!"VP", i32 0, i64 0, i64 -7897706180025172577, i64 0, i64 -1396654222356204403, i64 0}
!751 = !{!"VP", i32 0, i64 0, i64 8273253666426072195, i64 0, i64 61800664113347938, i64 0}
!752 = !{!"VP", i32 0, i64 0, i64 1478978621742744434, i64 0}
!753 = distinct !{!753, !149, !150}
!754 = !{!755, !138, i64 0}
!755 = !{!"reg_set_data", !138, i64 0, !133, i64 8, !133, i64 16}
!756 = !{!755, !133, i64 8}
!757 = !{!176, !133, i64 80}
!758 = !{!755, !133, i64 16}
!759 = distinct !{!759, !149, !150}
