; ModuleID = 'lto-streamer-in.c'
source_filename = "lto-streamer-in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
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
%struct.lto_input_block = type { ptr, i32, i32 }
%struct.lto_function_header = type { %struct.lto_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.bitpack_d = type { i64, i64, ptr }
%struct.data_in = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.alias_pair = type { ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.string_slot = type { ptr, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.VEC_ld_plugin_symbol_resolution_t_base = type { i32, i32, [1 x i32] }

@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"lto-streamer-in.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@lto_stats = external local_unnamed_addr global %struct.lto_stats_d, align 8
@file_name_hash_table = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"bytecode stream: expected tag %s instead of %s\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"bytecode stream: tag %s is not in the expected range [%s, %s]\00", align 1
@lto_init_eh.eh_initialized_p = internal unnamed_addr global i1 false, align 1
@flag_exceptions = external local_unnamed_addr global i32, align 4
@line_table = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"bytecode stream: found non-null terminated string\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"bytecode stream: string too long for the string table\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"bytecode stream: unknown GIMPLE statement tag %s\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"bytecode stream: unexpected tag %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@alias_pairs = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [55 x i8] c"bytecode stream: tried to jump backwards in the stream\00", align 1
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.12 = private unnamed_addr constant [38 x i8] c"target specific builtin not available\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.13 = private unnamed_addr constant [39 x i8] c"optimization options not supported yet\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"target optimization options not supported yet\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_input_function_body(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !5
  tail call fastcc void @lto_read_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_read_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.lto_input_block, align 8
  %6 = alloca %struct.lto_input_block, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.lto_function_header, ptr %2, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = add nsw i32 %8, 36
  %10 = getelementptr inbounds %struct.lto_function_header, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = add nsw i32 %9, %11
  %13 = getelementptr inbounds i8, ptr %2, i64 36
  store ptr %13, ptr %5, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.lto_input_block, ptr %5, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.lto_input_block, ptr %5, i64 0, i32 2
  store i32 %8, ptr %15, align 4, !tbaa !18
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  store ptr %17, ptr %6, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.lto_input_block, ptr %6, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.lto_input_block, ptr %6, i64 0, i32 2
  store i32 %11, ptr %19, align 4, !tbaa !18
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = getelementptr inbounds %struct.lto_function_header, ptr %2, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !19
  %24 = tail call ptr @lto_data_in_create(ptr noundef %0, ptr noundef %21, i32 noundef %23, ptr noundef null) #19
  %25 = load i16, ptr %2, align 4, !tbaa !20
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !21
  %29 = sext i16 %28 to i32
  tail call void @lto_check_version(i32 noundef %26, i32 noundef %29) #21
  %30 = icmp eq i32 %3, 1
  br i1 %30, label %31, label %46

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  tail call void @push_cfun(ptr noundef %33) #21
  tail call void @init_tree_ssa(ptr noundef %33) #21
  %34 = tail call ptr @lto_get_function_in_decl_state(ptr noundef %0, ptr noundef %1) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1485, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %31, %36
  store ptr %34, ptr %0, align 8, !tbaa !23
  call fastcc void @input_cfg(ptr noundef nonnull %5, ptr noundef %33) #19
  call fastcc void @input_function(ptr noundef nonnull %1, ptr noundef %24, ptr noundef nonnull %6) #19
  %38 = load ptr, ptr @cfun, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.gimple_df, ptr %40, i64 0, i32 10
  %42 = load i8, ptr %41, align 8
  %43 = or i8 %42, 1
  store i8 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  store ptr %45, ptr %0, align 8, !tbaa !23
  call void @pop_cfun() #21
  br label %47

46:                                               ; preds = %4
  call fastcc void @input_alias_pairs(ptr noundef nonnull %6, ptr noundef %24) #19
  br label %47

47:                                               ; preds = %46, %37
  call fastcc void @clear_line_info(ptr noundef %24) #19
  call void @lto_data_in_delete(ptr noundef %24) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_input_constructors_and_inits(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @lto_read_body(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_input_bitpack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @bitpack_create() #21
  %3 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %4 = trunc i64 %3 to i32
  %5 = icmp ult i32 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1867, ptr noundef nonnull @.str.1) #21
  br label %9

7:                                                ; preds = %1
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %7
  %10 = getelementptr inbounds %struct.bitpack_d, ptr %2, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i32 [ 0, %9 ], [ %14, %11 ]
  %13 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  tail call fastcc void @VEC_bitpack_word_t_heap_safe_push(ptr noundef nonnull %10, i64 noundef %13) #19
  %14 = add nuw i32 %12, 1
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %11, !llvm.loop !28

16:                                               ; preds = %11, %7
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @bitpack_create() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitpack_word_t_heap_safe_push(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_bitpack_word_t_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_bitpack_word_t_base_quick_push(ptr noundef %3, i64 noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lto_input_tree(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %4 = icmp ult i32 %3, 249
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2700, ptr noundef nonnull @.str.1) #21
  br label %14

6:                                                ; preds = %2
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %6
  %9 = add nsw i32 %3, -238
  %10 = icmp ult i32 %9, 11
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = tail call fastcc ptr @lto_input_tree_ref(ptr noundef %0, ptr noundef %1, ptr noundef %12, i32 noundef %3) #19
  br label %36

14:                                               ; preds = %5, %8
  switch i32 %3, label %29 [
    i32 236, label %15
    i32 227, label %17
    i32 237, label %19
  ]

15:                                               ; preds = %14
  %16 = tail call fastcc ptr @lto_get_pickled_tree(ptr noundef %0, ptr noundef %1) #19
  br label %36

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @lto_get_builtin_tree(ptr noundef %0, ptr noundef %1) #19
  br label %36

19:                                               ; preds = %14
  %20 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %21 = load ptr, ptr %1, align 8, !tbaa !30
  %22 = trunc i64 %20 to i32
  %23 = tail call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef %21, i32 noundef %22) #19
  %24 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %25 = load ptr, ptr %1, align 8, !tbaa !30
  %26 = trunc i64 %24 to i32
  %27 = tail call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef %25, i32 noundef %26) #19
  %28 = tail call zeroext i8 @varpool_extra_name_alias(ptr noundef %23, ptr noundef %27) #21
  br label %36

29:                                               ; preds = %14
  %30 = tail call fastcc i32 @lto_tree_code_to_tag(i32 noundef 23) #19
  %31 = icmp eq i32 %3, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @lto_input_integer_cst(ptr noundef %0, ptr noundef %1) #19
  br label %36

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @lto_read_tree(ptr noundef %0, ptr noundef %1, i32 noundef %3) #19
  br label %36

36:                                               ; preds = %6, %11, %17, %32, %34, %19, %15
  %37 = phi ptr [ %13, %11 ], [ %16, %15 ], [ %18, %17 ], [ %23, %19 ], [ %33, %32 ], [ %35, %34 ], [ null, %6 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @input_record_start(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_input_tree_ref(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  tail call fastcc void @lto_tag_check_range(i32 noundef %3, i32 noundef 238, i32 noundef 248) #19
  switch i32 %3, label %48 [
    i32 245, label %5
    i32 243, label %10
    i32 238, label %18
    i32 239, label %23
    i32 244, label %28
    i32 241, label %33
    i32 248, label %38
    i32 242, label %38
    i32 246, label %38
    i32 247, label %38
    i32 240, label %38
  ]

5:                                                ; preds = %4
  %6 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %7 = load ptr, ptr %1, align 8, !tbaa !30
  %8 = trunc i64 %6 to i32
  %9 = tail call fastcc ptr @lto_file_decl_data_get_type(ptr noundef %7, i32 noundef %8) #19
  br label %49

10:                                               ; preds = %4
  %11 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %12 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = trunc i64 %11 to i32
  %17 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %15, i32 noundef %16) #19
  br label %49

18:                                               ; preds = %4
  %19 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %20 = load ptr, ptr %1, align 8, !tbaa !30
  %21 = trunc i64 %19 to i32
  %22 = tail call fastcc ptr @lto_file_decl_data_get_field_decl(ptr noundef %20, i32 noundef %21) #19
  br label %49

23:                                               ; preds = %4
  %24 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %25 = load ptr, ptr %1, align 8, !tbaa !30
  %26 = trunc i64 %24 to i32
  %27 = tail call fastcc ptr @lto_file_decl_data_get_fn_decl(ptr noundef %25, i32 noundef %26) #19
  br label %49

28:                                               ; preds = %4
  %29 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %30 = load ptr, ptr %1, align 8, !tbaa !30
  %31 = trunc i64 %29 to i32
  %32 = tail call fastcc ptr @lto_file_decl_data_get_type_decl(ptr noundef %30, i32 noundef %31) #19
  br label %49

33:                                               ; preds = %4
  %34 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %35 = load ptr, ptr %1, align 8, !tbaa !30
  %36 = trunc i64 %34 to i32
  %37 = tail call fastcc ptr @lto_file_decl_data_get_namespace_decl(ptr noundef %35, i32 noundef %36) #19
  br label %49

38:                                               ; preds = %4, %4, %4, %4, %4
  %39 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %40 = load ptr, ptr %1, align 8, !tbaa !30
  %41 = trunc i64 %39 to i32
  %42 = tail call fastcc ptr @lto_file_decl_data_get_var_decl(ptr noundef %40, i32 noundef %41) #19
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = tail call ptr @varpool_node(ptr noundef nonnull %42) #21
  tail call void @varpool_mark_needed_node(ptr noundef %47) #21
  br label %53

48:                                               ; preds = %4
  unreachable

49:                                               ; preds = %33, %28, %23, %18, %10, %5
  %50 = phi ptr [ %37, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %10 ], [ %9, %5 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #21
  br label %53

53:                                               ; preds = %38, %46, %49, %52
  %54 = phi ptr [ %50, %49 ], [ null, %52 ], [ %42, %46 ], [ %42, %38 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @lto_get_pickled_tree(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.lto_input_block, align 8
  %4 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %5 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i64 %7, 4294967296
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2553, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %2, %10
  %12 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = trunc i64 %4 to i32
  %15 = tail call ptr @lto_streamer_cache_get(ptr noundef %13, i32 noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %18 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !17
  %20 = zext i32 %19 to i64
  %21 = icmp ugt i64 %7, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.11) #21
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %0, align 8, !tbaa !15
  store ptr %24, ptr %3, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.lto_input_block, ptr %3, i64 0, i32 1
  store i32 %8, ptr %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !18
  %28 = getelementptr inbounds %struct.lto_input_block, ptr %3, i64 0, i32 2
  store i32 %27, ptr %28, align 4, !tbaa !18
  %29 = call ptr @lto_input_tree(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %11, %23
  %32 = phi ptr [ %29, %23 ], [ %15, %11 ]
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = call fastcc i32 @lto_tag_to_tree_code(i32 noundef %6) #19
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %31, %23
  %39 = phi ptr [ %32, %31 ], [ null, %23 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2574, ptr noundef nonnull @.str.1) #21
  br label %40

40:                                               ; preds = %31, %38
  %41 = phi ptr [ %32, %31 ], [ %39, %38 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_get_builtin_tree(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2593, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  switch i32 %4, label %29 [
    i32 3, label %12
    i32 2, label %21
  ]

12:                                               ; preds = %8
  %13 = icmp ult i32 %10, 721
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2602, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %12, %14
  %16 = and i64 %9, 4294967295
  %17 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2604, ptr noundef nonnull @.str.1) #21
  br label %30

21:                                               ; preds = %8
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 24), align 8, !tbaa !37
  %23 = tail call ptr %22(i32 noundef %10, i8 noundef zeroext 1) #21
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr @global_trees, align 16
  %26 = icmp eq ptr %23, %25
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12) #21
  br label %30

29:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2613, ptr noundef nonnull @.str.1) #21
  br label %30

30:                                               ; preds = %21, %20, %15, %29, %28
  %31 = phi ptr [ %18, %15 ], [ null, %20 ], [ %23, %28 ], [ undef, %29 ], [ %23, %21 ]
  %32 = tail call fastcc ptr @input_string(ptr noundef %1, ptr noundef %0) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @set_builtin_user_assembler_name(ptr noundef %31, ptr noundef nonnull %32) #21
  br label %35

35:                                               ; preds = %34, %30
  %36 = trunc i64 %11 to i32
  %37 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  %39 = tail call zeroext i8 @lto_streamer_cache_insert_at(ptr noundef %38, ptr noundef %31, i32 noundef %36) #21
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_var_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1044, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @varpool_extra_name_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @lto_tree_code_to_tag(i32 noundef %0) unnamed_addr #3 {
  %2 = add i32 %0, 1
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_input_integer_cst(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %4 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #21
  %5 = icmp eq i8 %4, 0
  %6 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %7 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %8 = tail call ptr @build_int_cst_wide(ptr noundef %3, i64 noundef %6, i64 noundef %7) #21
  br i1 %5, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @copy_node_stat(ptr noundef %8) #21
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 134217728
  store i64 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %10, %9 ], [ %8, %2 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @lto_read_tree(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = call fastcc ptr @lto_materialize_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #19
  tail call fastcc void @lto_input_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef %5) #19
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 29
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @lto_stream_as_builtin_p(ptr noundef nonnull %5) #19, !range !53
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2642, ptr noundef nonnull @.str.1) #21
  %13 = load i64, ptr %5, align 8
  br label %14

14:                                               ; preds = %12, %9, %3
  %15 = phi i64 [ %13, %12 ], [ %6, %9 ], [ %6, %3 ]
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %24 [
    i16 32, label %17
    i16 29, label %18
  ]

17:                                               ; preds = %14
  tail call fastcc void @lto_register_var_decl_in_symtab(ptr noundef %1, ptr noundef nonnull %5) #19
  br label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 6144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @lto_register_function_decl_in_symtab(ptr noundef %1, ptr noundef nonnull %5) #19
  br label %24

24:                                               ; preds = %14, %18, %23, %17
  %25 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_init_reader() local_unnamed_addr #0 {
  tail call void @lto_streamer_init() #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1664) @lto_stats, i8 0, i64 1664, i1 false)
  tail call void @bitmap_obstack_initialize(ptr noundef null) #21
  %1 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @hash_string_slot_node, ptr noundef nonnull @eq_string_slot_node, ptr noundef nonnull @free) #21
  store ptr %1, ptr @file_name_hash_table, align 8, !tbaa !5
  tail call void @gimple_register_cfg_hooks() #21
  ret void
}

; Function Attrs: optsize
declare void @lto_streamer_init() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_string_slot_node(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = tail call i32 @htab_hash_string(ptr noundef %2) #21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_string_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #19
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lto_data_in_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #21
  store ptr %0, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 9
  store ptr %3, ptr %8, align 8, !tbaa !58
  %9 = tail call ptr @lto_streamer_cache_create() #21
  %10 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 10
  store ptr %9, ptr %10, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_streamer_cache_create() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lto_data_in_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 9
  tail call fastcc void @VEC_ld_plugin_symbol_resolution_t_heap_free(ptr noundef nonnull %2) #19
  %3 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  tail call void @lto_streamer_cache_delete(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  tail call void @free(ptr noundef %6) #19
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ld_plugin_symbol_resolution_t_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @lto_streamer_cache_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_check_version(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_get_function_in_decl_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_cfg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @init_empty_tree_cfg_for_function(ptr noundef %1) #21
  tail call void @init_ssa_operands() #21
  %3 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 7
  store i32 %4, ptr %7, align 8, !tbaa !61
  %8 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr %5, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  store i32 %9, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %13) #19
  %15 = icmp ult i32 %14, %9
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %12, i32 noundef %9) #19
  %17 = load ptr, ptr %5, align 8, !tbaa !60
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi ptr [ %17, %16 ], [ %10, %2 ]
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %21) #19
  %23 = icmp ult i32 %22, %9
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %20, i32 noundef %9) #19
  br label %25

25:                                               ; preds = %24, %18
  %26 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %70, label %29

29:                                               ; preds = %25, %66
  %30 = phi i32 [ %68, %66 ], [ %27, %25 ]
  %31 = load ptr, ptr %5, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %33, i32 noundef %30) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = tail call fastcc ptr @make_new_block(ptr noundef nonnull %1, i32 noundef %30) #19
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %37, %36 ], [ %34, %29 ]
  %40 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %38, %59
  %44 = phi i32 [ %64, %59 ], [ 0, %38 ]
  %45 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %46 = trunc i64 %45 to i32
  %47 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %48 = trunc i64 %47 to i32
  %49 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %50 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %5, align 8, !tbaa !60
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %54, i32 noundef %46) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = tail call fastcc ptr @make_new_block(ptr noundef nonnull %1, i32 noundef %46) #19
  br label %59

59:                                               ; preds = %57, %43
  %60 = phi ptr [ %58, %57 ], [ %55, %43 ]
  %61 = tail call ptr @make_edge(ptr noundef %39, ptr noundef %60, i32 noundef %51) #21
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 8
  store i32 %48, ptr %62, align 4, !tbaa !66
  %63 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 9
  store i64 %49, ptr %63, align 8, !tbaa !68
  %64 = add nuw i32 %44, 1
  %65 = icmp eq i32 %64, %41
  br i1 %65, label %66, label %43, !llvm.loop !69

66:                                               ; preds = %59, %38
  %67 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %29, !llvm.loop !70

70:                                               ; preds = %66, %25
  %71 = load ptr, ptr %5, align 8, !tbaa !60
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  %73 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %88, label %76

76:                                               ; preds = %70, %76
  %77 = phi i32 [ %86, %76 ], [ %74, %70 ]
  %78 = phi ptr [ %82, %76 ], [ %72, %70 ]
  %79 = load ptr, ptr %5, align 8, !tbaa !60
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %81, i32 noundef %77) #19
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 5
  store ptr %78, ptr %83, align 8, !tbaa !72
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 6
  store ptr %82, ptr %84, align 8, !tbaa !74
  %85 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %76, !llvm.loop !75

88:                                               ; preds = %76, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_function(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call fastcc i32 @input_record_start(ptr noundef %2) #19
  tail call fastcc void @clear_line_info(ptr noundef %1) #19
  tail call void @gimple_register_cfg_hooks() #21
  tail call fastcc void @lto_tag_check(i32 noundef %8, i32 noundef 228) #19
  %9 = tail call ptr @lto_input_bitpack(ptr noundef %2) #19
  %10 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %11, 30
  %15 = and i32 %14, 1073741824
  %16 = and i32 %13, -1073741825
  %17 = or disjoint i32 %15, %16
  store i32 %17, ptr %12, align 8
  %18 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %19 = trunc i64 %18 to i32
  %20 = load i32, ptr %12, align 8
  %21 = shl i32 %19, 29
  %22 = and i32 %21, 536870912
  %23 = and i32 %20, -536870913
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %12, align 8
  %25 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %26 = trunc i64 %25 to i32
  %27 = load i32, ptr %12, align 8
  %28 = shl i32 %26, 28
  %29 = and i32 %28, 268435456
  %30 = and i32 %27, -268435457
  %31 = or disjoint i32 %29, %30
  store i32 %31, ptr %12, align 8
  %32 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %33 = trunc i64 %32 to i32
  %34 = load i32, ptr %12, align 8
  %35 = shl i32 %33, 27
  %36 = and i32 %35, 134217728
  %37 = and i32 %34, -134217729
  %38 = or disjoint i32 %36, %37
  store i32 %38, ptr %12, align 8
  %39 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr %12, align 8
  %42 = shl i32 %40, 26
  %43 = and i32 %42, 67108864
  %44 = and i32 %41, -67108865
  %45 = or disjoint i32 %43, %44
  store i32 %45, ptr %12, align 8
  %46 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %47 = trunc i64 %46 to i32
  %48 = load i32, ptr %12, align 8
  %49 = shl i32 %47, 25
  %50 = and i32 %49, 33554432
  %51 = and i32 %48, -33554433
  %52 = or disjoint i32 %50, %51
  store i32 %52, ptr %12, align 8
  %53 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %12, align 8
  %56 = shl i32 %54, 24
  %57 = and i32 %56, 16777216
  %58 = and i32 %55, -16777217
  %59 = or disjoint i32 %57, %58
  store i32 %59, ptr %12, align 8
  %60 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %61 = trunc i64 %60 to i32
  %62 = load i32, ptr %12, align 8
  %63 = shl i32 %61, 23
  %64 = and i32 %63, 8388608
  %65 = and i32 %62, -8388609
  %66 = or disjoint i32 %64, %65
  store i32 %66, ptr %12, align 8
  %67 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %68 = trunc i64 %67 to i32
  %69 = load i32, ptr %12, align 8
  %70 = shl i32 %68, 22
  %71 = and i32 %70, 4194304
  %72 = and i32 %69, -4194305
  %73 = or disjoint i32 %71, %72
  store i32 %73, ptr %12, align 8
  %74 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %75 = trunc i64 %74 to i32
  %76 = load i32, ptr %12, align 8
  %77 = shl i32 %75, 20
  %78 = and i32 %77, 1048576
  %79 = and i32 %76, -1048577
  %80 = or disjoint i32 %78, %79
  store i32 %80, ptr %12, align 8
  %81 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %82 = trunc i64 %81 to i32
  %83 = load i32, ptr %12, align 8
  %84 = shl i32 %82, 19
  %85 = and i32 %84, 524288
  %86 = and i32 %83, -524289
  %87 = or disjoint i32 %85, %86
  store i32 %87, ptr %12, align 8
  %88 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 1) #21
  %89 = trunc i64 %88 to i32
  %90 = load i32, ptr %12, align 8
  %91 = shl i32 %89, 18
  %92 = and i32 %91, 262144
  %93 = and i32 %90, -262145
  %94 = or disjoint i32 %92, %93
  store i32 %94, ptr %12, align 8
  %95 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 2) #21
  %96 = trunc i64 %95 to i32
  %97 = load i32, ptr %12, align 8
  %98 = shl i32 %96, 16
  %99 = and i32 %98, 196608
  %100 = and i32 %97, -196609
  %101 = or disjoint i32 %99, %100
  store i32 %101, ptr %12, align 8
  %102 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 8) #21
  %103 = trunc i64 %102 to i32
  %104 = load i32, ptr %12, align 8
  %105 = shl i32 %103, 8
  %106 = and i32 %105, 65280
  %107 = and i32 %104, -65281
  %108 = or disjoint i32 %106, %107
  store i32 %108, ptr %12, align 8
  %109 = tail call i64 @bp_unpack_value(ptr noundef %9, i32 noundef 8) #21
  %110 = trunc i64 %109 to i32
  %111 = load i32, ptr %12, align 8
  %112 = and i32 %110, 255
  %113 = and i32 %111, -256
  %114 = or disjoint i32 %113, %112
  store i32 %114, ptr %12, align 8
  tail call void @bitpack_delete(ptr noundef %9) #21
  %115 = tail call i64 @lto_input_uleb128(ptr noundef %2) #21
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 17
  store i32 %116, ptr %117, align 8, !tbaa !76
  %118 = tail call ptr @lto_input_tree(ptr noundef %2, ptr noundef %1) #19
  %119 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 7
  store ptr %118, ptr %119, align 8, !tbaa !77
  %120 = tail call ptr @lto_input_tree(ptr noundef %2, ptr noundef %1) #19
  %121 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 8
  store ptr %120, ptr %121, align 8, !tbaa !78
  %122 = tail call ptr @lto_input_tree(ptr noundef %2, ptr noundef %1) #19
  %123 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 9
  store ptr %122, ptr %123, align 8, !tbaa !79
  %124 = tail call ptr @lto_input_tree(ptr noundef %2, ptr noundef %1) #19
  %125 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !22
  %127 = icmp ne ptr %124, null
  %128 = icmp ne ptr %126, null
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %150

