; ModuleID = 'dse.c'
source_filename = "dse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.clear_alias_mode_holder = type { i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.bb_info = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.insn_info = type { i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.read_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.store_info = type { i8, i8, i32, ptr, ptr, ptr, i32, i64, i64, %union.anon, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.VEC_group_info_t_base = type { i32, i32, [1 x ptr] }
%struct.group_info = type { ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.deferred_change = type { ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.insn_size = type { i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@clear_alias_sets = internal unnamed_addr global ptr null, align 8
@disqualified_clear_alias_sets = internal unnamed_addr global ptr null, align 8
@clear_alias_mode_table = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [22 x i8] c"clear_alias_mode_pool\00", align 1
@clear_alias_mode_pool = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"dse.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dse1\00", align 1
@pass_rtl_dse1 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_dse1, ptr @rest_of_handle_dse, ptr null, ptr null, i32 0, i32 123, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"dse2\00", align 1
@pass_rtl_dse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr @gate_dse2, ptr @rest_of_handle_dse, ptr null, ptr null, i32 0, i32 124, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_dse = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"doing global processing\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"doing global spill processing\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"dse: local deletions = %d, global deletions = %d, spill deletions = %d\0A\00", align 1
@locally_deleted = internal unnamed_addr global i32 0, align 4
@globally_deleted = internal unnamed_addr global i32 0, align 4
@spill_deleted = internal unnamed_addr global i32 0, align 4
@scratch = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"rtx_store_info_pool\00", align 1
@rtx_store_info_pool = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"read_info_pool\00", align 1
@read_info_pool = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"insn_info_pool\00", align 1
@insn_info_pool = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"bb_info_pool\00", align 1
@bb_info_pool = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"rtx_group_info_pool\00", align 1
@rtx_group_info_pool = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"deferred_change_pool\00", align 1
@deferred_change_pool = internal unnamed_addr global ptr null, align 8
@rtx_group_table = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@bb_table = internal unnamed_addr global ptr null, align 8
@rtx_group_next_id = internal unnamed_addr global i32 0, align 4
@stores_off_frame_dead_at_return = internal unnamed_addr global i8 0, align 1
@clear_alias_group = internal unnamed_addr global ptr null, align 8
@rtx_group_vec = internal unnamed_addr global ptr null, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@all_blocks = internal unnamed_addr global ptr null, align 8
@cselib_discard_hook = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"cse_store_info_pool\00", align 1
@cse_store_info_pool = internal unnamed_addr global ptr null, align 8
@active_local_stores = internal unnamed_addr global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@deferred_change_list = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [91 x i8] c"Locally deleting insn %d because insn %d stores the same value and couldn't be eliminated\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"\0A**scanning insn=%d\0A\00", align 1
@block_clear_fn = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"%s call %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"removing from active\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"handling memset as BLKmode store\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"mems_found = %d, cannot_delete = %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c" adding wild read, volatile or barrier.\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c" adding wild read, canon_address failure.\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.27 = private unnamed_addr constant [27 x i8] c" processing spill load %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c" processing const load gid=%d[BLK]\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c" processing const load gid=%d[%d..%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c" processing cselib load mem:\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c" processing cselib load against insn %d\0A\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.33 = private unnamed_addr constant [20 x i8] c"found alias set %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"disqualifying alias set %d, (%s) != (%s)\0A\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.35 = private unnamed_addr constant [8 x i8] c"  mem: \00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"\0A   after cselib_expand address: \00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\0A   after canon_rtx address: \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"  gid=%d offset=%d \0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c" no cselib val - should be a wild read.\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"  varying cselib base=%u:%u offset = %d\0A\00", align 1
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [71 x i8] c"trying to replace %smode load in insn %d from %smode store in insn %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c" -- could not extract bits of stored value\0A\00", align 1
@.str.43 = private unnamed_addr constant [64 x i8] c"abandoning replacement because sequence clobbers live hardregs:\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c" -- replaced the loaded MEM with \00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c" -- replacing the loaded MEM with \00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c" led to an invalid instruction\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@optab_table = external global [159 x %struct.optab_d], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.47 = private unnamed_addr constant [15 x i8] c"%s insn=%d %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"has store\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"naked\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.50 = private unnamed_addr constant [52 x i8] c" adding wild read for (clobber (mem:BLK (scratch))\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c" processing spill store %d(%s)\0A\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c" processing const base store gid=%d[%d..%d)\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c" processing cselib store [%d..%d)\0A\00", align 1
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [48 x i8] c"    trying spill store in insn=%d alias_set=%d\0A\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"    trying store in insn=%d gid=%d[%d..%d)\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"Locally deleting insn %d \00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"alias set %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"group %d is frame related \00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"group %d(%d+%d): \00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"n \00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"p \00", align 1
@current_position = internal unnamed_addr global i32 0, align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.64 = private unnamed_addr constant [44 x i8] c"\0A\0A*** Global dataflow info after analysis.\0A\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"  in:   \00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"  in:   *MISSING*\0A\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"  gen:  \00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"  gen:  *MISSING*\0A\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"  kill: \00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"  kill: *MISSING*\0A\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"  out:  \00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"  out:  *MISSING*\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"starting to process insn %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"  v:  \00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"i = %d, index = %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"failing at i = %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"wild read\0A\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"regular read\0A\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"clear alias sets              \00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"disqualified clear alias sets \00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"Spill deleting insn %d\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !134 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !135
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !134 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !135
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !134 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !145

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !139
  %11 = load i8, ptr %3, align 1, !tbaa !146
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !134 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !145

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !139
  %11 = load i8, ptr %3, align 1, !tbaa !146
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !134 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !135
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !145

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !139
  %11 = load i8, ptr %3, align 1, !tbaa !146
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !134 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !135
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !134 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !145

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !147
  store i8 %12, ptr %4, align 1, !tbaa !146
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !134 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !145

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !147
  store i8 %12, ptr %4, align 1, !tbaa !146
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !134 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !135
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !145

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !147
  store i8 %12, ptr %4, align 1, !tbaa !146
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !134 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !134 {
  %2 = load i32, ptr %0, align 8, !tbaa !149
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !134 {
  %2 = load i32, ptr %0, align 8, !tbaa !149
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !134 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !150
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !134 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !150
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !134 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !151

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !134 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @dse_record_singleton_alias_set(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !134 {
  %3 = alloca %struct.clear_alias_mode_holder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = tail call fastcc zeroext i8 @gate_dse(), !range !154
  %5 = icmp ne i8 %4, 0
  %6 = icmp ne i32 %0, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %12, ptr @clear_alias_sets, align 8, !tbaa !135
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %13, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  %14 = tail call ptr @htab_create(i64 noundef 11, ptr noundef nonnull @clear_alias_mode_hash, ptr noundef nonnull @clear_alias_mode_eq, ptr noundef null) #18
  store ptr %14, ptr @clear_alias_mode_table, align 8, !tbaa !135
  %15 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 8, i64 noundef 100) #18
  store ptr %15, ptr @clear_alias_mode_pool, align 8, !tbaa !135
  br label %16

16:                                               ; preds = %11, %8
  %17 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %0) #18
  store i32 %0, ptr %3, align 4, !tbaa !155
  %19 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !135
  %20 = call ptr @htab_find_slot(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #18
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2968, ptr noundef nonnull @.str.2) #18
  br label %24

24:                                               ; preds = %16, %23
  %25 = load ptr, ptr @clear_alias_mode_pool, align 8, !tbaa !135
  %26 = call ptr @pool_alloc(ptr noundef %25) #18
  store ptr %26, ptr %20, align 8, !tbaa !135
  store i32 %0, ptr %26, align 4, !tbaa !155
  %27 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %26, i64 0, i32 1
  store i32 %1, ptr %27, align 4, !tbaa !157
  br label %28

28:                                               ; preds = %2, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @gate_dse() unnamed_addr #9 !prof !134 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !150
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 11) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0, %6
  %10 = load i32, ptr @optimize, align 4, !tbaa !150
  %11 = icmp sgt i32 %10, 0
  %12 = load i32, ptr @flag_dse, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 12) #18
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %9, %6
  %20 = phi i8 [ 1, %6 ], [ 0, %9 ], [ %18, %15 ]
  ret i8 %20
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @clear_alias_mode_hash(ptr nocapture noundef readonly %0) #10 !prof !134 {
  %2 = load i32, ptr %0, align 4, !tbaa !155
  ret i32 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @clear_alias_mode_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !134 {
  %3 = load i32, ptr %0, align 4, !tbaa !155
  %4 = load i32, ptr %1, align 4, !tbaa !155
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dse_invalidate_singleton_alias_set(i32 noundef %0) local_unnamed_addr #9 !prof !134 {
  %2 = tail call fastcc zeroext i8 @gate_dse(), !range !154
  %3 = icmp ne i8 %2, 0
  %4 = icmp ne i32 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %8 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %7, i32 noundef %0) #18
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_dse1() #11 !prof !158 !PGOFuncName !159 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !150
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !160
  br i1 %5, label %6, label %10, !prof !160

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 11) #18
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_dse() #11 !prof !161 !PGOFuncName !162 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ix86_args, align 4
  %6 = alloca [3 x ptr], align 16
  %7 = tail call i32 @df_set_flags(i32 noundef 32) #18
  tail call void @df_note_add_problem() #18
  tail call void @df_analyze() #18
  store i32 0, ptr @locally_deleted, align 4, !tbaa !150
  store i32 0, ptr @globally_deleted, align 4, !tbaa !150
  store i32 0, ptr @spill_deleted, align 4, !tbaa !150
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %8, ptr @scratch, align 8, !tbaa !135
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 104, i64 noundef 100) #18
  store ptr %9, ptr @rtx_store_info_pool, align 8, !tbaa !135
  %10 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.9, i64 noundef 32, i64 noundef 100) #18
  store ptr %10, ptr @read_info_pool, align 8, !tbaa !135
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.10, i64 noundef 48, i64 noundef 100) #18
  store ptr %11, ptr @insn_info_pool, align 8, !tbaa !135
  %12 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.11, i64 noundef 56, i64 noundef 100) #18
  store ptr %12, ptr @bb_info_pool, align 8, !tbaa !135
  %13 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 96, i64 noundef 100) #18
  store ptr %13, ptr @rtx_group_info_pool, align 8, !tbaa !135
  %14 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.13, i64 noundef 24, i64 noundef 10) #18
  store ptr %14, ptr @deferred_change_pool, align 8, !tbaa !135
  %15 = tail call ptr @htab_create(i64 noundef 11, ptr noundef nonnull @invariant_group_base_hash, ptr noundef nonnull @invariant_group_base_eq, ptr noundef null) #18
  store ptr %15, ptr @rtx_group_table, align 8, !tbaa !135
  %16 = load ptr, ptr @cfun, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !165
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 8) #18
  store ptr %22, ptr @bb_table, align 8, !tbaa !135
  store i32 0, ptr @rtx_group_next_id, align 4, !tbaa !150
  %23 = load ptr, ptr @cfun, align 8, !tbaa !135
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 20
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 4194304
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i8
  store i8 %28, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !146
  tail call void @init_alias_analysis() #18
  %29 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !167

31:                                               ; preds = %0
  %32 = tail call fastcc ptr @get_group_info(ptr noundef null)
  br label %33

33:                                               ; preds = %0, %31
  %34 = phi ptr [ %32, %31 ], [ null, %0 ]
  store ptr %34, ptr @clear_alias_group, align 8, !tbaa !135
  %35 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  tail call void @cselib_init(i32 noundef 0) #18
  %36 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %36, ptr @all_blocks, align 8, !tbaa !135
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef 0) #18
  %38 = load ptr, ptr @all_blocks, align 8, !tbaa !135
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %38, i32 noundef 1) #18
  %40 = load ptr, ptr @cfun, align 8, !tbaa !135
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !163
  %43 = load ptr, ptr %42, align 8, !tbaa !135
  %44 = icmp eq ptr %43, null
  br i1 %44, label %1381, label %45, !prof !168

45:                                               ; preds = %33, %1377
  %46 = phi ptr [ %1379, %1377 ], [ %43, %33 ]
  %47 = load ptr, ptr @bb_info_pool, align 8, !tbaa !135
  %48 = call ptr @pool_alloc(ptr noundef %47) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %48, i8 0, i64 56, i1 false)
  %49 = load ptr, ptr @all_blocks, align 8, !tbaa !135
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !169
  %52 = call zeroext i8 @bitmap_set_bit(ptr noundef %49, i32 noundef %51) #18
  %53 = getelementptr inbounds %struct.bb_info, ptr %48, i64 0, i32 6
  store ptr %35, ptr %53, align 8, !tbaa !171
  %54 = load i32, ptr %50, align 8, !tbaa !169
  %55 = load ptr, ptr @df, align 8, !tbaa !135
  %56 = getelementptr inbounds %struct.df, ptr %55, i64 0, i32 1, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !135
  %58 = getelementptr inbounds %struct.dataflow, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !173
  %60 = icmp ugt i32 %59, %54
  call void @llvm.assume(i1 %60)
  %61 = getelementptr inbounds %struct.dataflow, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !175
  %63 = zext i32 %54 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !135
  %66 = getelementptr inbounds %struct.df_lr_bb_info, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !176
  call void @bitmap_copy(ptr noundef %35, ptr noundef %67) #18
  call void @df_simulate_initialize_forwards(ptr noundef nonnull %46, ptr noundef %35) #18
  %68 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %69 = load i32, ptr %50, align 8, !tbaa !169
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  store ptr %48, ptr %71, align 8, !tbaa !135
  store ptr @remove_useless_values, ptr @cselib_discard_hook, align 8, !tbaa !135
  %72 = icmp sgt i32 %69, 1
  br i1 %72, label %73, label %1377, !prof !178

73:                                               ; preds = %45
  %74 = call ptr @create_alloc_pool(ptr noundef nonnull @.str.14, i64 noundef 104, i64 noundef 100) #18
  store ptr %74, ptr @cse_store_info_pool, align 8, !tbaa !135
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  call void @cselib_clear_table() #18
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !146
  %77 = load ptr, ptr %76, align 8, !tbaa !146
  %78 = icmp eq ptr %77, null
  br i1 %78, label %1201, label %79, !prof !168

79:                                               ; preds = %73, %1197
  %80 = phi ptr [ %1199, %1197 ], [ %77, %73 ]
  %81 = load ptr, ptr %75, align 8, !tbaa !146
  %82 = getelementptr inbounds %struct.rtl_bb_info, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !179
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !146
  %86 = icmp eq ptr %80, %85
  br i1 %86, label %1201, label %87, !prof !181

87:                                               ; preds = %79
  %88 = load i32, ptr %80, align 8
  %89 = and i32 %88, 65535
  %90 = add nsw i32 %89, -7
  %91 = icmp ult i32 %90, 4
  br i1 %91, label %92, label %1191, !prof !182

92:                                               ; preds = %87
  %93 = load ptr, ptr @insn_info_pool, align 8, !tbaa !135
  %94 = call ptr @pool_alloc(ptr noundef %93) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %94, i8 0, i64 48, i1 false)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97, !prof !183

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !146
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.16, i32 noundef %99)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load ptr, ptr %48, align 8, !tbaa !184
  %103 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 8
  store ptr %102, ptr %103, align 8, !tbaa !185
  %104 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 5
  store ptr %80, ptr %104, align 8, !tbaa !187
  store ptr %94, ptr %48, align 8, !tbaa !184
  %105 = load i32, ptr %80, align 8
  %106 = trunc i32 %105 to i16
  switch i16 %106, label %134 [
    i16 7, label %107
    i16 8, label %108
  ], !prof !188

107:                                              ; preds = %101
  store i8 1, ptr %94, align 8, !tbaa !189
  br label %1191

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !146
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 134283263
  %113 = icmp eq i32 %112, 134217745
  br i1 %113, label %114, label %134, !prof !190

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !135
  %117 = icmp eq ptr %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %114, %128
  %119 = phi ptr [ %130, %128 ], [ %116, %114 ]
  %120 = phi ptr [ %129, %128 ], [ %115, %114 ]
  %121 = getelementptr inbounds %struct.read_info, ptr %119, i64 0, i32 5
  %122 = getelementptr inbounds %struct.read_info, ptr %119, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !191
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load ptr, ptr %121, align 8, !tbaa !193
  %127 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  call void @pool_free(ptr noundef %127, ptr noundef nonnull %119) #18
  store ptr %126, ptr %120, align 8, !tbaa !135
  br label %128

128:                                              ; preds = %125, %118
  %129 = phi ptr [ %120, %125 ], [ %121, %118 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !135
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %118, !llvm.loop !194

132:                                              ; preds = %128, %114
  %133 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 1
  store i8 1, ptr %133, align 1, !tbaa !195
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  store i8 1, ptr %94, align 8, !tbaa !189
  br label %1191

134:                                              ; preds = %108, %101
  %135 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %136 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1
  call void @note_uses(ptr noundef nonnull %136, ptr noundef nonnull @check_mem_read_use, ptr noundef nonnull %48) #18
  %137 = load i32, ptr %80, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 10
  br i1 %139, label %140, label %453, !prof !196

140:                                              ; preds = %134
  store i8 1, ptr %94, align 8, !tbaa !189
  %141 = load i32, ptr %80, align 8
  %142 = and i32 %141, 67108864
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %196, !prof !197

144:                                              ; preds = %140
  %145 = load ptr, ptr %136, align 8, !tbaa !146
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 15
  br i1 %148, label %149, label %154, !prof !198

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !146
  %152 = getelementptr inbounds %struct.rtvec_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !135
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi ptr [ %153, %149 ], [ %145, %144 ]
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 23
  br i1 %158, label %159, label %162, !prof !199

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !146
  br label %162

162:                                              ; preds = %159, %154
  %163 = phi ptr [ %161, %159 ], [ %155, %154 ]
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 26
  br i1 %166, label %167, label %196, !prof !197

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !146
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 43
  br i1 %172, label %173, label %196, !prof !197

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !146
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 67174399
  %178 = icmp eq i32 %177, 45
  br i1 %178, label %179, label %196, !prof !197

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.rtx_def, ptr %175, i64 0, i32 1, i32 0, i32 0, i64 2
  %181 = load ptr, ptr %180, align 8, !tbaa !146
  %182 = icmp eq ptr %181, null
  br i1 %182, label %196, label %183, !prof !198

183:                                              ; preds = %179
  %184 = load i64, ptr %181, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 29
  br i1 %186, label %187, label %196, !prof !197

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.tree_function_decl, ptr %181, i64 0, i32 5
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 8191
  %191 = icmp eq i32 %190, 6477
  %192 = load ptr, ptr @block_clear_fn, align 8
  %193 = icmp eq ptr %181, %192
  %194 = select i1 %191, i1 true, i1 %193, !prof !198
  %195 = select i1 %194, ptr %181, ptr null, !prof !198
  br label %196

196:                                              ; preds = %187, %183, %179, %173, %167, %162, %140
  %197 = phi ptr [ null, %140 ], [ null, %173 ], [ null, %167 ], [ null, %162 ], [ null, %183 ], [ null, %179 ], [ %195, %187 ]
  %198 = icmp ne i32 %142, 0
  %199 = icmp ne ptr %197, null
  %200 = select i1 %198, i1 true, i1 %199, !prof !198
  br i1 %200, label %201, label %432, !prof !198

201:                                              ; preds = %196
  %202 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %203 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = select i1 %198, ptr @.str.18, ptr @.str.19
  %207 = load i32, ptr %135, align 8, !tbaa !146
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %203, ptr noundef nonnull @.str.17, ptr noundef nonnull %206, i32 noundef %207)
  br label %209

209:                                              ; preds = %205, %201
  %210 = load i32, ptr @reload_completed, align 4, !tbaa !150
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 2
  store i8 1, ptr %213, align 2, !tbaa !200
  br label %214

214:                                              ; preds = %212, %209
  %215 = icmp eq ptr %202, null
  br i1 %215, label %275, label %216

216:                                              ; preds = %214
  %217 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 2
  br label %218

218:                                              ; preds = %216, %270
  %219 = phi ptr [ null, %216 ], [ %271, %270 ]
  %220 = phi ptr [ %202, %216 ], [ %273, %270 ]
  %221 = getelementptr inbounds %struct.insn_info, ptr %220, i64 0, i32 3
  %222 = load i8, ptr %221, align 1, !tbaa !201
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %248

224:                                              ; preds = %218
  %225 = load i8, ptr %217, align 2, !tbaa !200
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %248, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.insn_info, ptr %220, i64 0, i32 6
  br label %229

229:                                              ; preds = %229, %227
  %230 = phi ptr [ %228, %227 ], [ %234, %229 ]
  %231 = load ptr, ptr %230, align 8, !tbaa !135
  %232 = load i8, ptr %231, align 8, !tbaa !202
  %233 = icmp eq i8 %232, 0
  %234 = getelementptr inbounds %struct.store_info, ptr %231, i64 0, i32 10
  br i1 %233, label %229, label %235, !llvm.loop !204

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.store_info, ptr %231, i64 0, i32 2
  %237 = load i32, ptr %236, align 4, !tbaa !205
  %238 = icmp sgt i32 %237, -1
  br i1 %238, label %239, label %248

239:                                              ; preds = %235
  %240 = load ptr, ptr @rtx_group_vec, align 8
  %241 = zext nneg i32 %237 to i64
  %242 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %240, i64 0, i32 2, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !135
  %244 = getelementptr inbounds %struct.group_info, ptr %243, i64 0, i32 3
  %245 = load i8, ptr %244, align 1, !tbaa !206
  %246 = icmp ne i8 %245, 0
  %247 = zext i1 %246 to i8
  br label %248

248:                                              ; preds = %239, %235, %224, %218
  %249 = phi i8 [ 0, %224 ], [ 1, %218 ], [ 0, %235 ], [ %247, %239 ]
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %270, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %253 = icmp eq ptr %252, null
  br i1 %253, label %264, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.insn_info, ptr %220, i64 0, i32 5
  %256 = load ptr, ptr %255, align 8, !tbaa !187
  %257 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !146
  %259 = getelementptr inbounds %struct.insn_info, ptr %220, i64 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !208
  %261 = icmp eq ptr %260, null
  %262 = select i1 %261, ptr @.str.49, ptr @.str.48
  %263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %252, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20, i32 noundef %258, ptr noundef nonnull %262)
  br label %264

264:                                              ; preds = %254, %251
  %265 = icmp eq ptr %219, null
  %266 = getelementptr inbounds %struct.insn_info, ptr %220, i64 0, i32 9
  %267 = load ptr, ptr %266, align 8, !tbaa !209
  %268 = getelementptr inbounds %struct.insn_info, ptr %219, i64 0, i32 9
  %269 = select i1 %265, ptr @active_local_stores, ptr %268
  store ptr %267, ptr %269, align 8, !tbaa !135
  br label %270

270:                                              ; preds = %264, %248
  %271 = phi ptr [ %220, %248 ], [ %219, %264 ]
  %272 = getelementptr inbounds %struct.insn_info, ptr %220, i64 0, i32 9
  %273 = load ptr, ptr %272, align 8, !tbaa !209
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %218, !llvm.loop !210

275:                                              ; preds = %270, %214
  br i1 %199, label %276, label %1191

276:                                              ; preds = %275
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %277 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !146
  call void @init_cumulative_args(ptr noundef nonnull %5, ptr noundef %278, ptr noundef null, ptr noundef null) #18
  %279 = load ptr, ptr %277, align 8, !tbaa !146
  %280 = getelementptr inbounds %struct.tree_type, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !146
  %282 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !135
  %283 = icmp ne ptr %281, %282
  br i1 %283, label %284, label %395

284:                                              ; preds = %276, %385
  %285 = phi i64 [ %387, %385 ], [ 0, %276 ]
  %286 = phi ptr [ %388, %385 ], [ %281, %276 ]
  %287 = getelementptr inbounds %struct.tree_list, ptr %286, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !146
  %289 = load i64, ptr %288, align 8
  %290 = and i64 %289, 65535
  %291 = icmp eq i64 %290, 14
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = call i32 @vector_type_mode(ptr noundef nonnull %288) #18
  br label %299

294:                                              ; preds = %284
  %295 = getelementptr inbounds %struct.tree_type, ptr %288, i64 0, i32 6
  %296 = load i32, ptr %295, align 4
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  br label %299

299:                                              ; preds = %294, %292
  %300 = phi i32 [ %293, %292 ], [ %298, %294 ]
  %301 = call ptr @function_arg(ptr noundef nonnull %5, i32 noundef %300, ptr noundef null, i32 noundef 1) #18
  %302 = icmp eq ptr %301, null
  br i1 %302, label %430, label %303

303:                                              ; preds = %299
  %304 = load i32, ptr %301, align 8
  %305 = and i32 %304, 65535
  %306 = icmp eq i32 %305, 37
  br i1 %306, label %307, label %430

307:                                              ; preds = %303
  %308 = lshr i32 %304, 16
  %309 = and i32 %308, 255
  %310 = icmp eq i32 %309, %300
  br i1 %310, label %311, label %430

311:                                              ; preds = %307
  %312 = zext nneg i32 %300 to i64
  %313 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !146
  %315 = icmp eq i8 %314, 2
  br i1 %315, label %316, label %430

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1, i32 1, i32 0, i32 0, i64 2
  %318 = load ptr, ptr %317, align 8, !tbaa !146
  %319 = icmp eq ptr %318, null
  br i1 %319, label %430, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds ptr, ptr %6, i64 %285
  %322 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  br label %323

323:                                              ; preds = %320, %358
  %324 = phi ptr [ %318, %320 ], [ %360, %358 ]
  %325 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !146
  %327 = load i32, ptr %326, align 8
  %328 = and i32 %327, 65535
  %329 = icmp eq i32 %328, 24
  br i1 %329, label %330, label %358

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !146
  store ptr %332, ptr %321, align 8, !tbaa !135
  %333 = load i32, ptr %332, align 8
  %334 = and i32 %333, 65535
  %335 = icmp eq i32 %334, 37
  br i1 %335, label %336, label %358

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %338 = load i32, ptr %337, align 8, !tbaa !146
  %339 = load i32, ptr %322, align 8, !tbaa !146
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %358

341:                                              ; preds = %336
  %342 = lshr i32 %333, 16
  %343 = and i32 %342, 255
  %344 = icmp eq i32 %343, %300
  br i1 %344, label %362, label %345

345:                                              ; preds = %341
  %346 = zext nneg i32 %343 to i64
  %347 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !146
  %349 = icmp eq i8 %348, 2
  br i1 %349, label %350, label %358

350:                                              ; preds = %345
  %351 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %346
  %352 = load i8, ptr %351, align 1, !tbaa !146
  %353 = icmp ult i8 %352, 5
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %312
  %356 = load i8, ptr %355, align 1, !tbaa !146
  %357 = icmp ugt i8 %352, %356
  br i1 %357, label %362, label %358

358:                                              ; preds = %354, %350, %345, %336, %330, %323
  %359 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1, i32 0, i32 0, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !146
  %361 = icmp eq ptr %360, null
  br i1 %361, label %430, label %323, !llvm.loop !211

362:                                              ; preds = %354, %341
  %363 = getelementptr inbounds ptr, ptr %6, i64 %285
  %364 = load ptr, ptr @scratch, align 8, !tbaa !135
  %365 = call ptr @cselib_expand_value_rtx(ptr noundef nonnull %332, ptr noundef %364, i32 noundef 5) #18
  %366 = load i32, ptr %332, align 8
  %367 = lshr i32 %366, 16
  %368 = and i32 %367, 255
  %369 = icmp eq i32 %368, %300
  br i1 %369, label %381, label %370

370:                                              ; preds = %362
  %371 = icmp eq ptr %365, null
  br i1 %371, label %430, label %372

372:                                              ; preds = %370
  %373 = load i32, ptr %365, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 30
  br i1 %375, label %376, label %430

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !146
  %379 = call i64 @trunc_int_for_mode(i64 noundef %378, i32 noundef %300) #18
  %380 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %379) #18
  br label %381

381:                                              ; preds = %376, %362
  %382 = phi ptr [ %380, %376 ], [ %365, %362 ]
  %383 = icmp eq ptr %382, null
  br i1 %383, label %385, label %384

384:                                              ; preds = %381
  store ptr %382, ptr %363, align 8, !tbaa !135
  br label %385

385:                                              ; preds = %384, %381
  call void @function_arg_advance(ptr noundef nonnull %5, i32 noundef %300, ptr noundef null, i32 noundef 1) #18
  %386 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 1
  %387 = add nuw nsw i64 %285, 1
  %388 = load ptr, ptr %386, align 8, !tbaa !146
  %389 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !135
  %390 = icmp ne ptr %388, %389
  %391 = icmp ult i64 %285, 2
  %392 = select i1 %390, i1 %391, i1 false
  br i1 %392, label %284, label %393, !llvm.loop !212

393:                                              ; preds = %385
  %394 = trunc i64 %387 to i32
  br label %395

395:                                              ; preds = %393, %276
  %396 = phi i32 [ 0, %276 ], [ %394, %393 ]
  %397 = phi i1 [ %283, %276 ], [ %390, %393 ]
  %398 = icmp ne i32 %396, 3
  %399 = select i1 %397, i1 true, i1 %398
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  br i1 %399, label %431, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !135
  %403 = load i32, ptr %402, align 8
  %404 = and i32 %403, 65535
  %405 = icmp eq i32 %404, 30
  br i1 %405, label %406, label %431

406:                                              ; preds = %400
  %407 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  %408 = load ptr, ptr %407, align 16, !tbaa !135
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 30
  br i1 %411, label %412, label %431

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 0, i32 1
  %414 = load i64, ptr %413, align 8, !tbaa !146
  %415 = icmp sgt i64 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %412
  %417 = load ptr, ptr %6, align 16, !tbaa !135
  %418 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %417) #18
  call void @set_mem_size(ptr noundef %418, ptr noundef nonnull %408) #18
  %419 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %418, ptr noundef nonnull %402) #18
  %420 = call fastcc i32 @record_store(ptr noundef %419, ptr noundef nonnull %48), !range !213
  %421 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %422 = icmp eq ptr %421, null
  br i1 %422, label %425, label %423

423:                                              ; preds = %416
  %424 = call i64 @fwrite(ptr nonnull @.str.21, i64 33, i64 1, ptr nonnull %421)
  br label %425

425:                                              ; preds = %423, %416
  %426 = icmp eq i32 %420, 0
  br i1 %426, label %431, label %427

427:                                              ; preds = %425
  %428 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %429 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 9
  store ptr %428, ptr %429, align 8, !tbaa !209
  store ptr %94, ptr @active_local_stores, align 8, !tbaa !135
  br label %431

430:                                              ; preds = %372, %370, %311, %307, %303, %299, %316, %358
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  br label %431

431:                                              ; preds = %430, %427, %425, %412, %406, %400, %395
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br label %1191

432:                                              ; preds = %196
  %433 = load ptr, ptr %48, align 8, !tbaa !184
  %434 = getelementptr inbounds %struct.insn_info, ptr %433, i64 0, i32 7
  %435 = load ptr, ptr %434, align 8, !tbaa !135
  %436 = icmp eq ptr %435, null
  br i1 %436, label %451, label %437, !prof !214

437:                                              ; preds = %432, %447
  %438 = phi ptr [ %449, %447 ], [ %435, %432 ]
  %439 = phi ptr [ %448, %447 ], [ %434, %432 ]
  %440 = getelementptr inbounds %struct.read_info, ptr %438, i64 0, i32 5
  %441 = getelementptr inbounds %struct.read_info, ptr %438, i64 0, i32 1
  %442 = load i32, ptr %441, align 4, !tbaa !191
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %447, !prof !197

444:                                              ; preds = %437
  %445 = load ptr, ptr %440, align 8, !tbaa !193
  %446 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  call void @pool_free(ptr noundef %446, ptr noundef nonnull %438) #18
  store ptr %445, ptr %439, align 8, !tbaa !135
  br label %447

447:                                              ; preds = %444, %437
  %448 = phi ptr [ %439, %444 ], [ %440, %437 ]
  %449 = load ptr, ptr %448, align 8, !tbaa !135
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %437, !prof !215, !llvm.loop !194

451:                                              ; preds = %447, %432
  %452 = getelementptr inbounds %struct.insn_info, ptr %433, i64 0, i32 1
  store i8 1, ptr %452, align 1, !tbaa !195
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  br label %1191

453:                                              ; preds = %134
  %454 = load ptr, ptr %136, align 8, !tbaa !146
  %455 = load i32, ptr %454, align 8
  %456 = and i32 %455, 65535
  %457 = icmp eq i32 %456, 25
  br i1 %457, label %471, label %458, !prof !216

458:                                              ; preds = %453
  %459 = call i32 @volatile_refs_p(ptr noundef nonnull %454) #18
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %471, !prof !217

461:                                              ; preds = %458
  %462 = call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %80) #18
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %464, label %471, !prof !217

464:                                              ; preds = %461
  %465 = load i32, ptr %80, align 8
  %466 = and i32 %465, 1073741824
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %471, !prof !218

468:                                              ; preds = %464
  %469 = call ptr @find_reg_note(ptr noundef nonnull %80, i32 noundef 17, ptr noundef null) #18
  %470 = icmp eq ptr %469, null
  br i1 %470, label %472, label %471, !prof !219

471:                                              ; preds = %468, %464, %461, %458, %453
  store i8 1, ptr %94, align 8, !tbaa !189
  br label %472

472:                                              ; preds = %471, %468
  %473 = load ptr, ptr %136, align 8, !tbaa !146
  %474 = load i32, ptr %473, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 15
  br i1 %476, label %477, label %495, !prof !220

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !146
  %480 = load i32, ptr %479, align 8, !tbaa !221
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %1176, !prof !223

482:                                              ; preds = %477, %482
  %483 = phi i64 [ %490, %482 ], [ 0, %477 ]
  %484 = phi ptr [ %491, %482 ], [ %479, %477 ]
  %485 = phi i32 [ %489, %482 ], [ 0, %477 ]
  %486 = getelementptr inbounds %struct.rtvec_def, ptr %484, i64 0, i32 1, i64 %483
  %487 = load ptr, ptr %486, align 8, !tbaa !135
  %488 = call fastcc i32 @record_store(ptr noundef %487, ptr noundef nonnull %48), !range !213
  %489 = add nuw nsw i32 %488, %485
  %490 = add nuw nsw i64 %483, 1
  %491 = load ptr, ptr %478, align 8, !tbaa !146
  %492 = load i32, ptr %491, align 8, !tbaa !221
  %493 = sext i32 %492 to i64
  %494 = icmp slt i64 %490, %493
  br i1 %494, label %482, label %1176, !prof !224, !llvm.loop !225

495:                                              ; preds = %472
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  store i64 0, ptr %1, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %496 = load ptr, ptr %48, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !135
  %497 = trunc i32 %474 to i16
  switch i16 %497, label %1174 [
    i16 23, label %498
    i16 25, label %498
  ], !prof !227

498:                                              ; preds = %495, %495
  %499 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !146
  %501 = getelementptr inbounds %struct.insn_info, ptr %496, i64 0, i32 5
  %502 = load ptr, ptr %501, align 8, !tbaa !187
  %503 = call ptr @find_reg_note(ptr noundef %502, i32 noundef 6, ptr noundef %500) #18
  %504 = icmp eq ptr %503, null
  %505 = load i32, ptr %500, align 8
  %506 = and i32 %505, 65535
  %507 = icmp eq i32 %506, 43
  br i1 %507, label %510, label %508, !prof !228

508:                                              ; preds = %498
  br i1 %504, label %509, label %1174, !prof !229

509:                                              ; preds = %508
  store i8 1, ptr %496, align 8, !tbaa !189
  br label %1174

510:                                              ; preds = %498
  %511 = and i32 %505, 16711680
  %512 = icmp eq i32 %511, 65536
  br i1 %512, label %513, label %593, !prof !230

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !146
  %516 = load i32, ptr %515, align 8
  %517 = and i32 %516, 65535
  %518 = icmp eq i32 %517, 38
  br i1 %518, label %519, label %545, !prof !231

519:                                              ; preds = %513
  %520 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %521 = icmp eq ptr %520, null
  br i1 %521, label %524, label %522, !prof !231

522:                                              ; preds = %519
  %523 = call i64 @fwrite(ptr nonnull @.str.50, i64 51, i64 1, ptr nonnull %520)
  br label %524

524:                                              ; preds = %522, %519
  %525 = load ptr, ptr %48, align 8, !tbaa !184
  %526 = getelementptr inbounds %struct.insn_info, ptr %525, i64 0, i32 7
  %527 = load ptr, ptr %526, align 8, !tbaa !135
  %528 = icmp eq ptr %527, null
  br i1 %528, label %543, label %529, !prof !232

529:                                              ; preds = %524, %539
  %530 = phi ptr [ %541, %539 ], [ %527, %524 ]
  %531 = phi ptr [ %540, %539 ], [ %526, %524 ]
  %532 = getelementptr inbounds %struct.read_info, ptr %530, i64 0, i32 5
  %533 = getelementptr inbounds %struct.read_info, ptr %530, i64 0, i32 1
  %534 = load i32, ptr %533, align 4, !tbaa !191
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %529
  %537 = load ptr, ptr %532, align 8, !tbaa !193
  %538 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  call void @pool_free(ptr noundef %538, ptr noundef nonnull %530) #18
  store ptr %537, ptr %531, align 8, !tbaa !135
  br label %539

539:                                              ; preds = %536, %529
  %540 = phi ptr [ %531, %536 ], [ %532, %529 ]
  %541 = load ptr, ptr %540, align 8, !tbaa !135
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %529, !prof !232, !llvm.loop !194

543:                                              ; preds = %539, %524
  %544 = getelementptr inbounds %struct.insn_info, ptr %525, i64 0, i32 1
  store i8 1, ptr %544, align 1, !tbaa !195
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  store i8 1, ptr %496, align 8, !tbaa !189
  br label %1174

545:                                              ; preds = %513
  %546 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1, i32 0, i32 0, i64 1
  %547 = load ptr, ptr %546, align 8, !tbaa !146
  %548 = icmp eq ptr %547, null
  br i1 %548, label %575, label %549

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.mem_attrs, ptr %547, i64 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !233
  %552 = icmp eq ptr %551, null
  br i1 %552, label %575, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %551, align 8
  %555 = and i32 %554, 65535
  %556 = icmp eq i32 %555, 30
  br i1 %556, label %557, label %575

557:                                              ; preds = %553
  %558 = load i32, ptr %473, align 8
  %559 = and i32 %558, 65535
  %560 = icmp eq i32 %559, 23
  br i1 %560, label %561, label %575

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.rtx_def, ptr %551, i64 0, i32 1
  %563 = load i64, ptr %562, align 8, !tbaa !146
  %564 = icmp slt i64 %563, 1
  br i1 %564, label %575, label %565

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.rtx_def, ptr %551, i64 0, i32 1
  %567 = load i64, ptr %566, align 8, !tbaa !146
  %568 = icmp sgt i64 %567, 65536
  br i1 %568, label %575, label %569

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1, i32 0, i32 0, i64 1
  %571 = load ptr, ptr %570, align 8, !tbaa !146
  %572 = load i32, ptr %571, align 8
  %573 = and i32 %572, 65535
  %574 = icmp eq i32 %573, 30
  br i1 %574, label %593, label %575

575:                                              ; preds = %569, %565, %561, %557, %553, %549, %545
  br i1 %504, label %576, label %1174

576:                                              ; preds = %575
  store i8 1, ptr %496, align 8, !tbaa !189
  %577 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %578 = icmp eq ptr %577, null
  br i1 %578, label %1174, label %579

579:                                              ; preds = %576, %588
  %580 = phi ptr [ %591, %588 ], [ %577, %576 ]
  %581 = getelementptr inbounds %struct.insn_info, ptr %580, i64 0, i32 6
  br label %582

582:                                              ; preds = %582, %579
  %583 = phi ptr [ %581, %579 ], [ %587, %582 ]
  %584 = load ptr, ptr %583, align 8, !tbaa !135
  %585 = load i8, ptr %584, align 8, !tbaa !202
  %586 = icmp eq i8 %585, 0
  %587 = getelementptr inbounds %struct.store_info, ptr %584, i64 0, i32 10
  br i1 %586, label %582, label %588, !llvm.loop !235

588:                                              ; preds = %582
  %589 = getelementptr inbounds %struct.store_info, ptr %584, i64 0, i32 11
  %590 = getelementptr inbounds %struct.insn_info, ptr %580, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %589, i8 0, i64 16, i1 false)
  %591 = load ptr, ptr %590, align 8, !tbaa !135
  %592 = icmp eq ptr %591, null
  br i1 %592, label %1174, label %579, !llvm.loop !236

593:                                              ; preds = %569, %510
  %594 = load i32, ptr %500, align 8
  %595 = and i32 %594, 134217728
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %598, label %597, !prof !237

597:                                              ; preds = %593
  store i8 1, ptr %496, align 8, !tbaa !189
  br label %598

598:                                              ; preds = %597, %593
  %599 = call fastcc zeroext i8 @canon_address(ptr noundef nonnull %500, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4)
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %601, label %618, !prof !238

601:                                              ; preds = %598
  %602 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %603 = icmp eq ptr %602, null
  br i1 %603, label %1174, label %604, !prof !232

604:                                              ; preds = %601, %613
  %605 = phi ptr [ %616, %613 ], [ %602, %601 ]
  %606 = getelementptr inbounds %struct.insn_info, ptr %605, i64 0, i32 6
  br label %607

607:                                              ; preds = %607, %604
  %608 = phi ptr [ %606, %604 ], [ %612, %607 ]
  %609 = load ptr, ptr %608, align 8, !tbaa !135
  %610 = load i8, ptr %609, align 8, !tbaa !202
  %611 = icmp eq i8 %610, 0
  %612 = getelementptr inbounds %struct.store_info, ptr %609, i64 0, i32 10
  br i1 %611, label %607, label %613, !llvm.loop !235

613:                                              ; preds = %607
  %614 = getelementptr inbounds %struct.store_info, ptr %609, i64 0, i32 11
  %615 = getelementptr inbounds %struct.insn_info, ptr %605, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %614, i8 0, i64 16, i1 false)
  %616 = load ptr, ptr %615, align 8, !tbaa !135
  %617 = icmp eq ptr %616, null
  br i1 %617, label %1174, label %604, !prof !232, !llvm.loop !236

618:                                              ; preds = %598
  %619 = load i32, ptr %500, align 8
  %620 = lshr i32 %619, 16
  %621 = and i32 %620, 255
  %622 = icmp eq i32 %621, 1
  br i1 %622, label %623, label %630, !prof !239

623:                                              ; preds = %618
  %624 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1, i32 0, i32 0, i64 1
  %625 = load ptr, ptr %624, align 8, !tbaa !146, !nonnull !240, !noundef !240
  %626 = getelementptr inbounds %struct.mem_attrs, ptr %625, i64 0, i32 2
  %627 = load ptr, ptr %626, align 8, !tbaa !233
  %628 = getelementptr inbounds %struct.rtx_def, ptr %627, i64 0, i32 1
  %629 = load i64, ptr %628, align 8, !tbaa !146
  br label %637

630:                                              ; preds = %618
  %631 = zext nneg i32 %621 to i64
  %632 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !146
  %634 = zext i8 %633 to i64
  %635 = icmp ult i8 %633, 65
  br i1 %635, label %637, label %636, !prof !241

636:                                              ; preds = %630
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1386, ptr noundef nonnull @.str.2) #18
  br label %637

637:                                              ; preds = %636, %630, %623
  %638 = phi i64 [ %629, %623 ], [ %634, %630 ], [ %634, %636 ]
  %639 = load i32, ptr %2, align 4, !tbaa !150
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %674, label %641, !prof !241

641:                                              ; preds = %637
  %642 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %643 = getelementptr inbounds %struct.group_info, ptr %642, i64 0, i32 7
  %644 = load ptr, ptr %643, align 8, !tbaa !242
  %645 = getelementptr inbounds %struct.group_info, ptr %642, i64 0, i32 9
  %646 = load ptr, ptr %645, align 8, !tbaa !243
  %647 = load i32, ptr %500, align 8
  %648 = and i32 %647, 16711680
  %649 = icmp eq i32 %648, 65536
  br i1 %649, label %650, label %651

650:                                              ; preds = %641
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1394, ptr noundef nonnull @.str.2) #18
  br label %651

651:                                              ; preds = %650, %641
  %652 = call i32 @bitmap_bit_p(ptr noundef %644, i32 noundef %639) #18
  %653 = icmp eq i32 %652, 0
  %654 = select i1 %653, ptr %644, ptr %646
  %655 = call zeroext i8 @bitmap_set_bit(ptr noundef %654, i32 noundef %639) #18
  %656 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %657 = getelementptr inbounds %struct.group_info, ptr %656, i64 0, i32 14
  %658 = load i32, ptr %657, align 4, !tbaa !244
  %659 = icmp slt i32 %658, %639
  br i1 %659, label %660, label %661

660:                                              ; preds = %651
  store i32 %639, ptr %657, align 4, !tbaa !244
  br label %661

661:                                              ; preds = %660, %651
  %662 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !135
  %663 = call ptr @pool_alloc(ptr noundef %662) #18
  %664 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %665 = icmp eq ptr %664, null
  br i1 %665, label %761, label %666

666:                                              ; preds = %661
  %667 = load i32, ptr %500, align 8
  %668 = lshr i32 %667, 16
  %669 = and i32 %668, 255
  %670 = zext nneg i32 %669 to i64
  %671 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !135
  %673 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %664, ptr noundef nonnull @.str.51, i32 noundef %639, ptr noundef %672)
  br label %761

674:                                              ; preds = %637
  %675 = load i32, ptr %3, align 4, !tbaa !150
  %676 = icmp sgt i32 %675, -1
  br i1 %676, label %677, label %733, !prof !245

677:                                              ; preds = %674
  %678 = load ptr, ptr @rtx_group_vec, align 8
  %679 = zext nneg i32 %675 to i64
  %680 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %678, i64 0, i32 2, i64 %679
  %681 = load ptr, ptr %680, align 8, !tbaa !135
  %682 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !135
  %683 = call ptr @pool_alloc(ptr noundef %682) #18
  %684 = load i64, ptr %1, align 8, !tbaa !226
  %685 = icmp sgt i64 %684, -65536
  br i1 %685, label %686, label %725, !prof !246

686:                                              ; preds = %677
  %687 = add nsw i64 %684, %638
  %688 = icmp slt i64 %687, 65536
  %689 = icmp sgt i64 %638, 0
  %690 = and i1 %689, %688
  br i1 %690, label %691, label %725, !prof !247

691:                                              ; preds = %686
  %692 = getelementptr inbounds %struct.group_info, ptr %681, i64 0, i32 6
  %693 = getelementptr inbounds %struct.group_info, ptr %681, i64 0, i32 8
  %694 = getelementptr inbounds %struct.group_info, ptr %681, i64 0, i32 7
  %695 = getelementptr inbounds %struct.group_info, ptr %681, i64 0, i32 9
  br label %696

696:                                              ; preds = %722, %691
  %697 = phi i64 [ %684, %691 ], [ %723, %722 ]
  %698 = icmp slt i64 %697, 0
  %699 = trunc i64 %697 to i32
  %700 = sub i32 0, %699
  %701 = select i1 %698, ptr %692, ptr %694, !prof !248
  %702 = select i1 %698, ptr %693, ptr %695, !prof !248
  %703 = select i1 %698, i32 %700, i32 %699, !prof !248
  %704 = load ptr, ptr %702, align 8, !tbaa !135
  %705 = load ptr, ptr %701, align 8, !tbaa !135
  %706 = call i32 @bitmap_bit_p(ptr noundef %705, i32 noundef %703) #18
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %710, label %708, !prof !249

708:                                              ; preds = %696
  %709 = call zeroext i8 @bitmap_set_bit(ptr noundef %704, i32 noundef %703) #18
  br label %722

710:                                              ; preds = %696
  %711 = call zeroext i8 @bitmap_set_bit(ptr noundef %705, i32 noundef %703) #18
  br i1 %698, label %712, label %717, !prof !250

712:                                              ; preds = %710
  %713 = getelementptr inbounds %struct.group_info, ptr %681, i64 0, i32 13
  %714 = load i32, ptr %713, align 8, !tbaa !251
  %715 = icmp slt i32 %714, %703
  br i1 %715, label %716, label %722, !prof !252

716:                                              ; preds = %712
  store i32 %703, ptr %713, align 8, !tbaa !251
  br label %722

717:                                              ; preds = %710
  %718 = getelementptr inbounds %struct.group_info, ptr %681, i64 0, i32 14
  %719 = load i32, ptr %718, align 4, !tbaa !244
  %720 = icmp slt i32 %719, %703
  br i1 %720, label %721, label %722, !prof !253

721:                                              ; preds = %717
  store i32 %703, ptr %718, align 4, !tbaa !244
  br label %722

722:                                              ; preds = %721, %717, %716, %712, %708
  %723 = add nsw i64 %697, 1
  %724 = icmp slt i64 %723, %687
  br i1 %724, label %696, label %725, !prof !254, !llvm.loop !255

725:                                              ; preds = %722, %686, %677
  %726 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %727 = icmp eq ptr %726, null
  br i1 %727, label %761, label %728, !prof !246

728:                                              ; preds = %725
  %729 = trunc i64 %684 to i32
  %730 = add nsw i64 %684, %638
  %731 = trunc i64 %730 to i32
  %732 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %726, ptr noundef nonnull @.str.52, i32 noundef %675, i32 noundef %729, i32 noundef %731)
  br label %761

733:                                              ; preds = %674
  %734 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1
  %735 = load ptr, ptr %734, align 8, !tbaa !146
  %736 = call ptr @find_base_term(ptr noundef %735) #18
  %737 = icmp eq ptr %736, null
  br i1 %737, label %747, label %738, !prof !256

738:                                              ; preds = %733
  %739 = load i32, ptr %736, align 8
  %740 = and i32 %739, 16777215
  %741 = icmp eq i32 %740, 1048582
  br i1 %741, label %742, label %749, !prof !257

742:                                              ; preds = %738
  %743 = getelementptr inbounds %struct.rtx_def, ptr %736, i64 0, i32 1
  %744 = load ptr, ptr %743, align 8, !tbaa !146
  %745 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !135
  %746 = icmp eq ptr %744, %745
  br i1 %746, label %747, label %749, !prof !258

747:                                              ; preds = %742, %733
  %748 = getelementptr inbounds %struct.insn_info, ptr %496, i64 0, i32 3
  store i8 1, ptr %748, align 1, !tbaa !201
  br label %749

749:                                              ; preds = %747, %742, %738
  %750 = getelementptr inbounds %struct.insn_info, ptr %496, i64 0, i32 4
  store i8 1, ptr %750, align 4, !tbaa !259
  %751 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !135
  %752 = call ptr @pool_alloc(ptr noundef %751) #18
  store i32 -1, ptr %3, align 4, !tbaa !150
  %753 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %754 = icmp eq ptr %753, null
  br i1 %754, label %761, label %755, !prof !260

755:                                              ; preds = %749
  %756 = load i64, ptr %1, align 8, !tbaa !226
  %757 = trunc i64 %756 to i32
  %758 = add nsw i64 %756, %638
  %759 = trunc i64 %758 to i32
  %760 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %753, ptr noundef nonnull @.str.53, i32 noundef %757, i32 noundef %759)
  br label %761

761:                                              ; preds = %755, %749, %728, %725, %666, %661
  %762 = phi ptr [ %663, %666 ], [ %663, %661 ], [ %683, %728 ], [ %683, %725 ], [ %752, %755 ], [ %752, %749 ]
  %763 = load i32, ptr %473, align 8
  %764 = and i32 %763, 65535
  %765 = icmp ne i32 %764, 23
  %766 = load i32, ptr @reload_completed, align 4
  %767 = icmp ne i32 %766, 0
  %768 = select i1 %765, i1 true, i1 %767, !prof !239
  br i1 %768, label %841, label %769, !prof !261

769:                                              ; preds = %761
  %770 = getelementptr inbounds %struct.rtx_def, ptr %473, i64 0, i32 1, i32 0, i32 0, i64 1
  %771 = load ptr, ptr %770, align 8, !tbaa !146
  %772 = load i32, ptr %771, align 8
  %773 = trunc i32 %772 to i16
  switch i16 %773, label %774 [
    i16 37, label %780
    i16 39, label %780
  ], !prof !262

774:                                              ; preds = %769
  %775 = and i32 %772, 65535
  %776 = zext nneg i32 %775 to i64
  %777 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !150
  %779 = icmp eq i32 %778, 9
  br i1 %779, label %780, label %841, !prof !263

780:                                              ; preds = %774, %769, %769
  %781 = load i32, ptr %500, align 8
  %782 = and i32 %781, 134217728
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %841, !prof !264

784:                                              ; preds = %780
  %785 = lshr i32 %781, 16
  %786 = and i32 %785, 255
  %787 = zext nneg i32 %786 to i64
  %788 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %787
  %789 = load i8, ptr %788, align 1, !tbaa !146
  switch i8 %789, label %790 [
    i8 8, label %795
    i8 9, label %795
    i8 11, label %795
  ], !prof !265

790:                                              ; preds = %784
  %791 = icmp eq i8 %789, 17
  %792 = load i32, ptr @flag_float_store, align 4
  %793 = icmp ne i32 %792, 0
  %794 = select i1 %791, i1 %793, i1 false, !prof !266
  br i1 %794, label %841, label %798, !prof !266

795:                                              ; preds = %784, %784, %784
  %796 = load i32, ptr @flag_float_store, align 4, !tbaa !150
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %841

798:                                              ; preds = %795, %790
  %799 = and i32 %772, 65535
  %800 = zext nneg i32 %799 to i64
  %801 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %800
  %802 = load i32, ptr %801, align 4, !tbaa !150
  %803 = icmp eq i32 %802, 9
  br i1 %803, label %822, label %804, !prof !267

804:                                              ; preds = %798
  %805 = load ptr, ptr %501, align 8, !tbaa !187
  %806 = getelementptr inbounds %struct.rtx_def, ptr %805, i64 1
  %807 = load ptr, ptr %806, align 8, !tbaa !146
  %808 = icmp eq ptr %807, %473
  br i1 %808, label %809, label %822, !prof !268

809:                                              ; preds = %804
  %810 = call ptr @find_reg_note(ptr noundef %805, i32 noundef 4, ptr noundef null) #18
  %811 = icmp eq ptr %810, null
  br i1 %811, label %822, label %812, !prof !268

812:                                              ; preds = %809
  %813 = getelementptr inbounds %struct.rtx_def, ptr %810, i64 0, i32 1
  %814 = load ptr, ptr %813, align 8, !tbaa !146
  %815 = load i32, ptr %814, align 8
  %816 = and i32 %815, 65535
  %817 = zext nneg i32 %816 to i64
  %818 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %817
  %819 = load i32, ptr %818, align 4, !tbaa !150
  %820 = icmp eq i32 %819, 9
  %821 = select i1 %820, ptr %814, ptr null
  br label %822

822:                                              ; preds = %812, %809, %804, %798
  %823 = phi ptr [ null, %804 ], [ null, %809 ], [ %821, %812 ], [ %771, %798 ]
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %841, !prof !269

825:                                              ; preds = %822
  %826 = load i32, ptr %771, align 8
  %827 = and i32 %826, 65535
  %828 = icmp eq i32 %827, 37
  br i1 %828, label %829, label %841, !prof !268

829:                                              ; preds = %825
  %830 = load ptr, ptr @scratch, align 8, !tbaa !135
  %831 = call ptr @cselib_expand_value_rtx(ptr noundef nonnull %771, ptr noundef %830, i32 noundef 5) #18
  %832 = icmp eq ptr %831, null
  br i1 %832, label %841, label %833, !prof !270

833:                                              ; preds = %829
  %834 = load i32, ptr %831, align 8
  %835 = and i32 %834, 65535
  %836 = zext nneg i32 %835 to i64
  %837 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %836
  %838 = load i32, ptr %837, align 4, !tbaa !150
  %839 = icmp eq i32 %838, 9
  %840 = select i1 %839, ptr %831, ptr null, !prof !270
  br label %841

841:                                              ; preds = %833, %829, %825, %822, %795, %790, %780, %774, %761
  %842 = phi ptr [ null, %761 ], [ null, %780 ], [ null, %795 ], [ null, %825 ], [ %823, %822 ], [ null, %790 ], [ null, %829 ], [ %840, %833 ], [ null, %774 ]
  %843 = phi ptr [ null, %761 ], [ null, %780 ], [ null, %795 ], [ %771, %825 ], [ %771, %822 ], [ null, %790 ], [ %771, %829 ], [ %771, %833 ], [ null, %774 ]
  %844 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %845 = call ptr @canon_rtx(ptr noundef nonnull %500) #18
  br i1 %640, label %846, label %865, !prof !241

846:                                              ; preds = %841
  %847 = load i32, ptr %3, align 4, !tbaa !150
  %848 = icmp slt i32 %847, 0
  br i1 %848, label %849, label %852, !prof !271

849:                                              ; preds = %846
  %850 = load ptr, ptr %4, align 8, !tbaa !135
  %851 = getelementptr inbounds %struct.cselib_val_struct, ptr %850, i64 0, i32 2
  br label %858

852:                                              ; preds = %846
  %853 = load ptr, ptr @rtx_group_vec, align 8
  %854 = zext nneg i32 %847 to i64
  %855 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %853, i64 0, i32 2, i64 %854
  %856 = load ptr, ptr %855, align 8, !tbaa !135
  %857 = getelementptr inbounds %struct.group_info, ptr %856, i64 0, i32 5
  br label %858

858:                                              ; preds = %852, %849
  %859 = phi ptr [ %851, %849 ], [ %857, %852 ]
  %860 = load ptr, ptr %859, align 8, !tbaa !135
  %861 = load i64, ptr %1, align 8, !tbaa !226
  %862 = icmp eq i64 %861, 0
  br i1 %862, label %865, label %863, !prof !272

863:                                              ; preds = %858
  %864 = call ptr @plus_constant(ptr noundef %860, i64 noundef %861) #18
  br label %865

865:                                              ; preds = %863, %858, %841
  %866 = phi ptr [ %864, %863 ], [ %860, %858 ], [ null, %841 ]
  %867 = icmp eq ptr %844, null
  br i1 %867, label %1137, label %868, !prof !273

868:                                              ; preds = %865, %1134
  %869 = phi ptr [ %873, %1134 ], [ %844, %865 ]
  %870 = phi ptr [ %1135, %1134 ], [ null, %865 ]
  %871 = phi ptr [ %1101, %1134 ], [ null, %865 ]
  %872 = getelementptr inbounds %struct.insn_info, ptr %869, i64 0, i32 9
  %873 = load ptr, ptr %872, align 8, !tbaa !209
  %874 = getelementptr inbounds %struct.insn_info, ptr %869, i64 0, i32 6
  br label %875

875:                                              ; preds = %875, %868
  %876 = phi ptr [ %874, %868 ], [ %880, %875 ]
  %877 = load ptr, ptr %876, align 8, !tbaa !135
  %878 = load i8, ptr %877, align 8, !tbaa !202
  %879 = icmp eq i8 %878, 0
  %880 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 10
  br i1 %879, label %875, label %881, !prof !274, !llvm.loop !275

881:                                              ; preds = %875
  %882 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 6
  %883 = load i32, ptr %882, align 8, !tbaa !276
  %884 = load i32, ptr %2, align 4, !tbaa !150
  %885 = icmp eq i32 %883, %884
  br i1 %885, label %886, label %1100, !prof !277

886:                                              ; preds = %881
  %887 = icmp eq i32 %883, 0
  br i1 %887, label %937, label %888, !prof !277

888:                                              ; preds = %886
  %889 = call fastcc ptr @clear_alias_set_lookup(i32 noundef %883)
  %890 = load i32, ptr %845, align 8
  %891 = lshr i32 %890, 16
  %892 = and i32 %891, 255
  %893 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 4
  %894 = load ptr, ptr %893, align 8, !tbaa !278
  %895 = load i32, ptr %894, align 8
  %896 = lshr i32 %895, 16
  %897 = and i32 %896, 255
  %898 = icmp eq i32 %892, %897
  br i1 %898, label %899, label %927

899:                                              ; preds = %888
  %900 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %889, i64 0, i32 1
  %901 = load i32, ptr %900, align 4, !tbaa !157
  %902 = icmp eq i32 %892, %901
  br i1 %902, label %903, label %927

903:                                              ; preds = %899
  %904 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 1
  %905 = load i8, ptr %904, align 1, !tbaa !279
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %925, label %907

907:                                              ; preds = %903
  %908 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 8
  %909 = load i64, ptr %908, align 8, !tbaa !280
  %910 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 7
  %911 = load i64, ptr %910, align 8, !tbaa !281
  %912 = sub nsw i64 %909, %911
  %913 = trunc i64 %912 to i32
  %914 = icmp sgt i32 %913, 0
  br i1 %914, label %915, label %923

915:                                              ; preds = %907
  %916 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9
  br label %917

917:                                              ; preds = %917, %915
  %918 = phi i32 [ 0, %915 ], [ %921, %917 ]
  %919 = load ptr, ptr %916, align 8, !tbaa !146
  %920 = call zeroext i8 @bitmap_set_bit(ptr noundef %919, i32 noundef %918) #18
  %921 = add nuw nsw i32 %918, 1
  %922 = icmp eq i32 %921, %913
  br i1 %922, label %923, label %917, !llvm.loop !282

923:                                              ; preds = %917, %907
  %924 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9, i32 0, i32 1
  store i32 %913, ptr %924, align 8, !tbaa !146
  br label %927

925:                                              ; preds = %903
  %926 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9
  store i64 0, ptr %926, align 8, !tbaa !146
  br label %927

927:                                              ; preds = %925, %923, %899, %888
  %928 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %929 = icmp eq ptr %928, null
  br i1 %929, label %1100, label %930

930:                                              ; preds = %927
  %931 = getelementptr inbounds %struct.insn_info, ptr %869, i64 0, i32 5
  %932 = load ptr, ptr %931, align 8, !tbaa !187
  %933 = getelementptr inbounds %struct.rtx_def, ptr %932, i64 0, i32 1
  %934 = load i32, ptr %933, align 8, !tbaa !146
  %935 = load i32, ptr %882, align 8, !tbaa !276
  %936 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %928, ptr noundef nonnull @.str.54, i32 noundef %934, i32 noundef %935)
  br label %1100

937:                                              ; preds = %886
  %938 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 2
  %939 = load i32, ptr %938, align 4, !tbaa !205
  %940 = load i32, ptr %3, align 4, !tbaa !150
  %941 = icmp eq i32 %939, %940
  br i1 %941, label %942, label %1085, !prof !283

942:                                              ; preds = %937
  %943 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 3
  %944 = load ptr, ptr %943, align 8, !tbaa !284
  %945 = load ptr, ptr %4, align 8, !tbaa !135
  %946 = icmp eq ptr %944, %945
  br i1 %946, label %947, label %1085, !prof !285

947:                                              ; preds = %942
  %948 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %949 = icmp eq ptr %948, null
  br i1 %949, label %962, label %950, !prof !285

950:                                              ; preds = %947
  %951 = getelementptr inbounds %struct.insn_info, ptr %869, i64 0, i32 5
  %952 = load ptr, ptr %951, align 8, !tbaa !187
  %953 = getelementptr inbounds %struct.rtx_def, ptr %952, i64 0, i32 1
  %954 = load i32, ptr %953, align 8, !tbaa !146
  %955 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 7
  %956 = load i64, ptr %955, align 8, !tbaa !281
  %957 = trunc i64 %956 to i32
  %958 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 8
  %959 = load i64, ptr %958, align 8, !tbaa !280
  %960 = trunc i64 %959 to i32
  %961 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %948, ptr noundef nonnull @.str.55, i32 noundef %954, i32 noundef %939, i32 noundef %957, i32 noundef %960)
  br label %962

962:                                              ; preds = %950, %947
  %963 = icmp ne ptr %842, null
  %964 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 12
  %965 = load ptr, ptr %964, align 8, !tbaa !286
  %966 = icmp ne ptr %965, null
  %967 = and i1 %963, %966
  br i1 %967, label %968, label %1045, !prof !287

968:                                              ; preds = %962
  %969 = load i64, ptr %1, align 8, !tbaa !226
  %970 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 7
  %971 = load i64, ptr %970, align 8, !tbaa !281
  %972 = icmp slt i64 %969, %971
  br i1 %972, label %1045, label %973, !prof !288

973:                                              ; preds = %968
  %974 = add nsw i64 %969, %638
  %975 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 8
  %976 = load i64, ptr %975, align 8, !tbaa !280
  %977 = icmp sgt i64 %974, %976
  br i1 %977, label %1045, label %978

978:                                              ; preds = %973
  %979 = sub nsw i64 %969, %971
  %980 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 1
  %981 = load i8, ptr %980, align 1, !tbaa !279
  %982 = icmp eq i8 %981, 0
  %983 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9
  br i1 %982, label %996, label %984

984:                                              ; preds = %978
  %985 = trunc i64 %638 to i32
  %986 = trunc i64 %979 to i32
  %987 = add nsw i32 %986, %985
  br label %988

988:                                              ; preds = %991, %984
  %989 = phi i32 [ %986, %984 ], [ %993, %991 ]
  %990 = icmp slt i32 %989, %987
  br i1 %990, label %991, label %1006

991:                                              ; preds = %988
  %992 = load ptr, ptr %983, align 8, !tbaa !146
  %993 = add nsw i32 %989, 1
  %994 = call i32 @bitmap_bit_p(ptr noundef %992, i32 noundef %989) #18
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %988, label %1006, !llvm.loop !289

996:                                              ; preds = %978
  %997 = sub i64 64, %638
  %998 = and i64 %997, 4294967295
  %999 = lshr i64 -1, %998
  %1000 = and i64 %979, 4294967295
  %1001 = shl i64 %999, %1000
  %1002 = load i64, ptr %983, align 8, !tbaa !146
  %1003 = and i64 %1002, %1001
  %1004 = icmp eq i64 %1003, %1001
  %1005 = zext i1 %1004 to i8
  br label %1006

1006:                                             ; preds = %991, %988, %996
  %1007 = phi i8 [ %1005, %996 ], [ 1, %988 ], [ 0, %991 ]
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1045, label %1009

1009:                                             ; preds = %1006
  %1010 = load i32, ptr %845, align 8
  %1011 = and i32 %1010, 16711680
  %1012 = icmp eq i32 %1011, 65536
  br i1 %1012, label %1013, label %1023

1013:                                             ; preds = %1009
  %1014 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 4
  %1015 = load ptr, ptr %1014, align 8, !tbaa !278
  %1016 = load i32, ptr %1015, align 8
  %1017 = and i32 %1016, 16711680
  %1018 = icmp eq i32 %1017, 65536
  br i1 %1018, label %1019, label %1045

1019:                                             ; preds = %1013
  %1020 = load ptr, ptr %964, align 8, !tbaa !286
  %1021 = icmp eq ptr %1020, %842
  %1022 = select i1 %1021, ptr %869, ptr %871
  br label %1045

1023:                                             ; preds = %1009
  %1024 = load ptr, ptr %964, align 8, !tbaa !286
  %1025 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !135
  %1026 = icmp eq ptr %1024, %1025
  %1027 = icmp eq ptr %842, %1025
  %1028 = and i1 %1026, %1027
  br i1 %1028, label %1045, label %1029

1029:                                             ; preds = %1023
  call void @start_sequence() #18
  %1030 = load i32, ptr %845, align 8
  %1031 = lshr i32 %1030, 16
  %1032 = and i32 %1031, 255
  %1033 = load ptr, ptr %501, align 8, !tbaa !187
  %1034 = getelementptr inbounds %struct.rtx_def, ptr %1033, i64 0, i32 1, i32 0, i32 1
  %1035 = load ptr, ptr %1034, align 8, !tbaa !146
  %1036 = call fastcc ptr @get_stored_val(ptr noundef %877, i32 noundef %1032, i64 noundef %969, ptr noundef %1035, i8 noundef zeroext 1)
  %1037 = call ptr @get_insns() #18
  %1038 = icmp ne ptr %1037, null
  call void @end_sequence() #18
  %1039 = icmp eq ptr %1036, null
  %1040 = select i1 %1038, i1 true, i1 %1039
  br i1 %1040, label %1045, label %1041

1041:                                             ; preds = %1029
  %1042 = call i32 @rtx_equal_p(ptr noundef nonnull %1036, ptr noundef nonnull %842) #18
  %1043 = icmp eq i32 %1042, 0
  %1044 = select i1 %1043, ptr %871, ptr %869
  br label %1045

1045:                                             ; preds = %1041, %1029, %1023, %1019, %1013, %1006, %973, %968, %962
  %1046 = phi ptr [ %871, %1013 ], [ %871, %1006 ], [ %871, %973 ], [ %871, %968 ], [ %871, %962 ], [ %1022, %1019 ], [ %869, %1023 ], [ %871, %1029 ], [ %1044, %1041 ]
  %1047 = load i64, ptr %1, align 8, !tbaa !226
  %1048 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 7
  %1049 = load i64, ptr %1048, align 8, !tbaa !281
  %1050 = call i64 @llvm.smax.i64(i64 %1047, i64 %1049)
  %1051 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 8
  %1052 = add nsw i64 %1047, %638
  %1053 = icmp slt i64 %1050, %1052
  br i1 %1053, label %1054, label %1100, !prof !290

1054:                                             ; preds = %1045, %1082
  %1055 = phi i64 [ %1083, %1082 ], [ %1050, %1045 ]
  %1056 = load i64, ptr %1051, align 8, !tbaa !280
  %1057 = icmp slt i64 %1055, %1056
  br i1 %1057, label %1058, label %1100, !prof !291

1058:                                             ; preds = %1054
  %1059 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 1
  %1060 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9
  %1061 = load i64, ptr %1048, align 8, !tbaa !281
  %1062 = sub nsw i64 %1055, %1061
  %1063 = trunc i64 %1062 to i32
  %1064 = load i8, ptr %1059, align 1, !tbaa !279
  %1065 = icmp eq i8 %1064, 0
  br i1 %1065, label %1076, label %1066

1066:                                             ; preds = %1058
  %1067 = load ptr, ptr %1060, align 8, !tbaa !146
  %1068 = call i32 @bitmap_bit_p(ptr noundef %1067, i32 noundef %1063) #18
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1082

1070:                                             ; preds = %1066
  %1071 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9, i32 0, i32 1
  %1072 = load i32, ptr %1071, align 8, !tbaa !146
  %1073 = add nsw i32 %1072, 1
  store i32 %1073, ptr %1071, align 8, !tbaa !146
  %1074 = load ptr, ptr %1060, align 8, !tbaa !146
  %1075 = call zeroext i8 @bitmap_set_bit(ptr noundef %1074, i32 noundef %1063) #18
  br label %1082

1076:                                             ; preds = %1058
  %1077 = and i64 %1062, 4294967295
  %1078 = shl nuw i64 1, %1077
  %1079 = xor i64 %1078, -1
  %1080 = load i64, ptr %1060, align 8, !tbaa !146
  %1081 = and i64 %1080, %1079
  store i64 %1081, ptr %1060, align 8, !tbaa !146
  br label %1082

1082:                                             ; preds = %1076, %1070, %1066
  %1083 = add nsw i64 %1055, 1
  %1084 = icmp slt i64 %1083, %1052
  br i1 %1084, label %1054, label %1100, !prof !291, !llvm.loop !292

1085:                                             ; preds = %942, %937
  %1086 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 11
  %1087 = load ptr, ptr %1086, align 8, !tbaa !293
  %1088 = icmp eq ptr %1087, null
  br i1 %1088, label %1100, label %1089, !prof !294

1089:                                             ; preds = %1085
  %1090 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 4
  %1091 = load ptr, ptr %1090, align 8, !tbaa !278
  %1092 = load i32, ptr %1091, align 8
  %1093 = lshr i32 %1092, 16
  %1094 = and i32 %1093, 255
  %1095 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 5
  %1096 = load ptr, ptr %1095, align 8, !tbaa !295
  %1097 = call i32 @canon_true_dependence(ptr noundef nonnull %1091, i32 noundef %1094, ptr noundef %1096, ptr noundef %845, ptr noundef %866, ptr noundef nonnull @rtx_varies_p) #18
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1100, label %1099

1099:                                             ; preds = %1089
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1086, i8 0, i64 16, i1 false)
  br label %1100

1100:                                             ; preds = %1082, %1054, %1099, %1089, %1085, %1045, %930, %927, %881
  %1101 = phi ptr [ %871, %1099 ], [ %871, %1089 ], [ %871, %1085 ], [ %871, %881 ], [ %871, %930 ], [ %871, %927 ], [ %1046, %1045 ], [ %1046, %1054 ], [ %1046, %1082 ]
  %1102 = phi i8 [ 1, %1099 ], [ 1, %1089 ], [ 1, %1085 ], [ 0, %881 ], [ 1, %930 ], [ 1, %927 ], [ 1, %1045 ], [ 1, %1054 ], [ 1, %1082 ]
  %1103 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 1
  %1104 = load i8, ptr %1103, align 1, !tbaa !279
  %1105 = icmp eq i8 %1104, 0
  br i1 %1105, label %1116, label %1106, !prof !277

1106:                                             ; preds = %1100
  %1107 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9, i32 0, i32 1
  %1108 = load i32, ptr %1107, align 8, !tbaa !146
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 8
  %1111 = load i64, ptr %1110, align 8, !tbaa !280
  %1112 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 7
  %1113 = load i64, ptr %1112, align 8, !tbaa !281
  %1114 = sub nsw i64 %1111, %1113
  %1115 = icmp sgt i64 %1114, %1109
  br label %1120

1116:                                             ; preds = %1100
  %1117 = getelementptr inbounds %struct.store_info, ptr %877, i64 0, i32 9
  %1118 = load i64, ptr %1117, align 8, !tbaa !146
  %1119 = icmp ne i64 %1118, 0
  br label %1120

1120:                                             ; preds = %1116, %1106
  %1121 = phi i1 [ %1115, %1106 ], [ %1119, %1116 ]
  br i1 %1121, label %1125, label %1122, !prof !277

1122:                                             ; preds = %1120
  %1123 = load i8, ptr %869, align 8, !tbaa !189
  %1124 = icmp eq i8 %1123, 0
  br i1 %1124, label %1126, label %1125

1125:                                             ; preds = %1122, %1120
  br label %1126

1126:                                             ; preds = %1125, %1122
  %1127 = phi i8 [ 0, %1125 ], [ %1102, %1122 ]
  %1128 = icmp eq i8 %1127, 0
  br i1 %1128, label %1134, label %1129, !prof !277

1129:                                             ; preds = %1126
  %1130 = icmp eq ptr %870, null
  %1131 = load ptr, ptr %872, align 8, !tbaa !209
  %1132 = getelementptr inbounds %struct.insn_info, ptr %870, i64 0, i32 9
  %1133 = select i1 %1130, ptr @active_local_stores, ptr %1132
  store ptr %1131, ptr %1133, align 8, !tbaa !135
  call fastcc void @delete_dead_store_insn(ptr noundef nonnull %869)
  br label %1134

1134:                                             ; preds = %1129, %1126
  %1135 = phi ptr [ %870, %1129 ], [ %869, %1126 ]
  %1136 = icmp eq ptr %873, null
  br i1 %1136, label %1137, label %868, !prof !277, !llvm.loop !296

1137:                                             ; preds = %1134, %865
  %1138 = phi ptr [ null, %865 ], [ %1101, %1134 ]
  %1139 = getelementptr inbounds %struct.insn_info, ptr %496, i64 0, i32 6
  %1140 = load ptr, ptr %1139, align 8, !tbaa !208
  %1141 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 10
  store ptr %1140, ptr %1141, align 8, !tbaa !297
  store ptr %762, ptr %1139, align 8, !tbaa !208
  %1142 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 4
  store ptr %845, ptr %1142, align 8, !tbaa !278
  %1143 = load i32, ptr %2, align 4, !tbaa !150
  %1144 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 6
  store i32 %1143, ptr %1144, align 8, !tbaa !276
  %1145 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 5
  store ptr %866, ptr %1145, align 8, !tbaa !295
  %1146 = load ptr, ptr %4, align 8, !tbaa !135
  %1147 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 3
  store ptr %1146, ptr %1147, align 8, !tbaa !284
  %1148 = icmp sgt i64 %638, 64
  %1149 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 1
  br i1 %1148, label %1150, label %1154, !prof !239

1150:                                             ; preds = %1137
  store i8 1, ptr %1149, align 1, !tbaa !279
  %1151 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 9
  %1152 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 9, i32 0, i32 1
  store i32 0, ptr %1152, align 8, !tbaa !146
  %1153 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %1153, ptr %1151, align 8, !tbaa !146
  br label %1159

1154:                                             ; preds = %1137
  store i8 0, ptr %1149, align 1, !tbaa !279
  %1155 = sub i64 64, %638
  %1156 = and i64 %1155, 4294967295
  %1157 = lshr i64 -1, %1156
  %1158 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 9
  store i64 %1157, ptr %1158, align 8, !tbaa !146
  br label %1159

1159:                                             ; preds = %1154, %1150
  %1160 = load i32, ptr %3, align 4, !tbaa !150
  %1161 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 2
  store i32 %1160, ptr %1161, align 4, !tbaa !205
  %1162 = load i64, ptr %1, align 8, !tbaa !226
  %1163 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 7
  store i64 %1162, ptr %1163, align 8, !tbaa !281
  %1164 = add nsw i64 %1162, %638
  %1165 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 8
  store i64 %1164, ptr %1165, align 8, !tbaa !280
  %1166 = load i32, ptr %473, align 8
  %1167 = and i32 %1166, 65535
  %1168 = icmp eq i32 %1167, 23
  %1169 = zext i1 %1168 to i8
  store i8 %1169, ptr %762, align 8, !tbaa !202
  %1170 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 11
  store ptr %843, ptr %1170, align 8, !tbaa !293
  %1171 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 12
  store ptr %842, ptr %1171, align 8, !tbaa !286
  %1172 = getelementptr inbounds %struct.store_info, ptr %762, i64 0, i32 13
  store ptr %1138, ptr %1172, align 8, !tbaa !298
  %1173 = zext i1 %1168 to i32
  br label %1174

1174:                                             ; preds = %613, %588, %495, %508, %509, %543, %575, %576, %601, %1159
  %1175 = phi i32 [ 0, %543 ], [ %1173, %1159 ], [ 0, %495 ], [ 0, %509 ], [ 0, %508 ], [ 0, %575 ], [ 0, %576 ], [ 0, %601 ], [ 0, %588 ], [ 0, %613 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  br label %1176

1176:                                             ; preds = %482, %477, %1174
  %1177 = phi i32 [ %1175, %1174 ], [ 0, %477 ], [ %489, %482 ]
  %1178 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1185, label %1180, !prof !217

1180:                                             ; preds = %1176
  %1181 = load i8, ptr %94, align 8, !tbaa !189
  %1182 = icmp eq i8 %1181, 0
  %1183 = select i1 %1182, ptr @.str.24, ptr @.str.23
  %1184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1178, ptr noundef nonnull @.str.22, i32 noundef %1177, ptr noundef nonnull %1183)
  br label %1185

1185:                                             ; preds = %1180, %1176
  %1186 = icmp eq i32 %1177, 1
  br i1 %1186, label %1187, label %1190, !prof !299

1187:                                             ; preds = %1185
  %1188 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %1189 = getelementptr inbounds %struct.insn_info, ptr %94, i64 0, i32 9
  store ptr %1188, ptr %1189, align 8, !tbaa !209
  store ptr %94, ptr @active_local_stores, align 8, !tbaa !135
  br label %1191

1190:                                             ; preds = %1185
  store i8 1, ptr %94, align 8, !tbaa !189
  br label %1191

1191:                                             ; preds = %1190, %1187, %451, %431, %275, %132, %107, %87
  call void @cselib_process_insn(ptr noundef nonnull %80) #18
  %1192 = load i32, ptr %80, align 8
  %1193 = and i32 %1192, 65535
  %1194 = add nsw i32 %1193, -7
  %1195 = icmp ult i32 %1194, 4
  br i1 %1195, label %1196, label %1197, !prof !182

1196:                                             ; preds = %1191
  call void @df_simulate_one_insn_forwards(ptr noundef nonnull %46, ptr noundef nonnull %80, ptr noundef %35) #18
  br label %1197

1197:                                             ; preds = %1196, %1191
  %1198 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %1199 = load ptr, ptr %1198, align 8, !tbaa !146
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1201, label %79, !prof !300, !llvm.loop !301

1201:                                             ; preds = %1197, %79, %73
  %1202 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !146
  %1203 = icmp eq i8 %1202, 0
  br i1 %1203, label %1280, label %1204, !prof !302

1204:                                             ; preds = %1201
  %1205 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %1206 = load ptr, ptr %1205, align 8, !tbaa !303
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1210, label %1208, !prof !302

1208:                                             ; preds = %1204
  %1209 = load i32, ptr %1206, align 8, !tbaa !304
  br label %1210

1210:                                             ; preds = %1208, %1204
  %1211 = phi i32 [ %1209, %1208 ], [ 0, %1204 ]
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1241, label %1213, !prof !306

1213:                                             ; preds = %1210
  br i1 %1207, label %1218, label %1214, !prof !307

1214:                                             ; preds = %1213
  %1215 = load i32, ptr %1206, align 8, !tbaa !304
  %1216 = icmp eq i32 %1215, 1
  %1217 = zext i1 %1216 to i8
  br label %1218

1218:                                             ; preds = %1214, %1213
  %1219 = phi i8 [ %1217, %1214 ], [ 0, %1213 ]
  %1220 = icmp eq i8 %1219, 0
  br i1 %1220, label %1280, label %1221, !prof !308

1221:                                             ; preds = %1218
  br i1 %1207, label %1225, label %1222, !prof !309

1222:                                             ; preds = %1221
  %1223 = load i32, ptr %1206, align 8, !tbaa !304
  %1224 = icmp eq i32 %1223, 1
  br i1 %1224, label %1226, label %1225, !prof !310

1225:                                             ; preds = %1222, %1221
  call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 645, ptr noundef nonnull @.str.2) #18
  br label %1226

1226:                                             ; preds = %1225, %1222
  %1227 = load ptr, ptr %1205, align 8, !tbaa !303
  %1228 = getelementptr inbounds %struct.VEC_edge_base, ptr %1227, i64 0, i32 2, i64 0
  %1229 = load ptr, ptr %1228, align 8, !tbaa !135
  %1230 = getelementptr inbounds %struct.edge_def, ptr %1229, i64 0, i32 1
  %1231 = load ptr, ptr %1230, align 8, !tbaa !311
  %1232 = load ptr, ptr @cfun, align 8, !tbaa !135
  %1233 = getelementptr inbounds %struct.function, ptr %1232, i64 0, i32 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !163
  %1235 = getelementptr inbounds %struct.control_flow_graph, ptr %1234, i64 0, i32 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !313
  %1237 = icmp ne ptr %1231, %1236
  %1238 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  %1239 = icmp ne i8 %1238, 0
  %1240 = select i1 %1237, i1 true, i1 %1239, !prof !314
  br i1 %1240, label %1280, label %1241, !prof !314

1241:                                             ; preds = %1226, %1210
  %1242 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1280, label %1244, !prof !232

1244:                                             ; preds = %1241, %1276
  %1245 = phi ptr [ %1278, %1276 ], [ %1242, %1241 ]
  %1246 = getelementptr inbounds %struct.insn_info, ptr %1245, i64 0, i32 6
  br label %1247

1247:                                             ; preds = %1247, %1244
  %1248 = phi ptr [ %1246, %1244 ], [ %1252, %1247 ]
  %1249 = load ptr, ptr %1248, align 8, !tbaa !135
  %1250 = load i8, ptr %1249, align 8, !tbaa !202
  %1251 = icmp eq i8 %1250, 0
  %1252 = getelementptr inbounds %struct.store_info, ptr %1249, i64 0, i32 10
  br i1 %1251, label %1247, label %1253, !llvm.loop !315

1253:                                             ; preds = %1247
  %1254 = getelementptr inbounds %struct.store_info, ptr %1249, i64 0, i32 6
  %1255 = load i32, ptr %1254, align 8, !tbaa !276
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1260, label %1257

1257:                                             ; preds = %1253
  %1258 = load i8, ptr %1245, align 8, !tbaa !189
  %1259 = icmp eq i8 %1258, 0
  br i1 %1259, label %1275, label %1260

1260:                                             ; preds = %1257, %1253
  %1261 = getelementptr inbounds %struct.store_info, ptr %1249, i64 0, i32 2
  %1262 = load i32, ptr %1261, align 4, !tbaa !205
  %1263 = icmp sgt i32 %1262, -1
  br i1 %1263, label %1264, label %1276

1264:                                             ; preds = %1260
  %1265 = load ptr, ptr @rtx_group_vec, align 8
  %1266 = zext nneg i32 %1262 to i64
  %1267 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %1265, i64 0, i32 2, i64 %1266
  %1268 = load ptr, ptr %1267, align 8, !tbaa !135
  %1269 = getelementptr inbounds %struct.group_info, ptr %1268, i64 0, i32 3
  %1270 = load i8, ptr %1269, align 1, !tbaa !206
  %1271 = icmp eq i8 %1270, 0
  br i1 %1271, label %1276, label %1272

1272:                                             ; preds = %1264
  %1273 = load i8, ptr %1245, align 8, !tbaa !189
  %1274 = icmp eq i8 %1273, 0
  br i1 %1274, label %1275, label %1276

1275:                                             ; preds = %1272, %1257
  call fastcc void @delete_dead_store_insn(ptr noundef nonnull %1245)
  br label %1276

1276:                                             ; preds = %1275, %1272, %1264, %1260
  %1277 = getelementptr inbounds %struct.insn_info, ptr %1245, i64 0, i32 9
  %1278 = load ptr, ptr %1277, align 8, !tbaa !135
  %1279 = icmp eq ptr %1278, null
  br i1 %1279, label %1280, label %1244, !prof !232, !llvm.loop !316

1280:                                             ; preds = %1276, %1241, %1226, %1218, %1201
  %1281 = load ptr, ptr @deferred_change_list, align 8, !tbaa !135
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1283, label %1286, !prof !232

1283:                                             ; preds = %1286, %1280
  %1284 = load ptr, ptr %48, align 8, !tbaa !135
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1375, label %1295, !prof !317

1286:                                             ; preds = %1280, %1286
  %1287 = phi ptr [ %1289, %1286 ], [ %1281, %1280 ]
  %1288 = getelementptr inbounds %struct.deferred_change, ptr %1287, i64 0, i32 2
  %1289 = load ptr, ptr %1288, align 8, !tbaa !318
  %1290 = getelementptr inbounds %struct.deferred_change, ptr %1287, i64 0, i32 1
  %1291 = load ptr, ptr %1290, align 8, !tbaa !320
  %1292 = load ptr, ptr %1287, align 8, !tbaa !321
  store ptr %1291, ptr %1292, align 8, !tbaa !135
  %1293 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !135
  call void @pool_free(ptr noundef %1293, ptr noundef nonnull %1287) #18
  store ptr %1289, ptr @deferred_change_list, align 8, !tbaa !135
  %1294 = icmp eq ptr %1289, null
  br i1 %1294, label %1283, label %1286, !prof !232, !llvm.loop !322

1295:                                             ; preds = %1283, %1371
  %1296 = phi ptr [ %1373, %1371 ], [ %1284, %1283 ]
  %1297 = getelementptr inbounds %struct.insn_info, ptr %1296, i64 0, i32 4
  %1298 = load i8, ptr %1297, align 4, !tbaa !259
  %1299 = icmp eq i8 %1298, 0
  %1300 = getelementptr inbounds %struct.insn_info, ptr %1296, i64 0, i32 6
  %1301 = load ptr, ptr %1300, align 8, !tbaa !135
  %1302 = icmp eq ptr %1301, null
  br i1 %1299, label %1358, label %1303, !prof !323

1303:                                             ; preds = %1295
  br i1 %1302, label %1336, label %1304, !prof !324

1304:                                             ; preds = %1303, %1308
  %1305 = phi ptr [ %1310, %1308 ], [ %1301, %1303 ]
  %1306 = load i8, ptr %1305, align 8, !tbaa !202
  %1307 = icmp eq i8 %1306, 0
  br i1 %1307, label %1308, label %1312, !prof !325

1308:                                             ; preds = %1304
  %1309 = getelementptr inbounds %struct.store_info, ptr %1305, i64 0, i32 10
  %1310 = load ptr, ptr %1309, align 8, !tbaa !135
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1336, label %1304, !prof !325, !llvm.loop !326

1312:                                             ; preds = %1304
  %1313 = getelementptr inbounds %struct.store_info, ptr %1305, i64 0, i32 13
  %1314 = load ptr, ptr %1313, align 8, !tbaa !298
  %1315 = icmp eq ptr %1314, null
  br i1 %1315, label %1335, label %1316, !prof !260

1316:                                             ; preds = %1312
  %1317 = getelementptr inbounds %struct.insn_info, ptr %1314, i64 0, i32 5
  %1318 = load ptr, ptr %1317, align 8, !tbaa !187
  %1319 = icmp eq ptr %1318, null
  br i1 %1319, label %1335, label %1320

1320:                                             ; preds = %1316
  %1321 = load i8, ptr %1296, align 8, !tbaa !189
  %1322 = icmp eq i8 %1321, 0
  br i1 %1322, label %1323, label %1335

1323:                                             ; preds = %1320
  %1324 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1325 = icmp eq ptr %1324, null
  br i1 %1325, label %1334, label %1326

1326:                                             ; preds = %1323
  %1327 = getelementptr inbounds %struct.insn_info, ptr %1296, i64 0, i32 5
  %1328 = load ptr, ptr %1327, align 8, !tbaa !187
  %1329 = getelementptr inbounds %struct.rtx_def, ptr %1328, i64 0, i32 1
  %1330 = load i32, ptr %1329, align 8, !tbaa !146
  %1331 = getelementptr inbounds %struct.rtx_def, ptr %1318, i64 0, i32 1
  %1332 = load i32, ptr %1331, align 8, !tbaa !146
  %1333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1324, ptr noundef nonnull @.str.15, i32 noundef %1330, i32 noundef %1332)
  br label %1334

1334:                                             ; preds = %1326, %1323
  call fastcc void @delete_dead_store_insn(ptr noundef nonnull %1296)
  br label %1335

1335:                                             ; preds = %1334, %1320, %1316, %1312
  store ptr null, ptr %1313, align 8, !tbaa !298
  br label %1336

1336:                                             ; preds = %1308, %1303, %1335
  %1337 = load ptr, ptr %1300, align 8, !tbaa !208
  %1338 = icmp eq ptr %1337, null
  br i1 %1338, label %1357, label %1339, !prof !327

1339:                                             ; preds = %1336, %1349
  %1340 = phi ptr [ %1342, %1349 ], [ %1337, %1336 ]
  %1341 = getelementptr inbounds %struct.store_info, ptr %1340, i64 0, i32 10
  %1342 = load ptr, ptr %1341, align 8, !tbaa !297
  %1343 = getelementptr inbounds %struct.store_info, ptr %1340, i64 0, i32 1
  %1344 = load i8, ptr %1343, align 1, !tbaa !279
  %1345 = icmp eq i8 %1344, 0
  br i1 %1345, label %1349, label %1346, !prof !260

1346:                                             ; preds = %1339
  %1347 = getelementptr inbounds %struct.store_info, ptr %1340, i64 0, i32 9
  %1348 = load ptr, ptr %1347, align 8, !tbaa !146
  call void @bitmap_obstack_free(ptr noundef %1348) #18
  store ptr null, ptr %1347, align 8, !tbaa !146
  br label %1349

1349:                                             ; preds = %1346, %1339
  %1350 = getelementptr inbounds %struct.store_info, ptr %1340, i64 0, i32 3
  %1351 = load ptr, ptr %1350, align 8, !tbaa !284
  %1352 = icmp eq ptr %1351, null
  %1353 = load ptr, ptr @rtx_store_info_pool, align 8
  %1354 = load ptr, ptr @cse_store_info_pool, align 8
  %1355 = select i1 %1352, ptr %1353, ptr %1354
  call void @pool_free(ptr noundef %1355, ptr noundef nonnull %1340) #18
  %1356 = icmp eq ptr %1342, null
  br i1 %1356, label %1357, label %1339, !prof !328, !llvm.loop !329

1357:                                             ; preds = %1349, %1336
  store i8 1, ptr %1296, align 8, !tbaa !189
  store i8 0, ptr %1297, align 4, !tbaa !259
  store ptr null, ptr %1300, align 8, !tbaa !208
  br label %1371

1358:                                             ; preds = %1295
  br i1 %1302, label %1371, label %1359, !prof !330

1359:                                             ; preds = %1358, %1367
  %1360 = phi ptr [ %1369, %1367 ], [ %1301, %1358 ]
  %1361 = getelementptr inbounds %struct.store_info, ptr %1360, i64 0, i32 1
  %1362 = load i8, ptr %1361, align 1, !tbaa !279
  %1363 = icmp eq i8 %1362, 0
  br i1 %1363, label %1367, label %1364, !prof !246

1364:                                             ; preds = %1359
  %1365 = getelementptr inbounds %struct.store_info, ptr %1360, i64 0, i32 9
  %1366 = load ptr, ptr %1365, align 8, !tbaa !146
  call void @bitmap_obstack_free(ptr noundef %1366) #18
  store ptr null, ptr %1365, align 8, !tbaa !146
  store i8 0, ptr %1361, align 1, !tbaa !279
  br label %1367

1367:                                             ; preds = %1364, %1359
  %1368 = getelementptr inbounds %struct.store_info, ptr %1360, i64 0, i32 10
  %1369 = load ptr, ptr %1368, align 8, !tbaa !135
  %1370 = icmp eq ptr %1369, null
  br i1 %1370, label %1371, label %1359, !prof !246, !llvm.loop !331

1371:                                             ; preds = %1367, %1358, %1357
  %1372 = getelementptr inbounds %struct.insn_info, ptr %1296, i64 0, i32 8
  %1373 = load ptr, ptr %1372, align 8, !tbaa !135
  %1374 = icmp eq ptr %1373, null
  br i1 %1374, label %1375, label %1295, !prof !332, !llvm.loop !333

1375:                                             ; preds = %1371, %1283
  %1376 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %1376) #18
  br label %1377

1377:                                             ; preds = %1375, %45
  store ptr null, ptr %53, align 8, !tbaa !171
  %1378 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %1379 = load ptr, ptr %1378, align 8, !tbaa !135
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1381, label %45, !prof !334, !llvm.loop !335

1381:                                             ; preds = %1377, %33
  call void @bitmap_obstack_free(ptr noundef %35) #18
  call void @cselib_finish() #18
  %1382 = load ptr, ptr @rtx_group_table, align 8, !tbaa !135
  call void @htab_empty(ptr noundef %1382) #18
  br label %1383

1383:                                             ; preds = %1451, %1381
  %1384 = phi i32 [ 0, %1381 ], [ %1452, %1451 ]
  %1385 = load ptr, ptr @rtx_group_vec, align 8
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %1394, label %1387, !prof !336

1387:                                             ; preds = %1383
  %1388 = load i32, ptr %1385, align 8, !tbaa !337
  %1389 = icmp ugt i32 %1388, %1384
  br i1 %1389, label %1390, label %1394, !prof !339

1390:                                             ; preds = %1387
  %1391 = zext i32 %1384 to i64
  %1392 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %1385, i64 0, i32 2, i64 %1391
  %1393 = load ptr, ptr %1392, align 8, !tbaa !135
  br label %1394

1394:                                             ; preds = %1390, %1387, %1383
  %1395 = phi ptr [ %1393, %1390 ], [ null, %1387 ], [ null, %1383 ]
  %1396 = phi i1 [ false, %1390 ], [ true, %1387 ], [ true, %1383 ]
  br i1 %1396, label %1453, label %1397, !prof !340

1397:                                             ; preds = %1394
  %1398 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !146
  %1399 = icmp eq i8 %1398, 0
  br i1 %1399, label %1419, label %1400, !prof !341

1400:                                             ; preds = %1397
  %1401 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 3
  %1402 = load i8, ptr %1401, align 1, !tbaa !206
  %1403 = icmp eq i8 %1402, 0
  br i1 %1403, label %1419, label %1404, !prof !342

1404:                                             ; preds = %1400
  %1405 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 8
  %1406 = load ptr, ptr %1405, align 8, !tbaa !343
  %1407 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 6
  %1408 = load ptr, ptr %1407, align 8, !tbaa !344
  %1409 = call zeroext i8 @bitmap_ior_into(ptr noundef %1406, ptr noundef %1408) #18
  %1410 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 9
  %1411 = load ptr, ptr %1410, align 8, !tbaa !243
  %1412 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 7
  %1413 = load ptr, ptr %1412, align 8, !tbaa !242
  %1414 = call zeroext i8 @bitmap_ior_into(ptr noundef %1411, ptr noundef %1413) #18
  %1415 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1419, label %1417, !prof !160

1417:                                             ; preds = %1404
  %1418 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1415, ptr noundef nonnull @.str.59, i32 noundef %1384)
  br label %1419

1419:                                             ; preds = %1417, %1404, %1400, %1397
  %1420 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 13
  %1421 = load i32, ptr %1420, align 8, !tbaa !251
  %1422 = add nsw i32 %1421, 1
  store i32 %1422, ptr %1420, align 8, !tbaa !251
  %1423 = sext i32 %1422 to i64
  %1424 = shl nsw i64 %1423, 2
  %1425 = call ptr @xmalloc(i64 noundef %1424) #18
  %1426 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 11
  store ptr %1425, ptr %1426, align 8, !tbaa !345
  %1427 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 14
  %1428 = load i32, ptr %1427, align 4, !tbaa !244
  %1429 = add nsw i32 %1428, 1
  store i32 %1429, ptr %1427, align 4, !tbaa !244
  %1430 = sext i32 %1429 to i64
  %1431 = shl nsw i64 %1430, 2
  %1432 = call ptr @xmalloc(i64 noundef %1431) #18
  %1433 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 12
  store ptr %1432, ptr %1433, align 8, !tbaa !346
  %1434 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 2
  store i8 0, ptr %1434, align 4, !tbaa !347
  %1435 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1451, label %1437, !prof !348

1437:                                             ; preds = %1419
  %1438 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 8
  %1439 = load ptr, ptr %1438, align 8, !tbaa !343
  %1440 = call i64 @bitmap_count_bits(ptr noundef %1439) #18
  %1441 = trunc i64 %1440 to i32
  %1442 = getelementptr inbounds %struct.group_info, ptr %1395, i64 0, i32 9
  %1443 = load ptr, ptr %1442, align 8, !tbaa !243
  %1444 = call i64 @bitmap_count_bits(ptr noundef %1443) #18
  %1445 = trunc i64 %1444 to i32
  %1446 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1435, ptr noundef nonnull @.str.60, i32 noundef %1384, i32 noundef %1441, i32 noundef %1445)
  %1447 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1448 = load ptr, ptr %1438, align 8, !tbaa !343
  call void @bitmap_print(ptr noundef %1447, ptr noundef %1448, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #18
  %1449 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1450 = load ptr, ptr %1442, align 8, !tbaa !243
  call void @bitmap_print(ptr noundef %1449, ptr noundef %1450, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.31) #18
  br label %1451

1451:                                             ; preds = %1437, %1419
  %1452 = add i32 %1384, 1
  br label %1383, !llvm.loop !349

1453:                                             ; preds = %1394
  store i32 1, ptr @current_position, align 4, !tbaa !150
  br label %1454

1454:                                             ; preds = %1659, %1453
  %1455 = phi i32 [ 0, %1453 ], [ %1660, %1659 ]
  %1456 = load ptr, ptr @rtx_group_vec, align 8
  %1457 = icmp eq ptr %1456, null
  br i1 %1457, label %1465, label %1458, !prof !336

1458:                                             ; preds = %1454
  %1459 = load i32, ptr %1456, align 8, !tbaa !337
  %1460 = icmp ugt i32 %1459, %1455
  br i1 %1460, label %1461, label %1465, !prof !339

1461:                                             ; preds = %1458
  %1462 = zext i32 %1455 to i64
  %1463 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %1456, i64 0, i32 2, i64 %1462
  %1464 = load ptr, ptr %1463, align 8, !tbaa !135
  br label %1465

1465:                                             ; preds = %1461, %1458, %1454
  %1466 = phi ptr [ %1464, %1461 ], [ null, %1458 ], [ null, %1454 ]
  %1467 = phi i1 [ false, %1461 ], [ true, %1458 ], [ true, %1454 ]
  br i1 %1467, label %1661, label %1468, !prof !340

1468:                                             ; preds = %1465
  %1469 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %1470 = icmp eq ptr %1466, %1469
  br i1 %1470, label %1659, label %1471, !prof !341

1471:                                             ; preds = %1468
  %1472 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 11
  %1473 = load ptr, ptr %1472, align 8, !tbaa !345
  %1474 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 13
  %1475 = load i32, ptr %1474, align 8, !tbaa !251
  %1476 = sext i32 %1475 to i64
  %1477 = shl nsw i64 %1476, 2
  call void @llvm.memset.p0.i64(ptr align 4 %1473, i8 0, i64 %1477, i1 false), !prof !350
  %1478 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 12
  %1479 = load ptr, ptr %1478, align 8, !tbaa !346
  %1480 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 14
  %1481 = load i32, ptr %1480, align 4, !tbaa !244
  %1482 = sext i32 %1481 to i64
  %1483 = shl nsw i64 %1482, 2
  call void @llvm.memset.p0.i64(ptr align 4 %1479, i8 0, i64 %1483, i1 false), !prof !351
  %1484 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 10
  %1485 = load ptr, ptr %1484, align 8, !tbaa !352
  call void @bitmap_clear(ptr noundef %1485) #18
  %1486 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 8
  %1487 = load ptr, ptr %1486, align 8, !tbaa !343
  %1488 = load ptr, ptr %1487, align 8, !tbaa !353
  %1489 = icmp eq ptr %1488, null
  %1490 = select i1 %1489, ptr @bitmap_zero_bits, ptr %1488, !prof !355
  %1491 = getelementptr inbounds %struct.bitmap_element_def, ptr %1490, i64 0, i32 2
  %1492 = load i32, ptr %1491, align 8, !tbaa !356
  %1493 = shl i32 %1492, 7
  %1494 = getelementptr inbounds %struct.bitmap_element_def, ptr %1490, i64 0, i32 3
  %1495 = load i64, ptr %1494, align 8, !tbaa !226
  %1496 = icmp eq i64 %1495, 0
  %1497 = zext i1 %1496 to i32
  %1498 = or disjoint i32 %1493, %1497
  br label %1499

1499:                                             ; preds = %1560, %1471
  %1500 = phi i64 [ %1495, %1471 ], [ %1570, %1560 ]
  %1501 = phi i32 [ 0, %1471 ], [ %1556, %1560 ]
  %1502 = phi ptr [ %1490, %1471 ], [ %1557, %1560 ]
  %1503 = phi i32 [ %1498, %1471 ], [ %1571, %1560 ]
  %1504 = icmp eq i64 %1500, 0
  br i1 %1504, label %1519, label %1505, !prof !358

1505:                                             ; preds = %1533, %1499
  %1506 = phi i64 [ %1500, %1499 ], [ %1538, %1533 ]
  %1507 = phi i32 [ %1501, %1499 ], [ %1534, %1533 ]
  %1508 = phi ptr [ %1502, %1499 ], [ %1525, %1533 ]
  %1509 = phi i32 [ %1503, %1499 ], [ %1535, %1533 ]
  %1510 = and i64 %1506, 1
  %1511 = icmp eq i64 %1510, 0
  br i1 %1511, label %1512, label %1554, !prof !359

1512:                                             ; preds = %1505, %1512
  %1513 = phi i32 [ %1516, %1512 ], [ %1509, %1505 ]
  %1514 = phi i64 [ %1515, %1512 ], [ %1506, %1505 ]
  %1515 = lshr exact i64 %1514, 1
  %1516 = add i32 %1513, 1
  %1517 = and i64 %1514, 2
  %1518 = icmp eq i64 %1517, 0
  br i1 %1518, label %1512, label %1554, !prof !360, !llvm.loop !361

1519:                                             ; preds = %1499
  %1520 = add i32 %1503, 63
  %1521 = and i32 %1520, -64
  %1522 = add i32 %1501, 1
  br label %1523

1523:                                             ; preds = %1550, %1519
  %1524 = phi i64 [ %1500, %1519 ], [ %1545, %1550 ]
  %1525 = phi ptr [ %1502, %1519 ], [ %1548, %1550 ]
  %1526 = phi i32 [ %1521, %1519 ], [ %1553, %1550 ]
  %1527 = phi i32 [ %1522, %1519 ], [ 0, %1550 ]
  %1528 = icmp eq i32 %1527, 2
  br i1 %1528, label %1544, label %1529, !prof !362

1529:                                             ; preds = %1523
  %1530 = add i32 %1526, 128
  %1531 = shl i32 %1527, 6
  %1532 = sub i32 %1530, %1531
  br label %1533

1533:                                             ; preds = %1529, %1540
  %1534 = phi i32 [ %1542, %1540 ], [ %1527, %1529 ]
  %1535 = phi i32 [ %1541, %1540 ], [ %1526, %1529 ]
  %1536 = zext i32 %1534 to i64
  %1537 = getelementptr inbounds %struct.bitmap_element_def, ptr %1525, i64 0, i32 3, i64 %1536
  %1538 = load i64, ptr %1537, align 8, !tbaa !226
  %1539 = icmp eq i64 %1538, 0
  br i1 %1539, label %1540, label %1505, !prof !348

1540:                                             ; preds = %1533
  %1541 = add i32 %1535, 64
  %1542 = add i32 %1534, 1
  %1543 = icmp eq i32 %1542, 2
  br i1 %1543, label %1544, label %1533, !prof !363, !llvm.loop !364

1544:                                             ; preds = %1540, %1523
  %1545 = phi i64 [ %1524, %1523 ], [ %1538, %1540 ]
  %1546 = phi i32 [ %1526, %1523 ], [ %1532, %1540 ]
  %1547 = phi i32 [ %1527, %1523 ], [ 2, %1540 ]
  %1548 = load ptr, ptr %1525, align 8, !tbaa !365
  %1549 = icmp eq ptr %1548, null
  br i1 %1549, label %1554, label %1550, !prof !348

1550:                                             ; preds = %1544
  %1551 = getelementptr inbounds %struct.bitmap_element_def, ptr %1548, i64 0, i32 2
  %1552 = load i32, ptr %1551, align 8, !tbaa !356
  %1553 = shl i32 %1552, 7
  br label %1523, !llvm.loop !366

1554:                                             ; preds = %1544, %1512, %1505
  %1555 = phi i64 [ %1506, %1505 ], [ %1515, %1512 ], [ %1545, %1544 ]
  %1556 = phi i32 [ %1507, %1505 ], [ %1507, %1512 ], [ %1547, %1544 ]
  %1557 = phi ptr [ %1508, %1505 ], [ %1508, %1512 ], [ %1548, %1544 ]
  %1558 = phi i32 [ %1509, %1505 ], [ %1516, %1512 ], [ %1546, %1544 ]
  %1559 = phi i1 [ false, %1505 ], [ false, %1512 ], [ true, %1544 ]
  br i1 %1559, label %1572, label %1560, !prof !358

1560:                                             ; preds = %1554
  %1561 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 2
  %1562 = load ptr, ptr %1484, align 8, !tbaa !352
  %1563 = load i32, ptr @current_position, align 4, !tbaa !150
  %1564 = call zeroext i8 @bitmap_set_bit(ptr noundef %1562, i32 noundef %1563) #18
  %1565 = load i32, ptr @current_position, align 4, !tbaa !150
  %1566 = add i32 %1565, 1
  store i32 %1566, ptr @current_position, align 4, !tbaa !150
  %1567 = load ptr, ptr %1472, align 8, !tbaa !345
  %1568 = zext i32 %1558 to i64
  %1569 = getelementptr inbounds i32, ptr %1567, i64 %1568
  store i32 %1565, ptr %1569, align 4, !tbaa !150
  store i8 1, ptr %1561, align 4, !tbaa !347
  %1570 = lshr i64 %1555, 1
  %1571 = add i32 %1558, 1
  br label %1499, !llvm.loop !367

1572:                                             ; preds = %1554
  %1573 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 9
  %1574 = load ptr, ptr %1573, align 8, !tbaa !243
  %1575 = load ptr, ptr %1574, align 8, !tbaa !353
  %1576 = icmp eq ptr %1575, null
  %1577 = select i1 %1576, ptr @bitmap_zero_bits, ptr %1575, !prof !368
  %1578 = getelementptr inbounds %struct.bitmap_element_def, ptr %1577, i64 0, i32 2
  %1579 = load i32, ptr %1578, align 8, !tbaa !356
  %1580 = shl i32 %1579, 7
  %1581 = getelementptr inbounds %struct.bitmap_element_def, ptr %1577, i64 0, i32 3
  %1582 = load i64, ptr %1581, align 8, !tbaa !226
  %1583 = icmp eq i64 %1582, 0
  %1584 = zext i1 %1583 to i32
  %1585 = or disjoint i32 %1580, %1584
  br label %1586

1586:                                             ; preds = %1647, %1572
  %1587 = phi i64 [ %1582, %1572 ], [ %1657, %1647 ]
  %1588 = phi i32 [ 0, %1572 ], [ %1643, %1647 ]
  %1589 = phi ptr [ %1577, %1572 ], [ %1644, %1647 ]
  %1590 = phi i32 [ %1585, %1572 ], [ %1658, %1647 ]
  %1591 = icmp eq i64 %1587, 0
  br i1 %1591, label %1606, label %1592, !prof !369

1592:                                             ; preds = %1620, %1586
  %1593 = phi i64 [ %1587, %1586 ], [ %1625, %1620 ]
  %1594 = phi i32 [ %1588, %1586 ], [ %1621, %1620 ]
  %1595 = phi ptr [ %1589, %1586 ], [ %1612, %1620 ]
  %1596 = phi i32 [ %1590, %1586 ], [ %1622, %1620 ]
  %1597 = and i64 %1593, 1
  %1598 = icmp eq i64 %1597, 0
  br i1 %1598, label %1599, label %1641, !prof !370

1599:                                             ; preds = %1592, %1599
  %1600 = phi i32 [ %1603, %1599 ], [ %1596, %1592 ]
  %1601 = phi i64 [ %1602, %1599 ], [ %1593, %1592 ]
  %1602 = lshr exact i64 %1601, 1
  %1603 = add i32 %1600, 1
  %1604 = and i64 %1601, 2
  %1605 = icmp eq i64 %1604, 0
  br i1 %1605, label %1599, label %1641, !prof !371, !llvm.loop !361

1606:                                             ; preds = %1586
  %1607 = add i32 %1590, 63
  %1608 = and i32 %1607, -64
  %1609 = add i32 %1588, 1
  br label %1610

1610:                                             ; preds = %1637, %1606
  %1611 = phi i64 [ %1587, %1606 ], [ %1632, %1637 ]
  %1612 = phi ptr [ %1589, %1606 ], [ %1635, %1637 ]
  %1613 = phi i32 [ %1608, %1606 ], [ %1640, %1637 ]
  %1614 = phi i32 [ %1609, %1606 ], [ 0, %1637 ]
  %1615 = icmp eq i32 %1614, 2
  br i1 %1615, label %1631, label %1616, !prof !362

1616:                                             ; preds = %1610
  %1617 = add i32 %1613, 128
  %1618 = shl i32 %1614, 6
  %1619 = sub i32 %1617, %1618
  br label %1620

1620:                                             ; preds = %1616, %1627
  %1621 = phi i32 [ %1629, %1627 ], [ %1614, %1616 ]
  %1622 = phi i32 [ %1628, %1627 ], [ %1613, %1616 ]
  %1623 = zext i32 %1621 to i64
  %1624 = getelementptr inbounds %struct.bitmap_element_def, ptr %1612, i64 0, i32 3, i64 %1623
  %1625 = load i64, ptr %1624, align 8, !tbaa !226
  %1626 = icmp eq i64 %1625, 0
  br i1 %1626, label %1627, label %1592, !prof !348

1627:                                             ; preds = %1620
  %1628 = add i32 %1622, 64
  %1629 = add i32 %1621, 1
  %1630 = icmp eq i32 %1629, 2
  br i1 %1630, label %1631, label %1620, !prof !363, !llvm.loop !364

1631:                                             ; preds = %1627, %1610
  %1632 = phi i64 [ %1611, %1610 ], [ %1625, %1627 ]
  %1633 = phi i32 [ %1613, %1610 ], [ %1619, %1627 ]
  %1634 = phi i32 [ %1614, %1610 ], [ 2, %1627 ]
  %1635 = load ptr, ptr %1612, align 8, !tbaa !365
  %1636 = icmp eq ptr %1635, null
  br i1 %1636, label %1641, label %1637, !prof !348

1637:                                             ; preds = %1631
  %1638 = getelementptr inbounds %struct.bitmap_element_def, ptr %1635, i64 0, i32 2
  %1639 = load i32, ptr %1638, align 8, !tbaa !356
  %1640 = shl i32 %1639, 7
  br label %1610, !llvm.loop !366

1641:                                             ; preds = %1631, %1599, %1592
  %1642 = phi i64 [ %1593, %1592 ], [ %1602, %1599 ], [ %1632, %1631 ]
  %1643 = phi i32 [ %1594, %1592 ], [ %1594, %1599 ], [ %1634, %1631 ]
  %1644 = phi ptr [ %1595, %1592 ], [ %1595, %1599 ], [ %1635, %1631 ]
  %1645 = phi i32 [ %1596, %1592 ], [ %1603, %1599 ], [ %1633, %1631 ]
  %1646 = phi i1 [ false, %1592 ], [ false, %1599 ], [ true, %1631 ]
  br i1 %1646, label %1659, label %1647, !prof !369

1647:                                             ; preds = %1641
  %1648 = getelementptr inbounds %struct.group_info, ptr %1466, i64 0, i32 2
  %1649 = load ptr, ptr %1484, align 8, !tbaa !352
  %1650 = load i32, ptr @current_position, align 4, !tbaa !150
  %1651 = call zeroext i8 @bitmap_set_bit(ptr noundef %1649, i32 noundef %1650) #18
  %1652 = load i32, ptr @current_position, align 4, !tbaa !150
  %1653 = add i32 %1652, 1
  store i32 %1653, ptr @current_position, align 4, !tbaa !150
  %1654 = load ptr, ptr %1478, align 8, !tbaa !346
  %1655 = zext i32 %1645 to i64
  %1656 = getelementptr inbounds i32, ptr %1654, i64 %1655
  store i32 %1652, ptr %1656, align 4, !tbaa !150
  store i8 1, ptr %1648, align 4, !tbaa !347
  %1657 = lshr i64 %1642, 1
  %1658 = add i32 %1645, 1
  br label %1586, !llvm.loop !372

1659:                                             ; preds = %1641, %1468
  %1660 = add i32 %1455, 1
  br label %1454, !llvm.loop !373

1661:                                             ; preds = %1465
  %1662 = load i32, ptr @current_position, align 4, !tbaa !150
  %1663 = icmp eq i32 %1662, 1
  br i1 %1663, label %1910, label %1664, !prof !374

1664:                                             ; preds = %1661
  %1665 = call i32 @df_set_flags(i32 noundef 1) #18
  call void @df_analyze() #18
  %1666 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1667 = icmp eq ptr %1666, null
  br i1 %1667, label %1670, label %1668, !prof !375

1668:                                             ; preds = %1664
  %1669 = call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr nonnull %1666)
  br label %1670

1670:                                             ; preds = %1668, %1664
  call fastcc void @dse_step3(i8 noundef zeroext 0)
  call fastcc void @dse_step4()
  %1671 = load ptr, ptr @cfun, align 8, !tbaa !135
  %1672 = getelementptr inbounds %struct.function, ptr %1671, i64 0, i32 1
  %1673 = load ptr, ptr %1672, align 8, !tbaa !163
  %1674 = load ptr, ptr %1673, align 8, !tbaa !376
  %1675 = getelementptr inbounds %struct.basic_block_def, ptr %1674, i64 0, i32 6
  %1676 = load ptr, ptr %1675, align 8, !tbaa !377
  %1677 = getelementptr inbounds %struct.control_flow_graph, ptr %1673, i64 0, i32 1
  %1678 = load ptr, ptr %1677, align 8, !tbaa !313
  %1679 = icmp eq ptr %1676, %1678
  br i1 %1679, label %1910, label %1689, !prof !378

1680:                                             ; preds = %1906, %1689
  %1681 = getelementptr inbounds %struct.basic_block_def, ptr %1690, i64 0, i32 6
  %1682 = load ptr, ptr %1681, align 8, !tbaa !377
  %1683 = load ptr, ptr @cfun, align 8, !tbaa !135
  %1684 = getelementptr inbounds %struct.function, ptr %1683, i64 0, i32 1
  %1685 = load ptr, ptr %1684, align 8, !tbaa !163
  %1686 = getelementptr inbounds %struct.control_flow_graph, ptr %1685, i64 0, i32 1
  %1687 = load ptr, ptr %1686, align 8, !tbaa !313
  %1688 = icmp eq ptr %1682, %1687
  br i1 %1688, label %1910, label %1689, !prof !379, !llvm.loop !380

1689:                                             ; preds = %1670, %1680
  %1690 = phi ptr [ %1682, %1680 ], [ %1676, %1670 ]
  %1691 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %1692 = getelementptr inbounds %struct.basic_block_def, ptr %1690, i64 0, i32 9
  %1693 = load i32, ptr %1692, align 8, !tbaa !169
  %1694 = sext i32 %1693 to i64
  %1695 = getelementptr inbounds ptr, ptr %1691, i64 %1694
  %1696 = load ptr, ptr %1695, align 8, !tbaa !135
  %1697 = getelementptr inbounds %struct.bb_info, ptr %1696, i64 0, i32 5
  %1698 = load ptr, ptr %1697, align 8, !tbaa !381
  %1699 = load ptr, ptr %1696, align 8, !tbaa !135
  %1700 = icmp eq ptr %1699, null
  br i1 %1700, label %1680, label %1701, !prof !382

1701:                                             ; preds = %1689, %1906
  %1702 = phi ptr [ %1908, %1906 ], [ %1699, %1689 ]
  %1703 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1704 = icmp eq ptr %1703, null
  br i1 %1704, label %1714, label %1705, !prof !383

1705:                                             ; preds = %1701
  %1706 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 5
  %1707 = load ptr, ptr %1706, align 8, !tbaa !187
  %1708 = icmp eq ptr %1707, null
  br i1 %1708, label %1714, label %1709

1709:                                             ; preds = %1705
  %1710 = getelementptr inbounds %struct.rtx_def, ptr %1707, i64 0, i32 1
  %1711 = load i32, ptr %1710, align 8, !tbaa !146
  %1712 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1703, ptr noundef nonnull @.str.73, i32 noundef %1711)
  %1713 = load ptr, ptr @dump_file, align 8, !tbaa !135
  call void @bitmap_print(ptr noundef %1713, ptr noundef %1698, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31) #18
  br label %1714

1714:                                             ; preds = %1709, %1705, %1701
  %1715 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 5
  %1716 = load ptr, ptr %1715, align 8, !tbaa !187
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %1814, label %1718, !prof !384

1718:                                             ; preds = %1714
  %1719 = load i32, ptr %1716, align 8
  %1720 = and i32 %1719, 65535
  %1721 = add nsw i32 %1720, -7
  %1722 = icmp ult i32 %1721, 4
  br i1 %1722, label %1723, label %1814, !prof !383

1723:                                             ; preds = %1718
  %1724 = load i8, ptr %1702, align 8, !tbaa !189
  %1725 = icmp eq i8 %1724, 0
  br i1 %1725, label %1726, label %1814, !prof !385

1726:                                             ; preds = %1723
  %1727 = load ptr, ptr %1698, align 8, !tbaa !353
  %1728 = icmp eq ptr %1727, null
  br i1 %1728, label %1814, label %1729, !prof !386

1729:                                             ; preds = %1726
  %1730 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 6
  br label %1731

1731:                                             ; preds = %1731, %1729
  %1732 = phi ptr [ %1730, %1729 ], [ %1736, %1731 ]
  %1733 = load ptr, ptr %1732, align 8, !tbaa !135
  %1734 = load i8, ptr %1733, align 8, !tbaa !202
  %1735 = icmp eq i8 %1734, 0
  %1736 = getelementptr inbounds %struct.store_info, ptr %1733, i64 0, i32 10
  br i1 %1735, label %1731, label %1737, !llvm.loop !387

1737:                                             ; preds = %1731
  %1738 = getelementptr inbounds %struct.store_info, ptr %1733, i64 0, i32 6
  %1739 = load i32, ptr %1738, align 8, !tbaa !276
  %1740 = icmp eq i32 %1739, 0
  br i1 %1740, label %1741, label %1802

1741:                                             ; preds = %1737
  %1742 = getelementptr inbounds %struct.store_info, ptr %1733, i64 0, i32 7
  %1743 = load i64, ptr %1742, align 8, !tbaa !281
  %1744 = getelementptr inbounds %struct.store_info, ptr %1733, i64 0, i32 8
  %1745 = load i64, ptr %1744, align 8, !tbaa !280
  %1746 = icmp slt i64 %1743, %1745
  br i1 %1746, label %1747, label %1802

1747:                                             ; preds = %1741
  %1748 = load ptr, ptr @rtx_group_vec, align 8
  %1749 = getelementptr inbounds %struct.store_info, ptr %1733, i64 0, i32 2
  %1750 = load i32, ptr %1749, align 4, !tbaa !205
  %1751 = zext i32 %1750 to i64
  %1752 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %1748, i64 0, i32 2, i64 %1751
  %1753 = load ptr, ptr %1752, align 8, !tbaa !135
  %1754 = getelementptr inbounds %struct.group_info, ptr %1753, i64 0, i32 14
  %1755 = getelementptr inbounds %struct.group_info, ptr %1753, i64 0, i32 12
  %1756 = getelementptr inbounds %struct.group_info, ptr %1753, i64 0, i32 13
  %1757 = getelementptr inbounds %struct.group_info, ptr %1753, i64 0, i32 11
  br label %1762

1758:                                             ; preds = %1799
  %1759 = add nsw i64 %1763, 1
  %1760 = load i64, ptr %1744, align 8, !tbaa !280
  %1761 = icmp slt i64 %1759, %1760
  br i1 %1761, label %1762, label %1802, !llvm.loop !388

1762:                                             ; preds = %1747, %1758
  %1763 = phi i64 [ %1743, %1747 ], [ %1759, %1758 ]
  %1764 = phi i8 [ 1, %1747 ], [ %1800, %1758 ]
  %1765 = icmp slt i64 %1763, 0
  br i1 %1765, label %1766, label %1771

1766:                                             ; preds = %1762
  %1767 = sub nsw i64 0, %1763
  %1768 = load i32, ptr %1756, align 8, !tbaa !251
  %1769 = sext i32 %1768 to i64
  %1770 = icmp slt i64 %1767, %1769
  br i1 %1770, label %1775, label %1781

1771:                                             ; preds = %1762
  %1772 = load i32, ptr %1754, align 4, !tbaa !244
  %1773 = sext i32 %1772 to i64
  %1774 = icmp slt i64 %1763, %1773
  br i1 %1774, label %1775, label %1781

1775:                                             ; preds = %1771, %1766
  %1776 = phi ptr [ %1757, %1766 ], [ %1755, %1771 ]
  %1777 = phi i64 [ %1767, %1766 ], [ %1763, %1771 ]
  %1778 = load ptr, ptr %1776, align 8, !tbaa !135
  %1779 = getelementptr inbounds i32, ptr %1778, i64 %1777
  %1780 = load i32, ptr %1779, align 4, !tbaa !150
  br label %1781

1781:                                             ; preds = %1775, %1771, %1766
  %1782 = phi i32 [ 0, %1766 ], [ 0, %1771 ], [ %1780, %1775 ]
  %1783 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1788, label %1785

1785:                                             ; preds = %1781
  %1786 = trunc i64 %1763 to i32
  %1787 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1783, ptr noundef nonnull @.str.75, i32 noundef %1786, i32 noundef %1782)
  br label %1788

1788:                                             ; preds = %1785, %1781
  %1789 = icmp eq i32 %1782, 0
  br i1 %1789, label %1793, label %1790

1790:                                             ; preds = %1788
  %1791 = call i32 @bitmap_bit_p(ptr noundef nonnull %1698, i32 noundef %1782) #18
  %1792 = icmp eq i32 %1791, 0
  br i1 %1792, label %1793, label %1799

1793:                                             ; preds = %1790, %1788
  %1794 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1795 = icmp eq ptr %1794, null
  br i1 %1795, label %1799, label %1796

1796:                                             ; preds = %1793
  %1797 = trunc i64 %1763 to i32
  %1798 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1794, ptr noundef nonnull @.str.76, i32 noundef %1797)
  br label %1799

1799:                                             ; preds = %1793, %1796, %1790
  %1800 = phi i8 [ 0, %1796 ], [ %1764, %1790 ], [ 0, %1793 ]
  %1801 = phi i1 [ false, %1796 ], [ true, %1790 ], [ false, %1793 ]
  br i1 %1801, label %1758, label %1802

1802:                                             ; preds = %1758, %1799, %1741, %1737
  %1803 = phi i8 [ 0, %1737 ], [ 1, %1741 ], [ %1800, %1799 ], [ %1800, %1758 ]
  %1804 = icmp eq i8 %1803, 0
  br i1 %1804, label %1814, label %1805

1805:                                             ; preds = %1802
  %1806 = call zeroext i8 @dbg_cnt(i32 noundef 10) #18
  %1807 = icmp eq i8 %1806, 0
  br i1 %1807, label %1814, label %1808

1808:                                             ; preds = %1805
  %1809 = load ptr, ptr %1715, align 8, !tbaa !187
  call fastcc void @check_for_inc_dec(ptr noundef %1809)
  %1810 = load ptr, ptr %1715, align 8, !tbaa !187
  %1811 = call ptr @delete_insn(ptr noundef %1810) #18
  store ptr null, ptr %1715, align 8, !tbaa !187
  %1812 = load i32, ptr @globally_deleted, align 4, !tbaa !150
  %1813 = add nsw i32 %1812, 1
  store i32 %1813, ptr @globally_deleted, align 4, !tbaa !150
  br label %1814

1814:                                             ; preds = %1808, %1805, %1802, %1726, %1723, %1718, %1714
  %1815 = phi i8 [ 0, %1723 ], [ 0, %1726 ], [ 0, %1714 ], [ 0, %1718 ], [ 1, %1805 ], [ 1, %1808 ], [ %1803, %1802 ]
  %1816 = load ptr, ptr %1715, align 8, !tbaa !187
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1906, label %1818, !prof !384

1818:                                             ; preds = %1814
  %1819 = load i32, ptr %1816, align 8
  %1820 = and i32 %1819, 65535
  %1821 = add nsw i32 %1820, -7
  %1822 = icmp ult i32 %1821, 3
  br i1 %1822, label %1827, label %1823, !prof !389

1823:                                             ; preds = %1818
  %1824 = icmp ne i32 %1820, 10
  %1825 = icmp ne i8 %1815, 0
  %1826 = or i1 %1825, %1824
  br i1 %1826, label %1906, label %1829, !prof !390

1827:                                             ; preds = %1818
  %1828 = icmp eq i8 %1815, 0
  br i1 %1828, label %1829, label %1906, !prof !391

1829:                                             ; preds = %1827, %1823
  %1830 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 6
  %1831 = load ptr, ptr %1830, align 8, !tbaa !208
  %1832 = icmp eq ptr %1831, null
  br i1 %1832, label %1886, label %1833, !prof !392

1833:                                             ; preds = %1829, %1882
  %1834 = phi ptr [ %1884, %1882 ], [ %1831, %1829 ]
  %1835 = load ptr, ptr @rtx_group_vec, align 8
  %1836 = getelementptr inbounds %struct.store_info, ptr %1834, i64 0, i32 2
  %1837 = load i32, ptr %1836, align 4, !tbaa !205
  %1838 = zext i32 %1837 to i64
  %1839 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %1835, i64 0, i32 2, i64 %1838
  %1840 = load ptr, ptr %1839, align 8, !tbaa !135
  %1841 = getelementptr inbounds %struct.group_info, ptr %1840, i64 0, i32 2
  %1842 = load i8, ptr %1841, align 4, !tbaa !347
  %1843 = icmp eq i8 %1842, 0
  br i1 %1843, label %1882, label %1844, !prof !393

1844:                                             ; preds = %1833
  %1845 = getelementptr inbounds %struct.store_info, ptr %1834, i64 0, i32 7
  %1846 = load i64, ptr %1845, align 8, !tbaa !281
  %1847 = getelementptr inbounds %struct.store_info, ptr %1834, i64 0, i32 8
  %1848 = load i64, ptr %1847, align 8, !tbaa !280
  %1849 = icmp slt i64 %1846, %1848
  br i1 %1849, label %1850, label %1882, !prof !394

1850:                                             ; preds = %1844
  %1851 = getelementptr inbounds %struct.group_info, ptr %1840, i64 0, i32 13
  %1852 = getelementptr inbounds %struct.group_info, ptr %1840, i64 0, i32 11
  br label %1853

1853:                                             ; preds = %1878, %1850
  %1854 = phi i64 [ %1846, %1850 ], [ %1879, %1878 ]
  %1855 = icmp slt i64 %1854, 0
  br i1 %1855, label %1856, label %1861, !prof !395

1856:                                             ; preds = %1853
  %1857 = sub nsw i64 0, %1854
  %1858 = load i32, ptr %1851, align 8, !tbaa !251
  %1859 = sext i32 %1858 to i64
  %1860 = icmp slt i64 %1857, %1859
  br i1 %1860, label %1867, label %1873, !prof !396

1861:                                             ; preds = %1853
  %1862 = getelementptr inbounds %struct.group_info, ptr %1840, i64 0, i32 14
  %1863 = getelementptr inbounds %struct.group_info, ptr %1840, i64 0, i32 12
  %1864 = load i32, ptr %1862, align 4, !tbaa !244
  %1865 = sext i32 %1864 to i64
  %1866 = icmp slt i64 %1854, %1865
  br i1 %1866, label %1867, label %1873, !prof !397

1867:                                             ; preds = %1861, %1856
  %1868 = phi ptr [ %1852, %1856 ], [ %1863, %1861 ]
  %1869 = phi i64 [ %1857, %1856 ], [ %1854, %1861 ]
  %1870 = load ptr, ptr %1868, align 8, !tbaa !135
  %1871 = getelementptr inbounds i32, ptr %1870, i64 %1869
  %1872 = load i32, ptr %1871, align 4, !tbaa !150
  br label %1873

1873:                                             ; preds = %1867, %1861, %1856
  %1874 = phi i32 [ 0, %1856 ], [ 0, %1861 ], [ %1872, %1867 ]
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1878, label %1876, !prof !398

1876:                                             ; preds = %1873
  %1877 = call zeroext i8 @bitmap_set_bit(ptr noundef %1698, i32 noundef %1874) #18
  br label %1878

1878:                                             ; preds = %1876, %1873
  %1879 = add nsw i64 %1854, 1
  %1880 = load i64, ptr %1847, align 8, !tbaa !280
  %1881 = icmp slt i64 %1879, %1880
  br i1 %1881, label %1853, label %1882, !prof !399, !llvm.loop !400

1882:                                             ; preds = %1878, %1844, %1833
  %1883 = getelementptr inbounds %struct.store_info, ptr %1834, i64 0, i32 10
  %1884 = load ptr, ptr %1883, align 8, !tbaa !297
  %1885 = icmp eq ptr %1884, null
  br i1 %1885, label %1886, label %1833, !prof !401, !llvm.loop !402

1886:                                             ; preds = %1882, %1829
  %1887 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 1
  %1888 = load i8, ptr %1887, align 1, !tbaa !195
  %1889 = icmp eq i8 %1888, 0
  br i1 %1889, label %1896, label %1890, !prof !403

1890:                                             ; preds = %1886
  %1891 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1892 = icmp eq ptr %1891, null
  br i1 %1892, label %1895, label %1893, !prof !404

1893:                                             ; preds = %1890
  %1894 = call i64 @fwrite(ptr nonnull @.str.77, i64 10, i64 1, ptr nonnull %1891)
  br label %1895

1895:                                             ; preds = %1893, %1890
  call void @bitmap_clear(ptr noundef %1698) #18
  br label %1906

1896:                                             ; preds = %1886
  %1897 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 7
  %1898 = load ptr, ptr %1897, align 8, !tbaa !405
  %1899 = icmp eq ptr %1898, null
  br i1 %1899, label %1906, label %1900, !prof !406

1900:                                             ; preds = %1896
  %1901 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1902 = icmp eq ptr %1901, null
  br i1 %1902, label %1905, label %1903, !prof !407

1903:                                             ; preds = %1900
  %1904 = call i64 @fwrite(ptr nonnull @.str.78, i64 13, i64 1, ptr nonnull %1901)
  br label %1905

1905:                                             ; preds = %1903, %1900
  call fastcc void @scan_reads_nospill(ptr noundef nonnull %1702, ptr noundef %1698, ptr noundef null)
  br label %1906

1906:                                             ; preds = %1905, %1896, %1895, %1827, %1823, %1814
  %1907 = getelementptr inbounds %struct.insn_info, ptr %1702, i64 0, i32 8
  %1908 = load ptr, ptr %1907, align 8, !tbaa !135
  %1909 = icmp eq ptr %1908, null
  br i1 %1909, label %1680, label %1701, !prof !408, !llvm.loop !409

1910:                                             ; preds = %1680, %1670, %1661
  %1911 = phi i8 [ 0, %1661 ], [ 1, %1670 ], [ 1, %1680 ]
  %1912 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %1913 = icmp eq ptr %1912, null
  br i1 %1913, label %2178, label %1914, !prof !167

1914:                                             ; preds = %1910
  %1915 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  store i32 1, ptr @current_position, align 4, !tbaa !150
  %1916 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1917 = icmp eq ptr %1916, null
  br i1 %1917, label %1921, label %1918

1918:                                             ; preds = %1914
  call void @bitmap_print(ptr noundef nonnull %1916, ptr noundef nonnull %1912, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.31) #18
  %1919 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %1920 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  call void @bitmap_print(ptr noundef %1919, ptr noundef %1920, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.31) #18
  br label %1921

1921:                                             ; preds = %1918, %1914
  %1922 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 11
  %1923 = load ptr, ptr %1922, align 8, !tbaa !345
  %1924 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 13
  %1925 = load i32, ptr %1924, align 8, !tbaa !251
  %1926 = sext i32 %1925 to i64
  %1927 = shl nsw i64 %1926, 2
  call void @llvm.memset.p0.i64(ptr align 4 %1923, i8 0, i64 %1927, i1 false)
  %1928 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 12
  %1929 = load ptr, ptr %1928, align 8, !tbaa !346
  %1930 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 14
  %1931 = load i32, ptr %1930, align 4, !tbaa !244
  %1932 = sext i32 %1931 to i64
  %1933 = shl nsw i64 %1932, 2
  call void @llvm.memset.p0.i64(ptr align 4 %1929, i8 0, i64 %1933, i1 false)
  %1934 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 10
  %1935 = load ptr, ptr %1934, align 8, !tbaa !352
  call void @bitmap_clear(ptr noundef %1935) #18
  %1936 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 9
  %1937 = load ptr, ptr %1936, align 8, !tbaa !243
  %1938 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  %1939 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %1937, ptr noundef %1938) #18
  %1940 = load ptr, ptr %1936, align 8, !tbaa !243
  %1941 = load ptr, ptr %1940, align 8, !tbaa !353
  %1942 = icmp eq ptr %1941, null
  %1943 = select i1 %1942, ptr @bitmap_zero_bits, ptr %1941
  %1944 = getelementptr inbounds %struct.bitmap_element_def, ptr %1943, i64 0, i32 2
  %1945 = load i32, ptr %1944, align 8, !tbaa !356
  %1946 = shl i32 %1945, 7
  %1947 = getelementptr inbounds %struct.bitmap_element_def, ptr %1943, i64 0, i32 3
  %1948 = load i64, ptr %1947, align 8, !tbaa !226
  %1949 = icmp eq i64 %1948, 0
  %1950 = zext i1 %1949 to i32
  %1951 = or disjoint i32 %1946, %1950
  %1952 = getelementptr inbounds %struct.group_info, ptr %1915, i64 0, i32 2
  br label %1953

1953:                                             ; preds = %2014, %1921
  %1954 = phi i64 [ %1948, %1921 ], [ %2023, %2014 ]
  %1955 = phi i32 [ 0, %1921 ], [ %2010, %2014 ]
  %1956 = phi i32 [ %1951, %1921 ], [ %2024, %2014 ]
  %1957 = phi ptr [ %1943, %1921 ], [ %2012, %2014 ]
  %1958 = icmp eq i64 %1954, 0
  br i1 %1958, label %1973, label %1959

1959:                                             ; preds = %1987, %1953
  %1960 = phi i64 [ %1954, %1953 ], [ %1992, %1987 ]
  %1961 = phi i32 [ %1955, %1953 ], [ %1988, %1987 ]
  %1962 = phi i32 [ %1956, %1953 ], [ %1989, %1987 ]
  %1963 = phi ptr [ %1957, %1953 ], [ %1980, %1987 ]
  %1964 = and i64 %1960, 1
  %1965 = icmp eq i64 %1964, 0
  br i1 %1965, label %1966, label %2008

1966:                                             ; preds = %1959, %1966
  %1967 = phi i32 [ %1970, %1966 ], [ %1962, %1959 ]
  %1968 = phi i64 [ %1969, %1966 ], [ %1960, %1959 ]
  %1969 = lshr exact i64 %1968, 1
  %1970 = add i32 %1967, 1
  %1971 = and i64 %1968, 2
  %1972 = icmp eq i64 %1971, 0
  br i1 %1972, label %1966, label %2008, !llvm.loop !361

1973:                                             ; preds = %1953
  %1974 = add i32 %1956, 63
  %1975 = and i32 %1974, -64
  %1976 = add i32 %1955, 1
  br label %1977

1977:                                             ; preds = %2004, %1973
  %1978 = phi i64 [ %1954, %1973 ], [ %1999, %2004 ]
  %1979 = phi i32 [ %1975, %1973 ], [ %2007, %2004 ]
  %1980 = phi ptr [ %1957, %1973 ], [ %2002, %2004 ]
  %1981 = phi i32 [ %1976, %1973 ], [ 0, %2004 ]
  %1982 = icmp eq i32 %1981, 2
  br i1 %1982, label %1998, label %1983

1983:                                             ; preds = %1977
  %1984 = add i32 %1979, 128
  %1985 = shl i32 %1981, 6
  %1986 = sub i32 %1984, %1985
  br label %1987

1987:                                             ; preds = %1983, %1994
  %1988 = phi i32 [ %1996, %1994 ], [ %1981, %1983 ]
  %1989 = phi i32 [ %1995, %1994 ], [ %1979, %1983 ]
  %1990 = zext i32 %1988 to i64
  %1991 = getelementptr inbounds %struct.bitmap_element_def, ptr %1980, i64 0, i32 3, i64 %1990
  %1992 = load i64, ptr %1991, align 8, !tbaa !226
  %1993 = icmp eq i64 %1992, 0
  br i1 %1993, label %1994, label %1959

1994:                                             ; preds = %1987
  %1995 = add i32 %1989, 64
  %1996 = add i32 %1988, 1
  %1997 = icmp eq i32 %1996, 2
  br i1 %1997, label %1998, label %1987, !llvm.loop !364

1998:                                             ; preds = %1994, %1977
  %1999 = phi i64 [ %1978, %1977 ], [ %1992, %1994 ]
  %2000 = phi i32 [ %1979, %1977 ], [ %1986, %1994 ]
  %2001 = phi i32 [ %1981, %1977 ], [ 2, %1994 ]
  %2002 = load ptr, ptr %1980, align 8, !tbaa !365
  %2003 = icmp eq ptr %2002, null
  br i1 %2003, label %2008, label %2004

2004:                                             ; preds = %1998
  %2005 = getelementptr inbounds %struct.bitmap_element_def, ptr %2002, i64 0, i32 2
  %2006 = load i32, ptr %2005, align 8, !tbaa !356
  %2007 = shl i32 %2006, 7
  br label %1977, !llvm.loop !366

2008:                                             ; preds = %1998, %1966, %1959
  %2009 = phi i64 [ %1960, %1959 ], [ %1969, %1966 ], [ %1999, %1998 ]
  %2010 = phi i32 [ %1961, %1959 ], [ %1961, %1966 ], [ %2001, %1998 ]
  %2011 = phi i32 [ %1962, %1959 ], [ %1970, %1966 ], [ %2000, %1998 ]
  %2012 = phi ptr [ %1963, %1959 ], [ %1963, %1966 ], [ %2002, %1998 ]
  %2013 = phi i1 [ false, %1959 ], [ false, %1966 ], [ true, %1998 ]
  br i1 %2013, label %2025, label %2014

2014:                                             ; preds = %2008
  %2015 = load ptr, ptr %1934, align 8, !tbaa !352
  %2016 = load i32, ptr @current_position, align 4, !tbaa !150
  %2017 = call zeroext i8 @bitmap_set_bit(ptr noundef %2015, i32 noundef %2016) #18
  %2018 = load i32, ptr @current_position, align 4, !tbaa !150
  %2019 = add i32 %2018, 1
  store i32 %2019, ptr @current_position, align 4, !tbaa !150
  %2020 = load ptr, ptr %1928, align 8, !tbaa !346
  %2021 = zext i32 %2011 to i64
  %2022 = getelementptr inbounds i32, ptr %2020, i64 %2021
  store i32 %2018, ptr %2022, align 4, !tbaa !150
  store i8 1, ptr %1952, align 4, !tbaa !347
  %2023 = lshr i64 %2009, 1
  %2024 = add i32 %2011, 1
  br label %1953, !llvm.loop !410

2025:                                             ; preds = %2008
  %2026 = load i32, ptr @current_position, align 4, !tbaa !150
  %2027 = icmp eq i32 %2026, 1
  br i1 %2027, label %2178, label %2028

2028:                                             ; preds = %2025
  br i1 %1663, label %2029, label %2031

2029:                                             ; preds = %2028
  %2030 = call i32 @df_set_flags(i32 noundef 1) #18
  call void @df_analyze() #18
  br label %2031

2031:                                             ; preds = %2029, %2028
  %2032 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %2033 = icmp eq ptr %2032, null
  br i1 %2033, label %2036, label %2034

2034:                                             ; preds = %2031
  %2035 = call i64 @fwrite(ptr nonnull @.str.6, i64 30, i64 1, ptr nonnull %2032)
  br label %2036

2036:                                             ; preds = %2034, %2031
  call fastcc void @dse_step3(i8 noundef zeroext 1)
  call fastcc void @dse_step4()
  %2037 = load ptr, ptr @cfun, align 8, !tbaa !135
  %2038 = getelementptr inbounds %struct.function, ptr %2037, i64 0, i32 1
  %2039 = load ptr, ptr %2038, align 8, !tbaa !163
  %2040 = load ptr, ptr %2039, align 8, !tbaa !376
  %2041 = getelementptr inbounds %struct.basic_block_def, ptr %2040, i64 0, i32 6
  %2042 = load ptr, ptr %2041, align 8, !tbaa !377
  %2043 = getelementptr inbounds %struct.control_flow_graph, ptr %2039, i64 0, i32 1
  %2044 = load ptr, ptr %2043, align 8, !tbaa !313
  %2045 = icmp eq ptr %2042, %2044
  br i1 %2045, label %2178, label %2055

2046:                                             ; preds = %2174, %2055
  %2047 = getelementptr inbounds %struct.basic_block_def, ptr %2056, i64 0, i32 6
  %2048 = load ptr, ptr %2047, align 8, !tbaa !377
  %2049 = load ptr, ptr @cfun, align 8, !tbaa !135
  %2050 = getelementptr inbounds %struct.function, ptr %2049, i64 0, i32 1
  %2051 = load ptr, ptr %2050, align 8, !tbaa !163
  %2052 = getelementptr inbounds %struct.control_flow_graph, ptr %2051, i64 0, i32 1
  %2053 = load ptr, ptr %2052, align 8, !tbaa !313
  %2054 = icmp eq ptr %2048, %2053
  br i1 %2054, label %2178, label %2055, !llvm.loop !411

2055:                                             ; preds = %2036, %2046
  %2056 = phi ptr [ %2048, %2046 ], [ %2042, %2036 ]
  %2057 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %2058 = getelementptr inbounds %struct.basic_block_def, ptr %2056, i64 0, i32 9
  %2059 = load i32, ptr %2058, align 8, !tbaa !169
  %2060 = sext i32 %2059 to i64
  %2061 = getelementptr inbounds ptr, ptr %2057, i64 %2060
  %2062 = load ptr, ptr %2061, align 8, !tbaa !135
  %2063 = getelementptr inbounds %struct.bb_info, ptr %2062, i64 0, i32 5
  %2064 = load ptr, ptr %2063, align 8, !tbaa !381
  %2065 = load ptr, ptr %2062, align 8, !tbaa !135
  %2066 = icmp eq ptr %2065, null
  br i1 %2066, label %2046, label %2067

2067:                                             ; preds = %2055, %2174
  %2068 = phi ptr [ %2176, %2174 ], [ %2065, %2055 ]
  %2069 = getelementptr inbounds %struct.insn_info, ptr %2068, i64 0, i32 5
  %2070 = load ptr, ptr %2069, align 8, !tbaa !187
  %2071 = icmp eq ptr %2070, null
  br i1 %2071, label %2154, label %2072

2072:                                             ; preds = %2067
  %2073 = load i32, ptr %2070, align 8
  %2074 = and i32 %2073, 65535
  %2075 = add nsw i32 %2074, -7
  %2076 = icmp ult i32 %2075, 4
  br i1 %2076, label %2077, label %2154

2077:                                             ; preds = %2072
  %2078 = load i8, ptr %2068, align 8, !tbaa !189
  %2079 = icmp eq i8 %2078, 0
  br i1 %2079, label %2080, label %2154

2080:                                             ; preds = %2077
  %2081 = load ptr, ptr %2064, align 8, !tbaa !353
  %2082 = icmp eq ptr %2081, null
  br i1 %2082, label %2154, label %2083

2083:                                             ; preds = %2080
  %2084 = getelementptr inbounds %struct.insn_info, ptr %2068, i64 0, i32 6
  %2085 = load ptr, ptr %2084, align 8, !tbaa !135
  %2086 = icmp eq ptr %2085, null
  br i1 %2086, label %2134, label %2087

2087:                                             ; preds = %2083, %2129
  %2088 = phi ptr [ %2132, %2129 ], [ %2085, %2083 ]
  %2089 = phi i8 [ %2130, %2129 ], [ 1, %2083 ]
  %2090 = getelementptr inbounds %struct.store_info, ptr %2088, i64 0, i32 6
  %2091 = load i32, ptr %2090, align 8, !tbaa !276
  %2092 = icmp eq i32 %2091, 0
  br i1 %2092, label %2129, label %2093

2093:                                             ; preds = %2087
  %2094 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %2095 = sext i32 %2091 to i64
  %2096 = icmp slt i32 %2091, 0
  br i1 %2096, label %2097, label %2105

2097:                                             ; preds = %2093
  %2098 = sub nsw i64 0, %2095
  %2099 = getelementptr inbounds %struct.group_info, ptr %2094, i64 0, i32 13
  %2100 = load i32, ptr %2099, align 8, !tbaa !251
  %2101 = sext i32 %2100 to i64
  %2102 = icmp slt i64 %2098, %2101
  br i1 %2102, label %2103, label %2117

2103:                                             ; preds = %2097
  %2104 = getelementptr inbounds %struct.group_info, ptr %2094, i64 0, i32 11
  br label %2111

2105:                                             ; preds = %2093
  %2106 = getelementptr inbounds %struct.group_info, ptr %2094, i64 0, i32 14
  %2107 = load i32, ptr %2106, align 4, !tbaa !244
  %2108 = icmp sgt i32 %2107, %2091
  br i1 %2108, label %2109, label %2117

2109:                                             ; preds = %2105
  %2110 = getelementptr inbounds %struct.group_info, ptr %2094, i64 0, i32 12
  br label %2111

2111:                                             ; preds = %2103, %2109
  %2112 = phi ptr [ %2110, %2109 ], [ %2104, %2103 ]
  %2113 = phi i64 [ %2095, %2109 ], [ %2098, %2103 ]
  %2114 = load ptr, ptr %2112, align 8, !tbaa !135
  %2115 = getelementptr inbounds i32, ptr %2114, i64 %2113
  %2116 = load i32, ptr %2115, align 4, !tbaa !150
  br label %2117

2117:                                             ; preds = %2111, %2105, %2097
  %2118 = phi i32 [ 0, %2097 ], [ 0, %2105 ], [ %2116, %2111 ]
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2125, label %2120

2120:                                             ; preds = %2117
  %2121 = call i32 @bitmap_bit_p(ptr noundef nonnull %2064, i32 noundef %2118) #18
  %2122 = icmp eq i32 %2121, 0
  %2123 = select i1 %2122, i8 0, i8 %2089
  %2124 = select i1 %2122, i32 8, i32 0
  br label %2125

2125:                                             ; preds = %2120, %2117
  %2126 = phi i8 [ 0, %2117 ], [ %2123, %2120 ]
  %2127 = phi i32 [ 8, %2117 ], [ %2124, %2120 ]
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2129, label %2134

2129:                                             ; preds = %2125, %2087
  %2130 = phi i8 [ %2126, %2125 ], [ 0, %2087 ]
  %2131 = getelementptr inbounds %struct.store_info, ptr %2088, i64 0, i32 10
  %2132 = load ptr, ptr %2131, align 8, !tbaa !135
  %2133 = icmp eq ptr %2132, null
  br i1 %2133, label %2134, label %2087, !llvm.loop !412

2134:                                             ; preds = %2129, %2125, %2083
  %2135 = phi i8 [ 1, %2083 ], [ %2130, %2129 ], [ %2126, %2125 ]
  %2136 = icmp eq i8 %2135, 0
  br i1 %2136, label %2154, label %2137

2137:                                             ; preds = %2134
  %2138 = call zeroext i8 @dbg_cnt(i32 noundef 10) #18
  %2139 = icmp eq i8 %2138, 0
  br i1 %2139, label %2154, label %2140

2140:                                             ; preds = %2137
  %2141 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %2142 = icmp eq ptr %2141, null
  br i1 %2142, label %2148, label %2143

2143:                                             ; preds = %2140
  %2144 = load ptr, ptr %2069, align 8, !tbaa !187
  %2145 = getelementptr inbounds %struct.rtx_def, ptr %2144, i64 0, i32 1
  %2146 = load i32, ptr %2145, align 8, !tbaa !146
  %2147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2141, ptr noundef nonnull @.str.81, i32 noundef %2146)
  br label %2148

2148:                                             ; preds = %2143, %2140
  %2149 = load ptr, ptr %2069, align 8, !tbaa !187
  call fastcc void @check_for_inc_dec(ptr noundef %2149)
  %2150 = load ptr, ptr %2069, align 8, !tbaa !187
  %2151 = call ptr @delete_insn(ptr noundef %2150) #18
  %2152 = load i32, ptr @spill_deleted, align 4, !tbaa !150
  %2153 = add nsw i32 %2152, 1
  store i32 %2153, ptr @spill_deleted, align 4, !tbaa !150
  store ptr null, ptr %2069, align 8, !tbaa !187
  br label %2154

2154:                                             ; preds = %2148, %2137, %2134, %2080, %2077, %2072, %2067
  %2155 = phi i8 [ 0, %2077 ], [ 0, %2080 ], [ 0, %2067 ], [ 0, %2072 ], [ 1, %2148 ], [ 1, %2137 ], [ %2135, %2134 ]
  %2156 = load ptr, ptr %2069, align 8, !tbaa !187
  %2157 = icmp eq ptr %2156, null
  br i1 %2157, label %2174, label %2158

2158:                                             ; preds = %2154
  %2159 = load i32, ptr %2156, align 8
  %2160 = and i32 %2159, 65535
  %2161 = add nsw i32 %2160, -7
  %2162 = icmp ult i32 %2161, 3
  br i1 %2162, label %2167, label %2163

2163:                                             ; preds = %2158
  %2164 = icmp ne i32 %2160, 10
  %2165 = icmp ne i8 %2155, 0
  %2166 = or i1 %2165, %2164
  br i1 %2166, label %2174, label %2169

2167:                                             ; preds = %2158
  %2168 = icmp eq i8 %2155, 0
  br i1 %2168, label %2169, label %2174

2169:                                             ; preds = %2167, %2163
  %2170 = getelementptr inbounds %struct.insn_info, ptr %2068, i64 0, i32 6
  %2171 = load ptr, ptr %2170, align 8, !tbaa !208
  call fastcc void @scan_stores_spill(ptr noundef %2171, ptr noundef %2064, ptr noundef null)
  %2172 = getelementptr inbounds %struct.insn_info, ptr %2068, i64 0, i32 7
  %2173 = load ptr, ptr %2172, align 8, !tbaa !405
  call fastcc void @scan_reads_spill(ptr noundef %2173, ptr noundef %2064, ptr noundef null)
  br label %2174

2174:                                             ; preds = %2169, %2167, %2163, %2154
  %2175 = getelementptr inbounds %struct.insn_info, ptr %2068, i64 0, i32 8
  %2176 = load ptr, ptr %2175, align 8, !tbaa !135
  %2177 = icmp eq ptr %2176, null
  br i1 %2177, label %2046, label %2067, !llvm.loop !413

2178:                                             ; preds = %2046, %2036, %2025, %1910
  %2179 = phi i8 [ %1911, %2025 ], [ %1911, %1910 ], [ 1, %2036 ], [ 1, %2046 ]
  %2180 = load ptr, ptr @cfun, align 8, !tbaa !135
  %2181 = getelementptr inbounds %struct.function, ptr %2180, i64 0, i32 1
  %2182 = load ptr, ptr %2181, align 8, !tbaa !163
  %2183 = load ptr, ptr %2182, align 8, !tbaa !135
  %2184 = icmp eq ptr %2183, null
  br i1 %2184, label %2251, label %2185, !prof !168

2185:                                             ; preds = %2178, %2247
  %2186 = phi ptr [ %2249, %2247 ], [ %2183, %2178 ]
  %2187 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %2188 = getelementptr inbounds %struct.basic_block_def, ptr %2186, i64 0, i32 9
  %2189 = load i32, ptr %2188, align 8, !tbaa !169
  %2190 = sext i32 %2189 to i64
  %2191 = getelementptr inbounds ptr, ptr %2187, i64 %2190
  %2192 = load ptr, ptr %2191, align 8, !tbaa !135
  %2193 = load ptr, ptr %2192, align 8, !tbaa !135
  %2194 = icmp eq ptr %2193, null
  br i1 %2194, label %2247, label %2195, !prof !414

2195:                                             ; preds = %2185, %2243
  %2196 = phi ptr [ %2245, %2243 ], [ %2193, %2185 ]
  %2197 = getelementptr inbounds %struct.insn_info, ptr %2196, i64 0, i32 5
  %2198 = load ptr, ptr %2197, align 8, !tbaa !187
  %2199 = icmp eq ptr %2198, null
  br i1 %2199, label %2243, label %2200, !prof !415

2200:                                             ; preds = %2195
  %2201 = load i32, ptr %2198, align 8
  %2202 = and i32 %2201, 65535
  %2203 = add nsw i32 %2202, -7
  %2204 = icmp ult i32 %2203, 4
  br i1 %2204, label %2205, label %2243, !prof !183

2205:                                             ; preds = %2200
  %2206 = load i8, ptr %2196, align 8, !tbaa !189
  %2207 = icmp eq i8 %2206, 0
  br i1 %2207, label %2208, label %2243, !prof !416

2208:                                             ; preds = %2205
  %2209 = getelementptr inbounds %struct.insn_info, ptr %2196, i64 0, i32 6
  %2210 = load ptr, ptr %2209, align 8, !tbaa !135
  %2211 = icmp eq ptr %2210, null
  br i1 %2211, label %2243, label %2212, !prof !324

2212:                                             ; preds = %2208, %2216
  %2213 = phi ptr [ %2218, %2216 ], [ %2210, %2208 ]
  %2214 = load i8, ptr %2213, align 8, !tbaa !202
  %2215 = icmp eq i8 %2214, 0
  br i1 %2215, label %2216, label %2220, !prof !417

2216:                                             ; preds = %2212
  %2217 = getelementptr inbounds %struct.store_info, ptr %2213, i64 0, i32 10
  %2218 = load ptr, ptr %2217, align 8, !tbaa !135
  %2219 = icmp eq ptr %2218, null
  br i1 %2219, label %2243, label %2212, !prof !417, !llvm.loop !418

2220:                                             ; preds = %2212
  %2221 = getelementptr inbounds %struct.store_info, ptr %2213, i64 0, i32 13
  %2222 = load ptr, ptr %2221, align 8, !tbaa !298
  %2223 = icmp eq ptr %2222, null
  br i1 %2223, label %2243, label %2224, !prof !386

2224:                                             ; preds = %2220
  %2225 = getelementptr inbounds %struct.insn_info, ptr %2222, i64 0, i32 5
  %2226 = load ptr, ptr %2225, align 8, !tbaa !187
  %2227 = icmp eq ptr %2226, null
  br i1 %2227, label %2243, label %2228

2228:                                             ; preds = %2224
  %2229 = load i32, ptr %2226, align 8
  %2230 = and i32 %2229, 65535
  %2231 = add nsw i32 %2230, -7
  %2232 = icmp ult i32 %2231, 4
  br i1 %2232, label %2233, label %2243

2233:                                             ; preds = %2228
  %2234 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %2235 = icmp eq ptr %2234, null
  br i1 %2235, label %2242, label %2236

2236:                                             ; preds = %2233
  %2237 = getelementptr inbounds %struct.rtx_def, ptr %2198, i64 0, i32 1
  %2238 = load i32, ptr %2237, align 8, !tbaa !146
  %2239 = getelementptr inbounds %struct.rtx_def, ptr %2226, i64 0, i32 1
  %2240 = load i32, ptr %2239, align 8, !tbaa !146
  %2241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2234, ptr noundef nonnull @.str.15, i32 noundef %2238, i32 noundef %2240)
  br label %2242

2242:                                             ; preds = %2236, %2233
  call fastcc void @delete_dead_store_insn(ptr noundef nonnull %2196)
  br label %2243

2243:                                             ; preds = %2216, %2208, %2242, %2228, %2224, %2220, %2205, %2200, %2195
  %2244 = getelementptr inbounds %struct.insn_info, ptr %2196, i64 0, i32 8
  %2245 = load ptr, ptr %2244, align 8, !tbaa !135
  %2246 = icmp eq ptr %2245, null
  br i1 %2246, label %2247, label %2195, !prof !419, !llvm.loop !420

2247:                                             ; preds = %2243, %2185
  %2248 = getelementptr inbounds %struct.basic_block_def, ptr %2186, i64 0, i32 6
  %2249 = load ptr, ptr %2248, align 8, !tbaa !135
  %2250 = icmp eq ptr %2249, null
  br i1 %2250, label %2251, label %2185, !prof !334, !llvm.loop !421

2251:                                             ; preds = %2247, %2178
  br label %2252

2252:                                             ; preds = %2251, %2266
  %2253 = phi i32 [ %2281, %2266 ], [ 0, %2251 ]
  %2254 = load ptr, ptr @rtx_group_vec, align 8
  %2255 = icmp eq ptr %2254, null
  br i1 %2255, label %2263, label %2256, !prof !336

2256:                                             ; preds = %2252
  %2257 = load i32, ptr %2254, align 8, !tbaa !337
  %2258 = icmp ugt i32 %2257, %2253
  br i1 %2258, label %2259, label %2263, !prof !339

2259:                                             ; preds = %2256
  %2260 = zext i32 %2253 to i64
  %2261 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %2254, i64 0, i32 2, i64 %2260
  %2262 = load ptr, ptr %2261, align 8, !tbaa !135
  br label %2263

2263:                                             ; preds = %2259, %2256, %2252
  %2264 = phi ptr [ %2262, %2259 ], [ null, %2256 ], [ null, %2252 ]
  %2265 = phi i1 [ false, %2259 ], [ true, %2256 ], [ true, %2252 ]
  br i1 %2265, label %2282, label %2266, !prof !340

2266:                                             ; preds = %2263
  %2267 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 11
  %2268 = load ptr, ptr %2267, align 8, !tbaa !345
  call void @free(ptr noundef %2268)
  %2269 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 12
  %2270 = load ptr, ptr %2269, align 8, !tbaa !346
  call void @free(ptr noundef %2270)
  %2271 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 6
  %2272 = load ptr, ptr %2271, align 8, !tbaa !344
  call void @bitmap_obstack_free(ptr noundef %2272) #18
  store ptr null, ptr %2271, align 8, !tbaa !344
  %2273 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 7
  %2274 = load ptr, ptr %2273, align 8, !tbaa !242
  call void @bitmap_obstack_free(ptr noundef %2274) #18
  store ptr null, ptr %2273, align 8, !tbaa !242
  %2275 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 8
  %2276 = load ptr, ptr %2275, align 8, !tbaa !343
  call void @bitmap_obstack_free(ptr noundef %2276) #18
  store ptr null, ptr %2275, align 8, !tbaa !343
  %2277 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 9
  %2278 = load ptr, ptr %2277, align 8, !tbaa !243
  call void @bitmap_obstack_free(ptr noundef %2278) #18
  store ptr null, ptr %2277, align 8, !tbaa !243
  %2279 = getelementptr inbounds %struct.group_info, ptr %2264, i64 0, i32 10
  %2280 = load ptr, ptr %2279, align 8, !tbaa !352
  call void @bitmap_obstack_free(ptr noundef %2280) #18
  store ptr null, ptr %2279, align 8, !tbaa !352
  %2281 = add i32 %2253, 1
  br label %2252, !llvm.loop !422

2282:                                             ; preds = %2263
  %2283 = icmp eq i8 %2179, 0
  br i1 %2283, label %2318, label %2284, !prof !374

2284:                                             ; preds = %2282
  %2285 = load ptr, ptr @cfun, align 8, !tbaa !135
  %2286 = getelementptr inbounds %struct.function, ptr %2285, i64 0, i32 1
  %2287 = load ptr, ptr %2286, align 8, !tbaa !163
  %2288 = load ptr, ptr %2287, align 8, !tbaa !135
  %2289 = icmp eq ptr %2288, null
  br i1 %2289, label %2318, label %2290, !prof !378

2290:                                             ; preds = %2284, %2314
  %2291 = phi ptr [ %2316, %2314 ], [ %2288, %2284 ]
  %2292 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %2293 = getelementptr inbounds %struct.basic_block_def, ptr %2291, i64 0, i32 9
  %2294 = load i32, ptr %2293, align 8, !tbaa !169
  %2295 = sext i32 %2294 to i64
  %2296 = getelementptr inbounds ptr, ptr %2292, i64 %2295
  %2297 = load ptr, ptr %2296, align 8, !tbaa !135
  %2298 = getelementptr inbounds %struct.bb_info, ptr %2297, i64 0, i32 2
  %2299 = load ptr, ptr %2298, align 8, !tbaa !423
  call void @bitmap_obstack_free(ptr noundef %2299) #18
  store ptr null, ptr %2298, align 8, !tbaa !423
  %2300 = getelementptr inbounds %struct.bb_info, ptr %2297, i64 0, i32 3
  %2301 = load ptr, ptr %2300, align 8, !tbaa !424
  %2302 = icmp eq ptr %2301, null
  br i1 %2302, label %2304, label %2303, !prof !425

2303:                                             ; preds = %2290
  call void @bitmap_obstack_free(ptr noundef nonnull %2301) #18
  store ptr null, ptr %2300, align 8, !tbaa !424
  br label %2304

2304:                                             ; preds = %2303, %2290
  %2305 = getelementptr inbounds %struct.bb_info, ptr %2297, i64 0, i32 4
  %2306 = load ptr, ptr %2305, align 8, !tbaa !426
  %2307 = icmp eq ptr %2306, null
  br i1 %2307, label %2309, label %2308, !prof !427

2308:                                             ; preds = %2304
  call void @bitmap_obstack_free(ptr noundef nonnull %2306) #18
  store ptr null, ptr %2305, align 8, !tbaa !426
  br label %2309

2309:                                             ; preds = %2308, %2304
  %2310 = getelementptr inbounds %struct.bb_info, ptr %2297, i64 0, i32 5
  %2311 = load ptr, ptr %2310, align 8, !tbaa !381
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2314, label %2313, !prof !428

2313:                                             ; preds = %2309
  call void @bitmap_obstack_free(ptr noundef nonnull %2311) #18
  store ptr null, ptr %2310, align 8, !tbaa !381
  br label %2314

2314:                                             ; preds = %2313, %2309
  %2315 = getelementptr inbounds %struct.basic_block_def, ptr %2291, i64 0, i32 6
  %2316 = load ptr, ptr %2315, align 8, !tbaa !135
  %2317 = icmp eq ptr %2316, null
  br i1 %2317, label %2318, label %2290, !prof !429, !llvm.loop !430

2318:                                             ; preds = %2314, %2284, %2282
  %2319 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %2320 = icmp eq ptr %2319, null
  br i1 %2320, label %2325, label %2321, !prof !167

2321:                                             ; preds = %2318
  call void @bitmap_obstack_free(ptr noundef nonnull %2319) #18
  store ptr null, ptr @clear_alias_sets, align 8, !tbaa !135
  %2322 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  call void @bitmap_obstack_free(ptr noundef %2322) #18
  store ptr null, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  %2323 = load ptr, ptr @clear_alias_mode_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2323) #18
  %2324 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !135
  call void @htab_delete(ptr noundef %2324) #18
  br label %2325

2325:                                             ; preds = %2321, %2318
  call void @end_alias_analysis() #18
  %2326 = load ptr, ptr @bb_table, align 8, !tbaa !135
  call void @free(ptr noundef %2326)
  %2327 = load ptr, ptr @rtx_group_table, align 8, !tbaa !135
  call void @htab_delete(ptr noundef %2327) #18
  %2328 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %2329 = icmp eq ptr %2328, null
  br i1 %2329, label %2331, label %2330, !prof !431

2330:                                             ; preds = %2325
  call void @free(ptr noundef %2328)
  br label %2331

2331:                                             ; preds = %2325, %2330
  store ptr null, ptr @rtx_group_vec, align 8, !tbaa !135
  %2332 = load ptr, ptr @all_blocks, align 8, !tbaa !135
  call void @bitmap_obstack_free(ptr noundef %2332) #18
  store ptr null, ptr @all_blocks, align 8, !tbaa !135
  %2333 = load ptr, ptr @scratch, align 8, !tbaa !135
  call void @bitmap_obstack_free(ptr noundef %2333) #18
  store ptr null, ptr @scratch, align 8, !tbaa !135
  %2334 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2334) #18
  %2335 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2335) #18
  %2336 = load ptr, ptr @insn_info_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2336) #18
  %2337 = load ptr, ptr @bb_info_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2337) #18
  %2338 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2338) #18
  %2339 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !135
  call void @free_alloc_pool(ptr noundef %2339) #18
  %2340 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %2341 = icmp eq ptr %2340, null
  br i1 %2341, label %2347, label %2342, !prof !167

2342:                                             ; preds = %2331
  %2343 = load i32, ptr @locally_deleted, align 4, !tbaa !150
  %2344 = load i32, ptr @globally_deleted, align 4, !tbaa !150
  %2345 = load i32, ptr @spill_deleted, align 4, !tbaa !150
  %2346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2340, ptr noundef nonnull @.str.7, i32 noundef %2343, i32 noundef %2344, i32 noundef %2345)
  br label %2347

2347:                                             ; preds = %2342, %2331
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_dse2() #11 !prof !158 !PGOFuncName !432 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !150
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !160
  br i1 %5, label %6, label %10, !prof !160

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 12) #18
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dse_step3(i8 noundef zeroext %0) unnamed_addr #11 !prof !433 !PGOFuncName !434 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !135
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !165
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #18
  tail call void @sbitmap_ones(ptr noundef %7) #18
  %8 = load ptr, ptr @cfun, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = icmp eq ptr %11, null
  br i1 %12, label %222, label %13, !prof !378

13:                                               ; preds = %1
  %14 = icmp eq i8 %0, 0
  br label %15

15:                                               ; preds = %13, %218
  %16 = phi ptr [ %11, %13 ], [ %220, %218 ]
  %17 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !169
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = getelementptr inbounds %struct.bb_info, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !423
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !435

26:                                               ; preds = %15
  tail call void @bitmap_clear(ptr noundef nonnull %24) #18
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %28, ptr %23, align 8, !tbaa !423
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i32, ptr %18, align 8, !tbaa !169
  switch i32 %30, label %63 [
    i32 0, label %198
    i32 1, label %31
  ], !prof !436

31:                                               ; preds = %29
  %32 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !146
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %198, label %34, !prof !437

34:                                               ; preds = %31, %61
  %35 = phi i32 [ %62, %61 ], [ 0, %31 ]
  %36 = load ptr, ptr @rtx_group_vec, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38, !prof !438

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 8, !tbaa !337
  %40 = icmp ugt i32 %39, %35
  br i1 %40, label %41, label %45, !prof !439

41:                                               ; preds = %38
  %42 = zext i32 %35 to i64
  %43 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %36, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !135
  br label %45

45:                                               ; preds = %41, %38, %34
  %46 = phi ptr [ %44, %41 ], [ null, %38 ], [ null, %34 ]
  %47 = phi i1 [ false, %41 ], [ true, %38 ], [ true, %34 ]
  br i1 %47, label %198, label %48, !prof !440

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.group_info, ptr %46, i64 0, i32 2
  %50 = load i8, ptr %49, align 4, !tbaa !347
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52, !prof !441

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.group_info, ptr %46, i64 0, i32 3
  %54 = load i8, ptr %53, align 1, !tbaa !206
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56, !prof !442

56:                                               ; preds = %52
  %57 = load ptr, ptr %23, align 8, !tbaa !423
  %58 = getelementptr inbounds %struct.group_info, ptr %46, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !352
  %60 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %57, ptr noundef %59) #18
  br label %61

61:                                               ; preds = %56, %52, %48
  %62 = add i32 %35, 1
  br label %34, !llvm.loop !443

63:                                               ; preds = %29
  %64 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %65 = sext i32 %30 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !135
  %68 = load ptr, ptr %67, align 8, !tbaa !135
  br i1 %14, label %69, label %91, !prof !444

69:                                               ; preds = %63
  %70 = icmp eq ptr %68, null
  br i1 %70, label %86, label %71, !prof !382

71:                                               ; preds = %69, %81
  %72 = phi ptr [ %84, %81 ], [ %68, %69 ]
  %73 = phi ptr [ %82, %81 ], [ null, %69 ]
  %74 = getelementptr inbounds %struct.insn_info, ptr %72, i64 0, i32 1
  %75 = load i8, ptr %74, align 1, !tbaa !195
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77, !prof !403

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.insn_info, ptr %72, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !185
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81, !prof !445

81:                                               ; preds = %77, %71
  %82 = phi ptr [ %79, %77 ], [ %73, %71 ]
  %83 = getelementptr inbounds %struct.insn_info, ptr %72, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !135
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %71, !prof !408, !llvm.loop !446

86:                                               ; preds = %81, %69
  %87 = phi ptr [ null, %69 ], [ %82, %81 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91, !prof !447

89:                                               ; preds = %86
  %90 = load ptr, ptr %67, align 8, !tbaa !184
  br label %91

91:                                               ; preds = %77, %63, %89, %86
  %92 = phi ptr [ %90, %89 ], [ %87, %86 ], [ %68, %63 ], [ null, %77 ]
  %93 = load ptr, ptr %67, align 8, !tbaa !184
  %94 = icmp eq ptr %92, %93
  %95 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !424
  %97 = icmp eq ptr %96, null
  br i1 %94, label %98, label %102, !prof !447

98:                                               ; preds = %91
  br i1 %97, label %100, label %99, !prof !448

99:                                               ; preds = %98
  tail call void @bitmap_clear(ptr noundef nonnull %96) #18
  br label %104

100:                                              ; preds = %98
  %101 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %101, ptr %95, align 8, !tbaa !424
  br label %104

102:                                              ; preds = %91
  br i1 %97, label %104, label %103, !prof !449

103:                                              ; preds = %102
  tail call void @bitmap_obstack_free(ptr noundef nonnull %96) #18
  store ptr null, ptr %95, align 8, !tbaa !424
  br label %104

104:                                              ; preds = %103, %102, %100, %99
  %105 = icmp eq ptr %92, null
  br i1 %105, label %198, label %106, !prof !382

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 2
  %108 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 3
  br label %109

109:                                              ; preds = %106, %194
  %110 = phi ptr [ %92, %106 ], [ %196, %194 ]
  %111 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !187
  %113 = icmp eq ptr %112, null
  br i1 %113, label %194, label %114, !prof !450

114:                                              ; preds = %109
  %115 = load i32, ptr %112, align 8
  %116 = and i32 %115, 65535
  %117 = add nsw i32 %116, -7
  %118 = icmp ult i32 %117, 4
  br i1 %118, label %119, label %194, !prof !451

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !208
  br i1 %14, label %131, label %122, !prof !451

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 2
  %124 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 3
  %125 = load ptr, ptr %123, align 8, !tbaa !423
  %126 = load ptr, ptr %124, align 8, !tbaa !424
  tail call fastcc void @scan_stores_spill(ptr noundef %121, ptr noundef %125, ptr noundef %126)
  %127 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !405
  %129 = load ptr, ptr %123, align 8, !tbaa !423
  %130 = load ptr, ptr %124, align 8, !tbaa !424
  tail call fastcc void @scan_reads_spill(ptr noundef %128, ptr noundef %129, ptr noundef %130)
  br label %194

131:                                              ; preds = %119
  %132 = load ptr, ptr %107, align 8, !tbaa !423
  %133 = load ptr, ptr %108, align 8, !tbaa !424
  %134 = icmp eq ptr %121, null
  br i1 %134, label %191, label %135, !prof !392

135:                                              ; preds = %131, %187
  %136 = phi ptr [ %189, %187 ], [ %121, %131 ]
  %137 = load ptr, ptr @rtx_group_vec, align 8
  %138 = getelementptr inbounds %struct.store_info, ptr %136, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !205
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %137, i64 0, i32 2, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !135
  %143 = getelementptr inbounds %struct.group_info, ptr %142, i64 0, i32 2
  %144 = load i8, ptr %143, align 4, !tbaa !347
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %187, label %146, !prof !393

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.store_info, ptr %136, i64 0, i32 7
  %148 = load i64, ptr %147, align 8, !tbaa !281
  %149 = getelementptr inbounds %struct.store_info, ptr %136, i64 0, i32 8
  %150 = load i64, ptr %149, align 8, !tbaa !280
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %152, label %187, !prof !394

152:                                              ; preds = %146
  %153 = icmp eq ptr %133, null
  %154 = getelementptr inbounds %struct.group_info, ptr %142, i64 0, i32 13
  %155 = getelementptr inbounds %struct.group_info, ptr %142, i64 0, i32 11
  br label %156

156:                                              ; preds = %183, %152
  %157 = phi i64 [ %148, %152 ], [ %184, %183 ]
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %164, !prof !395

159:                                              ; preds = %156
  %160 = sub nsw i64 0, %157
  %161 = load i32, ptr %154, align 8, !tbaa !251
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %170, label %176, !prof !396

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.group_info, ptr %142, i64 0, i32 14
  %166 = getelementptr inbounds %struct.group_info, ptr %142, i64 0, i32 12
  %167 = load i32, ptr %165, align 4, !tbaa !244
  %168 = sext i32 %167 to i64
  %169 = icmp slt i64 %157, %168
  br i1 %169, label %170, label %176, !prof !397

170:                                              ; preds = %164, %159
  %171 = phi ptr [ %155, %159 ], [ %166, %164 ]
  %172 = phi i64 [ %160, %159 ], [ %157, %164 ]
  %173 = load ptr, ptr %171, align 8, !tbaa !135
  %174 = getelementptr inbounds i32, ptr %173, i64 %172
  %175 = load i32, ptr %174, align 4, !tbaa !150
  br label %176

176:                                              ; preds = %170, %164, %159
  %177 = phi i32 [ 0, %159 ], [ 0, %164 ], [ %175, %170 ]
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179, !prof !398

179:                                              ; preds = %176
  %180 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %132, i32 noundef %177) #18
  br i1 %153, label %183, label %181, !prof !452

181:                                              ; preds = %179
  %182 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %133, i32 noundef %177) #18
  br label %183

183:                                              ; preds = %181, %179, %176
  %184 = add nsw i64 %157, 1
  %185 = load i64, ptr %149, align 8, !tbaa !280
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %156, label %187, !prof !399, !llvm.loop !400

187:                                              ; preds = %183, %146, %135
  %188 = getelementptr inbounds %struct.store_info, ptr %136, i64 0, i32 10
  %189 = load ptr, ptr %188, align 8, !tbaa !297
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %135, !prof !401, !llvm.loop !402

191:                                              ; preds = %187, %131
  %192 = load ptr, ptr %107, align 8, !tbaa !423
  %193 = load ptr, ptr %108, align 8, !tbaa !424
  tail call fastcc void @scan_reads_nospill(ptr noundef nonnull %110, ptr noundef %192, ptr noundef %193)
  br label %194

194:                                              ; preds = %191, %122, %114, %109
  %195 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 8
  %196 = load ptr, ptr %195, align 8, !tbaa !185
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %109, !prof !453, !llvm.loop !454

198:                                              ; preds = %45, %194, %104, %31, %29
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !303
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202, !prof !428

202:                                              ; preds = %198
  %203 = load i32, ptr %200, align 8, !tbaa !304
  br label %204

204:                                              ; preds = %198, %202
  %205 = phi i32 [ %203, %202 ], [ 0, %198 ]
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208, !prof !455

207:                                              ; preds = %204
  tail call fastcc void @mark_reachable_blocks(ptr noundef %7, ptr noundef nonnull %16)
  br label %208

208:                                              ; preds = %207, %204
  %209 = getelementptr inbounds %struct.bb_info, ptr %22, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !426
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212, !prof !435

212:                                              ; preds = %208
  tail call void @bitmap_obstack_free(ptr noundef nonnull %210) #18
  store ptr null, ptr %209, align 8, !tbaa !426
  br label %213

213:                                              ; preds = %212, %208
  %214 = getelementptr inbounds %struct.bb_info, ptr %22, i64 0, i32 5
  %215 = load ptr, ptr %214, align 8, !tbaa !381
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217, !prof !435

217:                                              ; preds = %213
  tail call void @bitmap_obstack_free(ptr noundef nonnull %215) #18
  store ptr null, ptr %214, align 8, !tbaa !381
  br label %218

218:                                              ; preds = %217, %213
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !135
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %15, !prof !429, !llvm.loop !456

222:                                              ; preds = %218, %1
  %223 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 2
  %224 = load i32, ptr %223, align 4, !tbaa !457
  %225 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3
  %226 = icmp eq i32 %224, 0
  br i1 %226, label %229, label %227, !prof !437

227:                                              ; preds = %222
  %228 = load i64, ptr %225, align 8, !tbaa !226
  br label %229

229:                                              ; preds = %222, %227
  %230 = phi i64 [ %228, %227 ], [ 0, %222 ]
  br label %231

231:                                              ; preds = %229, %314
  %232 = phi i32 [ %272, %314 ], [ 0, %229 ]
  %233 = phi i32 [ %317, %314 ], [ 0, %229 ]
  %234 = phi i32 [ %274, %314 ], [ undef, %229 ]
  %235 = phi i64 [ %316, %314 ], [ %230, %229 ]
  %236 = phi ptr [ %315, %314 ], [ null, %229 ]
  %237 = icmp eq i64 %235, 0
  br i1 %237, label %238, label %245, !prof !232

238:                                              ; preds = %231
  %239 = add i32 %232, 1
  %240 = tail call i32 @llvm.umax.i32(i32 %224, i32 %239)
  %241 = add i32 %232, 1
  %242 = icmp ult i32 %241, %224
  br i1 %242, label %255, label %270, !prof !459

243:                                              ; preds = %255
  %244 = shl i32 %256, 6
  br label %245

245:                                              ; preds = %243, %231
  %246 = phi i32 [ %232, %231 ], [ %256, %243 ]
  %247 = phi i32 [ %233, %231 ], [ %244, %243 ]
  %248 = phi i64 [ %235, %231 ], [ %259, %243 ]
  %249 = phi i1 [ %237, %231 ], [ %260, %243 ]
  %250 = and i64 %248, 1
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %261, label %270

252:                                              ; preds = %255
  %253 = add i32 %256, 1
  %254 = icmp ult i32 %253, %224
  br i1 %254, label %255, label %268, !prof !460, !llvm.loop !461

255:                                              ; preds = %238, %252
  %256 = phi i32 [ %253, %252 ], [ %241, %238 ]
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i64, ptr %225, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !226
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %252, label %243, !prof !462, !llvm.loop !461

261:                                              ; preds = %245, %261
  %262 = phi i64 [ %265, %261 ], [ %248, %245 ]
  %263 = phi i32 [ %264, %261 ], [ %247, %245 ]
  %264 = add i32 %263, 1
  %265 = lshr exact i64 %262, 1
  %266 = and i64 %262, 2
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %261, label %270, !llvm.loop !463

268:                                              ; preds = %252
  %269 = shl i32 %256, 6
  br label %270

270:                                              ; preds = %261, %268, %238, %245
  %271 = phi i1 [ %249, %245 ], [ %237, %238 ], [ %260, %268 ], [ %249, %261 ]
  %272 = phi i32 [ %246, %245 ], [ %240, %238 ], [ %240, %268 ], [ %246, %261 ]
  %273 = phi i32 [ %247, %245 ], [ %233, %238 ], [ %269, %268 ], [ %264, %261 ]
  %274 = phi i32 [ %247, %245 ], [ %234, %238 ], [ %234, %268 ], [ %264, %261 ]
  %275 = phi i64 [ %248, %245 ], [ %235, %238 ], [ %259, %268 ], [ %265, %261 ]
  br i1 %271, label %318, label %276, !prof !375

276:                                              ; preds = %270
  %277 = load ptr, ptr @all_blocks, align 8, !tbaa !135
  %278 = tail call i32 @bitmap_bit_p(ptr noundef %277, i32 noundef %274) #18
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %314, label %280

280:                                              ; preds = %276
  %281 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %282 = zext i32 %274 to i64
  %283 = getelementptr inbounds ptr, ptr %281, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !135
  %285 = icmp eq ptr %236, null
  br i1 %285, label %286, label %307

286:                                              ; preds = %280
  %287 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  br label %288

288:                                              ; preds = %302, %286
  %289 = phi i32 [ 0, %286 ], [ %306, %302 ]
  %290 = load ptr, ptr @rtx_group_vec, align 8
  %291 = icmp eq ptr %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %288
  %293 = load i32, ptr %290, align 8, !tbaa !337
  %294 = icmp ugt i32 %293, %289
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = zext i32 %289 to i64
  %297 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %290, i64 0, i32 2, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !135
  br label %299

299:                                              ; preds = %288, %292, %295
  %300 = phi ptr [ %298, %295 ], [ null, %292 ], [ null, %288 ]
  %301 = phi i1 [ false, %295 ], [ true, %292 ], [ true, %288 ]
  br i1 %301, label %307, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.group_info, ptr %300, i64 0, i32 10
  %304 = load ptr, ptr %303, align 8, !tbaa !352
  %305 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %287, ptr noundef %304) #18
  %306 = add i32 %289, 1
  br label %288, !llvm.loop !464

307:                                              ; preds = %299, %280
  %308 = phi ptr [ %236, %280 ], [ %287, %299 ]
  %309 = getelementptr inbounds %struct.bb_info, ptr %284, i64 0, i32 5
  %310 = load ptr, ptr %309, align 8, !tbaa !381
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %313, ptr %309, align 8, !tbaa !381
  tail call void @bitmap_copy(ptr noundef %313, ptr noundef %308) #18
  br label %314

314:                                              ; preds = %307, %312, %276
  %315 = phi ptr [ %236, %276 ], [ %308, %312 ], [ %308, %307 ]
  %316 = lshr i64 %275, 1
  %317 = add i32 %273, 1
  br label %231, !llvm.loop !465

318:                                              ; preds = %270
  %319 = icmp eq ptr %236, null
  br i1 %319, label %321, label %320, !prof !375

320:                                              ; preds = %318
  tail call void @bitmap_obstack_free(ptr noundef nonnull %236) #18
  br label %321

321:                                              ; preds = %320, %318
  %322 = load ptr, ptr %7, align 8, !tbaa !466
  tail call void @free(ptr noundef %322)
  tail call void @free(ptr noundef %7)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dse_step4() unnamed_addr #9 !prof !433 !PGOFuncName !467 {
  %1 = load ptr, ptr @all_blocks, align 8, !tbaa !135
  %2 = tail call ptr @df_get_postorder(i32 noundef 2) #18
  %3 = tail call i32 @df_get_n_blocks(i32 noundef 2) #18
  tail call void @df_simple_dataflow(i32 noundef 2, ptr noundef null, ptr noundef nonnull @dse_confluence_0, ptr noundef nonnull @dse_confluence_n, ptr noundef nonnull @dse_transfer_function, ptr noundef %1, ptr noundef %2, i32 noundef %3) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6, !prof !375

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 43, i64 1, ptr nonnull %4)
  %8 = load ptr, ptr @cfun, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %6, %53
  %14 = phi ptr [ %55, %53 ], [ %11, %6 ]
  %15 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !169
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !135
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @df_print_bb_index(ptr noundef nonnull %14, ptr noundef %21) #18
  %22 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !426
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !135
  br i1 %24, label %27, label %26

26:                                               ; preds = %13
  tail call void @bitmap_print(ptr noundef %25, ptr noundef nonnull %23, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.31) #18
  br label %29

27:                                               ; preds = %13
  %28 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 18, i64 1, ptr %25)
  br label %29

29:                                               ; preds = %27, %26
  %30 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !423
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !135
  br i1 %32, label %35, label %34

34:                                               ; preds = %29
  tail call void @bitmap_print(ptr noundef %33, ptr noundef nonnull %31, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.31) #18
  br label %37

35:                                               ; preds = %29
  %36 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 18, i64 1, ptr %33)
  br label %37

37:                                               ; preds = %35, %34
  %38 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !424
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !135
  br i1 %40, label %43, label %42

42:                                               ; preds = %37
  tail call void @bitmap_print(ptr noundef %41, ptr noundef nonnull %39, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.31) #18
  br label %45

43:                                               ; preds = %37
  %44 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 18, i64 1, ptr %41)
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !381
  %48 = icmp eq ptr %47, null
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !135
  br i1 %48, label %51, label %50

50:                                               ; preds = %45
  tail call void @bitmap_print(ptr noundef %49, ptr noundef nonnull %47, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.31) #18
  br label %53

51:                                               ; preds = %45
  %52 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 19, i64 1, ptr %49)
  br label %53

53:                                               ; preds = %51, %50
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !135
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %13, !llvm.loop !468

57:                                               ; preds = %53, %6, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @invariant_group_base_hash(ptr nocapture noundef readonly %0) #12 !prof !469 !PGOFuncName !470 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !471
  %4 = call i32 @hash_rtx(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @invariant_group_base_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !472 !PGOFuncName !473 {
  %3 = load ptr, ptr %0, align 8, !tbaa !471
  %4 = load ptr, ptr %1, align 8, !tbaa !471
  %5 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %4) #18
  ret i32 %5
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @init_alias_analysis() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_group_info(ptr noundef %0) unnamed_addr #12 !prof !134 !PGOFuncName !474 {
  %2 = alloca %struct.group_info, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #18
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4, !prof !475

4:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !471
  %5 = load ptr, ptr @rtx_group_table, align 8, !tbaa !135
  %6 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 1) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %91, !prof !476

9:                                                ; preds = %1
  %10 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !135
  %14 = tail call ptr @pool_alloc(ptr noundef %13) #18
  store ptr %14, ptr @clear_alias_group, align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %14, i8 0, i64 96, i1 false)
  %15 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !150
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @rtx_group_next_id, align 4, !tbaa !150
  %17 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 1
  store i32 %15, ptr %17, align 8, !tbaa !477
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %19 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !344
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %21 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 7
  store ptr %20, ptr %21, align 8, !tbaa !242
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %23 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 8
  store ptr %22, ptr %23, align 8, !tbaa !343
  %24 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %25 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 9
  store ptr %24, ptr %25, align 8, !tbaa !243
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %27 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 10
  store ptr %26, ptr %27, align 8, !tbaa !352
  %28 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 2
  store i8 0, ptr %28, align 4, !tbaa !347
  %29 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %30 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !478
  %35 = load i32, ptr %30, align 8, !tbaa !337
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %12, %32
  %38 = tail call ptr @vec_heap_p_reserve(ptr noundef %30, i32 noundef 1) #18
  store ptr %38, ptr @rtx_group_vec, align 8, !tbaa !135
  br label %39

39:                                               ; preds = %32, %37
  %40 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %41 = load i32, ptr %40, align 8, !tbaa !337
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !337
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %40, i64 0, i32 2, i64 %43
  store ptr %14, ptr %44, align 8, !tbaa !135
  br label %45

45:                                               ; preds = %39, %9
  %46 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  br label %91

47:                                               ; preds = %4
  %48 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !135
  %49 = call ptr @pool_alloc(ptr noundef %48) #18
  store ptr %49, ptr %6, align 8, !tbaa !135
  store ptr %0, ptr %49, align 8, !tbaa !471
  %50 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !150
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @rtx_group_next_id, align 4, !tbaa !150
  %52 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 1
  store i32 %50, ptr %52, align 8, !tbaa !477
  %53 = call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef nonnull %0) #18
  %54 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !479
  %55 = call ptr @canon_rtx(ptr noundef nonnull %0) #18
  %56 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 5
  store ptr %55, ptr %56, align 8, !tbaa !480
  %57 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %58 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 6
  store ptr %57, ptr %58, align 8, !tbaa !344
  %59 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %60 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 7
  store ptr %59, ptr %60, align 8, !tbaa !242
  %61 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %62 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 8
  store ptr %61, ptr %62, align 8, !tbaa !343
  %63 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %64 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 9
  store ptr %63, ptr %64, align 8, !tbaa !243
  %65 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %66 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 10
  store ptr %65, ptr %66, align 8, !tbaa !352
  %67 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 2
  store i8 0, ptr %67, align 4, !tbaa !347
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !135
  %69 = icmp eq ptr %68, %0
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %71 = icmp eq ptr %70, %0
  %72 = select i1 %69, i1 true, i1 %71, !prof !341
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 3
  store i8 %73, ptr %74, align 1, !tbaa !206
  %75 = getelementptr inbounds %struct.group_info, ptr %49, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, i8 0, i64 24, i1 false)
  %76 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78, !prof !481

78:                                               ; preds = %47
  %79 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %76, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !478
  %81 = load i32, ptr %76, align 8, !tbaa !337
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85, !prof !482

83:                                               ; preds = %47, %78
  %84 = call ptr @vec_heap_p_reserve(ptr noundef %76, i32 noundef 1) #18
  store ptr %84, ptr @rtx_group_vec, align 8, !tbaa !135
  br label %85

85:                                               ; preds = %78, %83
  %86 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %87 = load i32, ptr %86, align 8, !tbaa !337
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !337
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %86, i64 0, i32 2, i64 %89
  store ptr %49, ptr %90, align 8, !tbaa !135
  br label %91

91:                                               ; preds = %4, %85, %45
  %92 = phi ptr [ %46, %45 ], [ %49, %85 ], [ %7, %4 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #18
  ret ptr %92
}

declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cselib_init(i32 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_initialize_forwards(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @remove_useless_values(ptr noundef readnone %0) #9 !prof !134 {
  %2 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1, %29
  %5 = phi ptr [ %32, %29 ], [ %2, %1 ]
  %6 = phi ptr [ %30, %29 ], [ null, %1 ]
  %7 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %4, %19
  %11 = phi ptr [ %21, %19 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !205
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !284
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %10, !llvm.loop !483

23:                                               ; preds = %15
  %24 = icmp eq ptr %6, null
  %25 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !209
  %27 = getelementptr inbounds %struct.insn_info, ptr %6, i64 0, i32 9
  %28 = select i1 %24, ptr @active_local_stores, ptr %27
  store ptr %26, ptr %28, align 8, !tbaa !135
  tail call fastcc void @free_store_info(ptr noundef nonnull %5)
  br label %29

29:                                               ; preds = %19, %4, %23
  %30 = phi ptr [ %6, %23 ], [ %5, %4 ], [ %5, %19 ]
  %31 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %4, !llvm.loop !484

34:                                               ; preds = %29, %1
  ret void
}

declare void @cselib_clear_table() local_unnamed_addr #3

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

declare void @df_simulate_one_insn_forwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @delete_dead_store_insn(ptr nocapture noundef %0) unnamed_addr #9 !prof !134 {
  %2 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  tail call fastcc void @check_for_inc_dec(ptr noundef %6)
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !187
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !146
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, i32 noundef %12)
  %14 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !208
  %16 = getelementptr inbounds %struct.store_info, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !276
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !135
  br i1 %18, label %22, label %20

20:                                               ; preds = %9
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.58, i32 noundef %17)
  br label %24

22:                                               ; preds = %9
  %23 = tail call i32 @fputc(i32 10, ptr %19)
  br label %24

24:                                               ; preds = %20, %22, %4
  tail call fastcc void @free_store_info(ptr noundef %0)
  %25 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !405
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.read_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !193
  %32 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  tail call void @pool_free(ptr noundef %32, ptr noundef nonnull %29) #18
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %28, !llvm.loop !485

34:                                               ; preds = %28, %24
  store ptr null, ptr %25, align 8, !tbaa !405
  %35 = load ptr, ptr %5, align 8, !tbaa !187
  %36 = tail call ptr @delete_insn(ptr noundef %35) #18
  %37 = load i32, ptr @locally_deleted, align 4, !tbaa !150
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @locally_deleted, align 4, !tbaa !150
  store ptr null, ptr %5, align 8, !tbaa !187
  %39 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 1
  store i8 0, ptr %39, align 1, !tbaa !195
  br label %40

40:                                               ; preds = %1, %34
  ret void
}

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @free_store_info(ptr nocapture noundef %0) unnamed_addr #12 !prof !134 !PGOFuncName !486 {
  %2 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !327

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %8, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  %9 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !279
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !260

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  tail call void @bitmap_obstack_free(ptr noundef %14) #18
  store ptr null, ptr %13, align 8, !tbaa !146
  br label %15

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !284
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @rtx_store_info_pool, align 8
  %20 = load ptr, ptr @cse_store_info_pool, align 8
  %21 = select i1 %18, ptr %19, ptr %20
  tail call void @pool_free(ptr noundef %21, ptr noundef nonnull %6) #18
  %22 = icmp eq ptr %8, null
  br i1 %22, label %23, label %5, !prof !328, !llvm.loop !329

23:                                               ; preds = %15, %1
  store i8 1, ptr %0, align 8, !tbaa !189
  %24 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 4
  store i8 0, ptr %24, align 4, !tbaa !259
  store ptr null, ptr %2, align 8, !tbaa !208
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @cselib_finish() local_unnamed_addr #3

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @check_mem_read_use(ptr noundef %0, ptr noundef %1) #12 !prof !487 !PGOFuncName !488 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @check_mem_read_rtx, ptr noundef %1) #18
  ret void
}

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @record_store(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !489 !PGOFuncName !490 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %7 = load ptr, ptr %1, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !135
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %704 [
    i16 23, label %10
    i16 25, label %10
  ], !prof !227

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  %13 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 6, ptr noundef %12) #18
  %16 = icmp eq ptr %15, null
  %17 = load i32, ptr %12, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %22, label %20, !prof !228

20:                                               ; preds = %10
  br i1 %16, label %21, label %704, !prof !229

21:                                               ; preds = %20
  store i8 1, ptr %7, align 8, !tbaa !189
  br label %704

22:                                               ; preds = %10
  %23 = and i32 %17, 16711680
  %24 = icmp eq i32 %23, 65536
  br i1 %24, label %25, label %122, !prof !230

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !146
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %31, label %57, !prof !231

31:                                               ; preds = %25
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !231

34:                                               ; preds = %31
  %35 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 51, i64 1, ptr nonnull %32)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load ptr, ptr %1, align 8, !tbaa !184
  %38 = getelementptr inbounds %struct.insn_info, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !135
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41, !prof !232

41:                                               ; preds = %36, %51
  %42 = phi ptr [ %53, %51 ], [ %39, %36 ]
  %43 = phi ptr [ %52, %51 ], [ %38, %36 ]
  %44 = getelementptr inbounds %struct.read_info, ptr %42, i64 0, i32 5
  %45 = getelementptr inbounds %struct.read_info, ptr %42, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !191
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !193
  %50 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  tail call void @pool_free(ptr noundef %50, ptr noundef nonnull %42) #18
  store ptr %49, ptr %43, align 8, !tbaa !135
  br label %51

51:                                               ; preds = %48, %41
  %52 = phi ptr [ %43, %48 ], [ %44, %41 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !135
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %41, !prof !232, !llvm.loop !194

55:                                               ; preds = %51, %36
  %56 = getelementptr inbounds %struct.insn_info, ptr %37, i64 0, i32 1
  store i8 1, ptr %56, align 1, !tbaa !195
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  store i8 1, ptr %7, align 8, !tbaa !189
  br label %704

57:                                               ; preds = %25
  %58 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !146
  %60 = icmp eq ptr %59, null
  br i1 %60, label %104, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.mem_attrs, ptr %59, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !233
  %64 = icmp eq ptr %63, null
  br i1 %64, label %104, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %63, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 30
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load i32, ptr %0, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 23
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !146
  %76 = icmp slt i64 %75, 1
  br i1 %76, label %104, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %58, align 8, !tbaa !146
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.mem_attrs, ptr %78, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !233
  br label %93

83:                                               ; preds = %77
  %84 = load i32, ptr %12, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = icmp ne i32 %86, 1
  tail call void @llvm.assume(i1 %87)
  %88 = zext nneg i32 %86 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !146
  %91 = zext i8 %90 to i64
  %92 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %91) #18
  br label %93

93:                                               ; preds = %83, %80
  %94 = phi ptr [ %82, %80 ], [ %92, %83 ]
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !146
  %97 = icmp sgt i64 %96, 65536
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !146
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 30
  br i1 %103, label %122, label %104

104:                                              ; preds = %98, %57, %93, %73, %69, %65, %61
  br i1 %16, label %105, label %704

105:                                              ; preds = %104
  store i8 1, ptr %7, align 8, !tbaa !189
  %106 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %107 = icmp eq ptr %106, null
  br i1 %107, label %704, label %108

108:                                              ; preds = %105, %117
  %109 = phi ptr [ %120, %117 ], [ %106, %105 ]
  %110 = getelementptr inbounds %struct.insn_info, ptr %109, i64 0, i32 6
  br label %111

111:                                              ; preds = %111, %108
  %112 = phi ptr [ %110, %108 ], [ %116, %111 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !135
  %114 = load i8, ptr %113, align 8, !tbaa !202
  %115 = icmp eq i8 %114, 0
  %116 = getelementptr inbounds %struct.store_info, ptr %113, i64 0, i32 10
  br i1 %115, label %111, label %117, !llvm.loop !235

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.store_info, ptr %113, i64 0, i32 11
  %119 = getelementptr inbounds %struct.insn_info, ptr %109, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  %120 = load ptr, ptr %119, align 8, !tbaa !135
  %121 = icmp eq ptr %120, null
  br i1 %121, label %704, label %108, !llvm.loop !236

122:                                              ; preds = %98, %22
  %123 = load i32, ptr %12, align 8
  %124 = and i32 %123, 134217728
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126, !prof !237

126:                                              ; preds = %122
  store i8 1, ptr %7, align 8, !tbaa !189
  br label %127

127:                                              ; preds = %126, %122
  %128 = call fastcc zeroext i8 @canon_address(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %6)
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %147, !prof !238

130:                                              ; preds = %127
  %131 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %132 = icmp eq ptr %131, null
  br i1 %132, label %704, label %133, !prof !232

133:                                              ; preds = %130, %142
  %134 = phi ptr [ %145, %142 ], [ %131, %130 ]
  %135 = getelementptr inbounds %struct.insn_info, ptr %134, i64 0, i32 6
  br label %136

136:                                              ; preds = %136, %133
  %137 = phi ptr [ %135, %133 ], [ %141, %136 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !135
  %139 = load i8, ptr %138, align 8, !tbaa !202
  %140 = icmp eq i8 %139, 0
  %141 = getelementptr inbounds %struct.store_info, ptr %138, i64 0, i32 10
  br i1 %140, label %136, label %142, !llvm.loop !235

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.store_info, ptr %138, i64 0, i32 11
  %144 = getelementptr inbounds %struct.insn_info, ptr %134, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %143, i8 0, i64 16, i1 false)
  %145 = load ptr, ptr %144, align 8, !tbaa !135
  %146 = icmp eq ptr %145, null
  br i1 %146, label %704, label %133, !prof !232, !llvm.loop !236

147:                                              ; preds = %127
  %148 = load i32, ptr %12, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %159, !prof !239

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !146, !nonnull !240, !noundef !240
  %155 = getelementptr inbounds %struct.mem_attrs, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !233
  %157 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !146
  br label %166

159:                                              ; preds = %147
  %160 = zext nneg i32 %150 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !146
  %163 = zext i8 %162 to i64
  %164 = icmp ult i8 %162, 65
  br i1 %164, label %166, label %165, !prof !241

165:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1386, ptr noundef nonnull @.str.2) #18
  br label %166

166:                                              ; preds = %165, %159, %152
  %167 = phi i64 [ %158, %152 ], [ %163, %159 ], [ %163, %165 ]
  %168 = load i32, ptr %4, align 4, !tbaa !150
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %203, label %170, !prof !241

170:                                              ; preds = %166
  %171 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %172 = getelementptr inbounds %struct.group_info, ptr %171, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !242
  %174 = getelementptr inbounds %struct.group_info, ptr %171, i64 0, i32 9
  %175 = load ptr, ptr %174, align 8, !tbaa !243
  %176 = load i32, ptr %12, align 8
  %177 = and i32 %176, 16711680
  %178 = icmp eq i32 %177, 65536
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1394, ptr noundef nonnull @.str.2) #18
  br label %180

180:                                              ; preds = %170, %179
  %181 = tail call i32 @bitmap_bit_p(ptr noundef %173, i32 noundef %168) #18
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, ptr %173, ptr %175
  %184 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %183, i32 noundef %168) #18
  %185 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %186 = getelementptr inbounds %struct.group_info, ptr %185, i64 0, i32 14
  %187 = load i32, ptr %186, align 4, !tbaa !244
  %188 = icmp slt i32 %187, %168
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store i32 %168, ptr %186, align 4, !tbaa !244
  br label %190

190:                                              ; preds = %189, %180
  %191 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !135
  %192 = tail call ptr @pool_alloc(ptr noundef %191) #18
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %194 = icmp eq ptr %193, null
  br i1 %194, label %290, label %195

195:                                              ; preds = %190
  %196 = load i32, ptr %12, align 8
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !135
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %193, ptr noundef nonnull @.str.51, i32 noundef %168, ptr noundef %201)
  br label %290

203:                                              ; preds = %166
  %204 = load i32, ptr %5, align 4, !tbaa !150
  %205 = icmp sgt i32 %204, -1
  br i1 %205, label %206, label %262, !prof !245

206:                                              ; preds = %203
  %207 = load ptr, ptr @rtx_group_vec, align 8
  %208 = zext nneg i32 %204 to i64
  %209 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %207, i64 0, i32 2, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !135
  %211 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !135
  %212 = tail call ptr @pool_alloc(ptr noundef %211) #18
  %213 = load i64, ptr %3, align 8, !tbaa !226
  %214 = icmp sgt i64 %213, -65536
  br i1 %214, label %215, label %254, !prof !246

215:                                              ; preds = %206
  %216 = add nsw i64 %213, %167
  %217 = icmp slt i64 %216, 65536
  %218 = icmp sgt i64 %167, 0
  %219 = and i1 %217, %218
  br i1 %219, label %220, label %254, !prof !247

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.group_info, ptr %210, i64 0, i32 6
  %222 = getelementptr inbounds %struct.group_info, ptr %210, i64 0, i32 8
  %223 = getelementptr inbounds %struct.group_info, ptr %210, i64 0, i32 7
  %224 = getelementptr inbounds %struct.group_info, ptr %210, i64 0, i32 9
  br label %225

225:                                              ; preds = %220, %251
  %226 = phi i64 [ %213, %220 ], [ %252, %251 ]
  %227 = icmp slt i64 %226, 0
  %228 = trunc i64 %226 to i32
  %229 = sub i32 0, %228
  %230 = select i1 %227, ptr %221, ptr %223, !prof !248
  %231 = select i1 %227, ptr %222, ptr %224, !prof !248
  %232 = select i1 %227, i32 %229, i32 %228, !prof !248
  %233 = load ptr, ptr %231, align 8, !tbaa !135
  %234 = load ptr, ptr %230, align 8, !tbaa !135
  %235 = tail call i32 @bitmap_bit_p(ptr noundef %234, i32 noundef %232) #18
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237, !prof !249

237:                                              ; preds = %225
  %238 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %233, i32 noundef %232) #18
  br label %251

239:                                              ; preds = %225
  %240 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %234, i32 noundef %232) #18
  br i1 %227, label %241, label %246, !prof !250

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.group_info, ptr %210, i64 0, i32 13
  %243 = load i32, ptr %242, align 8, !tbaa !251
  %244 = icmp slt i32 %243, %232
  br i1 %244, label %245, label %251, !prof !252

245:                                              ; preds = %241
  store i32 %232, ptr %242, align 8, !tbaa !251
  br label %251

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.group_info, ptr %210, i64 0, i32 14
  %248 = load i32, ptr %247, align 4, !tbaa !244
  %249 = icmp slt i32 %248, %232
  br i1 %249, label %250, label %251, !prof !253

250:                                              ; preds = %246
  store i32 %232, ptr %247, align 4, !tbaa !244
  br label %251

251:                                              ; preds = %250, %246, %245, %241, %237
  %252 = add nsw i64 %226, 1
  %253 = icmp slt i64 %252, %216
  br i1 %253, label %225, label %254, !prof !254, !llvm.loop !255

254:                                              ; preds = %251, %215, %206
  %255 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %256 = icmp eq ptr %255, null
  br i1 %256, label %290, label %257, !prof !246

257:                                              ; preds = %254
  %258 = trunc i64 %213 to i32
  %259 = add nsw i64 %213, %167
  %260 = trunc i64 %259 to i32
  %261 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %255, ptr noundef nonnull @.str.52, i32 noundef %204, i32 noundef %258, i32 noundef %260)
  br label %290

262:                                              ; preds = %203
  %263 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !146
  %265 = tail call ptr @find_base_term(ptr noundef %264) #18
  %266 = icmp eq ptr %265, null
  br i1 %266, label %276, label %267, !prof !256

267:                                              ; preds = %262
  %268 = load i32, ptr %265, align 8
  %269 = and i32 %268, 16777215
  %270 = icmp eq i32 %269, 1048582
  br i1 %270, label %271, label %278, !prof !257

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !146
  %274 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !135
  %275 = icmp eq ptr %273, %274
  br i1 %275, label %276, label %278, !prof !258

276:                                              ; preds = %271, %262
  %277 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 3
  store i8 1, ptr %277, align 1, !tbaa !201
  br label %278

278:                                              ; preds = %276, %271, %267
  %279 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 4
  store i8 1, ptr %279, align 4, !tbaa !259
  %280 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !135
  %281 = tail call ptr @pool_alloc(ptr noundef %280) #18
  store i32 -1, ptr %5, align 4, !tbaa !150
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %283 = icmp eq ptr %282, null
  br i1 %283, label %290, label %284, !prof !260

284:                                              ; preds = %278
  %285 = load i64, ptr %3, align 8, !tbaa !226
  %286 = trunc i64 %285 to i32
  %287 = add nsw i64 %285, %167
  %288 = trunc i64 %287 to i32
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %282, ptr noundef nonnull @.str.53, i32 noundef %286, i32 noundef %288)
  br label %290

290:                                              ; preds = %278, %284, %254, %257, %190, %195
  %291 = phi ptr [ %192, %195 ], [ %192, %190 ], [ %212, %257 ], [ %212, %254 ], [ %281, %284 ], [ %281, %278 ]
  %292 = load i32, ptr %0, align 8
  %293 = and i32 %292, 65535
  %294 = icmp ne i32 %293, 23
  %295 = load i32, ptr @reload_completed, align 4
  %296 = icmp ne i32 %295, 0
  %297 = select i1 %294, i1 true, i1 %296, !prof !239
  br i1 %297, label %370, label %298, !prof !261

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !146
  %301 = load i32, ptr %300, align 8
  %302 = trunc i32 %301 to i16
  switch i16 %302, label %303 [
    i16 37, label %309
    i16 39, label %309
  ], !prof !262

303:                                              ; preds = %298
  %304 = and i32 %301, 65535
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !150
  %308 = icmp eq i32 %307, 9
  br i1 %308, label %309, label %370, !prof !263

309:                                              ; preds = %298, %298, %303
  %310 = load i32, ptr %12, align 8
  %311 = and i32 %310, 134217728
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %370, !prof !264

313:                                              ; preds = %309
  %314 = lshr i32 %310, 16
  %315 = and i32 %314, 255
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !146
  switch i8 %318, label %319 [
    i8 8, label %324
    i8 9, label %324
    i8 11, label %324
  ], !prof !265

319:                                              ; preds = %313
  %320 = icmp eq i8 %318, 17
  %321 = load i32, ptr @flag_float_store, align 4
  %322 = icmp ne i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false, !prof !266
  br i1 %323, label %370, label %327, !prof !266

324:                                              ; preds = %313, %313, %313
  %325 = load i32, ptr @flag_float_store, align 4, !tbaa !150
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %370

327:                                              ; preds = %319, %324
  %328 = and i32 %301, 65535
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !150
  %332 = icmp eq i32 %331, 9
  br i1 %332, label %351, label %333, !prof !267

333:                                              ; preds = %327
  %334 = load ptr, ptr %13, align 8, !tbaa !187
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !146
  %337 = icmp eq ptr %336, %0
  br i1 %337, label %338, label %351, !prof !268

338:                                              ; preds = %333
  %339 = tail call ptr @find_reg_note(ptr noundef %334, i32 noundef 4, ptr noundef null) #18
  %340 = icmp eq ptr %339, null
  br i1 %340, label %351, label %341, !prof !268

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !146
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 65535
  %346 = zext nneg i32 %345 to i64
  %347 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !150
  %349 = icmp eq i32 %348, 9
  %350 = select i1 %349, ptr %343, ptr null
  br label %351

351:                                              ; preds = %327, %341, %338, %333
  %352 = phi ptr [ null, %333 ], [ null, %338 ], [ %350, %341 ], [ %300, %327 ]
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %370, !prof !269

354:                                              ; preds = %351
  %355 = load i32, ptr %300, align 8
  %356 = and i32 %355, 65535
  %357 = icmp eq i32 %356, 37
  br i1 %357, label %358, label %370, !prof !268

358:                                              ; preds = %354
  %359 = load ptr, ptr @scratch, align 8, !tbaa !135
  %360 = tail call ptr @cselib_expand_value_rtx(ptr noundef nonnull %300, ptr noundef %359, i32 noundef 5) #18
  %361 = icmp eq ptr %360, null
  br i1 %361, label %370, label %362, !prof !270

362:                                              ; preds = %358
  %363 = load i32, ptr %360, align 8
  %364 = and i32 %363, 65535
  %365 = zext nneg i32 %364 to i64
  %366 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !150
  %368 = icmp eq i32 %367, 9
  %369 = select i1 %368, ptr %360, ptr null, !prof !270
  br label %370

370:                                              ; preds = %303, %362, %358, %351, %354, %319, %324, %309, %290
  %371 = phi ptr [ null, %290 ], [ null, %309 ], [ null, %324 ], [ null, %354 ], [ %352, %351 ], [ null, %319 ], [ null, %358 ], [ %369, %362 ], [ null, %303 ]
  %372 = phi ptr [ null, %290 ], [ null, %309 ], [ null, %324 ], [ %300, %354 ], [ %300, %351 ], [ null, %319 ], [ %300, %358 ], [ %300, %362 ], [ null, %303 ]
  %373 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %374 = tail call ptr @canon_rtx(ptr noundef nonnull %12) #18
  br i1 %169, label %375, label %394, !prof !241

375:                                              ; preds = %370
  %376 = load i32, ptr %5, align 4, !tbaa !150
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %381, !prof !271

378:                                              ; preds = %375
  %379 = load ptr, ptr %6, align 8, !tbaa !135
  %380 = getelementptr inbounds %struct.cselib_val_struct, ptr %379, i64 0, i32 2
  br label %387

381:                                              ; preds = %375
  %382 = load ptr, ptr @rtx_group_vec, align 8
  %383 = zext nneg i32 %376 to i64
  %384 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %382, i64 0, i32 2, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !135
  %386 = getelementptr inbounds %struct.group_info, ptr %385, i64 0, i32 5
  br label %387

387:                                              ; preds = %381, %378
  %388 = phi ptr [ %380, %378 ], [ %386, %381 ]
  %389 = load ptr, ptr %388, align 8, !tbaa !135
  %390 = load i64, ptr %3, align 8, !tbaa !226
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %394, label %392, !prof !272

392:                                              ; preds = %387
  %393 = tail call ptr @plus_constant(ptr noundef %389, i64 noundef %390) #18
  br label %394

394:                                              ; preds = %370, %387, %392
  %395 = phi ptr [ %393, %392 ], [ %389, %387 ], [ null, %370 ]
  %396 = icmp eq ptr %373, null
  br i1 %396, label %667, label %397, !prof !273

397:                                              ; preds = %394, %664
  %398 = phi ptr [ %402, %664 ], [ %373, %394 ]
  %399 = phi ptr [ %665, %664 ], [ null, %394 ]
  %400 = phi ptr [ %631, %664 ], [ null, %394 ]
  %401 = getelementptr inbounds %struct.insn_info, ptr %398, i64 0, i32 9
  %402 = load ptr, ptr %401, align 8, !tbaa !209
  %403 = getelementptr inbounds %struct.insn_info, ptr %398, i64 0, i32 6
  br label %404

404:                                              ; preds = %404, %397
  %405 = phi ptr [ %403, %397 ], [ %409, %404 ]
  %406 = load ptr, ptr %405, align 8, !tbaa !135
  %407 = load i8, ptr %406, align 8, !tbaa !202
  %408 = icmp eq i8 %407, 0
  %409 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 10
  br i1 %408, label %404, label %410, !prof !274, !llvm.loop !275

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 6
  %412 = load i32, ptr %411, align 8, !tbaa !276
  %413 = load i32, ptr %4, align 4, !tbaa !150
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %630, !prof !277

415:                                              ; preds = %410
  %416 = icmp eq i32 %412, 0
  br i1 %416, label %466, label %417, !prof !277

417:                                              ; preds = %415
  %418 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %412)
  %419 = load i32, ptr %374, align 8
  %420 = lshr i32 %419, 16
  %421 = and i32 %420, 255
  %422 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 4
  %423 = load ptr, ptr %422, align 8, !tbaa !278
  %424 = load i32, ptr %423, align 8
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  %427 = icmp eq i32 %421, %426
  br i1 %427, label %428, label %456

428:                                              ; preds = %417
  %429 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %418, i64 0, i32 1
  %430 = load i32, ptr %429, align 4, !tbaa !157
  %431 = icmp eq i32 %421, %430
  br i1 %431, label %432, label %456

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 1
  %434 = load i8, ptr %433, align 1, !tbaa !279
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %454, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 8
  %438 = load i64, ptr %437, align 8, !tbaa !280
  %439 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 7
  %440 = load i64, ptr %439, align 8, !tbaa !281
  %441 = sub nsw i64 %438, %440
  %442 = trunc i64 %441 to i32
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %452

444:                                              ; preds = %436
  %445 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9
  br label %446

446:                                              ; preds = %444, %446
  %447 = phi i32 [ 0, %444 ], [ %450, %446 ]
  %448 = load ptr, ptr %445, align 8, !tbaa !146
  %449 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %448, i32 noundef %447) #18
  %450 = add nuw nsw i32 %447, 1
  %451 = icmp eq i32 %450, %442
  br i1 %451, label %452, label %446, !llvm.loop !282

452:                                              ; preds = %446, %436
  %453 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9, i32 0, i32 1
  store i32 %442, ptr %453, align 8, !tbaa !146
  br label %456

454:                                              ; preds = %432
  %455 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9
  store i64 0, ptr %455, align 8, !tbaa !146
  br label %456

456:                                              ; preds = %454, %452, %428, %417
  %457 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %458 = icmp eq ptr %457, null
  br i1 %458, label %630, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.insn_info, ptr %398, i64 0, i32 5
  %461 = load ptr, ptr %460, align 8, !tbaa !187
  %462 = getelementptr inbounds %struct.rtx_def, ptr %461, i64 0, i32 1
  %463 = load i32, ptr %462, align 8, !tbaa !146
  %464 = load i32, ptr %411, align 8, !tbaa !276
  %465 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %457, ptr noundef nonnull @.str.54, i32 noundef %463, i32 noundef %464)
  br label %630

466:                                              ; preds = %415
  %467 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 2
  %468 = load i32, ptr %467, align 4, !tbaa !205
  %469 = load i32, ptr %5, align 4, !tbaa !150
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %471, label %615, !prof !283

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !284
  %474 = load ptr, ptr %6, align 8, !tbaa !135
  %475 = icmp eq ptr %473, %474
  br i1 %475, label %476, label %615, !prof !285

476:                                              ; preds = %471
  %477 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %478 = icmp eq ptr %477, null
  br i1 %478, label %491, label %479, !prof !285

479:                                              ; preds = %476
  %480 = getelementptr inbounds %struct.insn_info, ptr %398, i64 0, i32 5
  %481 = load ptr, ptr %480, align 8, !tbaa !187
  %482 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1
  %483 = load i32, ptr %482, align 8, !tbaa !146
  %484 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 7
  %485 = load i64, ptr %484, align 8, !tbaa !281
  %486 = trunc i64 %485 to i32
  %487 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 8
  %488 = load i64, ptr %487, align 8, !tbaa !280
  %489 = trunc i64 %488 to i32
  %490 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %477, ptr noundef nonnull @.str.55, i32 noundef %483, i32 noundef %468, i32 noundef %486, i32 noundef %489)
  br label %491

491:                                              ; preds = %479, %476
  %492 = icmp ne ptr %371, null
  %493 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 12
  %494 = load ptr, ptr %493, align 8, !tbaa !286
  %495 = icmp ne ptr %494, null
  %496 = and i1 %492, %495
  br i1 %496, label %497, label %574, !prof !287

497:                                              ; preds = %491
  %498 = load i64, ptr %3, align 8, !tbaa !226
  %499 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 7
  %500 = load i64, ptr %499, align 8, !tbaa !281
  %501 = icmp slt i64 %498, %500
  br i1 %501, label %574, label %502, !prof !288

502:                                              ; preds = %497
  %503 = add nsw i64 %498, %167
  %504 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 8
  %505 = load i64, ptr %504, align 8, !tbaa !280
  %506 = icmp sgt i64 %503, %505
  br i1 %506, label %574, label %507

507:                                              ; preds = %502
  %508 = sub nsw i64 %498, %500
  %509 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 1
  %510 = load i8, ptr %509, align 1, !tbaa !279
  %511 = icmp eq i8 %510, 0
  %512 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9
  br i1 %511, label %525, label %513

513:                                              ; preds = %507
  %514 = trunc i64 %167 to i32
  %515 = trunc i64 %508 to i32
  %516 = add nsw i32 %515, %514
  br label %517

517:                                              ; preds = %520, %513
  %518 = phi i32 [ %515, %513 ], [ %522, %520 ]
  %519 = icmp slt i32 %518, %516
  br i1 %519, label %520, label %535

520:                                              ; preds = %517
  %521 = load ptr, ptr %512, align 8, !tbaa !146
  %522 = add nsw i32 %518, 1
  %523 = tail call i32 @bitmap_bit_p(ptr noundef %521, i32 noundef %518) #18
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %517, label %535, !llvm.loop !289

525:                                              ; preds = %507
  %526 = sub i64 64, %167
  %527 = and i64 %526, 4294967295
  %528 = lshr i64 -1, %527
  %529 = and i64 %508, 4294967295
  %530 = shl i64 %528, %529
  %531 = load i64, ptr %512, align 8, !tbaa !146
  %532 = and i64 %531, %530
  %533 = icmp eq i64 %532, %530
  %534 = zext i1 %533 to i8
  br label %535

535:                                              ; preds = %520, %517, %525
  %536 = phi i8 [ %534, %525 ], [ 1, %517 ], [ 0, %520 ]
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %574, label %538

538:                                              ; preds = %535
  %539 = load i32, ptr %374, align 8
  %540 = and i32 %539, 16711680
  %541 = icmp eq i32 %540, 65536
  br i1 %541, label %542, label %552

542:                                              ; preds = %538
  %543 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 4
  %544 = load ptr, ptr %543, align 8, !tbaa !278
  %545 = load i32, ptr %544, align 8
  %546 = and i32 %545, 16711680
  %547 = icmp eq i32 %546, 65536
  br i1 %547, label %548, label %574

548:                                              ; preds = %542
  %549 = load ptr, ptr %493, align 8, !tbaa !286
  %550 = icmp eq ptr %549, %371
  %551 = select i1 %550, ptr %398, ptr %400
  br label %574

552:                                              ; preds = %538
  %553 = load ptr, ptr %493, align 8, !tbaa !286
  %554 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !135
  %555 = icmp eq ptr %553, %554
  %556 = icmp eq ptr %371, %554
  %557 = and i1 %555, %556
  br i1 %557, label %574, label %558

558:                                              ; preds = %552
  tail call void @start_sequence() #18
  %559 = load i32, ptr %374, align 8
  %560 = lshr i32 %559, 16
  %561 = and i32 %560, 255
  %562 = load ptr, ptr %13, align 8, !tbaa !187
  %563 = getelementptr inbounds %struct.rtx_def, ptr %562, i64 0, i32 1, i32 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !146
  %565 = tail call fastcc ptr @get_stored_val(ptr noundef %406, i32 noundef %561, i64 noundef %498, ptr noundef %564, i8 noundef zeroext 1)
  %566 = tail call ptr @get_insns() #18
  %567 = icmp ne ptr %566, null
  tail call void @end_sequence() #18
  %568 = icmp eq ptr %565, null
  %569 = select i1 %567, i1 true, i1 %568
  br i1 %569, label %574, label %570

570:                                              ; preds = %558
  %571 = tail call i32 @rtx_equal_p(ptr noundef nonnull %565, ptr noundef nonnull %371) #18
  %572 = icmp eq i32 %571, 0
  %573 = select i1 %572, ptr %400, ptr %398
  br label %574

574:                                              ; preds = %570, %548, %558, %552, %542, %535, %502, %497, %491
  %575 = phi ptr [ %400, %542 ], [ %400, %535 ], [ %400, %502 ], [ %400, %497 ], [ %400, %491 ], [ %551, %548 ], [ %398, %552 ], [ %400, %558 ], [ %573, %570 ]
  %576 = load i64, ptr %3, align 8, !tbaa !226
  %577 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 7
  %578 = load i64, ptr %577, align 8, !tbaa !281
  %579 = tail call i64 @llvm.smax.i64(i64 %576, i64 %578)
  %580 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 8
  %581 = add nsw i64 %576, %167
  %582 = icmp slt i64 %579, %581
  br i1 %582, label %583, label %630, !prof !290

583:                                              ; preds = %574, %612
  %584 = phi i64 [ %613, %612 ], [ %579, %574 ]
  %585 = load i64, ptr %580, align 8, !tbaa !280
  %586 = icmp slt i64 %584, %585
  br i1 %586, label %587, label %630, !prof !291

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 1
  %589 = load i64, ptr %577, align 8, !tbaa !281
  %590 = sub nsw i64 %584, %589
  %591 = trunc i64 %590 to i32
  %592 = load i8, ptr %588, align 1, !tbaa !279
  %593 = icmp eq i8 %592, 0
  br i1 %593, label %605, label %594

594:                                              ; preds = %587
  %595 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9
  %596 = load ptr, ptr %595, align 8, !tbaa !146
  %597 = tail call i32 @bitmap_bit_p(ptr noundef %596, i32 noundef %591) #18
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %612

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9, i32 0, i32 1
  %601 = load i32, ptr %600, align 8, !tbaa !146
  %602 = add nsw i32 %601, 1
  store i32 %602, ptr %600, align 8, !tbaa !146
  %603 = load ptr, ptr %595, align 8, !tbaa !146
  %604 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %603, i32 noundef %591) #18
  br label %612

605:                                              ; preds = %587
  %606 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9
  %607 = and i64 %590, 4294967295
  %608 = shl nuw i64 1, %607
  %609 = xor i64 %608, -1
  %610 = load i64, ptr %606, align 8, !tbaa !146
  %611 = and i64 %610, %609
  store i64 %611, ptr %606, align 8, !tbaa !146
  br label %612

612:                                              ; preds = %594, %599, %605
  %613 = add nsw i64 %584, 1
  %614 = icmp slt i64 %613, %581
  br i1 %614, label %583, label %630, !prof !291, !llvm.loop !292

615:                                              ; preds = %471, %466
  %616 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 11
  %617 = load ptr, ptr %616, align 8, !tbaa !293
  %618 = icmp eq ptr %617, null
  br i1 %618, label %630, label %619, !prof !294

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 4
  %621 = load ptr, ptr %620, align 8, !tbaa !278
  %622 = load i32, ptr %621, align 8
  %623 = lshr i32 %622, 16
  %624 = and i32 %623, 255
  %625 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 5
  %626 = load ptr, ptr %625, align 8, !tbaa !295
  %627 = tail call i32 @canon_true_dependence(ptr noundef nonnull %621, i32 noundef %624, ptr noundef %626, ptr noundef %374, ptr noundef %395, ptr noundef nonnull @rtx_varies_p) #18
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %630, label %629

629:                                              ; preds = %619
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %616, i8 0, i64 16, i1 false)
  br label %630

630:                                              ; preds = %612, %583, %574, %456, %459, %410, %615, %629, %619
  %631 = phi ptr [ %400, %629 ], [ %400, %619 ], [ %400, %615 ], [ %400, %410 ], [ %400, %459 ], [ %400, %456 ], [ %575, %574 ], [ %575, %583 ], [ %575, %612 ]
  %632 = phi i8 [ 1, %629 ], [ 1, %619 ], [ 1, %615 ], [ 0, %410 ], [ 1, %459 ], [ 1, %456 ], [ 1, %574 ], [ 1, %583 ], [ 1, %612 ]
  %633 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 1
  %634 = load i8, ptr %633, align 1, !tbaa !279
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %646, label %636, !prof !277

636:                                              ; preds = %630
  %637 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9, i32 0, i32 1
  %638 = load i32, ptr %637, align 8, !tbaa !146
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 8
  %641 = load i64, ptr %640, align 8, !tbaa !280
  %642 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 7
  %643 = load i64, ptr %642, align 8, !tbaa !281
  %644 = sub nsw i64 %641, %643
  %645 = icmp sgt i64 %644, %639
  br label %650

646:                                              ; preds = %630
  %647 = getelementptr inbounds %struct.store_info, ptr %406, i64 0, i32 9
  %648 = load i64, ptr %647, align 8, !tbaa !146
  %649 = icmp ne i64 %648, 0
  br label %650

650:                                              ; preds = %636, %646
  %651 = phi i1 [ %645, %636 ], [ %649, %646 ]
  br i1 %651, label %655, label %652, !prof !277

652:                                              ; preds = %650
  %653 = load i8, ptr %398, align 8, !tbaa !189
  %654 = icmp eq i8 %653, 0
  br i1 %654, label %656, label %655

655:                                              ; preds = %652, %650
  br label %656

656:                                              ; preds = %655, %652
  %657 = phi i8 [ 0, %655 ], [ %632, %652 ]
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %664, label %659, !prof !277

659:                                              ; preds = %656
  %660 = icmp eq ptr %399, null
  %661 = load ptr, ptr %401, align 8, !tbaa !209
  %662 = getelementptr inbounds %struct.insn_info, ptr %399, i64 0, i32 9
  %663 = select i1 %660, ptr @active_local_stores, ptr %662
  store ptr %661, ptr %663, align 8, !tbaa !135
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %398)
  br label %664

664:                                              ; preds = %656, %659
  %665 = phi ptr [ %399, %659 ], [ %398, %656 ]
  %666 = icmp eq ptr %402, null
  br i1 %666, label %667, label %397, !prof !277, !llvm.loop !296

667:                                              ; preds = %664, %394
  %668 = phi ptr [ null, %394 ], [ %631, %664 ]
  %669 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 6
  %670 = load ptr, ptr %669, align 8, !tbaa !208
  %671 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 10
  store ptr %670, ptr %671, align 8, !tbaa !297
  store ptr %291, ptr %669, align 8, !tbaa !208
  %672 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 4
  store ptr %374, ptr %672, align 8, !tbaa !278
  %673 = load i32, ptr %4, align 4, !tbaa !150
  %674 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 6
  store i32 %673, ptr %674, align 8, !tbaa !276
  %675 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 5
  store ptr %395, ptr %675, align 8, !tbaa !295
  %676 = load ptr, ptr %6, align 8, !tbaa !135
  %677 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 3
  store ptr %676, ptr %677, align 8, !tbaa !284
  %678 = icmp sgt i64 %167, 64
  %679 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 1
  br i1 %678, label %680, label %684, !prof !239

680:                                              ; preds = %667
  store i8 1, ptr %679, align 1, !tbaa !279
  %681 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 9
  %682 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 9, i32 0, i32 1
  store i32 0, ptr %682, align 8, !tbaa !146
  %683 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %683, ptr %681, align 8, !tbaa !146
  br label %689

684:                                              ; preds = %667
  store i8 0, ptr %679, align 1, !tbaa !279
  %685 = sub i64 64, %167
  %686 = and i64 %685, 4294967295
  %687 = lshr i64 -1, %686
  %688 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 9
  store i64 %687, ptr %688, align 8, !tbaa !146
  br label %689

689:                                              ; preds = %684, %680
  %690 = load i32, ptr %5, align 4, !tbaa !150
  %691 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 2
  store i32 %690, ptr %691, align 4, !tbaa !205
  %692 = load i64, ptr %3, align 8, !tbaa !226
  %693 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 7
  store i64 %692, ptr %693, align 8, !tbaa !281
  %694 = add nsw i64 %692, %167
  %695 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 8
  store i64 %694, ptr %695, align 8, !tbaa !280
  %696 = load i32, ptr %0, align 8
  %697 = and i32 %696, 65535
  %698 = icmp eq i32 %697, 23
  %699 = zext i1 %698 to i8
  store i8 %699, ptr %291, align 8, !tbaa !202
  %700 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 11
  store ptr %372, ptr %700, align 8, !tbaa !293
  %701 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 12
  store ptr %371, ptr %701, align 8, !tbaa !286
  %702 = getelementptr inbounds %struct.store_info, ptr %291, i64 0, i32 13
  store ptr %668, ptr %702, align 8, !tbaa !298
  %703 = zext i1 %698 to i32
  br label %704

704:                                              ; preds = %142, %117, %130, %105, %104, %20, %21, %2, %689, %55
  %705 = phi i32 [ 0, %55 ], [ %703, %689 ], [ 0, %2 ], [ 0, %21 ], [ 0, %20 ], [ 0, %104 ], [ 0, %105 ], [ 0, %130 ], [ 0, %117 ], [ 0, %142 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %705
}

declare i32 @volatile_refs_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @check_mem_read_rtx(ptr noundef %0, ptr nocapture noundef readonly %1) #12 !prof !491 !PGOFuncName !492 {
  %3 = alloca %struct.group_info, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %681, label %6, !prof !493

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  br i1 %9, label %10, label %681, !prof !494

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 8, !tbaa !184
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !495

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !496
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %10 ]
  %20 = icmp ne i32 %19, -1
  %21 = and i32 %7, 134217728
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %22, %20
  br i1 %23, label %50, label %24, !prof !497

24:                                               ; preds = %18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 40, i64 1, ptr nonnull %25)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load ptr, ptr %1, align 8, !tbaa !184
  %31 = getelementptr inbounds %struct.insn_info, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %29, %44
  %35 = phi ptr [ %46, %44 ], [ %32, %29 ]
  %36 = phi ptr [ %45, %44 ], [ %31, %29 ]
  %37 = getelementptr inbounds %struct.read_info, ptr %35, i64 0, i32 5
  %38 = getelementptr inbounds %struct.read_info, ptr %35, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !191
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load ptr, ptr %37, align 8, !tbaa !193
  %43 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  tail call void @pool_free(ptr noundef %43, ptr noundef nonnull %35) #18
  store ptr %42, ptr %36, align 8, !tbaa !135
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi ptr [ %36, %41 ], [ %37, %34 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %34, !llvm.loop !194

48:                                               ; preds = %44, %29
  %49 = getelementptr inbounds %struct.insn_info, ptr %30, i64 0, i32 1
  store i8 1, ptr %49, align 1, !tbaa !195
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  store i8 1, ptr %11, align 8, !tbaa !189
  br label %681

50:                                               ; preds = %18
  %51 = and i32 %7, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %681, !prof !498

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !499
  %55 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br i1 %14, label %59, label %56, !prof !511

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.mem_attrs, ptr %13, i64 0, i32 5
  %58 = load i8, ptr %57, align 8, !tbaa !512
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i8 [ %58, %56 ], [ 0, %53 ]
  %61 = tail call i32 %54(i8 noundef zeroext %60) #18, !prof !513
  %62 = load ptr, ptr %55, align 8, !tbaa !146
  %63 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %64 = icmp eq ptr %63, null
  br i1 %64, label %111, label %65, !prof !514

65:                                               ; preds = %59
  %66 = load ptr, ptr %12, align 8, !tbaa !146
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.mem_attrs, ptr %66, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !496
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ %70, %68 ], [ 0, %65 ]
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %73, ptr noundef nonnull @.str.33, i32 noundef %72)
  br label %77

77:                                               ; preds = %75, %71
  %78 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %79 = tail call i32 @bitmap_bit_p(ptr noundef %78, i32 noundef %72) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %77
  %82 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %72)
  %83 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !157
  %85 = load i32, ptr %4, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %103, label %89

89:                                               ; preds = %81
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !135
  %96 = zext nneg i32 %87 to i64
  %97 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !135
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %90, ptr noundef nonnull @.str.34, i32 noundef %72, ptr noundef %95, ptr noundef %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %101, i32 noundef %72) #18
  br label %107

103:                                              ; preds = %81
  %104 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %105 = getelementptr inbounds %struct.group_info, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !477
  br label %107

107:                                              ; preds = %103, %100, %77
  %108 = phi i32 [ 0, %77 ], [ %72, %103 ], [ 0, %100 ]
  %109 = phi i32 [ undef, %77 ], [ %106, %103 ], [ undef, %100 ]
  %110 = phi i8 [ undef, %77 ], [ 1, %103 ], [ 0, %100 ]
  br i1 %80, label %111, label %285

111:                                              ; preds = %107, %59
  %112 = tail call ptr @cselib_lookup(ptr noundef %62, i32 noundef %61, i32 noundef 1) #18
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115, !prof !514

115:                                              ; preds = %111
  %116 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 7, i64 1, ptr nonnull %113)
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_inline_rtx(ptr noundef %117, ptr noundef %62, i32 noundef 0) #18
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %119 = tail call i32 @fputc(i32 10, ptr %118)
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120, %266
  %122 = phi i64 [ %171, %266 ], [ 0, %120 ]
  %123 = phi ptr [ %172, %266 ], [ null, %120 ]
  %124 = phi i32 [ %267, %266 ], [ 0, %120 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126, !prof !515

126:                                              ; preds = %121
  %127 = load ptr, ptr @scratch, align 8, !tbaa !135
  %128 = tail call ptr @cselib_expand_value_rtx(ptr noundef %62, ptr noundef %127, i32 noundef 5) #18
  %129 = icmp eq ptr %128, null
  br i1 %129, label %268, label %130, !prof !516

130:                                              ; preds = %126, %121
  %131 = phi ptr [ %128, %126 ], [ %62, %121 ]
  %132 = tail call ptr @canon_rtx(ptr noundef %131) #18
  %133 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135, !prof !517

135:                                              ; preds = %130
  br i1 %125, label %141, label %136

136:                                              ; preds = %135
  %137 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 33, i64 1, ptr nonnull %133)
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_inline_rtx(ptr noundef %138, ptr noundef %131, i32 noundef 0) #18
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %140 = tail call i32 @fputc(i32 10, ptr %139)
  br label %141

141:                                              ; preds = %136, %135
  %142 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %143 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr %142)
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_inline_rtx(ptr noundef %144, ptr noundef %132, i32 noundef 0) #18
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %146 = tail call i32 @fputc(i32 10, ptr %145)
  br label %147

147:                                              ; preds = %141, %130
  %148 = load i32, ptr %132, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 35
  br i1 %150, label %151, label %154, !prof !518

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !146
  br label %154

154:                                              ; preds = %151, %147
  %155 = phi ptr [ %153, %151 ], [ %132, %147 ]
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 49
  br i1 %158, label %159, label %170, !prof !519

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !146
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %165, label %170, !prof !520

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %167 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1
  %168 = load i64, ptr %167, align 8, !tbaa !146
  %169 = load ptr, ptr %166, align 8, !tbaa !146
  br label %170

170:                                              ; preds = %165, %159, %154
  %171 = phi i64 [ %168, %165 ], [ 0, %159 ], [ 0, %154 ]
  %172 = phi ptr [ %169, %165 ], [ %155, %159 ], [ %155, %154 ]
  %173 = load ptr, ptr %12, align 8, !tbaa !146
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175, !prof !521

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.mem_attrs, ptr %173, i64 0, i32 5
  %177 = load i8, ptr %176, align 8, !tbaa !512
  %178 = zext i8 %177 to i32
  br label %179

179:                                              ; preds = %175, %170
  %180 = phi i32 [ %178, %175 ], [ 0, %170 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %266, !prof !517

182:                                              ; preds = %179
  %183 = load i32, ptr %172, align 8
  %184 = trunc i32 %183 to i16
  switch i16 %184, label %201 [
    i16 35, label %202
    i16 30, label %202
    i16 32, label %202
    i16 33, label %202
    i16 45, label %202
    i16 44, label %202
    i16 37, label %185
  ], !prof !522

185:                                              ; preds = %182
  %186 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !135
  %187 = icmp eq ptr %186, %172
  %188 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %189 = icmp eq ptr %188, %172
  %190 = select i1 %187, i1 true, i1 %189, !prof !523
  br i1 %190, label %202, label %191, !prof !524

191:                                              ; preds = %185
  %192 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !135
  %193 = icmp eq ptr %192, %172
  %194 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %195 = icmp ne i8 %194, 0
  %196 = select i1 %193, i1 %195, i1 false, !prof !525
  %197 = load ptr, ptr @pic_offset_table_rtx, align 8
  %198 = icmp eq ptr %197, %172
  %199 = select i1 %196, i1 true, i1 %198, !prof !525
  %200 = zext i1 %199 to i8
  br label %202

201:                                              ; preds = %182
  br label %202

202:                                              ; preds = %201, %191, %185, %182, %182, %182, %182, %182, %182
  %203 = phi i8 [ 0, %201 ], [ 1, %182 ], [ 1, %185 ], [ %200, %191 ], [ 1, %182 ], [ 1, %182 ], [ 1, %182 ], [ 1, %182 ], [ 1, %182 ]
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %266, label %205, !prof !526

205:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #18
  store ptr %172, ptr %3, align 8, !tbaa !471
  %206 = load ptr, ptr @rtx_group_table, align 8, !tbaa !135
  %207 = call ptr @htab_find_slot(ptr noundef %206, ptr noundef nonnull %3, i32 noundef 1) #18
  %208 = load ptr, ptr %207, align 8, !tbaa !135
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %254, !prof !476

210:                                              ; preds = %205
  %211 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !135
  %212 = call ptr @pool_alloc(ptr noundef %211) #18
  store ptr %212, ptr %207, align 8, !tbaa !135
  store ptr %172, ptr %212, align 8, !tbaa !471
  %213 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !150
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr @rtx_group_next_id, align 4, !tbaa !150
  %215 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 1
  store i32 %213, ptr %215, align 8, !tbaa !477
  %216 = call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef nonnull %172) #18
  %217 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 4
  store ptr %216, ptr %217, align 8, !tbaa !479
  %218 = call ptr @canon_rtx(ptr noundef nonnull %172) #18
  %219 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 5
  store ptr %218, ptr %219, align 8, !tbaa !480
  %220 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %221 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 6
  store ptr %220, ptr %221, align 8, !tbaa !344
  %222 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %223 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 7
  store ptr %222, ptr %223, align 8, !tbaa !242
  %224 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %225 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 8
  store ptr %224, ptr %225, align 8, !tbaa !343
  %226 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %227 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 9
  store ptr %226, ptr %227, align 8, !tbaa !243
  %228 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %229 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 10
  store ptr %228, ptr %229, align 8, !tbaa !352
  %230 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 2
  store i8 0, ptr %230, align 4, !tbaa !347
  %231 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !135
  %232 = icmp eq ptr %231, %172
  %233 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %234 = icmp eq ptr %233, %172
  %235 = select i1 %232, i1 true, i1 %234, !prof !341
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 3
  store i8 %236, ptr %237, align 1, !tbaa !206
  %238 = getelementptr inbounds %struct.group_info, ptr %212, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %238, i8 0, i64 24, i1 false)
  %239 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %240 = icmp eq ptr %239, null
  br i1 %240, label %246, label %241, !prof !481

241:                                              ; preds = %210
  %242 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %239, i64 0, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !478
  %244 = load i32, ptr %239, align 8, !tbaa !337
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %248, !prof !482

246:                                              ; preds = %241, %210
  %247 = call ptr @vec_heap_p_reserve(ptr noundef %239, i32 noundef 1) #18
  store ptr %247, ptr @rtx_group_vec, align 8, !tbaa !135
  br label %248

248:                                              ; preds = %246, %241
  %249 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %250 = load i32, ptr %249, align 8, !tbaa !337
  %251 = add i32 %250, 1
  store i32 %251, ptr %249, align 8, !tbaa !337
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %249, i64 0, i32 2, i64 %252
  store ptr %212, ptr %253, align 8, !tbaa !135
  br label %254

254:                                              ; preds = %248, %205
  %255 = phi ptr [ %212, %248 ], [ %208, %205 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #18
  %256 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %257 = icmp eq ptr %256, null
  br i1 %257, label %263, label %258, !prof !527

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.group_info, ptr %255, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !477
  %261 = trunc i64 %171 to i32
  %262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %256, ptr noundef nonnull @.str.38, i32 noundef %260, i32 noundef %261)
  br label %263

263:                                              ; preds = %258, %254
  %264 = getelementptr inbounds %struct.group_info, ptr %255, i64 0, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !477
  br label %285

266:                                              ; preds = %202, %179
  %267 = add nuw nsw i32 %124, 1
  br i1 %125, label %121, label %268, !prof !515, !llvm.loop !528

268:                                              ; preds = %266, %126
  %269 = phi i64 [ %171, %266 ], [ %122, %126 ]
  %270 = phi ptr [ %172, %266 ], [ %123, %126 ]
  %271 = tail call ptr @cselib_lookup(ptr noundef %270, i32 noundef %61, i32 noundef 1) #18
  %272 = icmp eq ptr %271, null
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %274 = icmp eq ptr %273, null
  br i1 %272, label %275, label %278, !prof !529

275:                                              ; preds = %268
  br i1 %274, label %285, label %276, !prof !530

276:                                              ; preds = %275
  %277 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 40, i64 1, ptr nonnull %273)
  br label %285

278:                                              ; preds = %268
  br i1 %274, label %285, label %279, !prof !531

279:                                              ; preds = %278
  %280 = getelementptr inbounds %struct.cselib_val_struct, ptr %271, i64 0, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !532
  %282 = load i32, ptr %271, align 8, !tbaa !534
  %283 = trunc i64 %269 to i32
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %273, ptr noundef nonnull @.str.40, i32 noundef %281, i32 noundef %282, i32 noundef %283)
  br label %285

285:                                              ; preds = %107, %263, %275, %276, %278, %279
  %286 = phi i64 [ %269, %275 ], [ %269, %276 ], [ %269, %278 ], [ %269, %279 ], [ %171, %263 ], [ 0, %107 ]
  %287 = phi i32 [ 0, %275 ], [ 0, %276 ], [ 0, %278 ], [ 0, %279 ], [ 0, %263 ], [ %108, %107 ]
  %288 = phi ptr [ %271, %275 ], [ %271, %276 ], [ %271, %278 ], [ %271, %279 ], [ null, %263 ], [ null, %107 ]
  %289 = phi i32 [ -1, %275 ], [ -1, %276 ], [ -1, %278 ], [ -1, %279 ], [ %265, %263 ], [ %109, %107 ]
  %290 = phi i8 [ 0, %275 ], [ 0, %276 ], [ 1, %278 ], [ 1, %279 ], [ 1, %263 ], [ %110, %107 ]
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %318, !prof !535

292:                                              ; preds = %285
  %293 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = call i64 @fwrite(ptr nonnull @.str.26, i64 42, i64 1, ptr nonnull %293)
  br label %297

297:                                              ; preds = %295, %292
  %298 = load ptr, ptr %1, align 8, !tbaa !184
  %299 = getelementptr inbounds %struct.insn_info, ptr %298, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !135
  %301 = icmp eq ptr %300, null
  br i1 %301, label %316, label %302

302:                                              ; preds = %297, %312
  %303 = phi ptr [ %314, %312 ], [ %300, %297 ]
  %304 = phi ptr [ %313, %312 ], [ %299, %297 ]
  %305 = getelementptr inbounds %struct.read_info, ptr %303, i64 0, i32 5
  %306 = getelementptr inbounds %struct.read_info, ptr %303, i64 0, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !191
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %302
  %310 = load ptr, ptr %305, align 8, !tbaa !193
  %311 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  call void @pool_free(ptr noundef %311, ptr noundef nonnull %303) #18
  store ptr %310, ptr %304, align 8, !tbaa !135
  br label %312

312:                                              ; preds = %309, %302
  %313 = phi ptr [ %304, %309 ], [ %305, %302 ]
  %314 = load ptr, ptr %313, align 8, !tbaa !135
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %302, !llvm.loop !194

316:                                              ; preds = %312, %297
  %317 = getelementptr inbounds %struct.insn_info, ptr %298, i64 0, i32 1
  store i8 1, ptr %317, align 1, !tbaa !195
  store ptr null, ptr @active_local_stores, align 8, !tbaa !135
  br label %681

318:                                              ; preds = %285
  %319 = load i32, ptr %4, align 8
  %320 = lshr i32 %319, 16
  %321 = and i32 %320, 255
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %328, label %323, !prof !535

323:                                              ; preds = %318
  %324 = zext nneg i32 %321 to i64
  %325 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !146
  %327 = zext i8 %326 to i64
  br label %328

328:                                              ; preds = %318, %323
  %329 = phi i64 [ %327, %323 ], [ -1, %318 ]
  %330 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  %331 = call ptr @pool_alloc(ptr noundef %330) #18
  store i32 %289, ptr %331, align 8, !tbaa !536
  %332 = getelementptr inbounds %struct.read_info, ptr %331, i64 0, i32 4
  store ptr %4, ptr %332, align 8, !tbaa !537
  %333 = getelementptr inbounds %struct.read_info, ptr %331, i64 0, i32 1
  store i32 %287, ptr %333, align 4, !tbaa !191
  %334 = trunc i64 %286 to i32
  %335 = getelementptr inbounds %struct.read_info, ptr %331, i64 0, i32 2
  store i32 %334, ptr %335, align 8, !tbaa !538
  %336 = add nsw i64 %329, %286
  %337 = trunc i64 %336 to i32
  %338 = getelementptr inbounds %struct.read_info, ptr %331, i64 0, i32 3
  store i32 %337, ptr %338, align 4, !tbaa !539
  %339 = getelementptr inbounds %struct.insn_info, ptr %11, i64 0, i32 7
  %340 = load ptr, ptr %339, align 8, !tbaa !405
  %341 = getelementptr inbounds %struct.read_info, ptr %331, i64 0, i32 5
  store ptr %340, ptr %341, align 8, !tbaa !193
  store ptr %331, ptr %339, align 8, !tbaa !405
  %342 = icmp eq i32 %287, 0
  br i1 %342, label %343, label %359, !prof !540

343:                                              ; preds = %328
  %344 = icmp slt i32 %289, 0
  br i1 %344, label %345, label %347, !prof !541

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.cselib_val_struct, ptr %288, i64 0, i32 2
  br label %353

347:                                              ; preds = %343
  %348 = load ptr, ptr @rtx_group_vec, align 8
  %349 = zext nneg i32 %289 to i64
  %350 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %348, i64 0, i32 2, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !135
  %352 = getelementptr inbounds %struct.group_info, ptr %351, i64 0, i32 5
  br label %353

353:                                              ; preds = %347, %345
  %354 = phi ptr [ %346, %345 ], [ %352, %347 ]
  %355 = load ptr, ptr %354, align 8, !tbaa !135
  %356 = icmp eq i64 %286, 0
  br i1 %356, label %359, label %357, !prof !542

357:                                              ; preds = %353
  %358 = call ptr @plus_constant(ptr noundef %355, i64 noundef %286) #18
  br label %359

359:                                              ; preds = %328, %353, %357
  %360 = phi ptr [ %358, %357 ], [ %355, %353 ], [ null, %328 ]
  br i1 %342, label %406, label %361, !prof !540

361:                                              ; preds = %359
  %362 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %363 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %363, ptr noundef nonnull @.str.27, i32 noundef %287)
  br label %367

367:                                              ; preds = %365, %361
  %368 = icmp eq ptr %362, null
  br i1 %368, label %681, label %369

369:                                              ; preds = %367, %401
  %370 = phi ptr [ %402, %401 ], [ null, %367 ]
  %371 = phi ptr [ %404, %401 ], [ %362, %367 ]
  %372 = getelementptr inbounds %struct.insn_info, ptr %371, i64 0, i32 6
  br label %373

373:                                              ; preds = %373, %369
  %374 = phi ptr [ %372, %369 ], [ %378, %373 ]
  %375 = load ptr, ptr %374, align 8, !tbaa !135
  %376 = load i8, ptr %375, align 8, !tbaa !202
  %377 = icmp eq i8 %376, 0
  %378 = getelementptr inbounds %struct.store_info, ptr %375, i64 0, i32 10
  br i1 %377, label %373, label %379, !llvm.loop !543

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.store_info, ptr %375, i64 0, i32 6
  %381 = load i32, ptr %380, align 8, !tbaa !276
  %382 = icmp eq i32 %381, %287
  br i1 %382, label %383, label %401

383:                                              ; preds = %379
  %384 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %385 = icmp eq ptr %384, null
  br i1 %385, label %395, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.insn_info, ptr %371, i64 0, i32 5
  %388 = load ptr, ptr %387, align 8, !tbaa !187
  %389 = getelementptr inbounds %struct.rtx_def, ptr %388, i64 0, i32 1
  %390 = load i32, ptr %389, align 8, !tbaa !146
  %391 = load ptr, ptr %372, align 8, !tbaa !208
  %392 = icmp eq ptr %391, null
  %393 = select i1 %392, ptr @.str.49, ptr @.str.48
  %394 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %384, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20, i32 noundef %390, ptr noundef nonnull %393)
  br label %395

395:                                              ; preds = %386, %383
  %396 = icmp eq ptr %370, null
  %397 = getelementptr inbounds %struct.insn_info, ptr %371, i64 0, i32 9
  %398 = load ptr, ptr %397, align 8, !tbaa !209
  %399 = getelementptr inbounds %struct.insn_info, ptr %370, i64 0, i32 9
  %400 = select i1 %396, ptr @active_local_stores, ptr %399
  store ptr %398, ptr %400, align 8, !tbaa !135
  br label %401

401:                                              ; preds = %395, %379
  %402 = phi ptr [ %371, %379 ], [ %370, %395 ]
  %403 = getelementptr inbounds %struct.insn_info, ptr %371, i64 0, i32 9
  %404 = load ptr, ptr %403, align 8, !tbaa !209
  %405 = icmp eq ptr %404, null
  br i1 %405, label %681, label %369, !llvm.loop !544

406:                                              ; preds = %359
  %407 = icmp sgt i32 %289, -1
  %408 = load ptr, ptr @active_local_stores, align 8, !tbaa !135
  %409 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %410 = icmp eq ptr %409, null
  br i1 %407, label %411, label %545, !prof !545

411:                                              ; preds = %406
  br i1 %410, label %418, label %412, !prof !546

412:                                              ; preds = %411
  %413 = icmp eq i64 %329, -1
  br i1 %413, label %414, label %416

414:                                              ; preds = %412
  %415 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %409, ptr noundef nonnull @.str.28, i32 noundef %289)
  br label %418

416:                                              ; preds = %412
  %417 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %409, ptr noundef nonnull @.str.29, i32 noundef %289, i32 noundef %334, i32 noundef %337)
  br label %418

418:                                              ; preds = %414, %416, %411
  br label %419

419:                                              ; preds = %541, %418
  %420 = phi ptr [ %408, %418 ], [ %543, %541 ]
  %421 = phi ptr [ null, %418 ], [ %544, %541 ]
  %422 = icmp eq ptr %420, null
  br i1 %422, label %681, label %423, !prof !547

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.insn_info, ptr %420, i64 0, i32 6
  br label %425

425:                                              ; preds = %425, %423
  %426 = phi ptr [ %424, %423 ], [ %430, %425 ]
  %427 = load ptr, ptr %426, align 8, !tbaa !135
  %428 = load i8, ptr %427, align 8, !tbaa !202
  %429 = icmp eq i8 %428, 0
  %430 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 10
  br i1 %429, label %425, label %431, !prof !548, !llvm.loop !549

431:                                              ; preds = %425
  %432 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 2
  %433 = load i32, ptr %432, align 4, !tbaa !205
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %445, !prof !550

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 4
  %437 = load ptr, ptr %436, align 8, !tbaa !278
  %438 = load i32, ptr %437, align 8
  %439 = lshr i32 %438, 16
  %440 = and i32 %439, 255
  %441 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 5
  %442 = load ptr, ptr %441, align 8, !tbaa !295
  %443 = call i32 @canon_true_dependence(ptr noundef nonnull %437, i32 noundef %440, ptr noundef %442, ptr noundef nonnull %4, ptr noundef %360, ptr noundef nonnull @rtx_varies_p) #18
  %444 = trunc i32 %443 to i8
  br label %516

445:                                              ; preds = %431
  %446 = icmp eq i32 %289, %433
  br i1 %446, label %447, label %516, !prof !551

447:                                              ; preds = %445
  %448 = icmp eq i64 %329, -1
  br i1 %448, label %449, label %459, !prof !552

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 4
  %451 = load ptr, ptr %450, align 8, !tbaa !278
  %452 = load i32, ptr %451, align 8
  %453 = lshr i32 %452, 16
  %454 = and i32 %453, 255
  %455 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 5
  %456 = load ptr, ptr %455, align 8, !tbaa !295
  %457 = call i32 @canon_true_dependence(ptr noundef nonnull %451, i32 noundef %454, ptr noundef %456, ptr noundef nonnull %4, ptr noundef %360, ptr noundef nonnull @rtx_varies_p) #18
  %458 = trunc i32 %457 to i8
  br label %516

459:                                              ; preds = %447
  %460 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 11
  %461 = load ptr, ptr %460, align 8, !tbaa !293
  %462 = icmp eq ptr %461, null
  br i1 %462, label %507, label %463, !prof !553

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 7
  %465 = load i64, ptr %464, align 8, !tbaa !281
  %466 = icmp slt i64 %286, %465
  br i1 %466, label %507, label %467

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 8
  %469 = load i64, ptr %468, align 8, !tbaa !280
  %470 = icmp sgt i64 %336, %469
  br i1 %470, label %507, label %471

471:                                              ; preds = %467
  %472 = sub nsw i64 %286, %465
  %473 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 1
  %474 = load i8, ptr %473, align 1, !tbaa !279
  %475 = icmp eq i8 %474, 0
  %476 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 9
  br i1 %475, label %489, label %477

477:                                              ; preds = %471
  %478 = trunc i64 %329 to i32
  %479 = trunc i64 %472 to i32
  %480 = add nsw i32 %479, %478
  br label %481

481:                                              ; preds = %484, %477
  %482 = phi i32 [ %479, %477 ], [ %486, %484 ]
  %483 = icmp slt i32 %482, %480
  br i1 %483, label %484, label %499

484:                                              ; preds = %481
  %485 = load ptr, ptr %476, align 8, !tbaa !146
  %486 = add nsw i32 %482, 1
  %487 = call i32 @bitmap_bit_p(ptr noundef %485, i32 noundef %482) #18
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %481, label %499, !llvm.loop !289

489:                                              ; preds = %471
  %490 = sub nsw i64 64, %329
  %491 = and i64 %490, 4294967295
  %492 = lshr i64 -1, %491
  %493 = and i64 %472, 4294967295
  %494 = shl i64 %492, %493
  %495 = load i64, ptr %476, align 8, !tbaa !146
  %496 = and i64 %495, %494
  %497 = icmp eq i64 %496, %494
  %498 = zext i1 %497 to i8
  br label %499

499:                                              ; preds = %484, %481, %489
  %500 = phi i8 [ %498, %489 ], [ 1, %481 ], [ 0, %484 ]
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %507, label %502

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.bb_info, ptr %1, i64 0, i32 6
  %504 = load ptr, ptr %503, align 8, !tbaa !171
  %505 = call fastcc zeroext i8 @replace_read(ptr noundef nonnull %427, ptr noundef nonnull %420, ptr noundef nonnull %331, ptr noundef %11, ptr noundef nonnull %0, ptr noundef %504), !range !154
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %507, label %541

507:                                              ; preds = %502, %499, %467, %463, %459
  %508 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 8
  %509 = load i64, ptr %508, align 8, !tbaa !280
  %510 = icmp slt i64 %286, %509
  br i1 %510, label %511, label %516, !prof !552

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.store_info, ptr %427, i64 0, i32 7
  %513 = load i64, ptr %512, align 8, !tbaa !281
  %514 = icmp sgt i64 %336, %513
  %515 = zext i1 %514 to i8
  br label %516

516:                                              ; preds = %511, %445, %507, %449, %435
  %517 = phi i8 [ %444, %435 ], [ %458, %449 ], [ 0, %507 ], [ 0, %445 ], [ %515, %511 ]
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %537, label %519, !prof !554

519:                                              ; preds = %516
  %520 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %521 = icmp eq ptr %520, null
  br i1 %521, label %531, label %522

522:                                              ; preds = %519
  %523 = getelementptr inbounds %struct.insn_info, ptr %420, i64 0, i32 5
  %524 = load ptr, ptr %523, align 8, !tbaa !187
  %525 = getelementptr inbounds %struct.rtx_def, ptr %524, i64 0, i32 1
  %526 = load i32, ptr %525, align 8, !tbaa !146
  %527 = load ptr, ptr %424, align 8, !tbaa !208
  %528 = icmp eq ptr %527, null
  %529 = select i1 %528, ptr @.str.49, ptr @.str.48
  %530 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %520, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20, i32 noundef %526, ptr noundef nonnull %529)
  br label %531

531:                                              ; preds = %522, %519
  %532 = icmp eq ptr %421, null
  %533 = getelementptr inbounds %struct.insn_info, ptr %420, i64 0, i32 9
  %534 = load ptr, ptr %533, align 8, !tbaa !209
  %535 = getelementptr inbounds %struct.insn_info, ptr %421, i64 0, i32 9
  %536 = select i1 %532, ptr @active_local_stores, ptr %535
  store ptr %534, ptr %536, align 8, !tbaa !135
  br label %537

537:                                              ; preds = %531, %516
  %538 = phi ptr [ %420, %516 ], [ %421, %531 ]
  %539 = getelementptr inbounds %struct.insn_info, ptr %420, i64 0, i32 9
  %540 = load ptr, ptr %539, align 8, !tbaa !209
  br label %541

541:                                              ; preds = %502, %537
  %542 = phi i1 [ true, %537 ], [ false, %502 ]
  %543 = phi ptr [ %540, %537 ], [ %420, %502 ]
  %544 = phi ptr [ %538, %537 ], [ %421, %502 ]
  br i1 %542, label %419, label %681, !prof !554, !llvm.loop !555

545:                                              ; preds = %406
  br i1 %410, label %551, label %546, !prof !556

546:                                              ; preds = %545
  %547 = call i64 @fwrite(ptr nonnull @.str.30, i64 28, i64 1, ptr nonnull %409)
  %548 = load ptr, ptr @dump_file, align 8, !tbaa !135
  call void @print_inline_rtx(ptr noundef %548, ptr noundef nonnull %4, i32 noundef 0) #18
  %549 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %550 = call i32 @fputc(i32 10, ptr %549)
  br label %551

551:                                              ; preds = %546, %545
  br label %552

552:                                              ; preds = %677, %551
  %553 = phi ptr [ %408, %551 ], [ %679, %677 ]
  %554 = phi ptr [ null, %551 ], [ %680, %677 ]
  %555 = icmp eq ptr %553, null
  br i1 %555, label %681, label %556, !prof !557

556:                                              ; preds = %552
  %557 = getelementptr inbounds %struct.insn_info, ptr %553, i64 0, i32 6
  %558 = load ptr, ptr %557, align 8, !tbaa !208
  %559 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %560 = icmp eq ptr %559, null
  br i1 %560, label %567, label %561, !prof !558

561:                                              ; preds = %556
  %562 = getelementptr inbounds %struct.insn_info, ptr %553, i64 0, i32 5
  %563 = load ptr, ptr %562, align 8, !tbaa !187
  %564 = getelementptr inbounds %struct.rtx_def, ptr %563, i64 0, i32 1
  %565 = load i32, ptr %564, align 8, !tbaa !146
  %566 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %559, ptr noundef nonnull @.str.32, i32 noundef %565)
  br label %567

567:                                              ; preds = %561, %556
  %568 = load i8, ptr %558, align 8, !tbaa !202
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %576, !prof !324

570:                                              ; preds = %567, %570
  %571 = phi ptr [ %573, %570 ], [ %558, %567 ]
  %572 = getelementptr inbounds %struct.store_info, ptr %571, i64 0, i32 10
  %573 = load ptr, ptr %572, align 8, !tbaa !297
  %574 = load i8, ptr %573, align 8, !tbaa !202
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %570, label %576, !prof !324, !llvm.loop !559

576:                                              ; preds = %570, %567
  %577 = phi ptr [ %558, %567 ], [ %573, %570 ]
  %578 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 11
  %579 = load ptr, ptr %578, align 8, !tbaa !293
  %580 = icmp eq ptr %579, null
  br i1 %580, label %635, label %581, !prof !560

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 2
  %583 = load i32, ptr %582, align 4, !tbaa !205
  %584 = icmp eq i32 %583, -1
  br i1 %584, label %585, label %635, !prof !561

585:                                              ; preds = %581
  %586 = icmp ne i64 %329, -1
  %587 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !284
  %589 = icmp eq ptr %588, %288
  %590 = select i1 %589, i1 %586, i1 false, !prof !562
  br i1 %590, label %591, label %635, !prof !562

591:                                              ; preds = %585
  %592 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 7
  %593 = load i64, ptr %592, align 8, !tbaa !281
  %594 = icmp slt i64 %286, %593
  br i1 %594, label %635, label %595

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 8
  %597 = load i64, ptr %596, align 8, !tbaa !280
  %598 = icmp sgt i64 %336, %597
  br i1 %598, label %635, label %599

599:                                              ; preds = %595
  %600 = sub nsw i64 %286, %593
  %601 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 1
  %602 = load i8, ptr %601, align 1, !tbaa !279
  %603 = icmp eq i8 %602, 0
  %604 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 9
  br i1 %603, label %617, label %605

605:                                              ; preds = %599
  %606 = trunc i64 %329 to i32
  %607 = trunc i64 %600 to i32
  %608 = add nsw i32 %607, %606
  br label %609

609:                                              ; preds = %612, %605
  %610 = phi i32 [ %607, %605 ], [ %614, %612 ]
  %611 = icmp slt i32 %610, %608
  br i1 %611, label %612, label %627

612:                                              ; preds = %609
  %613 = load ptr, ptr %604, align 8, !tbaa !146
  %614 = add nsw i32 %610, 1
  %615 = call i32 @bitmap_bit_p(ptr noundef %613, i32 noundef %610) #18
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %609, label %627, !llvm.loop !289

617:                                              ; preds = %599
  %618 = sub nsw i64 64, %329
  %619 = and i64 %618, 4294967295
  %620 = lshr i64 -1, %619
  %621 = and i64 %600, 4294967295
  %622 = shl i64 %620, %621
  %623 = load i64, ptr %604, align 8, !tbaa !146
  %624 = and i64 %623, %622
  %625 = icmp eq i64 %624, %622
  %626 = zext i1 %625 to i8
  br label %627

627:                                              ; preds = %612, %609, %617
  %628 = phi i8 [ %626, %617 ], [ 1, %609 ], [ 0, %612 ]
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %635, label %630

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.bb_info, ptr %1, i64 0, i32 6
  %632 = load ptr, ptr %631, align 8, !tbaa !171
  %633 = call fastcc zeroext i8 @replace_read(ptr noundef nonnull %577, ptr noundef nonnull %553, ptr noundef nonnull %331, ptr noundef %11, ptr noundef nonnull %0, ptr noundef %632), !range !154
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %635, label %677

635:                                              ; preds = %630, %627, %595, %591, %585, %581, %576
  %636 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 6
  %637 = load i32, ptr %636, align 8, !tbaa !276
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %649, !prof !558

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 4
  %641 = load ptr, ptr %640, align 8, !tbaa !278
  %642 = load i32, ptr %641, align 8
  %643 = lshr i32 %642, 16
  %644 = and i32 %643, 255
  %645 = getelementptr inbounds %struct.store_info, ptr %577, i64 0, i32 5
  %646 = load ptr, ptr %645, align 8, !tbaa !295
  %647 = call i32 @canon_true_dependence(ptr noundef nonnull %641, i32 noundef %644, ptr noundef %646, ptr noundef nonnull %4, ptr noundef %360, ptr noundef nonnull @rtx_varies_p) #18
  %648 = trunc i32 %647 to i8
  br label %649

649:                                              ; preds = %639, %635
  %650 = phi i8 [ 0, %635 ], [ %648, %639 ]
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %673, label %652, !prof !563

652:                                              ; preds = %649
  %653 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %654 = icmp eq ptr %653, null
  br i1 %654, label %664, label %655, !prof !558

655:                                              ; preds = %652
  %656 = getelementptr inbounds %struct.insn_info, ptr %553, i64 0, i32 5
  %657 = load ptr, ptr %656, align 8, !tbaa !187
  %658 = getelementptr inbounds %struct.rtx_def, ptr %657, i64 0, i32 1
  %659 = load i32, ptr %658, align 8, !tbaa !146
  %660 = load ptr, ptr %557, align 8, !tbaa !208
  %661 = icmp eq ptr %660, null
  %662 = select i1 %661, ptr @.str.49, ptr @.str.48
  %663 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %653, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20, i32 noundef %659, ptr noundef nonnull %662)
  br label %664

664:                                              ; preds = %655, %652
  %665 = icmp eq ptr %554, null
  %666 = getelementptr inbounds %struct.insn_info, ptr %553, i64 0, i32 9
  %667 = load ptr, ptr %666, align 8, !tbaa !209
  br i1 %665, label %670, label %668, !prof !558

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.insn_info, ptr %554, i64 0, i32 9
  br label %670

670:                                              ; preds = %664, %668
  %671 = phi ptr [ %669, %668 ], [ @active_local_stores, %664 ]
  %672 = phi ptr [ %554, %668 ], [ null, %664 ]
  store ptr %667, ptr %671, align 8, !tbaa !135
  br label %673

673:                                              ; preds = %670, %649
  %674 = phi ptr [ %553, %649 ], [ %672, %670 ]
  %675 = getelementptr inbounds %struct.insn_info, ptr %553, i64 0, i32 9
  %676 = load ptr, ptr %675, align 8, !tbaa !209
  br label %677

677:                                              ; preds = %630, %673
  %678 = phi i1 [ true, %673 ], [ false, %630 ]
  %679 = phi ptr [ %676, %673 ], [ %553, %630 ]
  %680 = phi ptr [ %674, %673 ], [ %554, %630 ]
  br i1 %678, label %552, label %681, !prof !558, !llvm.loop !564

681:                                              ; preds = %401, %677, %552, %541, %419, %367, %50, %2, %6, %316, %48
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @canon_address(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #12 !prof !565 !PGOFuncName !566 {
  %6 = alloca %struct.group_info, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !499
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !511

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !512
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi i8 [ %14, %12 ], [ 0, %5 ]
  %17 = tail call i32 %7(i8 noundef zeroext %16) #18, !prof !567
  %18 = load ptr, ptr %8, align 8, !tbaa !146
  %19 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %20 = icmp eq ptr %19, null
  br i1 %20, label %65, label %21, !prof !514

21:                                               ; preds = %15
  %22 = load ptr, ptr %9, align 8, !tbaa !146
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !496
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi i32 [ %26, %24 ], [ 0, %21 ]
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.33, i32 noundef %28)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !135
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %34, i32 noundef %28) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %28)
  %39 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !157
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = zext i32 %40 to i64
  %50 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !135
  %52 = zext nneg i32 %43 to i64
  %53 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !135
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.34, i32 noundef %28, ptr noundef %51, ptr noundef %54)
  br label %56

56:                                               ; preds = %48, %45
  %57 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !135
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %57, i32 noundef %28) #18
  br label %63

59:                                               ; preds = %37
  store i32 %28, ptr %1, align 4, !tbaa !150
  %60 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %61 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !477
  store i32 %62, ptr %2, align 4, !tbaa !150
  br label %63

63:                                               ; preds = %33, %56, %59
  %64 = phi i8 [ 0, %56 ], [ 1, %59 ], [ undef, %33 ]
  br i1 %36, label %65, label %239

65:                                               ; preds = %63, %15
  store i32 0, ptr %1, align 4, !tbaa !150
  %66 = tail call ptr @cselib_lookup(ptr noundef %18, i32 noundef %17, i32 noundef 1) #18
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69, !prof !514

69:                                               ; preds = %65
  %70 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 7, i64 1, ptr nonnull %67)
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_inline_rtx(ptr noundef %71, ptr noundef %18, i32 noundef 0) #18
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %73 = tail call i32 @fputc(i32 10, ptr %72)
  br label %74

74:                                               ; preds = %69, %65
  br label %75

75:                                               ; preds = %74, %219
  %76 = phi ptr [ %124, %219 ], [ null, %74 ]
  %77 = phi i32 [ %220, %219 ], [ 0, %74 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !515

79:                                               ; preds = %75
  %80 = load ptr, ptr @scratch, align 8, !tbaa !135
  %81 = tail call ptr @cselib_expand_value_rtx(ptr noundef %18, ptr noundef %80, i32 noundef 5) #18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %222, label %83, !prof !516

83:                                               ; preds = %75, %79
  %84 = phi ptr [ %81, %79 ], [ %18, %75 ]
  %85 = tail call ptr @canon_rtx(ptr noundef %84) #18
  store i64 0, ptr %3, align 8, !tbaa !226
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %87 = icmp eq ptr %86, null
  br i1 %87, label %100, label %88, !prof !517

88:                                               ; preds = %83
  br i1 %78, label %94, label %89

89:                                               ; preds = %88
  %90 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 33, i64 1, ptr nonnull %86)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_inline_rtx(ptr noundef %91, ptr noundef %84, i32 noundef 0) #18
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %93 = tail call i32 @fputc(i32 10, ptr %92)
  br label %94

94:                                               ; preds = %89, %88
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %96 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr %95)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_inline_rtx(ptr noundef %97, ptr noundef %85, i32 noundef 0) #18
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %99 = tail call i32 @fputc(i32 10, ptr %98)
  br label %100

100:                                              ; preds = %94, %83
  %101 = load i32, ptr %85, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 35
  br i1 %103, label %104, label %107, !prof !518

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !146
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi ptr [ %106, %104 ], [ %85, %100 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 49
  br i1 %111, label %112, label %123, !prof !519

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !146
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 30
  br i1 %117, label %118, label %123, !prof !520

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %120 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !146
  store i64 %121, ptr %3, align 8, !tbaa !226
  %122 = load ptr, ptr %119, align 8, !tbaa !146
  br label %123

123:                                              ; preds = %118, %112, %107
  %124 = phi ptr [ %122, %118 ], [ %108, %112 ], [ %108, %107 ]
  %125 = load ptr, ptr %9, align 8, !tbaa !146
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127, !prof !521

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.mem_attrs, ptr %125, i64 0, i32 5
  %129 = load i8, ptr %128, align 8, !tbaa !512
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %123, %127
  %132 = phi i32 [ %130, %127 ], [ 0, %123 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %219, !prof !517

134:                                              ; preds = %131
  %135 = load i32, ptr %124, align 8
  %136 = trunc i32 %135 to i16
  switch i16 %136, label %153 [
    i16 35, label %154
    i16 30, label %154
    i16 32, label %154
    i16 33, label %154
    i16 45, label %154
    i16 44, label %154
    i16 37, label %137
  ], !prof !522

137:                                              ; preds = %134
  %138 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !135
  %139 = icmp eq ptr %138, %124
  %140 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %141 = icmp eq ptr %140, %124
  %142 = select i1 %139, i1 true, i1 %141, !prof !523
  br i1 %142, label %154, label %143, !prof !524

143:                                              ; preds = %137
  %144 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !135
  %145 = icmp eq ptr %144, %124
  %146 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %147 = icmp ne i8 %146, 0
  %148 = select i1 %145, i1 %147, i1 false, !prof !525
  %149 = load ptr, ptr @pic_offset_table_rtx, align 8
  %150 = icmp eq ptr %149, %124
  %151 = select i1 %148, i1 true, i1 %150, !prof !525
  %152 = zext i1 %151 to i8
  br label %154

153:                                              ; preds = %134
  br label %154

154:                                              ; preds = %134, %134, %134, %134, %134, %134, %137, %143, %153
  %155 = phi i8 [ 0, %153 ], [ 1, %134 ], [ 1, %137 ], [ %152, %143 ], [ 1, %134 ], [ 1, %134 ], [ 1, %134 ], [ 1, %134 ], [ 1, %134 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %219, label %157, !prof !526

157:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #18
  store ptr %124, ptr %6, align 8, !tbaa !471
  %158 = load ptr, ptr @rtx_group_table, align 8, !tbaa !135
  %159 = call ptr @htab_find_slot(ptr noundef %158, ptr noundef nonnull %6, i32 noundef 1) #18
  %160 = load ptr, ptr %159, align 8, !tbaa !135
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %206, !prof !476

162:                                              ; preds = %157
  %163 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !135
  %164 = call ptr @pool_alloc(ptr noundef %163) #18
  store ptr %164, ptr %159, align 8, !tbaa !135
  store ptr %124, ptr %164, align 8, !tbaa !471
  %165 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !150
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr @rtx_group_next_id, align 4, !tbaa !150
  %167 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 1
  store i32 %165, ptr %167, align 8, !tbaa !477
  %168 = call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef nonnull %124) #18
  %169 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 4
  store ptr %168, ptr %169, align 8, !tbaa !479
  %170 = call ptr @canon_rtx(ptr noundef nonnull %124) #18
  %171 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 5
  store ptr %170, ptr %171, align 8, !tbaa !480
  %172 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %173 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 6
  store ptr %172, ptr %173, align 8, !tbaa !344
  %174 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %175 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 7
  store ptr %174, ptr %175, align 8, !tbaa !242
  %176 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %177 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 8
  store ptr %176, ptr %177, align 8, !tbaa !343
  %178 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %179 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 9
  store ptr %178, ptr %179, align 8, !tbaa !243
  %180 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %181 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 10
  store ptr %180, ptr %181, align 8, !tbaa !352
  %182 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 2
  store i8 0, ptr %182, align 4, !tbaa !347
  %183 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !135
  %184 = icmp eq ptr %183, %124
  %185 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %186 = icmp eq ptr %185, %124
  %187 = select i1 %184, i1 true, i1 %186, !prof !341
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 3
  store i8 %188, ptr %189, align 1, !tbaa !206
  %190 = getelementptr inbounds %struct.group_info, ptr %164, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %190, i8 0, i64 24, i1 false)
  %191 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193, !prof !481

193:                                              ; preds = %162
  %194 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %191, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !478
  %196 = load i32, ptr %191, align 8, !tbaa !337
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200, !prof !482

198:                                              ; preds = %193, %162
  %199 = call ptr @vec_heap_p_reserve(ptr noundef %191, i32 noundef 1) #18
  store ptr %199, ptr @rtx_group_vec, align 8, !tbaa !135
  br label %200

200:                                              ; preds = %198, %193
  %201 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !135
  %202 = load i32, ptr %201, align 8, !tbaa !337
  %203 = add i32 %202, 1
  store i32 %203, ptr %201, align 8, !tbaa !337
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %201, i64 0, i32 2, i64 %204
  store ptr %164, ptr %205, align 8, !tbaa !135
  br label %206

206:                                              ; preds = %157, %200
  %207 = phi ptr [ %164, %200 ], [ %160, %157 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #18
  %208 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %209 = icmp eq ptr %208, null
  br i1 %209, label %216, label %210, !prof !527

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.group_info, ptr %207, i64 0, i32 1
  %212 = load i32, ptr %211, align 8, !tbaa !477
  %213 = load i64, ptr %3, align 8, !tbaa !226
  %214 = trunc i64 %213 to i32
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %208, ptr noundef nonnull @.str.38, i32 noundef %212, i32 noundef %214)
  br label %216

216:                                              ; preds = %210, %206
  store ptr null, ptr %4, align 8, !tbaa !135
  %217 = getelementptr inbounds %struct.group_info, ptr %207, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !477
  store i32 %218, ptr %2, align 4, !tbaa !150
  br label %239

219:                                              ; preds = %131, %154
  %220 = add nuw nsw i32 %77, 1
  %221 = icmp eq i32 %77, 0
  br i1 %221, label %75, label %222, !prof !515, !llvm.loop !528

222:                                              ; preds = %79, %219
  %223 = phi ptr [ %76, %79 ], [ %124, %219 ]
  %224 = tail call ptr @cselib_lookup(ptr noundef %223, i32 noundef %17, i32 noundef 1) #18
  store ptr %224, ptr %4, align 8, !tbaa !135
  store i32 -1, ptr %2, align 4, !tbaa !150
  %225 = icmp eq ptr %224, null
  %226 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %227 = icmp eq ptr %226, null
  br i1 %225, label %228, label %231, !prof !529

228:                                              ; preds = %222
  br i1 %227, label %239, label %229, !prof !530

229:                                              ; preds = %228
  %230 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 40, i64 1, ptr nonnull %226)
  br label %239

231:                                              ; preds = %222
  br i1 %227, label %239, label %232, !prof !531

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.cselib_val_struct, ptr %224, i64 0, i32 1
  %234 = load i32, ptr %233, align 4, !tbaa !532
  %235 = load i32, ptr %224, align 8, !tbaa !534
  %236 = load i64, ptr %3, align 8, !tbaa !226
  %237 = trunc i64 %236 to i32
  %238 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %226, ptr noundef nonnull @.str.40, i32 noundef %234, i32 noundef %235, i32 noundef %237)
  br label %239

239:                                              ; preds = %231, %232, %228, %229, %63, %216
  %240 = phi i8 [ 1, %216 ], [ %64, %63 ], [ 0, %229 ], [ 0, %228 ], [ 1, %232 ], [ 1, %231 ]
  ret i8 %240
}

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @replace_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 !prof !134 {
  %7 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !537
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %110, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = zext nneg i32 %16 to i64
  %24 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  %26 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !146
  %30 = zext nneg i32 %11 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  %33 = getelementptr inbounds %struct.insn_info, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !187
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !146
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.41, ptr noundef %25, i32 noundef %29, ptr noundef %32, i32 noundef %36)
  br label %38

38:                                               ; preds = %22, %19
  tail call void @start_sequence() #18
  %39 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !146
  %43 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !538
  %45 = sext i32 %44 to i64
  %46 = tail call fastcc ptr @get_stored_val(ptr noundef %0, i32 noundef %16, i64 noundef %45, ptr noundef %42, i8 noundef zeroext 0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  tail call void @end_sequence() #18
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %50 = icmp eq ptr %49, null
  br i1 %50, label %110, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 43, i64 1, ptr nonnull %49)
  br label %110

53:                                               ; preds = %38
  %54 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef nonnull %46) #18
  %55 = tail call ptr @get_insns() #18
  tail call void @end_sequence() #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %77, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %55, %57 ], [ %64, %59 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !146
  tail call void @note_stores(ptr noundef %62, ptr noundef nonnull @look_for_hardregs, ptr noundef %58) #18
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !146
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %59, !llvm.loop !568

66:                                               ; preds = %59
  tail call void @bitmap_and_into(ptr noundef %58, ptr noundef %5) #18
  %67 = load ptr, ptr %58, align 8, !tbaa !353
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 63, i64 1, ptr nonnull %70)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @df_print_regset(ptr noundef %74, ptr noundef nonnull %58) #18
  br label %75

75:                                               ; preds = %69, %72
  tail call void @bitmap_obstack_free(ptr noundef nonnull %58) #18
  br i1 %68, label %77, label %110

76:                                               ; preds = %66
  tail call void @bitmap_obstack_free(ptr noundef nonnull %58) #18
  br label %77

77:                                               ; preds = %76, %75, %53
  %78 = load ptr, ptr %39, align 8, !tbaa !187
  %79 = tail call zeroext i8 @validate_change(ptr noundef %78, ptr noundef %4, ptr noundef %54, i8 noundef zeroext 0) #18
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !135
  %83 = tail call ptr @pool_alloc(ptr noundef %82) #18
  %84 = getelementptr inbounds %struct.insn_info, ptr %1, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !187
  %86 = tail call ptr @emit_insn_before(ptr noundef %55, ptr noundef %85) #18
  %87 = load ptr, ptr %12, align 8, !tbaa !537
  store ptr %87, ptr %4, align 8, !tbaa !135
  %88 = load ptr, ptr @deferred_change_list, align 8, !tbaa !135
  %89 = getelementptr inbounds %struct.deferred_change, ptr %83, i64 0, i32 2
  store ptr %88, ptr %89, align 8, !tbaa !318
  store ptr %83, ptr @deferred_change_list, align 8, !tbaa !135
  store ptr %4, ptr %83, align 8, !tbaa !321
  %90 = getelementptr inbounds %struct.deferred_change, ptr %83, i64 0, i32 1
  store ptr %54, ptr %90, align 8, !tbaa !320
  %91 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !193
  %93 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 7
  store ptr %92, ptr %93, align 8, !tbaa !405
  %94 = load ptr, ptr @read_info_pool, align 8, !tbaa !135
  tail call void @pool_free(ptr noundef %94, ptr noundef %2) #18
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %81
  %98 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 33, i64 1, ptr nonnull %95)
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_simple_rtl(ptr noundef %99, ptr noundef %54) #18
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  br label %110

102:                                              ; preds = %77
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 34, i64 1, ptr nonnull %103)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !135
  tail call void @print_simple_rtl(ptr noundef %107, ptr noundef %54) #18
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !135
  %109 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 31, i64 1, ptr %108)
  br label %110

110:                                              ; preds = %102, %105, %81, %97, %48, %51, %6, %75
  %111 = phi i8 [ 0, %75 ], [ 0, %6 ], [ 0, %51 ], [ 0, %48 ], [ 1, %97 ], [ 1, %81 ], [ 0, %105 ], [ 0, %102 ]
  ret i8 %111
}

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @clear_alias_set_lookup(i32 noundef %0) unnamed_addr #9 !prof !134 {
  %2 = alloca %struct.clear_alias_mode_holder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i32 %0, ptr %2, align 4, !tbaa !155
  %3 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !135
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #18
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 636, ptr noundef nonnull @.str.2) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr %4, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %9
}

declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cselib_expand_value_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_stored_val(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #9 !prof !134 {
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !281
  %15 = sub nsw i64 %2, %14
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %5, %12
  %18 = phi i32 [ %16, %12 ], [ 0, %5 ]
  %19 = zext nneg i32 %1 to i64
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %153, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !146
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %18, %24
  %26 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %3) #18
  %27 = load ptr, ptr %6, align 8, !tbaa !278
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = shl nsw i32 %25, 3
  %32 = tail call i32 @smallest_mode_for_size(i32 noundef %31, i32 noundef 2) #18
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !146
  %36 = icmp ult i8 %35, 5
  br i1 %36, label %37, label %213

37:                                               ; preds = %21
  %38 = shl nsw i32 %18, 3
  %39 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 12
  %40 = sext i32 %38 to i64
  %41 = icmp eq i8 %4, 0
  %42 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %43 = sext i32 %38 to i64
  br label %44

44:                                               ; preds = %37, %145
  %45 = phi i64 [ %33, %37 ], [ %149, %145 ]
  %46 = phi ptr [ undef, %37 ], [ %143, %145 ]
  %47 = phi i32 [ %32, %37 ], [ %148, %145 ]
  %48 = phi ptr [ null, %37 ], [ %142, %145 ]
  %49 = load ptr, ptr %39, align 8, !tbaa !286
  %50 = icmp eq ptr %49, null
  br i1 %50, label %92, label %51

51:                                               ; preds = %44
  %52 = tail call i32 @subreg_lowpart_offset(i32 noundef %47, i32 noundef %30) #18
  %53 = load ptr, ptr %39, align 8, !tbaa !286
  %54 = tail call ptr @simplify_subreg(i32 noundef %47, ptr noundef %53, i32 noundef %30, i32 noundef %52) #18
  %55 = icmp eq ptr %54, null
  br i1 %55, label %88, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %54, align 8
  %58 = and i32 %57, 65535
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !150
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %40) #18
  %65 = tail call ptr @simplify_const_binary_operation(i32 noundef 68, i32 noundef %47, ptr noundef nonnull %54, ptr noundef %64) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65535
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !150
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = tail call i32 @subreg_lowpart_offset(i32 noundef %1, i32 noundef %47) #18
  %76 = tail call ptr @simplify_subreg(i32 noundef %1, ptr noundef nonnull %65, i32 noundef %47, i32 noundef %75) #18
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %76, align 8
  %80 = and i32 %79, 65535
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !150
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = tail call i32 @rtx_cost(ptr noundef nonnull %76, i32 noundef 23, i8 noundef zeroext %26) #18
  %87 = icmp slt i32 %86, 5
  br i1 %87, label %89, label %88

88:                                               ; preds = %85, %78, %74, %67, %63, %56, %51
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi ptr [ %46, %88 ], [ %76, %85 ]
  %91 = phi i1 [ true, %88 ], [ false, %85 ]
  br i1 %91, label %92, label %141

92:                                               ; preds = %89, %44
  %93 = phi ptr [ %90, %89 ], [ %46, %44 ]
  br i1 %41, label %94, label %141

94:                                               ; preds = %92
  %95 = load ptr, ptr %42, align 8, !tbaa !293
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !150
  %101 = icmp eq i32 %100, 9
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %47, i32 noundef %30) #18
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %141, label %105

105:                                              ; preds = %102, %94
  %106 = tail call ptr @gen_reg_rtx(i32 noundef %47) #18
  tail call void @start_sequence() #18
  %107 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %43) #18
  %108 = tail call ptr @expand_binop(i32 noundef %47, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %106, ptr noundef %107, ptr noundef %106, i32 noundef 1, i32 noundef 0) #18
  %109 = tail call ptr @get_insns() #18
  tail call void @end_sequence() #18
  %110 = icmp ne ptr %108, %106
  %111 = icmp eq ptr %109, null
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %141, label %113

113:                                              ; preds = %105, %125
  %114 = phi i32 [ %126, %125 ], [ 0, %105 ]
  %115 = phi ptr [ %128, %125 ], [ %109, %105 ]
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = add nsw i32 %117, -7
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !146
  %123 = tail call i32 @insn_rtx_cost(ptr noundef %122, i8 noundef zeroext %26) #18
  %124 = add nsw i32 %123, %114
  br label %125

125:                                              ; preds = %120, %113
  %126 = phi i32 [ %124, %120 ], [ %114, %113 ]
  %127 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !146
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %113, !llvm.loop !569

130:                                              ; preds = %125
  %131 = icmp sgt i32 %126, 4
  br i1 %131, label %141, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr %42, align 8, !tbaa !293
  %134 = tail call ptr @copy_rtx(ptr noundef %133) #18
  %135 = tail call ptr @extract_low_bits(i32 noundef %47, i32 noundef %30, ptr noundef %134) #18
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = tail call ptr @emit_move_insn(ptr noundef %106, ptr noundef nonnull %135) #18
  %139 = tail call ptr @emit_insn(ptr noundef %109) #18
  %140 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %47, ptr noundef %106) #18
  br label %141

141:                                              ; preds = %102, %89, %137, %132, %130, %105, %92
  %142 = phi ptr [ %140, %137 ], [ %48, %92 ], [ %48, %105 ], [ %48, %130 ], [ %48, %132 ], [ %48, %89 ], [ %48, %102 ]
  %143 = phi ptr [ %93, %137 ], [ null, %92 ], [ %93, %105 ], [ %93, %130 ], [ %93, %132 ], [ %90, %89 ], [ %93, %102 ]
  %144 = phi i32 [ 2, %137 ], [ 1, %92 ], [ 4, %105 ], [ 4, %130 ], [ 4, %132 ], [ 1, %89 ], [ 4, %102 ]
  switch i32 %144, label %213 [
    i32 4, label %145
    i32 2, label %212
  ]

145:                                              ; preds = %141
  %146 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %45
  %147 = load i8, ptr %146, align 1, !tbaa !146
  %148 = zext i8 %147 to i32
  %149 = zext i8 %147 to i64
  %150 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !146
  %152 = icmp ult i8 %151, 5
  br i1 %152, label %44, label %212, !llvm.loop !570

153:                                              ; preds = %17
  br i1 %11, label %154, label %191

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %156 = load ptr, ptr %155, align 8, !tbaa !293
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 30
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1835, ptr noundef nonnull @.str.2) #18
  br label %161

161:                                              ; preds = %154, %160
  %162 = tail call i32 @int_mode_for_mode(i32 noundef %1) #18
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %213, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %155, align 8, !tbaa !293
  %166 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !135
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %162, ptr noundef %166) #18
  br label %213

170:                                              ; preds = %164
  %171 = zext i32 %162 to i64
  %172 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !146
  %174 = icmp ugt i8 %173, 8
  br i1 %174, label %213, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !146
  %178 = and i64 %177, 255
  br label %179

179:                                              ; preds = %175, %179
  %180 = phi i32 [ 8, %175 ], [ %185, %179 ]
  %181 = phi i64 [ %178, %175 ], [ %184, %179 ]
  %182 = zext nneg i32 %180 to i64
  %183 = shl i64 %181, %182
  %184 = or i64 %183, %181
  %185 = shl i32 %180, 1
  %186 = icmp slt i32 %185, 64
  br i1 %186, label %179, label %187, !llvm.loop !571

187:                                              ; preds = %179
  %188 = tail call i64 @trunc_int_for_mode(i64 noundef %184, i32 noundef %162) #18
  %189 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %188) #18
  %190 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %162, ptr noundef %189) #18
  br label %213

191:                                              ; preds = %153
  %192 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 12
  %193 = load ptr, ptr %192, align 8, !tbaa !286
  %194 = icmp eq ptr %193, null
  br i1 %194, label %207, label %195

195:                                              ; preds = %191
  %196 = icmp eq i8 %4, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %195
  %198 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %199 = load i8, ptr %198, align 1, !tbaa !146
  %200 = zext nneg i32 %10 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !146
  %203 = icmp eq i8 %199, %202
  br i1 %203, label %207, label %204

204:                                              ; preds = %197, %195
  %205 = tail call ptr @copy_rtx(ptr noundef nonnull %193) #18
  %206 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %10, ptr noundef %205) #18
  br label %213

207:                                              ; preds = %197, %191
  %208 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %209 = load ptr, ptr %208, align 8, !tbaa !293
  %210 = tail call ptr @copy_rtx(ptr noundef %209) #18
  %211 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %10, ptr noundef %210) #18
  br label %213

212:                                              ; preds = %141, %145
  br label %213

213:                                              ; preds = %141, %212, %21, %170, %161, %168, %187, %207, %204
  %214 = phi ptr [ %169, %168 ], [ %190, %187 ], [ %206, %204 ], [ %211, %207 ], [ null, %161 ], [ null, %170 ], [ null, %21 ], [ %142, %212 ], [ %143, %141 ]
  %215 = icmp ne i8 %4, 0
  %216 = icmp ne ptr %214, null
  %217 = select i1 %215, i1 %216, i1 false
  br i1 %217, label %218, label %226

218:                                              ; preds = %213
  %219 = load i32, ptr %214, align 8
  %220 = and i32 %219, 65535
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !150
  %224 = icmp eq i32 %223, 9
  %225 = select i1 %224, ptr %214, ptr null
  br label %226

226:                                              ; preds = %218, %213
  %227 = phi ptr [ %225, %218 ], [ %214, %213 ]
  ret ptr %227
}

declare void @end_sequence() local_unnamed_addr #3

declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @look_for_hardregs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #9 !prof !134 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !146
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = zext nneg i32 %9 to i64
  %13 = lshr i32 %4, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !146
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %23, %21 ], [ %20, %19 ]
  %23 = add nsw i32 %22, -1
  %24 = add nsw i32 %23, %9
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %24) #18
  %26 = icmp sgt i32 %22, 1
  br i1 %26, label %21, label %27, !llvm.loop !572

27:                                               ; preds = %21, %11, %7, %3
  ret void
}

declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_simple_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #3

declare ptr @extract_low_bits(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_const_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @insn_rtx_cost(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_base_term(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_for_inc_dec(ptr noundef %0) unnamed_addr #9 !prof !134 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !135
  %3 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 2, ptr noundef null) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !135
  %7 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @replace_inc_dec_mem, ptr noundef %6) #18
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @replace_inc_dec_mem(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !134 {
  %3 = alloca %struct.insn_size, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %11 = load i32, ptr %4, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !146
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %3, align 8, !tbaa !573
  %18 = getelementptr inbounds %struct.insn_size, ptr %3, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !575
  %19 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %20 = call i32 @for_each_rtx(ptr noundef nonnull %19, ptr noundef nonnull @replace_inc_dec, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %21

21:                                               ; preds = %2, %6, %10
  %22 = phi i32 [ -1, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @replace_inc_dec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !134 {
  %3 = load ptr, ptr %0, align 8, !tbaa !135
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %46 [
    i16 75, label %6
    i16 77, label %6
    i16 74, label %20
    i16 76, label %20
    i16 78, label %35
    i16 79, label %35
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = load i32, ptr %1, align 8, !tbaa !573
  %10 = sext i32 %9 to i64
  %11 = load i32, ptr %8, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = tail call ptr @gen_int_mode(i64 noundef %10, i32 noundef %13) #18
  %15 = load i32, ptr %8, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %17, ptr noundef nonnull %8, ptr noundef %14) #18
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %8, ptr noundef %18) #18
  br label %41

20:                                               ; preds = %2, %2
  %21 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  %23 = load i32, ptr %1, align 8, !tbaa !573
  %24 = sub nsw i32 0, %23
  %25 = sext i32 %24 to i64
  %26 = load i32, ptr %22, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = tail call ptr @gen_int_mode(i64 noundef %25, i32 noundef %28) #18
  %30 = load i32, ptr %22, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %32, ptr noundef nonnull %22, ptr noundef %29) #18
  %34 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %22, ptr noundef %33) #18
  br label %41

35:                                               ; preds = %2, %2
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !146
  %40 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %39, ptr noundef %37) #18
  br label %41

41:                                               ; preds = %6, %20, %35
  %42 = phi ptr [ %40, %35 ], [ %34, %20 ], [ %19, %6 ]
  %43 = getelementptr inbounds %struct.insn_size, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !575
  %45 = tail call ptr @emit_insn_before(ptr noundef %42, ptr noundef %44) #18
  br label %46

46:                                               ; preds = %41, %2
  %47 = phi i32 [ 0, %2 ], [ -1, %41 ]
  ret i32 %47
}

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_reachable_blocks(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #11 !prof !576 !PGOFuncName !577 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !169
  %5 = lshr i32 %4, 6
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !226
  %9 = and i32 %4, 63
  %10 = zext nneg i32 %9 to i64
  %11 = shl nuw i64 1, %10
  %12 = and i64 %11, %8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %55, label %14, !prof !578

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !466
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !435

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %15, i64 %6
  %19 = load i8, ptr %18, align 1, !tbaa !146
  %20 = add i8 %19, -1
  store i8 %20, ptr %18, align 1, !tbaa !146
  br label %21

21:                                               ; preds = %14, %17
  %22 = xor i64 %11, -1
  %23 = load i64, ptr %7, align 8, !tbaa !226
  %24 = and i64 %23, %22
  store i64 %24, ptr %7, align 8, !tbaa !226
  %25 = icmp eq ptr %1, null
  br label %26

26:                                               ; preds = %53, %21
  %27 = phi i32 [ 0, %21 ], [ %54, %53 ]
  br i1 %25, label %28, label %29, !prof !579

28:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 687, ptr noundef nonnull @.str.2) #18
  br label %29

29:                                               ; preds = %28, %26
  %30 = load ptr, ptr %1, align 8, !tbaa !135
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !580

32:                                               ; preds = %29
  %33 = load i32, ptr %30, align 8, !tbaa !304
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ 0, %29 ]
  %36 = icmp eq i32 %35, %27
  br i1 %36, label %41, label %37, !prof !581

37:                                               ; preds = %34
  %38 = zext i32 %27 to i64
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !135
  br label %41

41:                                               ; preds = %34, %37
  %42 = phi ptr [ %40, %37 ], [ null, %34 ]
  br i1 %36, label %55, label %43, !prof !581

43:                                               ; preds = %41
  %44 = load ptr, ptr %42, align 8, !tbaa !582
  tail call fastcc void @mark_reachable_blocks(ptr noundef nonnull %0, ptr noundef %44)
  %45 = load ptr, ptr %1, align 8, !tbaa !135
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !583

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !304
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = icmp ult i32 %27, %50
  br i1 %51, label %53, label %52, !prof !584

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 738, ptr noundef nonnull @.str.2) #18
  br label %53

53:                                               ; preds = %49, %52
  %54 = add i32 %27, 1
  br label %26, !llvm.loop !585

55:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_stores_spill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %43
  %8 = phi ptr [ %0, %5 ], [ %45, %43 ]
  %9 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !276
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %14 = sext i32 %10 to i64
  %15 = icmp slt i32 %10, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = sub nsw i64 0, %14
  %18 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !251
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 11
  br label %30

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !244
  %27 = icmp sgt i32 %26, %10
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 12
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %23, %22 ], [ %29, %28 ]
  %32 = phi i64 [ %17, %22 ], [ %14, %28 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !135
  %34 = getelementptr inbounds i32, ptr %33, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !150
  br label %36

36:                                               ; preds = %30, %16, %24
  %37 = phi i32 [ 0, %16 ], [ 0, %24 ], [ %35, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %37) #18
  br i1 %6, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %37) #18
  br label %43

43:                                               ; preds = %36, %41, %39, %7
  %44 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !297
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7, !llvm.loop !586

47:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_reads_spill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !134 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %44
  %8 = phi ptr [ %0, %5 ], [ %46, %44 ]
  %9 = getelementptr inbounds %struct.read_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !191
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @clear_alias_group, align 8, !tbaa !135
  %14 = sext i32 %10 to i64
  %15 = icmp slt i32 %10, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = sub nsw i64 0, %14
  %18 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !251
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 11
  br label %30

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !244
  %27 = icmp sgt i32 %26, %10
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.group_info, ptr %13, i64 0, i32 12
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %23, %22 ], [ %29, %28 ]
  %32 = phi i64 [ %17, %22 ], [ %14, %28 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !135
  %34 = getelementptr inbounds i32, ptr %33, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !150
  br label %36

36:                                               ; preds = %30, %16, %24
  %37 = phi i32 [ 0, %16 ], [ 0, %24 ], [ %35, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  br i1 %6, label %42, label %40

40:                                               ; preds = %39
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %37) #18
  br label %42

42:                                               ; preds = %40, %39
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %37) #18
  br label %44

44:                                               ; preds = %36, %42, %7
  %45 = getelementptr inbounds %struct.read_info, ptr %8, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %7, !llvm.loop !587

48:                                               ; preds = %44, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_reads_nospill(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !588 !PGOFuncName !589 {
  %4 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !405
  %6 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 2, !tbaa !200
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %44, label %9, !prof !590

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, null
  br label %11

11:                                               ; preds = %9, %42
  %12 = phi i64 [ 0, %9 ], [ %43, %42 ]
  %13 = load ptr, ptr @rtx_group_vec, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !337
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %13, i64 0, i32 2, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  br label %22

22:                                               ; preds = %11, %15, %19
  %23 = phi ptr [ %21, %19 ], [ null, %15 ], [ null, %11 ]
  %24 = phi i1 [ false, %19 ], [ true, %15 ], [ true, %11 ]
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.group_info, ptr %23, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !347
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.group_info, ptr %23, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !206
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  br i1 %10, label %38, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.group_info, ptr %23, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !352
  %37 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %2, ptr noundef %36) #18
  br label %38

38:                                               ; preds = %34, %33
  %39 = getelementptr inbounds %struct.group_info, ptr %23, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !352
  %41 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %40) #18
  br label %42

42:                                               ; preds = %25, %29, %38
  %43 = add nuw i64 %12, 1
  br label %11, !llvm.loop !591

44:                                               ; preds = %22, %3
  %45 = icmp eq ptr %5, null
  br i1 %45, label %146, label %46, !prof !592

46:                                               ; preds = %44, %142
  %47 = phi ptr [ %144, %142 ], [ %5, %44 ]
  br label %48

48:                                               ; preds = %46, %140
  %49 = phi i64 [ 0, %46 ], [ %141, %140 ]
  %50 = load ptr, ptr @rtx_group_vec, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52, !prof !593

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !337
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %56, label %59, !prof !594

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %50, i64 0, i32 2, i64 %49
  %58 = load ptr, ptr %57, align 8, !tbaa !135
  br label %59

59:                                               ; preds = %48, %52, %56
  %60 = phi ptr [ %58, %56 ], [ null, %52 ], [ null, %48 ]
  %61 = phi i1 [ false, %56 ], [ true, %52 ], [ true, %48 ]
  br i1 %61, label %142, label %62, !prof !595

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 2
  %64 = load i8, ptr %63, align 4, !tbaa !347
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %140, label %66, !prof !596

66:                                               ; preds = %62
  %67 = load i32, ptr %47, align 8, !tbaa !536
  %68 = zext i32 %67 to i64
  %69 = icmp eq i64 %49, %68
  br i1 %69, label %70, label %119, !prof !597

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 2
  %72 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 3
  %73 = load i32, ptr %71, align 8, !tbaa !538
  %74 = load i32, ptr %72, align 4, !tbaa !539
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78, !prof !598

76:                                               ; preds = %70
  %77 = icmp eq ptr %2, null
  br i1 %77, label %136, label %132

78:                                               ; preds = %70
  %79 = load i32, ptr %72, align 4, !tbaa !539
  %80 = icmp slt i32 %73, %79
  br i1 %80, label %81, label %140, !prof !599

81:                                               ; preds = %78
  %82 = icmp eq ptr %2, null
  %83 = sext i32 %73 to i64
  %84 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 13
  %85 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 11
  br label %86

86:                                               ; preds = %81, %114
  %87 = phi i64 [ %83, %81 ], [ %115, %114 ]
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %94, !prof !600

89:                                               ; preds = %86
  %90 = sub nsw i64 0, %87
  %91 = load i32, ptr %84, align 8, !tbaa !251
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %100, label %106, !prof !601

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 14
  %96 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 12
  %97 = load i32, ptr %95, align 4, !tbaa !244
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %87, %98
  br i1 %99, label %100, label %106, !prof !602

100:                                              ; preds = %94, %89
  %101 = phi ptr [ %85, %89 ], [ %96, %94 ]
  %102 = phi i64 [ %90, %89 ], [ %87, %94 ]
  %103 = load ptr, ptr %101, align 8, !tbaa !135
  %104 = getelementptr inbounds i32, ptr %103, i64 %102
  %105 = load i32, ptr %104, align 4, !tbaa !150
  br label %106

106:                                              ; preds = %100, %89, %94
  %107 = phi i32 [ 0, %89 ], [ 0, %94 ], [ %105, %100 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109, !prof !603

109:                                              ; preds = %106
  br i1 %82, label %112, label %110, !prof !604

110:                                              ; preds = %109
  %111 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %107) #18
  br label %112

112:                                              ; preds = %110, %109
  %113 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %107) #18
  br label %114

114:                                              ; preds = %112, %106
  %115 = add nsw i64 %87, 1
  %116 = load i32, ptr %72, align 4, !tbaa !539
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %86, label %140, !prof !605, !llvm.loop !606

119:                                              ; preds = %66
  %120 = icmp slt i32 %67, 0
  br i1 %120, label %121, label %140, !prof !607

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 4
  %123 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !479
  %125 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !480
  %127 = load ptr, ptr %122, align 8, !tbaa !537
  %128 = tail call i32 @canon_true_dependence(ptr noundef %124, i32 noundef 14, ptr noundef %126, ptr noundef %127, ptr noundef null, ptr noundef nonnull @rtx_varies_p) #18
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130, !prof !608

130:                                              ; preds = %121
  %131 = icmp eq ptr %2, null
  br i1 %131, label %136, label %132, !prof !609

132:                                              ; preds = %130, %76
  %133 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 10
  %134 = load ptr, ptr %133, align 8, !tbaa !352
  %135 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %2, ptr noundef %134) #18
  br label %136

136:                                              ; preds = %132, %130, %76
  %137 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 10
  %138 = load ptr, ptr %137, align 8, !tbaa !352
  %139 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %138) #18
  br label %140

140:                                              ; preds = %114, %136, %78, %62, %119, %121
  %141 = add nuw i64 %49, 1
  br label %48, !llvm.loop !610

142:                                              ; preds = %59
  %143 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 5
  %144 = load ptr, ptr %143, align 8, !tbaa !193
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %46, !prof !611, !llvm.loop !612

146:                                              ; preds = %142, %44
  ret void
}

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simple_dataflow(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @dse_confluence_0(ptr nocapture noundef readonly %0) #11 !prof !613 !PGOFuncName !614 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !169
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %20, label %5, !prof !615

5:                                                ; preds = %1
  %6 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.bb_info, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !381
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20, !prof !160

13:                                               ; preds = %5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %14, ptr %10, align 8, !tbaa !381
  %15 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !135
  %18 = getelementptr inbounds %struct.bb_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !423
  tail call void @bitmap_copy(ptr noundef %14, ptr noundef %19) #18
  br label %20

20:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dse_confluence_n(ptr nocapture noundef readonly %0) #11 !prof !616 !PGOFuncName !617 {
  %2 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !311
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !169
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.bb_info, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !426
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13, !prof !618

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !582
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !169
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !135
  %20 = getelementptr inbounds %struct.bb_info, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !381
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !619

23:                                               ; preds = %13
  tail call void @bitmap_and_into(ptr noundef nonnull %21, ptr noundef nonnull %11) #18
  br label %27

24:                                               ; preds = %13
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %25, ptr %20, align 8, !tbaa !381
  %26 = load ptr, ptr %10, align 8, !tbaa !426
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %26) #18
  br label %27

27:                                               ; preds = %23, %24, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @dse_transfer_function(i32 noundef %0) #11 !prof !620 !PGOFuncName !621 {
  %2 = load ptr, ptr @bb_table, align 8, !tbaa !135
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !424
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9, !prof !622

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !381
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13, !prof !623

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !426
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !624

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !423
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef nonnull %15, ptr noundef %19, ptr noundef nonnull %11, ptr noundef nonnull %7) #18
  br label %36

21:                                               ; preds = %13
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %22, ptr %14, align 8, !tbaa !426
  %23 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !423
  %25 = load ptr, ptr %10, align 8, !tbaa !381
  %26 = load ptr, ptr %6, align 8, !tbaa !424
  %27 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26) #18
  br label %36

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !426
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36, !prof !625

32:                                               ; preds = %28
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %33, ptr %29, align 8, !tbaa !426
  %34 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !423
  tail call void @bitmap_copy(ptr noundef %33, ptr noundef %35) #18
  br label %36

36:                                               ; preds = %28, %9, %32, %21, %17
  %37 = phi i8 [ %20, %17 ], [ 1, %21 ], [ 1, %32 ], [ 0, %9 ], [ 0, %28 ]
  ret i8 %37
}

declare ptr @df_get_postorder(i32 noundef) local_unnamed_addr #3

declare i32 @df_get_n_blocks(i32 noundef) local_unnamed_addr #3

declare void @df_print_bb_index(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_and_compl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @end_alias_analysis() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

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
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!133}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!35 = !{ptr @gate_dse1, ptr @dbg_cnt, i64 38}
!36 = !{ptr @rest_of_handle_dse, ptr @df_set_flags, i64 91}
!37 = !{ptr @rest_of_handle_dse, ptr @df_note_add_problem, i64 76}
!38 = !{ptr @rest_of_handle_dse, ptr @df_analyze, i64 91}
!39 = !{ptr @rest_of_handle_dse, ptr @bitmap_obstack_alloc_stat, i64 228}
!40 = !{ptr @rest_of_handle_dse, ptr @create_alloc_pool, i64 309728}
!41 = !{ptr @rest_of_handle_dse, ptr @htab_create, i64 76}
!42 = !{ptr @rest_of_handle_dse, ptr @xcalloc, i64 76}
!43 = !{ptr @rest_of_handle_dse, ptr @init_alias_analysis, i64 76}
!44 = !{ptr @rest_of_handle_dse, ptr @cselib_init, i64 76}
!45 = !{ptr @rest_of_handle_dse, ptr @bitmap_set_bit, i64 312751}
!46 = !{ptr @rest_of_handle_dse, ptr @pool_alloc, i64 1687689}
!47 = !{ptr @rest_of_handle_dse, ptr @bitmap_copy, i64 309424}
!48 = !{ptr @rest_of_handle_dse, ptr @df_simulate_initialize_forwards, i64 309424}
!49 = !{ptr @rest_of_handle_dse, ptr @cselib_clear_table, i64 309272}
!50 = !{ptr @rest_of_handle_dse, ptr @note_uses, i64 1224413}
!51 = !{ptr @rest_of_handle_dse, ptr @pool_free, i64 300389}
!52 = !{ptr @rest_of_handle_dse, ptr @volatile_refs_p, i64 1087402}
!53 = !{ptr @rest_of_handle_dse, ptr @insn_could_throw_p, i64 1087402}
!54 = !{ptr @rest_of_handle_dse, ptr @find_reg_note, i64 2208649}
!55 = !{ptr @rest_of_handle_dse, ptr @record_store, i64 61054}
!56 = !{ptr @rest_of_handle_dse, ptr @canon_address, i64 153935}
!57 = !{ptr @rest_of_handle_dse, ptr @bitmap_bit_p, i64 1638}
!58 = !{ptr @rest_of_handle_dse, ptr @find_base_term, i64 153443}
!59 = !{ptr @rest_of_handle_dse, ptr @cselib_expand_value_rtx, i64 64818}
!60 = !{ptr @rest_of_handle_dse, ptr @canon_rtx, i64 153852}
!61 = !{ptr @rest_of_handle_dse, ptr @plus_constant, i64 24341}
!62 = !{ptr @rest_of_handle_dse, ptr @cselib_process_insn, i64 1697421}
!63 = !{ptr @rest_of_handle_dse, ptr @df_simulate_one_insn_forwards, i64 1224413}
!64 = !{ptr @rest_of_handle_dse, ptr @free_alloc_pool, i64 309728}
!65 = !{ptr @rest_of_handle_dse, ptr @bitmap_obstack_free, i64 15693}
!66 = !{ptr @rest_of_handle_dse, ptr @cselib_finish, i64 76}
!67 = !{ptr @rest_of_handle_dse, ptr @htab_empty, i64 76}
!68 = !{ptr @rest_of_handle_dse, ptr @bitmap_ior_into, i64 76}
!69 = !{ptr @rest_of_handle_dse, ptr @xmalloc, i64 2676}
!70 = !{ptr @rest_of_handle_dse, ptr @bitmap_clear, i64 3551}
!71 = !{ptr @rest_of_handle_dse, ptr @dse_step3, i64 15}
!72 = !{ptr @rest_of_handle_dse, ptr @dse_step4, i64 15}
!73 = !{ptr @rest_of_handle_dse, ptr @scan_reads_nospill, i64 1687}
!74 = !{ptr @rest_of_handle_dse, ptr @free, i64 2828}
!75 = !{ptr @rest_of_handle_dse, ptr @end_alias_analysis, i64 76}
!76 = !{ptr @rest_of_handle_dse, ptr @htab_delete, i64 76}
!77 = !{ptr @gate_dse2, ptr @dbg_cnt, i64 38}
!78 = !{ptr @dse_step3, ptr @sbitmap_alloc, i64 15}
!79 = !{ptr @dse_step3, ptr @sbitmap_ones, i64 15}
!80 = !{ptr @dse_step3, ptr @bitmap_obstack_alloc_stat, i64 3646}
!81 = !{ptr @dse_step3, ptr @bitmap_ior_into, i64 14}
!82 = !{ptr @dse_step3, ptr @bitmap_set_bit, i64 519}
!83 = !{ptr @dse_step3, ptr @scan_reads_nospill, i64 5134}
!84 = !{ptr @dse_step3, ptr @mark_reachable_blocks, i64 53}
!85 = !{ptr @dse_step3, ptr @free, i64 30}
!86 = !{ptr @dse_step4, ptr @df_get_postorder, i64 15}
!87 = !{ptr @dse_step4, ptr @df_get_n_blocks, i64 15}
!88 = !{ptr @dse_step4, ptr @df_simple_dataflow, i64 15}
!89 = !{ptr @invariant_group_base_hash, ptr @hash_rtx, i64 294635}
!90 = !{ptr @invariant_group_base_eq, ptr @rtx_equal_p, i64 477573}
!91 = !{ptr @check_mem_read_use, ptr @for_each_rtx, i64 1396840}
!92 = !{ptr @record_store, ptr @find_reg_note, i64 65216}
!93 = !{ptr @record_store, ptr @canon_address, i64 8951}
!94 = !{ptr @record_store, ptr @pool_alloc, i64 8946}
!95 = !{ptr @record_store, ptr @bitmap_bit_p, i64 95}
!96 = !{ptr @record_store, ptr @bitmap_set_bit, i64 96}
!97 = !{ptr @record_store, ptr @find_base_term, i64 8922}
!98 = !{ptr @record_store, ptr @cselib_expand_value_rtx, i64 3769}
!99 = !{ptr @record_store, ptr @canon_rtx, i64 8946}
!100 = !{ptr @record_store, ptr @plus_constant, i64 1415}
!101 = !{ptr @check_mem_read_rtx, ptr @cselib_lookup, i64 360684}
!102 = !{ptr @check_mem_read_rtx, ptr @cselib_expand_value_rtx, i64 126772}
!103 = !{ptr @check_mem_read_rtx, ptr @canon_rtx, i64 481453}
!104 = !{ptr @check_mem_read_rtx, ptr @htab_find_slot, i64 226874}
!105 = !{ptr @check_mem_read_rtx, ptr @pool_alloc, i64 294813}
!106 = !{ptr @check_mem_read_rtx, ptr @gen_rtx_MEM, i64 1034}
!107 = !{ptr @check_mem_read_rtx, ptr @bitmap_obstack_alloc_stat, i64 5170}
!108 = !{ptr @check_mem_read_rtx, ptr @vec_heap_p_reserve, i64 199}
!109 = !{ptr @check_mem_read_rtx, ptr @plus_constant, i64 23690}
!110 = !{ptr @check_mem_read_rtx, ptr @canon_true_dependence, i64 187919}
!111 = !{ptr @canon_address, ptr @cselib_lookup, i64 201229}
!112 = !{ptr @canon_address, ptr @cselib_expand_value_rtx, i64 70727}
!113 = !{ptr @canon_address, ptr @canon_rtx, i64 268607}
!114 = !{ptr @canon_address, ptr @htab_find_slot, i64 126575}
!115 = !{ptr @canon_address, ptr @pool_alloc, i64 577}
!116 = !{ptr @canon_address, ptr @gen_rtx_MEM, i64 577}
!117 = !{ptr @canon_address, ptr @bitmap_obstack_alloc_stat, i64 2885}
!118 = !{ptr @canon_address, ptr @vec_heap_p_reserve, i64 111}
!119 = !{ptr @mark_reachable_blocks, ptr @mark_reachable_blocks, i64 4626}
!120 = !{ptr @scan_reads_nospill, ptr @bitmap_set_bit, i64 4}
!121 = !{ptr @scan_reads_nospill, ptr @bitmap_clear_bit, i64 1716}
!122 = !{ptr @scan_reads_nospill, ptr @canon_true_dependence, i64 188}
!123 = !{ptr @scan_reads_nospill, ptr @bitmap_ior_into, i64 30}
!124 = !{ptr @scan_reads_nospill, ptr @bitmap_and_compl_into, i64 107}
!125 = !{ptr @dse_confluence_0, ptr @bitmap_obstack_alloc_stat, i64 38}
!126 = !{ptr @dse_confluence_0, ptr @bitmap_copy, i64 38}
!127 = !{ptr @dse_confluence_n, ptr @bitmap_and_into, i64 6733}
!128 = !{ptr @dse_confluence_n, ptr @bitmap_obstack_alloc_stat, i64 2519}
!129 = !{ptr @dse_confluence_n, ptr @bitmap_copy, i64 2519}
!130 = !{ptr @dse_transfer_function, ptr @bitmap_ior_and_compl, i64 2148}
!131 = !{ptr @dse_transfer_function, ptr @bitmap_obstack_alloc_stat, i64 2572}
!132 = !{ptr @dse_transfer_function, ptr @bitmap_copy, i64 1498}
!133 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!134 = !{!"function_entry_count", i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"any pointer", !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C/C++ TBAA"}
!139 = !{!140, !136, i64 8}
!140 = !{!"_IO_FILE", !141, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96, !136, i64 104, !141, i64 112, !141, i64 116, !142, i64 120, !143, i64 128, !137, i64 130, !137, i64 131, !136, i64 136, !142, i64 144, !136, i64 152, !136, i64 160, !136, i64 168, !136, i64 176, !142, i64 184, !141, i64 192, !137, i64 196}
!141 = !{!"int", !137, i64 0}
!142 = !{!"long", !137, i64 0}
!143 = !{!"short", !137, i64 0}
!144 = !{!140, !136, i64 16}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{!137, !137, i64 0}
!147 = !{!140, !136, i64 40}
!148 = !{!140, !136, i64 48}
!149 = !{!140, !141, i64 0}
!150 = !{!141, !141, i64 0}
!151 = distinct !{!151, !152, !153}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !{!"llvm.loop.unroll.disable"}
!154 = !{i8 0, i8 2}
!155 = !{!156, !141, i64 0}
!156 = !{!"clear_alias_mode_holder", !141, i64 0, !141, i64 4}
!157 = !{!156, !141, i64 4}
!158 = !{!"function_entry_count", i64 38}
!159 = !{!"dse.c;gate_dse1"}
!160 = !{!"branch_weights", i32 38, i32 0}
!161 = !{!"function_entry_count", i64 76}
!162 = !{!"dse.c;rest_of_handle_dse"}
!163 = !{!164, !136, i64 8}
!164 = !{!"function", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96, !141, i64 104, !141, i64 108, !141, i64 112, !141, i64 116, !141, i64 120, !141, i64 124, !136, i64 128, !141, i64 136, !141, i64 137, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139}
!165 = !{!166, !141, i64 32}
!166 = !{!"control_flow_graph", !136, i64 0, !136, i64 8, !136, i64 16, !141, i64 24, !141, i64 28, !141, i64 32, !136, i64 40, !141, i64 48, !137, i64 52, !137, i64 60, !141, i64 68, !141, i64 72}
!167 = !{!"branch_weights", i32 76, i32 0}
!168 = !{!"branch_weights", i32 1, i32 151}
!169 = !{!170, !141, i64 80}
!170 = !{!"basic_block_def", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !137, i64 32, !136, i64 48, !136, i64 56, !137, i64 64, !142, i64 72, !141, i64 80, !141, i64 84, !141, i64 88, !141, i64 92, !141, i64 96}
!171 = !{!172, !136, i64 48}
!172 = !{!"bb_info", !136, i64 0, !137, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48}
!173 = !{!174, !141, i64 16}
!174 = !{!"dataflow", !136, i64 0, !136, i64 8, !141, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !141, i64 48, !137, i64 52, !137, i64 53, !137, i64 54}
!175 = !{!174, !136, i64 8}
!176 = !{!177, !136, i64 16}
!177 = !{!"df_lr_bb_info", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24}
!178 = !{!"branch_weights", i32 309272, i32 152}
!179 = !{!180, !136, i64 8}
!180 = !{!"rtl_bb_info", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !141, i64 32}
!181 = !{!"branch_weights", i32 309234, i32 1708630}
!182 = !{!"branch_weights", i32 1232498, i32 476132}
!183 = !{!"branch_weights", i32 1232498, i32 0}
!184 = !{!172, !136, i64 0}
!185 = !{!186, !136, i64 32}
!186 = !{!"insn_info", !137, i64 0, !137, i64 1, !137, i64 2, !137, i64 3, !137, i64 4, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40}
!187 = !{!186, !136, i64 8}
!188 = !{!"branch_weights", i32 441485, i32 0, i32 791013}
!189 = !{!186, !137, i64 0}
!190 = !{!"branch_weights", i32 0, i32 791013}
!191 = !{!192, !141, i64 4}
!192 = !{!"read_info", !141, i64 0, !141, i64 4, !141, i64 8, !141, i64 12, !136, i64 16, !136, i64 24}
!193 = !{!192, !136, i64 24}
!194 = distinct !{!194, !152, !153}
!195 = !{!186, !137, i64 1}
!196 = !{!"branch_weights", i32 137916, i32 1094582}
!197 = !{!"branch_weights", i32 137916, i32 0}
!198 = !{!"branch_weights", i32 0, i32 137916}
!199 = !{!"branch_weights", i32 133516, i32 4400}
!200 = !{!186, !137, i64 2}
!201 = !{!186, !137, i64 3}
!202 = !{!203, !137, i64 0}
!203 = !{!"store_info", !137, i64 0, !137, i64 1, !141, i64 4, !136, i64 8, !136, i64 16, !136, i64 24, !141, i64 32, !142, i64 40, !142, i64 48, !137, i64 56, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96}
!204 = distinct !{!204, !152, !153}
!205 = !{!203, !141, i64 4}
!206 = !{!207, !137, i64 13}
!207 = !{!"group_info", !136, i64 0, !141, i64 8, !137, i64 12, !137, i64 13, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !141, i64 88, !141, i64 92}
!208 = !{!186, !136, i64 16}
!209 = !{!186, !136, i64 40}
!210 = distinct !{!210, !152, !153}
!211 = distinct !{!211, !152, !153}
!212 = distinct !{!212, !152, !153}
!213 = !{i32 0, i32 2}
!214 = !{!"branch_weights", i32 1, i32 137915}
!215 = !{!"branch_weights", i32 137915, i32 1}
!216 = !{!"branch_weights", i32 0, i32 1094582}
!217 = !{!"branch_weights", i32 1094582, i32 0}
!218 = !{!"branch_weights", i32 1094237, i32 345}
!219 = !{!"branch_weights", i32 1094237, i32 0}
!220 = !{!"branch_weights", i32 30681, i32 1063901}
!221 = !{!222, !141, i64 0}
!222 = !{!"rtvec_def", !141, i64 0, !137, i64 8}
!223 = !{!"branch_weights", i32 30680, i32 1}
!224 = !{!"branch_weights", i32 30777, i32 30680}
!225 = distinct !{!225, !152, !153}
!226 = !{!142, !142, i64 0}
!227 = !{!"branch_weights", i32 160, i32 1094767, i32 30431}
!228 = !{!"branch_weights", i32 163997, i32 961201}
!229 = !{!"branch_weights", i32 929021, i32 32180}
!230 = !{!"branch_weights", i32 95, i32 163902}
!231 = !{!"branch_weights", i32 95, i32 0}
!232 = !{!"branch_weights", i32 1, i32 0}
!233 = !{!234, !136, i64 16}
!234 = !{!"mem_attrs", !136, i64 0, !136, i64 8, !136, i64 16, !141, i64 24, !141, i64 28, !137, i64 32}
!235 = distinct !{!235, !152, !153}
!236 = distinct !{!236, !152, !153}
!237 = !{!"branch_weights", i32 163902, i32 0}
!238 = !{!"branch_weights", i32 88, i32 163814}
!239 = !{!"branch_weights", i32 0, i32 163814}
!240 = !{}
!241 = !{!"branch_weights", i32 163814, i32 0}
!242 = !{!207, !136, i64 40}
!243 = !{!207, !136, i64 56}
!244 = !{!207, !141, i64 92}
!245 = !{!"branch_weights", i32 436, i32 163378}
!246 = !{!"branch_weights", i32 436, i32 0}
!247 = !{!"branch_weights", i32 189660, i32 436}
!248 = !{!"branch_weights", i32 1592, i32 152}
!249 = !{!"branch_weights", i32 156, i32 1588}
!250 = !{!"branch_weights", i32 148, i32 8}
!251 = !{!207, !141, i64 88}
!252 = !{!"branch_weights", i32 17, i32 131}
!253 = !{!"branch_weights", i32 7, i32 1}
!254 = !{!"branch_weights", i32 1309, i32 435}
!255 = distinct !{!255, !152, !153}
!256 = !{!"branch_weights", i32 40, i32 163338}
!257 = !{!"branch_weights", i32 163298, i32 40}
!258 = !{!"branch_weights", i32 163298, i32 0}
!259 = !{!186, !137, i64 4}
!260 = !{!"branch_weights", i32 163378, i32 0}
!261 = !{!"branch_weights", i32 82106, i32 81708}
!262 = !{!"branch_weights", i32 12693, i32 69015, i32 0}
!263 = !{!"branch_weights", i32 12693, i32 0}
!264 = !{!"branch_weights", i32 81708, i32 0}
!265 = !{!"branch_weights", i32 81708, i32 0, i32 0, i32 0}
!266 = !{!"branch_weights", i32 0, i32 81708}
!267 = !{!"branch_weights", i32 12693, i32 69015}
!268 = !{!"branch_weights", i32 69015, i32 0}
!269 = !{!"branch_weights", i32 69015, i32 12693}
!270 = !{!"branch_weights", i32 0, i32 69015}
!271 = !{!"branch_weights", i32 163378, i32 436}
!272 = !{!"branch_weights", i32 137897, i32 25917}
!273 = !{!"branch_weights", i32 137676, i32 26138}
!274 = !{!"branch_weights", i32 0, i32 26138}
!275 = distinct !{!275, !152, !153}
!276 = !{!203, !141, i64 32}
!277 = !{!"branch_weights", i32 26138, i32 0}
!278 = !{!203, !136, i64 16}
!279 = !{!203, !137, i64 1}
!280 = !{!203, !142, i64 48}
!281 = !{!203, !142, i64 40}
!282 = distinct !{!282, !152, !153}
!283 = !{!"branch_weights", i32 25763, i32 375}
!284 = !{!203, !136, i64 8}
!285 = !{!"branch_weights", i32 25763, i32 0}
!286 = !{!203, !136, i64 88}
!287 = !{!"branch_weights", i32 249, i32 25514}
!288 = !{!"branch_weights", i32 249, i32 0}
!289 = distinct !{!289, !152, !153}
!290 = !{!"branch_weights", i32 17, i32 25729}
!291 = !{!"branch_weights", i32 0, i32 17}
!292 = distinct !{!292, !152, !153}
!293 = !{!203, !136, i64 80}
!294 = !{!"branch_weights", i32 375, i32 0}
!295 = !{!203, !136, i64 24}
!296 = distinct !{!296, !152, !153}
!297 = !{!203, !136, i64 72}
!298 = !{!203, !136, i64 96}
!299 = !{!"branch_weights", i32 163814, i32 930768}
!300 = !{!"branch_weights", i32 151, i32 8071305}
!301 = distinct !{!301, !152, !153}
!302 = !{!"branch_weights", i32 0, i32 309272}
!303 = !{!170, !136, i64 8}
!304 = !{!305, !141, i64 0}
!305 = !{!"VEC_edge_base", !141, i64 0, !141, i64 4, !137, i64 8}
!306 = !{!"branch_weights", i32 126, i32 309146}
!307 = !{!"branch_weights", i32 0, i32 309146}
!308 = !{!"branch_weights", i32 296404, i32 12742}
!309 = !{!"branch_weights", i32 0, i32 12742}
!310 = !{!"branch_weights", i32 12742, i32 0}
!311 = !{!312, !136, i64 8}
!312 = !{!"edge_def", !136, i64 0, !136, i64 8, !137, i64 16, !136, i64 24, !136, i64 32, !141, i64 40, !141, i64 44, !141, i64 48, !141, i64 52, !142, i64 56}
!313 = !{!166, !136, i64 8}
!314 = !{!"branch_weights", i32 12628, i32 114}
!315 = distinct !{!315, !152, !153}
!316 = distinct !{!316, !152, !153}
!317 = !{!"branch_weights", i32 1, i32 309271}
!318 = !{!319, !136, i64 16}
!319 = !{!"deferred_change", !136, i64 0, !136, i64 8, !136, i64 16}
!320 = !{!319, !136, i64 8}
!321 = !{!319, !136, i64 0}
!322 = distinct !{!322, !152, !153}
!323 = !{!"branch_weights", i32 1069120, i32 163378}
!324 = !{!"branch_weights", i32 0, i32 1}
!325 = !{!"branch_weights", i32 0, i32 163378}
!326 = distinct !{!326, !152, !153}
!327 = !{!"branch_weights", i32 1, i32 163377}
!328 = !{!"branch_weights", i32 163377, i32 1}
!329 = distinct !{!329, !152, !153}
!330 = !{!"branch_weights", i32 1068684, i32 436}
!331 = distinct !{!331, !152, !153}
!332 = !{!"branch_weights", i32 309271, i32 923227}
!333 = distinct !{!333, !152, !153}
!334 = !{!"branch_weights", i32 151, i32 618697}
!335 = distinct !{!335, !152, !153}
!336 = !{!"branch_weights", i32 0, i32 1414}
!337 = !{!338, !141, i64 0}
!338 = !{!"VEC_group_info_t_base", !141, i64 0, !141, i64 4, !137, i64 8}
!339 = !{!"branch_weights", i32 1338, i32 76}
!340 = !{!"branch_weights", i32 76, i32 1338}
!341 = !{!"branch_weights", i32 0, i32 1338}
!342 = !{!"branch_weights", i32 1300, i32 38}
!343 = !{!207, !136, i64 48}
!344 = !{!207, !136, i64 32}
!345 = !{!207, !136, i64 72}
!346 = !{!207, !136, i64 80}
!347 = !{!207, !137, i64 12}
!348 = !{!"branch_weights", i32 1338, i32 0}
!349 = distinct !{!349, !152, !153}
!350 = !{!"VP", i32 1, i64 1338, i64 4, i64 1325, i64 33, i64 11, i64 129, i64 2}
!351 = !{!"VP", i32 1, i64 1338, i64 4, i64 1336, i64 16, i64 1, i64 33, i64 1}
!352 = !{!207, !136, i64 64}
!353 = !{!354, !136, i64 0}
!354 = !{!"bitmap_head_def", !136, i64 0, !136, i64 8, !141, i64 16, !136, i64 24}
!355 = !{!"branch_weights", i32 1325, i32 13}
!356 = !{!357, !141, i64 16}
!357 = !{!"bitmap_element_def", !136, i64 0, !136, i64 8, !141, i64 16, !137, i64 24}
!358 = !{!"branch_weights", i32 1338, i32 148}
!359 = !{!"branch_weights", i32 53, i32 95}
!360 = !{!"branch_weights", i32 0, i32 53}
!361 = distinct !{!361, !152, !153}
!362 = !{!"branch_weights", i32 1, i32 1337}
!363 = !{!"branch_weights", i32 1337, i32 1}
!364 = distinct !{!364, !152, !153}
!365 = !{!357, !136, i64 0}
!366 = distinct !{!366, !153}
!367 = distinct !{!367, !152, !153}
!368 = !{!"branch_weights", i32 1336, i32 2}
!369 = !{!"branch_weights", i32 1338, i32 8}
!370 = !{!"branch_weights", i32 127, i32 1}
!371 = !{!"branch_weights", i32 1, i32 127}
!372 = distinct !{!372, !152, !153}
!373 = distinct !{!373, !152, !153}
!374 = !{!"branch_weights", i32 61, i32 15}
!375 = !{!"branch_weights", i32 15, i32 0}
!376 = !{!166, !136, i64 0}
!377 = !{!170, !136, i64 56}
!378 = !{!"branch_weights", i32 1, i32 239}
!379 = !{!"branch_weights", i32 239, i32 40433}
!380 = distinct !{!380, !152, !153}
!381 = !{!172, !136, i64 40}
!382 = !{!"branch_weights", i32 1, i32 2541}
!383 = !{!"branch_weights", i32 13659, i32 0}
!384 = !{!"branch_weights", i32 0, i32 13659}
!385 = !{!"branch_weights", i32 411, i32 13248}
!386 = !{!"branch_weights", i32 411, i32 0}
!387 = distinct !{!387, !152, !153}
!388 = distinct !{!388, !152, !153}
!389 = !{!"branch_weights", i32 11493, i32 2166}
!390 = !{!"branch_weights", i32 0, i32 2166}
!391 = !{!"branch_weights", i32 11493, i32 0}
!392 = !{!"branch_weights", i32 18318, i32 475}
!393 = !{!"branch_weights", i32 0, i32 475}
!394 = !{!"branch_weights", i32 474, i32 1}
!395 = !{!"branch_weights", i32 1620, i32 280}
!396 = !{!"branch_weights", i32 1620, i32 0}
!397 = !{!"branch_weights", i32 280, i32 0}
!398 = !{!"branch_weights", i32 0, i32 1900}
!399 = !{!"branch_weights", i32 1426, i32 474}
!400 = distinct !{!400, !152, !153}
!401 = !{!"branch_weights", i32 475, i32 0}
!402 = distinct !{!402, !152, !153}
!403 = !{!"branch_weights", i32 11446, i32 2213}
!404 = !{!"branch_weights", i32 2213, i32 0}
!405 = !{!186, !136, i64 24}
!406 = !{!"branch_weights", i32 9759, i32 1687}
!407 = !{!"branch_weights", i32 1687, i32 0}
!408 = !{!"branch_weights", i32 2541, i32 11118}
!409 = distinct !{!409, !152, !153}
!410 = distinct !{!410, !152, !153}
!411 = distinct !{!411, !152, !153}
!412 = distinct !{!412, !152, !153}
!413 = distinct !{!413, !152, !153}
!414 = !{!"branch_weights", i32 1, i32 309423}
!415 = !{!"branch_weights", i32 0, i32 1232498}
!416 = !{!"branch_weights", i32 411, i32 1232087}
!417 = !{!"branch_weights", i32 0, i32 411}
!418 = distinct !{!418, !152, !153}
!419 = !{!"branch_weights", i32 309423, i32 923075}
!420 = distinct !{!420, !152, !153}
!421 = distinct !{!421, !152, !153}
!422 = distinct !{!422, !152, !153}
!423 = !{!172, !136, i64 16}
!424 = !{!172, !136, i64 24}
!425 = !{!"branch_weights", i32 1498, i32 1074}
!426 = !{!172, !136, i64 32}
!427 = !{!"branch_weights", i32 0, i32 2572}
!428 = !{!"branch_weights", i32 15, i32 2557}
!429 = !{!"branch_weights", i32 239, i32 40913}
!430 = distinct !{!430, !152, !153}
!431 = !{!"branch_weights", i32 0, i32 76}
!432 = !{!"dse.c;gate_dse2"}
!433 = !{!"function_entry_count", i64 15}
!434 = !{!"dse.c;dse_step3"}
!435 = !{!"branch_weights", i32 2572, i32 0}
!436 = !{!"branch_weights", i32 2542, i32 15, i32 15}
!437 = !{!"branch_weights", i32 0, i32 15}
!438 = !{!"branch_weights", i32 0, i32 219}
!439 = !{!"branch_weights", i32 204, i32 15}
!440 = !{!"branch_weights", i32 15, i32 204}
!441 = !{!"branch_weights", i32 189, i32 15}
!442 = !{!"branch_weights", i32 1, i32 14}
!443 = distinct !{!443, !152, !153}
!444 = !{!"branch_weights", i32 2542, i32 0}
!445 = !{!"branch_weights", i32 0, i32 2213}
!446 = distinct !{!446, !152, !153}
!447 = !{!"branch_weights", i32 1074, i32 1468}
!448 = !{!"branch_weights", i32 1074, i32 0}
!449 = !{!"branch_weights", i32 1468, i32 0}
!450 = !{!"branch_weights", i32 0, i32 5134}
!451 = !{!"branch_weights", i32 5134, i32 0}
!452 = !{!"branch_weights", i32 1900, i32 0}
!453 = !{!"branch_weights", i32 2541, i32 2593}
!454 = distinct !{!454, !152, !153}
!455 = !{!"branch_weights", i32 53, i32 2519}
!456 = distinct !{!456, !152, !153}
!457 = !{!458, !141, i64 12}
!458 = !{!"simple_bitmap_def", !136, i64 0, !141, i64 8, !141, i64 12, !137, i64 16}
!459 = !{!"branch_weights", i32 239, i32 1}
!460 = !{!"branch_weights", i32 289, i32 239}
!461 = distinct !{!461, !152, !153}
!462 = !{!"branch_weights", i32 48, i32 0}
!463 = distinct !{!463, !152, !153}
!464 = distinct !{!464, !152, !153}
!465 = distinct !{!465, !152, !153}
!466 = !{!458, !136, i64 0}
!467 = !{!"dse.c;dse_step4"}
!468 = distinct !{!468, !152, !153}
!469 = !{!"function_entry_count", i64 294635}
!470 = !{!"dse.c;invariant_group_base_hash"}
!471 = !{!207, !136, i64 0}
!472 = !{!"function_entry_count", i64 477573}
!473 = !{!"dse.c;invariant_group_base_eq"}
!474 = !{!"dse.c;get_group_info"}
!475 = !{!"branch_weights", i32 0, i32 293615}
!476 = !{!"branch_weights", i32 1338, i32 292277}
!477 = !{!207, !141, i64 8}
!478 = !{!338, !141, i64 4}
!479 = !{!207, !136, i64 16}
!480 = !{!207, !136, i64 24}
!481 = !{!"branch_weights", i32 76, i32 1262}
!482 = !{!"branch_weights", i32 182, i32 1080}
!483 = distinct !{!483, !152, !153}
!484 = distinct !{!484, !152, !153}
!485 = distinct !{!485, !152, !153}
!486 = !{!"dse.c;free_store_info"}
!487 = !{!"function_entry_count", i64 1396840}
!488 = !{!"dse.c;check_mem_read_use"}
!489 = !{!"function_entry_count", i64 61456}
!490 = !{!"dse.c;record_store"}
!491 = !{!"function_entry_count", i64 4365467}
!492 = !{!"dse.c;check_mem_read_rtx"}
!493 = !{!"branch_weights", i32 0, i32 4365467}
!494 = !{!"branch_weights", i32 293825, i32 4071642}
!495 = !{!"branch_weights", i32 138132, i32 155693}
!496 = !{!234, !141, i64 24}
!497 = !{!"branch_weights", i32 -1597056964, i32 0}
!498 = !{!"branch_weights", i32 293779, i32 46}
!499 = !{!500, !136, i64 1184}
!500 = !{!"gcc_target", !501, i64 0, !503, i64 368, !504, i64 664, !141, i64 744, !136, i64 752, !136, i64 760, !136, i64 768, !136, i64 776, !136, i64 784, !136, i64 792, !136, i64 800, !136, i64 808, !136, i64 816, !136, i64 824, !136, i64 832, !136, i64 840, !136, i64 848, !136, i64 856, !136, i64 864, !136, i64 872, !136, i64 880, !136, i64 888, !136, i64 896, !136, i64 904, !136, i64 912, !136, i64 920, !136, i64 928, !136, i64 936, !136, i64 944, !136, i64 952, !136, i64 960, !136, i64 968, !136, i64 976, !136, i64 984, !136, i64 992, !136, i64 1000, !136, i64 1008, !136, i64 1016, !136, i64 1024, !136, i64 1032, !136, i64 1040, !136, i64 1048, !136, i64 1056, !142, i64 1064, !142, i64 1072, !136, i64 1080, !136, i64 1088, !136, i64 1096, !136, i64 1104, !136, i64 1112, !136, i64 1120, !136, i64 1128, !136, i64 1136, !136, i64 1144, !136, i64 1152, !136, i64 1160, !136, i64 1168, !505, i64 1176, !136, i64 1232, !136, i64 1240, !136, i64 1248, !136, i64 1256, !136, i64 1264, !136, i64 1272, !136, i64 1280, !136, i64 1288, !136, i64 1296, !136, i64 1304, !136, i64 1312, !136, i64 1320, !136, i64 1328, !136, i64 1336, !136, i64 1344, !136, i64 1352, !136, i64 1360, !136, i64 1368, !136, i64 1376, !136, i64 1384, !136, i64 1392, !136, i64 1400, !136, i64 1408, !136, i64 1416, !136, i64 1424, !136, i64 1432, !136, i64 1440, !136, i64 1448, !136, i64 1456, !142, i64 1464, !506, i64 1472, !136, i64 1664, !136, i64 1672, !136, i64 1680, !136, i64 1688, !136, i64 1696, !136, i64 1704, !136, i64 1712, !136, i64 1720, !136, i64 1728, !136, i64 1736, !136, i64 1744, !136, i64 1752, !136, i64 1760, !136, i64 1768, !136, i64 1776, !507, i64 1784, !508, i64 1792, !509, i64 1896, !510, i64 1968, !136, i64 2016, !137, i64 2024, !137, i64 2025, !137, i64 2026, !137, i64 2027, !137, i64 2028, !137, i64 2029, !137, i64 2030, !137, i64 2031, !137, i64 2032, !137, i64 2033, !137, i64 2034, !137, i64 2035}
!501 = !{!"asm_out", !136, i64 0, !136, i64 8, !136, i64 16, !502, i64 24, !502, i64 56, !136, i64 88, !136, i64 96, !136, i64 104, !136, i64 112, !136, i64 120, !136, i64 128, !136, i64 136, !136, i64 144, !136, i64 152, !136, i64 160, !136, i64 168, !136, i64 176, !136, i64 184, !136, i64 192, !136, i64 200, !136, i64 208, !136, i64 216, !136, i64 224, !136, i64 232, !136, i64 240, !136, i64 248, !136, i64 256, !136, i64 264, !136, i64 272, !136, i64 280, !136, i64 288, !136, i64 296, !136, i64 304, !136, i64 312, !136, i64 320, !136, i64 328, !136, i64 336, !136, i64 344, !136, i64 352, !136, i64 360}
!502 = !{!"asm_int_op", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24}
!503 = !{!"sched", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96, !136, i64 104, !136, i64 112, !136, i64 120, !136, i64 128, !136, i64 136, !136, i64 144, !136, i64 152, !136, i64 160, !136, i64 168, !136, i64 176, !136, i64 184, !136, i64 192, !136, i64 200, !136, i64 208, !136, i64 216, !136, i64 224, !136, i64 232, !136, i64 240, !136, i64 248, !136, i64 256, !136, i64 264, !136, i64 272, !136, i64 280, !136, i64 288}
!504 = !{!"vectorize", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72}
!505 = !{!"addr_space", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48}
!506 = !{!"calls", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96, !136, i64 104, !136, i64 112, !136, i64 120, !136, i64 128, !136, i64 136, !136, i64 144, !136, i64 152, !136, i64 160, !136, i64 168, !136, i64 176, !136, i64 184}
!507 = !{!"c", !136, i64 0}
!508 = !{!"cxx", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !136, i64 64, !136, i64 72, !136, i64 80, !136, i64 88, !136, i64 96}
!509 = !{!"emutls", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40, !136, i64 48, !136, i64 56, !137, i64 64, !137, i64 65}
!510 = !{!"target_option_hooks", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !136, i64 40}
!511 = !{!"branch_weights", i32 138199, i32 319482}
!512 = !{!234, !137, i64 32}
!513 = !{!"VP", i32 0, i64 293779, i64 -6774708585206560366, i64 293779}
!514 = !{!"branch_weights", i32 457681, i32 0}
!515 = !{!"branch_weights", i32 457681, i32 164066}
!516 = !{!"branch_weights", i32 0, i32 164066}
!517 = !{!"branch_weights", i32 621747, i32 0}
!518 = !{!"branch_weights", i32 22888, i32 598859}
!519 = !{!"branch_weights", i32 75470, i32 546277}
!520 = !{!"branch_weights", i32 75470, i32 0}
!521 = !{!"branch_weights", i32 138432, i32 483315}
!522 = !{!"branch_weights", i32 200, i32 0, i32 0, i32 0, i32 0, i32 292702, i32 0, i32 328845}
!523 = !{!"branch_weights", i32 0, i32 328845}
!524 = !{!"branch_weights", i32 856, i32 327989}
!525 = !{!"branch_weights", i32 57, i32 327932}
!526 = !{!"branch_weights", i32 328132, i32 293615}
!527 = !{!"branch_weights", i32 293615, i32 0}
!528 = distinct !{!528, !152, !153}
!529 = !{!"branch_weights", i32 88, i32 163978}
!530 = !{!"branch_weights", i32 88, i32 0}
!531 = !{!"branch_weights", i32 163978, i32 0}
!532 = !{!533, !141, i64 4}
!533 = !{!"cselib_val_struct", !141, i64 0, !141, i64 4, !136, i64 8, !136, i64 16, !136, i64 24, !136, i64 32}
!534 = !{!533, !141, i64 0}
!535 = !{!"branch_weights", i32 0, i32 293779}
!536 = !{!192, !141, i64 0}
!537 = !{!192, !136, i64 16}
!538 = !{!192, !141, i64 8}
!539 = !{!192, !141, i64 12}
!540 = !{!"branch_weights", i32 293779, i32 0}
!541 = !{!"branch_weights", i32 600, i32 293179}
!542 = !{!"branch_weights", i32 270089, i32 23690}
!543 = distinct !{!543, !152, !153}
!544 = distinct !{!544, !152, !153}
!545 = !{!"branch_weights", i32 293179, i32 600}
!546 = !{!"branch_weights", i32 293179, i32 0}
!547 = !{!"branch_weights", i32 293179, i32 188151}
!548 = !{!"branch_weights", i32 0, i32 188151}
!549 = distinct !{!549, !152, !153}
!550 = !{!"branch_weights", i32 187734, i32 417}
!551 = !{!"branch_weights", i32 25, i32 392}
!552 = !{!"branch_weights", i32 0, i32 25}
!553 = !{!"branch_weights", i32 25, i32 0}
!554 = !{!"branch_weights", i32 188151, i32 0}
!555 = distinct !{!555, !152, !153}
!556 = !{!"branch_weights", i32 600, i32 0}
!557 = !{!"branch_weights", i32 600, i32 185}
!558 = !{!"branch_weights", i32 185, i32 0}
!559 = distinct !{!559, !152, !153}
!560 = !{!"branch_weights", i32 105, i32 80}
!561 = !{!"branch_weights", i32 80, i32 0}
!562 = !{!"branch_weights", i32 0, i32 80}
!563 = !{!"branch_weights", i32 0, i32 185}
!564 = distinct !{!564, !152, !153}
!565 = !{!"function_entry_count", i64 163902}
!566 = !{!"dse.c;canon_address"}
!567 = !{!"VP", i32 0, i64 163902, i64 -6774708585206560366, i64 163902}
!568 = distinct !{!568, !152, !153}
!569 = distinct !{!569, !152, !153}
!570 = distinct !{!570, !152, !153}
!571 = distinct !{!571, !152, !153}
!572 = distinct !{!572, !152, !153}
!573 = !{!574, !141, i64 0}
!574 = !{!"insn_size", !141, i64 0, !136, i64 8}
!575 = !{!574, !136, i64 8}
!576 = !{!"function_entry_count", i64 4679}
!577 = !{!"dse.c;mark_reachable_blocks"}
!578 = !{!"branch_weights", i32 2107, i32 2572}
!579 = !{!"branch_weights", i32 0, i32 7198}
!580 = !{!"branch_weights", i32 15, i32 7183}
!581 = !{!"branch_weights", i32 2572, i32 4626}
!582 = !{!312, !136, i64 0}
!583 = !{!"branch_weights", i32 0, i32 4626}
!584 = !{!"branch_weights", i32 4626, i32 0}
!585 = distinct !{!585, !152, !153}
!586 = distinct !{!586, !152, !153}
!587 = distinct !{!587, !152, !153}
!588 = !{!"function_entry_count", i64 6821}
!589 = !{!"dse.c;scan_reads_nospill"}
!590 = !{!"branch_weights", i32 6821, i32 0}
!591 = distinct !{!591, !152, !153}
!592 = !{!"branch_weights", i32 4317, i32 2504}
!593 = !{!"branch_weights", i32 0, i32 48569}
!594 = !{!"branch_weights", i32 46065, i32 2504}
!595 = !{!"branch_weights", i32 2504, i32 46065}
!596 = !{!"branch_weights", i32 43561, i32 2504}
!597 = !{!"branch_weights", i32 442, i32 2062}
!598 = !{!"branch_weights", i32 0, i32 442}
!599 = !{!"branch_weights", i32 441, i32 1}
!600 = !{!"branch_weights", i32 1704, i32 64}
!601 = !{!"branch_weights", i32 1704, i32 0}
!602 = !{!"branch_weights", i32 12, i32 52}
!603 = !{!"branch_weights", i32 52, i32 1716}
!604 = !{!"branch_weights", i32 1712, i32 4}
!605 = !{!"branch_weights", i32 1327, i32 441}
!606 = distinct !{!606, !152, !153}
!607 = !{!"branch_weights", i32 188, i32 1874}
!608 = !{!"branch_weights", i32 81, i32 107}
!609 = !{!"branch_weights", i32 77, i32 30}
!610 = distinct !{!610, !152, !153}
!611 = !{!"branch_weights", i32 2504, i32 0}
!612 = distinct !{!612, !152, !153}
!613 = !{!"function_entry_count", i64 53}
!614 = !{!"dse.c;dse_confluence_0"}
!615 = !{!"branch_weights", i32 15, i32 38}
!616 = !{!"function_entry_count", i64 9252}
!617 = !{!"dse.c;dse_confluence_n"}
!618 = !{!"branch_weights", i32 0, i32 9252}
!619 = !{!"branch_weights", i32 2519, i32 6733}
!620 = !{!"function_entry_count", i64 5091}
!621 = !{!"dse.c;dse_transfer_function"}
!622 = !{!"branch_weights", i32 2943, i32 2148}
!623 = !{!"branch_weights", i32 0, i32 2148}
!624 = !{!"branch_weights", i32 1074, i32 1074}
!625 = !{!"branch_weights", i32 1498, i32 1445}
