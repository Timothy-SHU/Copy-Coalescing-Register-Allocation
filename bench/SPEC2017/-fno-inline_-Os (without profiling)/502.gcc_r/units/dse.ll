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
%struct.clear_alias_mode_holder = type { i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.bb_info = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.insn_info = type { i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.store_info = type { i8, i8, i32, ptr, ptr, ptr, i32, i64, i64, %union.anon, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.group_info = type { ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.deferred_change = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.VEC_group_info_t_base = type { i32, i32, [1 x ptr] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.read_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.insn_size = type { i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dse_record_singleton_alias_set(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.clear_alias_mode_holder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call fastcc zeroext i8 @gate_dse() #20, !range !5
  %5 = icmp ne i8 %4, 0
  %6 = icmp ne i32 %0, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %12, ptr @clear_alias_sets, align 8, !tbaa !6
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %13, ptr @disqualified_clear_alias_sets, align 8, !tbaa !6
  %14 = tail call ptr @htab_create(i64 noundef 11, ptr noundef nonnull @clear_alias_mode_hash, ptr noundef nonnull @clear_alias_mode_eq, ptr noundef null) #21
  store ptr %14, ptr @clear_alias_mode_table, align 8, !tbaa !6
  %15 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 8, i64 noundef 100) #21
  store ptr %15, ptr @clear_alias_mode_pool, align 8, !tbaa !6
  %16 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %0) #21
  store i32 %0, ptr %3, align 4, !tbaa !10
  %20 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !6
  %21 = call ptr @htab_find_slot(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 1) #21
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2968, ptr noundef nonnull @.str.2) #21
  br label %25

25:                                               ; preds = %17, %24
  %26 = load ptr, ptr @clear_alias_mode_pool, align 8, !tbaa !6
  %27 = call ptr @pool_alloc(ptr noundef %26) #21
  store ptr %27, ptr %21, align 8, !tbaa !6
  store i32 %0, ptr %27, align 4, !tbaa !10
  %28 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %27, i64 0, i32 1
  store i32 %1, ptr %28, align 4, !tbaa !13
  br label %29

29:                                               ; preds = %2, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gate_dse() unnamed_addr #0 {
  %1 = tail call zeroext i8 @gate_dse1() #20, !range !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @gate_dse2() #20, !range !5
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i8 [ 1, %0 ], [ %4, %3 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @clear_alias_mode_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 4, !tbaa !10
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @clear_alias_mode_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !10
  %4 = load i32, ptr %1, align 4, !tbaa !10
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dse_invalidate_singleton_alias_set(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gate_dse() #20, !range !5
  %3 = icmp ne i8 %2, 0
  %4 = icmp ne i32 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  %8 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %7, i32 noundef %0) #21
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_dse1() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !14
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 11) #21
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_dse() #0 {
  %1 = tail call i32 @df_set_flags(i32 noundef 32) #21
  tail call void @df_note_add_problem() #21
  tail call void @df_analyze() #21
  tail call fastcc void @dse_step0() #20
  tail call fastcc void @dse_step1() #20
  tail call fastcc void @dse_step2_init() #20
  %2 = tail call fastcc zeroext i8 @dse_step2_nospill() #20, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @df_set_flags(i32 noundef 1) #21
  tail call void @df_analyze() #21
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %8, %4
  tail call fastcc void @dse_step3(i8 noundef zeroext 0) #20
  tail call fastcc void @dse_step4() #20
  tail call fastcc void @dse_step5_nospill() #20
  br label %11

11:                                               ; preds = %10, %0
  %12 = phi i8 [ 1, %10 ], [ 0, %0 ]
  %13 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @dse_step2_spill() #20, !range !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  br i1 %3, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call i32 @df_set_flags(i32 noundef 1) #21
  tail call void @df_analyze() #21
  br label %21

21:                                               ; preds = %19, %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 30, i64 1, ptr nonnull %22)
  br label %26

26:                                               ; preds = %24, %21
  tail call fastcc void @dse_step3(i8 noundef zeroext 1) #20
  tail call fastcc void @dse_step4() #20
  tail call fastcc void @dse_step5_spill() #20
  br label %27

27:                                               ; preds = %26, %15, %11
  %28 = phi i8 [ 1, %26 ], [ %12, %15 ], [ %12, %11 ]
  tail call fastcc void @dse_step6() #20
  tail call fastcc void @dse_step7(i8 noundef zeroext %28) #20
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr @locally_deleted, align 4, !tbaa !14
  %33 = load i32, ptr @globally_deleted, align 4, !tbaa !14
  %34 = load i32, ptr @spill_deleted, align 4, !tbaa !14
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.7, i32 noundef %32, i32 noundef %33, i32 noundef %34) #20
  br label %36

36:                                               ; preds = %31, %27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_dse2() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !14
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 12) #21
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step0() unnamed_addr #0 {
  store i32 0, ptr @locally_deleted, align 4, !tbaa !14
  store i32 0, ptr @globally_deleted, align 4, !tbaa !14
  store i32 0, ptr @spill_deleted, align 4, !tbaa !14
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %1, ptr @scratch, align 8, !tbaa !6
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 104, i64 noundef 100) #21
  store ptr %2, ptr @rtx_store_info_pool, align 8, !tbaa !6
  %3 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.9, i64 noundef 32, i64 noundef 100) #21
  store ptr %3, ptr @read_info_pool, align 8, !tbaa !6
  %4 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.10, i64 noundef 48, i64 noundef 100) #21
  store ptr %4, ptr @insn_info_pool, align 8, !tbaa !6
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.11, i64 noundef 56, i64 noundef 100) #21
  store ptr %5, ptr @bb_info_pool, align 8, !tbaa !6
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 96, i64 noundef 100) #21
  store ptr %6, ptr @rtx_group_info_pool, align 8, !tbaa !6
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.13, i64 noundef 24, i64 noundef 10) #21
  store ptr %7, ptr @deferred_change_pool, align 8, !tbaa !6
  %8 = tail call ptr @htab_create(i64 noundef 11, ptr noundef nonnull @invariant_group_base_hash, ptr noundef nonnull @invariant_group_base_eq, ptr noundef null) #21
  store ptr %8, ptr @rtx_group_table, align 8, !tbaa !6
  %9 = load ptr, ptr @cfun, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #21
  store ptr %15, ptr @bb_table, align 8, !tbaa !6
  store i32 0, ptr @rtx_group_next_id, align 4, !tbaa !14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i8
  store i8 %21, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !19
  tail call void @init_alias_analysis() #21
  %22 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %0
  %25 = tail call fastcc ptr @get_group_info(ptr noundef null) #20
  br label %26

26:                                               ; preds = %0, %24
  %27 = phi ptr [ %25, %24 ], [ null, %0 ]
  store ptr %27, ptr @clear_alias_group, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step1() unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  tail call void @cselib_init(i32 noundef 0) #21
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %2, ptr @all_blocks, align 8, !tbaa !6
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef 0) #21
  %4 = load ptr, ptr @all_blocks, align 8, !tbaa !6
  %5 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef 1) #21
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %203, label %11

11:                                               ; preds = %0, %199
  %12 = phi ptr [ %201, %199 ], [ %9, %0 ]
  %13 = load ptr, ptr @bb_info_pool, align 8, !tbaa !6
  %14 = tail call ptr @pool_alloc(ptr noundef %13) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, i8 0, i64 56, i1 false)
  %15 = load ptr, ptr @all_blocks, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !20
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %17) #21
  %19 = getelementptr inbounds %struct.bb_info, ptr %14, i64 0, i32 6
  store ptr %1, ptr %19, align 8, !tbaa !23
  %20 = load i32, ptr %16, align 8, !tbaa !20
  %21 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %20) #20
  %22 = getelementptr inbounds %struct.df_lr_bb_info, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %23) #21
  tail call void @df_simulate_initialize_forwards(ptr noundef nonnull %12, ptr noundef %1) #21
  %24 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %25 = load i32, ptr %16, align 8, !tbaa !20
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  store ptr %14, ptr %27, align 8, !tbaa !6
  store ptr @remove_useless_values, ptr @cselib_discard_hook, align 8, !tbaa !6
  %28 = icmp sgt i32 %25, 1
  br i1 %28, label %29, label %199

29:                                               ; preds = %11
  %30 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.14, i64 noundef 104, i64 noundef 100) #21
  store ptr %30, ptr @cse_store_info_pool, align 8, !tbaa !6
  store ptr null, ptr @active_local_stores, align 8, !tbaa !6
  tail call void @cselib_clear_table() #21
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %29, %55
  %36 = phi ptr [ %57, %55 ], [ %33, %29 ]
  %37 = load ptr, ptr %31, align 8, !tbaa !19
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %36, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call fastcc void @scan_insn(ptr noundef %14, ptr noundef nonnull %36) #20
  br label %49

49:                                               ; preds = %43, %48
  tail call void @cselib_process_insn(ptr noundef nonnull %36) #21
  %50 = load i32, ptr %36, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void @df_simulate_one_insn_forwards(ptr noundef nonnull %12, ptr noundef nonnull %36, ptr noundef %1) #21
  br label %55

55:                                               ; preds = %49, %54
  %56 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %35, !llvm.loop !29

59:                                               ; preds = %35, %55, %29
  %60 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !19
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %123, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  %65 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %64) #20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %62
  %68 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %12) #20, !range !5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %123, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @single_succ(ptr noundef nonnull %12) #20
  %72 = load ptr, ptr @cfun, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !15
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !32
  %77 = icmp ne ptr %71, %76
  %78 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  %79 = icmp ne i8 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  %81 = load ptr, ptr @active_local_stores, align 8
  %82 = icmp eq ptr %81, null
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %123, label %87

84:                                               ; preds = %62
  %85 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %123, label %87

87:                                               ; preds = %84, %70
  %88 = phi ptr [ %85, %84 ], [ %81, %70 ]
  br label %89

89:                                               ; preds = %87, %119
  %90 = phi ptr [ %121, %119 ], [ %88, %87 ]
  %91 = getelementptr inbounds %struct.insn_info, ptr %90, i64 0, i32 6
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi ptr [ %91, %89 ], [ %97, %92 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = load i8, ptr %94, align 8, !tbaa !33
  %96 = icmp eq i8 %95, 0
  %97 = getelementptr inbounds %struct.store_info, ptr %94, i64 0, i32 10
  br i1 %96, label %92, label %98, !llvm.loop !35

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.store_info, ptr %94, i64 0, i32 6
  %100 = load i32, ptr %99, align 8, !tbaa !36
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i8, ptr %90, align 8, !tbaa !37
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102, %98
  %106 = getelementptr inbounds %struct.store_info, ptr %94, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !39
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load ptr, ptr @rtx_group_vec, align 8
  %111 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %110, i32 noundef %107) #20
  %112 = getelementptr inbounds %struct.group_info, ptr %111, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !40
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i8, ptr %90, align 8, !tbaa !37
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %102
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %90) #20
  br label %119

119:                                              ; preds = %118, %109, %115, %105
  %120 = getelementptr inbounds %struct.insn_info, ptr %90, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %89, !llvm.loop !42

123:                                              ; preds = %119, %84, %70, %67, %59
  %124 = load ptr, ptr @deferred_change_list, align 8, !tbaa !6
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %129, %123
  %127 = load ptr, ptr %14, align 8, !tbaa !6
  %128 = icmp eq ptr %127, null
  br i1 %128, label %197, label %138

129:                                              ; preds = %123, %129
  %130 = phi ptr [ %132, %129 ], [ %124, %123 ]
  %131 = getelementptr inbounds %struct.deferred_change, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !43
  %133 = getelementptr inbounds %struct.deferred_change, ptr %130, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = load ptr, ptr %130, align 8, !tbaa !46
  store ptr %134, ptr %135, align 8, !tbaa !6
  %136 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %136, ptr noundef nonnull %130) #21
  store ptr %132, ptr @deferred_change_list, align 8, !tbaa !6
  %137 = icmp eq ptr %132, null
  br i1 %137, label %126, label %129, !llvm.loop !47

138:                                              ; preds = %126, %193
  %139 = phi ptr [ %195, %193 ], [ %127, %126 ]
  %140 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 4
  %141 = load i8, ptr %140, align 4, !tbaa !48
  %142 = icmp eq i8 %141, 0
  %143 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = icmp eq ptr %144, null
  br i1 %142, label %180, label %146

146:                                              ; preds = %138
  br i1 %145, label %179, label %147

147:                                              ; preds = %146, %151
  %148 = phi ptr [ %153, %151 ], [ %144, %146 ]
  %149 = load i8, ptr %148, align 8, !tbaa !33
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.store_info, ptr %148, i64 0, i32 10
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = icmp eq ptr %153, null
  br i1 %154, label %179, label %147, !llvm.loop !49

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.store_info, ptr %148, i64 0, i32 13
  %157 = load ptr, ptr %156, align 8, !tbaa !50
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.insn_info, ptr %157, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !51
  %162 = icmp eq ptr %161, null
  br i1 %162, label %178, label %163

163:                                              ; preds = %159
  %164 = load i8, ptr %139, align 8, !tbaa !37
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %168 = icmp eq ptr %167, null
  br i1 %168, label %177, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !51
  %172 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !19
  %174 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !19
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %167, ptr noundef nonnull @.str.15, i32 noundef %173, i32 noundef %175) #20
  br label %177

177:                                              ; preds = %169, %166
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %139) #20
  br label %178

178:                                              ; preds = %155, %159, %163, %177
  store ptr null, ptr %156, align 8, !tbaa !50
  br label %179

179:                                              ; preds = %151, %146, %178
  tail call fastcc void @free_store_info(ptr noundef nonnull %139) #20
  br label %193

180:                                              ; preds = %138
  br i1 %145, label %193, label %181

181:                                              ; preds = %180, %189
  %182 = phi ptr [ %191, %189 ], [ %144, %180 ]
  %183 = getelementptr inbounds %struct.store_info, ptr %182, i64 0, i32 1
  %184 = load i8, ptr %183, align 1, !tbaa !52
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.store_info, ptr %182, i64 0, i32 9
  %188 = load ptr, ptr %187, align 8, !tbaa !19
  tail call void @bitmap_obstack_free(ptr noundef %188) #21
  store ptr null, ptr %187, align 8, !tbaa !19
  store i8 0, ptr %183, align 1, !tbaa !52
  br label %189

189:                                              ; preds = %181, %186
  %190 = getelementptr inbounds %struct.store_info, ptr %182, i64 0, i32 10
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %181, !llvm.loop !53

193:                                              ; preds = %189, %180, %179
  %194 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 8
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %138, !llvm.loop !54

197:                                              ; preds = %193, %126
  %198 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %198) #21
  br label %199

199:                                              ; preds = %197, %11
  store ptr null, ptr %19, align 8, !tbaa !23
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %11, !llvm.loop !55

203:                                              ; preds = %199, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  tail call void @cselib_finish() #21
  %204 = load ptr, ptr @rtx_group_table, align 8, !tbaa !6
  tail call void @htab_empty(ptr noundef %204) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step2_init() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %2 = load ptr, ptr @rtx_group_vec, align 8
  %3 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #20, !range !56
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %66, label %5

5:                                                ; preds = %0, %61
  %6 = phi i32 [ %62, %61 ], [ 0, %0 ]
  %7 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !19
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  br i1 %8, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !40
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %16, ptr noundef %18) #21
  %20 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %21, ptr noundef %23) #21
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %25, ptr noundef nonnull @.str.59, i32 noundef %6) #20
  br label %29

29:                                               ; preds = %14, %27, %10, %5
  %30 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !61
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !61
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #21
  %36 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 11
  store ptr %35, ptr %36, align 8, !tbaa !62
  %37 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 14
  %38 = load i32, ptr %37, align 4, !tbaa !63
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !63
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = tail call ptr @xmalloc(i64 noundef %41) #21
  %43 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 12
  store ptr %42, ptr %43, align 8, !tbaa !64
  %44 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 2
  store i8 0, ptr %44, align 4, !tbaa !65
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = tail call i64 @bitmap_count_bits(ptr noundef %49) #21
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = tail call i64 @bitmap_count_bits(ptr noundef %53) #21
  %55 = trunc i64 %54 to i32
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.60, i32 noundef %6, i32 noundef %51, i32 noundef %55) #20
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %58 = load ptr, ptr %48, align 8, !tbaa !57
  tail call void @bitmap_print(ptr noundef %57, ptr noundef %58, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #21
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %60 = load ptr, ptr %52, align 8, !tbaa !59
  tail call void @bitmap_print(ptr noundef %59, ptr noundef %60, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.31) #21
  br label %61

61:                                               ; preds = %29, %47
  %62 = add i32 %6, 1
  %63 = load ptr, ptr @rtx_group_vec, align 8
  %64 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %63, i32 noundef %62, ptr noundef nonnull %1) #20, !range !56
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %5, !llvm.loop !66

66:                                               ; preds = %61, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dse_step2_nospill() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  store i32 1, ptr @current_position, align 4, !tbaa !14
  %4 = load ptr, ptr @rtx_group_vec, align 8
  %5 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %1) #20, !range !56
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %73, label %7

7:                                                ; preds = %0, %64
  %8 = phi i32 [ %65, %64 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  %10 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %64, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !61
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 14
  %22 = load i32, ptr %21, align 4, !tbaa !63
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  tail call void @bitmap_clear(ptr noundef %26) #21
  %27 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %28, ptr noundef nonnull %3) #20
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 2
  br label %33

33:                                               ; preds = %31, %33
  %34 = load ptr, ptr %25, align 8, !tbaa !67
  %35 = load i32, ptr @current_position, align 4, !tbaa !14
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %35) #21
  %37 = load i32, ptr @current_position, align 4, !tbaa !14
  %38 = add i32 %37, 1
  store i32 %38, ptr @current_position, align 4, !tbaa !14
  %39 = load ptr, ptr %13, align 8, !tbaa !62
  %40 = load i32, ptr %3, align 4, !tbaa !14
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 %37, ptr %42, align 4, !tbaa !14
  store i8 1, ptr %32, align 4, !tbaa !65
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !5
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %33, !llvm.loop !68