130:                                              ; preds = %3
  %131 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  br label %132

132:                                              ; preds = %130, %139
  %133 = phi ptr [ %126, %130 ], [ %146, %139 ]
  %134 = phi ptr [ %124, %130 ], [ %144, %139 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %135 = load ptr, ptr %131, align 8, !tbaa !36
  %136 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %135, ptr noundef nonnull %134, ptr noundef nonnull %4) #21
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1338, ptr noundef nonnull @.str.1) #21
  br label %139

139:                                              ; preds = %132, %138
  %140 = load ptr, ptr %131, align 8, !tbaa !36
  %141 = load i32, ptr %4, align 4, !tbaa !80
  %142 = call zeroext i8 @lto_streamer_cache_insert_at(ptr noundef %140, ptr noundef nonnull %133, i32 noundef %141) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %143 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !22
  %145 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  %147 = icmp ne ptr %144, null
  %148 = icmp ne ptr %146, null
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %132, label %150, !llvm.loop !81

150:                                              ; preds = %139, %3
  %151 = phi i1 [ %127, %3 ], [ %147, %139 ]
  %152 = phi i1 [ %128, %3 ], [ %148, %139 ]
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1342, ptr noundef nonnull @.str.1) #21
  br label %155

155:                                              ; preds = %150, %154
  call fastcc void @input_ssa_names(ptr noundef %2, ptr noundef %1, ptr noundef %7) #19
  call fastcc void @input_eh_regions(ptr noundef %2, ptr noundef %1, ptr noundef %7) #19
  %156 = call ptr @lto_input_tree(ptr noundef %2, ptr noundef %1) #19
  %157 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  store ptr %156, ptr %157, align 8, !tbaa !22
  %158 = icmp eq ptr %156, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1352, ptr noundef nonnull @.str.1) #21
  br label %160

160:                                              ; preds = %155, %159
  %161 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  store ptr null, ptr %161, align 8, !tbaa !22
  %162 = call fastcc i32 @input_record_start(ptr noundef %2) #19
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160, %164
  %165 = phi i32 [ %166, %164 ], [ %162, %160 ]
  call fastcc void @input_bb(ptr noundef %2, i32 noundef %165, ptr noundef %1, ptr noundef %7) #19
  %166 = call fastcc i32 @input_record_start(ptr noundef %2) #19
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %164, !llvm.loop !82

168:                                              ; preds = %164, %160
  call void @renumber_gimple_stmt_uids() #21
  %169 = call fastcc i32 @gimple_stmt_max_uid(ptr noundef %7) #19
  %170 = zext i32 %169 to i64
  %171 = call ptr @xcalloc(i64 noundef %170, i64 noundef 8) #21
  %172 = load ptr, ptr @cfun, align 8, !tbaa !5
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !60
  %175 = load ptr, ptr %174, align 8, !tbaa !5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %197, label %177

177:                                              ; preds = %168, %188
  %178 = phi ptr [ %190, %188 ], [ %175, %168 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %178) #19
  %179 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !53
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177, %181
  %182 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  %183 = call fastcc i32 @gimple_uid(ptr noundef %182) #19
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %171, i64 %184
  store ptr %182, ptr %185, align 8, !tbaa !5
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %186 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !53
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %181, label %188, !llvm.loop !83

188:                                              ; preds = %181, %177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !5
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %177, !llvm.loop !84

192:                                              ; preds = %188
  %193 = load ptr, ptr @cfun, align 8, !tbaa !5
  %194 = getelementptr inbounds %struct.function, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !60
  %196 = load ptr, ptr %195, align 8, !tbaa !71
  br label %197

197:                                              ; preds = %192, %168
  %198 = phi ptr [ %196, %192 ], [ null, %168 ]
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %198, i64 0, i32 1
  %200 = call fastcc ptr @ei_start_1(ptr noundef nonnull %199) #19
  %201 = call fastcc ptr @ei_edge(ptr %200) #19
  %202 = getelementptr inbounds %struct.edge_def, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !85
  %204 = call fastcc ptr @bb_seq(ptr noundef %203) #19
  call void @gimple_set_body(ptr noundef %0, ptr noundef %204) #21
  %205 = call ptr @cgraph_node(ptr noundef %0) #21
  call fastcc void @fixup_call_stmt_edges(ptr noundef %205, ptr noundef %171) #19
  call void @execute_all_ipa_stmt_fixups(ptr noundef %205, ptr noundef %171) #21
  call void @update_ssa(i32 noundef 16384) #21
  call void @free_dominance_info(i32 noundef 1) #21
  call void @free_dominance_info(i32 noundef 2) #21
  call void @free(ptr noundef %171) #19
  ret void
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_alias_pairs(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  tail call fastcc void @clear_line_info(ptr noundef %1) #19
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %3, !llvm.loop !86

6:                                                ; preds = %3
  %7 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %6, %22
  %10 = phi ptr [ %23, %22 ], [ %7, %6 ]
  %11 = tail call fastcc ptr @VEC_alias_pair_gc_safe_push() #19
  store ptr %10, ptr %11, align 8, !tbaa !87
  %12 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.alias_pair, ptr %11, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = load ptr, ptr %1, align 8, !tbaa !30
  %17 = tail call ptr @lto_get_decl_name_mapping(ptr noundef %16, ptr noundef %15) #21
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %17) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = tail call ptr @get_identifier(ptr noundef %17) #21
  store ptr %21, ptr %13, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %20, %9
  %23 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef nonnull %1) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !90

25:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_line_info(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @line_table, align 8, !tbaa !5
  %7 = tail call ptr @linemap_add(ptr noundef %6, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #21
  br label %8

8:                                                ; preds = %5, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @init_empty_tree_cfg_for_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_ssa_operands() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !92
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %3) #19
  tail call fastcc void @VEC_basic_block_gc_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = tail call fastcc ptr @VEC_basic_block_base_address(ptr noundef %5) #19
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: optsize
declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_new_block(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @alloc_block() #21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  store i32 %1, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %8, i32 noundef %1, ptr noundef %3) #19
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #21
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !22
  %11 = load ptr, ptr %5, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !95
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 13
  store i32 0, ptr %15, align 8, !tbaa !96
  %16 = tail call ptr @gimple_seq_alloc() #21
  tail call fastcc void @set_bb_seq(ptr noundef %3, ptr noundef %16) #19
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !92
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_basic_block_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !5, !nonnull !97, !noundef !97
  store i32 %1, ptr %10, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_basic_block_base_address(ptr noundef readnone %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %3, i32 noundef %1) #19, !range !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #21
  store ptr %7, ptr %0, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = load i32, ptr %0, align 8, !tbaa !92
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
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_block() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_bb_seq(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 248, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %1, ptr %10, align 8, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_tag_check(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @lto_tag_name(i32 noundef %1) #21
  %6 = tail call ptr @lto_tag_name(i32 noundef %0) #21
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.3, ptr noundef %5, ptr noundef %6) #21
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitpack_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lto_streamer_cache_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lto_streamer_cache_insert_at(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_ssa_names(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %5 = trunc i64 %4 to i32
  tail call void @init_ssanames(ptr noundef %2, i32 noundef %5) #21
  %6 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %34
  %12 = phi i32 [ %7, %9 ], [ %36, %34 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #19
  %17 = icmp ult i32 %16, %12
  br i1 %17, label %18, label %25

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %22, %18 ], [ %15, %11 ]
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %19, ptr noundef null) #19
  %20 = load ptr, ptr %10, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #19
  %24 = icmp ult i32 %23, %12
  br i1 %24, label %18, label %25, !llvm.loop !102

25:                                               ; preds = %18, %11
  %26 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #21
  %27 = icmp eq i8 %26, 0
  %28 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %29 = tail call ptr @gimple_build_nop() #21
  %30 = tail call ptr @make_ssa_name_fn(ptr noundef nonnull %2, ptr noundef %28, ptr noundef %29) #21
  br i1 %27, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  tail call void @set_default_def(ptr noundef %33, ptr noundef %30) #21
  br label %34

34:                                               ; preds = %31, %25
  %35 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %11, !llvm.loop !103

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_eh_regions(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %110, label %6

6:                                                ; preds = %3
  tail call fastcc void @lto_tag_check_range(i32 noundef %4, i32 noundef 229, i32 noundef 229) #19
  tail call fastcc void @lto_init_eh() #19
  %7 = load ptr, ptr %2, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %12 = add i64 %11, 2147483648
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 630, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %17 = trunc i64 %16 to i32
  %18 = add i64 %16, 2147483648
  %19 = icmp ult i64 %18, 4294967296
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 634, ptr noundef nonnull @.str.1) #21
  br label %21

21:                                               ; preds = %15, %20
  %22 = icmp sgt i64 %16, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = load ptr, ptr %2, align 8, !tbaa !104
  %25 = getelementptr inbounds %struct.eh_status, ptr %24, i64 0, i32 1
  tail call fastcc void @VEC_eh_region_gc_safe_grow(ptr noundef nonnull %25, i32 noundef %17) #19
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %33, %26 ]
  %28 = trunc i64 %27 to i32
  %29 = tail call fastcc ptr @input_eh_region(ptr noundef %0, ptr noundef %1, i32 noundef %28) #19
  %30 = load ptr, ptr %2, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.eh_status, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  tail call fastcc void @VEC_eh_region_base_replace(ptr noundef %32, i32 noundef %28, ptr noundef %29) #19
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %26, !llvm.loop !107

35:                                               ; preds = %26, %21
  %36 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %37 = trunc i64 %36 to i32
  %38 = add i64 %36, 2147483648
  %39 = icmp ult i64 %38, 4294967296
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 647, ptr noundef nonnull @.str.1) #21
  br label %41

41:                                               ; preds = %35, %40
  %42 = icmp sgt i64 %36, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = load ptr, ptr %2, align 8, !tbaa !104
  %45 = getelementptr inbounds %struct.eh_status, ptr %44, i64 0, i32 2
  tail call fastcc void @VEC_eh_landing_pad_gc_safe_grow(ptr noundef nonnull %45, i32 noundef %37) #19
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %53, %46 ]
  %48 = trunc i64 %47 to i32
  %49 = tail call fastcc ptr @input_eh_lp(ptr noundef %0, ptr noundef %1, i32 noundef %48) #19
  %50 = load ptr, ptr %2, align 8, !tbaa !104
  %51 = getelementptr inbounds %struct.eh_status, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !108
  tail call fastcc void @VEC_eh_landing_pad_base_replace(ptr noundef %52, i32 noundef %48, ptr noundef %49) #19
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, %36
  br i1 %54, label %55, label %46, !llvm.loop !109

55:                                               ; preds = %46, %41
  %56 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %57 = trunc i64 %56 to i32
  %58 = add i64 %56, 2147483648
  %59 = icmp ult i64 %58, 4294967296
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 660, ptr noundef nonnull @.str.1) #21
  br label %61

61:                                               ; preds = %55, %60
  %62 = icmp sgt i64 %56, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = load ptr, ptr %2, align 8, !tbaa !104
  %65 = getelementptr inbounds %struct.eh_status, ptr %64, i64 0, i32 4
  tail call fastcc void @VEC_tree_gc_safe_grow(ptr noundef nonnull %65, i32 noundef %57) #19
  br label %66

66:                                               ; preds = %63, %66
  %67 = phi i64 [ 0, %63 ], [ %73, %66 ]
  %68 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %69 = load ptr, ptr %2, align 8, !tbaa !104
  %70 = getelementptr inbounds %struct.eh_status, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !110
  %72 = trunc i64 %67 to i32
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %71, i32 noundef %72, ptr noundef %68) #19
  %73 = add nuw nsw i64 %67, 1
  %74 = icmp eq i64 %73, %56
  br i1 %74, label %75, label %66, !llvm.loop !111

75:                                               ; preds = %66, %61
  %76 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %77 = trunc i64 %76 to i32
  %78 = add i64 %76, 2147483648
  %79 = icmp ult i64 %78, 4294967296
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 673, ptr noundef nonnull @.str.1) #21
  br label %81

81:                                               ; preds = %75, %80
  %82 = icmp sgt i64 %76, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %81
  %84 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !112
  %85 = icmp eq i8 %84, 0
  %86 = load ptr, ptr %2, align 8, !tbaa !104
  %87 = getelementptr inbounds %struct.eh_status, ptr %86, i64 0, i32 5
  br i1 %85, label %98, label %88

88:                                               ; preds = %83
  tail call fastcc void @VEC_tree_gc_safe_grow(ptr noundef nonnull %87, i32 noundef %77) #19
  br label %89

89:                                               ; preds = %88, %89
  %90 = phi i64 [ %96, %89 ], [ 0, %88 ]
  %91 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %92 = load ptr, ptr %2, align 8, !tbaa !104
  %93 = getelementptr inbounds %struct.eh_status, ptr %92, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !22
  %95 = trunc i64 %90 to i32
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %94, i32 noundef %95, ptr noundef %91) #19
  %96 = add nuw nsw i64 %90, 1
  %97 = icmp eq i64 %96, %76
  br i1 %97, label %108, label %89, !llvm.loop !113

98:                                               ; preds = %83
  tail call fastcc void @VEC_uchar_gc_safe_grow(ptr noundef nonnull %87, i32 noundef %77) #19
  br label %99

99:                                               ; preds = %98, %99
  %100 = phi i64 [ %106, %99 ], [ 0, %98 ]
  %101 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #21
  %102 = load ptr, ptr %2, align 8, !tbaa !104
  %103 = getelementptr inbounds %struct.eh_status, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  %105 = trunc i64 %100 to i32
  tail call fastcc void @VEC_uchar_base_replace(ptr noundef %104, i32 noundef %105, i8 noundef zeroext %101) #19
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp eq i64 %106, %76
  br i1 %107, label %108, label %99, !llvm.loop !114

108:                                              ; preds = %89, %99, %81
  tail call fastcc void @fixup_eh_region_pointers(ptr noundef nonnull %2, i64 noundef %11) #19
  %109 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  tail call fastcc void @lto_tag_check_range(i32 noundef %109, i32 noundef 0, i32 noundef 0) #19
  br label %110

110:                                              ; preds = %3, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @input_bb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %6 = load ptr, ptr @cfun, align 8, !tbaa !5
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1184, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %4, %8
  %10 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %11) #19
  %17 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 8
  store i64 %17, ptr %18, align 8, !tbaa !115
  %19 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 10
  store i32 %20, ptr %21, align 4, !tbaa !116
  %22 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  store i32 %23, ptr %24, align 8, !tbaa !117
  %25 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  store i32 %26, ptr %27, align 8, !tbaa !96
  %28 = icmp eq i32 %1, 224
  br i1 %28, label %63, label %29

29:                                               ; preds = %9
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %16) #19
  %30 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %29, %53
  %33 = phi i32 [ %54, %53 ], [ %30, %29 ]
  %34 = call fastcc ptr @input_gimple_stmt(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %33) #19
  %35 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !80
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %34) #19, !range !53
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call ptr @gimple_build_nop() #21
  br label %42

42:                                               ; preds = %40, %37, %32
  %43 = phi ptr [ %34, %32 ], [ %41, %40 ], [ %34, %37 ]
  call void @find_referenced_vars_in(ptr noundef %43) #21
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %43, i32 noundef 0) #21
  %44 = call fastcc i32 @input_record_start(ptr noundef %0) #19
  call void (i32, i32, ...) @lto_tag_check_set(i32 noundef %44, i32 poison, i32 noundef 226, i32 noundef 0) #19
  %45 = icmp eq i32 %44, 226
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = call i64 @lto_input_sleb128(ptr noundef %0) #21
  %48 = trunc i64 %47 to i32
  %49 = add i64 %47, 2147483648
  %50 = icmp ult i64 %49, 4294967296
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1222, ptr noundef nonnull @.str.1) #21
  br label %52

52:                                               ; preds = %46, %51
  call void @add_stmt_to_eh_lp(ptr noundef %43, i32 noundef %48) #21
  br label %53

53:                                               ; preds = %52, %42
  %54 = call fastcc i32 @input_record_start(ptr noundef %0) #19
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %32, !llvm.loop !118

56:                                               ; preds = %53, %29
  %57 = call fastcc i32 @input_record_start(ptr noundef %0) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56, %59
  %60 = call fastcc ptr @input_phi(ptr noundef %0, ptr noundef %16, ptr noundef %2, ptr noundef %3) #19
  call void @find_referenced_vars_in(ptr noundef %60) #21
  %61 = call fastcc i32 @input_record_start(ptr noundef %0) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59, !llvm.loop !119

63:                                               ; preds = %59, %56, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @renumber_gimple_stmt_uids() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_stmt_max_uid(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !120
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !22
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  store ptr %4, ptr %0, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !96
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !100
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(ptr %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @ei_container(ptr %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ei_container(ptr %0) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fixup_call_stmt_edges(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !136

8:                                                ; preds = %3
  tail call fastcc void @fixup_call_stmt_edges_1(ptr noundef nonnull %4, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, %4
  %13 = or i1 %11, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %8, %34
  %15 = phi ptr [ %35, %34 ], [ %10, %8 ]
  tail call fastcc void @fixup_call_stmt_edges_1(ptr noundef nonnull %15, ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = icmp eq ptr %15, %4
  br i1 %24, label %37, label %25

25:                                               ; preds = %23, %30
  %26 = phi ptr [ %32, %30 ], [ %15, %23 ]
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !128
  %33 = icmp eq ptr %32, %4
  br i1 %33, label %37, label %25, !llvm.loop !139

34:                                               ; preds = %25, %19, %14
  %35 = phi ptr [ %17, %14 ], [ %21, %19 ], [ %28, %25 ]
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %37, label %14, !llvm.loop !140

37:                                               ; preds = %23, %34, %30, %8
  ret void
}

; Function Attrs: optsize
declare void @execute_all_ipa_stmt_fixups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_tag_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_ssanames(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !141
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !141
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !141
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @lto_input_1_unsigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_tag_check_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ult i32 %0, %1
  %5 = icmp ugt i32 %0, %2
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call ptr @lto_tag_name(i32 noundef %0) #21
  %9 = tail call ptr @lto_tag_name(i32 noundef %1) #21
  %10 = tail call ptr @lto_tag_name(i32 noundef %2) #21
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef %9, ptr noundef %10) #21
  br label %11

11:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_init_eh() unnamed_addr #0 {
  %1 = load i1, ptr @lto_init_eh.eh_initialized_p, align 1
  br i1 %1, label %7, label %2

2:                                                ; preds = %0
  store i32 1, ptr @flag_exceptions, align 4, !tbaa !80
  tail call void @init_eh() #21
  %3 = tail call i32 @dwarf2out_do_frame() #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @dwarf2out_frame_init() #21
  br label %6

6:                                                ; preds = %5, %2
  store i1 true, ptr @lto_init_eh.eh_initialized_p, align 1
  br label %7

7:                                                ; preds = %0, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_region_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !143
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_eh_region_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !5, !nonnull !97, !noundef !97
  store i32 %1, ptr %10, align 8, !tbaa !143
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_eh_region(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 88) #21
  %9 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !145
  %12 = icmp eq i32 %10, %2
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %7, %13
  %15 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %16 = inttoptr i64 %15 to ptr
  store ptr %16, ptr %8, align 8, !tbaa !147
  %17 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %18 = inttoptr i64 %17 to ptr
  %19 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !148
  %20 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %21 = inttoptr i64 %20 to ptr
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !149
  switch i32 %5, label %55 [
    i32 230, label %23
    i32 231, label %25
    i32 232, label %31
    i32 233, label %49
  ]

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 4
  store i32 0, ptr %24, align 4, !tbaa !150
  br label %56

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %26 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !150
  %27 = call fastcc ptr @lto_input_eh_catch_list(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #19
  %28 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !22
  %29 = load ptr, ptr %4, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5, i32 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %56

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 4
  store i32 2, ptr %32, align 4, !tbaa !150
  %33 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %34 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !22
  %35 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %36 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5, i32 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !22
  %37 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5, i32 0, i32 2
  store i32 %38, ptr %39, align 8, !tbaa !22
  %40 = load ptr, ptr %34, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %31, %42
  %43 = phi ptr [ %47, %42 ], [ %40, %31 ]
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  tail call void @add_type_for_runtime(ptr noundef %45) #21
  %46 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %42, !llvm.loop !151

49:                                               ; preds = %14
  %50 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 4
  store i32 3, ptr %50, align 4, !tbaa !150
  %51 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %52 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !22
  %53 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1) #19
  %54 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 5, i32 0, i32 1
  store i32 %53, ptr %54, align 8, !tbaa !22
  br label %56

55:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 483, ptr noundef nonnull @.str.1) #21
  br label %56

56:                                               ; preds = %42, %31, %55, %49, %25, %23
  %57 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds %struct.eh_region_d, ptr %8, i64 0, i32 6
  store ptr %58, ptr %59, align 8, !tbaa !152
  br label %60

60:                                               ; preds = %3, %56
  %61 = phi ptr [ %8, %56 ], [ null, %3 ]
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_eh_region_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_landing_pad_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !153
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_eh_landing_pad_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !5, !nonnull !97, !noundef !97
  store i32 %1, ptr %10, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_eh_lp(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  tail call fastcc void @lto_tag_check_range(i32 noundef %4, i32 noundef 234, i32 noundef 234) #19
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #21
  %8 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %7, i64 0, i32 4
  store i32 %9, ptr %10, align 8, !tbaa !155
  %11 = icmp eq i32 %9, %2
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %6, %12
  %14 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %15 = inttoptr i64 %14 to ptr
  store ptr %15, ptr %7, align 8, !tbaa !157
  %16 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %17 = inttoptr i64 %16 to ptr
  %18 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %7, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !158
  %19 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %20 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %7, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !159
  br label %21

21:                                               ; preds = %3, %13
  %22 = phi ptr [ %7, %13 ], [ null, %3 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_eh_landing_pad_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !141
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_tree_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !5, !nonnull !97, !noundef !97
  store i32 %1, ptr %10, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_uchar_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4, !tbaa !160
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_uchar_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !5, !nonnull !97, !noundef !97
  store i32 %1, ptr %10, align 4, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_uchar_base_replace(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_uchar_base, ptr %0, i64 0, i32 2, i64 %4
  store i8 %2, ptr %5, align 1, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_eh_region_pointers(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %10 = icmp ne ptr %7, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %2, %13
  %15 = icmp sgt i64 %1, -1
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #21
  br label %17

17:                                               ; preds = %14, %16
  %18 = trunc i64 %1 to i32
  %19 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %7, i32 noundef %18) #19
  %20 = load ptr, ptr %0, align 8, !tbaa !104
  store ptr %19, ptr %20, align 8, !tbaa !162
  %21 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #19, !range !98
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %55, %17
  %24 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %4) #19, !range !98
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %82, label %59

26:                                               ; preds = %17, %55
  %27 = phi i32 [ %56, %55 ], [ 0, %17 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.eh_region_d, ptr %28, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !145
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1) #21
  br label %35

35:                                               ; preds = %30, %34
  %36 = load ptr, ptr %28, align 8, !tbaa !147
  %37 = ptrtoint ptr %36 to i64
  %38 = trunc i64 %37 to i32
  %39 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %7, i32 noundef %38) #19
  store ptr %39, ptr %28, align 8, !tbaa !147
  %40 = getelementptr inbounds %struct.eh_region_d, ptr %28, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !148
  %42 = ptrtoint ptr %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %7, i32 noundef %43) #19
  store ptr %44, ptr %40, align 8, !tbaa !148
  %45 = getelementptr inbounds %struct.eh_region_d, ptr %28, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !149
  %47 = ptrtoint ptr %46 to i64
  %48 = trunc i64 %47 to i32
  %49 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %7, i32 noundef %48) #19
  store ptr %49, ptr %45, align 8, !tbaa !149
  %50 = getelementptr inbounds %struct.eh_region_d, ptr %28, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !152
  %52 = ptrtoint ptr %51 to i64
  %53 = trunc i64 %52 to i32
  %54 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %9, i32 noundef %53) #19
  store ptr %54, ptr %50, align 8, !tbaa !152
  br label %55

55:                                               ; preds = %26, %35
  %56 = add i32 %27, 1
  %57 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %7, i32 noundef %56, ptr noundef nonnull %3) #19, !range !98
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %23, label %26, !llvm.loop !163

59:                                               ; preds = %23, %78
  %60 = phi i32 [ %79, %78 ], [ 0, %23 ]
  %61 = load ptr, ptr %4, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %61, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !155
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 566, ptr noundef nonnull @.str.1) #21
  br label %68

