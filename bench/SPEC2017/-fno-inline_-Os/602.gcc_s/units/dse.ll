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
@optimize = external local_unnamed_addr global i32, align 4
@flag_dse = external local_unnamed_addr global i32, align 4
@pass_rtl_dse1 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_dse1, ptr @rest_of_handle_dse, ptr null, ptr null, i32 0, i32 123, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"dse1\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"doing global processing\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"doing global spill processing\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"dse: local deletions = %d, global deletions = %d, spill deletions = %d\0A\00", align 1
@locally_deleted = internal unnamed_addr global i32 0, align 4
@globally_deleted = internal unnamed_addr global i32 0, align 4
@spill_deleted = internal unnamed_addr global i32 0, align 4
@scratch = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"rtx_store_info_pool\00", align 1
@rtx_store_info_pool = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"read_info_pool\00", align 1
@read_info_pool = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"insn_info_pool\00", align 1
@insn_info_pool = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"bb_info_pool\00", align 1
@bb_info_pool = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"rtx_group_info_pool\00", align 1
@rtx_group_info_pool = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"deferred_change_pool\00", align 1
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
@.str.13 = private unnamed_addr constant [20 x i8] c"cse_store_info_pool\00", align 1
@cse_store_info_pool = internal unnamed_addr global ptr null, align 8
@active_local_stores = internal unnamed_addr global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@deferred_change_list = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [91 x i8] c"Locally deleting insn %d because insn %d stores the same value and couldn't be eliminated\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"\0A**scanning insn=%d\0A\00", align 1
@block_clear_fn = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"%s call %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"removing from active\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"handling memset as BLKmode store\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"mems_found = %d, cannot_delete = %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c" adding wild read, volatile or barrier.\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c" adding wild read, canon_address failure.\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.26 = private unnamed_addr constant [27 x i8] c" processing spill load %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c" processing const load gid=%d[BLK]\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c" processing const load gid=%d[%d..%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c" processing cselib load mem:\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c" processing cselib load against insn %d\0A\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.32 = private unnamed_addr constant [20 x i8] c"found alias set %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"disqualifying alias set %d, (%s) != (%s)\0A\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.34 = private unnamed_addr constant [8 x i8] c"  mem: \00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"\0A   after cselib_expand address: \00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"\0A   after canon_rtx address: \00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"  gid=%d offset=%d \0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c" no cselib val - should be a wild read.\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"  varying cselib base=%u:%u offset = %d\0A\00", align 1
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [71 x i8] c"trying to replace %smode load in insn %d from %smode store in insn %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c" -- could not extract bits of stored value\0A\00", align 1
@.str.42 = private unnamed_addr constant [64 x i8] c"abandoning replacement because sequence clobbers live hardregs:\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c" -- replaced the loaded MEM with \00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c" -- replacing the loaded MEM with \00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c" led to an invalid instruction\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@optab_table = external global [159 x %struct.optab_d], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.46 = private unnamed_addr constant [15 x i8] c"%s insn=%d %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"has store\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"naked\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.49 = private unnamed_addr constant [52 x i8] c" adding wild read for (clobber (mem:BLK (scratch))\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c" processing spill store %d(%s)\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c" processing const base store gid=%d[%d..%d)\0A\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c" processing cselib store [%d..%d)\0A\00", align 1
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [48 x i8] c"    trying spill store in insn=%d alias_set=%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [44 x i8] c"    trying store in insn=%d gid=%d[%d..%d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"Locally deleting insn %d \00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"alias set %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"group %d is frame related \00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"group %d(%d+%d): \00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"n \00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"p \00", align 1
@current_position = internal unnamed_addr global i32 0, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.63 = private unnamed_addr constant [44 x i8] c"\0A\0A*** Global dataflow info after analysis.\0A\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"  in:   \00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"  in:   *MISSING*\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"  gen:  \00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"  gen:  *MISSING*\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"  kill: \00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"  kill: *MISSING*\0A\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"  out:  \00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"  out:  *MISSING*\0A\0A\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"starting to process insn %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"  v:  \00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"i = %d, index = %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"failing at i = %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"wild read\0A\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"regular read\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"clear alias sets              \00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"disqualified clear alias sets \00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"Spill deleting insn %d\0A\00", align 1
@pass_rtl_dse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.81, ptr @gate_dse2, ptr @rest_of_handle_dse, ptr null, ptr null, i32 0, i32 124, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"dse2\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dse_record_singleton_alias_set(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !326 {
  %3 = alloca %struct.clear_alias_mode_holder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call fastcc zeroext i8 @gate_dse() #20, !range !327
  %5 = icmp ne i8 %4, 0
  %6 = icmp ne i32 %0, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %12, ptr @clear_alias_sets, align 8, !tbaa !328
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %13, ptr @disqualified_clear_alias_sets, align 8, !tbaa !328
  %14 = tail call ptr @htab_create(i64 noundef 11, ptr noundef nonnull @clear_alias_mode_hash, ptr noundef nonnull @clear_alias_mode_eq, ptr noundef null) #21
  store ptr %14, ptr @clear_alias_mode_table, align 8, !tbaa !328
  %15 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 8, i64 noundef 100) #21
  store ptr %15, ptr @clear_alias_mode_pool, align 8, !tbaa !328
  %16 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %0) #21
  store i32 %0, ptr %3, align 4, !tbaa !332
  %20 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !328
  %21 = call ptr @htab_find_slot(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 1) #21
  %22 = load ptr, ptr %21, align 8, !tbaa !328
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2968, ptr noundef nonnull @.str.2) #21
  br label %25

25:                                               ; preds = %17, %24
  %26 = load ptr, ptr @clear_alias_mode_pool, align 8, !tbaa !328
  %27 = call ptr @pool_alloc(ptr noundef %26) #21
  store ptr %27, ptr %21, align 8, !tbaa !328
  store i32 %0, ptr %27, align 4, !tbaa !332
  %28 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %27, i64 0, i32 1
  store i32 %1, ptr %28, align 4, !tbaa !335
  br label %29

29:                                               ; preds = %2, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gate_dse() unnamed_addr #0 !prof !326 !PGOFuncName !336 {
  %1 = tail call zeroext i8 @gate_dse1() #20, !range !327
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @gate_dse2() #20, !range !327
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
define internal i32 @clear_alias_mode_hash(ptr nocapture noundef readonly %0) #3 !prof !326 !PGOFuncName !337 {
  %2 = load i32, ptr %0, align 4, !tbaa !332
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @clear_alias_mode_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !326 !PGOFuncName !338 {
  %3 = load i32, ptr %0, align 4, !tbaa !332
  %4 = load i32, ptr %1, align 4, !tbaa !332
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
define internal zeroext i8 @gate_dse1() #0 !prof !339 !PGOFuncName !340 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !341
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !342

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
define internal zeroext i8 @gate_dse2() #0 !prof !339 !PGOFuncName !343 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !341
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !342

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dse_invalidate_singleton_alias_set(i32 noundef %0) local_unnamed_addr #0 !prof !326 {
  %2 = tail call fastcc zeroext i8 @gate_dse() #20, !range !327
  %3 = icmp ne i8 %2, 0
  %4 = icmp ne i32 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  %8 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %7, i32 noundef %0) #21
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_dse() #0 !prof !344 !PGOFuncName !345 {
  %1 = tail call i32 @df_set_flags(i32 noundef 32) #21
  tail call void @df_note_add_problem() #21
  tail call void @df_analyze() #21
  tail call fastcc void @dse_step0() #20
  tail call fastcc void @dse_step1() #20
  tail call fastcc void @dse_step2_init() #20
  %2 = tail call fastcc zeroext i8 @dse_step2_nospill() #20, !range !327
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4, !prof !346

4:                                                ; preds = %0
  %5 = tail call i32 @df_set_flags(i32 noundef 1) #21
  tail call void @df_analyze() #21
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !347

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 24, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %8, %4
  tail call fastcc void @dse_step3(i8 noundef zeroext 0) #20
  tail call fastcc void @dse_step4() #20
  tail call fastcc void @dse_step5_nospill() #20
  br label %11

11:                                               ; preds = %10, %0
  %12 = phi i8 [ 1, %10 ], [ 0, %0 ]
  %13 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15, !prof !348

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @dse_step2_spill() #20, !range !327
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  br i1 %3, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call i32 @df_set_flags(i32 noundef 1) #21
  tail call void @df_analyze() #21
  br label %21

21:                                               ; preds = %19, %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr nonnull %22)
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
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !348

31:                                               ; preds = %27
  %32 = load i32, ptr @locally_deleted, align 4, !tbaa !341
  %33 = load i32, ptr @globally_deleted, align 4, !tbaa !341
  %34 = load i32, ptr @spill_deleted, align 4, !tbaa !341
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.6, i32 noundef %32, i32 noundef %33, i32 noundef %34) #20
  br label %36

36:                                               ; preds = %31, %27
  ret i32 0
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step0() unnamed_addr #0 !prof !344 !PGOFuncName !349 {
  store i32 0, ptr @locally_deleted, align 4, !tbaa !341
  store i32 0, ptr @globally_deleted, align 4, !tbaa !341
  store i32 0, ptr @spill_deleted, align 4, !tbaa !341
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %1, ptr @scratch, align 8, !tbaa !328
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 104, i64 noundef 100) #21
  store ptr %2, ptr @rtx_store_info_pool, align 8, !tbaa !328
  %3 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 32, i64 noundef 100) #21
  store ptr %3, ptr @read_info_pool, align 8, !tbaa !328
  %4 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.9, i64 noundef 48, i64 noundef 100) #21
  store ptr %4, ptr @insn_info_pool, align 8, !tbaa !328
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.10, i64 noundef 56, i64 noundef 100) #21
  store ptr %5, ptr @bb_info_pool, align 8, !tbaa !328
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.11, i64 noundef 96, i64 noundef 100) #21
  store ptr %6, ptr @rtx_group_info_pool, align 8, !tbaa !328
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 24, i64 noundef 10) #21
  store ptr %7, ptr @deferred_change_pool, align 8, !tbaa !328
  %8 = tail call ptr @htab_create(i64 noundef 11, ptr noundef nonnull @invariant_group_base_hash, ptr noundef nonnull @invariant_group_base_eq, ptr noundef null) #21
  store ptr %8, ptr @rtx_group_table, align 8, !tbaa !328
  %9 = load ptr, ptr @cfun, align 8, !tbaa !328
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !350
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !352
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 8) #21
  store ptr %15, ptr @bb_table, align 8, !tbaa !328
  store i32 0, ptr @rtx_group_next_id, align 4, !tbaa !341
  %16 = load ptr, ptr @cfun, align 8, !tbaa !328
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 20
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i8
  store i8 %21, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !354
  tail call void @init_alias_analysis() #21
  %22 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !348

24:                                               ; preds = %0
  %25 = tail call fastcc ptr @get_group_info(ptr noundef null) #20
  br label %26

26:                                               ; preds = %0, %24
  %27 = phi ptr [ %25, %24 ], [ null, %0 ]
  store ptr %27, ptr @clear_alias_group, align 8, !tbaa !328
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step1() unnamed_addr #0 !prof !344 !PGOFuncName !355 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  tail call void @cselib_init(i32 noundef 0) #21
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %2, ptr @all_blocks, align 8, !tbaa !328
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef 0) #21
  %4 = load ptr, ptr @all_blocks, align 8, !tbaa !328
  %5 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef 1) #21
  %6 = load ptr, ptr @cfun, align 8, !tbaa !328
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !350
  %9 = load ptr, ptr %8, align 8, !tbaa !328
  %10 = icmp eq ptr %9, null
  br i1 %10, label %203, label %11, !prof !356

11:                                               ; preds = %0, %199
  %12 = phi ptr [ %201, %199 ], [ %9, %0 ]
  %13 = load ptr, ptr @bb_info_pool, align 8, !tbaa !328
  %14 = tail call ptr @pool_alloc(ptr noundef %13) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, i8 0, i64 56, i1 false)
  %15 = load ptr, ptr @all_blocks, align 8, !tbaa !328
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !357
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %17) #21
  %19 = getelementptr inbounds %struct.bb_info, ptr %14, i64 0, i32 6
  store ptr %1, ptr %19, align 8, !tbaa !360
  %20 = load i32, ptr %16, align 8, !tbaa !357
  %21 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %20) #20
  %22 = getelementptr inbounds %struct.df_lr_bb_info, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !362
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %23) #21
  tail call void @df_simulate_initialize_forwards(ptr noundef nonnull %12, ptr noundef %1) #21
  %24 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %25 = load i32, ptr %16, align 8, !tbaa !357
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  store ptr %14, ptr %27, align 8, !tbaa !328
  store ptr @remove_useless_values, ptr @cselib_discard_hook, align 8, !tbaa !328
  %28 = icmp sgt i32 %25, 1
  br i1 %28, label %29, label %199, !prof !364

29:                                               ; preds = %11
  %30 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.13, i64 noundef 104, i64 noundef 100) #21
  store ptr %30, ptr @cse_store_info_pool, align 8, !tbaa !328
  store ptr null, ptr @active_local_stores, align 8, !tbaa !328
  tail call void @cselib_clear_table() #21
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !354
  %33 = load ptr, ptr %32, align 8, !tbaa !354
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35, !prof !365

35:                                               ; preds = %29, %55
  %36 = phi ptr [ %57, %55 ], [ %33, %29 ]
  %37 = load ptr, ptr %31, align 8, !tbaa !354
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !366
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !354
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %59, label %43, !prof !368

43:                                               ; preds = %35
  %44 = load i32, ptr %36, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %49, !prof !369

48:                                               ; preds = %43
  tail call fastcc void @scan_insn(ptr noundef %14, ptr noundef nonnull %36) #20
  br label %49

49:                                               ; preds = %43, %48
  tail call void @cselib_process_insn(ptr noundef nonnull %36) #21
  %50 = load i32, ptr %36, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %55, !prof !369

54:                                               ; preds = %49
  tail call void @df_simulate_one_insn_forwards(ptr noundef nonnull %12, ptr noundef nonnull %36, ptr noundef %1) #21
  br label %55

55:                                               ; preds = %49, %54
  %56 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !354
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %35, !prof !370, !llvm.loop !371

59:                                               ; preds = %35, %55, %29
  %60 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !354
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %123, label %62, !prof !373

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !374
  %65 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %64) #20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67, !prof !375

67:                                               ; preds = %62
  %68 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %12) #20, !range !327
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %123, label %70, !prof !376

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @single_succ(ptr noundef nonnull %12) #20
  %72 = load ptr, ptr @cfun, align 8, !tbaa !328
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !350
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !377
  %77 = icmp ne ptr %71, %76
  %78 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  %79 = icmp ne i8 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  %81 = load ptr, ptr @active_local_stores, align 8
  %82 = icmp eq ptr %81, null
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %123, label %87, !prof !378

84:                                               ; preds = %62
  %85 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %86 = icmp eq ptr %85, null
  br i1 %86, label %123, label %87, !prof !379

87:                                               ; preds = %84, %70
  %88 = phi ptr [ %85, %84 ], [ %81, %70 ]
  br label %89

89:                                               ; preds = %87, %119
  %90 = phi ptr [ %121, %119 ], [ %88, %87 ]
  %91 = getelementptr inbounds %struct.insn_info, ptr %90, i64 0, i32 6
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi ptr [ %91, %89 ], [ %97, %92 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !328
  %95 = load i8, ptr %94, align 8, !tbaa !380
  %96 = icmp eq i8 %95, 0
  %97 = getelementptr inbounds %struct.store_info, ptr %94, i64 0, i32 10
  br i1 %96, label %92, label %98, !prof !382, !llvm.loop !383

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.store_info, ptr %94, i64 0, i32 6
  %100 = load i32, ptr %99, align 8, !tbaa !384
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102, !prof !385

102:                                              ; preds = %98
  %103 = load i8, ptr %90, align 8, !tbaa !386
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102, %98
  %106 = getelementptr inbounds %struct.store_info, ptr %94, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !388
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %119, !prof !389

109:                                              ; preds = %105
  %110 = load ptr, ptr @rtx_group_vec, align 8
  %111 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %110, i32 noundef %107) #20
  %112 = getelementptr inbounds %struct.group_info, ptr %111, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !390
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115, !prof !392

115:                                              ; preds = %109
  %116 = load i8, ptr %90, align 8, !tbaa !386
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %119, !prof !393

118:                                              ; preds = %115, %102
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %90) #20
  br label %119

119:                                              ; preds = %118, %109, %115, %105
  %120 = getelementptr inbounds %struct.insn_info, ptr %90, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !328
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %89, !prof !394, !llvm.loop !395

123:                                              ; preds = %119, %84, %70, %67, %59
  %124 = load ptr, ptr @deferred_change_list, align 8, !tbaa !328
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129, !prof !396

126:                                              ; preds = %129, %123
  %127 = load ptr, ptr %14, align 8, !tbaa !328
  %128 = icmp eq ptr %127, null
  br i1 %128, label %197, label %138, !prof !397

129:                                              ; preds = %123, %129
  %130 = phi ptr [ %132, %129 ], [ %124, %123 ]
  %131 = getelementptr inbounds %struct.deferred_change, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !398
  %133 = getelementptr inbounds %struct.deferred_change, ptr %130, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !400
  %135 = load ptr, ptr %130, align 8, !tbaa !401
  store ptr %134, ptr %135, align 8, !tbaa !328
  %136 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !328
  tail call void @pool_free(ptr noundef %136, ptr noundef nonnull %130) #21
  store ptr %132, ptr @deferred_change_list, align 8, !tbaa !328
  %137 = icmp eq ptr %132, null
  br i1 %137, label %126, label %129, !prof !402, !llvm.loop !403

138:                                              ; preds = %126, %193
  %139 = phi ptr [ %195, %193 ], [ %127, %126 ]
  %140 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 4
  %141 = load i8, ptr %140, align 4, !tbaa !404
  %142 = icmp eq i8 %141, 0
  %143 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !328
  %145 = icmp eq ptr %144, null
  br i1 %142, label %180, label %146, !prof !405

146:                                              ; preds = %138
  br i1 %145, label %179, label %147, !prof !406

147:                                              ; preds = %146, %151
  %148 = phi ptr [ %153, %151 ], [ %144, %146 ]
  %149 = load i8, ptr %148, align 8, !tbaa !380
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %155, !prof !407

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.store_info, ptr %148, i64 0, i32 10
  %153 = load ptr, ptr %152, align 8, !tbaa !328
  %154 = icmp eq ptr %153, null
  br i1 %154, label %179, label %147, !prof !408, !llvm.loop !409

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.store_info, ptr %148, i64 0, i32 13
  %157 = load ptr, ptr %156, align 8, !tbaa !410
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159, !prof !411

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.insn_info, ptr %157, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !412
  %162 = icmp eq ptr %161, null
  br i1 %162, label %178, label %163, !prof !413

163:                                              ; preds = %159
  %164 = load i8, ptr %139, align 8, !tbaa !386
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %168 = icmp eq ptr %167, null
  br i1 %168, label %177, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !412
  %172 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !354
  %174 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !354
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %167, ptr noundef nonnull @.str.14, i32 noundef %173, i32 noundef %175) #20
  br label %177

177:                                              ; preds = %169, %166
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %139) #20
  br label %178

178:                                              ; preds = %155, %159, %163, %177
  store ptr null, ptr %156, align 8, !tbaa !410
  br label %179

179:                                              ; preds = %151, %146, %178
  tail call fastcc void @free_store_info(ptr noundef nonnull %139) #20
  br label %193

180:                                              ; preds = %138
  br i1 %145, label %193, label %181, !prof !414

181:                                              ; preds = %180, %189
  %182 = phi ptr [ %191, %189 ], [ %144, %180 ]
  %183 = getelementptr inbounds %struct.store_info, ptr %182, i64 0, i32 1
  %184 = load i8, ptr %183, align 1, !tbaa !415
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %189, label %186, !prof !416

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.store_info, ptr %182, i64 0, i32 9
  %188 = load ptr, ptr %187, align 8, !tbaa !354
  tail call void @bitmap_obstack_free(ptr noundef %188) #21
  store ptr null, ptr %187, align 8, !tbaa !354
  store i8 0, ptr %183, align 1, !tbaa !415
  br label %189

189:                                              ; preds = %181, %186
  %190 = getelementptr inbounds %struct.store_info, ptr %182, i64 0, i32 10
  %191 = load ptr, ptr %190, align 8, !tbaa !328
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %181, !prof !417, !llvm.loop !418

193:                                              ; preds = %189, %180, %179
  %194 = getelementptr inbounds %struct.insn_info, ptr %139, i64 0, i32 8
  %195 = load ptr, ptr %194, align 8, !tbaa !328
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %138, !prof !419, !llvm.loop !420

197:                                              ; preds = %193, %126
  %198 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %198) #21
  br label %199

199:                                              ; preds = %197, %11
  store ptr null, ptr %19, align 8, !tbaa !360
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %201 = load ptr, ptr %200, align 8, !tbaa !328
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %11, !prof !421, !llvm.loop !422

203:                                              ; preds = %199, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  tail call void @cselib_finish() #21
  %204 = load ptr, ptr @rtx_group_table, align 8, !tbaa !328
  tail call void @htab_empty(ptr noundef %204) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step2_init() unnamed_addr #0 !prof !344 !PGOFuncName !423 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %2 = load ptr, ptr @rtx_group_vec, align 8
  %3 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #20, !range !424
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %66, label %5, !prof !356

5:                                                ; preds = %0, %61
  %6 = phi i32 [ %62, %61 ], [ 0, %0 ]
  %7 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !354
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %1, align 8, !tbaa !328
  br i1 %8, label %29, label %10, !prof !425

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !390
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14, !prof !426

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !427
  %17 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !428
  %19 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %16, ptr noundef %18) #21
  %20 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !429
  %22 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !430
  %24 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %21, ptr noundef %23) #21
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !431

27:                                               ; preds = %14
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %25, ptr noundef nonnull @.str.58, i32 noundef %6) #20
  br label %29

29:                                               ; preds = %14, %27, %10, %5
  %30 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !432
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !432
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #21
  %36 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 11
  store ptr %35, ptr %36, align 8, !tbaa !433
  %37 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 14
  %38 = load i32, ptr %37, align 4, !tbaa !434
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !434
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = tail call ptr @xmalloc(i64 noundef %41) #21
  %43 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 12
  store ptr %42, ptr %43, align 8, !tbaa !435
  %44 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 2
  store i8 0, ptr %44, align 4, !tbaa !436
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47, !prof !437

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !427
  %50 = tail call i64 @bitmap_count_bits(ptr noundef %49) #21
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !429
  %54 = tail call i64 @bitmap_count_bits(ptr noundef %53) #21
  %55 = trunc i64 %54 to i32
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.59, i32 noundef %6, i32 noundef %51, i32 noundef %55) #20
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %58 = load ptr, ptr %48, align 8, !tbaa !427
  tail call void @bitmap_print(ptr noundef %57, ptr noundef %58, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #21
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %60 = load ptr, ptr %52, align 8, !tbaa !429
  tail call void @bitmap_print(ptr noundef %59, ptr noundef %60, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.30) #21
  br label %61

61:                                               ; preds = %29, %47
  %62 = add i32 %6, 1
  %63 = load ptr, ptr @rtx_group_vec, align 8
  %64 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %63, i32 noundef %62, ptr noundef nonnull %1) #20, !range !424
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %5, !prof !438, !llvm.loop !439

66:                                               ; preds = %61, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dse_step2_nospill() unnamed_addr #0 !prof !344 !PGOFuncName !440 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  store i32 1, ptr @current_position, align 4, !tbaa !341
  %4 = load ptr, ptr @rtx_group_vec, align 8
  %5 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %1) #20, !range !424
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %73, label %7, !prof !356

7:                                                ; preds = %0, %64
  %8 = phi i32 [ %65, %64 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %9 = load ptr, ptr %1, align 8, !tbaa !328
  %10 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %64, label %12, !prof !441

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !433
  %15 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !432
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !435
  %21 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 14
  %22 = load i32, ptr %21, align 4, !tbaa !434
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !442
  tail call void @bitmap_clear(ptr noundef %26) #21
  %27 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !427
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %28, ptr noundef nonnull %3) #20
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !327
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31, !prof !443

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 2
  br label %33

33:                                               ; preds = %31, %33
  %34 = load ptr, ptr %25, align 8, !tbaa !442
  %35 = load i32, ptr @current_position, align 4, !tbaa !341
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %35) #21
  %37 = load i32, ptr @current_position, align 4, !tbaa !341
  %38 = add i32 %37, 1
  store i32 %38, ptr @current_position, align 4, !tbaa !341
  %39 = load ptr, ptr %13, align 8, !tbaa !433
  %40 = load i32, ptr %3, align 4, !tbaa !341
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 %37, ptr %42, align 4, !tbaa !341
  store i8 1, ptr %32, align 4, !tbaa !436
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !327
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %33, !prof !444, !llvm.loop !445

45:                                               ; preds = %33, %12
  %46 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !429
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %47, ptr noundef nonnull %3) #20
  %48 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !327
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %64, label %50, !prof !446

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.group_info, ptr %9, i64 0, i32 2
  br label %52

52:                                               ; preds = %50, %52
  %53 = load ptr, ptr %25, align 8, !tbaa !442
  %54 = load i32, ptr @current_position, align 4, !tbaa !341
  %55 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %53, i32 noundef %54) #21
  %56 = load i32, ptr @current_position, align 4, !tbaa !341
  %57 = add i32 %56, 1
  store i32 %57, ptr @current_position, align 4, !tbaa !341
  %58 = load ptr, ptr %19, align 8, !tbaa !435
  %59 = load i32, ptr %3, align 4, !tbaa !341
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  store i32 %56, ptr %61, align 4, !tbaa !341
  store i8 1, ptr %51, align 4, !tbaa !436
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %62 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !327
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %52, !prof !447, !llvm.loop !448

64:                                               ; preds = %52, %45, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  %65 = add i32 %8, 1
  %66 = load ptr, ptr @rtx_group_vec, align 8
  %67 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %66, i32 noundef %65, ptr noundef nonnull %1) #20, !range !424
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %7, !prof !438, !llvm.loop !449

69:                                               ; preds = %64
  %70 = load i32, ptr @current_position, align 4, !tbaa !341
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
define internal fastcc void @dse_step3(i8 noundef zeroext %0) unnamed_addr #0 !prof !450 !PGOFuncName !451 {
  %2 = alloca %struct.sbitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !328
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !350
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !352
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  tail call void @sbitmap_ones(ptr noundef %10) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !328
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !350
  %14 = load ptr, ptr %13, align 8, !tbaa !328
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16, !prof !452

16:                                               ; preds = %1, %50
  %17 = phi ptr [ %52, %50 ], [ %14, %1 ]
  %18 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !357
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !328
  %24 = getelementptr inbounds %struct.bb_info, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !453
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !454

27:                                               ; preds = %16
  tail call void @bitmap_clear(ptr noundef nonnull %25) #21
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %29, ptr %24, align 8, !tbaa !453
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, ptr %19, align 8, !tbaa !357
  switch i32 %31, label %33 [
    i32 0, label %34
    i32 1, label %32
  ], !prof !455

32:                                               ; preds = %30
  tail call fastcc void @dse_step3_exit_block_scan(ptr noundef nonnull %23) #20
  br label %34

33:                                               ; preds = %30
  tail call fastcc void @dse_step3_scan(i8 noundef zeroext %0, ptr noundef nonnull %17) #20
  br label %34

34:                                               ; preds = %30, %32, %33
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !374
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40, !prof !456

39:                                               ; preds = %34
  tail call fastcc void @mark_reachable_blocks(ptr noundef %10, ptr noundef nonnull %17) #20
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.bb_info, ptr %23, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !457
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !454

44:                                               ; preds = %40
  tail call void @bitmap_obstack_free(ptr noundef nonnull %42) #21
  store ptr null, ptr %41, align 8, !tbaa !457
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.bb_info, ptr %23, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !458
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !454

49:                                               ; preds = %45
  tail call void @bitmap_obstack_free(ptr noundef nonnull %47) #21
  store ptr null, ptr %46, align 8, !tbaa !458
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !328
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !prof !459, !llvm.loop !460

54:                                               ; preds = %50, %1
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %2, ptr noundef %10) #20
  %55 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !327
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %99, label %57, !prof !452

57:                                               ; preds = %54, %92
  %58 = phi ptr [ %93, %92 ], [ null, %54 ]
  %59 = load ptr, ptr @all_blocks, align 8, !tbaa !328
  %60 = load i32, ptr %3, align 4, !tbaa !341
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %59, i32 noundef %60) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %92, label %63, !prof !461

63:                                               ; preds = %57
  %64 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !328
  %68 = icmp eq ptr %58, null
  br i1 %68, label %69, label %85, !prof !462

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %70 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %71 = load ptr, ptr @rtx_group_vec, align 8
  %72 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %71, i32 noundef 0, ptr noundef nonnull %4) #20, !range !424
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74, !prof !406

74:                                               ; preds = %69, %74
  %75 = phi i32 [ %80, %74 ], [ 0, %69 ]
  %76 = load ptr, ptr %4, align 8, !tbaa !328
  %77 = getelementptr inbounds %struct.group_info, ptr %76, i64 0, i32 10
  %78 = load ptr, ptr %77, align 8, !tbaa !442
  %79 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %70, ptr noundef %78) #21
  %80 = add i32 %75, 1
  %81 = load ptr, ptr @rtx_group_vec, align 8
  %82 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %81, i32 noundef %80, ptr noundef nonnull %4) #20, !range !424
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %74, !prof !463, !llvm.loop !464

84:                                               ; preds = %74, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %85

85:                                               ; preds = %84, %63
  %86 = phi ptr [ %58, %63 ], [ %70, %84 ]
  %87 = getelementptr inbounds %struct.bb_info, ptr %67, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !458
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92, !prof !465

90:                                               ; preds = %85
  %91 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %91, ptr %87, align 8, !tbaa !458
  tail call void @bitmap_copy(ptr noundef %91, ptr noundef %86) #21
  br label %92