45:                                               ; preds = %33, %12
  %46 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %47, ptr noundef nonnull %3) #20
  %48 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !5
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 2
  br label %52

52:                                               ; preds = %50, %52
  %53 = load ptr, ptr %25, align 8, !tbaa !67
  %54 = load i32, ptr @current_position, align 4, !tbaa !14
  %55 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %53, i32 noundef %54) #21
  %56 = load i32, ptr @current_position, align 4, !tbaa !14
  %57 = add i32 %56, 1
  store i32 %57, ptr @current_position, align 4, !tbaa !14
  %58 = load ptr, ptr %19, align 8, !tbaa !64
  %59 = load i32, ptr %3, align 4, !tbaa !14
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  store i32 %56, ptr %61, align 4, !tbaa !14
  store i8 1, ptr %51, align 4, !tbaa !65
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %62 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !5
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %52, !llvm.loop !69

64:                                               ; preds = %52, %45, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  %65 = add i32 %8, 1
  %66 = load ptr, ptr @rtx_group_vec, align 8
  %67 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %66, i32 noundef %65, ptr noundef nonnull %1) #20, !range !56
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %7, !llvm.loop !70

69:                                               ; preds = %64
  %70 = load i32, ptr @current_position, align 4, !tbaa !14
  %71 = icmp ne i32 %70, 1
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %69, %0
  %74 = phi i8 [ %72, %69 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret i8 %74
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step3(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca %struct.sbitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  tail call void @sbitmap_ones(ptr noundef %10) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %1, %50
  %17 = phi ptr [ %52, %50 ], [ %14, %1 ]
  %18 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !20
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.bb_info, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  tail call void @bitmap_clear(ptr noundef nonnull %25) #21
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %29, ptr %24, align 8, !tbaa !71
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, ptr %19, align 8, !tbaa !20
  switch i32 %31, label %33 [
    i32 0, label %34
    i32 1, label %32
  ]

32:                                               ; preds = %30
  tail call fastcc void @dse_step3_exit_block_scan(ptr noundef nonnull %23) #20
  br label %34

33:                                               ; preds = %30
  tail call fastcc void @dse_step3_scan(i8 noundef zeroext %0, ptr noundef nonnull %17) #20
  br label %34

34:                                               ; preds = %30, %32, %33
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call fastcc void @mark_reachable_blocks(ptr noundef %10, ptr noundef nonnull %17) #20
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.bb_info, ptr %23, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @bitmap_obstack_free(ptr noundef nonnull %42) #21
  store ptr null, ptr %41, align 8, !tbaa !72
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.bb_info, ptr %23, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @bitmap_obstack_free(ptr noundef nonnull %47) #21
  store ptr null, ptr %46, align 8, !tbaa !73
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !llvm.loop !74

54:                                               ; preds = %50, %1
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %10) #20
  %55 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %54, %92
  %58 = phi ptr [ %93, %92 ], [ null, %54 ]
  %59 = load ptr, ptr @all_blocks, align 8, !tbaa !6
  %60 = load i32, ptr %3, align 4, !tbaa !14
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %59, i32 noundef %60) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = icmp eq ptr %58, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %70 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %71 = load ptr, ptr @rtx_group_vec, align 8
  %72 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %71, i32 noundef 0, ptr noundef nonnull %4) #20, !range !56
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69, %74
  %75 = phi i32 [ %80, %74 ], [ 0, %69 ]
  %76 = load ptr, ptr %4, align 8, !tbaa !6
  %77 = getelementptr inbounds %struct.group_info, ptr %76, i64 0, i32 10
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  %79 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %70, ptr noundef %78) #21
  %80 = add i32 %75, 1
  %81 = load ptr, ptr @rtx_group_vec, align 8
  %82 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %81, i32 noundef %80, ptr noundef nonnull %4) #20, !range !56
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %74, !llvm.loop !75

84:                                               ; preds = %74, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %85

85:                                               ; preds = %84, %63
  %86 = phi ptr [ %58, %63 ], [ %70, %84 ]
  %87 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !73
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %91, ptr %87, align 8, !tbaa !73
  tail call void @bitmap_copy(ptr noundef %91, ptr noundef %86) #21
  br label %92

92:                                               ; preds = %85, %90, %57
  %93 = phi ptr [ %58, %57 ], [ %86, %90 ], [ %86, %85 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #20
  %94 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !5
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %57, !llvm.loop !76

96:                                               ; preds = %92
  %97 = icmp eq ptr %93, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  tail call void @bitmap_obstack_free(ptr noundef nonnull %93) #21
  br label %99

99:                                               ; preds = %54, %98, %96
  %100 = load ptr, ptr %10, align 8, !tbaa !77
  tail call void @free(ptr noundef %100) #20
  tail call void @free(ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step4() unnamed_addr #0 {
  %1 = load ptr, ptr @all_blocks, align 8, !tbaa !6
  %2 = tail call ptr @df_get_postorder(i32 noundef 2) #21
  %3 = tail call i32 @df_get_n_blocks(i32 noundef 2) #21
  tail call void @df_simple_dataflow(i32 noundef 2, ptr noundef null, ptr noundef nonnull @dse_confluence_0, ptr noundef nonnull @dse_confluence_n, ptr noundef nonnull @dse_transfer_function, ptr noundef %1, ptr noundef %2, i32 noundef %3) #21
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 43, i64 1, ptr nonnull %4)
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %6, %53
  %14 = phi ptr [ %55, %53 ], [ %11, %6 ]
  %15 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !20
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @df_print_bb_index(ptr noundef nonnull %14, ptr noundef %21) #21
  %22 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !6
  br i1 %24, label %27, label %26

26:                                               ; preds = %13
  tail call void @bitmap_print(ptr noundef %25, ptr noundef nonnull %23, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.31) #21
  br label %29

27:                                               ; preds = %13
  %28 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 18, i64 1, ptr %25)
  br label %29

29:                                               ; preds = %27, %26
  %30 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !6
  br i1 %32, label %35, label %34

34:                                               ; preds = %29
  tail call void @bitmap_print(ptr noundef %33, ptr noundef nonnull %31, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.31) #21
  br label %37

35:                                               ; preds = %29
  %36 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 18, i64 1, ptr %33)
  br label %37

37:                                               ; preds = %35, %34
  %38 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !6
  br i1 %40, label %43, label %42

42:                                               ; preds = %37
  tail call void @bitmap_print(ptr noundef %41, ptr noundef nonnull %39, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.31) #21
  br label %45

43:                                               ; preds = %37
  %44 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 18, i64 1, ptr %41)
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = icmp eq ptr %47, null
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !6
  br i1 %48, label %51, label %50

50:                                               ; preds = %45
  tail call void @bitmap_print(ptr noundef %49, ptr noundef nonnull %47, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.31) #21
  br label %53

51:                                               ; preds = %45
  %52 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 19, i64 1, ptr %49)
  br label %53

53:                                               ; preds = %51, %50
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %13, !llvm.loop !80

57:                                               ; preds = %53, %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step5_nospill() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %156, label %21

10:                                               ; preds = %152
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %156, label %21, !llvm.loop !83

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %13, %12 ], [ %1, %0 ]
  %23 = phi ptr [ %15, %12 ], [ %6, %0 ]
  %24 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !20
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.bb_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = load ptr, ptr %29, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %12, label %34

34:                                               ; preds = %21, %152
  %35 = phi ptr [ %154, %152 ], [ %32, %21 ]
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !19
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %36, ptr noundef nonnull @.str.73, i32 noundef %44) #20
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @bitmap_print(ptr noundef %46, ptr noundef %31, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31) #21
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !51
  %50 = icmp eq ptr %49, null
  br i1 %50, label %152, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %116

56:                                               ; preds = %51
  %57 = load i8, ptr %35, align 8, !tbaa !37
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %56
  %60 = load ptr, ptr %31, align 8, !tbaa !84
  %61 = icmp eq ptr %60, null
  br i1 %61, label %116, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %63, %62 ], [ %69, %64 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load i8, ptr %66, align 8, !tbaa !33
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 10
  br i1 %68, label %64, label %70, !llvm.loop !86

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !36
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %70
  %75 = load ptr, ptr @rtx_group_vec, align 8
  %76 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !39
  %78 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %75, i32 noundef %77) #20
  %79 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 7
  %80 = load i64, ptr %79, align 8, !tbaa !87
  %81 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !88
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %74, %103
  %85 = phi i64 [ %104, %103 ], [ %80, %74 ]
  %86 = tail call fastcc i32 @get_bitmap_index(ptr noundef %78, i64 noundef %85) #20
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = trunc i64 %85 to i32
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.75, i32 noundef %90, i32 noundef %86) #20
  br label %92

92:                                               ; preds = %89, %84
  %93 = icmp eq i32 %86, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  %95 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %31, i32 noundef %86) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94, %92
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %97
  %101 = trunc i64 %85 to i32
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %98, ptr noundef nonnull @.str.76, i32 noundef %101) #20
  br label %116

103:                                              ; preds = %94
  %104 = add nsw i64 %85, 1
  %105 = load i64, ptr %81, align 8, !tbaa !88
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %84, label %107, !llvm.loop !89

107:                                              ; preds = %103, %74
  %108 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %48, align 8, !tbaa !51
  tail call fastcc void @check_for_inc_dec(ptr noundef %111) #20
  %112 = load ptr, ptr %48, align 8, !tbaa !51
  %113 = tail call ptr @delete_insn(ptr noundef %112) #21
  store ptr null, ptr %48, align 8, !tbaa !51
  %114 = load i32, ptr @globally_deleted, align 4, !tbaa !14
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr @globally_deleted, align 4, !tbaa !14
  br label %152

116:                                              ; preds = %97, %100, %70, %51, %107, %59, %56
  %117 = phi i1 [ true, %107 ], [ false, %51 ], [ false, %59 ], [ false, %56 ], [ false, %70 ], [ false, %100 ], [ false, %97 ]
  %118 = phi i1 [ false, %107 ], [ true, %51 ], [ true, %59 ], [ true, %56 ], [ true, %70 ], [ true, %100 ], [ true, %97 ]
  %119 = load ptr, ptr %48, align 8, !tbaa !51
  %120 = icmp eq ptr %119, null
  br i1 %120, label %152, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %119, align 8
  %123 = and i32 %122, 65535
  %124 = add nsw i32 %123, -7
  %125 = icmp ult i32 %124, 3
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = icmp ne i32 %123, 10
  %128 = or i1 %117, %127
  br i1 %128, label %152, label %130

129:                                              ; preds = %121
  br i1 %118, label %130, label %152

130:                                              ; preds = %126, %129
  %131 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !90
  tail call fastcc void @scan_stores_nospill(ptr noundef %132, ptr noundef %31, ptr noundef null) #20
  %133 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 1
  %134 = load i8, ptr %133, align 1, !tbaa !91
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 10, i64 1, ptr nonnull %137)
  br label %141

141:                                              ; preds = %139, %136
  tail call void @bitmap_clear(ptr noundef %31) #21
  br label %152

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !92
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 13, i64 1, ptr nonnull %147)
  br label %151

151:                                              ; preds = %149, %146
  tail call fastcc void @scan_reads_nospill(ptr noundef nonnull %35, ptr noundef %31, ptr noundef null) #20
  br label %152

152:                                              ; preds = %47, %110, %141, %151, %142, %129, %126, %116
  %153 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = icmp eq ptr %154, null
  br i1 %155, label %10, label %34, !llvm.loop !93

156:                                              ; preds = %12, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dse_step2_spill() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %3 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  store i32 1, ptr @current_position, align 4, !tbaa !14
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  tail call void @bitmap_print(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.31) #21
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %9 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !6
  tail call void @bitmap_print(ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.31) #21
  br label %10

10:                                               ; preds = %6, %0
  %11 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %16, i1 false)
  %17 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 14
  %20 = load i32, ptr %19, align 4, !tbaa !63
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %22, i1 false)
  %23 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  tail call void @bitmap_clear(ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !6
  %28 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %26, ptr noundef %27) #21
  %29 = load ptr, ptr %25, align 8, !tbaa !59
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %29, ptr noundef nonnull %1) #20
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !5
  %31 = icmp eq i8 %30, 0
  %32 = load i32, ptr @current_position, align 4, !tbaa !14
  br i1 %31, label %47, label %33

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %32, %33 ], [ %40, %35 ]
  %37 = load ptr, ptr %23, align 8, !tbaa !67
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %37, i32 noundef %36) #21
  %39 = load i32, ptr @current_position, align 4, !tbaa !14
  %40 = add i32 %39, 1
  store i32 %40, ptr @current_position, align 4, !tbaa !14
  %41 = load ptr, ptr %17, align 8, !tbaa !64
  %42 = load i32, ptr %1, align 4, !tbaa !14
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  store i32 %39, ptr %44, align 4, !tbaa !14
  store i8 1, ptr %34, align 4, !tbaa !65
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !5
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %35, !llvm.loop !94

47:                                               ; preds = %35, %10
  %48 = phi i32 [ %32, %10 ], [ %40, %35 ]
  %49 = icmp ne i32 %48, 1
  %50 = zext i1 %49 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step5_spill() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %115, label %21

10:                                               ; preds = %111
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %115, label %21, !llvm.loop !95

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %13, %12 ], [ %1, %0 ]
  %23 = phi ptr [ %15, %12 ], [ %6, %0 ]
  %24 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !20
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.bb_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = load ptr, ptr %29, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %12, label %34

34:                                               ; preds = %21, %111
  %35 = phi ptr [ %113, %111 ], [ %32, %21 ]
  %36 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %111, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %37, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -7
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load i8, ptr %35, align 8, !tbaa !37
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %44
  %48 = load ptr, ptr %31, align 8, !tbaa !84
  %49 = icmp eq ptr %48, null
  br i1 %49, label %92, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %50, %68
  %55 = phi ptr [ %71, %68 ], [ %52, %50 ]
  %56 = phi i8 [ %69, %68 ], [ 1, %50 ]
  %57 = getelementptr inbounds %struct.store_info, ptr %55, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !36
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %62 = sext i32 %58 to i64
  %63 = tail call fastcc i32 @get_bitmap_index(ptr noundef %61, i64 noundef %62) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %31, i32 noundef %63) #21
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %65, %54
  %69 = phi i8 [ 0, %54 ], [ %56, %65 ]
  %70 = getelementptr inbounds %struct.store_info, ptr %55, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %54, !llvm.loop !96

73:                                               ; preds = %68
  %74 = icmp eq i8 %69, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %50, %73
  %76 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %36, align 8, !tbaa !51
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !19
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.81, i32 noundef %84) #20
  br label %86

86:                                               ; preds = %81, %78
  %87 = load ptr, ptr %36, align 8, !tbaa !51
  tail call fastcc void @check_for_inc_dec(ptr noundef %87) #20
  %88 = load ptr, ptr %36, align 8, !tbaa !51
  %89 = tail call ptr @delete_insn(ptr noundef %88) #21
  %90 = load i32, ptr @spill_deleted, align 4, !tbaa !14
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr @spill_deleted, align 4, !tbaa !14
  store ptr null, ptr %36, align 8, !tbaa !51
  br label %111

92:                                               ; preds = %65, %60, %39, %73, %75, %47, %44
  %93 = phi i1 [ false, %73 ], [ true, %75 ], [ false, %39 ], [ false, %47 ], [ false, %44 ], [ false, %60 ], [ false, %65 ]
  %94 = phi i1 [ true, %73 ], [ false, %75 ], [ true, %39 ], [ true, %47 ], [ true, %44 ], [ true, %60 ], [ true, %65 ]
  %95 = load ptr, ptr %36, align 8, !tbaa !51
  %96 = icmp eq ptr %95, null
  br i1 %96, label %111, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %95, align 8
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -7
  %101 = icmp ult i32 %100, 3
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = icmp ne i32 %99, 10
  %104 = or i1 %93, %103
  br i1 %104, label %111, label %106

105:                                              ; preds = %97
  br i1 %94, label %106, label %111

106:                                              ; preds = %102, %105
  %107 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !90
  tail call fastcc void @scan_stores_spill(ptr noundef %108, ptr noundef %31, ptr noundef null) #20
  %109 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !92
  tail call fastcc void @scan_reads_spill(ptr noundef %110, ptr noundef %31, ptr noundef null) #20
  br label %111

111:                                              ; preds = %34, %86, %106, %105, %102, %92
  %112 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = icmp eq ptr %113, null
  br i1 %114, label %10, label %34, !llvm.loop !97

115:                                              ; preds = %12, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step6() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %72, label %6

6:                                                ; preds = %0, %68
  %7 = phi ptr [ %70, %68 ], [ %4, %0 ]
  %8 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %68, label %16

16:                                               ; preds = %6, %64
  %17 = phi ptr [ %66, %64 ], [ %14, %6 ]
  %18 = getelementptr inbounds %struct.insn_info, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -7
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %64

26:                                               ; preds = %21
  %27 = load i8, ptr %17, align 8, !tbaa !37
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.insn_info, ptr %17, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %29, %37
  %34 = phi ptr [ %39, %37 ], [ %31, %29 ]
  %35 = load i8, ptr %34, align 8, !tbaa !33
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.store_info, ptr %34, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %33, !llvm.loop !98

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.store_info, ptr %34, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.insn_info, ptr %43, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !19
  %60 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !19
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.15, i32 noundef %59, i32 noundef %61) #20
  br label %63

63:                                               ; preds = %57, %54
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %17) #20
  br label %64

64:                                               ; preds = %37, %29, %49, %21, %41, %45, %63, %26, %16
  %65 = getelementptr inbounds %struct.insn_info, ptr %17, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %16, !llvm.loop !99

68:                                               ; preds = %64, %6
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %6, !llvm.loop !100