68:                                               ; preds = %63, %67
  %69 = load ptr, ptr %61, align 8, !tbaa !157
  %70 = ptrtoint ptr %69 to i64
  %71 = trunc i64 %70 to i32
  %72 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %9, i32 noundef %71) #19
  store ptr %72, ptr %61, align 8, !tbaa !157
  %73 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %61, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !158
  %75 = ptrtoint ptr %74 to i64
  %76 = trunc i64 %75 to i32
  %77 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %7, i32 noundef %76) #19
  store ptr %77, ptr %73, align 8, !tbaa !158
  br label %78

78:                                               ; preds = %59, %68
  %79 = add i32 %60, 1
  %80 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %9, i32 noundef %79, ptr noundef nonnull %4) #19, !range !98
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %59, !llvm.loop !164

82:                                               ; preds = %78, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @init_eh() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dwarf2out_do_frame() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dwarf2out_frame_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_region_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call fastcc i32 @VEC_eh_region_base_space(ptr noundef %3, i32 noundef %1) #19, !range !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #21
  store ptr %7, ptr %0, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_region_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !165
  %7 = load i32, ptr %0, align 8, !tbaa !143
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_input_eh_catch_list(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  store ptr null, ptr %2, align 8, !tbaa !5
  %4 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %3, %30
  %7 = phi ptr [ %34, %30 ], [ null, %3 ]
  %8 = phi i32 [ %35, %30 ], [ %4, %3 ]
  tail call fastcc void @lto_tag_check_range(i32 noundef %8, i32 noundef 235, i32 noundef 235) #19
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #21
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.eh_catch_d, ptr %9, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !166
  %12 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.eh_catch_d, ptr %9, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !168
  %14 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %15 = getelementptr inbounds %struct.eh_catch_d, ptr %9, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !169
  %16 = load ptr, ptr %13, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %6, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %6 ]
  %20 = getelementptr inbounds %struct.tree_list, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  tail call void @add_type_for_runtime(ptr noundef %21) #21
  %22 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !170

25:                                               ; preds = %18, %6
  %26 = load ptr, ptr %2, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  store ptr %9, ptr %26, align 8, !tbaa !171
  %29 = load ptr, ptr %2, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  %32 = getelementptr inbounds %struct.eh_catch_d, ptr %9, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !172
  store ptr %9, ptr %2, align 8, !tbaa !5
  %33 = icmp eq ptr %7, null
  %34 = select i1 %33, ptr %9, ptr %7
  %35 = tail call fastcc i32 @input_record_start(ptr noundef %0) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %6, !llvm.loop !173

37:                                               ; preds = %30, %3
  %38 = phi ptr [ null, %3 ], [ %34, %30 ]
  ret ptr %38
}

; Function Attrs: optsize
declare void @add_type_for_runtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lto_input_location(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @input_string(ptr noundef %1, ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @canon_file_name(ptr noundef nonnull %3) #19
  %7 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = icmp eq ptr %14, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @line_table, align 8, !tbaa !5
  %20 = tail call ptr @linemap_add(ptr noundef %19, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #21
  br label %21

21:                                               ; preds = %18, %16
  %22 = load ptr, ptr @line_table, align 8, !tbaa !5
  %23 = and i32 %12, 255
  %24 = tail call ptr @linemap_add(ptr noundef %22, i32 noundef 0, i32 noundef %23, ptr noundef %6, i32 noundef %8) #21
  br label %32

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !174
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @line_table, align 8, !tbaa !5
  %31 = tail call i32 @linemap_line_start(ptr noundef %30, i32 noundef %8, i32 noundef %10) #21
  br label %32

32:                                               ; preds = %25, %29, %21
  store ptr %6, ptr %13, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 7
  store i32 %8, ptr %33, align 8, !tbaa !174
  %34 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 8
  store i32 %10, ptr %34, align 4, !tbaa !175
  %35 = load ptr, ptr @line_table, align 8, !tbaa !5
  %36 = tail call i32 @linemap_position_for_column(ptr noundef %35, i32 noundef %10) #21
  br label %37

37:                                               ; preds = %2, %32
  %38 = phi i32 [ %36, %32 ], [ 0, %2 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_string(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %1) #21
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = call fastcc ptr @input_string_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #19
  %9 = load i32, ptr %3, align 4, !tbaa !80
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.5) #21
  br label %16

16:                                               ; preds = %7, %15, %2
  %17 = phi ptr [ null, %2 ], [ %8, %15 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @canon_file_name(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.string_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !54
  %3 = load ptr, ptr @file_name_hash_table, align 8, !tbaa !5
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 1) #21
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %9 = add i64 %8, 1
  %10 = call ptr @xmalloc(i64 noundef %9) #21
  %11 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #21
  %12 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %0) #19
  store ptr %10, ptr %11, align 8, !tbaa !54
  store ptr %11, ptr %4, align 8, !tbaa !5
  br label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 8, !tbaa !54
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %10, %7 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_string_internal(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.lto_input_block, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = tail call i64 @lto_input_uleb128(ptr noundef %1) #21
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  store ptr %8, ptr %4, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.lto_input_block, ptr %4, i64 0, i32 1
  store i32 %6, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.lto_input_block, ptr %4, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !18
  %13 = call i64 @lto_input_uleb128(ptr noundef nonnull %4) #21
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %2, align 4, !tbaa !80
  %15 = load i32, ptr %9, align 8, !tbaa !17
  %16 = add i32 %15, %14
  %17 = load i32, ptr %10, align 8, !tbaa !57
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.6) #21
  %20 = load i32, ptr %9, align 8, !tbaa !17
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ %15, %3 ]
  %23 = load ptr, ptr %7, align 8, !tbaa !56
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_landing_pad_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call fastcc i32 @VEC_eh_landing_pad_base_space(ptr noundef %3, i32 noundef %1) #19, !range !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #21
  store ptr %7, ptr %0, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_landing_pad_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !176
  %7 = load i32, ptr %0, align 8, !tbaa !153
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #19, !range !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #21
  store ptr %7, ptr %0, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !177
  %7 = load i32, ptr %0, align 8, !tbaa !141
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_uchar_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call fastcc i32 @VEC_uchar_base_space(ptr noundef %3, i32 noundef %1) #19, !range !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %3, i32 noundef %1, i64 noundef 8, i64 noundef 1) #21
  store ptr %7, ptr %0, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_uchar_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_uchar_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !178
  %7 = load i32, ptr %0, align 4, !tbaa !160
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
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_eh_region_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_region_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !143
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_eh_landing_pad_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_landing_pad_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !153
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_gimple_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc i32 @lto_tag_to_gimple_code(i32 noundef %3) #19, !range !179
  %6 = tail call ptr @lto_input_bitpack(ptr noundef %0) #19
  %7 = tail call i64 @bp_unpack_value(ptr noundef %6, i32 noundef 32) #21
  %8 = trunc i64 %7 to i32
  %9 = tail call ptr @gimple_alloc_stat(i32 noundef %5, i32 noundef %8) #21
  %10 = tail call i64 @bp_unpack_value(ptr noundef %6, i32 noundef 1) #21
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr %9, align 8
  %13 = shl i32 %11, 8
  %14 = and i32 %13, 256
  %15 = and i32 %12, -257
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %9, align 8
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %9) #19, !range !53
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = tail call i64 @bp_unpack_value(ptr noundef %6, i32 noundef 1) #21
  %21 = trunc i64 %20 to i32
  %22 = load i32, ptr %9, align 8
  %23 = shl i32 %21, 10
  %24 = and i32 %23, 1024
  %25 = and i32 %22, -1025
  %26 = or disjoint i32 %24, %25
  store i32 %26, ptr %9, align 8
  br label %27

27:                                               ; preds = %19, %4
  %28 = tail call i64 @bp_unpack_value(ptr noundef %6, i32 noundef 1) #21
  %29 = trunc i64 %28 to i32
  %30 = load i32, ptr %9, align 8
  %31 = shl i32 %29, 14
  %32 = and i32 %31, 16384
  %33 = and i32 %30, -16385
  %34 = or disjoint i32 %32, %33
  store i32 %34, ptr %9, align 8
  %35 = tail call i64 @bp_unpack_value(ptr noundef %6, i32 noundef 16) #21
  %36 = trunc i64 %35 to i32
  %37 = load i32, ptr %9, align 8
  %38 = shl i32 %36, 16
  %39 = and i32 %37, 65535
  %40 = or disjoint i32 %39, %38
  store i32 %40, ptr %9, align 8
  tail call void @bitpack_delete(ptr noundef %6) #21
  %41 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1) #19
  tail call fastcc void @gimple_set_location(ptr noundef nonnull %9, i32 noundef %41) #19
  %42 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  tail call fastcc void @gimple_set_block(ptr noundef nonnull %9, ptr noundef %42) #19
  switch i32 %5, label %157 [
    i32 14, label %43
    i32 13, label %46
    i32 15, label %48
    i32 7, label %51
    i32 6, label %64
    i32 8, label %64
    i32 9, label %64
    i32 5, label %64
    i32 4, label %64
    i32 1, label %64
    i32 3, label %64
    i32 2, label %64
    i32 18, label %198
    i32 33, label %198
  ]

43:                                               ; preds = %27
  %44 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %45 = trunc i64 %44 to i32
  tail call fastcc void @gimple_resx_set_region(ptr noundef nonnull %9, i32 noundef %45) #19
  br label %198

46:                                               ; preds = %27
  %47 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  tail call fastcc void @gimple_eh_must_not_throw_set_fndecl(ptr noundef nonnull %9, ptr noundef %47) #19
  br label %198

48:                                               ; preds = %27
  %49 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %50 = trunc i64 %49 to i32
  tail call fastcc void @gimple_eh_dispatch_set_region(ptr noundef nonnull %9, i32 noundef %50) #19
  br label %198

51:                                               ; preds = %27
  %52 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds %struct.gimple_statement_asm, ptr %9, i64 0, i32 2
  store i8 %53, ptr %54, align 8, !tbaa !22
  %55 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds %struct.gimple_statement_asm, ptr %9, i64 0, i32 3
  store i8 %56, ptr %57, align 1, !tbaa !22
  %58 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds %struct.gimple_statement_asm, ptr %9, i64 0, i32 4
  store i8 %59, ptr %60, align 2, !tbaa !22
  %61 = tail call fastcc ptr @input_string_cst(ptr noundef %1, ptr noundef %0) #19
  %62 = getelementptr inbounds %struct.tree_string, ptr %61, i64 0, i32 2
  %63 = getelementptr inbounds %struct.gimple_statement_asm, ptr %9, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %51
  %65 = icmp eq i64 %7, 0
  br i1 %65, label %159, label %66

66:                                               ; preds = %64, %154
  %67 = phi i64 [ %155, %154 ], [ 0, %64 ]
  %68 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %69 = trunc i64 %67 to i32
  tail call fastcc void @gimple_set_op(ptr noundef nonnull %9, i32 noundef %69, ptr noundef %68) #19
  %70 = icmp eq ptr %68, null
  br i1 %70, label %154, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %68, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 121
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !22
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 32
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  %86 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %85, ptr noundef %83) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i64, ptr %68, align 8
  br label %96

90:                                               ; preds = %81
  %91 = load ptr, ptr %82, align 8, !tbaa !22
  %92 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !22
  %94 = load ptr, ptr %76, align 8, !tbaa !22
  %95 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %93, ptr noundef %94) #21
  store ptr %95, ptr %76, align 8, !tbaa !22
  br label %154

96:                                               ; preds = %88, %75, %71
  %97 = phi i64 [ %89, %88 ], [ %72, %75 ], [ %72, %71 ]
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 121
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tree_exp, ptr %68, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !22
  br label %103

103:                                              ; preds = %100, %96
  %104 = phi ptr [ %68, %96 ], [ %102, %100 ]
  br label %105

105:                                              ; preds = %103, %145
  %106 = phi ptr [ %147, %145 ], [ %104, %103 ]
  %107 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %106) #19, !range !53
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %150, label %109

109:                                              ; preds = %105
  %110 = load i64, ptr %106, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 41
  br i1 %112, label %113, label %145

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !22
  %116 = getelementptr inbounds %struct.tree_decl_minimal, ptr %115, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !22
  %118 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  %120 = icmp eq ptr %119, null
  %121 = icmp eq ptr %119, %115
  %122 = or i1 %120, %121
  br i1 %122, label %140, label %123

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  br label %125

125:                                              ; preds = %123, %134
  %126 = phi ptr [ %119, %123 ], [ %136, %134 ]
  %127 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !22
  %129 = load ptr, ptr %124, align 8, !tbaa !22
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = tail call zeroext i8 @compare_field_offset(ptr noundef nonnull %126, ptr noundef nonnull %115) #21
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %125, %131
  %135 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !22
  %137 = icmp eq ptr %136, null
  %138 = icmp eq ptr %136, %115
  %139 = or i1 %137, %138
  br i1 %139, label %140, label %125, !llvm.loop !180

140:                                              ; preds = %134, %113
  %141 = phi ptr [ %119, %113 ], [ %136, %134 ]
  %142 = phi i1 [ %120, %113 ], [ %137, %134 ]
  br i1 %142, label %145, label %143

143:                                              ; preds = %131, %140
  %144 = phi ptr [ %141, %140 ], [ %126, %131 ]
  store ptr %144, ptr %114, align 8, !tbaa !22
  br label %145

145:                                              ; preds = %140, %143, %109
  %146 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !22
  %148 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %147) #19, !range !53
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %105, !llvm.loop !181

150:                                              ; preds = %145, %105
  %151 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %106) #19, !range !53
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call fastcc void @maybe_fixup_handled_component(ptr noundef %106) #19
  br label %154

154:                                              ; preds = %150, %153, %66, %90
  %155 = add nuw i64 %67, 1
  %156 = icmp eq i64 %155, %7
  br i1 %156, label %159, label %66, !llvm.loop !182