92:                                               ; preds = %85, %90, %57
  %93 = phi ptr [ %58, %57 ], [ %86, %90 ], [ %86, %85 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %2) #20
  %94 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #20, !range !327
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %57, !prof !466, !llvm.loop !467

96:                                               ; preds = %92
  %97 = icmp eq ptr %93, null
  br i1 %97, label %99, label %98, !prof !468

98:                                               ; preds = %96
  tail call void @bitmap_obstack_free(ptr noundef nonnull %93) #21
  br label %99

99:                                               ; preds = %54, %98, %96
  %100 = load ptr, ptr %10, align 8, !tbaa !469
  tail call void @free(ptr noundef %100) #20
  tail call void @free(ptr noundef %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step4() unnamed_addr #0 !prof !450 !PGOFuncName !471 {
  %1 = load ptr, ptr @all_blocks, align 8, !tbaa !328
  %2 = tail call ptr @df_get_postorder(i32 noundef 2) #21
  %3 = tail call i32 @df_get_n_blocks(i32 noundef 2) #21
  tail call void @df_simple_dataflow(i32 noundef 2, ptr noundef null, ptr noundef nonnull @dse_confluence_0, ptr noundef nonnull @dse_confluence_n, ptr noundef nonnull @dse_transfer_function, ptr noundef %1, ptr noundef %2, i32 noundef %3) #21
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6, !prof !347

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 43, i64 1, ptr nonnull %4)
  %8 = load ptr, ptr @cfun, align 8, !tbaa !328
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !350
  %11 = load ptr, ptr %10, align 8, !tbaa !328
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %6, %53
  %14 = phi ptr [ %55, %53 ], [ %11, %6 ]
  %15 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !357
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !328
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @df_print_bb_index(ptr noundef nonnull %14, ptr noundef %21) #21
  %22 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !457
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !328
  br i1 %24, label %27, label %26

26:                                               ; preds = %13
  tail call void @bitmap_print(ptr noundef %25, ptr noundef nonnull %23, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.30) #21
  br label %29

27:                                               ; preds = %13
  %28 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 18, i64 1, ptr %25)
  br label %29

29:                                               ; preds = %27, %26
  %30 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !453
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !328
  br i1 %32, label %35, label %34

34:                                               ; preds = %29
  tail call void @bitmap_print(ptr noundef %33, ptr noundef nonnull %31, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.30) #21
  br label %37

35:                                               ; preds = %29
  %36 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 18, i64 1, ptr %33)
  br label %37

37:                                               ; preds = %35, %34
  %38 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !472
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !328
  br i1 %40, label %43, label %42

42:                                               ; preds = %37
  tail call void @bitmap_print(ptr noundef %41, ptr noundef nonnull %39, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.30) #21
  br label %45

43:                                               ; preds = %37
  %44 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 18, i64 1, ptr %41)
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr inbounds %struct.bb_info, ptr %20, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !458
  %48 = icmp eq ptr %47, null
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !328
  br i1 %48, label %51, label %50

50:                                               ; preds = %45
  tail call void @bitmap_print(ptr noundef %49, ptr noundef nonnull %47, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.30) #21
  br label %53

51:                                               ; preds = %45
  %52 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 19, i64 1, ptr %49)
  br label %53

53:                                               ; preds = %51, %50
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !328
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %13, !llvm.loop !473

57:                                               ; preds = %53, %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step5_nospill() unnamed_addr #0 !prof !450 !PGOFuncName !474 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !328
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  %4 = load ptr, ptr %3, align 8, !tbaa !475
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !476
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !377
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %156, label %21, !prof !452

10:                                               ; preds = %152
  %11 = load ptr, ptr @cfun, align 8, !tbaa !328
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !476
  %16 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !350
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !377
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %156, label %21, !prof !477, !llvm.loop !478

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %13, %12 ], [ %1, %0 ]
  %23 = phi ptr [ %15, %12 ], [ %6, %0 ]
  %24 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !357
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !328
  %30 = getelementptr inbounds %struct.bb_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !458
  %32 = load ptr, ptr %29, align 8, !tbaa !328
  %33 = icmp eq ptr %32, null
  br i1 %33, label %12, label %34, !prof !479

34:                                               ; preds = %21, %152
  %35 = phi ptr [ %154, %152 ], [ %32, %21 ]
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38, !prof !480

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !412
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !354
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %36, ptr noundef nonnull @.str.72, i32 noundef %44) #20
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @bitmap_print(ptr noundef %46, ptr noundef %31, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.30) #21
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !412
  %50 = icmp eq ptr %49, null
  br i1 %50, label %152, label %51, !prof !481

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %116, !prof !482

56:                                               ; preds = %51
  %57 = load i8, ptr %35, align 8, !tbaa !386
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %116, !prof !483

59:                                               ; preds = %56
  %60 = load ptr, ptr %31, align 8, !tbaa !484
  %61 = icmp eq ptr %60, null
  br i1 %61, label %116, label %62, !prof !486

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %63, %62 ], [ %69, %64 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !328
  %67 = load i8, ptr %66, align 8, !tbaa !380
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 10
  br i1 %68, label %64, label %70, !prof !487, !llvm.loop !488

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %116, !prof !489

74:                                               ; preds = %70
  %75 = load ptr, ptr @rtx_group_vec, align 8
  %76 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !388
  %78 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %75, i32 noundef %77) #20
  %79 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 7
  %80 = load i64, ptr %79, align 8, !tbaa !490
  %81 = getelementptr inbounds %struct.store_info, ptr %66, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !491
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %107, !prof !492

84:                                               ; preds = %74, %103
  %85 = phi i64 [ %104, %103 ], [ %80, %74 ]
  %86 = tail call fastcc i32 @get_bitmap_index(ptr noundef %78, i64 noundef %85) #20
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89, !prof !493

89:                                               ; preds = %84
  %90 = trunc i64 %85 to i32
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.74, i32 noundef %90, i32 noundef %86) #20
  br label %92

92:                                               ; preds = %89, %84
  %93 = icmp eq i32 %86, 0
  br i1 %93, label %97, label %94, !prof !494

94:                                               ; preds = %92
  %95 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %31, i32 noundef %86) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103, !prof !495

97:                                               ; preds = %94, %92
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100, !prof !496

100:                                              ; preds = %97
  %101 = trunc i64 %85 to i32
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %98, ptr noundef nonnull @.str.75, i32 noundef %101) #20
  br label %116

103:                                              ; preds = %94
  %104 = add nsw i64 %85, 1
  %105 = load i64, ptr %81, align 8, !tbaa !491
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %84, label %107, !prof !497, !llvm.loop !498

107:                                              ; preds = %103, %74
  %108 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110, !prof !499

110:                                              ; preds = %107
  %111 = load ptr, ptr %48, align 8, !tbaa !412
  tail call fastcc void @check_for_inc_dec(ptr noundef %111) #20
  %112 = load ptr, ptr %48, align 8, !tbaa !412
  %113 = tail call ptr @delete_insn(ptr noundef %112) #21
  store ptr null, ptr %48, align 8, !tbaa !412
  %114 = load i32, ptr @globally_deleted, align 4, !tbaa !341
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr @globally_deleted, align 4, !tbaa !341
  br label %152

116:                                              ; preds = %97, %100, %70, %51, %107, %59, %56
  %117 = phi i1 [ true, %107 ], [ false, %51 ], [ false, %59 ], [ false, %56 ], [ false, %70 ], [ false, %100 ], [ false, %97 ]
  %118 = phi i1 [ false, %107 ], [ true, %51 ], [ true, %59 ], [ true, %56 ], [ true, %70 ], [ true, %100 ], [ true, %97 ]
  %119 = load ptr, ptr %48, align 8, !tbaa !412
  %120 = icmp eq ptr %119, null
  br i1 %120, label %152, label %121, !prof !500

121:                                              ; preds = %116
  %122 = load i32, ptr %119, align 8
  %123 = and i32 %122, 65535
  %124 = add nsw i32 %123, -7
  %125 = icmp ult i32 %124, 3
  br i1 %125, label %129, label %126, !prof !501

126:                                              ; preds = %121
  %127 = icmp ne i32 %123, 10
  %128 = or i1 %117, %127
  br i1 %128, label %152, label %130, !prof !502

129:                                              ; preds = %121
  br i1 %118, label %130, label %152, !prof !503

130:                                              ; preds = %126, %129
  %131 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !504
  tail call fastcc void @scan_stores_nospill(ptr noundef %132, ptr noundef %31, ptr noundef null) #20
  %133 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 1
  %134 = load i8, ptr %133, align 1, !tbaa !505
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %142, label %136, !prof !506

136:                                              ; preds = %130
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139, !prof !507

139:                                              ; preds = %136
  %140 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 10, i64 1, ptr nonnull %137)
  br label %141

141:                                              ; preds = %139, %136
  tail call void @bitmap_clear(ptr noundef %31) #21
  br label %152

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !508
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146, !prof !509

146:                                              ; preds = %142
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149, !prof !510

149:                                              ; preds = %146
  %150 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 13, i64 1, ptr nonnull %147)
  br label %151

151:                                              ; preds = %149, %146
  tail call fastcc void @scan_reads_nospill(ptr noundef nonnull %35, ptr noundef %31, ptr noundef null) #20
  br label %152

152:                                              ; preds = %47, %110, %141, %151, %142, %129, %126, %116
  %153 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !328
  %155 = icmp eq ptr %154, null
  br i1 %155, label %10, label %34, !prof !511, !llvm.loop !512

156:                                              ; preds = %12, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dse_step2_spill() unnamed_addr #0 !prof !326 !PGOFuncName !513 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %3 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  store i32 1, ptr @current_position, align 4, !tbaa !341
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  tail call void @bitmap_print(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.30) #21
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %9 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !328
  tail call void @bitmap_print(ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.30) #21
  br label %10

10:                                               ; preds = %6, %0
  %11 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !433
  %13 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !432
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %16, i1 false)
  %17 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !435
  %19 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 14
  %20 = load i32, ptr %19, align 4, !tbaa !434
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %22, i1 false)
  %23 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !442
  tail call void @bitmap_clear(ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !429
  %27 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !328
  %28 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %26, ptr noundef %27) #21
  %29 = load ptr, ptr %25, align 8, !tbaa !429
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %29, ptr noundef nonnull %1) #20
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !327
  %31 = icmp eq i8 %30, 0
  %32 = load i32, ptr @current_position, align 4, !tbaa !341
  br i1 %31, label %47, label %33

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.group_info, ptr %3, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %32, %33 ], [ %40, %35 ]
  %37 = load ptr, ptr %23, align 8, !tbaa !442
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %37, i32 noundef %36) #21
  %39 = load i32, ptr @current_position, align 4, !tbaa !341
  %40 = add i32 %39, 1
  store i32 %40, ptr @current_position, align 4, !tbaa !341
  %41 = load ptr, ptr %17, align 8, !tbaa !435
  %42 = load i32, ptr %1, align 4, !tbaa !341
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  store i32 %39, ptr %44, align 4, !tbaa !341
  store i8 1, ptr %34, align 4, !tbaa !436
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !327
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %35, !llvm.loop !514

47:                                               ; preds = %35, %10
  %48 = phi i32 [ %32, %10 ], [ %40, %35 ]
  %49 = icmp ne i32 %48, 1
  %50 = zext i1 %49 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step5_spill() unnamed_addr #0 !prof !326 !PGOFuncName !515 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !328
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  %4 = load ptr, ptr %3, align 8, !tbaa !475
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !476
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !377
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %115, label %21

10:                                               ; preds = %111
  %11 = load ptr, ptr @cfun, align 8, !tbaa !328
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !476
  %16 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !350
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !377
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %115, label %21, !llvm.loop !516

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %13, %12 ], [ %1, %0 ]
  %23 = phi ptr [ %15, %12 ], [ %6, %0 ]
  %24 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !357
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !328
  %30 = getelementptr inbounds %struct.bb_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !458
  %32 = load ptr, ptr %29, align 8, !tbaa !328
  %33 = icmp eq ptr %32, null
  br i1 %33, label %12, label %34

34:                                               ; preds = %21, %111
  %35 = phi ptr [ %113, %111 ], [ %32, %21 ]
  %36 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !412
  %38 = icmp eq ptr %37, null
  br i1 %38, label %111, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %37, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -7
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load i8, ptr %35, align 8, !tbaa !386
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %44
  %48 = load ptr, ptr %31, align 8, !tbaa !484
  %49 = icmp eq ptr %48, null
  br i1 %49, label %92, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !328
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %50, %68
  %55 = phi ptr [ %71, %68 ], [ %52, %50 ]
  %56 = phi i8 [ %69, %68 ], [ 1, %50 ]
  %57 = getelementptr inbounds %struct.store_info, ptr %55, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !384
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
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
  %71 = load ptr, ptr %70, align 8, !tbaa !328
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %54, !llvm.loop !517

73:                                               ; preds = %68
  %74 = icmp eq i8 %69, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %50, %73
  %76 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %36, align 8, !tbaa !412
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !354
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.80, i32 noundef %84) #20
  br label %86

86:                                               ; preds = %81, %78
  %87 = load ptr, ptr %36, align 8, !tbaa !412
  tail call fastcc void @check_for_inc_dec(ptr noundef %87) #20
  %88 = load ptr, ptr %36, align 8, !tbaa !412
  %89 = tail call ptr @delete_insn(ptr noundef %88) #21
  %90 = load i32, ptr @spill_deleted, align 4, !tbaa !341
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr @spill_deleted, align 4, !tbaa !341
  store ptr null, ptr %36, align 8, !tbaa !412
  br label %111

92:                                               ; preds = %65, %60, %39, %73, %75, %47, %44
  %93 = phi i1 [ false, %73 ], [ true, %75 ], [ false, %39 ], [ false, %47 ], [ false, %44 ], [ false, %60 ], [ false, %65 ]
  %94 = phi i1 [ true, %73 ], [ false, %75 ], [ true, %39 ], [ true, %47 ], [ true, %44 ], [ true, %60 ], [ true, %65 ]
  %95 = load ptr, ptr %36, align 8, !tbaa !412
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
  %108 = load ptr, ptr %107, align 8, !tbaa !504
  tail call fastcc void @scan_stores_spill(ptr noundef %108, ptr noundef %31, ptr noundef null) #20
  %109 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !508
  tail call fastcc void @scan_reads_spill(ptr noundef %110, ptr noundef %31, ptr noundef null) #20
  br label %111

111:                                              ; preds = %34, %86, %106, %105, %102, %92
  %112 = getelementptr inbounds %struct.insn_info, ptr %35, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !328
  %114 = icmp eq ptr %113, null
  br i1 %114, label %10, label %34, !llvm.loop !518

115:                                              ; preds = %12, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step6() unnamed_addr #0 !prof !344 !PGOFuncName !519 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !328
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = icmp eq ptr %4, null
  br i1 %5, label %72, label %6, !prof !356

6:                                                ; preds = %0, %68
  %7 = phi ptr [ %70, %68 ], [ %4, %0 ]
  %8 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !357
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !328
  %14 = load ptr, ptr %13, align 8, !tbaa !328
  %15 = icmp eq ptr %14, null
  br i1 %15, label %68, label %16, !prof !520

16:                                               ; preds = %6, %64
  %17 = phi ptr [ %66, %64 ], [ %14, %6 ]
  %18 = getelementptr inbounds %struct.insn_info, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !412
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21, !prof !521

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -7
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %64, !prof !522

26:                                               ; preds = %21
  %27 = load i8, ptr %17, align 8, !tbaa !386
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %64, !prof !523

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.insn_info, ptr %17, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !328
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33, !prof !406

33:                                               ; preds = %29, %37
  %34 = phi ptr [ %39, %37 ], [ %31, %29 ]
  %35 = load i8, ptr %34, align 8, !tbaa !380
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41, !prof !524

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.store_info, ptr %34, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !328
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %33, !prof !525, !llvm.loop !526

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.store_info, ptr %34, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !410
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45, !prof !527

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.insn_info, ptr %43, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !412
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !354
  %60 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !354
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.14, i32 noundef %59, i32 noundef %61) #20
  br label %63

63:                                               ; preds = %57, %54
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %17) #20
  br label %64

64:                                               ; preds = %37, %29, %49, %21, %41, %45, %63, %26, %16
  %65 = getelementptr inbounds %struct.insn_info, ptr %17, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !328
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %16, !prof !528, !llvm.loop !529

68:                                               ; preds = %64, %6
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !328
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %6, !prof !421, !llvm.loop !530

72:                                               ; preds = %68, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step7(i8 noundef zeroext %0) unnamed_addr #0 !prof !344 !PGOFuncName !531 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = load ptr, ptr @rtx_group_vec, align 8
  %4 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #20, !range !424
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6, !prof !356

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %23, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !328
  %9 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !433
  tail call void @free(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !435
  tail call void @free(ptr noundef %12) #20
  %13 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !428
  tail call void @bitmap_obstack_free(ptr noundef %14) #21
  store ptr null, ptr %13, align 8, !tbaa !428
  %15 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !430
  tail call void @bitmap_obstack_free(ptr noundef %16) #21
  store ptr null, ptr %15, align 8, !tbaa !430
  %17 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !427
  tail call void @bitmap_obstack_free(ptr noundef %18) #21
  store ptr null, ptr %17, align 8, !tbaa !427
  %19 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !429
  tail call void @bitmap_obstack_free(ptr noundef %20) #21
  store ptr null, ptr %19, align 8, !tbaa !429
  %21 = getelementptr inbounds %struct.group_info, ptr %8, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !442
  tail call void @bitmap_obstack_free(ptr noundef %22) #21
  store ptr null, ptr %21, align 8, !tbaa !442
  %23 = add i32 %7, 1
  %24 = load ptr, ptr @rtx_group_vec, align 8
  %25 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %2) #20, !range !424
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %6, !prof !438, !llvm.loop !532

27:                                               ; preds = %6, %1
  %28 = icmp eq i8 %0, 0
  br i1 %28, label %63, label %29, !prof !346

29:                                               ; preds = %27
  %30 = load ptr, ptr @cfun, align 8, !tbaa !328
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !350
  %33 = load ptr, ptr %32, align 8, !tbaa !328
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35, !prof !452

35:                                               ; preds = %29, %59
  %36 = phi ptr [ %61, %59 ], [ %33, %29 ]
  %37 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !357
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !328
  %43 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !453
  tail call void @bitmap_obstack_free(ptr noundef %44) #21
  store ptr null, ptr %43, align 8, !tbaa !453
  %45 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !472
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !533

48:                                               ; preds = %35
  tail call void @bitmap_obstack_free(ptr noundef nonnull %46) #21
  store ptr null, ptr %45, align 8, !tbaa !472
  br label %49

49:                                               ; preds = %48, %35
  %50 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !457
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !534

53:                                               ; preds = %49
  tail call void @bitmap_obstack_free(ptr noundef nonnull %51) #21
  store ptr null, ptr %50, align 8, !tbaa !457
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.bb_info, ptr %42, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !458
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !535

58:                                               ; preds = %54
  tail call void @bitmap_obstack_free(ptr noundef nonnull %56) #21
  store ptr null, ptr %55, align 8, !tbaa !458
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !328
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %35, !prof !459, !llvm.loop !536

63:                                               ; preds = %59, %29, %27
  %64 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66, !prof !348

66:                                               ; preds = %63
  tail call void @bitmap_obstack_free(ptr noundef nonnull %64) #21
  store ptr null, ptr @clear_alias_sets, align 8, !tbaa !328
  %67 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !328
  tail call void @bitmap_obstack_free(ptr noundef %67) #21
  store ptr null, ptr @disqualified_clear_alias_sets, align 8, !tbaa !328
  %68 = load ptr, ptr @clear_alias_mode_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %68) #21
  %69 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !328
  tail call void @htab_delete(ptr noundef %69) #21
  br label %70

70:                                               ; preds = %66, %63
  tail call void @end_alias_analysis() #21
  %71 = load ptr, ptr @bb_table, align 8, !tbaa !328
  tail call void @free(ptr noundef %71) #20
  %72 = load ptr, ptr @rtx_group_table, align 8, !tbaa !328
  tail call void @htab_delete(ptr noundef %72) #21
  tail call fastcc void @VEC_group_info_t_heap_free() #20
  %73 = load ptr, ptr @all_blocks, align 8, !tbaa !328
  tail call void @bitmap_obstack_free(ptr noundef %73) #21
  store ptr null, ptr @all_blocks, align 8, !tbaa !328
  %74 = load ptr, ptr @scratch, align 8, !tbaa !328
  tail call void @bitmap_obstack_free(ptr noundef %74) #21
  store ptr null, ptr @scratch, align 8, !tbaa !328
  %75 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %75) #21
  %76 = load ptr, ptr @read_info_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %76) #21
  %77 = load ptr, ptr @insn_info_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %77) #21
  %78 = load ptr, ptr @bb_info_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %78) #21
  %79 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %79) #21
  %80 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !328
  tail call void @free_alloc_pool(ptr noundef %80) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @invariant_group_base_hash(ptr nocapture noundef readonly %0) #0 !prof !537 !PGOFuncName !538 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !539
  %4 = call i32 @hash_rtx(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @invariant_group_base_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !540 !PGOFuncName !541 {
  %3 = load ptr, ptr %0, align 8, !tbaa !539
  %4 = load ptr, ptr %1, align 8, !tbaa !539
  %5 = tail call i32 @rtx_equal_p(ptr noundef %3, ptr noundef %4) #21
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_group_info(ptr noundef %0) unnamed_addr #0 !prof !542 !PGOFuncName !543 {
  %2 = alloca %struct.group_info, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #19
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4, !prof !544

4:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !539
  %5 = load ptr, ptr @rtx_group_table, align 8, !tbaa !328
  %6 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 1) #21
  %7 = load ptr, ptr %6, align 8, !tbaa !328
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %60, !prof !545

9:                                                ; preds = %1
  %10 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !328
  %14 = tail call ptr @pool_alloc(ptr noundef %13) #21
  store ptr %14, ptr @clear_alias_group, align 8, !tbaa !328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %14, i8 0, i64 96, i1 false)
  %15 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !341
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @rtx_group_next_id, align 4, !tbaa !341
  %17 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 1
  store i32 %15, ptr %17, align 8, !tbaa !546
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %19 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !428
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %21 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 7
  store ptr %20, ptr %21, align 8, !tbaa !430
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %23 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 8
  store ptr %22, ptr %23, align 8, !tbaa !427
  %24 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %25 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 9
  store ptr %24, ptr %25, align 8, !tbaa !429
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %27 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 10
  store ptr %26, ptr %27, align 8, !tbaa !442
  %28 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 2
  store i8 0, ptr %28, align 4, !tbaa !436
  %29 = getelementptr inbounds %struct.group_info, ptr %14, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  tail call fastcc void @VEC_group_info_t_heap_safe_push(ptr noundef %14) #20
  %30 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  br label %60

31:                                               ; preds = %4
  %32 = load ptr, ptr @rtx_group_info_pool, align 8, !tbaa !328
  %33 = call ptr @pool_alloc(ptr noundef %32) #21
  store ptr %33, ptr %6, align 8, !tbaa !328
  store ptr %0, ptr %33, align 8, !tbaa !539
  %34 = load i32, ptr @rtx_group_next_id, align 4, !tbaa !341
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @rtx_group_next_id, align 4, !tbaa !341
  %36 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 1
  store i32 %34, ptr %36, align 8, !tbaa !546
  %37 = call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef nonnull %0) #21
  %38 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 4
  store ptr %37, ptr %38, align 8, !tbaa !547
  %39 = call ptr @canon_rtx(ptr noundef nonnull %0) #21
  %40 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !548
  %41 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %42 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !428
  %43 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %44 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !430
  %45 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %46 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !427
  %47 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %48 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !429
  %49 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %50 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 10
  store ptr %49, ptr %50, align 8, !tbaa !442
  %51 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 2
  store i8 0, ptr %51, align 4, !tbaa !436
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !328
  %53 = icmp eq ptr %52, %0
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %55 = icmp eq ptr %54, %0
  %56 = select i1 %53, i1 true, i1 %55, !prof !549
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.group_info, ptr %33, i64 0, i32 3
  store i8 %57, ptr %58, align 1, !tbaa !390
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
define internal fastcc void @VEC_group_info_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !550 !PGOFuncName !551 {
  tail call fastcc void @VEC_group_info_t_heap_reserve() #20
  %2 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !328
  tail call fastcc void @VEC_group_info_t_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_group_info_t_heap_reserve() unnamed_addr #0 !prof !550 !PGOFuncName !552 {
  %1 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !328
  %2 = tail call fastcc i32 @VEC_group_info_t_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !553

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @rtx_group_vec, align 8, !tbaa !328
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_group_info_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !550 !PGOFuncName !554 {
  %3 = load i32, ptr %0, align 8, !tbaa !555
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !555
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !328
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_group_info_t_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !550 !PGOFuncName !557 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !558

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !559
  %6 = load i32, ptr %0, align 8, !tbaa !555
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
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #7 !prof !560 !PGOFuncName !561 {
  %2 = load ptr, ptr @df, align 8, !tbaa !328
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !562
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !564

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !565
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !328
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @df_simulate_initialize_forwards(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_useless_values(ptr noundef readnone %0) #0 !prof !566 !PGOFuncName !567 {
  %2 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4, !prof !568

4:                                                ; preds = %1, %29
  %5 = phi ptr [ %32, %29 ], [ %2, %1 ]
  %6 = phi ptr [ %30, %29 ], [ null, %1 ]
  %7 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !328
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10, !prof !569

10:                                               ; preds = %4, %19
  %11 = phi ptr [ %21, %19 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !388
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19, !prof !570

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !571
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.store_info, ptr %11, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !328
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %10, !prof !572, !llvm.loop !573

23:                                               ; preds = %15
  %24 = icmp eq ptr %6, null
  %25 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !574
  %27 = getelementptr inbounds %struct.insn_info, ptr %6, i64 0, i32 9
  %28 = select i1 %24, ptr @active_local_stores, ptr %27
  store ptr %26, ptr %28, align 8, !tbaa !328
  tail call fastcc void @free_store_info(ptr noundef nonnull %5) #20
  br label %29

29:                                               ; preds = %19, %4, %23
  %30 = phi ptr [ %6, %23 ], [ %5, %4 ], [ %5, %19 ]
  %31 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !328
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %4, !prof !575, !llvm.loop !576

34:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: optsize
declare void @cselib_clear_table() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !577 !PGOFuncName !578 {
  %3 = alloca [3 x ptr], align 16
  %4 = load ptr, ptr @insn_info_pool, align 8, !tbaa !328
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !579

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !354
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.15, i32 noundef %10) #20
  br label %12

12:                                               ; preds = %8, %2
  %13 = load ptr, ptr %0, align 8, !tbaa !580
  %14 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 8
  store ptr %13, ptr %14, align 8, !tbaa !581
  %15 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !412
  store ptr %5, ptr %0, align 8, !tbaa !580
  %16 = load i32, ptr %1, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %29 [
    i16 7, label %18
    i16 8, label %19
  ], !prof !582

18:                                               ; preds = %12
  store i8 1, ptr %5, align 8, !tbaa !386
  br label %250

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !354
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 17
  br i1 %24, label %25, label %29, !prof !583

25:                                               ; preds = %19
  %26 = and i32 %22, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call fastcc void @add_wild_read(ptr noundef nonnull %0) #20
  store i8 1, ptr %5, align 8, !tbaa !386
  br label %250

29:                                               ; preds = %12, %25, %19
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void @note_uses(ptr noundef nonnull %31, ptr noundef nonnull @check_mem_read_use, ptr noundef nonnull %0) #21
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %191, !prof !584

35:                                               ; preds = %29
  store i8 1, ptr %5, align 8, !tbaa !386
  %36 = load i32, ptr %1, align 8
  %37 = and i32 %36, 67108864
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %92, !prof !585

39:                                               ; preds = %35
  %40 = load ptr, ptr %31, align 8, !tbaa !354
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 15
  br i1 %43, label %44, label %50, !prof !586

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !354
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !328
  %49 = load i32, ptr %48, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i32 [ %49, %44 ], [ %41, %39 ]
  %52 = phi ptr [ %48, %44 ], [ %40, %39 ]
  %53 = and i32 %51, 65535
  %54 = icmp eq i32 %53, 23
  br i1 %54, label %55, label %59, !prof !587

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !354
  %58 = load i32, ptr %57, align 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %58, %55 ], [ %51, %50 ]
  %61 = phi ptr [ %57, %55 ], [ %52, %50 ]
  %62 = and i32 %60, 65535
  %63 = icmp eq i32 %62, 26
  br i1 %63, label %64, label %190, !prof !588

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !354
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 43
  br i1 %69, label %70, label %190, !prof !588

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !354
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 67174399
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %190, !prof !589

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !354
  %79 = icmp eq ptr %78, null
  br i1 %79, label %190, label %80, !prof !590

80:                                               ; preds = %76
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 29
  br i1 %83, label %84, label %190, !prof !591

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tree_function_decl, ptr %78, i64 0, i32 5
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 8191
  %88 = icmp eq i32 %87, 6477
  %89 = load ptr, ptr @block_clear_fn, align 8
  %90 = icmp eq ptr %78, %89
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %92, label %190, !prof !592

92:                                               ; preds = %35, %84
  %93 = phi ptr [ null, %35 ], [ %78, %84 ]
  %94 = icmp eq ptr %93, null
  %95 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98, !prof !593

98:                                               ; preds = %92
  %99 = select i1 %38, ptr @.str.18, ptr @.str.17
  %100 = load i32, ptr %30, align 8, !tbaa !354
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %96, ptr noundef nonnull @.str.16, ptr noundef nonnull %99, i32 noundef %100) #20
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i32, ptr @reload_completed, align 4, !tbaa !341
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105, !prof !594

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 2
  store i8 1, ptr %106, align 2, !tbaa !595
  br label %107

107:                                              ; preds = %105, %102
  %108 = icmp eq ptr %95, null
  br i1 %108, label %155, label %109, !prof !596

109:                                              ; preds = %107, %150
  %110 = phi ptr [ %151, %150 ], [ null, %107 ]
  %111 = phi ptr [ %153, %150 ], [ %95, %107 ]
  %112 = getelementptr inbounds %struct.insn_info, ptr %111, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !597
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %137, !prof !598

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 2
  %117 = load i8, ptr %116, align 2, !tbaa !595
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %150, label %119, !prof !599

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.insn_info, ptr %111, i64 0, i32 6
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi ptr [ %120, %119 ], [ %126, %121 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !328
  %124 = load i8, ptr %123, align 8, !tbaa !380
  %125 = icmp eq i8 %124, 0
  %126 = getelementptr inbounds %struct.store_info, ptr %123, i64 0, i32 10
  br i1 %125, label %121, label %127, !prof !600, !llvm.loop !601

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.store_info, ptr %123, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !388
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %150, !prof !602

131:                                              ; preds = %127
  %132 = load ptr, ptr @rtx_group_vec, align 8
  %133 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %132, i32 noundef %129) #20
  %134 = getelementptr inbounds %struct.group_info, ptr %133, i64 0, i32 3
  %135 = load i8, ptr %134, align 1, !tbaa !390
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %150, label %137, !prof !603

137:                                              ; preds = %109, %131
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140, !prof !604

140:                                              ; preds = %137
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %111) #20
  br label %141

141:                                              ; preds = %140, %137
  %142 = icmp eq ptr %110, null
  %143 = getelementptr inbounds %struct.insn_info, ptr %111, i64 0, i32 9
  %144 = load ptr, ptr %143, align 8, !tbaa !574
  br i1 %142, label %147, label %145, !prof !605

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.insn_info, ptr %110, i64 0, i32 9
  br label %147

147:                                              ; preds = %141, %145
  %148 = phi ptr [ %146, %145 ], [ @active_local_stores, %141 ]
  %149 = phi ptr [ %110, %145 ], [ null, %141 ]
  store ptr %144, ptr %148, align 8, !tbaa !328
  br label %150

150:                                              ; preds = %147, %131, %127, %115
  %151 = phi ptr [ %111, %115 ], [ %111, %127 ], [ %111, %131 ], [ %149, %147 ]
  %152 = getelementptr inbounds %struct.insn_info, ptr %111, i64 0, i32 9
  %153 = load ptr, ptr %152, align 8, !tbaa !574
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %109, !prof !606, !llvm.loop !607

155:                                              ; preds = %150, %107
  br i1 %94, label %250, label %156, !prof !608

156:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %157 = call fastcc zeroext i8 @get_call_args(ptr noundef nonnull %1, ptr noundef nonnull %93, ptr noundef nonnull %3) #20
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %189, label %159, !prof !609

159:                                              ; preds = %156
  %160 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !328
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %165, label %189

165:                                              ; preds = %159
  %166 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %167 = load ptr, ptr %166, align 16, !tbaa !328
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 30
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !354
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %171
  %176 = load ptr, ptr %3, align 16, !tbaa !328
  %177 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %176) #21
  tail call void @set_mem_size(ptr noundef %177, ptr noundef nonnull %167) #21
  %178 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %177, ptr noundef nonnull %161) #21
  %179 = tail call fastcc i32 @record_store(ptr noundef %178, ptr noundef nonnull %0) #20, !range !424
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %175
  %183 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr nonnull %180)
  br label %184