72:                                               ; preds = %68, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step7(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = load ptr, ptr @rtx_group_vec, align 8
  %4 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #20, !range !56
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %23, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  tail call void @free(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  tail call void @free(ptr noundef %12) #20
  %13 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  tail call void @bitmap_obstack_free(ptr noundef %14) #21
  store ptr null, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  tail call void @bitmap_obstack_free(ptr noundef %16) #21
  store ptr null, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  tail call void @bitmap_obstack_free(ptr noundef %18) #21
  store ptr null, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  tail call void @bitmap_obstack_free(ptr noundef %20) #21
  store ptr null, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  tail call void @bitmap_obstack_free(ptr noundef %22) #21
  store ptr null, ptr %21, align 8, !tbaa !67
  %23 = add i32 %7, 1
  %24 = load ptr, ptr @rtx_group_vec, align 8
  %25 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %2) #20, !range !56
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %6, !llvm.loop !101

27:                                               ; preds = %6, %1
  %28 = icmp eq i8 %0, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr @cfun, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %29, %59
  %36 = phi ptr [ %61, %59 ], [ %33, %29 ]
  %37 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !20
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  tail call void @bitmap_obstack_free(ptr noundef %44) #21
  store ptr null, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  tail call void @bitmap_obstack_free(ptr noundef nonnull %46) #21
  store ptr null, ptr %45, align 8, !tbaa !79
  br label %49

49:                                               ; preds = %48, %35
  %50 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @bitmap_obstack_free(ptr noundef nonnull %51) #21
  store ptr null, ptr %50, align 8, !tbaa !72
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @bitmap_obstack_free(ptr noundef nonnull %56) #21
  store ptr null, ptr %55, align 8, !tbaa !73
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %35, !llvm.loop !102

63:                                               ; preds = %59, %29, %27
  %64 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  tail call void @bitmap_obstack_free(ptr noundef nonnull %64) #21
  store ptr null, ptr @clear_alias_sets, align 8, !tbaa !6
  %67 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %67) #21
  store ptr null, ptr @disqualified_clear_alias_sets, align 8, !tbaa !6
  %68 = load ptr, ptr @clear_alias_mode_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %68) #21
  %69 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !6
  tail call void @htab_delete(ptr noundef %69) #21
  br label %70

70:                                               ; preds = %66, %63
  tail call void @end_alias_analysis() #21
  %71 = load ptr, ptr @bb_table, align 8, !tbaa !6
  tail call void @free(ptr noundef %71) #20
  %72 = load ptr, ptr @rtx_group_table, align 8, !tbaa !6
  tail call void @htab_delete(ptr noundef %72) #21
  tail call fastcc void @VEC_group_info_t_heap_free() #20
  %73 = load ptr, ptr @all_blocks, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %73) #21
  store ptr null, ptr @all_blocks, align 8, !tbaa !6
  %74 = load ptr, ptr @scratch, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %74) #21
  store ptr null, ptr @scratch, align 8, !tbaa !6
  %75 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %75) #21
  %76 = load ptr, ptr @read_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %76) #21
  %77 = load ptr, ptr @insn_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %77) #21
  %78 = load ptr, ptr @bb_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %78) #21
  %79 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %79) #21
  %80 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !6
  tail call void @free_alloc_pool(ptr noundef %80) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @invariant_group_base_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !103
  %4 = call i32 @hash_rtx(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @invariant_group_base_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !103
  %4 = load ptr, ptr %1, align 8, !tbaa !103
  %5 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %4) #21
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_group_info(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.group_info, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !103
  %5 = load ptr, ptr @rtx_group_table, align 8, !tbaa !6
  %6 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 1) #21
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %60

9:                                                ; preds = %1
  %10 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !6
  %14 = tail call ptr @pool_alloc(ptr noundef %13) #21
  store ptr %14, ptr @clear_alias_group, align 8, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %14, i8 0, i64 96, i1 false)
  %15 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !14
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @rtx_group_next_id, align 4, !tbaa !14
  %17 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 1
  store i32 %15, ptr %17, align 8, !tbaa !104
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %19 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !58
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %21 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 7
  store ptr %20, ptr %21, align 8, !tbaa !60
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %23 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 8
  store ptr %22, ptr %23, align 8, !tbaa !57
  %24 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %25 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 9
  store ptr %24, ptr %25, align 8, !tbaa !59
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %27 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 10
  store ptr %26, ptr %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 2
  store i8 0, ptr %28, align 4, !tbaa !65
  %29 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  tail call fastcc void @VEC_group_info_t_heap_safe_push(ptr noundef %14) #20
  %30 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  br label %60

31:                                               ; preds = %4
  %32 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !6
  %33 = call ptr @pool_alloc(ptr noundef %32) #21
  store ptr %33, ptr %6, align 8, !tbaa !6
  store ptr %0, ptr %33, align 8, !tbaa !103
  %34 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !14
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @rtx_group_next_id, align 4, !tbaa !14
  %36 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 1
  store i32 %34, ptr %36, align 8, !tbaa !104
  %37 = call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef nonnull %0) #21
  %38 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 4
  store ptr %37, ptr %38, align 8, !tbaa !105
  %39 = call ptr @canon_rtx(ptr noundef nonnull %0) #21
  %40 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !106
  %41 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %42 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !58
  %43 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %44 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !60
  %45 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %46 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !57
  %47 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %48 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !59
  %49 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %50 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 10
  store ptr %49, ptr %50, align 8, !tbaa !67
  %51 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 2
  store i8 0, ptr %51, align 4, !tbaa !65
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !6
  %53 = icmp eq ptr %52, %0
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %55 = icmp eq ptr %54, %0
  %56 = select i1 %53, i1 true, i1 %55
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 3
  store i8 %57, ptr %58, align 1, !tbaa !40
  %59 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call fastcc void @VEC_group_info_t_heap_safe_push(ptr noundef nonnull %33) #20
  br label %60

60:                                               ; preds = %9, %12, %4, %31
  %61 = phi ptr [ %33, %31 ], [ %7, %4 ], [ %30, %12 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #19
  ret ptr %61
}

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_group_info_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_group_info_t_heap_reserve() #20
  %2 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !6
  tail call fastcc void @VEC_group_info_t_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_group_info_t_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_group_info_t_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @rtx_group_vec, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_group_info_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !107
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !107
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_group_info_t_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = load i32, ptr %0, align 8, !tbaa !107
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !110
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @df_simulate_initialize_forwards(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_useless_values(ptr noundef readnone %0) #0 {
  %2 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1, %29
  %5 = phi ptr [ %32, %29 ], [ %2, %1 ]
  %6 = phi ptr [ %30, %29 ], [ null, %1 ]
  %7 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %4, %19
  %11 = phi ptr [ %21, %19 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %10, !llvm.loop !114

23:                                               ; preds = %15
  %24 = icmp eq ptr %6, null
  %25 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = getelementptr inbounds %struct.insn_info, ptr %6, i64 0, i32 9
  %28 = select i1 %24, ptr @active_local_stores, ptr %27
  store ptr %26, ptr %28, align 8, !tbaa !6
  tail call fastcc void @free_store_info(ptr noundef nonnull %5) #20
  br label %29

29:                                               ; preds = %19, %4, %23
  %30 = phi ptr [ %6, %23 ], [ %5, %4 ], [ %5, %19 ]
  %31 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %4, !llvm.loop !116

34:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: optsize
declare void @cselib_clear_table() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = load ptr, ptr @insn_info_pool, align 8, !tbaa !6
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !19
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.16, i32 noundef %10) #20
  br label %12

12:                                               ; preds = %8, %2
  %13 = load ptr, ptr %0, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 8
  store ptr %13, ptr %14, align 8, !tbaa !118
  %15 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !51
  store ptr %5, ptr %0, align 8, !tbaa !117
  %16 = load i32, ptr %1, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %26 [
    i16 7, label %18
    i16 8, label %19
  ]

18:                                               ; preds = %12
  store i8 1, ptr %5, align 8, !tbaa !37
  br label %245

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 134283263
  %24 = icmp eq i32 %23, 134217745
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call fastcc void @add_wild_read(ptr noundef nonnull %0) #20
  store i8 1, ptr %5, align 8, !tbaa !37
  br label %245

26:                                               ; preds = %12, %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void @note_uses(ptr noundef nonnull %28, ptr noundef nonnull @check_mem_read_use, ptr noundef nonnull %0) #21
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %186

32:                                               ; preds = %26
  store i8 1, ptr %5, align 8, !tbaa !37
  %33 = load i32, ptr %1, align 8
  %34 = and i32 %33, 67108864
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %32
  %37 = load ptr, ptr %28, align 8, !tbaa !19
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load i32, ptr %45, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i32 [ %46, %41 ], [ %38, %36 ]
  %49 = phi ptr [ %45, %41 ], [ %37, %36 ]
  %50 = and i32 %48, 65535
  %51 = icmp eq i32 %50, 23
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !19
  %55 = load i32, ptr %54, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i32 [ %55, %52 ], [ %48, %47 ]
  %58 = phi ptr [ %54, %52 ], [ %49, %47 ]
  %59 = and i32 %57, 65535
  %60 = icmp eq i32 %59, 26
  br i1 %60, label %61, label %185

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !19
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 43
  br i1 %66, label %67, label %185

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 67174399
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %73, label %185

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !19
  %76 = icmp eq ptr %75, null
  br i1 %76, label %185, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %75, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 29
  br i1 %80, label %81, label %185

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_function_decl, ptr %75, i64 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 8191
  %85 = icmp eq i32 %84, 6477
  %86 = load ptr, ptr @block_clear_fn, align 8
  %87 = icmp eq ptr %75, %86
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %185

89:                                               ; preds = %32, %81
  %90 = phi ptr [ null, %32 ], [ %75, %81 ]
  %91 = icmp eq ptr %90, null
  %92 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = select i1 %35, ptr @.str.19, ptr @.str.18
  %97 = load i32, ptr %27, align 8, !tbaa !19
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %93, ptr noundef nonnull @.str.17, ptr noundef nonnull %96, i32 noundef %97) #20
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 2
  store i8 1, ptr %103, align 2, !tbaa !119
  br label %104

104:                                              ; preds = %102, %99
  %105 = icmp eq ptr %92, null
  br i1 %105, label %150, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 2
  br label %108

108:                                              ; preds = %106, %145
  %109 = phi ptr [ null, %106 ], [ %146, %145 ]
  %110 = phi ptr [ %92, %106 ], [ %148, %145 ]
  %111 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !120
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %108
  %115 = load i8, ptr %107, align 2, !tbaa !119
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %145, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 6
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi ptr [ %118, %117 ], [ %124, %119 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = load i8, ptr %121, align 8, !tbaa !33
  %123 = icmp eq i8 %122, 0
  %124 = getelementptr inbounds %struct.store_info, ptr %121, i64 0, i32 10
  br i1 %123, label %119, label %125, !llvm.loop !121

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.store_info, ptr %121, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !39
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load ptr, ptr @rtx_group_vec, align 8
  %131 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %130, i32 noundef %127) #20
  %132 = getelementptr inbounds %struct.group_info, ptr %131, i64 0, i32 3
  %133 = load i8, ptr %132, align 1, !tbaa !40
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %108, %129
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %110) #20
  br label %139

139:                                              ; preds = %138, %135
  %140 = icmp eq ptr %109, null
  %141 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 9
  %142 = load ptr, ptr %141, align 8, !tbaa !115
  %143 = getelementptr inbounds %struct.insn_info, ptr %109, i64 0, i32 9
  %144 = select i1 %140, ptr @active_local_stores, ptr %143
  store ptr %142, ptr %144, align 8, !tbaa !6
  br label %145

145:                                              ; preds = %139, %129, %125, %114
  %146 = phi ptr [ %110, %114 ], [ %110, %125 ], [ %110, %129 ], [ %109, %139 ]
  %147 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 9
  %148 = load ptr, ptr %147, align 8, !tbaa !115
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %108, !llvm.loop !122

150:                                              ; preds = %145, %104
  br i1 %91, label %245, label %151

151:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %152 = call fastcc zeroext i8 @get_call_args(ptr noundef nonnull %1, ptr noundef nonnull %90, ptr noundef nonnull %3) #20
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %184, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !6
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 30
  br i1 %159, label %160, label %184

160:                                              ; preds = %154
  %161 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %162 = load ptr, ptr %161, align 16, !tbaa !6
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 30
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1
  %168 = load i64, ptr %167, align 8, !tbaa !19
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load ptr, ptr %3, align 16, !tbaa !6
  %172 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %171) #21
  tail call void @set_mem_size(ptr noundef %172, ptr noundef nonnull %162) #21
  %173 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %172, ptr noundef nonnull %156) #21
  %174 = tail call fastcc i32 @record_store(ptr noundef %173, ptr noundef nonnull %0) #20, !range !56
  %175 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 33, i64 1, ptr nonnull %175)
  br label %179

179:                                              ; preds = %177, %170
  %180 = icmp eq i32 %174, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %179
  %182 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  store ptr %182, ptr %183, align 8, !tbaa !115
  store ptr %5, ptr @active_local_stores, align 8, !tbaa !6
  br label %184

184:                                              ; preds = %179, %181, %166, %160, %154, %151
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %245

185:                                              ; preds = %73, %77, %67, %61, %56, %81
  tail call fastcc void @add_wild_read(ptr noundef nonnull %0) #20
  br label %245

186:                                              ; preds = %26
  %187 = load ptr, ptr %28, align 8, !tbaa !19
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 25
  br i1 %190, label %204, label %191

191:                                              ; preds = %186
  %192 = tail call i32 @volatile_refs_p(ptr noundef nonnull %187) #21
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = tail call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %1) #21
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i32, ptr %1, align 8
  %199 = and i32 %198, 1073741824
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 17, ptr noundef null) #21
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %201, %197, %194, %191, %186
  store i8 1, ptr %5, align 8, !tbaa !37
  br label %205

205:                                              ; preds = %204, %201
  %206 = load ptr, ptr %28, align 8, !tbaa !19
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 15
  br i1 %209, label %210, label %228

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !19
  %213 = load i32, ptr %212, align 8, !tbaa !123
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %210, %215
  %216 = phi i64 [ %223, %215 ], [ 0, %210 ]
  %217 = phi ptr [ %224, %215 ], [ %212, %210 ]
  %218 = phi i32 [ %222, %215 ], [ 0, %210 ]
  %219 = getelementptr inbounds %struct.rtvec_def, ptr %217, i64 0, i32 1, i64 %216
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  %221 = tail call fastcc i32 @record_store(ptr noundef %220, ptr noundef nonnull %0) #20, !range !56
  %222 = add nuw nsw i32 %221, %218
  %223 = add nuw nsw i64 %216, 1
  %224 = load ptr, ptr %211, align 8, !tbaa !19
  %225 = load i32, ptr %224, align 8, !tbaa !123
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %223, %226
  br i1 %227, label %215, label %230, !llvm.loop !125

228:                                              ; preds = %205
  %229 = tail call fastcc i32 @record_store(ptr noundef nonnull %206, ptr noundef nonnull %0) #20, !range !56
  br label %230

230:                                              ; preds = %215, %210, %228
  %231 = phi i32 [ %229, %228 ], [ 0, %210 ], [ %222, %215 ]
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %230
  %235 = load i8, ptr %5, align 8, !tbaa !37
  %236 = icmp eq i8 %235, 0
  %237 = select i1 %236, ptr @.str.24, ptr @.str.23
  %238 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %232, ptr noundef nonnull @.str.22, i32 noundef %231, ptr noundef nonnull %237) #20
  br label %239

239:                                              ; preds = %234, %230
  %240 = icmp eq i32 %231, 1
  br i1 %240, label %241, label %244

241:                                              ; preds = %239
  %242 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %243 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  store ptr %242, ptr %243, align 8, !tbaa !115
  store ptr %5, ptr @active_local_stores, align 8, !tbaa !6
  br label %245

244:                                              ; preds = %239
  store i8 1, ptr %5, align 8, !tbaa !37
  br label %245

245:                                              ; preds = %241, %244, %185, %184, %150, %25, %18
  ret void
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_simulate_one_insn_forwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !126
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dead_store_insn(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  tail call fastcc void @check_for_inc_dec(ptr noundef %6) #20
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !19
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.57, i32 noundef %12) #20
  %14 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.store_info, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !36
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !6
  br i1 %18, label %22, label %20

20:                                               ; preds = %9
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.58, i32 noundef %17) #20
  br label %24

22:                                               ; preds = %9
  %23 = tail call i32 @fputc(i32 10, ptr %19)
  br label %24

24:                                               ; preds = %20, %22, %4
  tail call fastcc void @free_store_info(ptr noundef nonnull %0) #20
  %25 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.read_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !130
  %32 = load ptr, ptr @read_info_pool, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %32, ptr noundef nonnull %29) #21
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %28, !llvm.loop !132

34:                                               ; preds = %28, %24
  store ptr null, ptr %25, align 8, !tbaa !92
  %35 = load ptr, ptr %5, align 8, !tbaa !51
  %36 = tail call ptr @delete_insn(ptr noundef %35) #21
  %37 = load i32, ptr @locally_deleted, align 4, !tbaa !14
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @locally_deleted, align 4, !tbaa !14
  store ptr null, ptr %5, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 1
  store i8 0, ptr %39, align 1, !tbaa !91
  br label %40