157:                                              ; preds = %27
  %158 = tail call ptr @lto_tag_name(i32 noundef %3) #21
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.7, ptr noundef %158) #21
  br label %159

159:                                              ; preds = %154, %64, %157
  switch i32 %5, label %198 [
    i32 8, label %163
    i32 6, label %163
    i32 4, label %172
    i32 7, label %160
  ]

160:                                              ; preds = %159
  %161 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef nonnull %9) #19, !range !183
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %198, label %184

163:                                              ; preds = %159, %159
  %164 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %9) #21
  %165 = icmp eq ptr %164, null
  br i1 %165, label %198, label %166

166:                                              ; preds = %163
  %167 = load i64, ptr %164, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 141
  br i1 %169, label %170, label %198

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tree_ssa_name, ptr %164, i64 0, i32 2
  store ptr %9, ptr %171, align 8, !tbaa !22
  br label %198

172:                                              ; preds = %159
  %173 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %9) #19
  %174 = tail call fastcc zeroext i8 @emit_label_in_global_context_p(ptr noundef %173) #19, !range !53
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %172
  %177 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %9) #19
  %178 = getelementptr inbounds %struct.tree_decl_minimal, ptr %177, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !22
  %180 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !184
  %182 = icmp eq ptr %179, %181
  br i1 %182, label %198, label %183

183:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1147, ptr noundef nonnull @.str.1) #21
  br label %198

184:                                              ; preds = %160, %194
  %185 = phi i32 [ %195, %194 ], [ 0, %160 ]
  %186 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef nonnull %9, i32 noundef %185) #19
  %187 = getelementptr inbounds %struct.tree_list, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !22
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 141
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.tree_ssa_name, ptr %188, i64 0, i32 2
  store ptr %9, ptr %193, align 8, !tbaa !22
  br label %194

194:                                              ; preds = %192, %184
  %195 = add nuw nsw i32 %185, 1
  %196 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef nonnull %9) #19, !range !183
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %184, label %198, !llvm.loop !185

198:                                              ; preds = %194, %160, %43, %46, %48, %27, %27, %159, %163, %166, %170, %172, %176, %183
  tail call fastcc void @maybe_fixup_decls(ptr noundef nonnull %9) #19
  tail call void @gimple_set_modified(ptr noundef nonnull %9, i8 noundef zeroext 1) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !183
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @find_referenced_vars_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lto_tag_check_set(i32 noundef %0, i32 %1, ...) unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 16
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = load ptr, ptr %5, align 8
  br label %10

9:                                                ; preds = %21
  br i1 %12, label %10, label %28, !llvm.loop !186

10:                                               ; preds = %2, %9
  %11 = phi ptr [ %8, %2 ], [ %22, %9 ]
  %12 = phi i1 [ true, %2 ], [ false, %9 ]
  %13 = phi i32 [ %4, %2 ], [ %23, %9 ]
  %14 = icmp ult i32 %13, 41
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr i8, ptr %7, i64 %16
  %18 = add nuw nsw i32 %13, 8
  store i32 %18, ptr %3, align 16
  br label %21

19:                                               ; preds = %10
  %20 = getelementptr i8, ptr %11, i64 8
  store ptr %20, ptr %5, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %11, %15 ], [ %20, %19 ]
  %23 = phi i32 [ %18, %15 ], [ %13, %19 ]
  %24 = phi ptr [ %17, %15 ], [ %11, %19 ]
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %27, label %9

27:                                               ; preds = %21
  call void @llvm.va_end(ptr nonnull %3)
  br label %30

28:                                               ; preds = %9
  call void @llvm.va_end(ptr nonnull %3)
  %29 = call ptr @lto_tag_name(i32 noundef %0) #21
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, ptr noundef %29) #21
  br label %30

30:                                               ; preds = %28, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @add_stmt_to_eh_lp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_phi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %6 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = trunc i64 %5 to i32
  %11 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %9, i32 noundef %10) #19
  %12 = load ptr, ptr %1, align 8, !tbaa !187
  %13 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %12) #19
  %14 = tail call ptr @create_phi_node(ptr noundef %11, ptr noundef nonnull %1) #21
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !22
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  br label %19

19:                                               ; preds = %38, %17
  %20 = phi i32 [ 0, %17 ], [ %40, %38 ]
  %21 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %2) #19
  %22 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %23 = trunc i64 %22 to i32
  %24 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %2) #19
  %25 = load ptr, ptr %18, align 8, !tbaa !60
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %27, i32 noundef %23) #19
  %29 = load ptr, ptr %1, align 8, !tbaa !187
  br label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i32 %34, 1
  %32 = icmp eq i32 %31, %13
  br i1 %32, label %38, label %33, !llvm.loop !188

33:                                               ; preds = %19, %30
  %34 = phi i32 [ 0, %19 ], [ %31, %30 ]
  %35 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %29, i32 noundef %34) #19
  %36 = load ptr, ptr %35, align 8, !tbaa !189
  %37 = icmp eq ptr %36, %28
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %33
  %39 = phi ptr [ null, %30 ], [ %35, %33 ]
  tail call void @add_phi_arg(ptr noundef %14, ptr noundef %21, ptr noundef %39, i32 noundef %24) #21
  %40 = add nuw nsw i32 %20, 1
  %41 = icmp eq i32 %40, %13
  br i1 %41, label %42, label %19, !llvm.loop !190

42:                                               ; preds = %38, %4
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @lto_tag_to_gimple_code(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @lto_tag_is_gimple_code_p(i32 noundef %0) #19, !range !53
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 907, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %0, -189
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @gimple_alloc_stat(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !183
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_resx_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_must_not_throw_set_fndecl(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_dispatch_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_string_cst(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %1) #21
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = call fastcc ptr @input_string_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #19
  %9 = load i32, ptr %3, align 4, !tbaa !80
  %10 = tail call ptr @build_string(i32 noundef %9, ptr noundef %8) #21
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %10, %7 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
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
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @compare_field_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_fixup_handled_component(ptr nocapture noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %5) #19, !range !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %2, !llvm.loop !191

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load i64, ptr %5, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %86

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = load i64, ptr %3, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %78 [
    i16 41, label %18
    i16 45, label %23
    i16 46, label %40
    i16 42, label %86
    i16 118, label %86
    i16 43, label %61
    i16 44, label %61
  ]

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  br label %79

23:                                               ; preds = %13
  %24 = load i64, ptr %15, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %86, label %33

33:                                               ; preds = %27
  %34 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %31, ptr noundef %29) #21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %33, %23
  %37 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = tail call ptr @build_array_type(ptr noundef %38, ptr noundef null) #21
  br label %79

40:                                               ; preds = %13
  %41 = load i64, ptr %15, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 15
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %86, label %52

52:                                               ; preds = %44
  %53 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %50, ptr noundef %46) #21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52, %40
  %56 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = tail call ptr @build_array_type(ptr noundef %59, ptr noundef null) #21
  br label %79

61:                                               ; preds = %13, %13
  %62 = load i64, ptr %15, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 13
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %69, ptr noundef %67) #21
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71, %61
  %75 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = tail call ptr @build_complex_type(ptr noundef %76) #21
  br label %79

78:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 940, ptr noundef nonnull @.str.1) #21
  br label %79

79:                                               ; preds = %78, %74, %55, %36, %18
  %80 = phi ptr [ undef, %78 ], [ %77, %74 ], [ %60, %55 ], [ %39, %36 ], [ %22, %18 ]
  %81 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %80, ptr noundef %15) #21
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load ptr, ptr %9, align 8, !tbaa !22
  %85 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %80, ptr noundef %84) #21
  store ptr %85, ptr %9, align 8, !tbaa !22
  br label %86

86:                                               ; preds = %79, %83, %65, %71, %13, %13, %44, %52, %27, %33, %8
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @emit_label_in_global_context_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 256
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = lshr i64 %7, 16
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !22
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2655, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !22
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #19
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_fixup_decls(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #19
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %12, ptr noundef %14) #21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !22
  %19 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %18, ptr noundef nonnull %6) #21
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %19) #19
  br label %53

20:                                               ; preds = %4
  %21 = load i64, ptr %5, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %26, ptr noundef %28) #21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load ptr, ptr %27, align 8, !tbaa !22
  %33 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %32, ptr noundef nonnull %5) #21
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %33) #19
  br label %53

34:                                               ; preds = %1
  %35 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !53
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = load i64, ptr %38, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 32
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  %48 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %46, ptr noundef %47) #21
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  %52 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef %51, ptr noundef nonnull %38) #21
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %52) #19
  br label %53

53:                                               ; preds = %37, %40, %50, %44, %17, %10, %24, %31, %20, %34
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @lto_tag_is_gimple_code_p(i32 noundef %0) unnamed_addr #3 {
  %2 = add i32 %0, -189
  %3 = icmp ult i32 %2, 35
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !183
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !192
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !183
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #3 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_complex_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !22
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !183
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !22
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !193
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !195
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @fixup_call_stmt_edges_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %15, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !197
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !199
  %14 = getelementptr inbounds %struct.cgraph_edge, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !200

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_alias_pair_gc_safe_push() unnamed_addr #0 {
  tail call fastcc void @VEC_alias_pair_gc_reserve() #19
  %1 = load ptr, ptr @alias_pairs, align 8, !tbaa !5
  %2 = tail call fastcc ptr @VEC_alias_pair_base_quick_push(ptr noundef %1) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @lto_get_decl_name_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alias_pair_gc_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @alias_pairs, align 8, !tbaa !5
  %2 = tail call fastcc i32 @VEC_alias_pair_base_space(ptr noundef %1) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %5, ptr @alias_pairs, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_alias_pair_base_quick_push(ptr noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !201
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !201
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alias_pair_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !203
  %6 = load i32, ptr %0, align 8, !tbaa !201
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitpack_word_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_bitpack_word_t_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 8) #21
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitpack_word_t_base_quick_push(ptr noundef %0, i64 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !204
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !204
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 2, i64 %5
  store i64 %1, ptr %6, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitpack_word_t_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !206
  %6 = load i32, ptr %0, align 8, !tbaa !204
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_type(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.lto_tree_ref_table, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1041, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = load ptr, ptr %3, align 8, !tbaa !52
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_field_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1042, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_fn_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 2, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1043, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_type_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 4, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1045, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 4
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_file_decl_data_get_namespace_decl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 5, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1046, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %3, i64 0, i64 5
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  ret ptr %13
}

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lto_streamer_cache_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @lto_tag_to_tree_code(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @lto_tag_is_tree_code_p(i32 noundef %0) #19, !range !53
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 926, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %0, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @lto_tag_is_tree_code_p(i32 noundef %0) unnamed_addr #3 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 188
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_builtin_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_materialize_tree(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %6 = trunc i64 %5 to i32
  %7 = add i64 %5, 2147483648
  %8 = icmp ult i64 %7, 4294967296
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %4, %9
  store i32 %6, ptr %3, align 4, !tbaa !80
  %11 = tail call fastcc i32 @lto_tag_to_tree_code(i32 noundef %2) #19
  %12 = icmp eq i32 %11, 141
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1914, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %10, %13
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 6
  %17 = load i8, ptr %16, align 2, !tbaa !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @input_string_cst(ptr noundef %1, ptr noundef %0) #19
  br label %45

21:                                               ; preds = %14
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 8
  %23 = load i8, ptr %22, align 8, !tbaa !22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @input_identifier(ptr noundef %1, ptr noundef %0) #19
  br label %45

27:                                               ; preds = %21
  %28 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 24
  %29 = load i8, ptr %28, align 8, !tbaa !22
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %33 = trunc i64 %32 to i32
  %34 = tail call ptr @make_tree_vec_stat(i32 noundef %33) #21
  br label %45

35:                                               ; preds = %27
  %36 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %15, i64 28
  %37 = load i8, ptr %36, align 4, !tbaa !22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %41 = trunc i64 %40 to i32
  %42 = tail call ptr @make_tree_binfo_stat(i32 noundef %41) #21
  br label %45

43:                                               ; preds = %35
  %44 = tail call ptr @make_node_stat(i32 noundef %11) #21
  br label %45

45:                                               ; preds = %25, %39, %43, %31, %19
  %46 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %34, %31 ], [ %42, %39 ], [ %44, %43 ]
  %47 = tail call ptr @lto_input_bitpack(ptr noundef %0) #19
  %48 = tail call i64 @bp_unpack_value(ptr noundef %47, i32 noundef 16) #21
  %49 = trunc i64 %48 to i32
  %50 = tail call fastcc i32 @lto_tree_code_to_tag(i32 noundef %49) #19
  tail call fastcc void @lto_tag_check(i32 noundef %50, i32 noundef %2) #19
  tail call fastcc void @unpack_value_fields(ptr noundef %47, ptr noundef %46) #19
  tail call void @bitpack_delete(ptr noundef %47) #21
  %51 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = tail call zeroext i8 @lto_streamer_cache_insert_at(ptr noundef %52, ptr noundef %46, i32 noundef %6) #21
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @lto_input_ts_common_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 5
  %12 = load i8, ptr %11, align 1, !tbaa !22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @lto_input_ts_vector_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 7
  %17 = load i8, ptr %16, align 1, !tbaa !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @lto_input_ts_complex_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 9
  %22 = load i8, ptr %21, align 1, !tbaa !22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @lto_input_ts_decl_minimal_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 10
  %27 = load i8, ptr %26, align 2, !tbaa !22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @lto_input_ts_decl_common_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 12
  %32 = load i8, ptr %31, align 4, !tbaa !22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call fastcc void @lto_input_ts_decl_non_common_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 13
  %37 = load i8, ptr %36, align 1, !tbaa !22
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @lto_input_ts_decl_with_vis_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 14
  %42 = load i8, ptr %41, align 2, !tbaa !22
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @lto_input_ts_field_decl_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 21
  %47 = load i8, ptr %46, align 1, !tbaa !22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call fastcc void @lto_input_ts_function_decl_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 22
  %52 = load i8, ptr %51, align 2, !tbaa !22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call fastcc void @lto_input_ts_type_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 23
  %57 = load i8, ptr %56, align 1, !tbaa !22
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call fastcc void @lto_input_ts_list_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 24
  %62 = load i8, ptr %61, align 8, !tbaa !22
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call fastcc void @lto_input_ts_vec_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 25
  %67 = load i8, ptr %66, align 1, !tbaa !22
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call fastcc void @lto_input_ts_exp_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 26
  %72 = load i8, ptr %71, align 2, !tbaa !22
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2392, ptr noundef nonnull @.str.1) #21
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 27
  %77 = load i8, ptr %76, align 1, !tbaa !22
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call fastcc void @lto_input_ts_block_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 28
  %82 = load i8, ptr %81, align 4, !tbaa !22
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call fastcc void @lto_input_ts_binfo_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 29
  %87 = load i8, ptr %86, align 1, !tbaa !22
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2404, ptr noundef nonnull @.str.1) #21
  br label %90

90:                                               ; preds = %89, %85
  %91 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 30
  %92 = load i8, ptr %91, align 2, !tbaa !22
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call fastcc void @lto_input_ts_constructor_tree_pointers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 31
  %97 = load i8, ptr %96, align 1, !tbaa !22
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2413, ptr noundef nonnull @.str.1) #21
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 32
  %102 = load i8, ptr %101, align 16, !tbaa !22
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.13) #21
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 33
  %107 = load i8, ptr %106, align 1, !tbaa !22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.14) #21
  br label %110