184:                                              ; preds = %182, %175
  %185 = icmp eq i32 %179, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %184
  %187 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %188 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  store ptr %187, ptr %188, align 8, !tbaa !574
  store ptr %5, ptr @active_local_stores, align 8, !tbaa !328
  br label %189

189:                                              ; preds = %184, %186, %171, %165, %159, %156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %250

190:                                              ; preds = %76, %80, %70, %64, %59, %84
  tail call fastcc void @add_wild_read(ptr noundef nonnull %0) #20
  br label %250

191:                                              ; preds = %29
  %192 = load ptr, ptr %31, align 8, !tbaa !354
  %193 = load i32, ptr %192, align 8
  %194 = and i32 %193, 65535
  %195 = icmp eq i32 %194, 25
  br i1 %195, label %209, label %196, !prof !610

196:                                              ; preds = %191
  %197 = tail call i32 @volatile_refs_p(ptr noundef nonnull %192) #21
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %209, !prof !611

199:                                              ; preds = %196
  %200 = tail call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %1) #21
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %209, !prof !612

202:                                              ; preds = %199
  %203 = load i32, ptr %1, align 8
  %204 = and i32 %203, 1073741824
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209, !prof !613

206:                                              ; preds = %202
  %207 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 17, ptr noundef null) #21
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209, !prof !614

209:                                              ; preds = %206, %202, %199, %196, %191
  store i8 1, ptr %5, align 8, !tbaa !386
  br label %210

210:                                              ; preds = %209, %206
  %211 = load ptr, ptr %31, align 8, !tbaa !354
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 15
  br i1 %214, label %215, label %233, !prof !615

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !354
  %218 = load i32, ptr %217, align 8, !tbaa !616
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %235, !prof !618

220:                                              ; preds = %215, %220
  %221 = phi i64 [ %228, %220 ], [ 0, %215 ]
  %222 = phi ptr [ %229, %220 ], [ %217, %215 ]
  %223 = phi i32 [ %227, %220 ], [ 0, %215 ]
  %224 = getelementptr inbounds %struct.rtvec_def, ptr %222, i64 0, i32 1, i64 %221
  %225 = load ptr, ptr %224, align 8, !tbaa !328
  %226 = tail call fastcc i32 @record_store(ptr noundef %225, ptr noundef nonnull %0) #20, !range !424
  %227 = add nuw nsw i32 %226, %223
  %228 = add nuw nsw i64 %221, 1
  %229 = load ptr, ptr %216, align 8, !tbaa !354
  %230 = load i32, ptr %229, align 8, !tbaa !616
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 %228, %231
  br i1 %232, label %220, label %235, !prof !619, !llvm.loop !620

233:                                              ; preds = %210
  %234 = tail call fastcc i32 @record_store(ptr noundef nonnull %211, ptr noundef nonnull %0) #20, !range !424
  br label %235

235:                                              ; preds = %220, %215, %233
  %236 = phi i32 [ %234, %233 ], [ 0, %215 ], [ %227, %220 ]
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %238 = icmp eq ptr %237, null
  br i1 %238, label %244, label %239, !prof !621

239:                                              ; preds = %235
  %240 = load i8, ptr %5, align 8, !tbaa !386
  %241 = icmp eq i8 %240, 0
  %242 = select i1 %241, ptr @.str.23, ptr @.str.22
  %243 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %237, ptr noundef nonnull @.str.21, i32 noundef %236, ptr noundef nonnull %242) #20
  br label %244

244:                                              ; preds = %239, %235
  %245 = icmp eq i32 %236, 1
  br i1 %245, label %246, label %249, !prof !622

246:                                              ; preds = %244
  %247 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %248 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 9
  store ptr %247, ptr %248, align 8, !tbaa !574
  store ptr %5, ptr @active_local_stores, align 8, !tbaa !328
  br label %250

249:                                              ; preds = %244
  store i8 1, ptr %5, align 8, !tbaa !386
  br label %250

250:                                              ; preds = %246, %249, %190, %189, %155, %28, %18
  ret void
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_simulate_one_insn_forwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !623 !PGOFuncName !624 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !625

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !626
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !628 !PGOFuncName !629 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !630 !PGOFuncName !631 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !632
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dead_store_insn(ptr nocapture noundef %0) unnamed_addr #0 !prof !634 !PGOFuncName !635 {
  %2 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %40, label %4, !prof !636

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !412
  tail call fastcc void @check_for_inc_dec(ptr noundef %6) #20
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !637

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !412
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !354
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.56, i32 noundef %12) #20
  %14 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !504
  %16 = getelementptr inbounds %struct.store_info, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !384
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !328
  br i1 %18, label %22, label %20

20:                                               ; preds = %9
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.57, i32 noundef %17) #20
  br label %24

22:                                               ; preds = %9
  %23 = tail call i32 @fputc(i32 10, ptr %19)
  br label %24

24:                                               ; preds = %20, %22, %4
  tail call fastcc void @free_store_info(ptr noundef nonnull %0) #20
  %25 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !508
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28, !prof !638

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.read_info, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !639
  %32 = load ptr, ptr @read_info_pool, align 8, !tbaa !328
  tail call void @pool_free(ptr noundef %32, ptr noundef nonnull %29) #21
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %28, !prof !641, !llvm.loop !642

34:                                               ; preds = %28, %24
  store ptr null, ptr %25, align 8, !tbaa !508
  %35 = load ptr, ptr %5, align 8, !tbaa !412
  %36 = tail call ptr @delete_insn(ptr noundef %35) #21
  %37 = load i32, ptr @locally_deleted, align 4, !tbaa !341
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @locally_deleted, align 4, !tbaa !341
  store ptr null, ptr %5, align 8, !tbaa !412
  %39 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 1
  store i8 0, ptr %39, align 1, !tbaa !505
  br label %40

40:                                               ; preds = %1, %34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_group_info_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !643 !PGOFuncName !644 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  ret ptr %5
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_store_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !645 !PGOFuncName !646 {
  %2 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !504
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !647

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %8, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !648
  %9 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !415
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !649

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !354
  tail call void @bitmap_obstack_free(ptr noundef %14) #21
  store ptr null, ptr %13, align 8, !tbaa !354
  br label %15

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !571
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @rtx_store_info_pool, align 8
  %20 = load ptr, ptr @cse_store_info_pool, align 8
  %21 = select i1 %18, ptr %19, ptr %20
  tail call void @pool_free(ptr noundef %21, ptr noundef nonnull %6) #21
  %22 = icmp eq ptr %8, null
  br i1 %22, label %23, label %5, !prof !650, !llvm.loop !651

23:                                               ; preds = %15, %1
  store i8 1, ptr %0, align 8, !tbaa !386
  %24 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 4
  store i8 0, ptr %24, align 4, !tbaa !404
  store ptr null, ptr %2, align 8, !tbaa !504
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
define internal fastcc void @add_wild_read(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !652 !PGOFuncName !653 {
  %2 = load ptr, ptr %0, align 8, !tbaa !580
  %3 = getelementptr inbounds %struct.insn_info, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !654

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %13, %16 ], [ %4, %1 ]
  %8 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.read_info, ptr %7, i64 0, i32 5
  %10 = getelementptr inbounds %struct.read_info, ptr %7, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !655
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %9, align 8, !tbaa !328
  br i1 %12, label %14, label %16, !prof !656

14:                                               ; preds = %6
  %15 = load ptr, ptr @read_info_pool, align 8, !tbaa !328
  tail call void @pool_free(ptr noundef %15, ptr noundef nonnull %7) #21
  store ptr %13, ptr %8, align 8, !tbaa !328
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi ptr [ %8, %14 ], [ %9, %6 ]
  %18 = icmp eq ptr %13, null
  br i1 %18, label %19, label %6, !prof !657, !llvm.loop !658

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.insn_info, ptr %2, i64 0, i32 1
  store i8 1, ptr %20, align 1, !tbaa !505
  store ptr null, ptr @active_local_stores, align 8, !tbaa !328
  ret void
}

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @check_mem_read_use(ptr noundef %0, ptr noundef %1) #0 !prof !659 !PGOFuncName !660 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @check_mem_read_rtx, ptr noundef %1) #21
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_insn_info(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !326 !PGOFuncName !661 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %3 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !412
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !354
  %7 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !504
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.48, ptr @.str.47
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.19, i32 noundef %6, ptr noundef nonnull %10) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_call_args(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !662 !PGOFuncName !663 {
  %4 = alloca %struct.ix86_args, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !354
  call void @init_cumulative_args(ptr noundef nonnull %4, ptr noundef %6, ptr noundef null, ptr noundef null) #21
  %7 = load ptr, ptr %5, align 8, !tbaa !354
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !354
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !328
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %125, label %12, !prof !406

12:                                               ; preds = %3, %111
  %13 = phi i64 [ %113, %111 ], [ 0, %3 ]
  %14 = phi ptr [ %114, %111 ], [ %9, %3 ]
  %15 = getelementptr inbounds %struct.tree_list, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !354
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 14
  br i1 %19, label %20, label %22, !prof !664

20:                                               ; preds = %12
  %21 = call i32 @vector_type_mode(ptr noundef nonnull %16) #21
  br label %27

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %22 ]
  %29 = call ptr @function_arg(ptr noundef nonnull %4, i32 noundef %28, ptr noundef null, i32 noundef 1) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %125, label %31, !prof !609

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %125

35:                                               ; preds = %31
  %36 = lshr i32 %32, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, %28
  br i1 %38, label %39, label %125

39:                                               ; preds = %35
  %40 = zext nneg i32 %28 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !354
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %44, label %125

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !354
  %47 = icmp eq ptr %46, null
  br i1 %47, label %125, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds ptr, ptr %2, i64 %13
  br label %50

50:                                               ; preds = %48, %84
  %51 = phi ptr [ %46, %48 ], [ %86, %84 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !354
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 24
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !354
  store ptr %59, ptr %49, align 8, !tbaa !328
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %84

63:                                               ; preds = %57
  %64 = call fastcc i32 @rhs_regno(ptr noundef nonnull %59) #20
  %65 = call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #20
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = lshr i32 %60, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, %28
  br i1 %70, label %88, label %71

71:                                               ; preds = %67
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !354
  %75 = icmp eq i8 %74, 2
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %72
  %78 = load i8, ptr %77, align 1, !tbaa !354
  %79 = icmp ult i8 %78, 5
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %82 = load i8, ptr %81, align 1, !tbaa !354
  %83 = icmp ugt i8 %78, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %50, %80, %76, %71, %63, %57
  %85 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !354
  %87 = icmp eq ptr %86, null
  br i1 %87, label %125, label %50, !llvm.loop !665

88:                                               ; preds = %80, %67
  %89 = load ptr, ptr @scratch, align 8, !tbaa !328
  %90 = call ptr @cselib_expand_value_rtx(ptr noundef nonnull %59, ptr noundef %89, i32 noundef 5) #21
  %91 = load ptr, ptr %49, align 8, !tbaa !328
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, %28
  br i1 %95, label %107, label %96

96:                                               ; preds = %88
  %97 = icmp eq ptr %90, null
  br i1 %97, label %125, label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %90, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 30
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !354
  %105 = call i64 @trunc_int_for_mode(i64 noundef %104, i32 noundef %28) #21
  %106 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %105) #21
  br label %107

107:                                              ; preds = %102, %88
  %108 = phi ptr [ %106, %102 ], [ %90, %88 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store ptr %108, ptr %49, align 8, !tbaa !328
  br label %111

111:                                              ; preds = %110, %107
  call void @function_arg_advance(ptr noundef nonnull %4, i32 noundef %28, ptr noundef null, i32 noundef 1) #21
  %112 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %113 = add nuw nsw i64 %13, 1
  %114 = load ptr, ptr %112, align 8, !tbaa !354
  %115 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !328
  %116 = icmp ne ptr %114, %115
  %117 = icmp ult i64 %13, 2
  %118 = select i1 %116, i1 %117, i1 false, !prof !609
  br i1 %118, label %12, label %119, !prof !666, !llvm.loop !667

119:                                              ; preds = %111
  %120 = and i64 %113, 4294967295
  %121 = icmp eq i64 %120, 3
  %122 = xor i1 %116, true
  %123 = select i1 %122, i1 %121, i1 false
  %124 = zext i1 %123 to i8
  br label %125

125:                                              ; preds = %39, %35, %31, %27, %98, %96, %44, %84, %3, %119
  %126 = phi i8 [ 0, %3 ], [ %124, %119 ], [ 0, %84 ], [ 0, %44 ], [ 0, %96 ], [ 0, %98 ], [ 0, %27 ], [ 0, %31 ], [ 0, %35 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i8 %126
}

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @record_store(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !668 !PGOFuncName !669 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 0, ptr %3, align 8, !tbaa !670
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %7 = load ptr, ptr %1, align 8, !tbaa !580
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !328
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %480 [
    i16 23, label %10
    i16 25, label %10
  ], !prof !671

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !354
  %13 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !412
  %15 = tail call ptr @find_reg_note(ptr noundef %14, i32 noundef 6, ptr noundef %12) #21
  %16 = icmp eq ptr %15, null
  %17 = load i32, ptr %12, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %22, label %20, !prof !672

20:                                               ; preds = %10
  br i1 %16, label %21, label %480, !prof !673

21:                                               ; preds = %20
  store i8 1, ptr %7, align 8, !tbaa !386
  br label %480

22:                                               ; preds = %10
  %23 = and i32 %17, 16711680
  %24 = icmp eq i32 %23, 65536
  br i1 %24, label %25, label %66, !prof !674

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !354
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 38
  br i1 %30, label %31, label %37, !prof !675

31:                                               ; preds = %25
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !676

34:                                               ; preds = %31
  %35 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 51, i64 1, ptr nonnull %32)
  br label %36

36:                                               ; preds = %34, %31
  tail call fastcc void @add_wild_read(ptr noundef nonnull %1) #20
  store i8 1, ptr %7, align 8, !tbaa !386
  br label %480

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !354
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41, !prof !677

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !678
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45, !prof !677

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 30
  br i1 %48, label %49, label %64, !prof !677

49:                                               ; preds = %45
  %50 = load i32, ptr %0, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %64, !prof !677

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !354
  %56 = add i64 %55, -65537
  %57 = icmp ult i64 %56, -65536
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !354
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 30
  br i1 %63, label %66, label %64, !prof !680

64:                                               ; preds = %37, %58, %53, %49, %45, %41
  br i1 %16, label %65, label %480, !prof !677

65:                                               ; preds = %64
  store i8 1, ptr %7, align 8, !tbaa !386
  tail call fastcc void @clear_rhs_from_active_local_stores() #20
  br label %480

66:                                               ; preds = %58, %22
  %67 = and i32 %17, 134217728
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69, !prof !681

69:                                               ; preds = %66
  store i8 1, ptr %7, align 8, !tbaa !386
  br label %70

70:                                               ; preds = %69, %66
  %71 = call fastcc zeroext i8 @canon_address(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %6) #20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74, !prof !682

73:                                               ; preds = %70
  tail call fastcc void @clear_rhs_from_active_local_stores() #20
  br label %480

74:                                               ; preds = %70
  %75 = load i32, ptr %12, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %86, !prof !683

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !354, !nonnull !684, !noundef !684
  %82 = getelementptr inbounds %struct.mem_attrs, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !678
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !354
  br label %93

86:                                               ; preds = %74
  %87 = zext nneg i32 %77 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !354
  %90 = zext i8 %89 to i64
  %91 = icmp ult i8 %89, 65
  br i1 %91, label %93, label %92, !prof !685

92:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1386, ptr noundef nonnull @.str.2) #21
  br label %93

93:                                               ; preds = %92, %86, %79
  %94 = phi i64 [ %85, %79 ], [ %90, %86 ], [ %90, %92 ]
  %95 = load i32, ptr %4, align 4, !tbaa !341
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97, !prof !685

97:                                               ; preds = %93
  %98 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  %99 = getelementptr inbounds %struct.group_info, ptr %98, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !430
  %101 = getelementptr inbounds %struct.group_info, ptr %98, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !429
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
  %112 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  %113 = getelementptr inbounds %struct.group_info, ptr %112, i64 0, i32 14
  %114 = load i32, ptr %113, align 4, !tbaa !434
  %115 = icmp slt i32 %114, %95
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i32 %95, ptr %113, align 4, !tbaa !434
  br label %117

117:                                              ; preds = %116, %107
  %118 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !328
  %119 = tail call ptr @pool_alloc(ptr noundef %118) #21
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %121 = icmp eq ptr %120, null
  br i1 %121, label %174, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %12, align 8
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !328
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %120, ptr noundef nonnull @.str.50, i32 noundef %95, ptr noundef %128) #20
  br label %174

130:                                              ; preds = %93
  %131 = load i32, ptr %5, align 4, !tbaa !341
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %133, label %146, !prof !686

133:                                              ; preds = %130
  %134 = load ptr, ptr @rtx_group_vec, align 8
  %135 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %134, i32 noundef %131) #20
  %136 = load ptr, ptr @rtx_store_info_pool, align 8, !tbaa !328
  %137 = tail call ptr @pool_alloc(ptr noundef %136) #21
  %138 = load i64, ptr %3, align 8, !tbaa !670
  tail call fastcc void @set_usage_bits(ptr noundef %135, i64 noundef %138, i64 noundef %94) #20
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %140 = icmp eq ptr %139, null
  br i1 %140, label %174, label %141, !prof !687

141:                                              ; preds = %133
  %142 = trunc i64 %138 to i32
  %143 = add nsw i64 %138, %94
  %144 = trunc i64 %143 to i32
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %139, ptr noundef nonnull @.str.51, i32 noundef %131, i32 noundef %142, i32 noundef %144) #20
  br label %174

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !354
  %149 = tail call ptr @find_base_term(ptr noundef %148) #21
  %150 = icmp eq ptr %149, null
  br i1 %150, label %160, label %151, !prof !688

151:                                              ; preds = %146
  %152 = load i32, ptr %149, align 8
  %153 = and i32 %152, 16777215
  %154 = icmp eq i32 %153, 1048582
  br i1 %154, label %155, label %162, !prof !689

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !354
  %158 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !328
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %160, label %162, !prof !690

160:                                              ; preds = %155, %146
  %161 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 3
  store i8 1, ptr %161, align 1, !tbaa !597
  br label %162

162:                                              ; preds = %160, %155, %151
  %163 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 4
  store i8 1, ptr %163, align 4, !tbaa !404
  %164 = load ptr, ptr @cse_store_info_pool, align 8, !tbaa !328
  %165 = tail call ptr @pool_alloc(ptr noundef %164) #21
  store i32 -1, ptr %5, align 4, !tbaa !341
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168, !prof !691

168:                                              ; preds = %162
  %169 = load i64, ptr %3, align 8, !tbaa !670
  %170 = trunc i64 %169 to i32
  %171 = add nsw i64 %169, %94
  %172 = trunc i64 %171 to i32
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %166, ptr noundef nonnull @.str.52, i32 noundef %170, i32 noundef %172) #20
  br label %174

174:                                              ; preds = %162, %168, %133, %141, %117, %122
  %175 = phi ptr [ %119, %122 ], [ %119, %117 ], [ %137, %141 ], [ %137, %133 ], [ %165, %168 ], [ %165, %162 ]
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 65535
  %178 = icmp ne i32 %177, 23
  %179 = load i32, ptr @reload_completed, align 4
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %178, i1 true, i1 %180
  br i1 %181, label %244, label %182, !prof !692

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !354
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = trunc i32 %185 to i16
  switch i16 %187, label %188 [
    i16 37, label %193
    i16 39, label %193
  ], !prof !693

188:                                              ; preds = %182
  %189 = zext nneg i32 %186 to i64
  %190 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !341
  %192 = icmp eq i32 %191, 9
  br i1 %192, label %193, label %244, !prof !694

193:                                              ; preds = %182, %182, %188
  %194 = load i32, ptr %12, align 8
  %195 = and i32 %194, 134217728
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %244, !prof !695

197:                                              ; preds = %193
  %198 = lshr i32 %194, 16
  %199 = and i32 %198, 255
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !354
  switch i8 %202, label %206 [
    i8 8, label %203
    i8 9, label %203
    i8 11, label %203
    i8 17, label %203
  ], !prof !696

203:                                              ; preds = %197, %197, %197, %197
  %204 = load i32, ptr @flag_float_store, align 4, !tbaa !341
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %244, !prof !697

206:                                              ; preds = %197, %203
  %207 = zext nneg i32 %186 to i64
  %208 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !341
  %210 = icmp eq i32 %209, 9
  br i1 %210, label %244, label %211, !prof !698

211:                                              ; preds = %206
  %212 = load ptr, ptr %13, align 8, !tbaa !412
  %213 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !354
  %215 = icmp eq ptr %214, %0
  br i1 %215, label %216, label %228, !prof !699

216:                                              ; preds = %211
  %217 = tail call ptr @find_reg_note(ptr noundef nonnull %212, i32 noundef 4, ptr noundef null) #21
  %218 = icmp eq ptr %217, null
  br i1 %218, label %228, label %219, !prof !700

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !354
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 65535
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !341
  %227 = icmp eq i32 %226, 9
  br i1 %227, label %244, label %228, !prof !701

228:                                              ; preds = %211, %219, %216
  %229 = load i32, ptr %184, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 37
  br i1 %231, label %232, label %244, !prof !702

232:                                              ; preds = %228
  %233 = load ptr, ptr @scratch, align 8, !tbaa !328
  %234 = tail call ptr @cselib_expand_value_rtx(ptr noundef nonnull %184, ptr noundef %233, i32 noundef 5) #21
  %235 = icmp eq ptr %234, null
  br i1 %235, label %244, label %236, !prof !703

236:                                              ; preds = %232
  %237 = load i32, ptr %234, align 8
  %238 = and i32 %237, 65535
  %239 = zext nneg i32 %238 to i64
  %240 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !341
  %242 = icmp eq i32 %241, 9
  br i1 %242, label %243, label %244, !prof !703

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %219, %206, %232, %236, %243, %228, %203, %193, %188, %174
  %245 = phi ptr [ null, %174 ], [ null, %193 ], [ null, %203 ], [ null, %228 ], [ null, %188 ], [ %234, %243 ], [ null, %236 ], [ null, %232 ], [ %184, %206 ], [ %221, %219 ]
  %246 = phi ptr [ null, %174 ], [ null, %193 ], [ null, %203 ], [ %184, %228 ], [ null, %188 ], [ %184, %243 ], [ %184, %236 ], [ %184, %232 ], [ %184, %206 ], [ %184, %219 ]
  %247 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %248 = tail call ptr @canon_rtx(ptr noundef nonnull %12) #21
  br i1 %96, label %249, label %266, !prof !685

249:                                              ; preds = %244
  %250 = load i32, ptr %5, align 4, !tbaa !341
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %255, !prof !704

252:                                              ; preds = %249
  %253 = load ptr, ptr %6, align 8, !tbaa !328
  %254 = getelementptr inbounds %struct.cselib_val_struct, ptr %253, i64 0, i32 2
  br label %259

255:                                              ; preds = %249
  %256 = load ptr, ptr @rtx_group_vec, align 8
  %257 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %256, i32 noundef %250) #20
  %258 = getelementptr inbounds %struct.group_info, ptr %257, i64 0, i32 5
  br label %259

259:                                              ; preds = %255, %252
  %260 = phi ptr [ %254, %252 ], [ %258, %255 ]
  %261 = load ptr, ptr %260, align 8, !tbaa !328
  %262 = load i64, ptr %3, align 8, !tbaa !670
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %266, label %264, !prof !705

264:                                              ; preds = %259
  %265 = tail call ptr @plus_constant(ptr noundef %261, i64 noundef %262) #21
  br label %266

266:                                              ; preds = %244, %259, %264
  %267 = phi ptr [ %265, %264 ], [ %261, %259 ], [ null, %244 ]
  %268 = icmp eq ptr %247, null
  %269 = load ptr, ptr %6, align 8
  br i1 %268, label %445, label %270, !prof !706

270:                                              ; preds = %266
  %271 = load i32, ptr %5, align 4
  %272 = load i64, ptr %3, align 8
  br label %273

273:                                              ; preds = %270, %442
  %274 = phi ptr [ %247, %270 ], [ %278, %442 ]
  %275 = phi ptr [ null, %270 ], [ %443, %442 ]
  %276 = phi ptr [ null, %270 ], [ %430, %442 ]
  %277 = getelementptr inbounds %struct.insn_info, ptr %274, i64 0, i32 9
  %278 = load ptr, ptr %277, align 8, !tbaa !574
  %279 = getelementptr inbounds %struct.insn_info, ptr %274, i64 0, i32 6
  br label %280

280:                                              ; preds = %280, %273
  %281 = phi ptr [ %279, %273 ], [ %285, %280 ]
  %282 = load ptr, ptr %281, align 8, !tbaa !328
  %283 = load i8, ptr %282, align 8, !tbaa !380
  %284 = icmp eq i8 %283, 0
  %285 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 10
  br i1 %284, label %280, label %286, !prof !707, !llvm.loop !708

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 6
  %288 = load i32, ptr %287, align 8, !tbaa !384
  %289 = icmp ne i32 %288, %95
  br i1 %289, label %429, label %290, !prof !707

290:                                              ; preds = %286
  br i1 %96, label %317, label %291, !prof !709

291:                                              ; preds = %290
  %292 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %95) #20
  %293 = load i32, ptr %248, align 8
  %294 = lshr i32 %293, 16
  %295 = and i32 %294, 255
  %296 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 4
  %297 = load ptr, ptr %296, align 8, !tbaa !710
  %298 = load i32, ptr %297, align 8
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  %301 = icmp eq i32 %295, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %291
  %303 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %292, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !335
  %305 = icmp eq i32 %295, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  tail call fastcc void @set_all_positions_unneeded(ptr noundef nonnull %282) #20
  br label %307

307:                                              ; preds = %306, %302, %291
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %309 = icmp eq ptr %308, null
  br i1 %309, label %429, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.insn_info, ptr %274, i64 0, i32 5
  %312 = load ptr, ptr %311, align 8, !tbaa !412
  %313 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !354
  %315 = load i32, ptr %287, align 8, !tbaa !384
  %316 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %308, ptr noundef nonnull @.str.53, i32 noundef %314, i32 noundef %315) #20
  br label %429

317:                                              ; preds = %290
  %318 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 2
  %319 = load i32, ptr %318, align 4, !tbaa !388
  %320 = icmp eq i32 %319, %271
  br i1 %320, label %321, label %414, !prof !711

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !571
  %324 = icmp eq ptr %323, %269
  br i1 %324, label %325, label %414, !prof !712