40:                                               ; preds = %1, %34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_group_info_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_store_info(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %8, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @bitmap_obstack_free(ptr noundef %14) #21
  store ptr null, ptr %13, align 8, !tbaa !19
  br label %15

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @rtx_store_info_pool, align 8
  %20 = load ptr, ptr @cse_store_info_pool, align 8
  %21 = select i1 %18, ptr %19, ptr %20
  tail call void @pool_free(ptr noundef %21, ptr noundef nonnull %6) #21
  %22 = icmp eq ptr %8, null
  br i1 %22, label %23, label %5, !llvm.loop !134

23:                                               ; preds = %15, %1
  store i8 1, ptr %0, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 4
  store i8 0, ptr %24, align 4, !tbaa !48
  store ptr null, ptr %2, align 8, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_wild_read(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.insn_info, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %13, %16 ], [ %4, %1 ]
  %8 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.read_info, ptr %7, i64 0, i32 5
  %10 = getelementptr inbounds %struct.read_info, ptr %7, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !135
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %9, align 8, !tbaa !6
  br i1 %12, label %14, label %16

14:                                               ; preds = %6
  %15 = load ptr, ptr @read_info_pool, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %15, ptr noundef nonnull %7) #21
  store ptr %13, ptr %8, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi ptr [ %8, %14 ], [ %9, %6 ]
  %18 = icmp eq ptr %13, null
  br i1 %18, label %19, label %6, !llvm.loop !136

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.insn_info, ptr %2, i64 0, i32 1
  store i8 1, ptr %20, align 1, !tbaa !91
  store ptr null, ptr @active_local_stores, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @check_mem_read_use(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @check_mem_read_rtx, ptr noundef %1) #21
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_insn_info(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.49, ptr @.str.48
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.20, i32 noundef %6, ptr noundef nonnull %10) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_call_args(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ix86_args, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  call void @init_cumulative_args(ptr noundef nonnull %4, ptr noundef %6, ptr noundef null, ptr noundef null) #21
  %7 = load ptr, ptr %5, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %126, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %14

14:                                               ; preds = %12, %112
  %15 = phi i64 [ 0, %12 ], [ %114, %112 ]
  %16 = phi ptr [ %9, %12 ], [ %115, %112 ]
  %17 = getelementptr inbounds %struct.tree_list, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @vector_type_mode(ptr noundef nonnull %18) #21
  br label %29

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = call ptr @function_arg(ptr noundef nonnull %4, i32 noundef %30, ptr noundef null, i32 noundef 1) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %126, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %31, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %126

37:                                               ; preds = %33
  %38 = lshr i32 %34, 16
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, %30
  br i1 %40, label %41, label %126

41:                                               ; preds = %37
  %42 = zext nneg i32 %30 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !19
  %45 = icmp eq i8 %44, 2
  br i1 %45, label %46, label %126

46:                                               ; preds = %41
  %47 = load ptr, ptr %13, align 8, !tbaa !19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %126, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds ptr, ptr %2, i64 %15
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  br label %52

52:                                               ; preds = %49, %85
  %53 = phi ptr [ %47, %49 ], [ %87, %85 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 24
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  store ptr %61, ptr %50, align 8, !tbaa !6
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = call fastcc i32 @rhs_regno(ptr noundef nonnull %61) #20
  %67 = call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #20
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = lshr i32 %62, 16
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %71, %30
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = zext nneg i32 %71 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !19
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %80 = load i8, ptr %79, align 1, !tbaa !19
  %81 = icmp ult i8 %80, 5
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8, ptr %51, align 1, !tbaa !19
  %84 = icmp ugt i8 %80, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %52, %82, %78, %73, %65, %59
  %86 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !19
  %88 = icmp eq ptr %87, null
  br i1 %88, label %126, label %52, !llvm.loop !137

89:                                               ; preds = %82, %69
  %90 = load ptr, ptr @scratch, align 8, !tbaa !6
  %91 = call ptr @cselib_expand_value_rtx(ptr noundef nonnull %61, ptr noundef %90, i32 noundef 5) #21
  %92 = load ptr, ptr %50, align 8, !tbaa !6
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, %30
  br i1 %96, label %108, label %97

97:                                               ; preds = %89
  %98 = icmp eq ptr %91, null
  br i1 %98, label %126, label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %91, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 30
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !19
  %106 = call i64 @trunc_int_for_mode(i64 noundef %105, i32 noundef %30) #21
  %107 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %106) #21
  br label %108

108:                                              ; preds = %103, %89
  %109 = phi ptr [ %107, %103 ], [ %91, %89 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store ptr %109, ptr %50, align 8, !tbaa !6
  br label %112

112:                                              ; preds = %111, %108
  call void @function_arg_advance(ptr noundef nonnull %4, i32 noundef %30, ptr noundef null, i32 noundef 1) #21
  %113 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %114 = add nuw nsw i64 %15, 1
  %115 = load ptr, ptr %113, align 8, !tbaa !19
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %117 = icmp ne ptr %115, %116
  %118 = icmp ult i64 %15, 2
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %14, label %120, !llvm.loop !138

120:                                              ; preds = %112
  %121 = and i64 %114, 4294967295
  %122 = icmp eq i64 %121, 3
  %123 = xor i1 %117, true
  %124 = select i1 %123, i1 %122, i1 false
  %125 = zext i1 %124 to i8
  br label %126

126:                                              ; preds = %41, %37, %33, %29, %99, %97, %46, %85, %3, %120
  %127 = phi i8 [ 0, %3 ], [ %125, %120 ], [ 0, %85 ], [ 0, %46 ], [ 0, %97 ], [ 0, %99 ], [ 0, %29 ], [ 0, %33 ], [ 0, %37 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i8 %127
}

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @record_store(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 0, ptr %3, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %7 = load ptr, ptr %1, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %485 [
    i16 23, label %10
    i16 25, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 6, ptr noundef %12) #21
  %16 = icmp eq ptr %15, null
  %17 = load i32, ptr %12, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  br i1 %16, label %21, label %485

21:                                               ; preds = %20
  store i8 1, ptr %7, align 8, !tbaa !37
  br label %485

22:                                               ; preds = %10
  %23 = and i32 %17, 16711680
  %24 = icmp eq i32 %23, 65536
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 51, i64 1, ptr nonnull %32)
  br label %36

36:                                               ; preds = %34, %31
  tail call fastcc void @add_wild_read(ptr noundef nonnull %1) #20
  store i8 1, ptr %7, align 8, !tbaa !37
  br label %485

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 30
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32, ptr %0, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !19
  %56 = add i64 %55, -65537
  %57 = icmp ult i64 %56, -65536
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 30
  br i1 %63, label %66, label %64

64:                                               ; preds = %37, %58, %53, %49, %45, %41
  br i1 %16, label %65, label %485

65:                                               ; preds = %64
  store i8 1, ptr %7, align 8, !tbaa !37
  tail call fastcc void @clear_rhs_from_active_local_stores() #20
  br label %485

66:                                               ; preds = %58, %22
  %67 = and i32 %17, 134217728
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i8 1, ptr %7, align 8, !tbaa !37
  br label %70

70:                                               ; preds = %69, %66
  %71 = call fastcc zeroext i8 @canon_address(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %6) #20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call fastcc void @clear_rhs_from_active_local_stores() #20
  br label %485

74:                                               ; preds = %70
  %75 = load i32, ptr %12, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !19, !nonnull !142, !noundef !142
  %82 = getelementptr inbounds %struct.mem_attrs, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !140
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !19
  br label %93

86:                                               ; preds = %74
  %87 = zext nneg i32 %77 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !19
  %90 = zext i8 %89 to i64
  %91 = icmp ult i8 %89, 65
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1386, ptr noundef nonnull @.str.2) #21
  br label %93

93:                                               ; preds = %92, %86, %79
  %94 = phi i64 [ %85, %79 ], [ %90, %86 ], [ %90, %92 ]
  %95 = load i32, ptr %4, align 4, !tbaa !14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.group_info, ptr %98, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds %struct.group_info, ptr %98, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !59
  %103 = load i32, ptr %12, align 8
  %104 = and i32 %103, 16711680
  %105 = icmp eq i32 %104, 65536
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1394, ptr noundef nonnull @.str.2) #21
  br label %107

107:                                              ; preds = %97, %106
  %108 = tail call i32 @bitmap_bit_p(ptr noundef %100, i32 noundef %95) #21
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, ptr %100, ptr %102
  %111 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %110, i32 noundef %95) #21
  %112 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct.group_info, ptr %112, i64 0, i32 14
  %114 = load i32, ptr %113, align 4, !tbaa !63
  %115 = icmp slt i32 %114, %95
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i32 %95, ptr %113, align 4, !tbaa !63
  br label %117

117:                                              ; preds = %116, %107
  %118 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !6
  %119 = tail call ptr @pool_alloc(ptr noundef %118) #21
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %121 = icmp eq ptr %120, null
  br i1 %121, label %174, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %12, align 8
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %120, ptr noundef nonnull @.str.51, i32 noundef %95, ptr noundef %128) #20
  br label %174

130:                                              ; preds = %93
  %131 = load i32, ptr %5, align 4, !tbaa !14
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load ptr, ptr @rtx_group_vec, align 8
  %135 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %134, i32 noundef %131) #20
  %136 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !6
  %137 = tail call ptr @pool_alloc(ptr noundef %136) #21
  %138 = load i64, ptr %3, align 8, !tbaa !139
  tail call fastcc void @set_usage_bits(ptr noundef %135, i64 noundef %138, i64 noundef %94) #20
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %140 = icmp eq ptr %139, null
  br i1 %140, label %174, label %141

141:                                              ; preds = %133
  %142 = trunc i64 %138 to i32
  %143 = add nsw i64 %138, %94
  %144 = trunc i64 %143 to i32
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %139, ptr noundef nonnull @.str.52, i32 noundef %131, i32 noundef %142, i32 noundef %144) #20
  br label %174

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !19
  %149 = tail call ptr @find_base_term(ptr noundef %148) #21
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %149, align 8
  %153 = and i32 %152, 16777215
  %154 = icmp eq i32 %153, 1048582
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !19
  %158 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !6
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %155, %146
  %161 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 3
  store i8 1, ptr %161, align 1, !tbaa !120
  br label %162

162:                                              ; preds = %160, %155, %151
  %163 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 4
  store i8 1, ptr %163, align 4, !tbaa !48
  %164 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !6
  %165 = tail call ptr @pool_alloc(ptr noundef %164) #21
  store i32 -1, ptr %5, align 4, !tbaa !14
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load i64, ptr %3, align 8, !tbaa !139
  %170 = trunc i64 %169 to i32
  %171 = add nsw i64 %169, %94
  %172 = trunc i64 %171 to i32
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %166, ptr noundef nonnull @.str.53, i32 noundef %170, i32 noundef %172) #20
  br label %174

174:                                              ; preds = %162, %168, %133, %141, %117, %122
  %175 = phi ptr [ %119, %122 ], [ %119, %117 ], [ %137, %141 ], [ %137, %133 ], [ %165, %168 ], [ %165, %162 ]
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 65535
  %178 = icmp ne i32 %177, 23
  %179 = load i32, ptr @reload_completed, align 4
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %178, i1 true, i1 %180
  br i1 %181, label %249, label %182

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !19
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = trunc i32 %185 to i16
  switch i16 %187, label %188 [
    i16 37, label %193
    i16 39, label %193
  ]

188:                                              ; preds = %182
  %189 = zext nneg i32 %186 to i64
  %190 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !14
  %192 = icmp eq i32 %191, 9
  br i1 %192, label %193, label %249

193:                                              ; preds = %182, %182, %188
  %194 = load i32, ptr %12, align 8
  %195 = and i32 %194, 134217728
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %249

197:                                              ; preds = %193
  %198 = lshr i32 %194, 16
  %199 = and i32 %198, 255
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !19
  switch i8 %202, label %203 [
    i8 8, label %208
    i8 9, label %208
    i8 11, label %208
  ]

203:                                              ; preds = %197
  %204 = icmp eq i8 %202, 17
  %205 = load i32, ptr @flag_float_store, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %249, label %211

208:                                              ; preds = %197, %197, %197
  %209 = load i32, ptr @flag_float_store, align 4, !tbaa !14
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %249

211:                                              ; preds = %208, %203
  %212 = zext nneg i32 %186 to i64
  %213 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !14
  %215 = icmp eq i32 %214, 9
  br i1 %215, label %249, label %216

216:                                              ; preds = %211
  %217 = load ptr, ptr %13, align 8, !tbaa !51
  %218 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !19
  %220 = icmp eq ptr %219, %0
  br i1 %220, label %221, label %233

221:                                              ; preds = %216
  %222 = tail call ptr @find_reg_note(ptr noundef nonnull %217, i32 noundef 4, ptr noundef null) #21
  %223 = icmp eq ptr %222, null
  br i1 %223, label %233, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !19
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 65535
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !14
  %232 = icmp eq i32 %231, 9
  br i1 %232, label %249, label %233

233:                                              ; preds = %216, %221, %224
  %234 = load i32, ptr %184, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 37
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load ptr, ptr @scratch, align 8, !tbaa !6
  %239 = tail call ptr @cselib_expand_value_rtx(ptr noundef nonnull %184, ptr noundef %238, i32 noundef 5) #21
  %240 = icmp eq ptr %239, null
  br i1 %240, label %249, label %241

241:                                              ; preds = %237
  %242 = load i32, ptr %239, align 8
  %243 = and i32 %242, 65535
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !14
  %247 = icmp eq i32 %246, 9
  %248 = select i1 %247, ptr %239, ptr null
  br label %249

249:                                              ; preds = %224, %211, %241, %237, %233, %203, %208, %193, %188, %174
  %250 = phi ptr [ null, %174 ], [ null, %193 ], [ null, %208 ], [ null, %233 ], [ null, %203 ], [ null, %188 ], [ null, %237 ], [ %248, %241 ], [ %184, %211 ], [ %226, %224 ]
  %251 = phi ptr [ null, %174 ], [ null, %193 ], [ null, %208 ], [ %184, %233 ], [ null, %203 ], [ null, %188 ], [ %184, %237 ], [ %184, %241 ], [ %184, %211 ], [ %184, %224 ]
  %252 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %253 = tail call ptr @canon_rtx(ptr noundef nonnull %12) #21
  br i1 %96, label %254, label %271

254:                                              ; preds = %249
  %255 = load i32, ptr %5, align 4, !tbaa !14
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load ptr, ptr %6, align 8, !tbaa !6
  %259 = getelementptr inbounds %struct.cselib_val_struct, ptr %258, i64 0, i32 2
  br label %264

260:                                              ; preds = %254
  %261 = load ptr, ptr @rtx_group_vec, align 8
  %262 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %261, i32 noundef %255) #20
  %263 = getelementptr inbounds %struct.group_info, ptr %262, i64 0, i32 5
  br label %264

264:                                              ; preds = %260, %257
  %265 = phi ptr [ %259, %257 ], [ %263, %260 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = load i64, ptr %3, align 8, !tbaa !139
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %264
  %270 = tail call ptr @plus_constant(ptr noundef %266, i64 noundef %267) #21
  br label %271

271:                                              ; preds = %249, %264, %269
  %272 = phi ptr [ %270, %269 ], [ %266, %264 ], [ null, %249 ]
  %273 = icmp eq ptr %252, null
  %274 = load ptr, ptr %6, align 8
  br i1 %273, label %450, label %275

275:                                              ; preds = %271
  %276 = load i32, ptr %5, align 4
  %277 = icmp ne ptr %250, null
  %278 = load i64, ptr %3, align 8
  %279 = add nsw i64 %278, %94
  %280 = trunc i64 %94 to i32
  br label %281

281:                                              ; preds = %275, %447
  %282 = phi ptr [ %252, %275 ], [ %286, %447 ]
  %283 = phi ptr [ null, %275 ], [ %448, %447 ]
  %284 = phi ptr [ null, %275 ], [ %435, %447 ]
  %285 = getelementptr inbounds %struct.insn_info, ptr %282, i64 0, i32 9
  %286 = load ptr, ptr %285, align 8, !tbaa !115
  %287 = getelementptr inbounds %struct.insn_info, ptr %282, i64 0, i32 6
  br label %288

288:                                              ; preds = %288, %281
  %289 = phi ptr [ %287, %281 ], [ %293, %288 ]
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  %291 = load i8, ptr %290, align 8, !tbaa !33
  %292 = icmp eq i8 %291, 0
  %293 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 10
  br i1 %292, label %288, label %294, !llvm.loop !143

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 6
  %296 = load i32, ptr %295, align 8, !tbaa !36
  %297 = icmp ne i32 %296, %95
  br i1 %297, label %434, label %298

298:                                              ; preds = %294
  br i1 %96, label %325, label %299

299:                                              ; preds = %298
  %300 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %95) #20
  %301 = load i32, ptr %253, align 8
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 4
  %305 = load ptr, ptr %304, align 8, !tbaa !144
  %306 = load i32, ptr %305, align 8
  %307 = lshr i32 %306, 16
  %308 = and i32 %307, 255
  %309 = icmp eq i32 %303, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %299
  %311 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %300, i64 0, i32 1
  %312 = load i32, ptr %311, align 4, !tbaa !13
  %313 = icmp eq i32 %303, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  tail call fastcc void @set_all_positions_unneeded(ptr noundef nonnull %290) #20
  br label %315

315:                                              ; preds = %314, %310, %299
  %316 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %317 = icmp eq ptr %316, null
  br i1 %317, label %434, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.insn_info, ptr %282, i64 0, i32 5
  %320 = load ptr, ptr %319, align 8, !tbaa !51
  %321 = getelementptr inbounds %struct.rtx_def, ptr %320, i64 0, i32 1
  %322 = load i32, ptr %321, align 8, !tbaa !19
  %323 = load i32, ptr %295, align 8, !tbaa !36
  %324 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %316, ptr noundef nonnull @.str.54, i32 noundef %322, i32 noundef %323) #20
  br label %434

325:                                              ; preds = %298
  %326 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 2
  %327 = load i32, ptr %326, align 4, !tbaa !39
  %328 = icmp eq i32 %327, %276
  br i1 %328, label %329, label %419

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !113
  %332 = icmp eq ptr %331, %274
  br i1 %332, label %333, label %419

333:                                              ; preds = %329
  %334 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %335 = icmp eq ptr %334, null
  br i1 %335, label %348, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.insn_info, ptr %282, i64 0, i32 5
  %338 = load ptr, ptr %337, align 8, !tbaa !51
  %339 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !19
  %341 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 7
  %342 = load i64, ptr %341, align 8, !tbaa !87
  %343 = trunc i64 %342 to i32
  %344 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 8
  %345 = load i64, ptr %344, align 8, !tbaa !88
  %346 = trunc i64 %345 to i32
  %347 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %334, ptr noundef nonnull @.str.55, i32 noundef %340, i32 noundef %276, i32 noundef %343, i32 noundef %346) #20
  br label %348