110:                                              ; preds = %109, %105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lto_stream_as_builtin_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %13, 2
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %9, %15, %5, %1
  %19 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 1, %9 ], [ %17, %15 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_register_var_decl_in_symtab(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @decl_function_context(ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 134217728
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #21
  %12 = getelementptr inbounds %struct.tree_identifier, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #19
  %15 = add i64 %14, 32
  %16 = alloca i8, i64 %15, align 16
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !22
  %19 = zext i32 %18 to i64
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %13, i64 noundef %19) #19
  %21 = call ptr @get_identifier(ptr noundef nonnull %16) #21
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !22
  call void @rest_of_decl_compilation(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #21
  %23 = load i64, ptr %1, align 8
  br label %24

24:                                               ; preds = %10, %2
  %25 = phi i64 [ %23, %10 ], [ %6, %2 ]
  %26 = and i64 %25, 134217728
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %29 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %30, ptr noundef nonnull %1, ptr noundef nonnull %3) #21
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2464, ptr noundef nonnull @.str.1) #21
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, ptr %3, align 4, !tbaa !80
  %36 = call fastcc i32 @get_resolution(ptr noundef nonnull %0, i32 noundef %35) #19
  %37 = load ptr, ptr %0, align 8, !tbaa !30
  call void @lto_symtab_register_decl(ptr noundef nonnull %1, i32 noundef %36, ptr noundef %37) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %38

38:                                               ; preds = %34, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_register_function_decl_in_symtab(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 134217728
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #21
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #19
  %14 = add i64 %13, 32
  %15 = alloca i8, i64 %14, align 16
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !22
  %18 = zext i32 %17 to i64
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %12, i64 noundef %18) #19
  %20 = call ptr @get_identifier(ptr noundef nonnull %15) #21
  store ptr %20, ptr %8, align 8, !tbaa !22
  %21 = icmp eq ptr %9, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %7
  %23 = call ptr @decl_assembler_name(ptr noundef nonnull %1) #21
  %24 = load ptr, ptr %0, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.tree_identifier, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  call void @lto_record_renamed_decl(ptr noundef %24, ptr noundef %26, ptr noundef %28) #21
  %29 = load ptr, ptr %0, align 8, !tbaa !30
  %30 = load ptr, ptr %27, align 8, !tbaa !22
  %31 = load ptr, ptr %25, align 8, !tbaa !22
  call void @lto_record_renamed_decl(ptr noundef %29, ptr noundef %30, ptr noundef %31) #21
  br label %32

32:                                               ; preds = %7, %22, %2
  %33 = load i64, ptr %1, align 8
  %34 = and i64 %33, 134217728
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 2048
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %42 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %3) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2531, ptr noundef nonnull @.str.1) #21
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, ptr %3, align 4, !tbaa !80
  %49 = call fastcc i32 @get_resolution(ptr noundef nonnull %0, i32 noundef %48) #19
  %50 = load ptr, ptr %0, align 8, !tbaa !30
  call void @lto_symtab_register_decl(ptr noundef nonnull %1, i32 noundef %49, ptr noundef %50) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %51

51:                                               ; preds = %47, %36, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @input_identifier(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %1) #21
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = call fastcc ptr @input_string_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #19
  %9 = load i32, ptr %3, align 4, !tbaa !80
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @get_identifier_with_length(ptr noundef %8, i64 noundef %10) #21
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @make_tree_vec_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_tree_binfo_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_value_fields(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  tail call fastcc void @unpack_ts_base_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  %5 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @unpack_ts_real_cst_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @unpack_ts_fixed_cst_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 10
  %16 = load i8, ptr %15, align 2, !tbaa !22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @unpack_ts_decl_common_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @unpack_ts_decl_wrtl_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 13
  %26 = load i8, ptr %25, align 1, !tbaa !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @unpack_ts_decl_with_vis_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 21
  %31 = load i8, ptr %30, align 1, !tbaa !22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call fastcc void @unpack_ts_function_decl_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 22
  %36 = load i8, ptr %35, align 2, !tbaa !22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @unpack_ts_type_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 27
  %41 = load i8, ptr %40, align 1, !tbaa !22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call fastcc void @unpack_ts_block_value_fields(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 26
  %46 = load i8, ptr %45, align 2, !tbaa !22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1836, ptr noundef nonnull @.str.1) #21
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 29
  %51 = load i8, ptr %50, align 1, !tbaa !22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1842, ptr noundef nonnull @.str.1) #21
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %4, i64 31
  %56 = load i8, ptr %55, align 1, !tbaa !22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1848, ptr noundef nonnull @.str.1) #21
  br label %59

59:                                               ; preds = %58, %54
  ret void
}

; Function Attrs: optsize
declare ptr @get_identifier_with_length(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_base_value_fields(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %10 = load i64, ptr %1, align 8
  %11 = shl i64 %9, 16
  %12 = and i64 %11, 65536
  %13 = and i64 %10, -65537
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %1, align 8
  %15 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %16 = load i64, ptr %1, align 8
  %17 = shl i64 %15, 17
  %18 = and i64 %17, 131072
  %19 = and i64 %16, -131073
  %20 = or disjoint i64 %19, %18
  store i64 %20, ptr %1, align 8
  %21 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %22 = load i64, ptr %1, align 8
  %23 = shl i64 %21, 20
  %24 = and i64 %23, 1048576
  %25 = and i64 %22, -1048577
  %26 = or disjoint i64 %25, %24
  store i64 %26, ptr %1, align 8
  %27 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %28 = load i64, ptr %1, align 8
  %29 = shl i64 %27, 27
  %30 = and i64 %29, 134217728
  %31 = and i64 %28, -134217729
  %32 = or disjoint i64 %31, %30
  store i64 %32, ptr %1, align 8
  br label %33

33:                                               ; preds = %8, %2
  %34 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %35 = load i64, ptr %1, align 8
  %36 = shl i64 %34, 18
  %37 = and i64 %36, 262144
  %38 = and i64 %35, -262145
  %39 = or disjoint i64 %38, %37
  store i64 %39, ptr %1, align 8
  %40 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %41 = load i64, ptr %1, align 8
  %42 = shl i64 %40, 19
  %43 = and i64 %42, 524288
  %44 = and i64 %41, -524289
  %45 = or disjoint i64 %44, %43
  store i64 %45, ptr %1, align 8
  %46 = and i64 %41, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !80
  %49 = and i32 %48, -2
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %53 = load i64, ptr %1, align 8
  %54 = shl i64 %52, 21
  %55 = and i64 %54, 2097152
  %56 = and i64 %53, -2097153
  %57 = or disjoint i64 %56, %55
  store i64 %57, ptr %1, align 8
  br label %58

58:                                               ; preds = %33, %51
  %59 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %60 = load i64, ptr %1, align 8
  %61 = shl i64 %59, 22
  %62 = and i64 %61, 4194304
  %63 = and i64 %60, -4194305
  %64 = or disjoint i64 %63, %62
  store i64 %64, ptr %1, align 8
  %65 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %66 = load i64, ptr %1, align 8
  %67 = shl i64 %65, 23
  %68 = and i64 %67, 8388608
  %69 = and i64 %66, -8388609
  %70 = or disjoint i64 %69, %68
  store i64 %70, ptr %1, align 8
  %71 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %72 = load i64, ptr %1, align 8
  %73 = shl i64 %71, 24
  %74 = and i64 %73, 16777216
  %75 = and i64 %72, -16777217
  %76 = or disjoint i64 %75, %74
  store i64 %76, ptr %1, align 8
  %77 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %78 = load i64, ptr %1, align 8
  %79 = shl i64 %77, 25
  %80 = and i64 %79, 33554432
  %81 = and i64 %78, -33554433
  %82 = or disjoint i64 %81, %80
  store i64 %82, ptr %1, align 8
  %83 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %84 = load i64, ptr %1, align 8
  %85 = shl i64 %83, 26
  %86 = and i64 %85, 67108864
  %87 = and i64 %84, -67108865
  %88 = or disjoint i64 %87, %86
  store i64 %88, ptr %1, align 8
  %89 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %90 = load i64, ptr %1, align 8
  %91 = shl i64 %89, 28
  %92 = and i64 %91, 268435456
  %93 = and i64 %90, -268435457
  %94 = or disjoint i64 %93, %92
  store i64 %94, ptr %1, align 8
  %95 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %96 = load i64, ptr %1, align 8
  %97 = shl i64 %95, 29
  %98 = and i64 %97, 536870912
  %99 = and i64 %96, -536870913
  %100 = or disjoint i64 %99, %98
  store i64 %100, ptr %1, align 8
  %101 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %102 = load i64, ptr %1, align 8
  %103 = shl i64 %101, 30
  %104 = and i64 %103, 1073741824
  %105 = and i64 %102, -1073741825
  %106 = or disjoint i64 %105, %104
  store i64 %106, ptr %1, align 8
  %107 = and i64 %102, 65535
  %108 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !80
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %118

111:                                              ; preds = %58
  %112 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %113 = load i64, ptr %1, align 8
  %114 = shl i64 %112, 31
  %115 = and i64 %114, 2147483648
  %116 = and i64 %113, -2147483649
  %117 = or disjoint i64 %116, %115
  store i64 %117, ptr %1, align 8
  br label %118

118:                                              ; preds = %111, %58
  %119 = phi i64 [ %117, %111 ], [ %106, %58 ]
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 141
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %124 = load i64, ptr %1, align 8
  %125 = shl i64 %123, 32
  %126 = and i64 %125, 4294967296
  %127 = and i64 %124, -4294967297
  %128 = or disjoint i64 %127, %126
  store i64 %128, ptr %1, align 8
  br label %129

129:                                              ; preds = %122, %118
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_real_cst_value_fields(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 2) #21
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 3
  %7 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 2
  %10 = and i32 %9, 4
  %11 = or disjoint i32 %10, %6
  %12 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 3
  %15 = and i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %17 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 4
  %20 = and i32 %19, 16
  %21 = or disjoint i32 %16, %20
  %22 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 5
  %25 = and i32 %24, 32
  %26 = or disjoint i32 %21, %25
  %27 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 26) #21
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 6
  %30 = or disjoint i32 %26, %29
  store i32 %30, ptr %3, align 8
  br label %31

31:                                               ; preds = %2, %31
  %32 = phi i64 [ 0, %2 ], [ %35, %31 ]
  %33 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 64) #21
  %34 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 %32
  store i64 %33, ptr %34, align 8, !tbaa !192
  %35 = add nuw nsw i64 %32, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %31, !llvm.loop !207

37:                                               ; preds = %31
  %38 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %39 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_fixed_cst_value_fields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 64) #21
  %4 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 64) #21
  %5 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  store i64 %3, ptr %6, align 8, !tbaa.struct !208
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %4, ptr %7, align 8, !tbaa.struct !209
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_decl_common_value_fields(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 8) #21
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %3, 255
  %7 = and i64 %5, -256
  %8 = or disjoint i64 %7, %6
  store i64 %8, ptr %4, align 8
  %9 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %10 = load i64, ptr %4, align 8
  %11 = shl i64 %9, 8
  %12 = and i64 %11, 256
  %13 = and i64 %10, -257
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %4, align 8
  %15 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %16 = load i64, ptr %4, align 8
  %17 = shl i64 %15, 9
  %18 = and i64 %17, 512
  %19 = and i64 %16, -513
  %20 = or disjoint i64 %19, %18
  store i64 %20, ptr %4, align 8
  %21 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %22 = load i64, ptr %4, align 8
  %23 = shl i64 %21, 10
  %24 = and i64 %23, 1024
  %25 = and i64 %22, -1025
  %26 = or disjoint i64 %25, %24
  store i64 %26, ptr %4, align 8
  %27 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %28 = load i64, ptr %4, align 8
  %29 = shl i64 %27, 11
  %30 = and i64 %29, 2048
  %31 = and i64 %28, -2049
  %32 = or disjoint i64 %31, %30
  store i64 %32, ptr %4, align 8
  %33 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %34 = load i64, ptr %4, align 8
  %35 = shl i64 %33, 12
  %36 = and i64 %35, 4096
  %37 = and i64 %34, -4097
  %38 = or disjoint i64 %37, %36
  store i64 %38, ptr %4, align 8
  %39 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %40 = load i64, ptr %1, align 8
  %41 = shl i64 %39, 42
  %42 = and i64 %41, 4398046511104
  %43 = and i64 %40, -4398046511105
  %44 = or disjoint i64 %43, %42
  store i64 %44, ptr %1, align 8
  %45 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %46 = load i64, ptr %4, align 8
  %47 = shl i64 %45, 13
  %48 = and i64 %47, 8192
  %49 = and i64 %46, -8193
  %50 = or disjoint i64 %49, %48
  store i64 %50, ptr %4, align 8
  %51 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %52 = load i64, ptr %4, align 8
  %53 = shl i64 %51, 14
  %54 = and i64 %53, 16384
  %55 = and i64 %52, -16385
  %56 = or disjoint i64 %55, %54
  store i64 %56, ptr %4, align 8
  %57 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %58 = load i64, ptr %4, align 8
  %59 = shl i64 %57, 25
  %60 = and i64 %59, 33554432
  %61 = and i64 %58, -33554433
  %62 = or disjoint i64 %61, %60
  store i64 %62, ptr %4, align 8
  %63 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %64 = load i64, ptr %4, align 8
  %65 = shl i64 %63, 27
  %66 = and i64 %65, 134217728
  %67 = and i64 %64, -134217729
  %68 = or disjoint i64 %67, %66
  store i64 %68, ptr %4, align 8
  %69 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 32) #21
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  store i32 %70, ptr %71, align 8, !tbaa !22
  %72 = load i64, ptr %1, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 30
  br i1 %74, label %75, label %87

75:                                               ; preds = %2
  %76 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %77 = load i64, ptr %4, align 8
  %78 = shl i64 %76, 24
  %79 = and i64 %78, 16777216
  %80 = and i64 %77, -16777217
  %81 = or disjoint i64 %80, %79
  store i64 %81, ptr %4, align 8
  %82 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 32) #21
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 2
  store i32 %83, ptr %84, align 4, !tbaa !22
  %85 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 1
  store i32 -1, ptr %85, align 8, !tbaa !22
  %86 = load i64, ptr %1, align 8
  br label %87

87:                                               ; preds = %75, %2
  %88 = phi i64 [ %86, %75 ], [ %72, %2 ]
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 31
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %93 = load i64, ptr %1, align 8
  %94 = shl i64 %92, 41
  %95 = and i64 %94, 2199023255552
  %96 = and i64 %93, -2199023255553
  %97 = or disjoint i64 %96, %95
  store i64 %97, ptr %1, align 8
  %98 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %99 = load i64, ptr %4, align 8
  %100 = shl i64 %98, 26
  %101 = and i64 %100, 67108864
  %102 = and i64 %99, -67108865
  %103 = or disjoint i64 %102, %101
  store i64 %103, ptr %4, align 8
  %104 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 8) #21
  %105 = sub i64 0, %104
  %106 = and i64 %104, %105
  %107 = tail call i32 @exact_log2(i64 noundef %106) #21
  %108 = load i64, ptr %4, align 8
  %109 = and i32 %107, 255
  %110 = zext nneg i32 %109 to i64
  %111 = shl nuw nsw i64 %110, 32
  %112 = and i64 %108, -1095216660481
  %113 = or disjoint i64 %111, %112
  store i64 %113, ptr %4, align 8
  %114 = load i64, ptr %1, align 8
  br label %115

115:                                              ; preds = %91, %87
  %116 = phi i64 [ %114, %91 ], [ %88, %87 ]
  %117 = trunc i64 %116 to i16
  switch i16 %117, label %141 [
    i16 36, label %118
    i16 34, label %118
    i16 32, label %118
  ]