325:                                              ; preds = %321
  %326 = add nsw i64 %272, %94
  %327 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %328 = icmp eq ptr %327, null
  br i1 %328, label %341, label %329, !prof !713

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.insn_info, ptr %274, i64 0, i32 5
  %331 = load ptr, ptr %330, align 8, !tbaa !412
  %332 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1
  %333 = load i32, ptr %332, align 8, !tbaa !354
  %334 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 7
  %335 = load i64, ptr %334, align 8, !tbaa !490
  %336 = trunc i64 %335 to i32
  %337 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 8
  %338 = load i64, ptr %337, align 8, !tbaa !491
  %339 = trunc i64 %338 to i32
  %340 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %327, ptr noundef nonnull @.str.54, i32 noundef %333, i32 noundef %271, i32 noundef %336, i32 noundef %339) #20
  br label %341

341:                                              ; preds = %329, %325
  %342 = icmp ne ptr %245, null
  %343 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 12
  %344 = load ptr, ptr %343, align 8, !tbaa !714
  %345 = icmp ne ptr %344, null
  %346 = and i1 %342, %345
  br i1 %346, label %347, label %397, !prof !715

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 7
  %349 = load i64, ptr %348, align 8, !tbaa !490
  %350 = icmp slt i64 %272, %349
  br i1 %350, label %397, label %351, !prof !716

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 8
  %353 = load i64, ptr %352, align 8, !tbaa !491
  %354 = icmp sgt i64 %326, %353
  br i1 %354, label %397, label %355, !prof !717

355:                                              ; preds = %351
  %356 = trunc i64 %94 to i32
  %357 = sub nsw i64 %272, %349
  %358 = trunc i64 %357 to i32
  %359 = tail call fastcc zeroext i8 @all_positions_needed_p(ptr noundef nonnull %282, i32 noundef %358, i32 noundef %356) #20, !range !327
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %397, label %361, !prof !718

361:                                              ; preds = %355
  %362 = load i32, ptr %248, align 8
  %363 = and i32 %362, 16711680
  %364 = icmp eq i32 %363, 65536
  br i1 %364, label %365, label %375, !prof !718

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 4
  %367 = load ptr, ptr %366, align 8, !tbaa !710
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 16711680
  %370 = icmp eq i32 %369, 65536
  br i1 %370, label %371, label %397

371:                                              ; preds = %365
  %372 = load ptr, ptr %343, align 8, !tbaa !714
  %373 = icmp eq ptr %372, %245
  %374 = select i1 %373, ptr %274, ptr %276
  br label %397

375:                                              ; preds = %361
  %376 = load ptr, ptr %343, align 8, !tbaa !714
  %377 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !328
  %378 = icmp eq ptr %376, %377
  %379 = icmp eq ptr %245, %377
  %380 = and i1 %378, %379
  br i1 %380, label %397, label %381, !prof !719

381:                                              ; preds = %375
  tail call void @start_sequence() #21
  %382 = load i32, ptr %248, align 8
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  %385 = load ptr, ptr %13, align 8, !tbaa !412
  %386 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1, i32 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !354
  %388 = tail call fastcc ptr @get_stored_val(ptr noundef nonnull %282, i32 noundef %384, i64 noundef %272, ptr noundef %387, i8 noundef zeroext 1) #20
  %389 = tail call ptr @get_insns() #21
  %390 = icmp ne ptr %389, null
  tail call void @end_sequence() #21
  %391 = icmp eq ptr %388, null
  %392 = select i1 %390, i1 true, i1 %391
  br i1 %392, label %397, label %393, !prof !720

393:                                              ; preds = %381
  %394 = tail call i32 @rtx_equal_p(ptr noundef nonnull %388, ptr noundef nonnull %245) #21
  %395 = icmp eq i32 %394, 0
  %396 = select i1 %395, ptr %276, ptr %274, !prof !721
  br label %397

397:                                              ; preds = %393, %371, %381, %375, %365, %355, %351, %347, %341
  %398 = phi ptr [ %276, %365 ], [ %276, %355 ], [ %276, %351 ], [ %276, %347 ], [ %276, %341 ], [ %374, %371 ], [ %274, %375 ], [ %276, %381 ], [ %396, %393 ]
  %399 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 7
  %400 = load i64, ptr %399, align 8, !tbaa !490
  %401 = tail call i64 @llvm.smax.i64(i64 %272, i64 %400)
  %402 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 8
  %403 = icmp slt i64 %401, %326
  br i1 %403, label %404, label %429, !prof !722

404:                                              ; preds = %397, %408
  %405 = phi i64 [ %412, %408 ], [ %401, %397 ]
  %406 = load i64, ptr %402, align 8, !tbaa !491
  %407 = icmp slt i64 %405, %406
  br i1 %407, label %408, label %429, !prof !723

408:                                              ; preds = %404
  %409 = load i64, ptr %399, align 8, !tbaa !490
  %410 = sub nsw i64 %405, %409
  %411 = trunc i64 %410 to i32
  tail call fastcc void @set_position_unneeded(ptr noundef nonnull %282, i32 noundef %411) #20
  %412 = add nsw i64 %405, 1
  %413 = icmp slt i64 %412, %326
  br i1 %413, label %404, label %429, !prof !724, !llvm.loop !725

414:                                              ; preds = %321, %317
  %415 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 11
  %416 = load ptr, ptr %415, align 8, !tbaa !726
  %417 = icmp eq ptr %416, null
  br i1 %417, label %429, label %418, !prof !727

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 4
  %420 = load ptr, ptr %419, align 8, !tbaa !710
  %421 = load i32, ptr %420, align 8
  %422 = lshr i32 %421, 16
  %423 = and i32 %422, 255
  %424 = getelementptr inbounds %struct.store_info, ptr %282, i64 0, i32 5
  %425 = load ptr, ptr %424, align 8, !tbaa !728
  %426 = tail call i32 @canon_true_dependence(ptr noundef nonnull %420, i32 noundef %423, ptr noundef %425, ptr noundef %248, ptr noundef %267, ptr noundef nonnull @rtx_varies_p) #21
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %429, label %428, !prof !729

428:                                              ; preds = %418
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %415, i8 0, i64 16, i1 false)
  br label %429

429:                                              ; preds = %408, %404, %397, %307, %310, %286, %414, %428, %418
  %430 = phi ptr [ %276, %428 ], [ %276, %418 ], [ %276, %414 ], [ %276, %286 ], [ %276, %310 ], [ %276, %307 ], [ %398, %397 ], [ %398, %404 ], [ %398, %408 ]
  %431 = tail call fastcc zeroext i8 @any_positions_needed_p(ptr noundef nonnull %282) #20, !range !327
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %433, label %442, !prof !730

433:                                              ; preds = %429
  %434 = load i8, ptr %274, align 8, !tbaa !386
  %435 = icmp ne i8 %434, 0
  %436 = or i1 %289, %435
  br i1 %436, label %442, label %437, !prof !731

437:                                              ; preds = %433
  %438 = icmp eq ptr %275, null
  %439 = load ptr, ptr %277, align 8, !tbaa !574
  %440 = getelementptr inbounds %struct.insn_info, ptr %275, i64 0, i32 9
  %441 = select i1 %438, ptr @active_local_stores, ptr %440, !prof !732
  store ptr %439, ptr %441, align 8, !tbaa !328
  tail call fastcc void @delete_dead_store_insn(ptr noundef nonnull %274) #20
  br label %442

442:                                              ; preds = %433, %429, %437
  %443 = phi ptr [ %275, %437 ], [ %274, %429 ], [ %274, %433 ]
  %444 = icmp eq ptr %278, null
  br i1 %444, label %445, label %273, !prof !733, !llvm.loop !734

445:                                              ; preds = %442, %266
  %446 = phi ptr [ null, %266 ], [ %430, %442 ]
  %447 = getelementptr inbounds %struct.insn_info, ptr %7, i64 0, i32 6
  %448 = load ptr, ptr %447, align 8, !tbaa !504
  %449 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 10
  store ptr %448, ptr %449, align 8, !tbaa !648
  store ptr %175, ptr %447, align 8, !tbaa !504
  %450 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 4
  store ptr %248, ptr %450, align 8, !tbaa !710
  %451 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 6
  store i32 %95, ptr %451, align 8, !tbaa !384
  %452 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 5
  store ptr %267, ptr %452, align 8, !tbaa !728
  %453 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 3
  store ptr %269, ptr %453, align 8, !tbaa !571
  %454 = icmp sgt i64 %94, 64
  %455 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 1
  br i1 %454, label %456, label %460, !prof !683

456:                                              ; preds = %445
  store i8 1, ptr %455, align 1, !tbaa !415
  %457 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 9, i32 0, i32 1
  store i32 0, ptr %457, align 8, !tbaa !354
  %458 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %459 = ptrtoint ptr %458 to i64
  br label %463

460:                                              ; preds = %445
  store i8 0, ptr %455, align 1, !tbaa !415
  %461 = trunc i64 %94 to i32
  %462 = tail call fastcc i64 @lowpart_bitmask(i32 noundef %461) #20
  br label %463

463:                                              ; preds = %460, %456
  %464 = phi i64 [ %459, %456 ], [ %462, %460 ]
  %465 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 9
  store i64 %464, ptr %465, align 8
  %466 = load i32, ptr %5, align 4, !tbaa !341
  %467 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 2
  store i32 %466, ptr %467, align 4, !tbaa !388
  %468 = load i64, ptr %3, align 8, !tbaa !670
  %469 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 7
  store i64 %468, ptr %469, align 8, !tbaa !490
  %470 = add nsw i64 %468, %94
  %471 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 8
  store i64 %470, ptr %471, align 8, !tbaa !491
  %472 = load i32, ptr %0, align 8
  %473 = and i32 %472, 65535
  %474 = icmp eq i32 %473, 23
  %475 = zext i1 %474 to i8
  store i8 %475, ptr %175, align 8, !tbaa !380
  %476 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 11
  store ptr %246, ptr %476, align 8, !tbaa !726
  %477 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 12
  store ptr %245, ptr %477, align 8, !tbaa !714
  %478 = getelementptr inbounds %struct.store_info, ptr %175, i64 0, i32 13
  store ptr %446, ptr %478, align 8, !tbaa !410
  %479 = zext i1 %474 to i32
  br label %480

480:                                              ; preds = %64, %65, %20, %21, %2, %463, %73, %36
  %481 = phi i32 [ 0, %36 ], [ %479, %463 ], [ 0, %73 ], [ 0, %2 ], [ 0, %21 ], [ 0, %20 ], [ 0, %65 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 %481
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
define internal noundef i32 @check_mem_read_rtx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !735 !PGOFuncName !736 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 0, ptr %3, align 8, !tbaa !670
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !341
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %315, label %9, !prof !737

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %13, label %315, !prof !738

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8, !tbaa !580
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !354
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18, !prof !739

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mem_attrs, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !740
  %21 = icmp ne i32 %20, -1
  %22 = and i32 %10, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %23, %21
  br i1 %24, label %34, label %28, !prof !741

25:                                               ; preds = %13
  %26 = and i32 %10, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28, !prof !742

28:                                               ; preds = %25, %18
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !743

31:                                               ; preds = %28
  %32 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 40, i64 1, ptr nonnull %29)
  br label %33

33:                                               ; preds = %31, %28
  tail call fastcc void @add_wild_read(ptr noundef nonnull %1) #20
  store i8 1, ptr %14, align 8, !tbaa !386
  br label %315

34:                                               ; preds = %18, %25
  %35 = and i32 %10, 67108864
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %315, !prof !744

37:                                               ; preds = %34
  %38 = call fastcc zeroext i8 @canon_address(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %5) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46, !prof !745

40:                                               ; preds = %37
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !746

43:                                               ; preds = %40
  %44 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr nonnull %41)
  br label %45

45:                                               ; preds = %43, %40
  tail call fastcc void @add_wild_read(ptr noundef nonnull %1) #20
  br label %315

46:                                               ; preds = %37
  %47 = load i32, ptr %7, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %56, label %51, !prof !747

51:                                               ; preds = %46
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !354
  %55 = zext i8 %54 to i64
  br label %56

56:                                               ; preds = %46, %51
  %57 = phi i64 [ %55, %51 ], [ -1, %46 ]
  %58 = load ptr, ptr @read_info_pool, align 8, !tbaa !328
  %59 = tail call ptr @pool_alloc(ptr noundef %58) #21
  %60 = load i32, ptr %6, align 4, !tbaa !341
  store i32 %60, ptr %59, align 8, !tbaa !748
  %61 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 4
  store ptr %7, ptr %61, align 8, !tbaa !749
  %62 = load i32, ptr %4, align 4, !tbaa !341
  %63 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 1
  store i32 %62, ptr %63, align 4, !tbaa !655
  %64 = load i64, ptr %3, align 8, !tbaa !670
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 2
  store i32 %65, ptr %66, align 8, !tbaa !750
  %67 = add nsw i64 %64, %57
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 3
  store i32 %68, ptr %69, align 4, !tbaa !751
  %70 = getelementptr inbounds %struct.insn_info, ptr %14, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !508
  %72 = getelementptr inbounds %struct.read_info, ptr %59, i64 0, i32 5
  store ptr %71, ptr %72, align 8, !tbaa !639
  store ptr %59, ptr %70, align 8, !tbaa !508
  %73 = icmp eq i32 %62, 0
  br i1 %73, label %74, label %89, !prof !752

74:                                               ; preds = %56
  %75 = icmp slt i32 %60, 0
  br i1 %75, label %76, label %79, !prof !753

76:                                               ; preds = %74
  %77 = load ptr, ptr %5, align 8, !tbaa !328
  %78 = getelementptr inbounds %struct.cselib_val_struct, ptr %77, i64 0, i32 2
  br label %83

79:                                               ; preds = %74
  %80 = load ptr, ptr @rtx_group_vec, align 8
  %81 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %80, i32 noundef %60) #20
  %82 = getelementptr inbounds %struct.group_info, ptr %81, i64 0, i32 5
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi ptr [ %78, %76 ], [ %82, %79 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !328
  %86 = icmp eq i64 %64, 0
  br i1 %86, label %129, label %87, !prof !754

87:                                               ; preds = %83
  %88 = tail call ptr @plus_constant(ptr noundef %85, i64 noundef %64) #21
  br label %129

89:                                               ; preds = %56
  %90 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.26, i32 noundef %62) #20
  br label %95

95:                                               ; preds = %93, %89
  %96 = icmp eq ptr %90, null
  br i1 %96, label %315, label %97

97:                                               ; preds = %95, %125
  %98 = phi ptr [ %127, %125 ], [ null, %95 ]
  %99 = phi ptr [ %126, %125 ], [ %90, %95 ]
  %100 = getelementptr inbounds %struct.insn_info, ptr %99, i64 0, i32 6
  br label %101

101:                                              ; preds = %101, %97
  %102 = phi ptr [ %100, %97 ], [ %106, %101 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !328
  %104 = load i8, ptr %103, align 8, !tbaa !380
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.store_info, ptr %103, i64 0, i32 10
  br i1 %105, label %101, label %107, !llvm.loop !755

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.store_info, ptr %103, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !384
  %110 = icmp eq i32 %109, %62
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.insn_info, ptr %99, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !574
  br label %125

114:                                              ; preds = %107
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %99) #20
  br label %118

118:                                              ; preds = %117, %114
  %119 = icmp eq ptr %98, null
  %120 = getelementptr inbounds %struct.insn_info, ptr %99, i64 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !574
  br i1 %119, label %124, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.insn_info, ptr %98, i64 0, i32 9
  store ptr %121, ptr %123, align 8, !tbaa !574
  br label %125

124:                                              ; preds = %118
  store ptr %121, ptr @active_local_stores, align 8, !tbaa !328
  br label %125

125:                                              ; preds = %111, %122, %124
  %126 = phi ptr [ %121, %122 ], [ %121, %124 ], [ %113, %111 ]
  %127 = phi ptr [ %98, %122 ], [ null, %124 ], [ %99, %111 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %315, label %97, !llvm.loop !756

129:                                              ; preds = %83, %87
  %130 = phi ptr [ %85, %83 ], [ %88, %87 ]
  %131 = icmp sgt i32 %60, -1
  %132 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %133 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %134 = icmp eq ptr %133, null
  br i1 %131, label %135, label %219, !prof !757

135:                                              ; preds = %129
  br i1 %134, label %142, label %136, !prof !758

136:                                              ; preds = %135
  %137 = icmp eq i64 %57, -1
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %133, ptr noundef nonnull @.str.27, i32 noundef %60) #20
  br label %142

140:                                              ; preds = %136
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %133, ptr noundef nonnull @.str.28, i32 noundef %60, i32 noundef %65, i32 noundef %68) #20
  br label %142

142:                                              ; preds = %138, %140, %135
  %143 = getelementptr inbounds %struct.bb_info, ptr %1, i64 0, i32 6
  %144 = icmp eq ptr %132, null
  br i1 %144, label %315, label %145, !prof !759

145:                                              ; preds = %142, %214
  %146 = phi ptr [ %215, %214 ], [ null, %142 ]
  %147 = phi ptr [ %217, %214 ], [ %132, %142 ]
  %148 = getelementptr inbounds %struct.insn_info, ptr %147, i64 0, i32 6
  br label %149

149:                                              ; preds = %149, %145
  %150 = phi ptr [ %148, %145 ], [ %154, %149 ]
  %151 = load ptr, ptr %150, align 8, !tbaa !328
  %152 = load i8, ptr %151, align 8, !tbaa !380
  %153 = icmp eq i8 %152, 0
  %154 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 10
  br i1 %153, label %149, label %155, !prof !760, !llvm.loop !761

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !388
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %193, label %159, !prof !762

159:                                              ; preds = %155
  %160 = icmp eq i32 %60, %157
  br i1 %160, label %161, label %214, !prof !763

161:                                              ; preds = %159
  %162 = icmp eq i64 %57, -1
  br i1 %162, label %193, label %163, !prof !764

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 11
  %165 = load ptr, ptr %164, align 8, !tbaa !726
  %166 = icmp eq ptr %165, null
  br i1 %166, label %185, label %167, !prof !765

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 7
  %169 = load i64, ptr %168, align 8, !tbaa !490
  %170 = icmp slt i64 %64, %169
  br i1 %170, label %185, label %171, !prof !766

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 8
  %173 = load i64, ptr %172, align 8, !tbaa !491
  %174 = icmp sgt i64 %67, %173
  br i1 %174, label %185, label %175, !prof !767

175:                                              ; preds = %171
  %176 = trunc i64 %57 to i32
  %177 = sub nsw i64 %64, %169
  %178 = trunc i64 %177 to i32
  %179 = tail call fastcc zeroext i8 @all_positions_needed_p(ptr noundef nonnull %151, i32 noundef %178, i32 noundef %176) #20, !range !327
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %185, label %181, !prof !768

181:                                              ; preds = %175
  %182 = load ptr, ptr %143, align 8, !tbaa !360
  %183 = tail call fastcc zeroext i8 @replace_read(ptr noundef nonnull %151, ptr noundef nonnull %147, ptr noundef nonnull %59, ptr noundef %14, ptr noundef nonnull %0, ptr noundef %182) #20, !range !327
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %315, !prof !769

185:                                              ; preds = %181, %175, %171, %167, %163
  %186 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 8
  %187 = load i64, ptr %186, align 8, !tbaa !491
  %188 = icmp slt i64 %64, %187
  br i1 %188, label %189, label %214, !prof !770

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 7
  %191 = load i64, ptr %190, align 8, !tbaa !490
  %192 = icmp sgt i64 %67, %191
  br i1 %192, label %204, label %214, !prof !771

193:                                              ; preds = %161, %155
  %194 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !710
  %196 = load i32, ptr %195, align 8
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  %199 = getelementptr inbounds %struct.store_info, ptr %151, i64 0, i32 5
  %200 = load ptr, ptr %199, align 8, !tbaa !728
  %201 = tail call i32 @canon_true_dependence(ptr noundef nonnull %195, i32 noundef %198, ptr noundef %200, ptr noundef nonnull %7, ptr noundef %130, ptr noundef nonnull @rtx_varies_p) #21
  %202 = and i32 %201, 255
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %214, label %204, !prof !772

204:                                              ; preds = %189, %193
  %205 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207, !prof !773

207:                                              ; preds = %204
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %147) #20
  br label %208

208:                                              ; preds = %207, %204
  %209 = icmp eq ptr %146, null
  %210 = getelementptr inbounds %struct.insn_info, ptr %147, i64 0, i32 9
  %211 = load ptr, ptr %210, align 8, !tbaa !574
  %212 = getelementptr inbounds %struct.insn_info, ptr %146, i64 0, i32 9
  %213 = select i1 %209, ptr @active_local_stores, ptr %212, !prof !774
  store ptr %211, ptr %213, align 8, !tbaa !328
  br label %214

214:                                              ; preds = %208, %189, %159, %185, %193
  %215 = phi ptr [ %147, %193 ], [ %147, %185 ], [ %147, %159 ], [ %147, %189 ], [ %146, %208 ]
  %216 = getelementptr inbounds %struct.insn_info, ptr %147, i64 0, i32 9
  %217 = load ptr, ptr %216, align 8, !tbaa !574
  %218 = icmp eq ptr %217, null
  br i1 %218, label %315, label %145, !prof !775, !llvm.loop !776

219:                                              ; preds = %129
  br i1 %134, label %225, label %220, !prof !777

220:                                              ; preds = %219
  %221 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 28, i64 1, ptr nonnull %133)
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @print_inline_rtx(ptr noundef %222, ptr noundef nonnull %7, i32 noundef 0) #21
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %224 = tail call i32 @fputc(i32 10, ptr %223)
  br label %225

225:                                              ; preds = %220, %219
  %226 = getelementptr inbounds %struct.bb_info, ptr %1, i64 0, i32 6
  %227 = icmp eq ptr %132, null
  br i1 %227, label %315, label %228, !prof !778

228:                                              ; preds = %225
  %229 = load ptr, ptr %5, align 8
  br label %230

230:                                              ; preds = %228, %310
  %231 = phi ptr [ null, %228 ], [ %311, %310 ]
  %232 = phi ptr [ %132, %228 ], [ %313, %310 ]
  %233 = getelementptr inbounds %struct.insn_info, ptr %232, i64 0, i32 6
  %234 = load ptr, ptr %233, align 8, !tbaa !504
  %235 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %236 = icmp eq ptr %235, null
  br i1 %236, label %243, label %237, !prof !779

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.insn_info, ptr %232, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !412
  %240 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !354
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %235, ptr noundef nonnull @.str.31, i32 noundef %241) #20
  br label %243

243:                                              ; preds = %237, %230
  %244 = load i8, ptr %234, align 8, !tbaa !380
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %252, !prof !780

246:                                              ; preds = %243, %246
  %247 = phi ptr [ %249, %246 ], [ %234, %243 ]
  %248 = getelementptr inbounds %struct.store_info, ptr %247, i64 0, i32 10
  %249 = load ptr, ptr %248, align 8, !tbaa !648
  %250 = load i8, ptr %249, align 8, !tbaa !380
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %246, label %252, !prof !781, !llvm.loop !782

252:                                              ; preds = %246, %243
  %253 = phi ptr [ %234, %243 ], [ %249, %246 ]
  %254 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 11
  %255 = load ptr, ptr %254, align 8, !tbaa !726
  %256 = icmp eq ptr %255, null
  br i1 %256, label %285, label %257, !prof !783

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !388
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %285, !prof !784

261:                                              ; preds = %257
  %262 = icmp ne i64 %57, -1
  %263 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !571
  %265 = icmp eq ptr %264, %229
  %266 = select i1 %265, i1 %262, i1 false
  br i1 %266, label %267, label %285, !prof !785

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 7
  %269 = load i64, ptr %268, align 8, !tbaa !490
  %270 = icmp slt i64 %64, %269
  br i1 %270, label %285, label %271, !prof !786

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 8
  %273 = load i64, ptr %272, align 8, !tbaa !491
  %274 = icmp sgt i64 %67, %273
  br i1 %274, label %285, label %275, !prof !787

275:                                              ; preds = %271
  %276 = trunc i64 %57 to i32
  %277 = sub nsw i64 %64, %269
  %278 = trunc i64 %277 to i32
  %279 = tail call fastcc zeroext i8 @all_positions_needed_p(ptr noundef nonnull %253, i32 noundef %278, i32 noundef %276) #20, !range !327
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %285, label %281, !prof !788

281:                                              ; preds = %275
  %282 = load ptr, ptr %226, align 8, !tbaa !360
  %283 = tail call fastcc zeroext i8 @replace_read(ptr noundef nonnull %253, ptr noundef nonnull %232, ptr noundef nonnull %59, ptr noundef %14, ptr noundef nonnull %0, ptr noundef %282) #20, !range !327
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %315, !prof !789

285:                                              ; preds = %281, %275, %271, %267, %261, %257, %252
  %286 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 6
  %287 = load i32, ptr %286, align 8, !tbaa !384
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %310, !prof !790

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !710
  %292 = load i32, ptr %291, align 8
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 255
  %295 = getelementptr inbounds %struct.store_info, ptr %253, i64 0, i32 5
  %296 = load ptr, ptr %295, align 8, !tbaa !728
  %297 = tail call i32 @canon_true_dependence(ptr noundef nonnull %291, i32 noundef %294, ptr noundef %296, ptr noundef nonnull %7, ptr noundef %130, ptr noundef nonnull @rtx_varies_p) #21
  %298 = and i32 %297, 255
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %310, label %300, !prof !791

300:                                              ; preds = %289
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %302 = icmp eq ptr %301, null
  br i1 %302, label %304, label %303, !prof !792

303:                                              ; preds = %300
  tail call fastcc void @dump_insn_info(ptr noundef nonnull %232) #20
  br label %304

304:                                              ; preds = %303, %300
  %305 = icmp eq ptr %231, null
  %306 = getelementptr inbounds %struct.insn_info, ptr %232, i64 0, i32 9
  %307 = load ptr, ptr %306, align 8, !tbaa !574
  %308 = getelementptr inbounds %struct.insn_info, ptr %231, i64 0, i32 9
  %309 = select i1 %305, ptr @active_local_stores, ptr %308, !prof !793
  store ptr %307, ptr %309, align 8, !tbaa !328
  br label %310

310:                                              ; preds = %304, %285, %289
  %311 = phi ptr [ %232, %289 ], [ %232, %285 ], [ %231, %304 ]
  %312 = getelementptr inbounds %struct.insn_info, ptr %232, i64 0, i32 9
  %313 = load ptr, ptr %312, align 8, !tbaa !574
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %230, !prof !794, !llvm.loop !795

315:                                              ; preds = %125, %310, %281, %214, %181, %95, %225, %142, %34, %2, %9, %45, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @canon_address(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !796 !PGOFuncName !797 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !798
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !354
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !810

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !811
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %5 ]
  %16 = tail call i32 %6(i8 noundef zeroext %15) #21
  %17 = load ptr, ptr %7, align 8, !tbaa !354
  %18 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20, !prof !812

20:                                               ; preds = %14
  %21 = load ptr, ptr %8, align 8, !tbaa !354
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !740
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %20 ]
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.32, i32 noundef %27) #20
  %32 = load ptr, ptr @clear_alias_sets, align 8, !tbaa !328
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ %18, %26 ]
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %34, i32 noundef %27) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc ptr @clear_alias_set_lookup(i32 noundef %27) #20
  %39 = getelementptr inbounds %struct.clear_alias_mode_holder, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !335
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = zext i32 %40 to i64
  %50 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !328
  %52 = zext nneg i32 %43 to i64
  %53 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !328
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.33, i32 noundef %27, ptr noundef %51, ptr noundef %54) #20
  br label %56

56:                                               ; preds = %48, %45
  %57 = load ptr, ptr @disqualified_clear_alias_sets, align 8, !tbaa !328
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %57, i32 noundef %27) #21
  br label %164

59:                                               ; preds = %37
  store i32 %27, ptr %1, align 4, !tbaa !341
  %60 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
  %61 = getelementptr inbounds %struct.group_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !546
  store i32 %62, ptr %2, align 4, !tbaa !341
  br label %164

63:                                               ; preds = %33, %14
  store i32 0, ptr %1, align 4, !tbaa !341
  %64 = tail call ptr @cselib_lookup(ptr noundef %17, i32 noundef %16, i32 noundef 1) #21
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67, !prof !812

67:                                               ; preds = %63
  %68 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 7, i64 1, ptr nonnull %65)
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @print_inline_rtx(ptr noundef %69, ptr noundef %17, i32 noundef 0) #21
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %71 = tail call i32 @fputc(i32 10, ptr %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %146
  %74 = phi ptr [ %123, %146 ], [ null, %72 ]
  %75 = phi i1 [ false, %146 ], [ true, %72 ]
  br i1 %75, label %80, label %76, !prof !813

76:                                               ; preds = %73
  %77 = load ptr, ptr @scratch, align 8, !tbaa !328
  %78 = tail call ptr @cselib_expand_value_rtx(ptr noundef %17, ptr noundef %77, i32 noundef 5) #21
  %79 = icmp eq ptr %78, null
  br i1 %79, label %147, label %80, !prof !814

80:                                               ; preds = %73, %76
  %81 = phi ptr [ %78, %76 ], [ %17, %73 ]
  %82 = tail call ptr @canon_rtx(ptr noundef %81) #21
  store i64 0, ptr %3, align 8, !tbaa !670
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %84 = icmp eq ptr %83, null
  br i1 %84, label %98, label %85, !prof !815

85:                                               ; preds = %80
  br i1 %75, label %92, label %86

86:                                               ; preds = %85
  %87 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 33, i64 1, ptr nonnull %83)
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @print_inline_rtx(ptr noundef %88, ptr noundef %81, i32 noundef 0) #21
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %90 = tail call i32 @fputc(i32 10, ptr %89)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !328
  br label %92

92:                                               ; preds = %86, %85
  %93 = phi ptr [ %91, %86 ], [ %83, %85 ]
  %94 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 29, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @print_inline_rtx(ptr noundef %95, ptr noundef %82, i32 noundef 0) #21
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %97 = tail call i32 @fputc(i32 10, ptr %96)
  br label %98