348:                                              ; preds = %336, %333
  %349 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 12
  %350 = load ptr, ptr %349, align 8, !tbaa !145
  %351 = icmp ne ptr %350, null
  %352 = and i1 %277, %351
  br i1 %352, label %353, label %402

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 7
  %355 = load i64, ptr %354, align 8, !tbaa !87
  %356 = icmp slt i64 %278, %355
  br i1 %356, label %402, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 8
  %359 = load i64, ptr %358, align 8, !tbaa !88
  %360 = icmp sgt i64 %279, %359
  br i1 %360, label %402, label %361

361:                                              ; preds = %357
  %362 = sub nsw i64 %278, %355
  %363 = trunc i64 %362 to i32
  %364 = tail call fastcc zeroext i8 @all_positions_needed_p(ptr noundef nonnull %290, i32 noundef %363, i32 noundef %280) #20, !range !5
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %402, label %366

366:                                              ; preds = %361
  %367 = load i32, ptr %253, align 8
  %368 = and i32 %367, 16711680
  %369 = icmp eq i32 %368, 65536
  br i1 %369, label %370, label %380

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 4
  %372 = load ptr, ptr %371, align 8, !tbaa !144
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 16711680
  %375 = icmp eq i32 %374, 65536
  br i1 %375, label %376, label %402

376:                                              ; preds = %370
  %377 = load ptr, ptr %349, align 8, !tbaa !145
  %378 = icmp eq ptr %377, %250
  %379 = select i1 %378, ptr %282, ptr %284
  br label %402

380:                                              ; preds = %366
  %381 = load ptr, ptr %349, align 8, !tbaa !145
  %382 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %383 = icmp eq ptr %381, %382
  %384 = icmp eq ptr %250, %382
  %385 = and i1 %383, %384
  br i1 %385, label %402, label %386

386:                                              ; preds = %380
  tail call void @start_sequence() #21
  %387 = load i32, ptr %253, align 8
  %388 = lshr i32 %387, 16
  %389 = and i32 %388, 255
  %390 = load ptr, ptr %13, align 8, !tbaa !51
  %391 = getelementptr inbounds %struct.rtx_def, ptr %390, i64 0, i32 1, i32 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !19
  %393 = tail call fastcc ptr @get_stored_val(ptr noundef nonnull %290, i32 noundef %389, i64 noundef %278, ptr noundef %392, i8 noundef zeroext 1) #20
  %394 = tail call ptr @get_insns() #21
  %395 = icmp ne ptr %394, null
  tail call void @end_sequence() #21
  %396 = icmp eq ptr %393, null
  %397 = select i1 %395, i1 true, i1 %396
  br i1 %397, label %402, label %398

398:                                              ; preds = %386
  %399 = tail call i32 @rtx_equal_p(ptr noundef nonnull %393, ptr noundef nonnull %250) #21
  %400 = icmp eq i32 %399, 0
  %401 = select i1 %400, ptr %284, ptr %282
  br label %402

402:                                              ; preds = %398, %376, %386, %380, %370, %361, %357, %353, %348
  %403 = phi ptr [ %284, %370 ], [ %284, %361 ], [ %284, %357 ], [ %284, %353 ], [ %284, %348 ], [ %379, %376 ], [ %282, %380 ], [ %284, %386 ], [ %401, %398 ]
  %404 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 7
  %405 = load i64, ptr %404, align 8, !tbaa !87
  %406 = tail call i64 @llvm.smax.i64(i64 %278, i64 %405)
  %407 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 8
  %408 = icmp slt i64 %406, %279
  br i1 %408, label %409, label %434

409:                                              ; preds = %402, %413
  %410 = phi i64 [ %417, %413 ], [ %406, %402 ]
  %411 = load i64, ptr %407, align 8, !tbaa !88
  %412 = icmp slt i64 %410, %411
  br i1 %412, label %413, label %434

413:                                              ; preds = %409
  %414 = load i64, ptr %404, align 8, !tbaa !87
  %415 = sub nsw i64 %410, %414
  %416 = trunc i64 %415 to i32
  tail call fastcc void @set_position_unneeded(ptr noundef nonnull %290, i32 noundef %416) #20
  %417 = add nsw i64 %410, 1
  %418 = icmp slt i64 %417, %279
  br i1 %418, label %409, label %434, !llvm.loop !146

419:                                              ; preds = %329, %325
  %420 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 11
  %421 = load ptr, ptr %420, align 8, !tbaa !147
  %422 = icmp eq ptr %421, null
  br i1 %422, label %434, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 4
  %425 = load ptr, ptr %424, align 8, !tbaa !144
  %426 = load i32, ptr %425, align 8
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  %429 = getelementptr inbounds %struct.store_info, ptr %290, i64 0, i32 5
  %430 = load ptr, ptr %429, align 8, !tbaa !148
  %431 = tail call i32 @canon_true_dependence(ptr noundef nonnull %425, i32 noundef %428, ptr noundef %430, ptr noundef %253, ptr noundef %272, ptr noundef nonnull @rtx_varies_p) #21
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %423
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %420, i8 0, i64 16, i1 false)
  br label %434

434:                                              ; preds = %413, %409, %402, %315, %318, %294, %419, %433, %423
  %435 = phi ptr [ %284, %433 ], [ %284, %423 ], [ %284, %419 ], [ %284, %294 ], [ %284, %318 ], [ %284, %315 ], [ %403, %402 ], [ %403, %409 ], [ %403, %413 ]
  %436 = tail call fastcc zeroext i8 @any_positions_needed_p(ptr noundef nonnull %290) #20, !range !5
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %434
  %439 = load i8, ptr %282, align 8, !tbaa !37
  %440 = icmp ne i8 %439, 0
  %441 = or i1 %297, %440
  br i1 %441, label %447, label %442

442:                                              ; preds = %438
  %443 = icmp eq ptr %283, null
  %444 = load ptr, ptr %285, align 8, !tbaa !115
  %445 = getelementptr inbounds %struct.insn_info, ptr %283, i64 0, i32 9
  %446 = select i1 %443, ptr @active_local_stores, ptr %445
  store ptr %444, ptr %446, align 8, !tbaa !6
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %282) #20
  br label %447

447:                                              ; preds = %438, %434, %442
  %448 = phi ptr [ %283, %442 ], [ %282, %434 ], [ %282, %438 ]
  %449 = icmp eq ptr %286, null
  br i1 %449, label %450, label %281, !llvm.loop !149

450:                                              ; preds = %447, %271
  %451 = phi ptr [ null, %271 ], [ %435, %447 ]
  %452 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 6
  %453 = load ptr, ptr %452, align 8, !tbaa !90
  %454 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 10
  store ptr %453, ptr %454, align 8, !tbaa !133
  store ptr %175, ptr %452, align 8, !tbaa !90
  %455 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 4
  store ptr %253, ptr %455, align 8, !tbaa !144
  %456 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 6
  store i32 %95, ptr %456, align 8, !tbaa !36
  %457 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 5
  store ptr %272, ptr %457, align 8, !tbaa !148
  %458 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 3
  store ptr %274, ptr %458, align 8, !tbaa !113
  %459 = icmp sgt i64 %94, 64
  %460 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 1
  br i1 %459, label %461, label %465

461:                                              ; preds = %450
  store i8 1, ptr %460, align 1, !tbaa !52
  %462 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 9, i32 0, i32 1
  store i32 0, ptr %462, align 8, !tbaa !19
  %463 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %464 = ptrtoint ptr %463 to i64
  br label %468

465:                                              ; preds = %450
  store i8 0, ptr %460, align 1, !tbaa !52
  %466 = trunc i64 %94 to i32
  %467 = tail call fastcc i64 @lowpart_bitmask(i32 noundef %466) #20
  br label %468

468:                                              ; preds = %465, %461
  %469 = phi i64 [ %464, %461 ], [ %467, %465 ]
  %470 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 9
  store i64 %469, ptr %470, align 8
  %471 = load i32, ptr %5, align 4, !tbaa !14
  %472 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 2
  store i32 %471, ptr %472, align 4, !tbaa !39
  %473 = load i64, ptr %3, align 8, !tbaa !139
  %474 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 7
  store i64 %473, ptr %474, align 8, !tbaa !87
  %475 = add nsw i64 %473, %94
  %476 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 8
  store i64 %475, ptr %476, align 8, !tbaa !88
  %477 = load i32, ptr %0, align 8
  %478 = and i32 %477, 65535
  %479 = icmp eq i32 %478, 23
  %480 = zext i1 %479 to i8
  store i8 %480, ptr %175, align 8, !tbaa !33
  %481 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 11
  store ptr %251, ptr %481, align 8, !tbaa !147
  %482 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 12
  store ptr %250, ptr %482, align 8, !tbaa !145
  %483 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 13
  store ptr %451, ptr %483, align 8, !tbaa !50
  %484 = zext i1 %479 to i32
  br label %485

485:                                              ; preds = %64, %65, %20, %21, %2, %468, %73, %36
  %486 = phi i32 [ 0, %36 ], [ %484, %468 ], [ 0, %73 ], [ 0, %2 ], [ 0, %21 ], [ 0, %20 ], [ 0, %65 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 %486
}

; Function Attrs: optsize
declare i32 @volatile_refs_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @check_mem_read_rtx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 0, ptr %3, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %316, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %13, label %316

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8, !tbaa !117
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mem_attrs, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !150
  %21 = icmp ne i32 %20, -1
  %22 = and i32 %10, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %23, %21
  br i1 %24, label %34, label %28

25:                                               ; preds = %13
  %26 = and i32 %10, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25, %18
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 40, i64 1, ptr nonnull %29)
  br label %33

33:                                               ; preds = %31, %28
  tail call fastcc void @add_wild_read(ptr noundef nonnull %1) #20
  store i8 1, ptr %14, align 8, !tbaa !37
  br label %316

34:                                               ; preds = %18, %25
  %35 = and i32 %10, 67108864
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %316

37:                                               ; preds = %34
  %38 = call fastcc zeroext i8 @canon_address(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 42, i64 1, ptr nonnull %41)
  br label %45

45:                                               ; preds = %43, %40
  tail call fastcc void @add_wild_read(ptr noundef nonnull %1) #20
  br label %316

46:                                               ; preds = %37
  %47 = load i32, ptr %7, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !19
  %55 = zext i8 %54 to i64
  br label %56

56:                                               ; preds = %46, %51
  %57 = phi i64 [ %55, %51 ], [ -1, %46 ]
  %58 = load ptr, ptr @read_info_pool, align 8, !tbaa !6
  %59 = tail call ptr @pool_alloc(ptr noundef %58) #21
  %60 = load i32, ptr %6, align 4, !tbaa !14
  store i32 %60, ptr %59, align 8, !tbaa !151
  %61 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 4
  store ptr %7, ptr %61, align 8, !tbaa !152
  %62 = load i32, ptr %4, align 4, !tbaa !14
  %63 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 1
  store i32 %62, ptr %63, align 4, !tbaa !135
  %64 = load i64, ptr %3, align 8, !tbaa !139
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 2
  store i32 %65, ptr %66, align 8, !tbaa !153
  %67 = add nsw i64 %64, %57
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 3
  store i32 %68, ptr %69, align 4, !tbaa !154
  %70 = getelementptr inbounds %struct.insn_info, ptr %14, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 5
  store ptr %71, ptr %72, align 8, !tbaa !130
  store ptr %59, ptr %70, align 8, !tbaa !92
  %73 = icmp eq i32 %62, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %56
  %75 = icmp slt i32 %60, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load ptr, ptr %5, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.cselib_val_struct, ptr %77, i64 0, i32 2
  br label %83

79:                                               ; preds = %74
  %80 = load ptr, ptr @rtx_group_vec, align 8
  %81 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %80, i32 noundef %60) #20
  %82 = getelementptr inbounds %struct.group_info, ptr %81, i64 0, i32 5
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi ptr [ %78, %76 ], [ %82, %79 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = icmp eq i64 %64, 0
  br i1 %86, label %129, label %87

87:                                               ; preds = %83
  %88 = tail call ptr @plus_constant(ptr noundef %85, i64 noundef %64) #21
  br label %129

89:                                               ; preds = %56
  %90 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.27, i32 noundef %62) #20
  br label %95

95:                                               ; preds = %93, %89
  %96 = icmp eq ptr %90, null
  br i1 %96, label %316, label %97

97:                                               ; preds = %95, %125
  %98 = phi ptr [ %127, %125 ], [ null, %95 ]
  %99 = phi ptr [ %126, %125 ], [ %90, %95 ]
  %100 = getelementptr inbounds %struct.insn_info, ptr %99, i64 0, i32 6
  br label %101

101:                                              ; preds = %101, %97
  %102 = phi ptr [ %100, %97 ], [ %106, %101 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = load i8, ptr %103, align 8, !tbaa !33
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.store_info, ptr %103, i64 0, i32 10
  br i1 %105, label %101, label %107, !llvm.loop !155

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.store_info, ptr %103, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !36
  %110 = icmp eq i32 %109, %62
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.insn_info, ptr %99, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !115
  br label %125

114:                                              ; preds = %107
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %99) #20
  br label %118

118:                                              ; preds = %117, %114
  %119 = icmp eq ptr %98, null
  %120 = getelementptr inbounds %struct.insn_info, ptr %99, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !115
  br i1 %119, label %124, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.insn_info, ptr %98, i64 0, i32 9
  store ptr %121, ptr %123, align 8, !tbaa !115
  br label %125

124:                                              ; preds = %118
  store ptr %121, ptr @active_local_stores, align 8, !tbaa !6
  br label %125

125:                                              ; preds = %111, %122, %124
  %126 = phi ptr [ %121, %122 ], [ %121, %124 ], [ %113, %111 ]
  %127 = phi ptr [ %98, %122 ], [ null, %124 ], [ %99, %111 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %316, label %97, !llvm.loop !156

129:                                              ; preds = %83, %87
  %130 = phi ptr [ %85, %83 ], [ %88, %87 ]
  %131 = icmp sgt i32 %60, -1
  %132 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %133 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %134 = icmp eq ptr %133, null
  br i1 %131, label %135, label %220

135:                                              ; preds = %129
  br i1 %134, label %142, label %136

136:                                              ; preds = %135
  %137 = icmp eq i64 %57, -1
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %133, ptr noundef nonnull @.str.28, i32 noundef %60) #20
  br label %142

140:                                              ; preds = %136
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %133, ptr noundef nonnull @.str.29, i32 noundef %60, i32 noundef %65, i32 noundef %68) #20
  br label %142

142:                                              ; preds = %138, %140, %135
  %143 = getelementptr inbounds %struct.bb_info, ptr %1, i64 0, i32 6
  %144 = icmp eq ptr %132, null
  br i1 %144, label %316, label %145

145:                                              ; preds = %142
  %146 = icmp eq i64 %57, -1
  %147 = trunc i64 %57 to i32
  br label %148

148:                                              ; preds = %145, %215
  %149 = phi ptr [ null, %145 ], [ %216, %215 ]
  %150 = phi ptr [ %132, %145 ], [ %218, %215 ]
  %151 = getelementptr inbounds %struct.insn_info, ptr %150, i64 0, i32 6
  br label %152

152:                                              ; preds = %152, %148
  %153 = phi ptr [ %151, %148 ], [ %157, %152 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = load i8, ptr %154, align 8, !tbaa !33
  %156 = icmp eq i8 %155, 0
  %157 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 10
  br i1 %156, label %152, label %158, !llvm.loop !157

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !39
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %194, label %162

162:                                              ; preds = %158
  %163 = icmp eq i32 %60, %160
  br i1 %163, label %164, label %215

164:                                              ; preds = %162
  br i1 %146, label %194, label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 11
  %167 = load ptr, ptr %166, align 8, !tbaa !147
  %168 = icmp eq ptr %167, null
  br i1 %168, label %186, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 7
  %171 = load i64, ptr %170, align 8, !tbaa !87
  %172 = icmp slt i64 %64, %171
  br i1 %172, label %186, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 8
  %175 = load i64, ptr %174, align 8, !tbaa !88
  %176 = icmp sgt i64 %67, %175
  br i1 %176, label %186, label %177

177:                                              ; preds = %173
  %178 = sub nsw i64 %64, %171
  %179 = trunc i64 %178 to i32
  %180 = tail call fastcc zeroext i8 @all_positions_needed_p(ptr noundef nonnull %154, i32 noundef %179, i32 noundef %147) #20, !range !5
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = load ptr, ptr %143, align 8, !tbaa !23
  %184 = tail call fastcc zeroext i8 @replace_read(ptr noundef nonnull %154, ptr noundef nonnull %150, ptr noundef nonnull %59, ptr noundef %14, ptr noundef nonnull %0, ptr noundef %183) #20, !range !5
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %316

186:                                              ; preds = %182, %177, %173, %169, %165
  %187 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 8
  %188 = load i64, ptr %187, align 8, !tbaa !88
  %189 = icmp slt i64 %64, %188
  br i1 %189, label %190, label %215

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 7
  %192 = load i64, ptr %191, align 8, !tbaa !87
  %193 = icmp sgt i64 %67, %192
  br i1 %193, label %205, label %215

194:                                              ; preds = %164, %158
  %195 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !144
  %197 = load i32, ptr %196, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = getelementptr inbounds %struct.store_info, ptr %154, i64 0, i32 5
  %201 = load ptr, ptr %200, align 8, !tbaa !148
  %202 = tail call i32 @canon_true_dependence(ptr noundef nonnull %196, i32 noundef %199, ptr noundef %201, ptr noundef nonnull %7, ptr noundef %130, ptr noundef nonnull @rtx_varies_p) #21
  %203 = and i32 %202, 255
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %190, %194
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %150) #20
  br label %209