118:                                              ; preds = %115, %115, %115
  %119 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %120 = load i64, ptr %4, align 8
  %121 = shl i64 %119, 28
  %122 = and i64 %121, 268435456
  %123 = and i64 %120, -268435457
  %124 = or disjoint i64 %123, %122
  store i64 %124, ptr %4, align 8
  %125 = load i64, ptr %1, align 8
  %126 = trunc i64 %125 to i16
  switch i16 %126, label %134 [
    i16 32, label %127
    i16 34, label %127
  ]

127:                                              ; preds = %118, %118
  %128 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %129 = load i64, ptr %4, align 8
  %130 = shl i64 %128, 26
  %131 = and i64 %130, 67108864
  %132 = and i64 %129, -67108865
  %133 = or disjoint i64 %132, %131
  store i64 %133, ptr %4, align 8
  br label %134

134:                                              ; preds = %118, %127
  %135 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %136 = load i64, ptr %4, align 8
  %137 = shl i64 %135, 29
  %138 = and i64 %137, 536870912
  %139 = and i64 %136, -536870913
  %140 = or disjoint i64 %139, %138
  store i64 %140, ptr %4, align 8
  br label %141

141:                                              ; preds = %115, %134
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_decl_wrtl_value_fields(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = shl i64 %3, 24
  %7 = and i64 %6, 16777216
  %8 = and i64 %5, -16777217
  %9 = or disjoint i64 %8, %7
  store i64 %9, ptr %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_decl_with_vis_value_fields(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %4, 1
  %8 = and i32 %6, -2
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 8
  %10 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr %5, align 8
  %13 = shl i32 %11, 3
  %14 = and i32 %13, 8
  %15 = and i32 %12, -9
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %5, align 8
  %17 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %18 = trunc i64 %17 to i32
  %19 = load i32, ptr %5, align 8
  %20 = shl i32 %18, 5
  %21 = and i32 %20, 32
  %22 = and i32 %19, -33
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %5, align 8
  %24 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %25 = trunc i64 %24 to i32
  %26 = load i32, ptr %5, align 8
  %27 = shl i32 %25, 7
  %28 = and i32 %27, 128
  %29 = and i32 %26, -129
  %30 = or disjoint i32 %28, %29
  store i32 %30, ptr %5, align 8
  %31 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %32 = trunc i64 %31 to i32
  %33 = load i32, ptr %5, align 8
  %34 = shl i32 %32, 8
  %35 = and i32 %34, 256
  %36 = and i32 %33, -257
  %37 = or disjoint i32 %35, %36
  store i32 %37, ptr %5, align 8
  %38 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %39 = trunc i64 %38 to i32
  %40 = load i32, ptr %5, align 8
  %41 = shl i32 %39, 9
  %42 = and i32 %41, 512
  %43 = and i32 %40, -513
  %44 = or disjoint i32 %42, %43
  store i32 %44, ptr %5, align 8
  %45 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 2) #21
  %46 = trunc i64 %45 to i32
  %47 = load i32, ptr %5, align 8
  %48 = shl i32 %46, 10
  %49 = and i32 %48, 3072
  %50 = and i32 %47, -3073
  %51 = or disjoint i32 %49, %50
  store i32 %51, ptr %5, align 8
  %52 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %53 = trunc i64 %52 to i32
  %54 = load i32, ptr %5, align 8
  %55 = shl i32 %53, 12
  %56 = and i32 %55, 4096
  %57 = and i32 %54, -4097
  %58 = or disjoint i32 %56, %57
  store i32 %58, ptr %5, align 8
  %59 = load i64, ptr %1, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %85

62:                                               ; preds = %2
  %63 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %64 = trunc i64 %63 to i32
  %65 = load i32, ptr %5, align 8
  %66 = shl i32 %64, 1
  %67 = and i32 %66, 2
  %68 = and i32 %65, -3
  %69 = or disjoint i32 %67, %68
  store i32 %69, ptr %5, align 8
  %70 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %71 = trunc i64 %70 to i32
  %72 = load i32, ptr %5, align 8
  %73 = shl i32 %71, 4
  %74 = and i32 %73, 16
  %75 = and i32 %72, -17
  %76 = or disjoint i32 %74, %75
  store i32 %76, ptr %5, align 8
  %77 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 3) #21
  %78 = trunc i64 %77 to i32
  %79 = load i32, ptr %5, align 8
  %80 = shl i32 %78, 13
  %81 = and i32 %80, 57344
  %82 = and i32 %79, -57345
  %83 = or disjoint i32 %81, %82
  store i32 %83, ptr %5, align 8
  %84 = load i64, ptr %1, align 8
  br label %85

85:                                               ; preds = %62, %2
  %86 = phi i64 [ %84, %62 ], [ %59, %2 ]
  %87 = trunc i64 %86 to i16
  switch i16 %87, label %91 [
    i16 32, label %88
    i16 29, label %88
  ]

88:                                               ; preds = %85, %85
  %89 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 16) #21
  %90 = trunc i64 %89 to i16
  tail call void @decl_init_priority_insert(ptr noundef nonnull %1, i16 noundef zeroext %90) #21
  br label %91

91:                                               ; preds = %85, %88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_function_decl_value_fields(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 11) #21
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %4, 2047
  %8 = and i32 %6, -2048
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 8
  %10 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 2) #21
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr %5, align 8
  %13 = shl i32 %11, 11
  %14 = and i32 %13, 6144
  %15 = and i32 %12, -6145
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %5, align 8
  %17 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %18 = trunc i64 %17 to i32
  %19 = load i32, ptr %5, align 8
  %20 = shl i32 %18, 13
  %21 = and i32 %20, 8192
  %22 = and i32 %19, -8193
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %5, align 8
  %24 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %25 = trunc i64 %24 to i32
  %26 = load i32, ptr %5, align 8
  %27 = shl i32 %25, 14
  %28 = and i32 %27, 16384
  %29 = and i32 %26, -16385
  %30 = or disjoint i32 %28, %29
  store i32 %30, ptr %5, align 8
  %31 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %32 = trunc i64 %31 to i32
  %33 = load i32, ptr %5, align 8
  %34 = shl i32 %32, 15
  %35 = and i32 %34, 32768
  %36 = and i32 %33, -32769
  %37 = or disjoint i32 %35, %36
  store i32 %37, ptr %5, align 8
  %38 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %39 = trunc i64 %38 to i32
  %40 = load i32, ptr %5, align 8
  %41 = shl i32 %39, 16
  %42 = and i32 %41, 65536
  %43 = and i32 %40, -65537
  %44 = or disjoint i32 %42, %43
  store i32 %44, ptr %5, align 8
  %45 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %46 = trunc i64 %45 to i32
  %47 = load i32, ptr %5, align 8
  %48 = shl i32 %46, 17
  %49 = and i32 %48, 131072
  %50 = and i32 %47, -131073
  %51 = or disjoint i32 %49, %50
  store i32 %51, ptr %5, align 8
  %52 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %53 = trunc i64 %52 to i32
  %54 = load i32, ptr %5, align 8
  %55 = shl i32 %53, 18
  %56 = and i32 %55, 262144
  %57 = and i32 %54, -262145
  %58 = or disjoint i32 %56, %57
  store i32 %58, ptr %5, align 8
  %59 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %60 = trunc i64 %59 to i32
  %61 = load i32, ptr %5, align 8
  %62 = shl i32 %60, 19
  %63 = and i32 %62, 524288
  %64 = and i32 %61, -524289
  %65 = or disjoint i32 %63, %64
  store i32 %65, ptr %5, align 8
  %66 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %67 = trunc i64 %66 to i32
  %68 = load i32, ptr %5, align 8
  %69 = shl i32 %67, 20
  %70 = and i32 %69, 1048576
  %71 = and i32 %68, -1048577
  %72 = or disjoint i32 %70, %71
  store i32 %72, ptr %5, align 8
  %73 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %74 = trunc i64 %73 to i32
  %75 = load i32, ptr %5, align 8
  %76 = shl i32 %74, 21
  %77 = and i32 %76, 2097152
  %78 = and i32 %75, -2097153
  %79 = or disjoint i32 %77, %78
  store i32 %79, ptr %5, align 8
  %80 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %81 = trunc i64 %80 to i32
  %82 = load i32, ptr %5, align 8
  %83 = shl i32 %81, 22
  %84 = and i32 %83, 4194304
  %85 = and i32 %82, -4194305
  %86 = or disjoint i32 %84, %85
  store i32 %86, ptr %5, align 8
  %87 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %88 = trunc i64 %87 to i32
  %89 = load i32, ptr %5, align 8
  %90 = shl i32 %88, 23
  %91 = and i32 %90, 8388608
  %92 = and i32 %89, -8388609
  %93 = or disjoint i32 %91, %92
  store i32 %93, ptr %5, align 8
  %94 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %95 = trunc i64 %94 to i32
  %96 = load i32, ptr %5, align 8
  %97 = shl i32 %95, 24
  %98 = and i32 %97, 16777216
  %99 = and i32 %96, -16777217
  %100 = or disjoint i32 %98, %99
  store i32 %100, ptr %5, align 8
  %101 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %102 = trunc i64 %101 to i32
  %103 = load i32, ptr %5, align 8
  %104 = shl i32 %102, 25
  %105 = and i32 %104, 33554432
  %106 = and i32 %103, -33554433
  %107 = or disjoint i32 %105, %106
  store i32 %107, ptr %5, align 8
  %108 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %109 = trunc i64 %108 to i32
  %110 = load i32, ptr %5, align 8
  %111 = shl i32 %109, 26
  %112 = and i32 %111, 67108864
  %113 = and i32 %110, -67108865
  %114 = or disjoint i32 %112, %113
  store i32 %114, ptr %5, align 8
  %115 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %116 = trunc i64 %115 to i32
  %117 = load i32, ptr %5, align 8
  %118 = shl i32 %116, 27
  %119 = and i32 %118, 134217728
  %120 = and i32 %117, -134217729
  %121 = or disjoint i32 %119, %120
  store i32 %121, ptr %5, align 8
  %122 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %123 = trunc i64 %122 to i32
  %124 = load i32, ptr %5, align 8
  %125 = shl i32 %123, 28
  %126 = and i32 %125, 268435456
  %127 = and i32 %124, -268435457
  %128 = or disjoint i32 %126, %127
  store i32 %128, ptr %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_type_value_fields(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 9) #21
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %4, 1023
  %8 = and i32 %6, -1024
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 4
  %10 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 7) #21
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr %5, align 4
  %13 = shl i32 %11, 16
  %14 = and i32 %13, 16711680
  %15 = and i32 %12, -16711681
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %5, align 4
  %17 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %18 = trunc i64 %17 to i32
  %19 = load i32, ptr %5, align 4
  %20 = shl i32 %18, 24
  %21 = and i32 %20, 16777216
  %22 = and i32 %19, -16777217
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %5, align 4
  %24 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %25 = trunc i64 %24 to i32
  %26 = load i32, ptr %5, align 4
  %27 = shl i32 %25, 10
  %28 = and i32 %27, 1024
  %29 = and i32 %26, -1025
  %30 = or disjoint i32 %28, %29
  store i32 %30, ptr %5, align 4
  %31 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %32 = trunc i64 %31 to i32
  %33 = load i32, ptr %5, align 4
  %34 = shl i32 %32, 11
  %35 = and i32 %34, 2048
  %36 = and i32 %33, -2049
  %37 = or disjoint i32 %35, %36
  store i32 %37, ptr %5, align 4
  %38 = load i64, ptr %1, align 8
  %39 = and i64 %38, 65534
  %40 = icmp eq i64 %39, 16
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %43 = trunc i64 %42 to i32
  %44 = load i32, ptr %5, align 4
  %45 = shl i32 %43, 12
  %46 = and i32 %45, 4096
  %47 = and i32 %44, -4097
  %48 = or disjoint i32 %46, %47
  store i32 %48, ptr %5, align 4
  br label %49

49:                                               ; preds = %2, %41
  %50 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %51 = load i64, ptr %1, align 8
  %52 = shl i64 %50, 41
  %53 = and i64 %52, 2199023255552
  %54 = and i64 %51, -2199023255553
  %55 = or disjoint i64 %54, %53
  store i64 %55, ptr %1, align 8
  %56 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %5, align 4
  %59 = shl i32 %57, 13
  %60 = and i32 %59, 8192
  %61 = and i32 %58, -8193
  %62 = or disjoint i32 %60, %61
  store i32 %62, ptr %5, align 4
  %63 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 2) #21
  %64 = trunc i64 %63 to i32
  %65 = load i32, ptr %5, align 4
  %66 = shl i32 %64, 14
  %67 = and i32 %66, 49152
  %68 = and i32 %65, -49153
  %69 = or disjoint i32 %67, %68
  store i32 %69, ptr %5, align 4
  %70 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %71 = load i64, ptr %1, align 8
  %72 = shl i64 %70, 42
  %73 = and i64 %72, 4398046511104
  %74 = and i64 %71, -4398046511105
  %75 = or disjoint i64 %74, %73
  store i64 %75, ptr %1, align 8
  %76 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %77 = load i64, ptr %1, align 8
  %78 = shl i64 %76, 20
  %79 = and i64 %78, 1048576
  %80 = and i64 %77, -1048577
  %81 = or disjoint i64 %80, %79
  store i64 %81, ptr %1, align 8
  %82 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 32) #21
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 7
  store i32 %83, ptr %84, align 8, !tbaa !22
  %85 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 32) #21
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 8
  store i32 %86, ptr %87, align 4, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unpack_ts_block_value_fields(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 1) #21
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %4, 1
  %8 = and i32 %6, -2
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 8
  %10 = tail call i64 @bp_unpack_value(ptr noundef %0, i32 noundef 31) #21
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr %5, align 8
  %13 = shl i32 %11, 1
  %14 = and i32 %12, 1
  %15 = or disjoint i32 %14, %13
  store i32 %15, ptr %5, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @decl_init_priority_insert(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_common_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_vector_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @lto_input_chain(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_vector, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_complex_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_decl_minimal_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_decl_common_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 29
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !22
  br label %14

14:                                               ; preds = %11, %3
  %15 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !22
  %17 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !22
  %19 = load i64, ptr %2, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 34
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = tail call fastcc ptr @lto_input_chain(ptr noundef %0, ptr noundef %1) #19
  %24 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !22
  %25 = load i64, ptr %2, align 8
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i64 [ %25, %22 ], [ %19, %14 ]
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %36 [
    i16 32, label %29
    i16 34, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 67108864
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  tail call void @decl_value_expr_insert(ptr noundef nonnull %2, ptr noundef %35) #21
  br label %36

36:                                               ; preds = %26, %34, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_decl_non_common_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 29
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !22
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %7, %3
  %13 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_decl_with_vis_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2104, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 1
  store ptr %4, ptr %12, align 8, !tbaa !22
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !22
  %16 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_field_decl_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !22
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !22
  %12 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !22
  %14 = tail call fastcc ptr @lto_input_chain(ptr noundef %0, ptr noundef %1) #19
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_function_decl_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !22
  %10 = load ptr, ptr %5, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call fastcc void @lto_init_eh() #19
  br label %13

13:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_type_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %9 [
    i16 6, label %6
    i16 15, label %6
    i16 16, label %6
    i16 17, label %6
    i16 20, label %6
    i16 21, label %6
    i16 14, label %6
  ]

6:                                                ; preds = %3, %3, %3, %3, %3, %3, %3
  %7 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %8 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %6, %3
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !22
  %12 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %13 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !22
  %14 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %15 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !22
  %16 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %17 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  store ptr %16, ptr %17, align 8, !tbaa !22
  %18 = load i64, ptr %2, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %20 [
    i16 10, label %23
    i16 12, label %23
  ]

20:                                               ; preds = %9
  %21 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %22 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  store ptr %21, ptr %22, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %9, %9, %20
  %24 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %25 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  store ptr %24, ptr %25, align 8, !tbaa !22
  %26 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %27 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 16
  store ptr %26, ptr %27, align 8, !tbaa !22
  %28 = load i64, ptr %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -16
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %35 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 17
  store ptr %34, ptr %35, align 8, !tbaa !22
  br label %36

36:                                               ; preds = %23, %33
  %37 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %38 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 18
  store ptr %37, ptr %38, align 8, !tbaa !22
  %39 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %40 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 19
  store ptr %39, ptr %40, align 8, !tbaa !22
  %41 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %42 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_list_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !22
  %6 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = tail call fastcc ptr @lto_input_chain(ptr noundef %0, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_vec_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %10 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 2, i64 %8
  store ptr %9, ptr %10, align 8, !tbaa !22
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %4, align 8, !tbaa !22
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !210

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_exp_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %5 = trunc i64 %4 to i32
  %6 = tail call fastcc i32 @tree_operand_length(ptr noundef %2) #19
  %7 = icmp eq i32 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2235, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = and i64 %4, 4294967295
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %17, %13 ]
  %15 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !22
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %19, label %13, !llvm.loop !211

19:                                               ; preds = %13, %9
  %20 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1) #19
  %21 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !22
  %22 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %23 = tail call ptr @tree_block(ptr noundef %2) #21
  store ptr %22, ptr %23, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_block_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 2
  store i32 %4, ptr %5, align 4, !tbaa !22
  %6 = tail call fastcc ptr @lto_input_chain(ptr noundef %0, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 4
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ 0, %11 ], [ %16, %13 ]
  %15 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %12, ptr noundef %15) #19
  %16 = add nuw i32 %14, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %18, label %13, !llvm.loop !212

18:                                               ; preds = %13, %3
  %19 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %20 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 6
  store ptr %19, ptr %20, align 8, !tbaa !22
  %21 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %22 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 7
  store ptr %21, ptr %22, align 8, !tbaa !22
  %23 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %24 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 8
  store ptr %23, ptr %24, align 8, !tbaa !22
  %25 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %26 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 9
  store ptr %25, ptr %26, align 8, !tbaa !22
  %27 = tail call fastcc ptr @lto_input_chain(ptr noundef %0, ptr noundef %1) #19
  %28 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 5
  store ptr %27, ptr %28, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_binfo_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 9
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %4, %6 ], [ %10, %8 ]
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef nonnull %7, ptr noundef nonnull %9) #19
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !213