98:                                               ; preds = %92, %80
  %99 = load i32, ptr %82, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 35
  br i1 %101, label %102, label %106, !prof !816

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !354
  %105 = load i32, ptr %104, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %105, %102 ], [ %99, %98 ]
  %108 = phi ptr [ %104, %102 ], [ %82, %98 ]
  %109 = and i32 %107, 65535
  %110 = icmp eq i32 %109, 49
  br i1 %110, label %111, label %122, !prof !817

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !354
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 30
  br i1 %116, label %117, label %122, !prof !818

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %119 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !354
  store i64 %120, ptr %3, align 8, !tbaa !670
  %121 = load ptr, ptr %118, align 8, !tbaa !354
  br label %122

122:                                              ; preds = %117, %111, %106
  %123 = phi ptr [ %121, %117 ], [ %108, %111 ], [ %108, %106 ]
  %124 = load ptr, ptr %8, align 8, !tbaa !354
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126, !prof !819

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.mem_attrs, ptr %124, i64 0, i32 5
  %128 = load i8, ptr %127, align 8, !tbaa !811
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %146, !prof !820

130:                                              ; preds = %122, %126
  %131 = tail call fastcc zeroext i8 @const_or_frame_p(ptr noundef %123) #20, !range !327
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %146, label %133, !prof !821

133:                                              ; preds = %130
  %134 = tail call fastcc ptr @get_group_info(ptr noundef %123) #20
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137, !prof !822

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.group_info, ptr %134, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !546
  %140 = load i64, ptr %3, align 8, !tbaa !670
  %141 = trunc i64 %140 to i32
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %135, ptr noundef nonnull @.str.37, i32 noundef %139, i32 noundef %141) #20
  br label %143

143:                                              ; preds = %137, %133
  store ptr null, ptr %4, align 8, !tbaa !328
  %144 = getelementptr inbounds %struct.group_info, ptr %134, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !546
  store i32 %145, ptr %2, align 4, !tbaa !341
  br label %164

146:                                              ; preds = %126, %130
  br i1 %75, label %73, label %147, !prof !823, !llvm.loop !824

147:                                              ; preds = %76, %146
  %148 = phi ptr [ %74, %76 ], [ %123, %146 ]
  %149 = tail call ptr @cselib_lookup(ptr noundef %148, i32 noundef %16, i32 noundef 1) #21
  store ptr %149, ptr %4, align 8, !tbaa !328
  store i32 -1, ptr %2, align 4, !tbaa !341
  %150 = icmp eq ptr %149, null
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %152 = icmp eq ptr %151, null
  br i1 %150, label %153, label %156, !prof !825

153:                                              ; preds = %147
  br i1 %152, label %164, label %154, !prof !826

154:                                              ; preds = %153
  %155 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 40, i64 1, ptr nonnull %151)
  br label %164

156:                                              ; preds = %147
  br i1 %152, label %164, label %157, !prof !827

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.cselib_val_struct, ptr %149, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !828
  %160 = load i32, ptr %149, align 8, !tbaa !830
  %161 = load i64, ptr %3, align 8, !tbaa !670
  %162 = trunc i64 %161 to i32
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %151, ptr noundef nonnull @.str.39, i32 noundef %159, i32 noundef %160, i32 noundef %162) #20
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
define internal fastcc zeroext i8 @all_positions_needed_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !831 !PGOFuncName !832 {
  %4 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 1, !tbaa !415
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7, !prof !833

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
  %15 = load ptr, ptr %9, align 8, !tbaa !354
  %16 = add i32 %12, 1
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %12) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %28, !llvm.loop !834

19:                                               ; preds = %3
  %20 = tail call fastcc i64 @lowpart_bitmask(i32 noundef %2) #20
  %21 = zext nneg i32 %1 to i64
  %22 = shl i64 %20, %21
  %23 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %24 = load i64, ptr %23, align 8, !tbaa !354
  %25 = and i64 %24, %22
  %26 = icmp eq i64 %25, %22
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %14, %11, %19
  %29 = phi i8 [ %27, %19 ], [ 1, %11 ], [ 0, %14 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @replace_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !835 !PGOFuncName !836 {
  %7 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !710
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !749
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = tail call zeroext i8 @dbg_cnt(i32 noundef 10) #21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %110, label %19, !prof !837

19:                                               ; preds = %6
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22, !prof !838

22:                                               ; preds = %19
  %23 = zext nneg i32 %16 to i64
  %24 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !328
  %26 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !412
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !354
  %30 = zext nneg i32 %11 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !328
  %33 = getelementptr inbounds %struct.insn_info, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !412
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !354
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.40, ptr noundef %25, i32 noundef %29, ptr noundef %32, i32 noundef %36) #20
  br label %38

38:                                               ; preds = %22, %19
  tail call void @start_sequence() #21
  %39 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !412
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !354
  %43 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !750
  %45 = sext i32 %44 to i64
  %46 = tail call fastcc ptr @get_stored_val(ptr noundef nonnull %0, i32 noundef %16, i64 noundef %45, ptr noundef %42, i8 noundef zeroext 0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53, !prof !837

48:                                               ; preds = %38
  tail call void @end_sequence() #21
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %50 = icmp eq ptr %49, null
  br i1 %50, label %110, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 43, i64 1, ptr nonnull %49)
  br label %110

53:                                               ; preds = %38
  %54 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef nonnull %46) #21
  %55 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %77, label %57, !prof !837

57:                                               ; preds = %53
  %58 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %55, %57 ], [ %64, %59 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !354
  tail call void @note_stores(ptr noundef %62, ptr noundef nonnull @look_for_hardregs, ptr noundef %58) #21
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !354
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %59, !prof !839, !llvm.loop !840

66:                                               ; preds = %59
  tail call void @bitmap_and_into(ptr noundef %58, ptr noundef %5) #21
  %67 = load ptr, ptr %58, align 8, !tbaa !484
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69, !prof !841

69:                                               ; preds = %66
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !393

72:                                               ; preds = %69
  %73 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 63, i64 1, ptr nonnull %70)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @df_print_regset(ptr noundef %74, ptr noundef nonnull %58) #21
  br label %76

75:                                               ; preds = %66
  tail call void @bitmap_obstack_free(ptr noundef nonnull %58) #21
  br label %77

76:                                               ; preds = %69, %72
  tail call void @bitmap_obstack_free(ptr noundef nonnull %58) #21
  br label %110

77:                                               ; preds = %75, %53
  %78 = load ptr, ptr %39, align 8, !tbaa !412
  %79 = tail call zeroext i8 @validate_change(ptr noundef %78, ptr noundef %4, ptr noundef %54, i8 noundef zeroext 0) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %102, label %81, !prof !842

81:                                               ; preds = %77
  %82 = load ptr, ptr @deferred_change_pool, align 8, !tbaa !328
  %83 = tail call ptr @pool_alloc(ptr noundef %82) #21
  %84 = getelementptr inbounds %struct.insn_info, ptr %1, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !412
  %86 = tail call ptr @emit_insn_before(ptr noundef %55, ptr noundef %85) #21
  %87 = load ptr, ptr %12, align 8, !tbaa !749
  store ptr %87, ptr %4, align 8, !tbaa !328
  %88 = load ptr, ptr @deferred_change_list, align 8, !tbaa !328
  %89 = getelementptr inbounds %struct.deferred_change, ptr %83, i64 0, i32 2
  store ptr %88, ptr %89, align 8, !tbaa !398
  store ptr %83, ptr @deferred_change_list, align 8, !tbaa !328
  store ptr %4, ptr %83, align 8, !tbaa !401
  %90 = getelementptr inbounds %struct.deferred_change, ptr %83, i64 0, i32 1
  store ptr %54, ptr %90, align 8, !tbaa !400
  %91 = getelementptr inbounds %struct.read_info, ptr %2, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !639
  %93 = getelementptr inbounds %struct.insn_info, ptr %3, i64 0, i32 7
  store ptr %92, ptr %93, align 8, !tbaa !508
  %94 = load ptr, ptr @read_info_pool, align 8, !tbaa !328
  tail call void @pool_free(ptr noundef %94, ptr noundef %2) #21
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97, !prof !843

97:                                               ; preds = %81
  %98 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 33, i64 1, ptr nonnull %95)
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @print_simple_rtl(ptr noundef %99, ptr noundef %54) #21
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  br label %110

102:                                              ; preds = %77
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105, !prof !465

105:                                              ; preds = %102
  %106 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 34, i64 1, ptr nonnull %103)
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !328
  tail call void @print_simple_rtl(ptr noundef %107, ptr noundef %54) #21
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !328
  %109 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 31, i64 1, ptr %108)
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
define internal fastcc ptr @clear_alias_set_lookup(i32 noundef %0) unnamed_addr #0 !prof !326 !PGOFuncName !844 {
  %2 = alloca %struct.clear_alias_mode_holder, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i32 %0, ptr %2, align 4, !tbaa !332
  %3 = load ptr, ptr @clear_alias_mode_table, align 8, !tbaa !328
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #21
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 636, ptr noundef nonnull @.str.2) #21
  %8 = load ptr, ptr %4, align 8, !tbaa !328
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
define internal fastcc zeroext i8 @const_or_frame_p(ptr noundef readonly %0) unnamed_addr #7 !prof !845 !PGOFuncName !846 {
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
  ], !prof !847

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !328
  %6 = icmp eq ptr %5, %0
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %21, label %10, !prof !848

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !328
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %16, !prof !849

13:                                               ; preds = %10
  %14 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !354
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21, !prof !850

16:                                               ; preds = %13, %10
  %17 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !328
  %18 = icmp eq ptr %17, %0
  %19 = zext i1 %18 to i8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %16, %4, %13, %1, %1, %1, %1, %1, %1, %20
  %22 = phi i8 [ 0, %20 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %13 ], [ 1, %4 ], [ %19, %16 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @lowpart_bitmask(i32 noundef %0) unnamed_addr #9 !prof !851 !PGOFuncName !852 {
  %2 = sub nsw i32 64, %0
  %3 = zext nneg i32 %2 to i64
  %4 = lshr i64 -1, %3
  ret i64 %4
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_stored_val(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !853 !PGOFuncName !854 {
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !710
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %27, label %12, !prof !855

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !490
  %15 = sub nsw i64 %2, %14
  %16 = trunc i64 %15 to i32
  %17 = zext nneg i32 %1 to i64
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %61, label %19, !prof !856

19:                                               ; preds = %12
  %20 = shl nsw i32 %16, 3
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %22 = load i8, ptr %21, align 1, !tbaa !354
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, %16
  %25 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %3) #21
  %26 = tail call fastcc ptr @find_shift_sequence(i32 noundef %24, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i8 noundef zeroext %25, i8 noundef zeroext %4) #20
  br label %82

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !726
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
  %38 = load ptr, ptr %28, align 8, !tbaa !726
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !328
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %35, ptr noundef %38) #21
  br label %82

43:                                               ; preds = %37
  %44 = zext i32 %35 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !354
  %47 = icmp ugt i8 %46, 8
  br i1 %47, label %95, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !354
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
  %63 = load ptr, ptr %62, align 8, !tbaa !714
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65, !prof !857

65:                                               ; preds = %61
  %66 = icmp eq i8 %4, 0
  br i1 %66, label %67, label %74, !prof !858

67:                                               ; preds = %65
  %68 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %69 = load i8, ptr %68, align 1, !tbaa !354
  %70 = zext nneg i32 %10 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !354
  %73 = icmp eq i8 %69, %72
  br i1 %73, label %77, label %74, !prof !859

74:                                               ; preds = %67, %65
  %75 = tail call ptr @copy_rtx(ptr noundef nonnull %63) #21
  %76 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %10, ptr noundef %75) #21
  br label %82

77:                                               ; preds = %67, %61
  %78 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 11
  %79 = load ptr, ptr %78, align 8, !tbaa !726
  %80 = tail call ptr @copy_rtx(ptr noundef %79) #21
  %81 = tail call ptr @extract_low_bits(i32 noundef %1, i32 noundef %10, ptr noundef %80) #21
  br label %82

82:                                               ; preds = %41, %48, %77, %74, %19
  %83 = phi ptr [ %26, %19 ], [ %42, %41 ], [ %60, %48 ], [ %76, %74 ], [ %81, %77 ]
  %84 = icmp ne i8 %4, 0
  %85 = icmp ne ptr %83, null
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %95, !prof !860

87:                                               ; preds = %82
  %88 = load i32, ptr %83, align 8
  %89 = and i32 %88, 65535
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !341
  %93 = icmp eq i32 %92, 9
  %94 = select i1 %93, ptr %83, ptr null, !prof !721
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
define internal void @look_for_hardregs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !861 !PGOFuncName !862 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %26, !prof !863

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #20
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %10, label %26, !prof !864

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  %12 = lshr i32 %4, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !354
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18, !prof !865

18:                                               ; preds = %10
  %19 = zext i8 %16 to i32
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32 [ %22, %20 ], [ %19, %18 ]
  %22 = add nsw i32 %21, -1
  %23 = add nsw i32 %22, %8
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %23) #21
  %25 = icmp ugt i32 %21, 1
  br i1 %25, label %20, label %26, !prof !865, !llvm.loop !866

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
define internal fastcc ptr @find_shift_sequence(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %7 = getelementptr inbounds %struct.store_info, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !710
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = shl nsw i32 %0, 3
  %13 = tail call i32 @smallest_mode_for_size(i32 noundef %12, i32 noundef 2) #21
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !354
  %17 = icmp ult i8 %16, 5
  br i1 %17, label %18, label %124, !prof !869

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.store_info, ptr %1, i64 0, i32 12
  %20 = sext i32 %3 to i64
  %21 = icmp ne i8 %5, 0
  %22 = getelementptr inbounds %struct.store_info, ptr %1, i64 0, i32 11
  br label %23

23:                                               ; preds = %18, %110
  %24 = phi i64 [ %14, %18 ], [ %114, %110 ]
  %25 = phi i32 [ %13, %18 ], [ %113, %110 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !714
  %27 = icmp eq ptr %26, null
  br i1 %27, label %66, label %28, !prof !870

28:                                               ; preds = %23
  %29 = tail call i32 @subreg_lowpart_offset(i32 noundef %25, i32 noundef %11) #21
  %30 = load ptr, ptr %19, align 8, !tbaa !714
  %31 = tail call ptr @simplify_subreg(i32 noundef %25, ptr noundef %30, i32 noundef %11, i32 noundef %29) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %31, align 8
  %35 = and i32 %34, 65535
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !341
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
  %49 = load i32, ptr %48, align 4, !tbaa !341
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
  %60 = load i32, ptr %59, align 4, !tbaa !341
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = tail call i32 @rtx_cost(ptr noundef nonnull %53, i32 noundef 23, i8 noundef zeroext %4) #21
  %64 = icmp slt i32 %63, 5
  %65 = or i1 %64, %21
  br i1 %65, label %122, label %67, !prof !871

66:                                               ; preds = %40, %44, %55, %51, %33, %28, %23
  br i1 %21, label %124, label %67, !prof !872

67:                                               ; preds = %62, %66
  %68 = load ptr, ptr %22, align 8, !tbaa !726
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !341
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %78, label %75, !prof !872

75:                                               ; preds = %67
  %76 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %25, i32 noundef %11) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %110, label %78, !prof !872

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
  br i1 %85, label %110, label %86, !prof !873

86:                                               ; preds = %78, %98
  %87 = phi i32 [ %99, %98 ], [ 0, %78 ]
  %88 = phi ptr [ %101, %98 ], [ %82, %78 ]
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -7
  %92 = icmp ult i32 %91, 4
  br i1 %92, label %93, label %98, !prof !874

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !354
  %96 = tail call i32 @insn_rtx_cost(ptr noundef %95, i8 noundef zeroext %4) #21
  %97 = add nsw i32 %96, %87
  br label %98

98:                                               ; preds = %86, %93
  %99 = phi i32 [ %97, %93 ], [ %87, %86 ]
  %100 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 2
  %101 = load ptr, ptr %100, align 8, !tbaa !354
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %86, !prof !875, !llvm.loop !876

103:                                              ; preds = %98
  %104 = icmp sgt i32 %99, 4
  br i1 %104, label %110, label %105, !prof !872

105:                                              ; preds = %103
  %106 = load ptr, ptr %22, align 8, !tbaa !726
  %107 = tail call ptr @copy_rtx(ptr noundef %106) #21
  %108 = tail call ptr @extract_low_bits(i32 noundef %25, i32 noundef %11, ptr noundef %107) #21
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %118, !prof !872

110:                                              ; preds = %75, %78, %103, %105
  %111 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %24
  %112 = load i8, ptr %111, align 1, !tbaa !354
  %113 = zext i8 %112 to i32
  %114 = zext i8 %112 to i64
  %115 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !354
  %117 = icmp ult i8 %116, 5
  br i1 %117, label %23, label %124, !prof !877, !llvm.loop !878

118:                                              ; preds = %105
  %119 = tail call ptr @emit_move_insn(ptr noundef %79, ptr noundef nonnull %108) #21
  %120 = tail call ptr @emit_insn(ptr noundef %82) #21
  %121 = tail call ptr @extract_low_bits(i32 noundef %2, i32 noundef %25, ptr noundef %79) #21
  br label %124

122:                                              ; preds = %62
  %123 = select i1 %64, ptr %53, ptr null, !prof !859
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !879 !PGOFuncName !880 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !354
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
define internal fastcc void @clear_rhs_from_active_local_stores() unnamed_addr #10 !prof !881 !PGOFuncName !882 {
  %1 = load ptr, ptr @active_local_stores, align 8, !tbaa !328
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3, !prof !883

3:                                                ; preds = %0, %12
  %4 = phi ptr [ %15, %12 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.insn_info, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %5, %3 ], [ %11, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !328
  %9 = load i8, ptr %8, align 8, !tbaa !380
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 10
  br i1 %10, label %6, label %12, !prof !884, !llvm.loop !885

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 11
  %14 = getelementptr inbounds %struct.insn_info, ptr %4, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %14, align 8, !tbaa !328
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3, !prof !886, !llvm.loop !887

17:                                               ; preds = %12, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_usage_bits(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !888 !PGOFuncName !889 {
  %4 = icmp sgt i64 %1, -65536
  br i1 %4, label %5, label %44, !prof !687

5:                                                ; preds = %3
  %6 = add nsw i64 %2, %1
  %7 = icmp slt i64 %6, 65536
  %8 = icmp sgt i64 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %44, !prof !890

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %10, %41
  %16 = phi i64 [ %1, %10 ], [ %42, %41 ]
  %17 = icmp slt i64 %16, 0
  %18 = trunc i64 %16 to i32
  %19 = sub i32 0, %18
  %20 = select i1 %17, ptr %11, ptr %13, !prof !891
  %21 = select i1 %17, ptr %12, ptr %14, !prof !891
  %22 = select i1 %17, i32 %19, i32 %18, !prof !891
  %23 = load ptr, ptr %21, align 8, !tbaa !328
  %24 = load ptr, ptr %20, align 8, !tbaa !328
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %22) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !892

27:                                               ; preds = %15
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %22) #21
  br label %41

29:                                               ; preds = %15
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %22) #21
  br i1 %17, label %31, label %36, !prof !893

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !432
  %34 = icmp slt i32 %33, %19
  br i1 %34, label %35, label %41, !prof !894

35:                                               ; preds = %31
  store i32 %19, ptr %32, align 8, !tbaa !432
  br label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 14
  %38 = load i32, ptr %37, align 4, !tbaa !434
  %39 = icmp slt i32 %38, %18
  br i1 %39, label %40, label %41, !prof !895

40:                                               ; preds = %36
  store i32 %18, ptr %37, align 4, !tbaa !434
  br label %41

41:                                               ; preds = %35, %31, %40, %36, %27
  %42 = add nsw i64 %16, 1
  %43 = icmp slt i64 %42, %6
  br i1 %43, label %15, label %44, !prof !896, !llvm.loop !897

44:                                               ; preds = %41, %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @find_base_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_all_positions_unneeded(ptr nocapture noundef %0) unnamed_addr #0 !prof !326 !PGOFuncName !898 {
  %2 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !415
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !491
  %8 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !490
  %10 = sub nsw i64 %7, %9
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !354
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %17, i32 noundef %16) #21
  %19 = add nuw nsw i32 %16, 1
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %21, label %15, !llvm.loop !899

21:                                               ; preds = %15, %5
  %22 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9, i32 0, i32 1
  store i32 %11, ptr %22, align 8, !tbaa !354
  br label %25

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  store i64 0, ptr %24, align 8, !tbaa !354
  br label %25

25:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_position_unneeded(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !900 !PGOFuncName !901 {
  %3 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !tbaa !415
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !902

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !354
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %1) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9, i32 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !354
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !354
  %15 = load ptr, ptr %7, align 8, !tbaa !354
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %1) #21
  br label %24

17:                                               ; preds = %2
  %18 = zext nneg i32 %1 to i64
  %19 = shl nuw i64 1, %18
  %20 = xor i64 %19, -1
  %21 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !354
  %23 = and i64 %22, %20
  store i64 %23, ptr %21, align 8, !tbaa !354
  br label %24

24:                                               ; preds = %6, %11, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @any_positions_needed_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !903 !PGOFuncName !904 {
  %2 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !415
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5, !prof !709

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9, i32 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !354
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !491
  %11 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !490
  %13 = sub nsw i64 %10, %12
  %14 = icmp sgt i64 %13, %8
  br label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.store_info, ptr %0, i64 0, i32 9
  %17 = load i64, ptr %16, align 8, !tbaa !354
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ %14, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i8
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !630 !PGOFuncName !905 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !327
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !906

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.55, i32 noundef 645, ptr noundef nonnull @.str.2) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !374
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !907 !PGOFuncName !908 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_for_inc_dec(ptr noundef %0) unnamed_addr #0 !prof !909 !PGOFuncName !910 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !328
  %3 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 2, ptr noundef null) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !911