209:                                              ; preds = %208, %205
  %210 = icmp eq ptr %149, null
  %211 = getelementptr inbounds %struct.insn_info, ptr %150, i64 0, i32 9
  %212 = load ptr, ptr %211, align 8, !tbaa !115
  %213 = getelementptr inbounds %struct.insn_info, ptr %149, i64 0, i32 9
  %214 = select i1 %210, ptr @active_local_stores, ptr %213
  store ptr %212, ptr %214, align 8, !tbaa !6
  br label %215

215:                                              ; preds = %209, %190, %162, %186, %194
  %216 = phi ptr [ %150, %194 ], [ %150, %186 ], [ %150, %162 ], [ %150, %190 ], [ %149, %209 ]
  %217 = getelementptr inbounds %struct.insn_info, ptr %150, i64 0, i32 9
  %218 = load ptr, ptr %217, align 8, !tbaa !115
  %219 = icmp eq ptr %218, null
  br i1 %219, label %316, label %148, !llvm.loop !158

220:                                              ; preds = %129
  br i1 %134, label %226, label %221

221:                                              ; preds = %220
  %222 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 28, i64 1, ptr nonnull %133)
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_inline_rtx(ptr noundef %223, ptr noundef nonnull %7, i32 noundef 0) #21
  %224 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %225 = tail call i32 @fputc(i32 10, ptr %224)
  br label %226

226:                                              ; preds = %221, %220
  %227 = getelementptr inbounds %struct.bb_info, ptr %1, i64 0, i32 6
  %228 = icmp eq ptr %132, null
  br i1 %228, label %316, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr %5, align 8
  %231 = icmp ne i64 %57, -1
  %232 = trunc i64 %57 to i32
  br label %233

233:                                              ; preds = %229, %311
  %234 = phi ptr [ null, %229 ], [ %312, %311 ]
  %235 = phi ptr [ %132, %229 ], [ %314, %311 ]
  %236 = getelementptr inbounds %struct.insn_info, ptr %235, i64 0, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !90
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %239 = icmp eq ptr %238, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.insn_info, ptr %235, i64 0, i32 5
  %242 = load ptr, ptr %241, align 8, !tbaa !51
  %243 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !19
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %238, ptr noundef nonnull @.str.32, i32 noundef %244) #20
  br label %246

246:                                              ; preds = %240, %233
  %247 = load i8, ptr %237, align 8, !tbaa !33
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246, %249
  %250 = phi ptr [ %252, %249 ], [ %237, %246 ]
  %251 = getelementptr inbounds %struct.store_info, ptr %250, i64 0, i32 10
  %252 = load ptr, ptr %251, align 8, !tbaa !133
  %253 = load i8, ptr %252, align 8, !tbaa !33
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %249, label %255, !llvm.loop !159

255:                                              ; preds = %249, %246
  %256 = phi ptr [ %237, %246 ], [ %252, %249 ]
  %257 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 11
  %258 = load ptr, ptr %257, align 8, !tbaa !147
  %259 = icmp eq ptr %258, null
  br i1 %259, label %286, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 2
  %262 = load i32, ptr %261, align 4, !tbaa !39
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %286

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !113
  %267 = icmp eq ptr %266, %230
  %268 = select i1 %267, i1 %231, i1 false
  br i1 %268, label %269, label %286

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 7
  %271 = load i64, ptr %270, align 8, !tbaa !87
  %272 = icmp slt i64 %64, %271
  br i1 %272, label %286, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 8
  %275 = load i64, ptr %274, align 8, !tbaa !88
  %276 = icmp sgt i64 %67, %275
  br i1 %276, label %286, label %277

277:                                              ; preds = %273
  %278 = sub nsw i64 %64, %271
  %279 = trunc i64 %278 to i32
  %280 = tail call fastcc zeroext i8 @all_positions_needed_p(ptr noundef nonnull %256, i32 noundef %279, i32 noundef %232) #20, !range !5
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %227, align 8, !tbaa !23
  %284 = tail call fastcc zeroext i8 @replace_read(ptr noundef nonnull %256, ptr noundef nonnull %235, ptr noundef nonnull %59, ptr noundef %14, ptr noundef nonnull %0, ptr noundef %283) #20, !range !5
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %316

286:                                              ; preds = %282, %277, %273, %269, %264, %260, %255
  %287 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 6
  %288 = load i32, ptr %287, align 8, !tbaa !36
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %311

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !144
  %293 = load i32, ptr %292, align 8
  %294 = lshr i32 %293, 16
  %295 = and i32 %294, 255
  %296 = getelementptr inbounds %struct.store_info, ptr %256, i64 0, i32 5
  %297 = load ptr, ptr %296, align 8, !tbaa !148
  %298 = tail call i32 @canon_true_dependence(ptr noundef nonnull %292, i32 noundef %295, ptr noundef %297, ptr noundef nonnull %7, ptr noundef %130, ptr noundef nonnull @rtx_varies_p) #21
  %299 = and i32 %298, 255
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %290
  %302 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %303 = icmp eq ptr %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %235) #20
  br label %305

305:                                              ; preds = %304, %301
  %306 = icmp eq ptr %234, null
  %307 = getelementptr inbounds %struct.insn_info, ptr %235, i64 0, i32 9
  %308 = load ptr, ptr %307, align 8, !tbaa !115
  %309 = getelementptr inbounds %struct.insn_info, ptr %234, i64 0, i32 9
  %310 = select i1 %306, ptr @active_local_stores, ptr %309
  store ptr %308, ptr %310, align 8, !tbaa !6
  br label %311

311:                                              ; preds = %305, %286, %290
  %312 = phi ptr [ %235, %290 ], [ %235, %286 ], [ %234, %305 ]
  %313 = getelementptr inbounds %struct.insn_info, ptr %235, i64 0, i32 9
  %314 = load ptr, ptr %313, align 8, !tbaa !115
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %233, !llvm.loop !160

316:                                              ; preds = %125, %311, %282, %215, %182, %95, %226, %142, %34, %2, %9, %45, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @canon_address(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !161
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !173
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %5 ]
  %16 = tail call i32 %6(i8 noundef zeroext %15) #21
  %17 = load ptr, ptr %7, align 8, !tbaa !19
  %18 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %8, align 8, !tbaa !19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !150
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %20 ]
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.33, i32 noundef %27) #20
  %32 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !6
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ %18, %26 ]
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %34, i32 noundef %27) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %27) #20
  %39 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !13
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = zext i32 %40 to i64
  %50 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = zext nneg i32 %43 to i64
  %53 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.34, i32 noundef %27, ptr noundef %51, ptr noundef %54) #20
  br label %56

56:                                               ; preds = %48, %45
  %57 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !6
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %57, i32 noundef %27) #21
  br label %164

59:                                               ; preds = %37
  store i32 %27, ptr %1, align 4, !tbaa !14
  %60 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !104
  store i32 %62, ptr %2, align 4, !tbaa !14
  br label %164

63:                                               ; preds = %33, %14
  store i32 0, ptr %1, align 4, !tbaa !14
  %64 = tail call ptr @cselib_lookup(ptr noundef %17, i32 noundef %16, i32 noundef 1) #21
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 7, i64 1, ptr nonnull %65)
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_inline_rtx(ptr noundef %69, ptr noundef %17, i32 noundef 0) #21
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %71 = tail call i32 @fputc(i32 10, ptr %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %146
  %74 = phi ptr [ %123, %146 ], [ null, %72 ]
  %75 = phi i1 [ false, %146 ], [ true, %72 ]
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr @scratch, align 8, !tbaa !6
  %78 = tail call ptr @cselib_expand_value_rtx(ptr noundef %17, ptr noundef %77, i32 noundef 5) #21
  %79 = icmp eq ptr %78, null
  br i1 %79, label %147, label %80

80:                                               ; preds = %73, %76
  %81 = phi ptr [ %78, %76 ], [ %17, %73 ]
  %82 = tail call ptr @canon_rtx(ptr noundef %81) #21
  store i64 0, ptr %3, align 8, !tbaa !139
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  br i1 %75, label %92, label %86

86:                                               ; preds = %85
  %87 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 33, i64 1, ptr nonnull %83)
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_inline_rtx(ptr noundef %88, ptr noundef %81, i32 noundef 0) #21
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %90 = tail call i32 @fputc(i32 10, ptr %89)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !6
  br label %92

92:                                               ; preds = %86, %85
  %93 = phi ptr [ %91, %86 ], [ %83, %85 ]
  %94 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_inline_rtx(ptr noundef %95, ptr noundef %82, i32 noundef 0) #21
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %97 = tail call i32 @fputc(i32 10, ptr %96)
  br label %98

98:                                               ; preds = %92, %80
  %99 = load i32, ptr %82, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 35
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !19
  %105 = load i32, ptr %104, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %105, %102 ], [ %99, %98 ]
  %108 = phi ptr [ %104, %102 ], [ %82, %98 ]
  %109 = and i32 %107, 65535
  %110 = icmp eq i32 %109, 49
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !19
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 30
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %119 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !19
  store i64 %120, ptr %3, align 8, !tbaa !139
  %121 = load ptr, ptr %118, align 8, !tbaa !19
  br label %122

122:                                              ; preds = %117, %111, %106
  %123 = phi ptr [ %121, %117 ], [ %108, %111 ], [ %108, %106 ]
  %124 = load ptr, ptr %8, align 8, !tbaa !19
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.mem_attrs, ptr %124, i64 0, i32 5
  %128 = load i8, ptr %127, align 8, !tbaa !173
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %122, %126
  %131 = tail call fastcc zeroext i8 @const_or_frame_p(ptr noundef %123) #20, !range !5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %130
  %134 = tail call fastcc ptr @get_group_info(ptr noundef %123) #20
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.group_info, ptr %134, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !104
  %140 = load i64, ptr %3, align 8, !tbaa !139
  %141 = trunc i64 %140 to i32
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %135, ptr noundef nonnull @.str.38, i32 noundef %139, i32 noundef %141) #20
  br label %143

143:                                              ; preds = %137, %133
  store ptr null, ptr %4, align 8, !tbaa !6
  %144 = getelementptr inbounds %struct.group_info, ptr %134, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !104
  store i32 %145, ptr %2, align 4, !tbaa !14
  br label %164

146:                                              ; preds = %126, %130
  br i1 %75, label %73, label %147, !llvm.loop !174

147:                                              ; preds = %76, %146
  %148 = phi ptr [ %74, %76 ], [ %123, %146 ]
  %149 = tail call ptr @cselib_lookup(ptr noundef %148, i32 noundef %16, i32 noundef 1) #21
  store ptr %149, ptr %4, align 8, !tbaa !6
  store i32 -1, ptr %2, align 4, !tbaa !14
  %150 = icmp eq ptr %149, null
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %152 = icmp eq ptr %151, null
  br i1 %150, label %153, label %156

153:                                              ; preds = %147
  br i1 %152, label %164, label %154

154:                                              ; preds = %153
  %155 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 40, i64 1, ptr nonnull %151)
  br label %164

156:                                              ; preds = %147
  br i1 %152, label %164, label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.cselib_val_struct, ptr %149, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !175
  %160 = load i32, ptr %149, align 8, !tbaa !177
  %161 = load i64, ptr %3, align 8, !tbaa !139
  %162 = trunc i64 %161 to i32
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %151, ptr noundef nonnull @.str.40, i32 noundef %159, i32 noundef %160, i32 noundef %162) #20
  br label %164

164:                                              ; preds = %59, %56, %156, %157, %153, %154, %143
  %165 = phi i8 [ 1, %143 ], [ 0, %154 ], [ 0, %153 ], [ 1, %157 ], [ 1, %156 ], [ 1, %59 ], [ 0, %56 ]
  ret i8 %165
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @all_positions_needed_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 1, !tbaa !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %2, %1
  %9 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %10 = tail call i32 @llvm.smax.i32(i32 %1, i32 %8)
  br label %11

11:                                               ; preds = %14, %7
  %12 = phi i32 [ %1, %7 ], [ %16, %14 ]
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %9, align 8, !tbaa !19
  %16 = add i32 %12, 1
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %12) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %28, !llvm.loop !178

19:                                               ; preds = %3
  %20 = tail call fastcc i64 @lowpart_bitmask(i32 noundef %2) #20
  %21 = zext nneg i32 %1 to i64
  %22 = shl i64 %20, %21
  %23 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %24 = load i64, ptr %23, align 8, !tbaa !19
  %25 = and i64 %24, %22
  %26 = icmp eq i64 %25, %22
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %14, %11, %19
  %29 = phi i8 [ %27, %19 ], [ 1, %11 ], [ 0, %14 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @replace_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !152
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %110, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = zext nneg i32 %16 to i64
  %24 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !19
  %30 = zext nneg i32 %11 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.insn_info, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !19
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.41, ptr noundef %25, i32 noundef %29, ptr noundef %32, i32 noundef %36) #20
  br label %38

38:                                               ; preds = %22, %19
  tail call void @start_sequence() #21
  %39 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !153
  %45 = sext i32 %44 to i64
  %46 = tail call fastcc ptr @get_stored_val(ptr noundef nonnull %0, i32 noundef %16, i64 noundef %45, ptr noundef %42, i8 noundef zeroext 0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  tail call void @end_sequence() #21
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %110, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 43, i64 1, ptr nonnull %49)
  br label %110

53:                                               ; preds = %38
  %54 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef nonnull %46) #21
  %55 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %77, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %55, %57 ], [ %64, %59 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !19
  tail call void @note_stores(ptr noundef %62, ptr noundef nonnull @look_for_hardregs, ptr noundef %58) #21
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %59, !llvm.loop !179

66:                                               ; preds = %59
  tail call void @bitmap_and_into(ptr noundef %58, ptr noundef %5) #21
  %67 = load ptr, ptr %58, align 8, !tbaa !84
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 63, i64 1, ptr nonnull %70)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @df_print_regset(ptr noundef %74, ptr noundef nonnull %58) #21
  br label %76

75:                                               ; preds = %66
  tail call void @bitmap_obstack_free(ptr noundef nonnull %58) #21
  br label %77

76:                                               ; preds = %69, %72
  tail call void @bitmap_obstack_free(ptr noundef nonnull %58) #21
  br label %110

77:                                               ; preds = %75, %53
  %78 = load ptr, ptr %39, align 8, !tbaa !51
  %79 = tail call zeroext i8 @validate_change(ptr noundef %78, ptr noundef %4, ptr noundef %54, i8 noundef zeroext 0) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !6
  %83 = tail call ptr @pool_alloc(ptr noundef %82) #21
  %84 = getelementptr inbounds %struct.insn_info, ptr %1, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !51
  %86 = tail call ptr @emit_insn_before(ptr noundef %55, ptr noundef %85) #21
  %87 = load ptr, ptr %12, align 8, !tbaa !152
  store ptr %87, ptr %4, align 8, !tbaa !6
  %88 = load ptr, ptr @deferred_change_list, align 8, !tbaa !6
  %89 = getelementptr inbounds %struct.deferred_change, ptr %83, i64 0, i32 2
  store ptr %88, ptr %89, align 8, !tbaa !43
  store ptr %83, ptr @deferred_change_list, align 8, !tbaa !6
  store ptr %4, ptr %83, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.deferred_change, ptr %83, i64 0, i32 1
  store ptr %54, ptr %90, align 8, !tbaa !45
  %91 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !130
  %93 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 7
  store ptr %92, ptr %93, align 8, !tbaa !92
  %94 = load ptr, ptr @read_info_pool, align 8, !tbaa !6
  tail call void @pool_free(ptr noundef %94, ptr noundef %2) #21
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %81
  %98 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 33, i64 1, ptr nonnull %95)
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_simple_rtl(ptr noundef %99, ptr noundef %54) #21
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  br label %110

102:                                              ; preds = %77
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 34, i64 1, ptr nonnull %103)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_simple_rtl(ptr noundef %107, ptr noundef %54) #21
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %109 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 31, i64 1, ptr %108)
  br label %110

110:                                              ; preds = %76, %102, %105, %81, %97, %48, %51, %6
  %111 = phi i8 [ 0, %76 ], [ 0, %6 ], [ 0, %51 ], [ 0, %48 ], [ 1, %97 ], [ 1, %81 ], [ 0, %105 ], [ 0, %102 ]
  ret i8 %111
}

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @clear_alias_set_lookup(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.clear_alias_mode_holder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i32 %0, ptr %2, align 4, !tbaa !10
  %3 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !6
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #21
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 636, ptr noundef nonnull @.str.2) #21
  %8 = load ptr, ptr %4, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %5, %1 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cselib_expand_value_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @const_or_frame_p(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %20 [
    i16 35, label %21
    i16 30, label %21
    i16 32, label %21
    i16 33, label %21
    i16 45, label %21
    i16 44, label %21
    i16 37, label %4
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !6
  %6 = icmp eq ptr %5, %0
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !6
  %12 = icmp eq ptr %11, %0
  %13 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  %16 = load ptr, ptr @pic_offset_table_rtx, align 8
  %17 = icmp eq ptr %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = zext i1 %18 to i8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %10, %4, %1, %1, %1, %1, %1, %1, %20
  %22 = phi i8 [ 0, %20 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %4 ], [ %19, %10 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @lowpart_bitmask(i32 noundef %0) unnamed_addr #9 {
  %2 = sub nsw i32 64, %0
  %3 = zext nneg i32 %2 to i64
  %4 = lshr i64 -1, %3
  ret i64 %4
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_stored_val(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !87
  %15 = sub nsw i64 %2, %14
  %16 = trunc i64 %15 to i32
  %17 = zext nneg i32 %1 to i64
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %12
  %20 = shl nsw i32 %16, 3
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %22 = load i8, ptr %21, align 1, !tbaa !19
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, %16
  %25 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %3) #21
  %26 = tail call fastcc ptr @find_shift_sequence(i32 noundef %24, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i8 noundef zeroext %25, i8 noundef zeroext %4) #20
  br label %82

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !147
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 30
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1835, ptr noundef nonnull @.str.2) #21
  br label %34

34:                                               ; preds = %27, %33
  %35 = tail call i32 @int_mode_for_mode(i32 noundef %1) #21
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %95, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %28, align 8, !tbaa !147
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %35, ptr noundef %38) #21
  br label %82

43:                                               ; preds = %37
  %44 = zext i32 %35 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !19
  %47 = icmp ugt i8 %46, 8
  br i1 %47, label %95, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !19
  %51 = and i64 %50, 255
  %52 = shl nuw nsw i64 %51, 8
  %53 = or disjoint i64 %52, %51
  %54 = shl nuw nsw i64 %53, 16
  %55 = or disjoint i64 %54, %53
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %55
  %58 = tail call i64 @trunc_int_for_mode(i64 noundef %57, i32 noundef %35) #21
  %59 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %58) #21
  %60 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %35, ptr noundef %59) #21
  br label %82