12:                                               ; preds = %8, %3
  %13 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %14 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !22
  %15 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !22
  %17 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !22
  %19 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %20 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !22
  %21 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 5
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %29, %26 ]
  %28 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %25, ptr noundef %28) #19
  %29 = add nuw i32 %27, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %31, label %26, !llvm.loop !214

31:                                               ; preds = %26, %12
  %32 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %33 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 6
  store ptr %32, ptr %33, align 8, !tbaa !22
  %34 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %35 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 7
  store ptr %34, ptr %35, align 8, !tbaa !22
  %36 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %37 = getelementptr inbounds %struct.tree_binfo, ptr %2, i64 0, i32 8
  store ptr %36, ptr %37, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lto_input_ts_constructor_tree_pointers(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %0) #21
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_constructor, ptr %2, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i32 [ 0, %7 ], [ %15, %9 ]
  %11 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %12 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %13 = tail call fastcc ptr @VEC_constructor_elt_gc_safe_push(ptr noundef nonnull %8) #19
  store ptr %11, ptr %13, align 8, !tbaa !215
  %14 = getelementptr inbounds %struct.constructor_elt_d, ptr %13, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !217
  %15 = add nuw i32 %10, 1
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %17, label %9, !llvm.loop !218

17:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lto_input_chain(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @lto_input_sleb128(ptr noundef %0) #21
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2, %14
  %7 = phi i32 [ %17, %14 ], [ 0, %2 ]
  %8 = phi ptr [ %10, %14 ], [ null, %2 ]
  %9 = phi ptr [ %15, %14 ], [ null, %2 ]
  %10 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) #19
  %11 = icmp eq ptr %8, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  store ptr %10, ptr %13, align 8, !tbaa !22
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi ptr [ %9, %12 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !22
  %17 = add nuw nsw i32 %7, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %6, !llvm.loop !219

19:                                               ; preds = %14, %2
  %20 = phi ptr [ null, %2 ], [ %15, %14 ]
  ret ptr %20
}

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2, i32 noundef 1) #19, !range !98
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_gc_safe_push(ptr nocapture noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_constructor_elt_gc_reserve(ptr noundef %0) #19
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %2) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constructor_elt_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_constructor_elt_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !220
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !220
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !222
  %6 = load i32, ptr %0, align 8, !tbaa !220
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: optsize
declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lto_symtab_register_decl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_resolution(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @VEC_ld_plugin_symbol_resolution_t_base_length(ptr noundef nonnull %4) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @VEC_ld_plugin_symbol_resolution_t_base_index(ptr noundef nonnull %4, i32 noundef %1) #19
  br label %11

11:                                               ; preds = %2, %9, %6
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ld_plugin_symbol_resolution_t_base_length(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 4, !tbaa !223
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ld_plugin_symbol_resolution_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ld_plugin_symbol_resolution_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !80
  ret i32 %5
}

; Function Attrs: optsize
declare void @lto_record_renamed_decl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 24}
!10 = !{!"lto_function_header", !11, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!11 = !{!"lto_header", !12, i64 0, !12, i64 2, !13, i64 4}
!12 = !{!"short", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!10, !13, i64 28}
!15 = !{!16, !6, i64 0}
!16 = !{!"lto_input_block", !6, i64 0, !13, i64 8, !13, i64 12}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !13, i64 12}
!19 = !{!10, !13, i64 32}
!20 = !{!10, !12, i64 0}
!21 = !{!10, !12, i64 2}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !6, i64 0}
!24 = !{!"lto_file_decl_data", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !6, i64 48, !6, i64 56}
!25 = !{!26, !6, i64 24}
!26 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !6, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!27 = !{!24, !6, i64 8}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !6, i64 0}
!31 = !{!"data_in", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !6, i64 40, !13, i64 48, !13, i64 52, !6, i64 56, !6, i64 64}
!32 = !{!33, !6, i64 16}
!33 = !{!"gimple_df", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !34, i64 32, !34, i64 48, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !13, i64 96, !35, i64 104}
!34 = !{!"pt_solution", !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !6, i64 8}
!35 = !{!"ssa_operands", !6, i64 0, !13, i64 8, !13, i64 12, !7, i64 16, !6, i64 24, !6, i64 32}
!36 = !{!31, !6, i64 64}
!37 = !{!38, !6, i64 912}
!38 = !{!"gcc_target", !39, i64 0, !41, i64 368, !42, i64 664, !13, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !43, i64 1064, !43, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !44, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !43, i64 1464, !45, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !46, i64 1784, !47, i64 1792, !48, i64 1896, !49, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!39 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !40, i64 24, !40, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!40 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!41 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!42 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!43 = !{!"long", !7, i64 0}
!44 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!45 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!46 = !{!"c", !6, i64 0}
!47 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!48 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!49 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!50 = !{!51, !13, i64 8}
!51 = !{!"lto_tree_ref_table", !6, i64 0, !13, i64 8}
!52 = !{!51, !6, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{!55, !6, i64 0}
!55 = !{!"string_slot", !6, i64 0, !13, i64 8}
!56 = !{!31, !6, i64 16}
!57 = !{!31, !13, i64 24}
!58 = !{!31, !6, i64 56}
!59 = !{!31, !6, i64 8}
!60 = !{!26, !6, i64 8}
!61 = !{!62, !13, i64 48}
!62 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !6, i64 40, !13, i64 48, !7, i64 52, !7, i64 60, !13, i64 68, !13, i64 72}
!63 = !{!62, !13, i64 32}
!64 = !{!62, !6, i64 16}
!65 = !{!62, !6, i64 40}
!66 = !{!67, !13, i64 52}
!67 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !43, i64 56}
!68 = !{!67, !43, i64 56}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
!71 = !{!62, !6, i64 0}
!72 = !{!73, !6, i64 48}
!73 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !43, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!74 = !{!73, !6, i64 56}
!75 = distinct !{!75, !29}
!76 = !{!26, !13, i64 120}
!77 = !{!26, !6, i64 56}
!78 = !{!26, !6, i64 64}
!79 = !{!26, !6, i64 72}
!80 = !{!13, !13, i64 0}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = !{!67, !6, i64 8}
!86 = distinct !{!86, !29}
!87 = !{!88, !6, i64 0}
!88 = !{!"alias_pair", !6, i64 0, !6, i64 8}
!89 = !{!88, !6, i64 8}
!90 = distinct !{!90, !29}
!91 = !{!31, !6, i64 40}
!92 = !{!93, !13, i64 0}
!93 = !{!"VEC_basic_block_base", !13, i64 0, !13, i64 4, !7, i64 8}
!94 = !{!73, !13, i64 80}
!95 = !{!62, !13, i64 24}
!96 = !{!73, !13, i64 96}
!97 = !{}
!98 = !{i32 0, i32 2}
!99 = !{!93, !13, i64 4}
!100 = !{!101, !6, i64 0}
!101 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = !{!26, !6, i64 0}
!105 = !{!106, !6, i64 8}
!106 = !{!"eh_status", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40}
!107 = distinct !{!107, !29}
!108 = !{!106, !6, i64 16}
!109 = distinct !{!109, !29}
!110 = !{!106, !6, i64 32}
!111 = distinct !{!111, !29}
!112 = !{!38, !7, i64 2035}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = !{!73, !43, i64 72}
!116 = !{!73, !13, i64 84}
!117 = !{!73, !13, i64 88}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = !{!26, !13, i64 104}
!121 = !{!122, !6, i64 0}
!122 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!123 = !{!122, !6, i64 8}
!124 = !{!122, !6, i64 16}
!125 = !{!126, !6, i64 0}
!126 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!127 = !{!126, !6, i64 16}
!128 = !{!129, !6, i64 96}
!129 = !{!"cgraph_node", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !130, i64 144, !132, i64 184, !133, i64 224, !134, i64 232, !135, i64 256, !43, i64 288, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 308, !13, i64 309, !13, i64 309}
!130 = !{!"cgraph_local_info", !6, i64 0, !131, i64 8, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32, !13, i64 32}
!131 = !{!"inline_summary", !43, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!132 = !{!"cgraph_global_info", !43, i64 0, !43, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !7, i64 36}
!133 = !{!"cgraph_rtl_info", !13, i64 0}
!134 = !{!"cgraph_clone_info", !6, i64 0, !6, i64 8, !6, i64 16}
!135 = !{!"cgraph_thunk_info", !43, i64 0, !43, i64 8, !6, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!136 = distinct !{!136, !29}
!137 = !{!129, !6, i64 88}
!138 = !{!129, !6, i64 72}
!139 = distinct !{!139, !29}
!140 = distinct !{!140, !29}
!141 = !{!142, !13, i64 0}
!142 = !{!"VEC_tree_base", !13, i64 0, !13, i64 4, !7, i64 8}
!143 = !{!144, !13, i64 0}
!144 = !{!"VEC_eh_region_base", !13, i64 0, !13, i64 4, !7, i64 8}
!145 = !{!146, !13, i64 24}
!146 = !{!"eh_region_d", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !6, i64 56, !6, i64 64, !6, i64 72, !7, i64 80}
!147 = !{!146, !6, i64 0}
!148 = !{!146, !6, i64 8}
!149 = !{!146, !6, i64 16}
!150 = !{!146, !13, i64 28}
!151 = distinct !{!151, !29}
!152 = !{!146, !6, i64 56}
!153 = !{!154, !13, i64 0}
!154 = !{!"VEC_eh_landing_pad_base", !13, i64 0, !13, i64 4, !7, i64 8}
!155 = !{!156, !13, i64 32}
!156 = !{!"eh_landing_pad_d", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32}
!157 = !{!156, !6, i64 0}
!158 = !{!156, !6, i64 8}
!159 = !{!156, !6, i64 16}
!160 = !{!161, !13, i64 0}
!161 = !{!"VEC_uchar_base", !13, i64 0, !13, i64 4, !7, i64 8}
!162 = !{!106, !6, i64 0}
!163 = distinct !{!163, !29}
!164 = distinct !{!164, !29}
!165 = !{!144, !13, i64 4}
!166 = !{!167, !6, i64 16}
!167 = !{!"eh_catch_d", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!168 = !{!167, !6, i64 24}
!169 = !{!167, !6, i64 32}
!170 = distinct !{!170, !29}
!171 = !{!167, !6, i64 0}
!172 = !{!167, !6, i64 8}
!173 = distinct !{!173, !29}
!174 = !{!31, !13, i64 48}
!175 = !{!31, !13, i64 52}
!176 = !{!154, !13, i64 4}
!177 = !{!142, !13, i64 4}
!178 = !{!161, !13, i64 4}
!179 = !{i32 -188, i32 -189}
!180 = distinct !{!180, !29}
!181 = distinct !{!181, !29}
!182 = distinct !{!182, !29}
!183 = !{i32 0, i32 256}
!184 = !{!26, !6, i64 48}
!185 = distinct !{!185, !29}
!186 = distinct !{!186, !29}
!187 = !{!73, !6, i64 0}
!188 = distinct !{!188, !29}
!189 = !{!67, !6, i64 0}
!190 = distinct !{!190, !29}
!191 = distinct !{!191, !29}
!192 = !{!43, !43, i64 0}
!193 = !{!194, !13, i64 0}
!194 = !{!"VEC_edge_base", !13, i64 0, !13, i64 4, !7, i64 8}
!195 = !{!196, !6, i64 0}
!196 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!197 = !{!198, !13, i64 76}
!198 = !{!"cgraph_edge", !43, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !12, i64 88, !13, i64 90, !13, i64 90, !13, i64 90}
!199 = !{!198, !6, i64 56}
!200 = distinct !{!200, !29}
!201 = !{!202, !13, i64 0}
!202 = !{!"VEC_alias_pair_base", !13, i64 0, !13, i64 4, !7, i64 8}
!203 = !{!202, !13, i64 4}
!204 = !{!205, !13, i64 0}
!205 = !{!"VEC_bitpack_word_t_base", !13, i64 0, !13, i64 4, !7, i64 8}
!206 = !{!205, !13, i64 4}
!207 = distinct !{!207, !29}
!208 = !{i64 0, i64 8, !192, i64 8, i64 8, !192, i64 16, i64 4, !80}
!209 = !{i64 0, i64 8, !192, i64 8, i64 4, !80}
!210 = distinct !{!210, !29}
!211 = distinct !{!211, !29}
!212 = distinct !{!212, !29}
!213 = distinct !{!213, !29}
!214 = distinct !{!214, !29}
!215 = !{!216, !6, i64 0}
!216 = !{!"constructor_elt_d", !6, i64 0, !6, i64 8}
!217 = !{!216, !6, i64 8}
!218 = distinct !{!218, !29}
!219 = distinct !{!219, !29}
!220 = !{!221, !13, i64 0}
!221 = !{!"VEC_constructor_elt_base", !13, i64 0, !13, i64 4, !7, i64 8}
!222 = !{!221, !13, i64 4}
!223 = !{!224, !13, i64 0}
!224 = !{!"VEC_ld_plugin_symbol_resolution_t_base", !13, i64 0, !13, i64 4, !7, i64 8}