5:                                                ; preds = %1
  %6 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @replace_inc_dec_mem, ptr noundef %0) #21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @replace_inc_dec_mem(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !326 !PGOFuncName !912 {
  %3 = alloca %struct.insn_size, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !328
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
  %15 = load i8, ptr %14, align 1, !tbaa !354
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %3, align 8, !tbaa !913
  %17 = getelementptr inbounds %struct.insn_size, ptr %3, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !915
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = call i32 @for_each_rtx(ptr noundef nonnull %18, ptr noundef nonnull @replace_inc_dec, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %20

20:                                               ; preds = %2, %6, %10
  %21 = phi i32 [ -1, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @replace_inc_dec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !326 !PGOFuncName !916 {
  %3 = load ptr, ptr %0, align 8, !tbaa !328
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
  %8 = load ptr, ptr %7, align 8, !tbaa !354
  %9 = load i32, ptr %1, align 8, !tbaa !913
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
  %22 = load ptr, ptr %21, align 8, !tbaa !354
  %23 = load i32, ptr %1, align 8, !tbaa !913
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
  %37 = load ptr, ptr %36, align 8, !tbaa !354
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !354
  %40 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %39, ptr noundef %37) #21
  br label %41

41:                                               ; preds = %6, %20, %35
  %42 = phi ptr [ %40, %35 ], [ %34, %20 ], [ %19, %6 ]
  %43 = getelementptr inbounds %struct.insn_size, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !915
  %45 = tail call ptr @emit_insn_before(ptr noundef %42, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %41, %2
  %47 = phi i32 [ 0, %2 ], [ -1, %41 ]
  ret i32 %47
}

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_group_info_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !917 !PGOFuncName !918 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !919

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !555
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !920

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_group_info_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !328
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !328
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !921 !PGOFuncName !922 {
  %4 = load ptr, ptr %1, align 8, !tbaa !484
  store ptr %4, ptr %0, align 8, !tbaa !923
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !925
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !926

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !923
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !927
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !929

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !930
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !670
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !931
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !341
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !932 !PGOFuncName !933 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !931
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !934

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !935

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !341
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !936, !llvm.loop !937

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !341
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !341
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !930
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !923
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !930
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !938

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !670
  store i64 %35, ptr %3, align 8, !tbaa !931
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !939

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !341
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !341
  %40 = load i32, ptr %23, align 8, !tbaa !930
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !930
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !940, !llvm.loop !941

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !942
  store ptr %44, ptr %0, align 8, !tbaa !923
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !943

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !927
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !341
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !931
  store i32 %16, ptr %1, align 4, !tbaa !341
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !944 !PGOFuncName !945 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !931
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !931
  %6 = load i32, ptr %1, align 4, !tbaa !341
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !341
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step3_exit_block_scan(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !450 !PGOFuncName !946 {
  %2 = alloca ptr, align 8
  %3 = load i8, ptr @stores_off_frame_dead_at_return, align 1, !tbaa !354
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %33, label %5, !prof !947

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %6 = load ptr, ptr @rtx_group_vec, align 8
  %7 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #20, !range !424
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9, !prof !948

9:                                                ; preds = %5, %27
  %10 = phi ptr [ %28, %27 ], [ %6, %5 ]
  %11 = phi i32 [ %29, %27 ], [ 0, %5 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !328
  %13 = getelementptr inbounds %struct.group_info, ptr %12, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !436
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16, !prof !949

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.group_info, ptr %12, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !390
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20, !prof !950

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bb_info, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !453
  %23 = getelementptr inbounds %struct.group_info, ptr %12, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !442
  %25 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef %24) #21
  %26 = load ptr, ptr @rtx_group_vec, align 8
  br label %27

27:                                               ; preds = %9, %16, %20
  %28 = phi ptr [ %10, %9 ], [ %10, %16 ], [ %26, %20 ]
  %29 = add i32 %11, 1
  %30 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %28, i32 noundef %29, ptr noundef nonnull %2) #20, !range !424
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %9, !prof !951, !llvm.loop !952

32:                                               ; preds = %27, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dse_step3_scan(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !953 !PGOFuncName !954 {
  %3 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !357
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !328
  %9 = icmp eq i8 %0, 0
  br i1 %9, label %12, label %10, !prof !955

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !580
  br label %16

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @find_insn_before_first_wild_read(ptr noundef %8) #20
  %14 = load ptr, ptr %8, align 8, !tbaa !580
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %24, !prof !956

16:                                               ; preds = %10, %12
  %17 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !472
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !957

21:                                               ; preds = %16
  tail call void @bitmap_clear(ptr noundef nonnull %19) #21
  br label %29

22:                                               ; preds = %16
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %23, ptr %18, align 8, !tbaa !472
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !472
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !958

28:                                               ; preds = %24
  tail call void @bitmap_obstack_free(ptr noundef nonnull %26) #21
  store ptr null, ptr %25, align 8, !tbaa !472
  br label %29

29:                                               ; preds = %24, %28, %21, %22
  %30 = phi ptr [ %13, %24 ], [ %13, %28 ], [ %17, %21 ], [ %17, %22 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %62, label %32, !prof !479

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 2
  %34 = getelementptr inbounds %struct.bb_info, ptr %8, i64 0, i32 3
  br label %35

35:                                               ; preds = %32, %58
  %36 = phi ptr [ %30, %32 ], [ %60, %58 ]
  %37 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !412
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40, !prof !959

40:                                               ; preds = %35
  %41 = load i32, ptr %38, align 8
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -7
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %58, !prof !960

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !504
  %48 = load ptr, ptr %33, align 8, !tbaa !453
  %49 = load ptr, ptr %34, align 8, !tbaa !472
  br i1 %9, label %55, label %50, !prof !961

50:                                               ; preds = %45
  tail call fastcc void @scan_stores_spill(ptr noundef %47, ptr noundef %48, ptr noundef %49) #20
  %51 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !508
  %53 = load ptr, ptr %33, align 8, !tbaa !453
  %54 = load ptr, ptr %34, align 8, !tbaa !472
  tail call fastcc void @scan_reads_spill(ptr noundef %52, ptr noundef %53, ptr noundef %54) #20
  br label %58

55:                                               ; preds = %45
  tail call fastcc void @scan_stores_nospill(ptr noundef %47, ptr noundef %48, ptr noundef %49) #20
  %56 = load ptr, ptr %33, align 8, !tbaa !453
  %57 = load ptr, ptr %34, align 8, !tbaa !472
  tail call fastcc void @scan_reads_nospill(ptr noundef nonnull %36, ptr noundef %56, ptr noundef %57) #20
  br label %58

58:                                               ; preds = %40, %50, %55, %35
  %59 = getelementptr inbounds %struct.insn_info, ptr %36, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !581
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %35, !prof !962, !llvm.loop !963

62:                                               ; preds = %58, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reachable_blocks(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !964 !PGOFuncName !965 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !357
  %7 = lshr i32 %6, 6
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !670
  %11 = and i32 %6, 63
  %12 = zext nneg i32 %11 to i64
  %13 = shl nuw i64 1, %12
  %14 = and i64 %13, %10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %28, label %16, !prof !966

16:                                               ; preds = %2
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %0, i32 noundef %6) #20
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !967
  %18 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !968
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %3) #20, !range !327
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21, !prof !969

21:                                               ; preds = %16, %21
  %22 = load ptr, ptr %3, align 8, !tbaa !328
  %23 = load ptr, ptr %22, align 8, !tbaa !970
  tail call fastcc void @mark_reachable_blocks(ptr noundef %0, ptr noundef %23) #20
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %24 = load i32, ptr %4, align 8
  %25 = load ptr, ptr %18, align 8
  %26 = call fastcc zeroext i8 @ei_cond(i32 %24, ptr %25, ptr noundef nonnull %3) #20, !range !327
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %21, !prof !971, !llvm.loop !972

28:                                               ; preds = %21, %16, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #6 !prof !450 !PGOFuncName !973 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !974
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !976
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !977
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !978
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !979
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10, !prof !980

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !670
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !prof !981 !PGOFuncName !982 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !983
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %12, !prof !984

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !978
  %10 = load i32, ptr %7, align 4, !tbaa !974
  br label %18

11:                                               ; preds = %22
  store i32 %20, ptr %7, align 4, !tbaa !974
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i64 [ %28, %11 ], [ %4, %2 ]
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !976
  br i1 %15, label %30, label %38, !prof !984

18:                                               ; preds = %6, %22
  %19 = phi i32 [ %10, %6 ], [ %20, %22 ]
  %20 = add i32 %19, 1
  %21 = icmp ult i32 %20, %9
  br i1 %21, label %22, label %40, !prof !985

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %24 = shl i32 %20, 6
  store i32 %24, ptr %23, align 8, !tbaa !976
  %25 = load ptr, ptr %0, align 8, !tbaa !979
  %26 = zext i32 %20 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !670
  store i64 %28, ptr %3, align 8, !tbaa !983
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %18, label %11, !prof !986, !llvm.loop !987

30:                                               ; preds = %12, %30
  %31 = phi i32 [ %33, %30 ], [ %17, %12 ]
  %32 = phi i64 [ %34, %30 ], [ %13, %12 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !prof !988, !llvm.loop !989

37:                                               ; preds = %30
  store i32 %33, ptr %16, align 8, !tbaa !976
  store i64 %34, ptr %3, align 8, !tbaa !983
  br label %38

38:                                               ; preds = %12, %37
  %39 = phi i32 [ %33, %37 ], [ %17, %12 ]
  store i32 %39, ptr %1, align 4, !tbaa !341
  br label %41

40:                                               ; preds = %18
  store i32 %20, ptr %7, align 4, !tbaa !974
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !990 !PGOFuncName !991 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !983
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !983
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !976
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !976
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_insn_before_first_wild_read(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !953 !PGOFuncName !992 {
  %2 = load ptr, ptr %0, align 8, !tbaa !328
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4, !prof !993

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %11, %14 ], [ %2, %1 ]
  %6 = phi ptr [ %15, %14 ], [ null, %1 ]
  %7 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 1
  %8 = load i8, ptr %7, align 1, !tbaa !505
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.insn_info, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !328
  br i1 %9, label %14, label %12, !prof !994

12:                                               ; preds = %4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %20, label %14, !prof !995

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %11, %12 ], [ %6, %4 ]
  %16 = icmp eq ptr %11, null
  br i1 %16, label %17, label %4, !prof !996, !llvm.loop !997

17:                                               ; preds = %14
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %20, !prof !998

19:                                               ; preds = %1, %17
  br label %20

20:                                               ; preds = %12, %17, %19
  %21 = phi ptr [ %2, %19 ], [ %15, %17 ], [ null, %12 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stores_spill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !326 !PGOFuncName !999 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi ptr [ %0, %5 ], [ %23, %21 ]
  %9 = getelementptr inbounds %struct.store_info, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
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
  %23 = load ptr, ptr %22, align 8, !tbaa !648
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !1000

25:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_reads_spill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !326 !PGOFuncName !1001 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %0, %5 ], [ %24, %22 ]
  %9 = getelementptr inbounds %struct.read_info, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !655
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @clear_alias_group, align 8, !tbaa !328
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
  %24 = load ptr, ptr %23, align 8, !tbaa !639
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !1002

26:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_stores_nospill(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1003 !PGOFuncName !1004 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5, !prof !1005

5:                                                ; preds = %3, %34
  %6 = phi ptr [ %36, %34 ], [ %0, %3 ]
  %7 = load ptr, ptr @rtx_group_vec, align 8
  %8 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !388
  %10 = tail call fastcc ptr @VEC_group_info_t_base_index(ptr noundef %7, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.group_info, ptr %10, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !436
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %14, !prof !1006

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !490
  %17 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !491
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %34, !prof !1007

20:                                               ; preds = %14
  %21 = icmp eq ptr %2, null
  br label %22

22:                                               ; preds = %20, %30
  %23 = phi i64 [ %31, %30 ], [ %16, %20 ]
  %24 = tail call fastcc i32 @get_bitmap_index(ptr noundef %10, i64 noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !1008

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %24) #21
  br i1 %21, label %30, label %28, !prof !1009

28:                                               ; preds = %26
  %29 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %24) #21
  br label %30

30:                                               ; preds = %26, %28, %22
  %31 = add nsw i64 %23, 1
  %32 = load i64, ptr %17, align 8, !tbaa !491
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %22, label %34, !prof !1010, !llvm.loop !1011

34:                                               ; preds = %30, %14, %5
  %35 = getelementptr inbounds %struct.store_info, ptr %6, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !648
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5, !prof !1012, !llvm.loop !1013

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_reads_nospill(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1014 !PGOFuncName !1015 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %7 = getelementptr inbounds %struct.insn_info, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 2, !tbaa !595
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %41, label %10, !prof !1016

10:                                               ; preds = %3
  %11 = load ptr, ptr @rtx_group_vec, align 8
  %12 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #20, !range !424
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14, !prof !1017

14:                                               ; preds = %10, %36
  %15 = phi ptr [ %37, %36 ], [ %11, %10 ]
  %16 = phi i32 [ %38, %36 ], [ 0, %10 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !328
  %18 = getelementptr inbounds %struct.group_info, ptr %17, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !436
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %36, label %21, !prof !1018

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.group_info, ptr %17, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !390
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25, !prof !1019

25:                                               ; preds = %21
  %26 = icmp eq ptr %2, null
  br i1 %26, label %31, label %27, !prof !1020

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.group_info, ptr %17, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !442
  %30 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %2, ptr noundef %29) #21
  br label %31

31:                                               ; preds = %27, %25
  %32 = getelementptr inbounds %struct.group_info, ptr %17, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !442
  %34 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %33) #21
  %35 = load ptr, ptr @rtx_group_vec, align 8
  br label %36

36:                                               ; preds = %14, %21, %31
  %37 = phi ptr [ %15, %14 ], [ %15, %21 ], [ %35, %31 ]
  %38 = add nuw nsw i32 %16, 1
  %39 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %37, i32 noundef %38, ptr noundef nonnull %4) #20, !range !424
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %14, !prof !1021, !llvm.loop !1022

41:                                               ; preds = %36, %10, %3
  %42 = icmp eq ptr %6, null
  br i1 %42, label %118, label %43, !prof !1023

43:                                               ; preds = %41
  %44 = load ptr, ptr @rtx_group_vec, align 8
  br label %45

45:                                               ; preds = %43, %113
  %46 = phi ptr [ %44, %43 ], [ %114, %113 ]
  %47 = phi ptr [ %6, %43 ], [ %116, %113 ]
  %48 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %4) #20, !range !424
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %113, label %50, !prof !1024

50:                                               ; preds = %45
  %51 = icmp eq ptr %2, null
  %52 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 4
  br label %53

53:                                               ; preds = %50, %108
  %54 = phi i32 [ 0, %50 ], [ %109, %108 ]
  %55 = load ptr, ptr %4, align 8, !tbaa !328
  %56 = getelementptr inbounds %struct.group_info, ptr %55, i64 0, i32 2
  %57 = load i8, ptr %56, align 4, !tbaa !436
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %108, label %59, !prof !1025

59:                                               ; preds = %53
  %60 = load i32, ptr %47, align 8, !tbaa !748
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %89, !prof !1026

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 2
  %64 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 3
  %65 = load i32, ptr %63, align 8, !tbaa !750
  %66 = load i32, ptr %64, align 4, !tbaa !751
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69, !prof !1027

68:                                               ; preds = %62
  br i1 %51, label %104, label %100, !prof !1028

69:                                               ; preds = %62
  %70 = icmp slt i32 %65, %66
  br i1 %70, label %71, label %108, !prof !1029

71:                                               ; preds = %69
  %72 = sext i32 %65 to i64
  br label %73

73:                                               ; preds = %71, %84
  %74 = phi i32 [ %85, %84 ], [ %66, %71 ]
  %75 = phi i64 [ %86, %84 ], [ %72, %71 ]
  %76 = tail call fastcc i32 @get_bitmap_index(ptr noundef %55, i64 noundef %75) #20
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78, !prof !1030

78:                                               ; preds = %73
  br i1 %51, label %81, label %79, !prof !1031

79:                                               ; preds = %78
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %2, i32 noundef %76) #21
  br label %81

81:                                               ; preds = %79, %78
  %82 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %76) #21
  %83 = load i32, ptr %64, align 4, !tbaa !751
  br label %84

84:                                               ; preds = %81, %73
  %85 = phi i32 [ %83, %81 ], [ %74, %73 ]
  %86 = add nsw i64 %75, 1
  %87 = sext i32 %85 to i64
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %73, label %108, !prof !1032, !llvm.loop !1033

89:                                               ; preds = %59
  %90 = icmp slt i32 %60, 0
  br i1 %90, label %91, label %108, !prof !1034

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.group_info, ptr %55, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !547
  %94 = getelementptr inbounds %struct.group_info, ptr %55, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !548
  %96 = load ptr, ptr %52, align 8, !tbaa !749
  %97 = tail call i32 @canon_true_dependence(ptr noundef %93, i32 noundef 14, ptr noundef %95, ptr noundef %96, ptr noundef null, ptr noundef nonnull @rtx_varies_p) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99, !prof !1035

99:                                               ; preds = %91
  br i1 %51, label %104, label %100, !prof !1036

100:                                              ; preds = %99, %68
  %101 = getelementptr inbounds %struct.group_info, ptr %55, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !442
  %103 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %2, ptr noundef %102) #21
  br label %104

104:                                              ; preds = %100, %99, %68
  %105 = getelementptr inbounds %struct.group_info, ptr %55, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !442
  %107 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %106) #21
  br label %108

108:                                              ; preds = %84, %104, %69, %53, %89, %91
  %109 = add nuw nsw i32 %54, 1
  %110 = load ptr, ptr @rtx_group_vec, align 8
  %111 = call fastcc i32 @VEC_group_info_t_base_iterate(ptr noundef %110, i32 noundef %109, ptr noundef nonnull %4) #20, !range !424
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %53, !prof !1037, !llvm.loop !1038

113:                                              ; preds = %108, %45
  %114 = phi ptr [ %46, %45 ], [ %110, %108 ]
  %115 = getelementptr inbounds %struct.read_info, ptr %47, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !639
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %45, !prof !1039, !llvm.loop !1040

118:                                              ; preds = %113, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_bitmap_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #7 !prof !1041 !PGOFuncName !1042 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %12, !prof !1043

4:                                                ; preds = %2
  %5 = sub nsw i64 0, %1
  %6 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !432
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %25, !prof !1044

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 11
  br label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !434
  %15 = sext i32 %14 to i64
  %16 = icmp sgt i64 %15, %1
  br i1 %16, label %17, label %25, !prof !1045

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.group_info, ptr %0, i64 0, i32 12
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %17 ]
  %21 = phi i64 [ %5, %10 ], [ %1, %17 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !328
  %23 = getelementptr inbounds i32, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !341
  br label %25

25:                                               ; preds = %19, %12, %4
  %26 = phi i32 [ 0, %4 ], [ 0, %12 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1046 !PGOFuncName !1047 {
  %3 = load ptr, ptr %0, align 8, !tbaa !469
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1048

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
  %15 = load i64, ptr %14, align 8, !tbaa !670
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !354
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !354
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !670
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !670
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !1046 !PGOFuncName !1049 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1050 !PGOFuncName !1051 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !327
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1052

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !328
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1053 !PGOFuncName !1054 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1055

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1056

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.55, i32 noundef 738, ptr noundef nonnull @.str.2) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1057
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1057
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1050 !PGOFuncName !1059 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1060

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1053 !PGOFuncName !1061 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1055

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1062 !PGOFuncName !1063 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1064

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.55, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !328
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_simple_dataflow(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_confluence_0(ptr nocapture noundef readonly %0) #0 !prof !1065 !PGOFuncName !1066 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !357
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %20, label %5, !prof !1067

5:                                                ; preds = %1
  %6 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !328
  %10 = getelementptr inbounds %struct.bb_info, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !458
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20, !prof !1068

13:                                               ; preds = %5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %14, ptr %10, align 8, !tbaa !458
  %15 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !328
  %18 = getelementptr inbounds %struct.bb_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !453
  tail call void @bitmap_copy(ptr noundef %14, ptr noundef %19) #21
  br label %20

20:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dse_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !1069 !PGOFuncName !1070 {
  %2 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !632
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !357
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !328
  %10 = getelementptr inbounds %struct.bb_info, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !457
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13, !prof !1071

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !970
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !357
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !328
  %20 = getelementptr inbounds %struct.bb_info, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !458
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !1072

23:                                               ; preds = %13
  tail call void @bitmap_and_into(ptr noundef nonnull %21, ptr noundef nonnull %11) #21
  br label %27

24:                                               ; preds = %13
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %25, ptr %20, align 8, !tbaa !458
  %26 = load ptr, ptr %10, align 8, !tbaa !457
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %26) #21
  br label %27

27:                                               ; preds = %23, %24, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dse_transfer_function(i32 noundef %0) #0 !prof !1073 !PGOFuncName !1074 {
  %2 = load ptr, ptr @bb_table, align 8, !tbaa !328
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  %6 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !472
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9, !prof !1075

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !458
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13, !prof !1076

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !457
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !1077

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !453
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef nonnull %15, ptr noundef %19, ptr noundef nonnull %11, ptr noundef nonnull %7) #21
  br label %36

21:                                               ; preds = %13
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %22, ptr %14, align 8, !tbaa !457
  %23 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !453
  %25 = load ptr, ptr %10, align 8, !tbaa !458
  %26 = load ptr, ptr %6, align 8, !tbaa !472
  %27 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26) #21
  br label %36

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !457
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36, !prof !1078

32:                                               ; preds = %28
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %33, ptr %29, align 8, !tbaa !457
  %34 = getelementptr inbounds %struct.bb_info, ptr %5, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !453
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
define internal fastcc void @VEC_group_info_t_heap_free() unnamed_addr #16 !prof !344 !PGOFuncName !1079 {
  %1 = load ptr, ptr @rtx_group_vec, align 8, !tbaa !328
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1080

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @rtx_group_vec, align 8, !tbaa !328
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!325}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!36 = !{ptr @gate_dse1, ptr @dbg_cnt, i64 6650}
!37 = !{ptr @gate_dse2, ptr @dbg_cnt, i64 6650}
!38 = !{ptr @rest_of_handle_dse, ptr @df_set_flags, i64 18294}
!39 = !{ptr @rest_of_handle_dse, ptr @df_note_add_problem, i64 13304}
!40 = !{ptr @rest_of_handle_dse, ptr @df_analyze, i64 18294}
!41 = !{ptr @rest_of_handle_dse, ptr @dse_step0, i64 13304}
!42 = !{ptr @rest_of_handle_dse, ptr @dse_step1, i64 13304}
!43 = !{ptr @rest_of_handle_dse, ptr @dse_step2_init, i64 13304}
!44 = !{ptr @rest_of_handle_dse, ptr @dse_step2_nospill, i64 13304}
!45 = !{ptr @rest_of_handle_dse, ptr @fwrite, i64 1}
!46 = !{ptr @rest_of_handle_dse, ptr @dse_step3, i64 4991}
!47 = !{ptr @rest_of_handle_dse, ptr @dse_step4, i64 4991}
!48 = !{ptr @rest_of_handle_dse, ptr @dse_step5_nospill, i64 4990}
!49 = !{ptr @rest_of_handle_dse, ptr @dse_step2_spill, i64 1}
!50 = !{ptr @rest_of_handle_dse, ptr @dse_step5_spill, i64 1}
!51 = !{ptr @rest_of_handle_dse, ptr @dse_step6, i64 13304}
!52 = !{ptr @rest_of_handle_dse, ptr @dse_step7, i64 13304}
!53 = !{ptr @rest_of_handle_dse, ptr @fprintf, i64 1}
!54 = !{ptr @dse_step0, ptr @bitmap_obstack_alloc_stat, i64 13304}
!55 = !{ptr @dse_step0, ptr @create_alloc_pool, i64 79824}
!56 = !{ptr @dse_step0, ptr @htab_create, i64 13304}
!57 = !{ptr @dse_step0, ptr @xcalloc, i64 13304}
!58 = !{ptr @dse_step0, ptr @init_alias_analysis, i64 13304}
!59 = !{ptr @dse_step0, ptr @get_group_info, i64 1}
!60 = !{ptr @dse_step1, ptr @bitmap_obstack_alloc_stat, i64 26608}
!61 = !{ptr @dse_step1, ptr @cselib_init, i64 13304}
!62 = !{ptr @dse_step1, ptr @bitmap_set_bit, i64 560816}
!63 = !{ptr @dse_step1, ptr @pool_alloc, i64 534208}
!64 = !{ptr @dse_step1, ptr @df_lr_get_bb_info, i64 534208}
!65 = !{ptr @dse_step1, ptr @bitmap_copy, i64 534208}
!66 = !{ptr @dse_step1, ptr @df_simulate_initialize_forwards, i64 534208}
!67 = !{ptr @dse_step1, ptr @create_alloc_pool, i64 507601}
!68 = !{ptr @dse_step1, ptr @cselib_clear_table, i64 507601}
!69 = !{ptr @dse_step1, ptr @scan_insn, i64 2279593}
!70 = !{ptr @dse_step1, ptr @cselib_process_insn, i64 3122621}
!71 = !{ptr @dse_step1, ptr @df_simulate_one_insn_forwards, i64 2279593}
!72 = !{ptr @dse_step1, ptr @VEC_edge_base_length, i64 506788}
!73 = !{ptr @dse_step1, ptr @single_succ_p, i64 499955}
!74 = !{ptr @dse_step1, ptr @single_succ, i64 192176}
!75 = !{ptr @dse_step1, ptr @VEC_group_info_t_base_index, i64 481}
!76 = !{ptr @dse_step1, ptr @delete_dead_store_insn, i64 2}
!77 = !{ptr @dse_step1, ptr @pool_free, i64 41}
!78 = !{ptr @dse_step1, ptr @free_store_info, i64 421044}
!79 = !{ptr @dse_step1, ptr @bitmap_obstack_free, i64 13305}
!80 = !{ptr @dse_step1, ptr @free_alloc_pool, i64 507601}
!81 = !{ptr @dse_step1, ptr @cselib_finish, i64 13304}
!82 = !{ptr @dse_step1, ptr @htab_empty, i64 13304}
!83 = !{ptr @dse_step2_init, ptr @VEC_group_info_t_base_iterate, i64 112665}
!84 = !{ptr @dse_step2_init, ptr @bitmap_ior_into, i64 13968}
!85 = !{ptr @dse_step2_init, ptr @fprintf, i64 2}
!86 = !{ptr @dse_step2_init, ptr @xmalloc, i64 198722}
!87 = !{ptr @dse_step2_init, ptr @bitmap_count_bits, i64 2}
!88 = !{ptr @dse_step2_init, ptr @bitmap_print, i64 2}
!89 = !{ptr @dse_step2_nospill, ptr @VEC_group_info_t_base_iterate, i64 112665}
!90 = !{ptr @dse_step2_nospill, ptr @bitmap_clear, i64 99360}
!91 = !{ptr @dse_step2_nospill, ptr @bmp_iter_set_init, i64 198720}
!92 = !{ptr @dse_step2_nospill, ptr @bmp_iter_set, i64 309199}
!93 = !{ptr @dse_step2_nospill, ptr @bitmap_set_bit, i64 110479}
!94 = !{ptr @dse_step2_nospill, ptr @bmp_iter_next, i64 110479}
!95 = !{ptr @dse_step3, ptr @sbitmap_alloc, i64 4990}
!96 = !{ptr @dse_step3, ptr @sbitmap_ones, i64 4990}
!97 = !{ptr @dse_step3, ptr @bitmap_clear, i64 1}
!98 = !{ptr @dse_step3, ptr @bitmap_obstack_alloc_stat, i64 375482}
!99 = !{ptr @dse_step3, ptr @dse_step3_exit_block_scan, i64 4990}
!100 = !{ptr @dse_step3, ptr @dse_step3_scan, i64 365495}
!101 = !{ptr @dse_step3, ptr @VEC_edge_base_length, i64 375475}
!102 = !{ptr @dse_step3, ptr @mark_reachable_blocks, i64 9897}
!103 = !{ptr @dse_step3, ptr @bitmap_obstack_free, i64 6}
!104 = !{ptr @dse_step3, ptr @sbitmap_iter_init, i64 4990}
!105 = !{ptr @dse_step3, ptr @sbitmap_iter_cond, i64 11594}
!106 = !{ptr @dse_step3, ptr @bitmap_bit_p, i64 6604}
!107 = !{ptr @dse_step3, ptr @VEC_group_info_t_base_iterate, i64 97}
!108 = !{ptr @dse_step3, ptr @bitmap_ior_into, i64 94}
!109 = !{ptr @dse_step3, ptr @bitmap_copy, i64 5}
!110 = !{ptr @dse_step3, ptr @sbitmap_iter_next, i64 6604}
!111 = !{ptr @dse_step3, ptr @free, i64 9980}
!112 = !{ptr @dse_step4, ptr @df_get_postorder, i64 4990}
!113 = !{ptr @dse_step4, ptr @df_get_n_blocks, i64 4990}
!114 = !{ptr @dse_step4, ptr @df_simple_dataflow, i64 4990}
!115 = !{ptr @dse_step4, ptr @fwrite, i64 29}
!116 = !{ptr @dse_step4, ptr @df_print_bb_index, i64 20}
!117 = !{ptr @dse_step4, ptr @bitmap_print, i64 48}
!118 = !{ptr @dse_step5_nospill, ptr @fprintf, i64 3}
!119 = !{ptr @dse_step5_nospill, ptr @bitmap_print, i64 1}
!120 = !{ptr @dse_step5_nospill, ptr @VEC_group_info_t_base_index, i64 24525}
!121 = !{ptr @dse_step5_nospill, ptr @get_bitmap_index, i64 24922}
!122 = !{ptr @dse_step5_nospill, ptr @bitmap_bit_p, i64 24001}
!123 = !{ptr @dse_step5_nospill, ptr @dbg_cnt, i64 185}
!124 = !{ptr @dse_step5_nospill, ptr @check_for_inc_dec, i64 183}
!125 = !{ptr @dse_step5_nospill, ptr @delete_insn, i64 183}
!126 = !{ptr @dse_step5_nospill, ptr @scan_stores_nospill, i64 1678074}
!127 = !{ptr @dse_step5_nospill, ptr @fwrite, i64 2}
!128 = !{ptr @dse_step5_nospill, ptr @bitmap_clear, i64 137393}
!129 = !{ptr @dse_step5_nospill, ptr @scan_reads_nospill, i64 442055}
!130 = !{ptr @dse_step7, ptr @VEC_group_info_t_base_iterate, i64 112665}
!131 = !{ptr @dse_step7, ptr @free, i64 212026}
!132 = !{ptr @dse_step7, ptr @bitmap_obstack_free, i64 1913681}
!133 = !{ptr @dse_step7, ptr @free_alloc_pool, i64 79825}
!134 = !{ptr @dse_step7, ptr @htab_delete, i64 13305}
!135 = !{ptr @dse_step7, ptr @end_alias_analysis, i64 13304}
!136 = !{ptr @dse_step7, ptr @VEC_group_info_t_heap_free, i64 13304}
!137 = !{ptr @invariant_group_base_hash, ptr @hash_rtx, i64 552665}
!138 = !{ptr @invariant_group_base_eq, ptr @rtx_equal_p, i64 571959}
!139 = !{ptr @get_group_info, ptr @htab_find_slot, i64 497898}
!140 = !{ptr @get_group_info, ptr @pool_alloc, i64 99367}
!141 = !{ptr @get_group_info, ptr @gen_rtx_MEM, i64 99367}
!142 = !{ptr @get_group_info, ptr @canon_rtx, i64 99367}
!143 = !{ptr @get_group_info, ptr @bitmap_obstack_alloc_stat, i64 496835}
!144 = !{ptr @get_group_info, ptr @VEC_group_info_t_heap_safe_push, i64 99367}
!145 = !{ptr @VEC_group_info_t_heap_safe_push, ptr @VEC_group_info_t_heap_reserve, i64 99367}
!146 = !{ptr @VEC_group_info_t_heap_safe_push, ptr @VEC_group_info_t_base_quick_push, i64 99367}
!147 = !{ptr @VEC_group_info_t_heap_reserve, ptr @VEC_group_info_t_base_space, i64 99367}
!148 = !{ptr @VEC_group_info_t_heap_reserve, ptr @vec_heap_p_reserve, i64 24983}
!149 = !{ptr @scan_insn, ptr @pool_alloc, i64 2305897}
!150 = !{ptr @scan_insn, ptr @fprintf, i64 3}
!151 = !{ptr @scan_insn, ptr @add_wild_read, i64 181702}
!152 = !{ptr @scan_insn, ptr @note_uses, i64 2305896}
!153 = !{ptr @scan_insn, ptr @VEC_group_info_t_base_index, i64 663}
!154 = !{ptr @scan_insn, ptr @dump_insn_info, i64 1}
!155 = !{ptr @scan_insn, ptr @get_call_args, i64 3294}
!156 = !{ptr @scan_insn, ptr @volatile_refs_p, i64 2120164}
!157 = !{ptr @scan_insn, ptr @insn_could_throw_p, i64 2120145}
!158 = !{ptr @scan_insn, ptr @find_reg_note, i64 2066960}
!159 = !{ptr @scan_insn, ptr @record_store, i64 2328878}
!160 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 692185}
!161 = !{ptr @single_succ, ptr @single_succ_edge, i64 192191}
!162 = !{ptr @delete_dead_store_insn, ptr @dbg_cnt, i64 512}
!163 = !{ptr @delete_dead_store_insn, ptr @check_for_inc_dec, i64 511}
!164 = !{ptr @delete_dead_store_insn, ptr @fprintf, i64 2}
!165 = !{ptr @delete_dead_store_insn, ptr @free_store_info, i64 511}
!166 = !{ptr @delete_dead_store_insn, ptr @pool_free, i64 1}
!167 = !{ptr @delete_dead_store_insn, ptr @delete_insn, i64 511}
!168 = !{ptr @free_store_info, ptr @bitmap_obstack_free, i64 1}
!169 = !{ptr @free_store_info, ptr @pool_free, i64 421590}
!170 = !{ptr @add_wild_read, ptr @pool_free, i64 182600}
!171 = !{ptr @check_mem_read_use, ptr @for_each_rtx, i64 2882480}
!172 = !{ptr @get_call_args, ptr @init_cumulative_args, i64 3292}
!173 = !{ptr @get_call_args, ptr @vector_type_mode, i64 1}
!174 = !{ptr @get_call_args, ptr @function_arg, i64 3266}
!175 = !{ptr @get_call_args, ptr @rhs_regno, i64 12}
!176 = !{ptr @record_store, ptr @find_reg_note, i64 2464797}
!177 = !{ptr @record_store, ptr @fwrite, i64 1}
!178 = !{ptr @record_store, ptr @add_wild_read, i64 13334}
!179 = !{ptr @record_store, ptr @clear_rhs_from_active_local_stores, i64 16093}
!180 = !{ptr @record_store, ptr @canon_address, i64 537208}
!181 = !{ptr @record_store, ptr @fancy_abort, i64 2}
!182 = !{ptr @record_store, ptr @bitmap_bit_p, i64 1}
!183 = !{ptr @record_store, ptr @bitmap_set_bit, i64 1}
!184 = !{ptr @record_store, ptr @pool_alloc, i64 521365}
!185 = !{ptr @record_store, ptr @fprintf, i64 5}
!186 = !{ptr @record_store, ptr @VEC_group_info_t_base_index, i64 199750}
!187 = !{ptr @record_store, ptr @set_usage_bits, i64 99875}
!188 = !{ptr @record_store, ptr @find_base_term, i64 421489}
!189 = !{ptr @record_store, ptr @cselib_expand_value_rtx, i64 151794}
!190 = !{ptr @record_store, ptr @canon_rtx, i64 521365}
!191 = !{ptr @record_store, ptr @plus_constant, i64 331477}
!192 = !{ptr @record_store, ptr @clear_alias_set_lookup, i64 1}
!193 = !{ptr @record_store, ptr @all_positions_needed_p, i64 216}
!194 = !{ptr @record_store, ptr @start_sequence, i64 18}
!195 = !{ptr @record_store, ptr @get_stored_val, i64 18}
!196 = !{ptr @record_store, ptr @get_insns, i64 18}
!197 = !{ptr @record_store, ptr @end_sequence, i64 18}
!198 = !{ptr @record_store, ptr @rtx_equal_p, i64 17}
!199 = !{ptr @record_store, ptr @set_position_unneeded, i64 577}
!200 = !{ptr @record_store, ptr @canon_true_dependence, i64 44176}
!201 = !{ptr @record_store, ptr @any_positions_needed_p, i64 590716}
!202 = !{ptr @record_store, ptr @delete_dead_store_insn, i64 511}
!203 = !{ptr @record_store, ptr @bitmap_obstack_alloc_stat, i64 1}
!204 = !{ptr @record_store, ptr @lowpart_bitmask, i64 521364}
!205 = !{ptr @check_mem_read_rtx, ptr @fwrite, i64 3}
!206 = !{ptr @check_mem_read_rtx, ptr @add_wild_read, i64 1719}
!207 = !{ptr @check_mem_read_rtx, ptr @canon_address, i64 753163}
!208 = !{ptr @check_mem_read_rtx, ptr @pool_alloc, i64 751456}
!209 = !{ptr @check_mem_read_rtx, ptr @VEC_group_info_t_base_index, i64 398022}
!210 = !{ptr @check_mem_read_rtx, ptr @plus_constant, i64 391956}
!211 = !{ptr @check_mem_read_rtx, ptr @fprintf, i64 3}
!212 = !{ptr @check_mem_read_rtx, ptr @dump_insn_info, i64 8}
!213 = !{ptr @check_mem_read_rtx, ptr @all_positions_needed_p, i64 48}
!214 = !{ptr @check_mem_read_rtx, ptr @replace_read, i64 46}
!215 = !{ptr @check_mem_read_rtx, ptr @canon_true_dependence, i64 500115}
!216 = !{ptr @check_mem_read_rtx, ptr @print_inline_rtx, i64 1}
!217 = !{ptr @check_mem_read_rtx, ptr @fputc, i64 1}
!218 = !{ptr @canon_address, ptr @fprintf, i64 3}
!219 = !{ptr @canon_address, ptr @bitmap_bit_p, i64 1}
!220 = !{ptr @canon_address, ptr @clear_alias_set_lookup, i64 1}
!221 = !{ptr @canon_address, ptr @cselib_lookup, i64 1997178}
!222 = !{ptr @canon_address, ptr @fwrite, i64 4}
!223 = !{ptr @canon_address, ptr @print_inline_rtx, i64 3}
!224 = !{ptr @canon_address, ptr @fputc, i64 3}
!225 = !{ptr @canon_address, ptr @cselib_expand_value_rtx, i64 928930}
!226 = !{ptr @canon_address, ptr @canon_rtx, i64 2441325}
!227 = !{ptr @canon_address, ptr @const_or_frame_p, i64 2441324}
!228 = !{ptr @canon_address, ptr @get_group_info, i64 583568}
!229 = !{ptr @all_positions_needed_p, ptr @bitmap_bit_p, i64 16}
!230 = !{ptr @all_positions_needed_p, ptr @lowpart_bitmask, i64 260}
!231 = !{ptr @replace_read, ptr @dbg_cnt, i64 46}
!232 = !{ptr @replace_read, ptr @fprintf, i64 1}
!233 = !{ptr @replace_read, ptr @start_sequence, i64 45}
!234 = !{ptr @replace_read, ptr @get_stored_val, i64 45}
!235 = !{ptr @replace_read, ptr @end_sequence, i64 45}
!236 = !{ptr @replace_read, ptr @fwrite, i64 5}
!237 = !{ptr @replace_read, ptr @copy_to_mode_reg, i64 44}
!238 = !{ptr @replace_read, ptr @get_insns, i64 44}
!239 = !{ptr @replace_read, ptr @bitmap_obstack_alloc_stat, i64 43}
!240 = !{ptr @replace_read, ptr @note_stores, i64 47}
!241 = !{ptr @replace_read, ptr @bitmap_and_into, i64 43}
!242 = !{ptr @replace_read, ptr @df_print_regset, i64 1}
!243 = !{ptr @replace_read, ptr @bitmap_obstack_free, i64 43}
!244 = !{ptr @replace_read, ptr @validate_change, i64 42}
!245 = !{ptr @replace_read, ptr @pool_alloc, i64 37}
!246 = !{ptr @replace_read, ptr @emit_insn_before, i64 37}
!247 = !{ptr @replace_read, ptr @pool_free, i64 37}
!248 = !{ptr @replace_read, ptr @print_simple_rtl, i64 2}
!249 = !{ptr @replace_read, ptr @fputc, i64 1}
!250 = !{ptr @get_stored_val, ptr @optimize_bb_for_speed_p, i64 3}
!251 = !{ptr @get_stored_val, ptr @find_shift_sequence, i64 3}
!252 = !{ptr @get_stored_val, ptr @int_mode_for_mode, i64 1}
!253 = !{ptr @get_stored_val, ptr @copy_rtx, i64 58}
!254 = !{ptr @get_stored_val, ptr @extract_low_bits, i64 58}
!255 = !{ptr @look_for_hardregs, ptr @rhs_regno, i64 51}
!256 = !{ptr @look_for_hardregs, ptr @bitmap_set_bit, i64 3}
!257 = !{ptr @find_shift_sequence, ptr @smallest_mode_for_size, i64 2}
!258 = !{ptr @find_shift_sequence, ptr @subreg_lowpart_offset, i64 1}
!259 = !{ptr @find_shift_sequence, ptr @simplify_subreg, i64 1}
!260 = !{ptr @find_shift_sequence, ptr @ix86_modes_tieable_p, i64 2}
!261 = !{ptr @find_shift_sequence, ptr @gen_reg_rtx, i64 2}
!262 = !{ptr @find_shift_sequence, ptr @start_sequence, i64 2}
!263 = !{ptr @find_shift_sequence, ptr @gen_rtx_CONST_INT, i64 2}
!264 = !{ptr @find_shift_sequence, ptr @expand_binop, i64 2}
!265 = !{ptr @find_shift_sequence, ptr @get_insns, i64 2}
!266 = !{ptr @find_shift_sequence, ptr @end_sequence, i64 2}
!267 = !{ptr @find_shift_sequence, ptr @insn_rtx_cost, i64 1}
!268 = !{ptr @find_shift_sequence, ptr @copy_rtx, i64 1}
!269 = !{ptr @find_shift_sequence, ptr @extract_low_bits, i64 2}
!270 = !{ptr @find_shift_sequence, ptr @emit_move_insn, i64 1}
!271 = !{ptr @find_shift_sequence, ptr @emit_insn, i64 1}
!272 = !{ptr @set_usage_bits, ptr @bitmap_bit_p, i64 382451}
!273 = !{ptr @set_usage_bits, ptr @bitmap_set_bit, i64 382450}
!274 = !{ptr @set_position_unneeded, ptr @bitmap_bit_p, i64 1}
!275 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 192191}
!276 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!277 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 192191}
!278 = !{ptr @check_for_inc_dec, ptr @find_reg_note, i64 646}
!279 = !{ptr @check_for_inc_dec, ptr @for_each_rtx, i64 1}
!280 = !{ptr @dse_step3_exit_block_scan, ptr @VEC_group_info_t_base_iterate, i64 66764}
!281 = !{ptr @dse_step3_exit_block_scan, ptr @bitmap_ior_into, i64 4453}
!282 = !{ptr @dse_step3_scan, ptr @find_insn_before_first_wild_read, i64 365568}
!283 = !{ptr @dse_step3_scan, ptr @bitmap_clear, i64 1}
!284 = !{ptr @dse_step3_scan, ptr @bitmap_obstack_alloc_stat, i64 268815}
!285 = !{ptr @dse_step3_scan, ptr @bitmap_obstack_free, i64 1}
!286 = !{ptr @dse_step3_scan, ptr @scan_stores_spill, i64 1}
!287 = !{ptr @dse_step3_scan, ptr @scan_reads_spill, i64 1}
!288 = !{ptr @dse_step3_scan, ptr @scan_stores_nospill, i64 1125075}
!289 = !{ptr @dse_step3_scan, ptr @scan_reads_nospill, i64 1125075}
!290 = !{ptr @mark_reachable_blocks, ptr @RESET_BIT, i64 375544}
!291 = !{ptr @mark_reachable_blocks, ptr @ei_start_1, i64 375544}
!292 = !{ptr @mark_reachable_blocks, ptr @ei_cond, i64 971235}
!293 = !{ptr @mark_reachable_blocks, ptr @mark_reachable_blocks, i64 595691}
!294 = !{ptr @mark_reachable_blocks, ptr @ei_next, i64 595691}
!295 = !{ptr @scan_stores_nospill, ptr @VEC_group_info_t_base_index, i64 165382}
!296 = !{ptr @scan_stores_nospill, ptr @get_bitmap_index, i64 599818}
!297 = !{ptr @scan_stores_nospill, ptr @bitmap_set_bit, i64 595269}
!298 = !{ptr @scan_stores_nospill, ptr @bitmap_clear_bit, i64 178200}
!299 = !{ptr @scan_reads_nospill, ptr @VEC_group_info_t_base_iterate, i64 35115734}
!300 = !{ptr @scan_reads_nospill, ptr @bitmap_ior_into, i64 453894}
!301 = !{ptr @scan_reads_nospill, ptr @bitmap_and_compl_into, i64 1188252}
!302 = !{ptr @scan_reads_nospill, ptr @get_bitmap_index, i64 797169}
!303 = !{ptr @scan_reads_nospill, ptr @bitmap_set_bit, i64 204236}
!304 = !{ptr @scan_reads_nospill, ptr @bitmap_clear_bit, i64 705468}
!305 = !{ptr @scan_reads_nospill, ptr @canon_true_dependence, i64 1293207}
!306 = !{ptr @ei_cond, ptr @ei_end_p, i64 971236}
!307 = !{ptr @ei_cond, ptr @ei_edge, i64 595692}
!308 = !{ptr @ei_next, ptr @ei_container, i64 1191383}
!309 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 595692}
!310 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!311 = !{ptr @ei_end_p, ptr @ei_container, i64 1937481}
!312 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 971236}
!313 = !{ptr @ei_edge, ptr @ei_container, i64 1191383}
!314 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 595692}
!315 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!316 = !{ptr @dse_confluence_0, ptr @bitmap_obstack_alloc_stat, i64 4907}
!317 = !{ptr @dse_confluence_0, ptr @bitmap_copy, i64 4907}
!318 = !{ptr @dse_confluence_n, ptr @bitmap_and_into, i64 812823}
!319 = !{ptr @dse_confluence_n, ptr @bitmap_obstack_alloc_stat, i64 365646}
!320 = !{ptr @dse_confluence_n, ptr @bitmap_copy, i64 365646}
!321 = !{ptr @dse_transfer_function, ptr @bitmap_ior_and_compl, i64 538769}
!322 = !{ptr @dse_transfer_function, ptr @bitmap_obstack_alloc_stat, i64 375548}
!323 = !{ptr @dse_transfer_function, ptr @bitmap_copy, i64 106733}
!324 = !{ptr @VEC_group_info_t_heap_free, ptr @free, i64 12981}
!325 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!326 = !{!"function_entry_count", i64 0}
!327 = !{i8 0, i8 2}
!328 = !{!329, !329, i64 0}
!329 = !{!"any pointer", !330, i64 0}
!330 = !{!"omnipotent char", !331, i64 0}
!331 = !{!"Simple C/C++ TBAA"}
!332 = !{!333, !334, i64 0}
!333 = !{!"clear_alias_mode_holder", !334, i64 0, !334, i64 4}
!334 = !{!"int", !330, i64 0}
!335 = !{!333, !334, i64 4}
!336 = !{!"dse.c:gate_dse"}
!337 = !{!"dse.c:clear_alias_mode_hash"}
!338 = !{!"dse.c:clear_alias_mode_eq"}
!339 = !{!"function_entry_count", i64 6652}
!340 = !{!"dse.c:gate_dse1"}
!341 = !{!334, !334, i64 0}
!342 = !{!"branch_weights", i32 44262409, i32 13307}
!343 = !{!"dse.c:gate_dse2"}
!344 = !{!"function_entry_count", i64 13304}
!345 = !{!"dse.c:rest_of_handle_dse"}
!346 = !{!"branch_weights", i32 8315, i32 4991}
!347 = !{!"branch_weights", i32 4991, i32 1}
!348 = !{!"branch_weights", i32 13305, i32 1}
!349 = !{!"dse.c:dse_step0"}
!350 = !{!351, !329, i64 8}
!351 = !{!"function", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !329, i64 64, !329, i64 72, !329, i64 80, !329, i64 88, !329, i64 96, !334, i64 104, !334, i64 108, !334, i64 112, !334, i64 116, !334, i64 120, !334, i64 124, !329, i64 128, !334, i64 136, !334, i64 137, !334, i64 138, !334, i64 138, !334, i64 138, !334, i64 138, !334, i64 138, !334, i64 138, !334, i64 138, !334, i64 139, !334, i64 139, !334, i64 139, !334, i64 139, !334, i64 139, !334, i64 139, !334, i64 139}
!352 = !{!353, !334, i64 32}
!353 = !{!"control_flow_graph", !329, i64 0, !329, i64 8, !329, i64 16, !334, i64 24, !334, i64 28, !334, i64 32, !329, i64 40, !334, i64 48, !330, i64 52, !330, i64 60, !334, i64 68, !334, i64 72}
!354 = !{!330, !330, i64 0}
!355 = !{!"dse.c:dse_step1"}
!356 = !{!"branch_weights", i32 1, i32 13304}
!357 = !{!358, !334, i64 80}
!358 = !{!"basic_block_def", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !330, i64 32, !329, i64 48, !329, i64 56, !330, i64 64, !359, i64 72, !334, i64 80, !334, i64 84, !334, i64 88, !334, i64 92, !334, i64 96}
!359 = !{!"long", !330, i64 0}
!360 = !{!361, !329, i64 48}
!361 = !{!"bb_info", !329, i64 0, !330, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48}
!362 = !{!363, !329, i64 16}
!363 = !{!"df_lr_bb_info", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24}
!364 = !{!"branch_weights", i32 507640, i32 26609}
!365 = !{!"branch_weights", i32 1, i32 6652}
!366 = !{!367, !329, i64 8}
!367 = !{!"rtl_bb_info", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !334, i64 32}
!368 = !{!"branch_weights", i32 507640, i32 3158656}
!369 = !{!"branch_weights", i32 -94558180, i32 1553375289}
!370 = !{!"branch_weights", i32 6652, i32 3652991}
!371 = distinct !{!371, !372}
!372 = !{!"llvm.loop.mustprogress"}
!373 = !{!"branch_weights", i32 813, i32 506828}
!374 = !{!358, !329, i64 8}
!375 = !{!"branch_weights", i32 6834, i32 499995}
!376 = !{!"branch_weights", i32 307804, i32 192192}
!377 = !{!353, !329, i64 8}
!378 = !{!"branch_weights", i32 -2056697487, i32 15057979}
!379 = !{!"branch_weights", i32 21495, i32 1817}
!380 = !{!381, !330, i64 0}
!381 = !{!"store_info", !330, i64 0, !330, i64 1, !334, i64 4, !329, i64 8, !329, i64 16, !329, i64 24, !334, i64 32, !359, i64 40, !359, i64 48, !330, i64 56, !329, i64 72, !329, i64 80, !329, i64 88, !329, i64 96}
!382 = !{!"branch_weights", i32 1, i32 1817}
!383 = distinct !{!383, !372}
!384 = !{!381, !334, i64 32}
!385 = !{!"branch_weights", i32 1817, i32 1}
!386 = !{!387, !330, i64 0}
!387 = !{!"insn_info", !330, i64 0, !330, i64 1, !330, i64 2, !330, i64 3, !330, i64 4, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40}
!388 = !{!381, !334, i64 4}
!389 = !{!"branch_weights", i32 481, i32 1337}
!390 = !{!391, !330, i64 13}
!391 = !{!"group_info", !329, i64 0, !334, i64 8, !330, i64 12, !330, i64 13, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !329, i64 64, !329, i64 72, !329, i64 80, !334, i64 88, !334, i64 92}
!392 = !{!"branch_weights", i32 480, i32 2}
!393 = !{!"branch_weights", i32 2, i32 1}
!394 = !{!"branch_weights", i32 1817, i32 0}
!395 = distinct !{!395, !372}
!396 = !{!"branch_weights", i32 507599, i32 41}
!397 = !{!"branch_weights", i32 1, i32 507639}
!398 = !{!399, !329, i64 16}
!399 = !{!"deferred_change", !329, i64 0, !329, i64 8, !329, i64 16}
!400 = !{!399, !329, i64 8}
!401 = !{!399, !329, i64 0}
!402 = !{!"branch_weights", i32 41, i32 0}
!403 = distinct !{!403, !372}
!404 = !{!387, !330, i64 4}
!405 = !{!"branch_weights", i32 1884822, i32 421077}
!406 = !{!"branch_weights", i32 1, i32 127}
!407 = !{!"branch_weights", i32 3, i32 421077}
!408 = !{!"branch_weights", i32 127, i32 53897985}
!409 = distinct !{!409, !372}
!410 = !{!381, !329, i64 96}
!411 = !{!"branch_weights", i32 420878, i32 200}
!412 = !{!387, !329, i64 8}
!413 = !{!"branch_weights", i32 200, i32 1}
!414 = !{!"branch_weights", i32 1785044, i32 99778}
!415 = !{!381, !330, i64 1}
!416 = !{!"branch_weights", i32 99778, i32 1}
!417 = !{!"branch_weights", i32 99778, i32 0}
!418 = distinct !{!418, !372}
!419 = !{!"branch_weights", i32 507639, i32 1798259}
!420 = distinct !{!420, !372}
!421 = !{!"branch_weights", i32 13304, i32 520944}
!422 = distinct !{!422, !372}
!423 = !{!"dse.c:dse_step2_init"}
!424 = !{i32 0, i32 2}
!425 = !{!"branch_weights", i32 710, i32 98659}
!426 = !{!"branch_weights", i32 91675, i32 6985}
!427 = !{!391, !329, i64 48}
!428 = !{!391, !329, i64 32}
!429 = !{!391, !329, i64 56}
!430 = !{!391, !329, i64 40}
!431 = !{!"branch_weights", i32 6985, i32 1}
!432 = !{!391, !334, i64 88}
!433 = !{!391, !329, i64 72}
!434 = !{!391, !334, i64 92}
!435 = !{!391, !329, i64 80}
!436 = !{!391, !330, i64 12}
!437 = !{!"branch_weights", i32 99368, i32 1}
!438 = !{!"branch_weights", i32 13304, i32 86064}
!439 = distinct !{!439, !372}
!440 = !{!"dse.c:dse_step2_nospill"}
!441 = !{!"branch_weights", i32 1, i32 99368}
!442 = !{!391, !329, i64 64}
!443 = !{!"branch_weights", i32 6611, i32 92757}
!444 = !{!"branch_weights", i32 92757, i32 0}
!445 = distinct !{!445, !372}
!446 = !{!"branch_weights", i32 81636, i32 17732}
!447 = !{!"branch_weights", i32 17732, i32 0}
!448 = distinct !{!448, !372}
!449 = distinct !{!449, !372}
!450 = !{!"function_entry_count", i64 4990}
!451 = !{!"dse.c:dse_step3"}
!452 = !{!"branch_weights", i32 1, i32 4990}
!453 = !{!361, !329, i64 16}
!454 = !{!"branch_weights", i32 375550, i32 1}
!455 = !{!"branch_weights", i32 -61666696, i32 57795935, i32 57795780}
!456 = !{!"branch_weights", i32 9899, i32 365652}
!457 = !{!361, !329, i64 32}
!458 = !{!361, !329, i64 40}
!459 = !{!"branch_weights", i32 4990, i32 370560}
!460 = distinct !{!460, !372}
!461 = !{!"branch_weights", i32 6600, i32 6}
!462 = !{!"branch_weights", i32 4, i32 3}
!463 = !{!"branch_weights", i32 127, i32 3393}
!464 = distinct !{!464, !372}
!465 = !{!"branch_weights", i32 6, i32 1}
!466 = !{!"branch_weights", i32 4990, i32 1615}
!467 = distinct !{!467, !372}
!468 = !{!"branch_weights", i32 2145762563, i32 1721085}
!469 = !{!470, !329, i64 0}
!470 = !{!"simple_bitmap_def", !329, i64 0, !334, i64 8, !334, i64 12, !330, i64 16}
!471 = !{!"dse.c:dse_step4"}
!472 = !{!361, !329, i64 24}
!473 = distinct !{!473, !372}
!474 = !{!"dse.c:dse_step5_nospill"}
!475 = !{!353, !329, i64 0}
!476 = !{!358, !329, i64 56}
!477 = !{!"branch_weights", i32 4990, i32 360580}
!478 = distinct !{!478, !372}
!479 = !{!"branch_weights", i32 1, i32 365569}
!480 = !{!"branch_weights", i32 1678953, i32 1}
!481 = !{!"branch_weights", i32 357, i32 1678597}
!482 = !{!"branch_weights", i32 -214481817, i32 2430}
!483 = !{!"branch_weights", i32 92773, i32 1585825}
!484 = !{!485, !329, i64 0}
!485 = !{!"bitmap_head_def", !329, i64 0, !329, i64 8, !334, i64 16, !329, i64 24}
!486 = !{!"branch_weights", i32 68243, i32 24531}
!487 = !{!"branch_weights", i32 1, i32 24531}
!488 = distinct !{!488, !372}
!489 = !{!"branch_weights", i32 24531, i32 1}
!490 = !{!381, !359, i64 40}
!491 = !{!381, !359, i64 48}
!492 = !{!"branch_weights", i32 134, i32 1}
!493 = !{!"branch_weights", i32 24979, i32 1}
!494 = !{!"branch_weights", i32 923, i32 24057}
!495 = !{!"branch_weights", i32 23475, i32 583}
!496 = !{!"branch_weights", i32 24397, i32 1}
!497 = !{!"branch_weights", i32 24845, i32 134}
!498 = distinct !{!498, !372}
!499 = !{!"branch_weights", i32 1, i32 135}
!500 = !{!"branch_weights", i32 0, i32 -2147483648}
!501 = !{!"branch_weights", i32 -539701210, i32 318617672}
!502 = !{!"branch_weights", i32 28277, i32 -852203650}
!503 = !{!"branch_weights", i32 1678463, i32 1}
!504 = !{!387, !329, i64 16}
!505 = !{!387, !330, i64 1}
!506 = !{!"branch_weights", i32 1541039, i32 137425}
!507 = !{!"branch_weights", i32 137425, i32 1}
!508 = !{!387, !329, i64 24}
!509 = !{!"branch_weights", i32 1098882, i32 442158}
!510 = !{!"branch_weights", i32 442158, i32 1}
!511 = !{!"branch_weights", i32 365569, i32 1313384}
!512 = distinct !{!512, !372}
!513 = !{!"dse.c:dse_step2_spill"}
!514 = distinct !{!514, !372}
!515 = !{!"dse.c:dse_step5_spill"}
!516 = distinct !{!516, !372}
!517 = distinct !{!517, !372}
!518 = distinct !{!518, !372}
!519 = !{!"dse.c:dse_step6"}
!520 = !{!"branch_weights", i32 1, i32 534247}
!521 = !{!"branch_weights", i32 647, i32 2305252}
!522 = !{!"branch_weights", i32 -579539888, i32 1611}
!523 = !{!"branch_weights", i32 96018, i32 2209235}
!524 = !{!"branch_weights", i32 1, i32 96018}
!525 = !{!"branch_weights", i32 127, i32 12290177}
!526 = distinct !{!526, !372}
!527 = !{!"branch_weights", i32 96018, i32 1}
!528 = !{!"branch_weights", i32 534247, i32 1771651}
!529 = distinct !{!529, !372}
!530 = distinct !{!530, !372}
!531 = !{!"dse.c:dse_step7"}
!532 = distinct !{!532, !372}
!533 = !{!"branch_weights", i32 106734, i32 268817}
!534 = !{!"branch_weights", i32 1, i32 375550}
!535 = !{!"branch_weights", i32 4991, i32 370560}
!536 = distinct !{!536, !372}
!537 = !{!"function_entry_count", i64 552665}
!538 = !{!"dse.c:invariant_group_base_hash"}
!539 = !{!391, !329, i64 0}
!540 = !{!"function_entry_count", i64 571959}
!541 = !{!"dse.c:invariant_group_base_eq"}
!542 = !{!"function_entry_count", i64 497899}
!543 = !{!"dse.c:get_group_info"}
!544 = !{!"branch_weights", i32 1, i32 497900}
!545 = !{!"branch_weights", i32 99368, i32 398533}
!546 = !{!391, !334, i64 8}
!547 = !{!391, !329, i64 16}
!548 = !{!391, !329, i64 24}
!549 = !{!"branch_weights", i32 920, i32 98449}
!550 = !{!"function_entry_count", i64 99367}
!551 = !{!"dse.c:VEC_group_info_t_heap_safe_push"}
!552 = !{!"dse.c:VEC_group_info_t_heap_reserve"}
!553 = !{!"branch_weights", i32 24984, i32 74385}
!554 = !{!"dse.c:VEC_group_info_t_base_quick_push"}
!555 = !{!556, !334, i64 0}
!556 = !{!"VEC_group_info_t_base", !334, i64 0, !334, i64 4, !330, i64 8}
!557 = !{!"dse.c:VEC_group_info_t_base_space"}
!558 = !{!"branch_weights", i32 12983, i32 86386}
!559 = !{!556, !334, i64 4}
!560 = !{!"function_entry_count", i64 534247}
!561 = !{!"dse.c:df_lr_get_bb_info"}
!562 = !{!563, !334, i64 16}
!563 = !{!"dataflow", !329, i64 0, !329, i64 8, !334, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !334, i64 48, !330, i64 52, !330, i64 53, !330, i64 54}
!564 = !{!"branch_weights", i32 534248, i32 1}
!565 = !{!563, !329, i64 8}
!566 = !{!"function_entry_count", i64 5550}
!567 = !{!"dse.c:remove_useless_values"}
!568 = !{!"branch_weights", i32 5454, i32 97}
!569 = !{!"branch_weights", i32 1, i32 193}
!570 = !{!"branch_weights", i32 1, i32 97}
!571 = !{!381, !329, i64 8}
!572 = !{!"branch_weights", i32 193, i32 1}
!573 = distinct !{!573, !372}
!574 = !{!387, !329, i64 40}
!575 = !{!"branch_weights", i32 97, i32 0}
!576 = distinct !{!576, !372}
!577 = !{!"function_entry_count", i64 2305897}
!578 = !{!"dse.c:scan_insn"}
!579 = !{!"branch_weights", i32 2305898, i32 1}
!580 = !{!361, !329, i64 0}
!581 = !{!387, !329, i64 32}
!582 = !{!"branch_weights", i32 1244284178, i32 2251, i32 -346704705}
!583 = !{!"branch_weights", i32 1, i32 1753339}
!584 = !{!"branch_weights", i32 185728, i32 2120171}
!585 = !{!"branch_weights", i32 184996, i32 733}
!586 = !{!"branch_weights", i32 29, i32 184968}
!587 = !{!"branch_weights", i32 127619, i32 57378}
!588 = !{!"branch_weights", i32 184996, i32 1}
!589 = !{!"branch_weights", i32 -312498415, i32 145137933}
!590 = !{!"branch_weights", i32 1, i32 178493}
!591 = !{!"branch_weights", i32 178493, i32 1}
!592 = !{!"branch_weights", i32 49714736, i32 -1650639834}
!593 = !{!"branch_weights", i32 4025, i32 1}
!594 = !{!"branch_weights", i32 2013, i32 2013}
!595 = !{!387, !330, i64 2}
!596 = !{!"branch_weights", i32 1, i32 4024}
!597 = !{!387, !330, i64 3}
!598 = !{!"branch_weights", i32 964, i32 10692}
!599 = !{!"branch_weights", i32 293, i32 672}
!600 = !{!"branch_weights", i32 1, i32 672}
!601 = distinct !{!601, !372}
!602 = !{!"branch_weights", i32 664, i32 9}
!603 = !{!"branch_weights", i32 224, i32 441}
!604 = !{!"branch_weights", i32 11132, i32 1}
!605 = !{!"branch_weights", i32 11131, i32 2}
!606 = !{!"branch_weights", i32 4024, i32 7631}
!607 = distinct !{!607, !372}
!608 = !{!"branch_weights", i32 733, i32 3293}
!609 = !{!"branch_weights", i32 3293, i32 1}
!610 = !{!"branch_weights", i32 4, i32 2120168}
!611 = !{!"branch_weights", i32 2120150, i32 19}
!612 = !{!"branch_weights", i32 2120150, i32 1}
!613 = !{!"branch_weights", i32 2066967, i32 53184}
!614 = !{!"branch_weights", i32 2066967, i32 1}
!615 = !{!"branch_weights", i32 193067, i32 1927105}
!616 = !{!617, !334, i64 0}
!617 = !{!"rtvec_def", !334, i64 0, !330, i64 8}
!618 = !{!"branch_weights", i32 193066, i32 1}
!619 = !{!"branch_weights", i32 208712, i32 193066}
!620 = distinct !{!620, !372}
!621 = !{!"branch_weights", i32 2120171, i32 1}
!622 = !{!"branch_weights", i32 521366, i32 1598806}
!623 = !{!"function_entry_count", i64 3141489}
!624 = !{!"dse.c:VEC_edge_base_length"}
!625 = !{!"branch_weights", i32 9981, i32 3131510}
!626 = !{!627, !334, i64 0}
!627 = !{!"VEC_edge_base", !334, i64 0, !334, i64 4, !330, i64 8}
!628 = !{!"function_entry_count", i64 692185}
!629 = !{!"dse.c:single_succ_p"}
!630 = !{!"function_entry_count", i64 192191}
!631 = !{!"dse.c:single_succ"}
!632 = !{!633, !329, i64 8}
!633 = !{!"edge_def", !329, i64 0, !329, i64 8, !330, i64 16, !329, i64 24, !329, i64 32, !334, i64 40, !334, i64 44, !334, i64 48, !334, i64 52, !359, i64 56}
!634 = !{!"function_entry_count", i64 512}
!635 = !{!"dse.c:delete_dead_store_insn"}
!636 = !{!"branch_weights", i32 1, i32 513}
!637 = !{!"branch_weights", i32 513, i32 1}
!638 = !{!"branch_weights", i32 512, i32 1}
!639 = !{!640, !329, i64 24}
!640 = !{!"read_info", !334, i64 0, !334, i64 4, !334, i64 8, !334, i64 12, !329, i64 16, !329, i64 24}
!641 = !{!"branch_weights", i32 1, i32 0}
!642 = distinct !{!642, !372}
!643 = !{!"function_entry_count", i64 788828}
!644 = !{!"dse.c:VEC_group_info_t_base_index"}
!645 = !{!"function_entry_count", i64 421588}
!646 = !{!"dse.c:free_store_info"}
!647 = !{!"branch_weights", i32 1, i32 421588}
!648 = !{!381, !329, i64 72}
!649 = !{!"branch_weights", i32 421591, i32 1}
!650 = !{!"branch_weights", i32 421588, i32 3}
!651 = distinct !{!651, !372}
!652 = !{!"function_entry_count", i64 196753}
!653 = !{!"dse.c:add_wild_read"}
!654 = !{!"branch_weights", i32 14152, i32 182602}
!655 = !{!640, !334, i64 4}
!656 = !{!"branch_weights", i32 182602, i32 1}
!657 = !{!"branch_weights", i32 182602, i32 0}
!658 = distinct !{!658, !372}
!659 = !{!"function_entry_count", i64 2882480}
!660 = !{!"dse.c:check_mem_read_use"}
!661 = !{!"dse.c:dump_insn_info"}
!662 = !{!"function_entry_count", i64 3292}
!663 = !{!"dse.c:get_call_args"}
!664 = !{!"branch_weights", i32 1, i32 3293}
!665 = distinct !{!665, !372}
!666 = !{!"branch_weights", i32 421377, i32 127}
!667 = distinct !{!667, !372}
!668 = !{!"function_entry_count", i64 2328881}
!669 = !{!"dse.c:record_store"}
!670 = !{!359, !359, i64 0}
!671 = !{!"branch_weights", i32 25511653, i32 -975670393, i32 285519763}
!672 = !{!"branch_weights", i32 550794, i32 1761724}
!673 = !{!"branch_weights", i32 1589743, i32 171982}
!674 = !{!"branch_weights", i32 13585, i32 537210}
!675 = !{!"branch_weights", i32 13335, i32 251}
!676 = !{!"branch_weights", i32 13335, i32 1}
!677 = !{!"branch_weights", i32 251, i32 1}
!678 = !{!679, !329, i64 16}
!679 = !{!"mem_attrs", !329, i64 0, !329, i64 8, !329, i64 16, !334, i64 24, !334, i64 28, !330, i64 32}
!680 = !{!"branch_weights", i32 1, i32 251}
!681 = !{!"branch_weights", i32 537202, i32 9}
!682 = !{!"branch_weights", i32 15843, i32 521368}
!683 = !{!"branch_weights", i32 1, i32 521368}
!684 = !{}
!685 = !{!"branch_weights", i32 521368, i32 1}
!686 = !{!"branch_weights", i32 99876, i32 421493}
!687 = !{!"branch_weights", i32 99876, i32 1}
!688 = !{!"branch_weights", i32 65757, i32 355737}
!689 = !{!"branch_weights", i32 -491463788, i32 132426190}
!690 = !{!"branch_weights", i32 339955, i32 3816}
!691 = !{!"branch_weights", i32 421493, i32 1}
!692 = !{!"branch_weights", i32 -1953838444, i32 1906130388}
!693 = !{!"branch_weights", i32 1678587532, i32 -1175967503, i32 10026570}
!694 = !{!"branch_weights", i32 79469, i32 2230}
!695 = !{!"branch_weights", i32 231753, i32 5}
!696 = !{!"branch_weights", i32 -1674556695, i32 814356, i32 11309, i32 11309, i32 11310}
!697 = !{!"branch_weights", i32 72, i32 1}
!698 = !{!"branch_weights", i32 79467, i32 152287}
!699 = !{!"branch_weights", i32 152287, i32 1}
!700 = !{!"branch_weights", i32 144559, i32 7729}
!701 = !{!"branch_weights", i32 1, i32 7729}
!702 = !{!"branch_weights", i32 151800, i32 488}
!703 = !{!"branch_weights", i32 1, i32 151800}
!704 = !{!"branch_weights", i32 421493, i32 99876}
!705 = !{!"branch_weights", i32 189889, i32 331480}
!706 = !{!"branch_weights", i32 1, i32 521367}
!707 = !{!"branch_weights", i32 1, i32 590719}
!708 = distinct !{!708, !372}
!709 = !{!"branch_weights", i32 590719, i32 1}
!710 = !{!381, !329, i64 16}
!711 = !{!"branch_weights", i32 504090, i32 86630}
!712 = !{!"branch_weights", i32 453667, i32 50424}
!713 = !{!"branch_weights", i32 453667, i32 1}
!714 = !{!381, !329, i64 88}
!715 = !{!"branch_weights", i32 293437861, i32 -2007516260}
!716 = !{!"branch_weights", i32 32615, i32 18967}
!717 = !{!"branch_weights", i32 18752, i32 216}
!718 = !{!"branch_weights", i32 1, i32 216}
!719 = !{!"branch_weights", i32 43200, i32 3889}
!720 = !{!"branch_weights", i32 1, i32 17}
!721 = !{!"branch_weights", i32 17, i32 1}
!722 = !{!"branch_weights", i32 123419, i32 208385}
!723 = !{!"branch_weights", i32 1556, i32 453667}
!724 = !{!"branch_weights", i32 0, i32 123419}
!725 = distinct !{!725, !372}
!726 = !{!381, !329, i64 80}
!727 = !{!"branch_weights", i32 92878, i32 44176}
!728 = !{!381, !329, i64 24}
!729 = !{!"branch_weights", i32 36864, i32 7313}
!730 = !{!"branch_weights", i32 512, i32 590208}
!731 = !{!"branch_weights", i32 4194304, i32 -2147483648}
!732 = !{!"branch_weights", i32 373, i32 140}
!733 = !{!"branch_weights", i32 521367, i32 69352}
!734 = distinct !{!734, !372}
!735 = !{!"function_entry_count", i64 8369833}
!736 = !{!"dse.c:check_mem_read_rtx"}
!737 = !{!"branch_weights", i32 1, i32 8369834}
!738 = !{!"branch_weights", i32 766194, i32 7603641}
!739 = !{!"branch_weights", i32 227152, i32 539043}
!740 = !{!679, !334, i64 24}
!741 = !{!"branch_weights", i32 -1156683455, i32 50878}
!742 = !{!"branch_weights", i32 766184, i32 11}
!743 = !{!"branch_weights", i32 11, i32 1}
!744 = !{!"branch_weights", i32 753166, i32 13019}
!745 = !{!"branch_weights", i32 1707, i32 751460}
!746 = !{!"branch_weights", i32 1707, i32 1}
!747 = !{!"branch_weights", i32 251, i32 751210}
!748 = !{!640, !334, i64 0}
!749 = !{!640, !329, i64 16}
!750 = !{!640, !334, i64 8}
!751 = !{!640, !334, i64 12}
!752 = !{!"branch_weights", i32 751460, i32 1}
!753 = !{!"branch_weights", i32 353436, i32 398025}
!754 = !{!"branch_weights", i32 359502, i32 391959}
!755 = distinct !{!755, !372}
!756 = distinct !{!756, !372}
!757 = !{!"branch_weights", i32 398025, i32 353436}
!758 = !{!"branch_weights", i32 398025, i32 1}
!759 = !{!"branch_weights", i32 1, i32 397994}
!760 = !{!"branch_weights", i32 1, i32 474987}
!761 = distinct !{!761, !372}
!762 = !{!"branch_weights", i32 399378, i32 75610}
!763 = !{!"branch_weights", i32 32007, i32 43604}
!764 = !{!"branch_weights", i32 21, i32 31987}
!765 = !{!"branch_weights", i32 30223, i32 1765}
!766 = !{!"branch_weights", i32 830, i32 936}
!767 = !{!"branch_weights", i32 905, i32 32}
!768 = !{!"branch_weights", i32 1, i32 32}
!769 = !{!"branch_weights", i32 2, i32 31}
!770 = !{!"branch_weights", i32 16295, i32 15663}
!771 = !{!"branch_weights", i32 3418, i32 12878}
!772 = !{!"branch_weights", i32 2057038491, i32 90445157}
!773 = !{!"branch_weights", i32 20239, i32 1}
!774 = !{!"branch_weights", i32 7553, i32 12687}
!775 = !{!"branch_weights", i32 397994, i32 76993}
!776 = distinct !{!776, !372}
!777 = !{!"branch_weights", i32 353436, i32 1}
!778 = !{!"branch_weights", i32 252722, i32 100704}
!779 = !{!"branch_weights", i32 100704, i32 1}
!780 = !{!"branch_weights", i32 1, i32 100703}
!781 = !{!"branch_weights", i32 0, i32 1}
!782 = distinct !{!782, !372}
!783 = !{!"branch_weights", i32 57346, i32 43359}
!784 = !{!"branch_weights", i32 29974, i32 13386}
!785 = !{!"branch_weights", i32 13195056, i32 95734094}
!786 = !{!"branch_weights", i32 1881, i32 1752}
!787 = !{!"branch_weights", i32 1737, i32 16}
!788 = !{!"branch_weights", i32 1, i32 16}
!789 = !{!"branch_weights", i32 6, i32 11}
!790 = !{!"branch_weights", i32 100694, i32 1}
!791 = !{!"branch_weights", i32 1350009557, i32 797474091}
!792 = !{!"branch_weights", i32 37393, i32 1}
!793 = !{!"branch_weights", i32 36060, i32 1334}
!794 = !{!"branch_weights", i32 100704, i32 0}
!795 = distinct !{!795, !372}
!796 = !{!"function_entry_count", i64 1290374}
!797 = !{!"dse.c:canon_address"}
!798 = !{!799, !329, i64 1184}
!799 = !{!"gcc_target", !800, i64 0, !802, i64 368, !803, i64 664, !334, i64 744, !329, i64 752, !329, i64 760, !329, i64 768, !329, i64 776, !329, i64 784, !329, i64 792, !329, i64 800, !329, i64 808, !329, i64 816, !329, i64 824, !329, i64 832, !329, i64 840, !329, i64 848, !329, i64 856, !329, i64 864, !329, i64 872, !329, i64 880, !329, i64 888, !329, i64 896, !329, i64 904, !329, i64 912, !329, i64 920, !329, i64 928, !329, i64 936, !329, i64 944, !329, i64 952, !329, i64 960, !329, i64 968, !329, i64 976, !329, i64 984, !329, i64 992, !329, i64 1000, !329, i64 1008, !329, i64 1016, !329, i64 1024, !329, i64 1032, !329, i64 1040, !329, i64 1048, !329, i64 1056, !359, i64 1064, !359, i64 1072, !329, i64 1080, !329, i64 1088, !329, i64 1096, !329, i64 1104, !329, i64 1112, !329, i64 1120, !329, i64 1128, !329, i64 1136, !329, i64 1144, !329, i64 1152, !329, i64 1160, !329, i64 1168, !804, i64 1176, !329, i64 1232, !329, i64 1240, !329, i64 1248, !329, i64 1256, !329, i64 1264, !329, i64 1272, !329, i64 1280, !329, i64 1288, !329, i64 1296, !329, i64 1304, !329, i64 1312, !329, i64 1320, !329, i64 1328, !329, i64 1336, !329, i64 1344, !329, i64 1352, !329, i64 1360, !329, i64 1368, !329, i64 1376, !329, i64 1384, !329, i64 1392, !329, i64 1400, !329, i64 1408, !329, i64 1416, !329, i64 1424, !329, i64 1432, !329, i64 1440, !329, i64 1448, !329, i64 1456, !359, i64 1464, !805, i64 1472, !329, i64 1664, !329, i64 1672, !329, i64 1680, !329, i64 1688, !329, i64 1696, !329, i64 1704, !329, i64 1712, !329, i64 1720, !329, i64 1728, !329, i64 1736, !329, i64 1744, !329, i64 1752, !329, i64 1760, !329, i64 1768, !329, i64 1776, !806, i64 1784, !807, i64 1792, !808, i64 1896, !809, i64 1968, !329, i64 2016, !330, i64 2024, !330, i64 2025, !330, i64 2026, !330, i64 2027, !330, i64 2028, !330, i64 2029, !330, i64 2030, !330, i64 2031, !330, i64 2032, !330, i64 2033, !330, i64 2034, !330, i64 2035}
!800 = !{!"asm_out", !329, i64 0, !329, i64 8, !329, i64 16, !801, i64 24, !801, i64 56, !329, i64 88, !329, i64 96, !329, i64 104, !329, i64 112, !329, i64 120, !329, i64 128, !329, i64 136, !329, i64 144, !329, i64 152, !329, i64 160, !329, i64 168, !329, i64 176, !329, i64 184, !329, i64 192, !329, i64 200, !329, i64 208, !329, i64 216, !329, i64 224, !329, i64 232, !329, i64 240, !329, i64 248, !329, i64 256, !329, i64 264, !329, i64 272, !329, i64 280, !329, i64 288, !329, i64 296, !329, i64 304, !329, i64 312, !329, i64 320, !329, i64 328, !329, i64 336, !329, i64 344, !329, i64 352, !329, i64 360}
!801 = !{!"asm_int_op", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24}
!802 = !{!"sched", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !329, i64 64, !329, i64 72, !329, i64 80, !329, i64 88, !329, i64 96, !329, i64 104, !329, i64 112, !329, i64 120, !329, i64 128, !329, i64 136, !329, i64 144, !329, i64 152, !329, i64 160, !329, i64 168, !329, i64 176, !329, i64 184, !329, i64 192, !329, i64 200, !329, i64 208, !329, i64 216, !329, i64 224, !329, i64 232, !329, i64 240, !329, i64 248, !329, i64 256, !329, i64 264, !329, i64 272, !329, i64 280, !329, i64 288}
!803 = !{!"vectorize", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !329, i64 64, !329, i64 72}
!804 = !{!"addr_space", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48}
!805 = !{!"calls", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !329, i64 64, !329, i64 72, !329, i64 80, !329, i64 88, !329, i64 96, !329, i64 104, !329, i64 112, !329, i64 120, !329, i64 128, !329, i64 136, !329, i64 144, !329, i64 152, !329, i64 160, !329, i64 168, !329, i64 176, !329, i64 184}
!806 = !{!"c", !329, i64 0}
!807 = !{!"cxx", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !329, i64 64, !329, i64 72, !329, i64 80, !329, i64 88, !329, i64 96}
!808 = !{!"emutls", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40, !329, i64 48, !329, i64 56, !330, i64 64, !330, i64 65}
!809 = !{!"target_option_hooks", !329, i64 0, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32, !329, i64 40}
!810 = !{!"branch_weights", i32 249518, i32 1040858}
!811 = !{!679, !330, i64 32}
!812 = !{!"branch_weights", i32 1290375, i32 1}
!813 = !{!"branch_weights", i32 1290375, i32 792562}
!814 = !{!"branch_weights", i32 1, i32 792562}
!815 = !{!"branch_weights", i32 2082936, i32 1}
!816 = !{!"branch_weights", i32 37406, i32 2045531}
!817 = !{!"branch_weights", i32 1256794, i32 826143}
!818 = !{!"branch_weights", i32 1216986, i32 39809}
!819 = !{!"branch_weights", i32 310010, i32 1772927}
!820 = !{!"branch_weights", i32 2147482437, i32 1211}
!821 = !{!"branch_weights", i32 1585037, i32 497900}
!822 = !{!"branch_weights", i32 497900, i32 1}
!823 = !{!"branch_weights", i32 1290460, i32 792476}
!824 = distinct !{!824, !372}
!825 = !{!"branch_weights", i32 17549, i32 774928}
!826 = !{!"branch_weights", i32 17549, i32 1}
!827 = !{!"branch_weights", i32 774928, i32 1}
!828 = !{!829, !334, i64 4}
!829 = !{!"cselib_val_struct", !334, i64 0, !334, i64 4, !329, i64 8, !329, i64 16, !329, i64 24, !329, i64 32}
!830 = !{!829, !334, i64 0}
!831 = !{!"function_entry_count", i64 261}
!832 = !{!"dse.c:all_positions_needed_p"}
!833 = !{!"branch_weights", i32 262, i32 1}
!834 = distinct !{!834, !372}
!835 = !{!"function_entry_count", i64 46}
!836 = !{!"dse.c:replace_read"}
!837 = !{!"branch_weights", i32 1, i32 47}
!838 = !{!"branch_weights", i32 47, i32 1}
!839 = !{!"branch_weights", i32 47, i32 4}
!840 = distinct !{!840, !372}
!841 = !{!"branch_weights", i32 46, i32 2}
!842 = !{!"branch_weights", i32 6, i32 41}
!843 = !{!"branch_weights", i32 41, i32 1}
!844 = !{!"dse.c:clear_alias_set_lookup"}
!845 = !{!"function_entry_count", i64 2082935}
!846 = !{!"dse.c:const_or_frame_p"}
!847 = !{!"branch_weights", i32 99136, i32 1, i32 61, i32 1, i32 1, i32 298328, i32 1, i32 1685414}
!848 = !{!"branch_weights", i32 303880828, i32 -1846453507}
!849 = !{!"branch_weights", i32 13435, i32 1485902}
!850 = !{!"branch_weights", i32 1, i32 13435}
!851 = !{!"function_entry_count", i64 521628}
!852 = !{!"dse.c:lowpart_bitmask"}
!853 = !{!"function_entry_count", i64 62}
!854 = !{!"dse.c:get_stored_val"}
!855 = !{!"branch_weights", i32 1, i32 63}
!856 = !{!"branch_weights", i32 2045222522, i32 102261126}
!857 = !{!"branch_weights", i32 42, i32 20}
!858 = !{!"branch_weights", i32 4, i32 17}
!859 = !{!"branch_weights", i32 4, i32 1}
!860 = !{!"branch_weights", i32 544225477, i32 1603258171}
!861 = !{!"function_entry_count", i64 52}
!862 = !{!"dse.c:look_for_hardregs"}
!863 = !{!"branch_weights", i32 53, i32 1}
!864 = !{!"branch_weights", i32 3, i32 51}
!865 = !{!"branch_weights", i32 1, i32 191}
!866 = distinct !{!866, !372}
!867 = !{!"function_entry_count", i64 2}
!868 = !{!"dse.c:find_shift_sequence"}
!869 = !{!"branch_weights", i32 127, i32 1}
!870 = !{!"branch_weights", i32 3, i32 1}
!871 = !{!"branch_weights", i32 5, i32 3}
!872 = !{!"branch_weights", i32 1, i32 3}
!873 = !{!"branch_weights", i32 7, i32 9}
!874 = !{!"branch_weights", i32 31, i32 1}
!875 = !{!"branch_weights", i32 3, i32 0}
!876 = distinct !{!876, !372}
!877 = !{!"branch_weights", i32 257, i32 127}
!878 = distinct !{!878, !372}
!879 = !{!"function_entry_count", i64 54}
!880 = !{!"dse.c:rhs_regno"}
!881 = !{!"function_entry_count", i64 16092}
!882 = !{!"dse.c:clear_rhs_from_active_local_stores"}
!883 = !{!"branch_weights", i32 16037, i32 56}
!884 = !{!"branch_weights", i32 1, i32 56}
!885 = distinct !{!885, !372}
!886 = !{!"branch_weights", i32 56, i32 0}
!887 = distinct !{!887, !372}
!888 = !{!"function_entry_count", i64 99875}
!889 = !{!"dse.c:set_usage_bits"}
!890 = !{!"branch_weights", i32 -1801188421, i32 49938}
!891 = !{!"branch_weights", i32 258432, i32 124031}
!892 = !{!"branch_weights", i32 149996, i32 232467}
!893 = !{!"branch_weights", i32 93064, i32 56933}
!894 = !{!"branch_weights", i32 9124, i32 83941}
!895 = !{!"branch_weights", i32 40449, i32 16485}
!896 = !{!"branch_weights", i32 282587, i32 99875}
!897 = distinct !{!897, !372}
!898 = !{!"dse.c:set_all_positions_unneeded"}
!899 = distinct !{!899, !372}
!900 = !{!"function_entry_count", i64 1555}
!901 = !{!"dse.c:set_position_unneeded"}
!902 = !{!"branch_weights", i32 1556, i32 1}
!903 = !{!"function_entry_count", i64 590718}
!904 = !{!"dse.c:any_positions_needed_p"}
!905 = !{!"dse.c:single_succ_edge"}
!906 = !{!"branch_weights", i32 1, i32 192192}
!907 = !{!"function_entry_count", i64 787883}
!908 = !{!"dse.c:VEC_edge_base_index"}
!909 = !{!"function_entry_count", i64 646}
!910 = !{!"dse.c:check_for_inc_dec"}
!911 = !{!"branch_weights", i32 647, i32 1}
!912 = !{!"dse.c:replace_inc_dec_mem"}
!913 = !{!914, !334, i64 0}
!914 = !{!"insn_size", !334, i64 0, !329, i64 8}
!915 = !{!914, !329, i64 8}
!916 = !{!"dse.c:replace_inc_dec"}
!917 = !{!"function_entry_count", i64 35520666}
!918 = !{!"dse.c:VEC_group_info_t_base_iterate"}
!919 = !{!"branch_weights", i32 967, i32 35519701}
!920 = !{!"branch_weights", i32 34689464, i32 830238}
!921 = !{!"function_entry_count", i64 198734}
!922 = !{!"dse.c:bmp_iter_set_init"}
!923 = !{!924, !329, i64 0}
!924 = !{!"", !329, i64 0, !329, i64 8, !334, i64 16, !359, i64 24}
!925 = !{!924, !329, i64 8}
!926 = !{!"branch_weights", i32 191506, i32 7230}
!927 = !{!928, !334, i64 16}
!928 = !{!"bitmap_element_def", !329, i64 0, !329, i64 8, !334, i64 16, !330, i64 24}
!929 = !{!"branch_weights", i32 198676, i32 60}
!930 = !{!924, !334, i64 16}
!931 = !{!924, !359, i64 24}
!932 = !{!"function_entry_count", i64 309221}
!933 = !{!"dse.c:bmp_iter_set"}
!934 = !{!"branch_weights", i32 199751, i32 109472}
!935 = !{!"branch_weights", i32 93613, i32 16875}
!936 = !{!"branch_weights", i32 0, i32 93613}
!937 = distinct !{!937, !372}
!938 = !{!"branch_weights", i32 1, i32 198944}
!939 = !{!"branch_weights", i32 198139, i32 1017}
!940 = !{!"branch_weights", i32 198944, i32 211}
!941 = distinct !{!941, !372}
!942 = !{!928, !329, i64 0}
!943 = !{!"branch_weights", i32 198735, i32 211}
!944 = !{!"function_entry_count", i64 110487}
!945 = !{!"dse.c:bmp_iter_next"}
!946 = !{!"dse.c:dse_step3_exit_block_scan"}
!947 = !{!"branch_weights", i32 8, i32 4984}
!948 = !{!"branch_weights", i32 1, i32 4983}
!949 = !{!"branch_weights", i32 55175, i32 6633}
!950 = !{!"branch_weights", i32 2178, i32 4456}
!951 = !{!"branch_weights", i32 4983, i32 56824}
!952 = distinct !{!952, !372}
!953 = !{!"function_entry_count", i64 365569}
!954 = !{!"dse.c:dse_step3_scan"}
!955 = !{!"branch_weights", i32 365570, i32 1}
!956 = !{!"branch_weights", i32 1579117445, i32 568366203}
!957 = !{!"branch_weights", i32 268817, i32 1}
!958 = !{!"branch_weights", i32 96754, i32 1}
!959 = !{!"branch_weights", i32 160, i32 1125081}
!960 = !{!"branch_weights", i32 -352856570, i32 3501}
!961 = !{!"branch_weights", i32 1125081, i32 1}
!962 = !{!"branch_weights", i32 365569, i32 759671}
!963 = distinct !{!963, !372}
!964 = !{!"function_entry_count", i64 605590}
!965 = !{!"dse.c:mark_reachable_blocks"}
!966 = !{!"branch_weights", i32 230047, i32 375545}
!967 = !{i64 0, i64 4, !341, i64 8, i64 8, !328}
!968 = !{i64 0, i64 8, !328}
!969 = !{!"branch_weights", i32 1, i32 375544}
!970 = !{!633, !329, i64 0}
!971 = !{!"branch_weights", i32 375544, i32 220149}
!972 = distinct !{!972, !372}
!973 = !{!"dse.c:sbitmap_iter_init"}
!974 = !{!975, !334, i64 12}
!975 = !{!"", !329, i64 0, !334, i64 8, !334, i64 12, !334, i64 16, !359, i64 24}
!976 = !{!975, !334, i64 16}
!977 = !{!470, !334, i64 12}
!978 = !{!975, !334, i64 8}
!979 = !{!975, !329, i64 0}
!980 = !{!"branch_weights", i32 1, i32 4991}
!981 = !{!"function_entry_count", i64 11594}
!982 = !{!"dse.c:sbitmap_iter_cond"}
!983 = !{!975, !359, i64 24}
!984 = !{!"branch_weights", i32 6604, i32 1}
!985 = !{!"branch_weights", i32 4240, i32 4991}
!986 = !{!"branch_weights", i32 2626, i32 6604}
!987 = distinct !{!987, !372}
!988 = !{!"branch_weights", i32 51218, i32 6604}
!989 = distinct !{!989, !372}
!990 = !{!"function_entry_count", i64 6604}
!991 = !{!"dse.c:sbitmap_iter_next"}
!992 = !{!"dse.c:find_insn_before_first_wild_read"}
!993 = !{!"branch_weights", i32 1, i32 360020}
!994 = !{!"branch_weights", i32 1541529, i32 137425}
!995 = !{!"branch_weights", i32 5550, i32 131876}
!996 = !{!"branch_weights", i32 360020, i32 1318933}
!997 = distinct !{!997, !372}
!998 = !{!"branch_weights", i32 1603456343, i32 544027305}
!999 = !{!"dse.c:scan_stores_spill"}
!1000 = distinct !{!1000, !372}
!1001 = !{!"dse.c:scan_reads_spill"}
!1002 = distinct !{!1002, !372}
!1003 = !{!"function_entry_count", i64 2803542}
!1004 = !{!"dse.c:scan_stores_nospill"}
!1005 = !{!"branch_weights", i32 2638161, i32 165382}
!1006 = !{!"branch_weights", i32 8526, i32 156857}
!1007 = !{!"branch_weights", i32 156856, i32 1}
!1008 = !{!"branch_weights", i32 4549, i32 595274}
!1009 = !{!"branch_weights", i32 417073, i32 178202}
!1010 = !{!"branch_weights", i32 442966, i32 156856}
!1011 = distinct !{!1011, !372}
!1012 = !{!"branch_weights", i32 165382, i32 0}
!1013 = distinct !{!1013, !372}
!1014 = !{!"function_entry_count", i64 1567237}
!1015 = !{!"dse.c:scan_reads_nospill"}
!1016 = !{!"branch_weights", i32 1564667, i32 2572}
!1017 = !{!"branch_weights", i32 1, i32 2571}
!1018 = !{!"branch_weights", i32 79349, i32 6920}
!1019 = !{!"branch_weights", i32 4380, i32 2541}
!1020 = !{!"branch_weights", i32 2020, i32 522}
!1021 = !{!"branch_weights", i32 2571, i32 83697}
!1022 = distinct !{!1022, !372}
!1023 = !{!"branch_weights", i32 783503, i32 783735}
!1024 = !{!"branch_weights", i32 1, i32 783734}
!1025 = !{!"branch_weights", i32 32114035, i32 2129147}
!1026 = !{!"branch_weights", i32 204858, i32 1924290}
!1027 = !{!"branch_weights", i32 86, i32 204773}
!1028 = !{!"branch_weights", i32 78, i32 9}
!1029 = !{!"branch_weights", i32 204772, i32 1}
!1030 = !{!"branch_weights", i32 91702, i32 705473}
!1031 = !{!"branch_weights", i32 501236, i32 204238}
!1032 = !{!"branch_weights", i32 592402, i32 204772}
!1033 = distinct !{!1033, !372}
!1034 = !{!"branch_weights", i32 1293209, i32 631082}
!1035 = !{!"branch_weights", i32 107582, i32 1185628}
!1036 = !{!"branch_weights", i32 732264, i32 453365}
!1037 = !{!"branch_weights", i32 783734, i32 33459447}
!1038 = distinct !{!1038, !372}
!1039 = !{!"branch_weights", i32 783735, i32 0}
!1040 = distinct !{!1040, !372}
!1041 = !{!"function_entry_count", i64 1421972}
!1042 = !{!"dse.c:get_bitmap_index"}
!1043 = !{!"branch_weights", i32 1098770, i32 323204}
!1044 = !{!"branch_weights", i32 1097138, i32 1633}
!1045 = !{!"branch_weights", i32 262270, i32 60935}
!1046 = !{!"function_entry_count", i64 375544}
!1047 = !{!"dse.c:RESET_BIT"}
!1048 = !{!"branch_weights", i32 375545, i32 1}
!1049 = !{!"dse.c:ei_start_1"}
!1050 = !{!"function_entry_count", i64 971236}
!1051 = !{!"dse.c:ei_cond"}
!1052 = !{!"branch_weights", i32 595693, i32 375545}
!1053 = !{!"function_entry_count", i64 595692}
!1054 = !{!"dse.c:ei_next"}
!1055 = !{!"branch_weights", i32 1, i32 595693}
!1056 = !{!"branch_weights", i32 595693, i32 1}
!1057 = !{!1058, !334, i64 0}
!1058 = !{!"", !334, i64 0, !329, i64 8}
!1059 = !{!"dse.c:ei_end_p"}
!1060 = !{!"branch_weights", i32 4991, i32 966247}
!1061 = !{!"dse.c:ei_edge"}
!1062 = !{!"function_entry_count", i64 4320250}
!1063 = !{!"dse.c:ei_container"}
!1064 = !{!"branch_weights", i32 1, i32 4320251}
!1065 = !{!"function_entry_count", i64 9898}
!1066 = !{!"dse.c:dse_confluence_0"}
!1067 = !{!"branch_weights", i32 4991, i32 4909}
!1068 = !{!"branch_weights", i32 4909, i32 1}
!1069 = !{!"function_entry_count", i64 1234532}
!1070 = !{!"dse.c:dse_confluence_n"}
!1071 = !{!"branch_weights", i32 56063, i32 1178471}
!1072 = !{!"branch_weights", i32 365647, i32 812825}
!1073 = !{!"function_entry_count", i64 762505}
!1074 = !{!"dse.c:dse_transfer_function"}
!1075 = !{!"branch_weights", i32 206029, i32 556478}
!1076 = !{!"branch_weights", i32 17707, i32 538772}
!1077 = !{!"branch_weights", i32 268817, i32 269956}
!1078 = !{!"branch_weights", i32 106734, i32 99296}
!1079 = !{!"dse.c:VEC_group_info_t_heap_free"}
!1080 = !{!"branch_weights", i32 323, i32 12983}