61:                                               ; preds = %12
  %62 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !145
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = icmp eq i8 %4, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %69 = load i8, ptr %68, align 1, !tbaa !19
  %70 = zext nneg i32 %10 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !19
  %73 = icmp eq i8 %69, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %67, %65
  %75 = tail call ptr @copy_rtx(ptr noundef nonnull %63) #21
  %76 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %10, ptr noundef %75) #21
  br label %82

77:                                               ; preds = %67, %61
  %78 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %79 = load ptr, ptr %78, align 8, !tbaa !147
  %80 = tail call ptr @copy_rtx(ptr noundef %79) #21
  %81 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %10, ptr noundef %80) #21
  br label %82

82:                                               ; preds = %41, %48, %77, %74, %19
  %83 = phi ptr [ %26, %19 ], [ %42, %41 ], [ %60, %48 ], [ %76, %74 ], [ %81, %77 ]
  %84 = icmp ne i8 %4, 0
  %85 = icmp ne ptr %83, null
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, ptr %83, align 8
  %89 = and i32 %88, 65535
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !14
  %93 = icmp eq i32 %92, 9
  %94 = select i1 %93, ptr %83, ptr null
  br label %95

95:                                               ; preds = %43, %34, %87, %82
  %96 = phi ptr [ %94, %87 ], [ %83, %82 ], [ null, %34 ], [ null, %43 ]
  ret ptr %96
}

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @look_for_hardregs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #20
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  %12 = lshr i32 %4, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = zext i8 %16 to i32
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %22, %20 ], [ %19, %18 ]
  %22 = add nsw i32 %21, -1
  %23 = add nsw i32 %22, %8
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %23) #21
  %25 = icmp ugt i32 %21, 1
  br i1 %25, label %20, label %26, !llvm.loop !180

26:                                               ; preds = %20, %10, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_simple_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_shift_sequence(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.store_info, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = shl nsw i32 %0, 3
  %13 = tail call i32 @smallest_mode_for_size(i32 noundef %12, i32 noundef 2) #21
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !19
  %17 = icmp ult i8 %16, 5
  br i1 %17, label %18, label %124

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.store_info, ptr %1, i64 0, i32 12
  %20 = sext i32 %3 to i64
  %21 = icmp ne i8 %5, 0
  %22 = getelementptr inbounds %struct.store_info, ptr %1, i64 0, i32 11
  br label %23

23:                                               ; preds = %18, %110
  %24 = phi i64 [ %14, %18 ], [ %114, %110 ]
  %25 = phi i32 [ %13, %18 ], [ %113, %110 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !145
  %27 = icmp eq ptr %26, null
  br i1 %27, label %66, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @subreg_lowpart_offset(i32 noundef %25, i32 noundef %11) #21
  %30 = load ptr, ptr %19, align 8, !tbaa !145
  %31 = tail call ptr @simplify_subreg(i32 noundef %25, ptr noundef %30, i32 noundef %11, i32 noundef %29) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %31, align 8
  %35 = and i32 %34, 65535
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !14
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %20) #21
  %42 = tail call ptr @simplify_const_binary_operation(i32 noundef 68, i32 noundef %25, ptr noundef nonnull %31, ptr noundef %41) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %66, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %42, align 8
  %46 = and i32 %45, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !14
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = tail call i32 @subreg_lowpart_offset(i32 noundef %2, i32 noundef %25) #21
  %53 = tail call ptr @simplify_subreg(i32 noundef %2, ptr noundef nonnull %42, i32 noundef %25, i32 noundef %52) #21
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %53, align 8
  %57 = and i32 %56, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !14
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = tail call i32 @rtx_cost(ptr noundef nonnull %53, i32 noundef 23, i8 noundef zeroext %4) #21
  %64 = icmp slt i32 %63, 5
  %65 = or i1 %64, %21
  br i1 %65, label %122, label %67

66:                                               ; preds = %40, %44, %55, %51, %33, %28, %23
  br i1 %21, label %124, label %67

67:                                               ; preds = %62, %66
  %68 = load ptr, ptr %22, align 8, !tbaa !147
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !14
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %25, i32 noundef %11) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %75, %67
  %79 = tail call ptr @gen_reg_rtx(i32 noundef %25) #21
  tail call void @start_sequence() #21
  %80 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %20) #21
  %81 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %79, ptr noundef %80, ptr noundef %79, i32 noundef 1, i32 noundef 0) #21
  %82 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  %83 = icmp ne ptr %81, %79
  %84 = icmp eq ptr %82, null
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %110, label %86

86:                                               ; preds = %78, %98
  %87 = phi i32 [ %99, %98 ], [ 0, %78 ]
  %88 = phi ptr [ %101, %98 ], [ %82, %78 ]
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -7
  %92 = icmp ult i32 %91, 4
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !19
  %96 = tail call i32 @insn_rtx_cost(ptr noundef %95, i8 noundef zeroext %4) #21
  %97 = add nsw i32 %96, %87
  br label %98

98:                                               ; preds = %86, %93
  %99 = phi i32 [ %97, %93 ], [ %87, %86 ]
  %100 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 2
  %101 = load ptr, ptr %100, align 8, !tbaa !19
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %86, !llvm.loop !181

103:                                              ; preds = %98
  %104 = icmp sgt i32 %99, 4
  br i1 %104, label %110, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr %22, align 8, !tbaa !147
  %107 = tail call ptr @copy_rtx(ptr noundef %106) #21
  %108 = tail call ptr @extract_low_bits(i32 noundef %25, i32 noundef %11, ptr noundef %107) #21
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %75, %78, %103, %105
  %111 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %24
  %112 = load i8, ptr %111, align 1, !tbaa !19
  %113 = zext i8 %112 to i32
  %114 = zext i8 %112 to i64
  %115 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !19
  %117 = icmp ult i8 %116, 5
  br i1 %117, label %23, label %124, !llvm.loop !182

118:                                              ; preds = %105
  %119 = tail call ptr @emit_move_insn(ptr noundef %79, ptr noundef nonnull %108) #21
  %120 = tail call ptr @emit_insn(ptr noundef %82) #21
  %121 = tail call ptr @extract_low_bits(i32 noundef %2, i32 noundef %25, ptr noundef %79) #21
  br label %124

122:                                              ; preds = %62
  %123 = select i1 %64, ptr %53, ptr null
  br label %124

124:                                              ; preds = %66, %110, %122, %6, %118
  %125 = phi ptr [ %121, %118 ], [ null, %6 ], [ %123, %122 ], [ null, %110 ], [ null, %66 ]
  ret ptr %125
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @extract_low_bits(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_const_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @insn_rtx_cost(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !19
  ret i32 %3
}

; Function Attrs: optsize
declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_rhs_from_active_local_stores() unnamed_addr #10 {
  %1 = load ptr, ptr @active_local_stores, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %0, %12
  %4 = phi ptr [ %15, %12 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.insn_info, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %5, %3 ], [ %11, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i8, ptr %8, align 8, !tbaa !33
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 10
  br i1 %10, label %6, label %12, !llvm.loop !183

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 11
  %14 = getelementptr inbounds %struct.insn_info, ptr %4, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3, !llvm.loop !184

17:                                               ; preds = %12, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_usage_bits(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i64 %1, -65536
  br i1 %4, label %5, label %44

5:                                                ; preds = %3
  %6 = add nsw i64 %2, %1
  %7 = icmp slt i64 %6, 65536
  %8 = icmp sgt i64 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 14
  %16 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 13
  br label %17

17:                                               ; preds = %10, %41
  %18 = phi i64 [ %1, %10 ], [ %42, %41 ]
  %19 = icmp slt i64 %18, 0
  %20 = trunc i64 %18 to i32
  %21 = sub i32 0, %20
  %22 = select i1 %19, ptr %11, ptr %13
  %23 = select i1 %19, ptr %12, ptr %14
  %24 = select i1 %19, i32 %21, i32 %20
  %25 = load ptr, ptr %23, align 8, !tbaa !6
  %26 = load ptr, ptr %22, align 8, !tbaa !6
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %24) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %24) #21
  br label %41

31:                                               ; preds = %17
  %32 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %26, i32 noundef %24) #21
  br i1 %19, label %33, label %37

33:                                               ; preds = %31
  %34 = load i32, ptr %16, align 8, !tbaa !61
  %35 = icmp slt i32 %34, %21
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  store i32 %21, ptr %16, align 8, !tbaa !61
  br label %41

37:                                               ; preds = %31
  %38 = load i32, ptr %15, align 4, !tbaa !63
  %39 = icmp slt i32 %38, %20
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 %20, ptr %15, align 4, !tbaa !63
  br label %41

41:                                               ; preds = %36, %33, %40, %37, %29
  %42 = add nsw i64 %18, 1
  %43 = icmp slt i64 %42, %6
  br i1 %43, label %17, label %44, !llvm.loop !185

44:                                               ; preds = %41, %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @find_base_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_all_positions_unneeded(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !87
  %10 = sub nsw i64 %7, %9
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !19
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %16) #21
  %19 = add nuw nsw i32 %16, 1
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %21, label %15, !llvm.loop !186

21:                                               ; preds = %15, %5
  %22 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9, i32 0, i32 1
  store i32 %11, ptr %22, align 8, !tbaa !19
  br label %25

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  store i64 0, ptr %24, align 8, !tbaa !19
  br label %25

25:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_position_unneeded(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !tbaa !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %1) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9, i32 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !19
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !19
  %15 = load ptr, ptr %7, align 8, !tbaa !19
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %1) #21
  br label %24

17:                                               ; preds = %2
  %18 = zext nneg i32 %1 to i64
  %19 = shl nuw i64 1, %18
  %20 = xor i64 %19, -1
  %21 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !19
  %23 = and i64 %22, %20
  store i64 %23, ptr %21, align 8, !tbaa !19
  br label %24

24:                                               ; preds = %6, %11, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @any_positions_needed_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9, i32 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !19
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !87
  %13 = sub nsw i64 %10, %12
  %14 = icmp sgt i64 %13, %8
  br label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %17 = load i64, ptr %16, align 8, !tbaa !19
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ %14, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i8
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 645, ptr noundef nonnull @.str.2) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_for_inc_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  %3 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 2, ptr noundef null) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @replace_inc_dec_mem, ptr noundef %0) #21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @replace_inc_dec_mem(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.insn_size, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %11 = lshr i32 %7, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !19
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %3, align 8, !tbaa !187
  %17 = getelementptr inbounds %struct.insn_size, ptr %3, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !189
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = call i32 @for_each_rtx(ptr noundef nonnull %18, ptr noundef nonnull @replace_inc_dec, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %20

20:                                               ; preds = %2, %6, %10
  %21 = phi i32 [ -1, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @replace_inc_dec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
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
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = load i32, ptr %1, align 8, !tbaa !187
  %10 = sext i32 %9 to i64
  %11 = load i32, ptr %8, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = tail call ptr @gen_int_mode(i64 noundef %10, i32 noundef %13) #21
  %15 = load i32, ptr %8, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %17, ptr noundef nonnull %8, ptr noundef %14) #21
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %8, ptr noundef %18) #21
  br label %41

20:                                               ; preds = %2, %2
  %21 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = load i32, ptr %1, align 8, !tbaa !187
  %24 = sub nsw i32 0, %23
  %25 = sext i32 %24 to i64
  %26 = load i32, ptr %22, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = tail call ptr @gen_int_mode(i64 noundef %25, i32 noundef %28) #21
  %30 = load i32, ptr %22, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %32, ptr noundef nonnull %22, ptr noundef %29) #21
  %34 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %22, ptr noundef %33) #21
  br label %41

35:                                               ; preds = %2, %2
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %39, ptr noundef %37) #21
  br label %41

41:                                               ; preds = %6, %20, %35
  %42 = phi ptr [ %40, %35 ], [ %34, %20 ], [ %19, %6 ]
  %43 = getelementptr inbounds %struct.insn_size, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !189
  %45 = tail call ptr @emit_insn_before(ptr noundef %42, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %41, %2
  %47 = phi i32 [ 0, %2 ], [ -1, %41 ]
  ret i32 %47
}

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_group_info_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !107
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %4, ptr %0, align 8, !tbaa !190
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !192
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !190
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !193
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !195
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !139
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !196
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !196
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !14
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !197

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !14
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !14
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !195
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !190
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !195
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !139
  store i64 %35, ptr %3, align 8, !tbaa !196
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !14
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !14
  %40 = load i32, ptr %23, align 8, !tbaa !195
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !195
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !198

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !199
  store ptr %44, ptr %0, align 8, !tbaa !190
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !193
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !14
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !196
  store i32 %16, ptr %1, align 4, !tbaa !14
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !196
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !196
  %6 = load i32, ptr %1, align 4, !tbaa !14
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step3_exit_block_scan(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %6 = load ptr, ptr @rtx_group_vec, align 8
  %7 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #20, !range !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bb_info, ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %28
  %12 = phi ptr [ %6, %9 ], [ %29, %28 ]
  %13 = phi i32 [ 0, %9 ], [ %30, %28 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 2
  %16 = load i8, ptr %15, align 4, !tbaa !65
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !40
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %23, ptr noundef %25) #21
  %27 = load ptr, ptr @rtx_group_vec, align 8
  br label %28

28:                                               ; preds = %11, %18, %22
  %29 = phi ptr [ %12, %11 ], [ %12, %18 ], [ %27, %22 ]
  %30 = add i32 %13, 1
  %31 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %29, i32 noundef %30, ptr noundef nonnull %2) #20, !range !56
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %11, !llvm.loop !200

33:                                               ; preds = %28, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step3_scan(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i8 %0, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !117
  br label %16

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @find_insn_before_first_wild_read(ptr noundef %8) #20
  %14 = load ptr, ptr %8, align 8, !tbaa !117
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10, %12
  %17 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @bitmap_clear(ptr noundef nonnull %19) #21
  br label %29

22:                                               ; preds = %16
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %23, ptr %18, align 8, !tbaa !79
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @bitmap_obstack_free(ptr noundef nonnull %26) #21
  store ptr null, ptr %25, align 8, !tbaa !79
  br label %29

29:                                               ; preds = %24, %28, %21, %22
  %30 = phi ptr [ %13, %24 ], [ %13, %28 ], [ %17, %21 ], [ %17, %22 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %62, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 2
  %34 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 3
  br label %35

35:                                               ; preds = %32, %58
  %36 = phi ptr [ %30, %32 ], [ %60, %58 ]
  %37 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %38, align 8
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -7
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !90
  %48 = load ptr, ptr %33, align 8, !tbaa !71
  %49 = load ptr, ptr %34, align 8, !tbaa !79
  br i1 %9, label %55, label %50

50:                                               ; preds = %45
  tail call fastcc void @scan_stores_spill(ptr noundef %47, ptr noundef %48, ptr noundef %49) #20
  %51 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = load ptr, ptr %33, align 8, !tbaa !71
  %54 = load ptr, ptr %34, align 8, !tbaa !79
  tail call fastcc void @scan_reads_spill(ptr noundef %52, ptr noundef %53, ptr noundef %54) #20
  br label %58

55:                                               ; preds = %45
  tail call fastcc void @scan_stores_nospill(ptr noundef %47, ptr noundef %48, ptr noundef %49) #20
  %56 = load ptr, ptr %33, align 8, !tbaa !71
  %57 = load ptr, ptr %34, align 8, !tbaa !79
  tail call fastcc void @scan_reads_nospill(ptr noundef nonnull %36, ptr noundef %56, ptr noundef %57) #20
  br label %58

58:                                               ; preds = %40, %50, %55, %35
  %59 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !118
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %35, !llvm.loop !201

62:                                               ; preds = %58, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reachable_blocks(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = lshr i32 %6, 6
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !139
  %11 = and i32 %6, 63
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw i64 1, %12
  %14 = and i64 %13, %10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %0, i32 noundef %6) #20
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !202
  %18 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !203
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %3) #20, !range !5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16, %21
  %22 = load ptr, ptr %3, align 8, !tbaa !6
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  tail call fastcc void @mark_reachable_blocks(ptr noundef %0, ptr noundef %23) #20
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %24 = load i32, ptr %4, align 8
  %25 = load ptr, ptr %18, align 8
  %26 = call fastcc zeroext i8 @ei_cond(i32 %24, ptr %25, ptr noundef nonnull %3) #20, !range !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %21, !llvm.loop !205

28:                                               ; preds = %21, %16, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !206
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !208
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !209
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !210
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !211
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !139
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !212
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !210
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !206
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !206
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !208
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !208
  %25 = load ptr, ptr %0, align 8, !tbaa !211
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !139
  store i64 %28, ptr %3, align 8, !tbaa !212
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !213

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !214

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !208
  store i64 %34, ptr %3, align 8, !tbaa !212
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !14
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !206
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !212
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !208
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_insn_before_first_wild_read(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %11, %14 ], [ %2, %1 ]
  %6 = phi ptr [ %15, %14 ], [ null, %1 ]
  %7 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 1
  %8 = load i8, ptr %7, align 1, !tbaa !91
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br i1 %9, label %14, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %11, %12 ], [ %6, %4 ]
  %16 = icmp eq ptr %11, null
  br i1 %16, label %17, label %4, !llvm.loop !215

17:                                               ; preds = %14
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1, %17
  br label %20

20:                                               ; preds = %12, %17, %19
  %21 = phi ptr [ %2, %19 ], [ %15, %17 ], [ null, %12 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stores_spill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi ptr [ %0, %5 ], [ %23, %21 ]
  %9 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !36
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %14 = sext i32 %10 to i64
  %15 = tail call fastcc i32 @get_bitmap_index(ptr noundef %13, i64 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %15) #21
  br i1 %6, label %21, label %19

19:                                               ; preds = %17
  %20 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %15) #21
  br label %21

21:                                               ; preds = %12, %19, %17, %7
  %22 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !133
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !216

25:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_reads_spill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %0, %5 ], [ %24, %22 ]
  %9 = getelementptr inbounds %struct.read_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !135
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @clear_alias_group, align 8, !tbaa !6
  %14 = sext i32 %10 to i64
  %15 = tail call fastcc i32 @get_bitmap_index(ptr noundef %13, i64 noundef %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  br i1 %6, label %20, label %18

18:                                               ; preds = %17
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %15) #21
  br label %20

20:                                               ; preds = %18, %17
  %21 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %15) #21
  br label %22

22:                                               ; preds = %12, %20, %7
  %23 = getelementptr inbounds %struct.read_info, ptr %8, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !217

26:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stores_nospill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %34
  %8 = phi ptr [ %0, %5 ], [ %36, %34 ]
  %9 = load ptr, ptr @rtx_group_vec, align 8
  %10 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %9, i32 noundef %11) #20
  %13 = getelementptr inbounds %struct.group_info, ptr %12, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !65
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !88
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16, %30
  %23 = phi i64 [ %31, %30 ], [ %18, %16 ]
  %24 = tail call fastcc i32 @get_bitmap_index(ptr noundef %12, i64 noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %24) #21
  br i1 %6, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %24) #21
  br label %30

30:                                               ; preds = %26, %28, %22
  %31 = add nsw i64 %23, 1
  %32 = load i64, ptr %19, align 8, !tbaa !88
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %22, label %34, !llvm.loop !218

34:                                               ; preds = %30, %16, %7
  %35 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !133
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %7, !llvm.loop !219

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_reads_nospill(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %7 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 2, !tbaa !119
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @rtx_group_vec, align 8
  %12 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #20, !range !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %2, null
  br label %16

16:                                               ; preds = %14, %37
  %17 = phi ptr [ %11, %14 ], [ %38, %37 ]
  %18 = phi i32 [ 0, %14 ], [ %39, %37 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.group_info, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !65
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.group_info, ptr %19, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !40
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  br i1 %15, label %32, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.group_info, ptr %19, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %2, ptr noundef %30) #21
  br label %32

32:                                               ; preds = %28, %27
  %33 = getelementptr inbounds %struct.group_info, ptr %19, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %34) #21
  %36 = load ptr, ptr @rtx_group_vec, align 8
  br label %37

37:                                               ; preds = %16, %23, %32
  %38 = phi ptr [ %17, %16 ], [ %17, %23 ], [ %36, %32 ]
  %39 = add nuw nsw i32 %18, 1
  %40 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %38, i32 noundef %39, ptr noundef nonnull %4) #20, !range !56
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %16, !llvm.loop !220

42:                                               ; preds = %37, %10, %3
  %43 = icmp eq ptr %6, null
  br i1 %43, label %119, label %44

44:                                               ; preds = %42
  %45 = icmp eq ptr %2, null
  %46 = load ptr, ptr @rtx_group_vec, align 8
  br label %47

47:                                               ; preds = %44, %114
  %48 = phi ptr [ %46, %44 ], [ %115, %114 ]
  %49 = phi ptr [ %6, %44 ], [ %117, %114 ]
  %50 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %4) #20, !range !56
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %114, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.read_info, ptr %49, i64 0, i32 4
  %54 = getelementptr inbounds %struct.read_info, ptr %49, i64 0, i32 2
  %55 = getelementptr inbounds %struct.read_info, ptr %49, i64 0, i32 3
  br label %56

56:                                               ; preds = %52, %109
  %57 = phi i32 [ 0, %52 ], [ %110, %109 ]
  %58 = load ptr, ptr %4, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.group_info, ptr %58, i64 0, i32 2
  %60 = load i8, ptr %59, align 4, !tbaa !65
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %109, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %49, align 8, !tbaa !151
  %64 = icmp eq i32 %57, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i32, ptr %54, align 8, !tbaa !153
  %67 = load i32, ptr %55, align 4, !tbaa !154
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br i1 %45, label %105, label %101

70:                                               ; preds = %65
  %71 = icmp slt i32 %66, %67
  br i1 %71, label %72, label %109

72:                                               ; preds = %70
  %73 = sext i32 %66 to i64
  br label %74

74:                                               ; preds = %72, %85
  %75 = phi i32 [ %86, %85 ], [ %67, %72 ]
  %76 = phi i64 [ %87, %85 ], [ %73, %72 ]
  %77 = tail call fastcc i32 @get_bitmap_index(ptr noundef %58, i64 noundef %76) #20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  br i1 %45, label %82, label %80

80:                                               ; preds = %79
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %77) #21
  br label %82

82:                                               ; preds = %80, %79
  %83 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %77) #21
  %84 = load i32, ptr %55, align 4, !tbaa !154
  br label %85

85:                                               ; preds = %82, %74
  %86 = phi i32 [ %84, %82 ], [ %75, %74 ]
  %87 = add nsw i64 %76, 1
  %88 = sext i32 %86 to i64
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %74, label %109, !llvm.loop !221

90:                                               ; preds = %62
  %91 = icmp slt i32 %63, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.group_info, ptr %58, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !105
  %95 = getelementptr inbounds %struct.group_info, ptr %58, i64 0, i32 5
  %96 = load ptr, ptr %95, align 8, !tbaa !106
  %97 = load ptr, ptr %53, align 8, !tbaa !152
  %98 = tail call i32 @canon_true_dependence(ptr noundef %94, i32 noundef 14, ptr noundef %96, ptr noundef %97, ptr noundef null, ptr noundef nonnull @rtx_varies_p) #21
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %92
  br i1 %45, label %105, label %101

101:                                              ; preds = %100, %69
  %102 = getelementptr inbounds %struct.group_info, ptr %58, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !67
  %104 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %2, ptr noundef %103) #21
  br label %105

105:                                              ; preds = %101, %100, %69
  %106 = getelementptr inbounds %struct.group_info, ptr %58, i64 0, i32 10
  %107 = load ptr, ptr %106, align 8, !tbaa !67
  %108 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %107) #21
  br label %109

109:                                              ; preds = %85, %105, %70, %56, %90, %92
  %110 = add nuw nsw i32 %57, 1
  %111 = load ptr, ptr @rtx_group_vec, align 8
  %112 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %111, i32 noundef %110, ptr noundef nonnull %4) #20, !range !56
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %56, !llvm.loop !222

114:                                              ; preds = %109, %47
  %115 = phi ptr [ %48, %47 ], [ %111, %109 ]
  %116 = getelementptr inbounds %struct.read_info, ptr %49, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !130
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %47, !llvm.loop !223

119:                                              ; preds = %114, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_bitmap_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = sub nsw i64 0, %1
  %6 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 11
  br label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !63
  %15 = sext i32 %14 to i64
  %16 = icmp sgt i64 %15, %1
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 12
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %17 ]
  %21 = phi i64 [ %5, %10 ], [ %1, %17 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !6
  %23 = getelementptr inbounds i32, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !14
  br label %25

25:                                               ; preds = %19, %12, %4
  %26 = phi i32 [ 0, %4 ], [ 0, %12 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !139
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !19
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !19
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !139
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 738, ptr noundef nonnull @.str.2) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !224
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !224
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.56, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_simple_dataflow(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_confluence_0(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !20
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.bb_info, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %14, ptr %10, align 8, !tbaa !73
  %15 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.bb_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  tail call void @bitmap_copy(ptr noundef %14, ptr noundef %19) #21
  br label %20

20:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_confluence_n(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.bb_info, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !204
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !20
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.bb_info, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  tail call void @bitmap_and_into(ptr noundef nonnull %21, ptr noundef nonnull %11) #21
  br label %27

24:                                               ; preds = %13
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %25, ptr %20, align 8, !tbaa !73
  %26 = load ptr, ptr %10, align 8, !tbaa !72
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %26) #21
  br label %27

27:                                               ; preds = %23, %24, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dse_transfer_function(i32 noundef %0) #0 {
  %2 = load ptr, ptr @bb_table, align 8, !tbaa !6
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef nonnull %15, ptr noundef %19, ptr noundef nonnull %11, ptr noundef nonnull %7) #21
  br label %36

21:                                               ; preds = %13
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %22, ptr %14, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = load ptr, ptr %10, align 8, !tbaa !73
  %26 = load ptr, ptr %6, align 8, !tbaa !79
  %27 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26) #21
  br label %36

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %33, ptr %29, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  tail call void @bitmap_copy(ptr noundef %33, ptr noundef %35) #21
  br label %36

36:                                               ; preds = %28, %9, %32, %21, %17
  %37 = phi i8 [ %20, %17 ], [ 1, %21 ], [ 1, %32 ], [ 0, %9 ], [ 0, %28 ]
  ret i8 %37
}

; Function Attrs: optsize
declare ptr @df_get_postorder(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_get_n_blocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_print_bb_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_and_compl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_group_info_t_heap_free() unnamed_addr #16 {
  %1 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @rtx_group_vec, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i8 0, i8 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"clear_alias_mode_holder", !12, i64 0, !12, i64 4}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !7, i64 8}
!16 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!17 = !{!18, !12, i64 32}
!18 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!19 = !{!8, !8, i64 0}
!20 = !{!21, !12, i64 80}
!21 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !22, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!22 = !{!"long", !8, i64 0}
!23 = !{!24, !7, i64 48}
!24 = !{!"bb_info", !7, i64 0, !8, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!25 = !{!26, !7, i64 16}
!26 = !{!"df_lr_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!27 = !{!28, !7, i64 8}
!28 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!21, !7, i64 8}
!32 = !{!18, !7, i64 8}
!33 = !{!34, !8, i64 0}
!34 = !{!"store_info", !8, i64 0, !8, i64 1, !12, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !22, i64 40, !22, i64 48, !8, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!35 = distinct !{!35, !30}
!36 = !{!34, !12, i64 32}
!37 = !{!38, !8, i64 0}
!38 = !{!"insn_info", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!39 = !{!34, !12, i64 4}
!40 = !{!41, !8, i64 13}
!41 = !{!"group_info", !7, i64 0, !12, i64 8, !8, i64 12, !8, i64 13, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !12, i64 92}
!42 = distinct !{!42, !30}
!43 = !{!44, !7, i64 16}
!44 = !{!"deferred_change", !7, i64 0, !7, i64 8, !7, i64 16}
!45 = !{!44, !7, i64 8}
!46 = !{!44, !7, i64 0}
!47 = distinct !{!47, !30}
!48 = !{!38, !8, i64 4}
!49 = distinct !{!49, !30}
!50 = !{!34, !7, i64 96}
!51 = !{!38, !7, i64 8}
!52 = !{!34, !8, i64 1}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = !{i32 0, i32 2}
!57 = !{!41, !7, i64 48}
!58 = !{!41, !7, i64 32}
!59 = !{!41, !7, i64 56}
!60 = !{!41, !7, i64 40}
!61 = !{!41, !12, i64 88}
!62 = !{!41, !7, i64 72}
!63 = !{!41, !12, i64 92}
!64 = !{!41, !7, i64 80}
!65 = !{!41, !8, i64 12}
!66 = distinct !{!66, !30}
!67 = !{!41, !7, i64 64}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !30}
!71 = !{!24, !7, i64 16}
!72 = !{!24, !7, i64 32}
!73 = !{!24, !7, i64 40}
!74 = distinct !{!74, !30}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = !{!78, !7, i64 0}
!78 = !{!"simple_bitmap_def", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16}
!79 = !{!24, !7, i64 24}
!80 = distinct !{!80, !30}
!81 = !{!18, !7, i64 0}
!82 = !{!21, !7, i64 56}
!83 = distinct !{!83, !30}
!84 = !{!85, !7, i64 0}
!85 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!86 = distinct !{!86, !30}
!87 = !{!34, !22, i64 40}
!88 = !{!34, !22, i64 48}
!89 = distinct !{!89, !30}
!90 = !{!38, !7, i64 16}
!91 = !{!38, !8, i64 1}
!92 = !{!38, !7, i64 24}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !30}
!99 = distinct !{!99, !30}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !30}
!102 = distinct !{!102, !30}
!103 = !{!41, !7, i64 0}
!104 = !{!41, !12, i64 8}
!105 = !{!41, !7, i64 16}
!106 = !{!41, !7, i64 24}
!107 = !{!108, !12, i64 0}
!108 = !{!"VEC_group_info_t_base", !12, i64 0, !12, i64 4, !8, i64 8}
!109 = !{!108, !12, i64 4}
!110 = !{!111, !12, i64 16}
!111 = !{!"dataflow", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!112 = !{!111, !7, i64 8}
!113 = !{!34, !7, i64 8}
!114 = distinct !{!114, !30}
!115 = !{!38, !7, i64 40}
!116 = distinct !{!116, !30}
!117 = !{!24, !7, i64 0}
!118 = !{!38, !7, i64 32}
!119 = !{!38, !8, i64 2}
!120 = !{!38, !8, i64 3}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !30}
!123 = !{!124, !12, i64 0}
!124 = !{!"rtvec_def", !12, i64 0, !8, i64 8}
!125 = distinct !{!125, !30}
!126 = !{!127, !12, i64 0}
!127 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!128 = !{!129, !7, i64 8}
!129 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !22, i64 56}
!130 = !{!131, !7, i64 24}
!131 = !{!"read_info", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24}
!132 = distinct !{!132, !30}
!133 = !{!34, !7, i64 72}
!134 = distinct !{!134, !30}
!135 = !{!131, !12, i64 4}
!136 = distinct !{!136, !30}
!137 = distinct !{!137, !30}
!138 = distinct !{!138, !30}
!139 = !{!22, !22, i64 0}
!140 = !{!141, !7, i64 16}
!141 = !{!"mem_attrs", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !8, i64 32}
!142 = !{}
!143 = distinct !{!143, !30}
!144 = !{!34, !7, i64 16}
!145 = !{!34, !7, i64 88}
!146 = distinct !{!146, !30}
!147 = !{!34, !7, i64 80}
!148 = !{!34, !7, i64 24}
!149 = distinct !{!149, !30}
!150 = !{!141, !12, i64 24}
!151 = !{!131, !12, i64 0}
!152 = !{!131, !7, i64 16}
!153 = !{!131, !12, i64 8}
!154 = !{!131, !12, i64 12}
!155 = distinct !{!155, !30}
!156 = distinct !{!156, !30}
!157 = distinct !{!157, !30}
!158 = distinct !{!158, !30}
!159 = distinct !{!159, !30}
!160 = distinct !{!160, !30}
!161 = !{!162, !7, i64 1184}
!162 = !{!"gcc_target", !163, i64 0, !165, i64 368, !166, i64 664, !12, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !22, i64 1064, !22, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !167, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !22, i64 1464, !168, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !169, i64 1784, !170, i64 1792, !171, i64 1896, !172, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!163 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !164, i64 24, !164, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!164 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!165 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!166 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!167 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!168 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!169 = !{!"c", !7, i64 0}
!170 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!171 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!172 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!173 = !{!141, !8, i64 32}
!174 = distinct !{!174, !30}
!175 = !{!176, !12, i64 4}
!176 = !{!"cselib_val_struct", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!177 = !{!176, !12, i64 0}
!178 = distinct !{!178, !30}
!179 = distinct !{!179, !30}
!180 = distinct !{!180, !30}
!181 = distinct !{!181, !30}
!182 = distinct !{!182, !30}
!183 = distinct !{!183, !30}
!184 = distinct !{!184, !30}
!185 = distinct !{!185, !30}
!186 = distinct !{!186, !30}
!187 = !{!188, !12, i64 0}
!188 = !{!"insn_size", !12, i64 0, !7, i64 8}
!189 = !{!188, !7, i64 8}
!190 = !{!191, !7, i64 0}
!191 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !22, i64 24}
!192 = !{!191, !7, i64 8}
!193 = !{!194, !12, i64 16}
!194 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!195 = !{!191, !12, i64 16}
!196 = !{!191, !22, i64 24}
!197 = distinct !{!197, !30}
!198 = distinct !{!198, !30}
!199 = !{!194, !7, i64 0}
!200 = distinct !{!200, !30}
!201 = distinct !{!201, !30}
!202 = !{i64 0, i64 4, !14, i64 8, i64 8, !6}
!203 = !{i64 0, i64 8, !6}
!204 = !{!129, !7, i64 0}
!205 = distinct !{!205, !30}
!206 = !{!207, !12, i64 12}
!207 = !{!"", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !22, i64 24}
!208 = !{!207, !12, i64 16}
!209 = !{!78, !12, i64 12}
!210 = !{!207, !12, i64 8}
!211 = !{!207, !7, i64 0}
!212 = !{!207, !22, i64 24}
!213 = distinct !{!213, !30}
!214 = distinct !{!214, !30}
!215 = distinct !{!215, !30}
!216 = distinct !{!216, !30}
!217 = distinct !{!217, !30}
!218 = distinct !{!218, !30}
!219 = distinct !{!219, !30}
!220 = distinct !{!220, !30}
!221 = distinct !{!221, !30}
!222 = distinct !{!222, !30}
!223 = distinct !{!223, !30}
!224 = !{!225, !12, i64 0}
!225 = !{!"", !12, i64 0, !7, i64 8}
