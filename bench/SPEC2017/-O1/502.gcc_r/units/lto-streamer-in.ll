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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.lto_input_block = type { ptr, i32, i32 }
%struct.lto_function_header = type { %struct.lto_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.data_in = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.alias_pair = type { ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.bitpack_d = type { i64, i64, ptr }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.real_value = type { i32, [3 x i64] }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.string_slot = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.VEC_ld_plugin_symbol_resolution_t_base = type { i32, i32, [1 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_input_function_body(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !35
  tail call fastcc void @lto_read_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_read_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lto_input_block, align 8
  %8 = alloca %struct.lto_input_block, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %9 = getelementptr inbounds %struct.lto_function_header, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = add nsw i32 %10, 36
  %12 = getelementptr inbounds %struct.lto_function_header, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !57
  %14 = add nsw i32 %11, %13
  %15 = getelementptr inbounds i8, ptr %2, i64 36
  store ptr %15, ptr %7, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.lto_input_block, ptr %7, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.lto_input_block, ptr %7, i64 0, i32 2
  store i32 %10, ptr %17, align 4, !tbaa !61
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  store ptr %19, ptr %8, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.lto_input_block, ptr %8, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.lto_input_block, ptr %8, i64 0, i32 2
  store i32 %13, ptr %21, align 4, !tbaa !61
  %22 = sext i32 %14 to i64
  %23 = getelementptr inbounds i8, ptr %2, i64 %22
  %24 = getelementptr inbounds %struct.lto_function_header, ptr %2, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !62
  %26 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #19
  store ptr %0, ptr %26, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 2
  store ptr %23, ptr %27, align 8, !tbaa !65
  %28 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 3
  store i32 %25, ptr %28, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 9
  store ptr null, ptr %29, align 8, !tbaa !67
  %30 = tail call ptr @lto_streamer_cache_create() #19
  %31 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 10
  store ptr %30, ptr %31, align 8, !tbaa !68
  %32 = load i16, ptr %2, align 4, !tbaa !69
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !70
  %36 = sext i16 %35 to i32
  tail call void @lto_check_version(i32 noundef %33, i32 noundef %36) #19
  %37 = icmp eq i32 %3, 1
  br i1 %37, label %38, label %1701

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  tail call void @push_cfun(ptr noundef %40) #19
  tail call void @init_tree_ssa(ptr noundef %40) #19
  %41 = tail call ptr @lto_get_function_in_decl_state(ptr noundef %0, ptr noundef %1) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1485, ptr noundef nonnull @.str.1) #19
  br label %44

44:                                               ; preds = %38, %43
  store ptr %41, ptr %0, align 8, !tbaa !71
  tail call void @init_empty_tree_cfg_for_function(ptr noundef %40) #19
  tail call void @init_ssa_operands() #19
  %45 = call i64 @lto_input_uleb128(ptr noundef nonnull %7) #19
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 7
  store i32 %46, ptr %49, align 8, !tbaa !75
  %50 = call i64 @lto_input_uleb128(ptr noundef nonnull %7) #19
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %47, align 8, !tbaa !73
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 5
  store i32 %51, ptr %53, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %44
  %58 = load i32, ptr %55, align 8, !tbaa !78
  br label %59

59:                                               ; preds = %57, %44
  %60 = phi i32 [ %58, %57 ], [ 0, %44 ]
  %61 = icmp ult i32 %60, %51
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  br i1 %56, label %65, label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %55, align 8, !tbaa !78
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ %64, %63 ], [ 0, %62 ]
  br i1 %56, label %69, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %55, align 8, !tbaa !78
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %68, %67 ], [ 0, %65 ]
  %71 = sub nsw i32 %51, %70
  br i1 %56, label %78, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %55, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !80
  %75 = load i32, ptr %55, align 8, !tbaa !78
  %76 = sub i32 %74, %75
  %77 = icmp uge i32 %76, %71
  br label %80

78:                                               ; preds = %69
  %79 = icmp eq i32 %70, %51
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi i1 [ %77, %72 ], [ %79, %78 ]
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = call ptr @vec_gc_p_reserve_exact(ptr noundef %55, i32 noundef %71) #19
  store ptr %83, ptr %54, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %82, %80
  %85 = load ptr, ptr %54, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %51, ptr %85, align 8, !tbaa !78
  %86 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %85, i64 0, i32 2
  %87 = sext i32 %66 to i64
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87
  %89 = sub nsw i32 %51, %66
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %88, i8 0, i64 %91, i1 false)
  br label %92

92:                                               ; preds = %84, %59
  %93 = load ptr, ptr %47, align 8, !tbaa !73
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %95, align 8, !tbaa !78
  br label %99

99:                                               ; preds = %97, %92
  %100 = phi i32 [ %98, %97 ], [ 0, %92 ]
  %101 = icmp ult i32 %100, %51
  br i1 %101, label %102, label %132

102:                                              ; preds = %99
  br i1 %96, label %105, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %95, align 8, !tbaa !78
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i32 [ %104, %103 ], [ 0, %102 ]
  br i1 %96, label %109, label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %95, align 8, !tbaa !78
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %108, %107 ], [ 0, %105 ]
  %111 = sub nsw i32 %51, %110
  br i1 %96, label %118, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %95, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !80
  %115 = load i32, ptr %95, align 8, !tbaa !78
  %116 = sub i32 %114, %115
  %117 = icmp uge i32 %116, %111
  br label %120

118:                                              ; preds = %109
  %119 = icmp eq i32 %110, %51
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi i1 [ %117, %112 ], [ %119, %118 ]
  br i1 %121, label %124, label %122

122:                                              ; preds = %120
  %123 = call ptr @vec_gc_p_reserve_exact(ptr noundef %95, i32 noundef %111) #19
  store ptr %123, ptr %94, align 8, !tbaa !35
  br label %124

124:                                              ; preds = %122, %120
  %125 = load ptr, ptr %94, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %51, ptr %125, align 8, !tbaa !78
  %126 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %125, i64 0, i32 2
  %127 = sext i32 %106 to i64
  %128 = getelementptr inbounds ptr, ptr %126, i64 %127
  %129 = sub nsw i32 %51, %106
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %128, i8 0, i64 %131, i1 false)
  br label %132

132:                                              ; preds = %124, %99
  %133 = call i64 @lto_input_sleb128(ptr noundef nonnull %7) #19
  %134 = trunc i64 %133 to i32
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %182, label %136

136:                                              ; preds = %132, %178
  %137 = phi i32 [ %180, %178 ], [ %134, %132 ]
  %138 = phi i64 [ %179, %178 ], [ %133, %132 ]
  %139 = load ptr, ptr %47, align 8, !tbaa !73
  %140 = getelementptr inbounds %struct.control_flow_graph, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !82
  %142 = and i64 %138, 4294967295
  %143 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %141, i64 0, i32 2, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !35
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = call fastcc ptr @make_new_block(ptr noundef %40, i32 noundef %137)
  br label %148

148:                                              ; preds = %146, %136
  %149 = phi ptr [ %147, %146 ], [ %144, %136 ]
  %150 = call i64 @lto_input_uleb128(ptr noundef nonnull %7) #19
  %151 = trunc i64 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %178, label %153

153:                                              ; preds = %148, %171
  %154 = phi i32 [ %176, %171 ], [ 0, %148 ]
  %155 = call i64 @lto_input_uleb128(ptr noundef nonnull %7) #19
  %156 = call i64 @lto_input_sleb128(ptr noundef nonnull %7) #19
  %157 = trunc i64 %156 to i32
  %158 = call i64 @lto_input_sleb128(ptr noundef nonnull %7) #19
  %159 = call i64 @lto_input_uleb128(ptr noundef nonnull %7) #19
  %160 = trunc i64 %159 to i32
  %161 = load ptr, ptr %47, align 8, !tbaa !73
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !82
  %164 = and i64 %155, 4294967295
  %165 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %163, i64 0, i32 2, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !35
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %153
  %169 = trunc i64 %155 to i32
  %170 = call fastcc ptr @make_new_block(ptr noundef %40, i32 noundef %169)
  br label %171

171:                                              ; preds = %168, %153
  %172 = phi ptr [ %170, %168 ], [ %166, %153 ]
  %173 = call ptr @make_edge(ptr noundef %149, ptr noundef %172, i32 noundef %160) #19
  %174 = getelementptr inbounds %struct.edge_def, ptr %173, i64 0, i32 8
  store i32 %157, ptr %174, align 4, !tbaa !83
  %175 = getelementptr inbounds %struct.edge_def, ptr %173, i64 0, i32 9
  store i64 %158, ptr %175, align 8, !tbaa !85
  %176 = add nuw i32 %154, 1
  %177 = icmp eq i32 %176, %151
  br i1 %177, label %178, label %153, !llvm.loop !86

178:                                              ; preds = %171, %148
  %179 = call i64 @lto_input_sleb128(ptr noundef nonnull %7) #19
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %136, !llvm.loop !87

182:                                              ; preds = %178, %132
  %183 = load ptr, ptr %47, align 8, !tbaa !73
  %184 = load ptr, ptr %183, align 8, !tbaa !88
  %185 = call i64 @lto_input_sleb128(ptr noundef nonnull %7) #19
  %186 = and i64 %185, 4294967295
  %187 = icmp eq i64 %186, 4294967295
  br i1 %187, label %201, label %188

188:                                              ; preds = %182, %188
  %189 = phi i64 [ %199, %188 ], [ %186, %182 ]
  %190 = phi ptr [ %195, %188 ], [ %184, %182 ]
  %191 = load ptr, ptr %47, align 8, !tbaa !73
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !82
  %194 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %193, i64 0, i32 2, i64 %189
  %195 = load ptr, ptr %194, align 8, !tbaa !35
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 5
  store ptr %190, ptr %196, align 8, !tbaa !89
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 6
  store ptr %195, ptr %197, align 8, !tbaa !91
  %198 = call i64 @lto_input_sleb128(ptr noundef nonnull %7) #19
  %199 = and i64 %198, 4294967295
  %200 = icmp eq i64 %199, 4294967295
  br i1 %200, label %201, label %188, !llvm.loop !92

201:                                              ; preds = %188, %182
  %202 = load ptr, ptr %39, align 8, !tbaa !46
  %203 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %204 = trunc i64 %203 to i32
  %205 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 6
  %206 = load ptr, ptr %205, align 8, !tbaa !93
  %207 = icmp eq ptr %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load ptr, ptr @line_table, align 8, !tbaa !35
  %210 = call ptr @linemap_add(ptr noundef %209, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  br label %211

211:                                              ; preds = %208, %201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %205, i8 0, i64 16, i1 false)
  call void @gimple_register_cfg_hooks() #19
  call fastcc void @lto_tag_check(i32 noundef %204, i32 noundef 228)
  %212 = call ptr @lto_input_bitpack(ptr noundef nonnull %8)
  %213 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %214 = trunc i64 %213 to i32
  %215 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 20
  %216 = load i32, ptr %215, align 8
  %217 = shl i32 %214, 30
  %218 = and i32 %217, 1073741824
  %219 = and i32 %216, -1073741825
  %220 = or disjoint i32 %218, %219
  store i32 %220, ptr %215, align 8
  %221 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %222 = trunc i64 %221 to i32
  %223 = load i32, ptr %215, align 8
  %224 = shl i32 %222, 29
  %225 = and i32 %224, 536870912
  %226 = and i32 %223, -536870913
  %227 = or disjoint i32 %225, %226
  store i32 %227, ptr %215, align 8
  %228 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %229 = trunc i64 %228 to i32
  %230 = load i32, ptr %215, align 8
  %231 = shl i32 %229, 28
  %232 = and i32 %231, 268435456
  %233 = and i32 %230, -268435457
  %234 = or disjoint i32 %232, %233
  store i32 %234, ptr %215, align 8
  %235 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %236 = trunc i64 %235 to i32
  %237 = load i32, ptr %215, align 8
  %238 = shl i32 %236, 27
  %239 = and i32 %238, 134217728
  %240 = and i32 %237, -134217729
  %241 = or disjoint i32 %239, %240
  store i32 %241, ptr %215, align 8
  %242 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %243 = trunc i64 %242 to i32
  %244 = load i32, ptr %215, align 8
  %245 = shl i32 %243, 26
  %246 = and i32 %245, 67108864
  %247 = and i32 %244, -67108865
  %248 = or disjoint i32 %246, %247
  store i32 %248, ptr %215, align 8
  %249 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %250 = trunc i64 %249 to i32
  %251 = load i32, ptr %215, align 8
  %252 = shl i32 %250, 25
  %253 = and i32 %252, 33554432
  %254 = and i32 %251, -33554433
  %255 = or disjoint i32 %253, %254
  store i32 %255, ptr %215, align 8
  %256 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %257 = trunc i64 %256 to i32
  %258 = load i32, ptr %215, align 8
  %259 = shl i32 %257, 24
  %260 = and i32 %259, 16777216
  %261 = and i32 %258, -16777217
  %262 = or disjoint i32 %260, %261
  store i32 %262, ptr %215, align 8
  %263 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %264 = trunc i64 %263 to i32
  %265 = load i32, ptr %215, align 8
  %266 = shl i32 %264, 23
  %267 = and i32 %266, 8388608
  %268 = and i32 %265, -8388609
  %269 = or disjoint i32 %267, %268
  store i32 %269, ptr %215, align 8
  %270 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %271 = trunc i64 %270 to i32
  %272 = load i32, ptr %215, align 8
  %273 = shl i32 %271, 22
  %274 = and i32 %273, 4194304
  %275 = and i32 %272, -4194305
  %276 = or disjoint i32 %274, %275
  store i32 %276, ptr %215, align 8
  %277 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %278 = trunc i64 %277 to i32
  %279 = load i32, ptr %215, align 8
  %280 = shl i32 %278, 20
  %281 = and i32 %280, 1048576
  %282 = and i32 %279, -1048577
  %283 = or disjoint i32 %281, %282
  store i32 %283, ptr %215, align 8
  %284 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %285 = trunc i64 %284 to i32
  %286 = load i32, ptr %215, align 8
  %287 = shl i32 %285, 19
  %288 = and i32 %287, 524288
  %289 = and i32 %286, -524289
  %290 = or disjoint i32 %288, %289
  store i32 %290, ptr %215, align 8
  %291 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 1) #19
  %292 = trunc i64 %291 to i32
  %293 = load i32, ptr %215, align 8
  %294 = shl i32 %292, 18
  %295 = and i32 %294, 262144
  %296 = and i32 %293, -262145
  %297 = or disjoint i32 %295, %296
  store i32 %297, ptr %215, align 8
  %298 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 2) #19
  %299 = trunc i64 %298 to i32
  %300 = load i32, ptr %215, align 8
  %301 = shl i32 %299, 16
  %302 = and i32 %301, 196608
  %303 = and i32 %300, -196609
  %304 = or disjoint i32 %302, %303
  store i32 %304, ptr %215, align 8
  %305 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 8) #19
  %306 = trunc i64 %305 to i32
  %307 = load i32, ptr %215, align 8
  %308 = shl i32 %306, 8
  %309 = and i32 %308, 65280
  %310 = and i32 %307, -65281
  %311 = or disjoint i32 %309, %310
  store i32 %311, ptr %215, align 8
  %312 = call i64 @bp_unpack_value(ptr noundef %212, i32 noundef 8) #19
  %313 = trunc i64 %312 to i32
  %314 = load i32, ptr %215, align 8
  %315 = and i32 %313, 255
  %316 = and i32 %314, -256
  %317 = or disjoint i32 %316, %315
  store i32 %317, ptr %215, align 8
  call void @bitpack_delete(ptr noundef %212) #19
  %318 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %319 = trunc i64 %318 to i32
  %320 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 17
  store i32 %319, ptr %320, align 8, !tbaa !94
  %321 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %322 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 7
  store ptr %321, ptr %322, align 8, !tbaa !95
  %323 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %324 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 8
  store ptr %323, ptr %324, align 8, !tbaa !96
  %325 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %326 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 9
  store ptr %325, ptr %326, align 8, !tbaa !97
  %327 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %328 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !46
  %330 = icmp ne ptr %327, null
  %331 = icmp ne ptr %329, null
  %332 = select i1 %330, i1 %331, i1 false
  br i1 %332, label %333, label %351

333:                                              ; preds = %211, %340
  %334 = phi ptr [ %347, %340 ], [ %329, %211 ]
  %335 = phi ptr [ %345, %340 ], [ %327, %211 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %336 = load ptr, ptr %31, align 8, !tbaa !68
  %337 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %336, ptr noundef nonnull %335, ptr noundef nonnull %6) #19
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1338, ptr noundef nonnull @.str.1) #19
  br label %340

340:                                              ; preds = %339, %333
  %341 = load ptr, ptr %31, align 8, !tbaa !68
  %342 = load i32, ptr %6, align 4, !tbaa !50
  %343 = call zeroext i8 @lto_streamer_cache_insert_at(ptr noundef %341, ptr noundef nonnull %334, i32 noundef %342) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  %344 = getelementptr inbounds %struct.tree_common, ptr %335, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !46
  %346 = getelementptr inbounds %struct.tree_common, ptr %334, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !46
  %348 = icmp ne ptr %345, null
  %349 = icmp ne ptr %347, null
  %350 = select i1 %348, i1 %349, i1 false
  br i1 %350, label %333, label %351, !llvm.loop !98

351:                                              ; preds = %340, %211
  %352 = phi i1 [ %330, %211 ], [ %348, %340 ]
  %353 = phi i1 [ %331, %211 ], [ %349, %340 ]
  %354 = select i1 %352, i1 true, i1 %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %351
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1342, ptr noundef nonnull @.str.1) #19
  br label %356

356:                                              ; preds = %355, %351
  %357 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %358 = trunc i64 %357 to i32
  call void @init_ssanames(ptr noundef %202, i32 noundef %358) #19
  %359 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %360 = trunc i64 %359 to i32
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %394, label %362

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 3
  br label %364

364:                                              ; preds = %362, %390
  %365 = phi i32 [ %360, %362 ], [ %392, %390 ]
  br label %366

366:                                              ; preds = %364, %376
  %367 = load ptr, ptr %363, align 8, !tbaa !99
  %368 = getelementptr inbounds %struct.gimple_df, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !100
  %370 = icmp eq ptr %369, null
  br i1 %370, label %373, label %371

371:                                              ; preds = %366
  %372 = load i32, ptr %369, align 8, !tbaa !104
  br label %373

373:                                              ; preds = %371, %366
  %374 = phi i32 [ %372, %371 ], [ 0, %366 ]
  %375 = icmp ult i32 %374, %365
  br i1 %375, label %376, label %381

376:                                              ; preds = %373
  %377 = load i32, ptr %369, align 8, !tbaa !104
  %378 = add i32 %377, 1
  store i32 %378, ptr %369, align 8, !tbaa !104
  %379 = zext i32 %377 to i64
  %380 = getelementptr inbounds %struct.VEC_tree_base, ptr %369, i64 0, i32 2, i64 %379
  store ptr null, ptr %380, align 8, !tbaa !35
  br label %366, !llvm.loop !106

381:                                              ; preds = %373
  %382 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %8) #19
  %383 = icmp eq i8 %382, 0
  %384 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %385 = call ptr @gimple_build_nop() #19
  %386 = call ptr @make_ssa_name_fn(ptr noundef %202, ptr noundef %384, ptr noundef %385) #19
  br i1 %383, label %390, label %387

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.tree_ssa_name, ptr %386, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !46
  call void @set_default_def(ptr noundef %389, ptr noundef %386) #19
  br label %390

390:                                              ; preds = %387, %381
  %391 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %392 = trunc i64 %391 to i32
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %364, !llvm.loop !107

394:                                              ; preds = %390, %356
  %395 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %396 = trunc i64 %395 to i32
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %827, label %398

398:                                              ; preds = %394
  call fastcc void @lto_tag_check_range(i32 noundef %396, i32 noundef 229, i32 noundef 229)
  call fastcc void @lto_init_eh()
  %399 = load ptr, ptr %202, align 8, !tbaa !108
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @.str.1) #19
  br label %402

402:                                              ; preds = %401, %398
  %403 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %404 = add i64 %403, 2147483648
  %405 = icmp ult i64 %404, 4294967296
  br i1 %405, label %407, label %406

406:                                              ; preds = %402
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 630, ptr noundef nonnull @.str.1) #19
  br label %407

407:                                              ; preds = %406, %402
  %408 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %409 = trunc i64 %408 to i32
  %410 = add i64 %408, 2147483648
  %411 = icmp ult i64 %410, 4294967296
  br i1 %411, label %413, label %412

412:                                              ; preds = %407
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 634, ptr noundef nonnull @.str.1) #19
  br label %413

413:                                              ; preds = %412, %407
  %414 = icmp sgt i64 %408, 0
  br i1 %414, label %415, label %542

415:                                              ; preds = %413
  %416 = load ptr, ptr %202, align 8, !tbaa !108
  %417 = getelementptr inbounds %struct.eh_status, ptr %416, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !35
  %419 = icmp eq ptr %418, null
  br i1 %419, label %422, label %420

420:                                              ; preds = %415
  %421 = load i32, ptr %418, align 8, !tbaa !109
  br label %422

422:                                              ; preds = %420, %415
  %423 = phi i32 [ %421, %420 ], [ 0, %415 ]
  %424 = sub nsw i32 %409, %423
  br i1 %419, label %431, label %425

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %418, i64 0, i32 1
  %427 = load i32, ptr %426, align 4, !tbaa !111
  %428 = load i32, ptr %418, align 8, !tbaa !109
  %429 = sub i32 %427, %428
  %430 = icmp uge i32 %429, %424
  br label %433

431:                                              ; preds = %422
  %432 = icmp eq i32 %423, %409
  br label %433

433:                                              ; preds = %431, %425
  %434 = phi i1 [ %430, %425 ], [ %432, %431 ]
  br i1 %434, label %437, label %435

435:                                              ; preds = %433
  %436 = call ptr @vec_gc_p_reserve_exact(ptr noundef %418, i32 noundef %424) #19
  store ptr %436, ptr %417, align 8, !tbaa !35
  br label %437

437:                                              ; preds = %435, %433
  %438 = load ptr, ptr %417, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %409, ptr %438, align 8, !tbaa !109
  %439 = call i64 @llvm.smax.i64(i64 %408, i64 1)
  br label %440

440:                                              ; preds = %437, %533
  %441 = phi i64 [ %540, %533 ], [ 0, %437 ]
  %442 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %443 = trunc i64 %442 to i32
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %533, label %445

445:                                              ; preds = %440
  %446 = trunc i64 %441 to i32
  %447 = call ptr @ggc_alloc_cleared_stat(i64 noundef 88) #19
  %448 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %449 = trunc i64 %448 to i32
  %450 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 3
  store i32 %449, ptr %450, align 8, !tbaa !112
  %451 = icmp eq i32 %449, %446
  br i1 %451, label %453, label %452

452:                                              ; preds = %445
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.1) #19
  br label %453

453:                                              ; preds = %452, %445
  %454 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %455 = inttoptr i64 %454 to ptr
  store ptr %455, ptr %447, align 8, !tbaa !114
  %456 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %457 = inttoptr i64 %456 to ptr
  %458 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 1
  store ptr %457, ptr %458, align 8, !tbaa !115
  %459 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %460 = inttoptr i64 %459 to ptr
  %461 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 2
  store ptr %460, ptr %461, align 8, !tbaa !116
  switch i32 %443, label %528 [
    i32 230, label %462
    i32 231, label %464
    i32 232, label %504
    i32 233, label %522
  ]

462:                                              ; preds = %453
  %463 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 4
  store i32 0, ptr %463, align 4, !tbaa !117
  br label %529

464:                                              ; preds = %453
  %465 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 4
  store i32 1, ptr %465, align 4, !tbaa !117
  %466 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %467 = trunc i64 %466 to i32
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %499, label %469

469:                                              ; preds = %464, %492
  %470 = phi i32 [ %497, %492 ], [ %467, %464 ]
  %471 = phi ptr [ %495, %492 ], [ null, %464 ]
  %472 = phi ptr [ %473, %492 ], [ null, %464 ]
  call fastcc void @lto_tag_check_range(i32 noundef %470, i32 noundef 235, i32 noundef 235)
  %473 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #19
  %474 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %475 = getelementptr inbounds %struct.eh_catch_d, ptr %473, i64 0, i32 2
  store ptr %474, ptr %475, align 8, !tbaa !118
  %476 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %477 = getelementptr inbounds %struct.eh_catch_d, ptr %473, i64 0, i32 3
  store ptr %476, ptr %477, align 8, !tbaa !120
  %478 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %479 = getelementptr inbounds %struct.eh_catch_d, ptr %473, i64 0, i32 4
  store ptr %478, ptr %479, align 8, !tbaa !121
  %480 = load ptr, ptr %477, align 8, !tbaa !46
  %481 = icmp eq ptr %480, null
  br i1 %481, label %489, label %482

482:                                              ; preds = %469, %482
  %483 = phi ptr [ %487, %482 ], [ %480, %469 ]
  %484 = getelementptr inbounds %struct.tree_list, ptr %483, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !46
  call void @add_type_for_runtime(ptr noundef %485) #19
  %486 = getelementptr inbounds %struct.tree_common, ptr %483, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !46
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %482, !llvm.loop !122

489:                                              ; preds = %482, %469
  %490 = icmp eq ptr %472, null
  br i1 %490, label %492, label %491

491:                                              ; preds = %489
  store ptr %473, ptr %472, align 8, !tbaa !123
  br label %492

492:                                              ; preds = %491, %489
  %493 = getelementptr inbounds %struct.eh_catch_d, ptr %473, i64 0, i32 1
  store ptr %472, ptr %493, align 8, !tbaa !124
  %494 = icmp eq ptr %471, null
  %495 = select i1 %494, ptr %473, ptr %471
  %496 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %497 = trunc i64 %496 to i32
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %469, !llvm.loop !125

499:                                              ; preds = %492, %464
  %500 = phi ptr [ null, %464 ], [ %473, %492 ]
  %501 = phi ptr [ null, %464 ], [ %495, %492 ]
  %502 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5
  store ptr %501, ptr %502, align 8, !tbaa !46
  %503 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5, i32 0, i32 1
  store ptr %500, ptr %503, align 8, !tbaa !46
  br label %529

504:                                              ; preds = %453
  %505 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 4
  store i32 2, ptr %505, align 4, !tbaa !117
  %506 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %507 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5
  store ptr %506, ptr %507, align 8, !tbaa !46
  %508 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %509 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5, i32 0, i32 1
  store ptr %508, ptr %509, align 8, !tbaa !46
  %510 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %511 = trunc i64 %510 to i32
  %512 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5, i32 0, i32 2
  store i32 %511, ptr %512, align 8, !tbaa !46
  %513 = load ptr, ptr %507, align 8, !tbaa !46
  %514 = icmp eq ptr %513, null
  br i1 %514, label %529, label %515

515:                                              ; preds = %504, %515
  %516 = phi ptr [ %520, %515 ], [ %513, %504 ]
  %517 = getelementptr inbounds %struct.tree_list, ptr %516, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !46
  call void @add_type_for_runtime(ptr noundef %518) #19
  %519 = getelementptr inbounds %struct.tree_common, ptr %516, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = icmp eq ptr %520, null
  br i1 %521, label %529, label %515, !llvm.loop !126

522:                                              ; preds = %453
  %523 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 4
  store i32 3, ptr %523, align 4, !tbaa !117
  %524 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %525 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5
  store ptr %524, ptr %525, align 8, !tbaa !46
  %526 = call fastcc i32 @lto_input_location(ptr noundef nonnull %8, ptr noundef %26)
  %527 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 5, i32 0, i32 1
  store i32 %526, ptr %527, align 8, !tbaa !46
  br label %529

528:                                              ; preds = %453
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 483, ptr noundef nonnull @.str.1) #19
  br label %529

529:                                              ; preds = %515, %504, %528, %522, %499, %462
  %530 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %531 = inttoptr i64 %530 to ptr
  %532 = getelementptr inbounds %struct.eh_region_d, ptr %447, i64 0, i32 6
  store ptr %531, ptr %532, align 8, !tbaa !127
  br label %533

533:                                              ; preds = %529, %440
  %534 = phi ptr [ %447, %529 ], [ null, %440 ]
  %535 = load ptr, ptr %202, align 8, !tbaa !108
  %536 = getelementptr inbounds %struct.eh_status, ptr %535, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !128
  %538 = and i64 %441, 4294967295
  %539 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %537, i64 0, i32 2, i64 %538
  store ptr %534, ptr %539, align 8, !tbaa !35
  %540 = add nuw nsw i64 %441, 1
  %541 = icmp eq i64 %540, %439
  br i1 %541, label %542, label %440, !llvm.loop !130

542:                                              ; preds = %533, %413
  %543 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %544 = trunc i64 %543 to i32
  %545 = add i64 %543, 2147483648
  %546 = icmp ult i64 %545, 4294967296
  br i1 %546, label %548, label %547

547:                                              ; preds = %542
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 647, ptr noundef nonnull @.str.1) #19
  br label %548

548:                                              ; preds = %547, %542
  %549 = icmp sgt i64 %543, 0
  br i1 %549, label %550, label %605

550:                                              ; preds = %548
  %551 = load ptr, ptr %202, align 8, !tbaa !108
  %552 = getelementptr inbounds %struct.eh_status, ptr %551, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !35
  %554 = icmp eq ptr %553, null
  br i1 %554, label %557, label %555

555:                                              ; preds = %550
  %556 = load i32, ptr %553, align 8, !tbaa !131
  br label %557

557:                                              ; preds = %555, %550
  %558 = phi i32 [ %556, %555 ], [ 0, %550 ]
  %559 = sub nsw i32 %544, %558
  br i1 %554, label %566, label %560

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %553, i64 0, i32 1
  %562 = load i32, ptr %561, align 4, !tbaa !133
  %563 = load i32, ptr %553, align 8, !tbaa !131
  %564 = sub i32 %562, %563
  %565 = icmp uge i32 %564, %559
  br label %568

566:                                              ; preds = %557
  %567 = icmp eq i32 %558, %544
  br label %568

568:                                              ; preds = %566, %560
  %569 = phi i1 [ %565, %560 ], [ %567, %566 ]
  br i1 %569, label %572, label %570

570:                                              ; preds = %568
  %571 = call ptr @vec_gc_p_reserve_exact(ptr noundef %553, i32 noundef %559) #19
  store ptr %571, ptr %552, align 8, !tbaa !35
  br label %572

572:                                              ; preds = %570, %568
  %573 = load ptr, ptr %552, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %544, ptr %573, align 8, !tbaa !131
  %574 = call i64 @llvm.smax.i64(i64 %543, i64 1)
  br label %575

575:                                              ; preds = %572, %596
  %576 = phi i64 [ %603, %596 ], [ 0, %572 ]
  %577 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %578 = trunc i64 %577 to i32
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %596, label %580

580:                                              ; preds = %575
  %581 = trunc i64 %576 to i32
  call fastcc void @lto_tag_check_range(i32 noundef %578, i32 noundef 234, i32 noundef 234)
  %582 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #19
  %583 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %584 = trunc i64 %583 to i32
  %585 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %582, i64 0, i32 4
  store i32 %584, ptr %585, align 8, !tbaa !134
  %586 = icmp eq i32 %584, %581
  br i1 %586, label %588, label %587

587:                                              ; preds = %580
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.1) #19
  br label %588

588:                                              ; preds = %587, %580
  %589 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %590 = inttoptr i64 %589 to ptr
  store ptr %590, ptr %582, align 8, !tbaa !136
  %591 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %592 = inttoptr i64 %591 to ptr
  %593 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %582, i64 0, i32 1
  store ptr %592, ptr %593, align 8, !tbaa !137
  %594 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %595 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %582, i64 0, i32 2
  store ptr %594, ptr %595, align 8, !tbaa !138
  br label %596

596:                                              ; preds = %588, %575
  %597 = phi ptr [ %582, %588 ], [ null, %575 ]
  %598 = load ptr, ptr %202, align 8, !tbaa !108
  %599 = getelementptr inbounds %struct.eh_status, ptr %598, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !139
  %601 = and i64 %576, 4294967295
  %602 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %600, i64 0, i32 2, i64 %601
  store ptr %597, ptr %602, align 8, !tbaa !35
  %603 = add nuw nsw i64 %576, 1
  %604 = icmp eq i64 %603, %574
  br i1 %604, label %605, label %575, !llvm.loop !140

605:                                              ; preds = %596, %548
  %606 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %607 = trunc i64 %606 to i32
  %608 = add i64 %606, 2147483648
  %609 = icmp ult i64 %608, 4294967296
  br i1 %609, label %611, label %610

610:                                              ; preds = %605
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 660, ptr noundef nonnull @.str.1) #19
  br label %611

611:                                              ; preds = %610, %605
  %612 = icmp sgt i64 %606, 0
  br i1 %612, label %613, label %648

613:                                              ; preds = %611
  %614 = load ptr, ptr %202, align 8, !tbaa !108
  %615 = getelementptr inbounds %struct.eh_status, ptr %614, i64 0, i32 4
  %616 = load ptr, ptr %615, align 8, !tbaa !35
  %617 = icmp eq ptr %616, null
  br i1 %617, label %620, label %618

618:                                              ; preds = %613
  %619 = load i32, ptr %616, align 8, !tbaa !104
  br label %620

620:                                              ; preds = %618, %613
  %621 = phi i32 [ %619, %618 ], [ 0, %613 ]
  %622 = sub nsw i32 %607, %621
  br i1 %617, label %629, label %623

623:                                              ; preds = %620
  %624 = getelementptr inbounds %struct.VEC_tree_base, ptr %616, i64 0, i32 1
  %625 = load i32, ptr %624, align 4, !tbaa !141
  %626 = load i32, ptr %616, align 8, !tbaa !104
  %627 = sub i32 %625, %626
  %628 = icmp uge i32 %627, %622
  br label %631

629:                                              ; preds = %620
  %630 = icmp eq i32 %621, %607
  br label %631

631:                                              ; preds = %629, %623
  %632 = phi i1 [ %628, %623 ], [ %630, %629 ]
  br i1 %632, label %635, label %633

633:                                              ; preds = %631
  %634 = call ptr @vec_gc_p_reserve_exact(ptr noundef %616, i32 noundef %622) #19
  store ptr %634, ptr %615, align 8, !tbaa !35
  br label %635

635:                                              ; preds = %633, %631
  %636 = load ptr, ptr %615, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %607, ptr %636, align 8, !tbaa !104
  %637 = call i64 @llvm.smax.i64(i64 %606, i64 1)
  br label %638

638:                                              ; preds = %635, %638
  %639 = phi i64 [ %646, %638 ], [ 0, %635 ]
  %640 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %641 = load ptr, ptr %202, align 8, !tbaa !108
  %642 = getelementptr inbounds %struct.eh_status, ptr %641, i64 0, i32 4
  %643 = load ptr, ptr %642, align 8, !tbaa !142
  %644 = and i64 %639, 4294967295
  %645 = getelementptr inbounds %struct.VEC_tree_base, ptr %643, i64 0, i32 2, i64 %644
  store ptr %640, ptr %645, align 8, !tbaa !35
  %646 = add nuw nsw i64 %639, 1
  %647 = icmp eq i64 %646, %637
  br i1 %647, label %648, label %638, !llvm.loop !143

648:                                              ; preds = %638, %611
  %649 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %650 = trunc i64 %649 to i32
  %651 = add i64 %649, 2147483648
  %652 = icmp ult i64 %651, 4294967296
  br i1 %652, label %654, label %653

653:                                              ; preds = %648
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 673, ptr noundef nonnull @.str.1) #19
  br label %654

654:                                              ; preds = %653, %648
  %655 = icmp sgt i64 %649, 0
  br i1 %655, label %656, label %725

656:                                              ; preds = %654
  %657 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !144
  %658 = icmp eq i8 %657, 0
  %659 = load ptr, ptr %202, align 8, !tbaa !108
  %660 = getelementptr inbounds %struct.eh_status, ptr %659, i64 0, i32 5
  %661 = load ptr, ptr %660, align 8, !tbaa !35
  %662 = icmp eq ptr %661, null
  br i1 %658, label %694, label %663

663:                                              ; preds = %656
  br i1 %662, label %666, label %664

664:                                              ; preds = %663
  %665 = load i32, ptr %661, align 8, !tbaa !104
  br label %666

666:                                              ; preds = %664, %663
  %667 = phi i32 [ %665, %664 ], [ 0, %663 ]
  %668 = sub nsw i32 %650, %667
  br i1 %662, label %675, label %669

669:                                              ; preds = %666
  %670 = getelementptr inbounds %struct.VEC_tree_base, ptr %661, i64 0, i32 1
  %671 = load i32, ptr %670, align 4, !tbaa !141
  %672 = load i32, ptr %661, align 8, !tbaa !104
  %673 = sub i32 %671, %672
  %674 = icmp uge i32 %673, %668
  br label %677

675:                                              ; preds = %666
  %676 = icmp eq i32 %667, %650
  br label %677

677:                                              ; preds = %675, %669
  %678 = phi i1 [ %674, %669 ], [ %676, %675 ]
  br i1 %678, label %681, label %679

679:                                              ; preds = %677
  %680 = call ptr @vec_gc_p_reserve_exact(ptr noundef %661, i32 noundef %668) #19
  store ptr %680, ptr %660, align 8, !tbaa !35
  br label %681

681:                                              ; preds = %679, %677
  %682 = load ptr, ptr %660, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %650, ptr %682, align 8, !tbaa !104
  %683 = call i64 @llvm.smax.i64(i64 %649, i64 1)
  br label %684

684:                                              ; preds = %681, %684
  %685 = phi i64 [ %692, %684 ], [ 0, %681 ]
  %686 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %687 = load ptr, ptr %202, align 8, !tbaa !108
  %688 = getelementptr inbounds %struct.eh_status, ptr %687, i64 0, i32 5
  %689 = load ptr, ptr %688, align 8, !tbaa !46
  %690 = and i64 %685, 4294967295
  %691 = getelementptr inbounds %struct.VEC_tree_base, ptr %689, i64 0, i32 2, i64 %690
  store ptr %686, ptr %691, align 8, !tbaa !35
  %692 = add nuw nsw i64 %685, 1
  %693 = icmp eq i64 %692, %683
  br i1 %693, label %725, label %684, !llvm.loop !156

694:                                              ; preds = %656
  br i1 %662, label %697, label %695

695:                                              ; preds = %694
  %696 = load i32, ptr %661, align 4, !tbaa !157
  br label %697

697:                                              ; preds = %695, %694
  %698 = phi i32 [ %696, %695 ], [ 0, %694 ]
  %699 = sub nsw i32 %650, %698
  br i1 %662, label %706, label %700

700:                                              ; preds = %697
  %701 = getelementptr inbounds %struct.VEC_uchar_base, ptr %661, i64 0, i32 1
  %702 = load i32, ptr %701, align 4, !tbaa !159
  %703 = load i32, ptr %661, align 4, !tbaa !157
  %704 = sub i32 %702, %703
  %705 = icmp uge i32 %704, %699
  br label %708

706:                                              ; preds = %697
  %707 = icmp eq i32 %698, %650
  br label %708

708:                                              ; preds = %706, %700
  %709 = phi i1 [ %705, %700 ], [ %707, %706 ]
  br i1 %709, label %712, label %710

710:                                              ; preds = %708
  %711 = call ptr @vec_gc_o_reserve_exact(ptr noundef %661, i32 noundef %699, i64 noundef 8, i64 noundef 1) #19
  store ptr %711, ptr %660, align 8, !tbaa !35
  br label %712

712:                                              ; preds = %710, %708
  %713 = load ptr, ptr %660, align 8, !tbaa !35, !nonnull !81, !noundef !81
  store i32 %650, ptr %713, align 4, !tbaa !157
  %714 = call i64 @llvm.smax.i64(i64 %649, i64 1)
  br label %715

715:                                              ; preds = %712, %715
  %716 = phi i64 [ %723, %715 ], [ 0, %712 ]
  %717 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %8) #19
  %718 = load ptr, ptr %202, align 8, !tbaa !108
  %719 = getelementptr inbounds %struct.eh_status, ptr %718, i64 0, i32 5
  %720 = load ptr, ptr %719, align 8, !tbaa !46
  %721 = and i64 %716, 4294967295
  %722 = getelementptr inbounds %struct.VEC_uchar_base, ptr %720, i64 0, i32 2, i64 %721
  store i8 %717, ptr %722, align 1, !tbaa !46
  %723 = add nuw nsw i64 %716, 1
  %724 = icmp eq i64 %723, %714
  br i1 %724, label %725, label %715, !llvm.loop !160

725:                                              ; preds = %684, %715, %654
  %726 = load ptr, ptr %202, align 8, !tbaa !108
  %727 = getelementptr inbounds %struct.eh_status, ptr %726, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !128
  %729 = getelementptr inbounds %struct.eh_status, ptr %726, i64 0, i32 2
  %730 = load ptr, ptr %729, align 8, !tbaa !139
  %731 = icmp ne ptr %728, null
  %732 = icmp ne ptr %730, null
  %733 = select i1 %731, i1 %732, i1 false
  br i1 %733, label %735, label %734

734:                                              ; preds = %725
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #19
  br label %735

735:                                              ; preds = %734, %725
  %736 = icmp sgt i64 %403, -1
  br i1 %736, label %738, label %737

737:                                              ; preds = %735
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #19
  br label %738

738:                                              ; preds = %737, %735
  %739 = and i64 %403, 4294967295
  %740 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %728, i64 0, i32 2, i64 %739
  %741 = load ptr, ptr %740, align 8, !tbaa !35
  %742 = load ptr, ptr %202, align 8, !tbaa !108
  store ptr %741, ptr %742, align 8, !tbaa !161
  %743 = icmp eq ptr %728, null
  br label %744

744:                                              ; preds = %789, %738
  %745 = phi i32 [ 0, %738 ], [ %790, %789 ]
  br i1 %743, label %753, label %746

746:                                              ; preds = %744
  %747 = load i32, ptr %728, align 8, !tbaa !109
  %748 = icmp ugt i32 %747, %745
  br i1 %748, label %749, label %753

749:                                              ; preds = %746
  %750 = zext i32 %745 to i64
  %751 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %728, i64 0, i32 2, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !35
  br label %753

753:                                              ; preds = %749, %746, %744
  %754 = phi ptr [ %752, %749 ], [ null, %746 ], [ null, %744 ]
  %755 = phi i1 [ false, %749 ], [ true, %746 ], [ true, %744 ]
  br i1 %755, label %756, label %758

756:                                              ; preds = %753
  %757 = icmp eq ptr %730, null
  br label %791

758:                                              ; preds = %753
  %759 = icmp eq ptr %754, null
  br i1 %759, label %789, label %760

760:                                              ; preds = %758
  %761 = getelementptr inbounds %struct.eh_region_d, ptr %754, i64 0, i32 3
  %762 = load i32, ptr %761, align 8, !tbaa !112
  %763 = icmp eq i32 %745, %762
  br i1 %763, label %765, label %764

764:                                              ; preds = %760
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1) #19
  br label %765

765:                                              ; preds = %764, %760
  %766 = load ptr, ptr %754, align 8, !tbaa !114
  %767 = ptrtoint ptr %766 to i64
  %768 = and i64 %767, 4294967295
  %769 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %728, i64 0, i32 2, i64 %768
  %770 = load ptr, ptr %769, align 8, !tbaa !35
  store ptr %770, ptr %754, align 8, !tbaa !114
  %771 = getelementptr inbounds %struct.eh_region_d, ptr %754, i64 0, i32 1
  %772 = load ptr, ptr %771, align 8, !tbaa !115
  %773 = ptrtoint ptr %772 to i64
  %774 = and i64 %773, 4294967295
  %775 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %728, i64 0, i32 2, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !35
  store ptr %776, ptr %771, align 8, !tbaa !115
  %777 = getelementptr inbounds %struct.eh_region_d, ptr %754, i64 0, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !116
  %779 = ptrtoint ptr %778 to i64
  %780 = and i64 %779, 4294967295
  %781 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %728, i64 0, i32 2, i64 %780
  %782 = load ptr, ptr %781, align 8, !tbaa !35
  store ptr %782, ptr %777, align 8, !tbaa !116
  %783 = getelementptr inbounds %struct.eh_region_d, ptr %754, i64 0, i32 6
  %784 = load ptr, ptr %783, align 8, !tbaa !127
  %785 = ptrtoint ptr %784 to i64
  %786 = and i64 %785, 4294967295
  %787 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %730, i64 0, i32 2, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !35
  store ptr %788, ptr %783, align 8, !tbaa !127
  br label %789

789:                                              ; preds = %765, %758
  %790 = add i32 %745, 1
  br label %744, !llvm.loop !162

791:                                              ; preds = %756, %822
  %792 = phi i32 [ %823, %822 ], [ 0, %756 ]
  br i1 %757, label %800, label %793

793:                                              ; preds = %791
  %794 = load i32, ptr %730, align 8, !tbaa !131
  %795 = icmp ugt i32 %794, %792
  br i1 %795, label %796, label %800

796:                                              ; preds = %793
  %797 = zext i32 %792 to i64
  %798 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %730, i64 0, i32 2, i64 %797
  %799 = load ptr, ptr %798, align 8, !tbaa !35
  br label %800

800:                                              ; preds = %796, %793, %791
  %801 = phi ptr [ %799, %796 ], [ null, %793 ], [ null, %791 ]
  %802 = phi i1 [ false, %796 ], [ true, %793 ], [ true, %791 ]
  br i1 %802, label %824, label %803

803:                                              ; preds = %800
  %804 = icmp eq ptr %801, null
  br i1 %804, label %822, label %805

805:                                              ; preds = %803
  %806 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %801, i64 0, i32 4
  %807 = load i32, ptr %806, align 8, !tbaa !134
  %808 = icmp eq i32 %792, %807
  br i1 %808, label %810, label %809

809:                                              ; preds = %805
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 566, ptr noundef nonnull @.str.1) #19
  br label %810

810:                                              ; preds = %809, %805
  %811 = load ptr, ptr %801, align 8, !tbaa !136
  %812 = ptrtoint ptr %811 to i64
  %813 = and i64 %812, 4294967295
  %814 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %730, i64 0, i32 2, i64 %813
  %815 = load ptr, ptr %814, align 8, !tbaa !35
  store ptr %815, ptr %801, align 8, !tbaa !136
  %816 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %801, i64 0, i32 1
  %817 = load ptr, ptr %816, align 8, !tbaa !137
  %818 = ptrtoint ptr %817 to i64
  %819 = and i64 %818, 4294967295
  %820 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %728, i64 0, i32 2, i64 %819
  %821 = load ptr, ptr %820, align 8, !tbaa !35
  store ptr %821, ptr %816, align 8, !tbaa !137
  br label %822

822:                                              ; preds = %810, %803
  %823 = add i32 %792, 1
  br label %791, !llvm.loop !163

824:                                              ; preds = %800
  %825 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %826 = trunc i64 %825 to i32
  call fastcc void @lto_tag_check_range(i32 noundef %826, i32 noundef 0, i32 noundef 0)
  br label %827

827:                                              ; preds = %824, %394
  %828 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %829 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  store ptr %828, ptr %829, align 8, !tbaa !46
  %830 = icmp eq ptr %828, null
  br i1 %830, label %831, label %832

831:                                              ; preds = %827
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1352, ptr noundef nonnull @.str.1) #19
  br label %832

832:                                              ; preds = %831, %827
  %833 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  store ptr null, ptr %833, align 8, !tbaa !46
  %834 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %835 = trunc i64 %834 to i32
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %1560, label %837

837:                                              ; preds = %832
  %838 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 1
  %839 = getelementptr inbounds i8, ptr %5, i64 8
  %840 = getelementptr inbounds i8, ptr %5, i64 16
  %841 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 6
  %842 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 3
  br label %843

843:                                              ; preds = %837, %1556
  %844 = phi i32 [ %835, %837 ], [ %1558, %1556 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %845 = load ptr, ptr @cfun, align 8, !tbaa !35
  %846 = icmp eq ptr %845, %202
  br i1 %846, label %848, label %847

847:                                              ; preds = %843
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1184, ptr noundef nonnull @.str.1) #19
  br label %848

848:                                              ; preds = %847, %843
  %849 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %850 = load ptr, ptr %838, align 8, !tbaa !73
  %851 = getelementptr inbounds %struct.control_flow_graph, ptr %850, i64 0, i32 2
  %852 = load ptr, ptr %851, align 8, !tbaa !82
  %853 = and i64 %849, 4294967295
  %854 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %852, i64 0, i32 2, i64 %853
  %855 = load ptr, ptr %854, align 8, !tbaa !35
  %856 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %857 = getelementptr inbounds %struct.basic_block_def, ptr %855, i64 0, i32 8
  store i64 %856, ptr %857, align 8, !tbaa !164
  %858 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %859 = trunc i64 %858 to i32
  %860 = getelementptr inbounds %struct.basic_block_def, ptr %855, i64 0, i32 10
  store i32 %859, ptr %860, align 4, !tbaa !165
  %861 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %862 = trunc i64 %861 to i32
  %863 = getelementptr inbounds %struct.basic_block_def, ptr %855, i64 0, i32 11
  store i32 %862, ptr %863, align 8, !tbaa !166
  %864 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %865 = trunc i64 %864 to i32
  %866 = getelementptr inbounds %struct.basic_block_def, ptr %855, i64 0, i32 13
  store i32 %865, ptr %866, align 8, !tbaa !167
  %867 = icmp eq i32 %844, 224
  br i1 %867, label %1556, label %868

868:                                              ; preds = %848
  %869 = and i32 %865, 512
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %877

871:                                              ; preds = %868
  %872 = getelementptr inbounds %struct.basic_block_def, ptr %855, i64 0, i32 7
  %873 = load ptr, ptr %872, align 8, !tbaa !46, !noalias !168
  %874 = icmp eq ptr %873, null
  br i1 %874, label %877, label %875

875:                                              ; preds = %871
  %876 = load ptr, ptr %873, align 8, !tbaa !171, !noalias !168
  br label %877

877:                                              ; preds = %875, %871, %868
  %878 = phi ptr [ %876, %875 ], [ null, %871 ], [ null, %868 ]
  %879 = icmp eq ptr %878, null
  br i1 %879, label %882, label %880

880:                                              ; preds = %877
  %881 = load ptr, ptr %878, align 8, !tbaa !173, !noalias !168
  br label %882

882:                                              ; preds = %880, %877
  %883 = phi ptr [ %881, %880 ], [ null, %877 ]
  store ptr %883, ptr %5, align 8, !tbaa.struct !175
  store ptr %878, ptr %839, align 8, !tbaa.struct !176
  store ptr %855, ptr %840, align 8, !tbaa.struct !177
  %884 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %885 = trunc i64 %884 to i32
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %1504, label %887

887:                                              ; preds = %882, %1500
  %888 = phi i32 [ %1502, %1500 ], [ %885, %882 ]
  %889 = add i32 %888, -189
  %890 = icmp ugt i32 %889, 34
  br i1 %890, label %891, label %892

891:                                              ; preds = %887
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 907, ptr noundef nonnull @.str.1) #19
  br label %892

892:                                              ; preds = %891, %887
  %893 = call ptr @lto_input_bitpack(ptr noundef nonnull %8)
  %894 = call i64 @bp_unpack_value(ptr noundef %893, i32 noundef 32) #19
  %895 = trunc i64 %894 to i32
  %896 = call ptr @gimple_alloc_stat(i32 noundef %889, i32 noundef %895) #19
  %897 = call i64 @bp_unpack_value(ptr noundef %893, i32 noundef 1) #19
  %898 = trunc i64 %897 to i32
  %899 = load i32, ptr %896, align 8
  %900 = shl i32 %898, 8
  %901 = and i32 %900, 256
  %902 = and i32 %899, -257
  %903 = or disjoint i32 %901, %902
  store i32 %903, ptr %896, align 8
  %904 = and i32 %899, 255
  %905 = icmp eq i32 %904, 6
  br i1 %905, label %906, label %914

906:                                              ; preds = %892
  %907 = call i64 @bp_unpack_value(ptr noundef %893, i32 noundef 1) #19
  %908 = trunc i64 %907 to i32
  %909 = load i32, ptr %896, align 8
  %910 = shl i32 %908, 10
  %911 = and i32 %910, 1024
  %912 = and i32 %909, -1025
  %913 = or disjoint i32 %911, %912
  store i32 %913, ptr %896, align 8
  br label %914

914:                                              ; preds = %906, %892
  %915 = call i64 @bp_unpack_value(ptr noundef %893, i32 noundef 1) #19
  %916 = trunc i64 %915 to i32
  %917 = load i32, ptr %896, align 8
  %918 = shl i32 %916, 14
  %919 = and i32 %918, 16384
  %920 = and i32 %917, -16385
  %921 = or disjoint i32 %919, %920
  store i32 %921, ptr %896, align 8
  %922 = call i64 @bp_unpack_value(ptr noundef %893, i32 noundef 16) #19
  %923 = trunc i64 %922 to i32
  %924 = load i32, ptr %896, align 8
  %925 = shl i32 %923, 16
  %926 = and i32 %924, 65535
  %927 = or disjoint i32 %926, %925
  store i32 %927, ptr %896, align 8
  call void @bitpack_delete(ptr noundef %893) #19
  %928 = call fastcc i32 @lto_input_location(ptr noundef nonnull %8, ptr noundef %26)
  %929 = getelementptr inbounds %struct.gimple_statement_base, ptr %896, i64 0, i32 2
  store i32 %928, ptr %929, align 8, !tbaa !46
  %930 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %931 = getelementptr inbounds %struct.gimple_statement_base, ptr %896, i64 0, i32 5
  store ptr %930, ptr %931, align 8, !tbaa !46
  switch i32 %888, label %1156 [
    i32 203, label %932
    i32 202, label %936
    i32 204, label %939
    i32 196, label %943
    i32 195, label %956
    i32 197, label %956
    i32 198, label %956
    i32 194, label %956
    i32 193, label %956
    i32 190, label %956
    i32 192, label %956
    i32 191, label %956
    i32 207, label %1260
    i32 222, label %1260
  ]

932:                                              ; preds = %914
  %933 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %934 = trunc i64 %933 to i32
  %935 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %896, i64 0, i32 1
  store i32 %934, ptr %935, align 8, !tbaa !46
  br label %1158

936:                                              ; preds = %914
  %937 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %938 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %896, i64 0, i32 1
  store ptr %937, ptr %938, align 8, !tbaa !46
  br label %1158

939:                                              ; preds = %914
  %940 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %941 = trunc i64 %940 to i32
  %942 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %896, i64 0, i32 1
  store i32 %941, ptr %942, align 8, !tbaa !46
  br label %1158

943:                                              ; preds = %914
  %944 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %945 = trunc i64 %944 to i8
  %946 = getelementptr inbounds %struct.gimple_statement_asm, ptr %896, i64 0, i32 2
  store i8 %945, ptr %946, align 8, !tbaa !46
  %947 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %948 = trunc i64 %947 to i8
  %949 = getelementptr inbounds %struct.gimple_statement_asm, ptr %896, i64 0, i32 3
  store i8 %948, ptr %949, align 1, !tbaa !46
  %950 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %951 = trunc i64 %950 to i8
  %952 = getelementptr inbounds %struct.gimple_statement_asm, ptr %896, i64 0, i32 4
  store i8 %951, ptr %952, align 2, !tbaa !46
  %953 = call fastcc ptr @input_string_cst(ptr noundef %26, ptr noundef nonnull %8)
  %954 = getelementptr inbounds %struct.tree_string, ptr %953, i64 0, i32 2
  %955 = getelementptr inbounds %struct.gimple_statement_asm, ptr %896, i64 0, i32 1
  store ptr %954, ptr %955, align 8, !tbaa !46
  br label %956

956:                                              ; preds = %914, %914, %914, %914, %914, %914, %914, %943, %914
  %957 = icmp eq i64 %894, 0
  br i1 %957, label %1158, label %958

958:                                              ; preds = %956
  %959 = getelementptr inbounds %struct.gimple_statement_base, ptr %896, i64 0, i32 3
  br label %960

960:                                              ; preds = %958, %1153
  %961 = phi i64 [ 0, %958 ], [ %1154, %1153 ]
  %962 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %963 = load i32, ptr %896, align 8
  %964 = and i32 %963, 255
  %965 = add nsw i32 %964, -10
  %966 = icmp ult i32 %965, -9
  br i1 %966, label %971, label %967

967:                                              ; preds = %960
  %968 = trunc i64 %961 to i32
  %969 = load i32, ptr %959, align 4, !tbaa !46
  %970 = icmp ugt i32 %969, %968
  br i1 %970, label %972, label %971

971:                                              ; preds = %967, %960
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %972

972:                                              ; preds = %971, %967
  %973 = load i32, ptr %896, align 8
  %974 = and i32 %973, 255
  %975 = zext nneg i32 %974 to i64
  %976 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %975
  %977 = load i32, ptr %976, align 4, !tbaa !50
  %978 = zext i32 %977 to i64
  %979 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %978
  %980 = load i64, ptr %979, align 8, !tbaa !178
  %981 = icmp eq i64 %980, 0
  br i1 %981, label %982, label %983

982:                                              ; preds = %972
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %983

983:                                              ; preds = %982, %972
  %984 = getelementptr inbounds i8, ptr %896, i64 %980
  %985 = and i64 %961, 4294967295
  %986 = getelementptr inbounds ptr, ptr %984, i64 %985
  store ptr %962, ptr %986, align 8, !tbaa !35
  %987 = icmp eq ptr %962, null
  br i1 %987, label %1153, label %988

988:                                              ; preds = %983
  %989 = load i64, ptr %962, align 8
  %990 = and i64 %989, 65535
  %991 = icmp eq i64 %990, 121
  br i1 %991, label %992, label %1009

992:                                              ; preds = %988
  %993 = getelementptr inbounds %struct.tree_exp, ptr %962, i64 0, i32 3
  %994 = load ptr, ptr %993, align 8, !tbaa !46
  %995 = load i64, ptr %994, align 8
  %996 = and i64 %995, 65535
  %997 = icmp eq i64 %996, 32
  br i1 %997, label %998, label %1009

998:                                              ; preds = %992
  %999 = getelementptr inbounds %struct.tree_common, ptr %962, i64 0, i32 2
  %1000 = load ptr, ptr %999, align 8, !tbaa !46
  %1001 = getelementptr inbounds %struct.tree_common, ptr %1000, i64 0, i32 2
  %1002 = load ptr, ptr %1001, align 8, !tbaa !46
  %1003 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1002, ptr noundef %1000) #19
  %1004 = icmp eq i8 %1003, 0
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %998
  %1006 = load ptr, ptr %999, align 8, !tbaa !46
  %1007 = getelementptr inbounds %struct.tree_common, ptr %1006, i64 0, i32 2
  %1008 = load ptr, ptr %1007, align 8, !tbaa !46
  br label %1148

1009:                                             ; preds = %998, %992, %988
  %1010 = load i64, ptr %962, align 8
  %1011 = and i64 %1010, 65535
  %1012 = icmp eq i64 %1011, 121
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1009
  %1014 = getelementptr inbounds %struct.tree_exp, ptr %962, i64 0, i32 3
  %1015 = load ptr, ptr %1014, align 8, !tbaa !46
  br label %1016

1016:                                             ; preds = %1013, %1009
  %1017 = phi ptr [ %962, %1009 ], [ %1015, %1013 ]
  br label %1018

1018:                                             ; preds = %1062, %1016
  %1019 = phi ptr [ %1017, %1016 ], [ %1059, %1062 ]
  %1020 = load i64, ptr %1019, align 8
  %1021 = trunc i64 %1020 to i16
  switch i16 %1021, label %1063 [
    i16 42, label %1022
    i16 41, label %1022
    i16 45, label %1022
    i16 46, label %1022
    i16 118, label %1022
    i16 43, label %1022
    i16 44, label %1022
  ]

1022:                                             ; preds = %1018, %1018, %1018, %1018, %1018, %1018, %1018
  %1023 = and i64 %1020, 65535
  %1024 = icmp eq i64 %1023, 41
  br i1 %1024, label %1025, label %1057

1025:                                             ; preds = %1022
  %1026 = getelementptr inbounds %struct.tree_exp, ptr %1019, i64 1
  %1027 = load ptr, ptr %1026, align 8, !tbaa !46
  %1028 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1027, i64 0, i32 4
  %1029 = load ptr, ptr %1028, align 8, !tbaa !46
  %1030 = getelementptr inbounds %struct.tree_type, ptr %1029, i64 0, i32 1
  %1031 = load ptr, ptr %1030, align 8, !tbaa !46
  %1032 = icmp eq ptr %1031, null
  %1033 = icmp eq ptr %1031, %1027
  %1034 = or i1 %1032, %1033
  br i1 %1034, label %1053, label %1035

1035:                                             ; preds = %1025
  %1036 = getelementptr inbounds %struct.tree_common, ptr %1027, i64 0, i32 2
  br label %1037

1037:                                             ; preds = %1035, %1047
  %1038 = phi i1 [ %1032, %1035 ], [ %1050, %1047 ]
  %1039 = phi ptr [ %1031, %1035 ], [ %1049, %1047 ]
  %1040 = getelementptr inbounds %struct.tree_common, ptr %1039, i64 0, i32 2
  %1041 = load ptr, ptr %1040, align 8, !tbaa !46
  %1042 = load ptr, ptr %1036, align 8, !tbaa !46
  %1043 = icmp eq ptr %1041, %1042
  br i1 %1043, label %1044, label %1047

1044:                                             ; preds = %1037
  %1045 = call zeroext i8 @compare_field_offset(ptr noundef nonnull %1039, ptr noundef %1027) #19
  %1046 = icmp eq i8 %1045, 0
  br i1 %1046, label %1047, label %1053

1047:                                             ; preds = %1044, %1037
  %1048 = getelementptr inbounds %struct.tree_common, ptr %1039, i64 0, i32 1
  %1049 = load ptr, ptr %1048, align 8, !tbaa !46
  %1050 = icmp eq ptr %1049, null
  %1051 = icmp eq ptr %1049, %1027
  %1052 = or i1 %1050, %1051
  br i1 %1052, label %1053, label %1037, !llvm.loop !179

1053:                                             ; preds = %1047, %1044, %1025
  %1054 = phi ptr [ %1031, %1025 ], [ %1049, %1047 ], [ %1039, %1044 ]
  %1055 = phi i1 [ %1032, %1025 ], [ %1050, %1047 ], [ %1038, %1044 ]
  br i1 %1055, label %1057, label %1056

1056:                                             ; preds = %1053
  store ptr %1054, ptr %1026, align 8, !tbaa !46
  br label %1057

1057:                                             ; preds = %1056, %1053, %1022
  %1058 = getelementptr inbounds %struct.tree_exp, ptr %1019, i64 0, i32 3
  %1059 = load ptr, ptr %1058, align 8, !tbaa !46
  %1060 = load i64, ptr %1059, align 8
  %1061 = trunc i64 %1060 to i16
  switch i16 %1061, label %1063 [
    i16 42, label %1062
    i16 41, label %1062
    i16 45, label %1062
    i16 46, label %1062
    i16 118, label %1062
    i16 43, label %1062
    i16 44, label %1062
  ]

1062:                                             ; preds = %1057, %1057, %1057, %1057, %1057, %1057, %1057
  br label %1018, !llvm.loop !180

1063:                                             ; preds = %1057, %1018
  %1064 = load i64, ptr %1019, align 8
  %1065 = trunc i64 %1064 to i16
  switch i16 %1065, label %1153 [
    i16 42, label %1066
    i16 41, label %1066
    i16 45, label %1066
    i16 46, label %1066
    i16 118, label %1066
    i16 43, label %1066
    i16 44, label %1066
  ]

1066:                                             ; preds = %1063, %1063, %1063, %1063, %1063, %1063, %1063
  br label %1067

1067:                                             ; preds = %1073, %1066
  %1068 = phi ptr [ %1019, %1066 ], [ %1070, %1073 ]
  %1069 = getelementptr inbounds %struct.tree_exp, ptr %1068, i64 0, i32 3
  %1070 = load ptr, ptr %1069, align 8, !tbaa !46
  %1071 = load i64, ptr %1070, align 8
  %1072 = trunc i64 %1071 to i16
  switch i16 %1072, label %1074 [
    i16 42, label %1073
    i16 41, label %1073
    i16 45, label %1073
    i16 46, label %1073
    i16 118, label %1073
    i16 43, label %1073
    i16 44, label %1073
  ]

1073:                                             ; preds = %1067, %1067, %1067, %1067, %1067, %1067, %1067
  br label %1067, !llvm.loop !181

1074:                                             ; preds = %1067
  %1075 = getelementptr inbounds %struct.tree_exp, ptr %1068, i64 0, i32 3
  %1076 = and i64 %1071, 65535
  %1077 = icmp eq i64 %1076, 32
  br i1 %1077, label %1078, label %1153

1078:                                             ; preds = %1074
  %1079 = getelementptr inbounds %struct.tree_common, ptr %1070, i64 0, i32 2
  %1080 = load ptr, ptr %1079, align 8, !tbaa !46
  %1081 = load i64, ptr %1068, align 8
  %1082 = trunc i64 %1081 to i16
  switch i16 %1082, label %1143 [
    i16 41, label %1083
    i16 45, label %1088
    i16 46, label %1105
    i16 42, label %1153
    i16 118, label %1153
    i16 43, label %1126
    i16 44, label %1126
  ]

1083:                                             ; preds = %1078
  %1084 = getelementptr inbounds %struct.tree_exp, ptr %1068, i64 1
  %1085 = load ptr, ptr %1084, align 8, !tbaa !46
  %1086 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1085, i64 0, i32 4
  %1087 = load ptr, ptr %1086, align 8, !tbaa !46
  br label %1144

1088:                                             ; preds = %1078
  %1089 = load i64, ptr %1080, align 8
  %1090 = and i64 %1089, 65535
  %1091 = icmp eq i64 %1090, 15
  br i1 %1091, label %1092, label %1101

1092:                                             ; preds = %1088
  %1093 = getelementptr inbounds %struct.tree_common, ptr %1080, i64 0, i32 2
  %1094 = load ptr, ptr %1093, align 8, !tbaa !46
  %1095 = getelementptr inbounds %struct.tree_common, ptr %1068, i64 0, i32 2
  %1096 = load ptr, ptr %1095, align 8, !tbaa !46
  %1097 = icmp eq ptr %1094, %1096
  br i1 %1097, label %1153, label %1098

1098:                                             ; preds = %1092
  %1099 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1096, ptr noundef %1094) #19
  %1100 = icmp eq i8 %1099, 0
  br i1 %1100, label %1101, label %1153

1101:                                             ; preds = %1098, %1088
  %1102 = getelementptr inbounds %struct.tree_common, ptr %1068, i64 0, i32 2
  %1103 = load ptr, ptr %1102, align 8, !tbaa !46
  %1104 = call ptr @build_array_type(ptr noundef %1103, ptr noundef null) #19
  br label %1144

1105:                                             ; preds = %1078
  %1106 = load i64, ptr %1080, align 8
  %1107 = and i64 %1106, 65535
  %1108 = icmp eq i64 %1107, 15
  br i1 %1108, label %1109, label %1120

1109:                                             ; preds = %1105
  %1110 = getelementptr inbounds %struct.tree_common, ptr %1080, i64 0, i32 2
  %1111 = load ptr, ptr %1110, align 8, !tbaa !46
  %1112 = getelementptr inbounds %struct.tree_common, ptr %1068, i64 0, i32 2
  %1113 = load ptr, ptr %1112, align 8, !tbaa !46
  %1114 = getelementptr inbounds %struct.tree_common, ptr %1113, i64 0, i32 2
  %1115 = load ptr, ptr %1114, align 8, !tbaa !46
  %1116 = icmp eq ptr %1111, %1115
  br i1 %1116, label %1153, label %1117

1117:                                             ; preds = %1109
  %1118 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1115, ptr noundef %1111) #19
  %1119 = icmp eq i8 %1118, 0
  br i1 %1119, label %1120, label %1153

1120:                                             ; preds = %1117, %1105
  %1121 = getelementptr inbounds %struct.tree_common, ptr %1068, i64 0, i32 2
  %1122 = load ptr, ptr %1121, align 8, !tbaa !46
  %1123 = getelementptr inbounds %struct.tree_common, ptr %1122, i64 0, i32 2
  %1124 = load ptr, ptr %1123, align 8, !tbaa !46
  %1125 = call ptr @build_array_type(ptr noundef %1124, ptr noundef null) #19
  br label %1144

1126:                                             ; preds = %1078, %1078
  %1127 = load i64, ptr %1080, align 8
  %1128 = and i64 %1127, 65535
  %1129 = icmp eq i64 %1128, 13
  br i1 %1129, label %1130, label %1139

1130:                                             ; preds = %1126
  %1131 = getelementptr inbounds %struct.tree_common, ptr %1080, i64 0, i32 2
  %1132 = load ptr, ptr %1131, align 8, !tbaa !46
  %1133 = getelementptr inbounds %struct.tree_common, ptr %1068, i64 0, i32 2
  %1134 = load ptr, ptr %1133, align 8, !tbaa !46
  %1135 = icmp eq ptr %1132, %1134
  br i1 %1135, label %1153, label %1136

1136:                                             ; preds = %1130
  %1137 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1134, ptr noundef %1132) #19
  %1138 = icmp eq i8 %1137, 0
  br i1 %1138, label %1139, label %1153

1139:                                             ; preds = %1136, %1126
  %1140 = getelementptr inbounds %struct.tree_common, ptr %1068, i64 0, i32 2
  %1141 = load ptr, ptr %1140, align 8, !tbaa !46
  %1142 = call ptr @build_complex_type(ptr noundef %1141) #19
  br label %1144

1143:                                             ; preds = %1078
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 940, ptr noundef nonnull @.str.1) #19
  br label %1144

1144:                                             ; preds = %1143, %1139, %1120, %1101, %1083
  %1145 = phi ptr [ undef, %1143 ], [ %1142, %1139 ], [ %1125, %1120 ], [ %1104, %1101 ], [ %1087, %1083 ]
  %1146 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1145, ptr noundef %1080) #19
  %1147 = icmp eq i8 %1146, 0
  br i1 %1147, label %1148, label %1153

1148:                                             ; preds = %1144, %1005
  %1149 = phi ptr [ %993, %1005 ], [ %1075, %1144 ]
  %1150 = phi ptr [ %1008, %1005 ], [ %1145, %1144 ]
  %1151 = load ptr, ptr %1149, align 8, !tbaa !46
  %1152 = call ptr @build1_stat(i32 noundef 118, ptr noundef %1150, ptr noundef %1151) #19
  store ptr %1152, ptr %1149, align 8, !tbaa !46
  br label %1153

1153:                                             ; preds = %1148, %1078, %1144, %1136, %1130, %1117, %1109, %1098, %1092, %1078, %1074, %1063, %983
  %1154 = add nuw i64 %961, 1
  %1155 = icmp eq i64 %1154, %894
  br i1 %1155, label %1158, label %960, !llvm.loop !182

1156:                                             ; preds = %914
  %1157 = call ptr @lto_tag_name(i32 noundef %888) #19
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.7, ptr noundef %1157) #19
  br label %1158

1158:                                             ; preds = %1153, %956, %1156, %939, %936, %932
  switch i32 %888, label %1260 [
    i32 197, label %1165
    i32 195, label %1165
    i32 193, label %1174
    i32 196, label %1159
  ]

1159:                                             ; preds = %1158
  %1160 = getelementptr inbounds %struct.gimple_statement_asm, ptr %896, i64 0, i32 3
  %1161 = load i8, ptr %1160, align 1, !tbaa !46
  %1162 = icmp eq i8 %1161, 0
  br i1 %1162, label %1260, label %1163

1163:                                             ; preds = %1159
  %1164 = getelementptr inbounds %struct.gimple_statement_asm, ptr %896, i64 0, i32 2
  br label %1226

1165:                                             ; preds = %1158, %1158
  %1166 = call ptr @gimple_get_lhs(ptr noundef nonnull %896) #19
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1260, label %1168

1168:                                             ; preds = %1165
  %1169 = load i64, ptr %1166, align 8
  %1170 = and i64 %1169, 65535
  %1171 = icmp eq i64 %1170, 141
  br i1 %1171, label %1172, label %1260

1172:                                             ; preds = %1168
  %1173 = getelementptr inbounds %struct.tree_ssa_name, ptr %1166, i64 0, i32 2
  store ptr %896, ptr %1173, align 8, !tbaa !46
  br label %1260

1174:                                             ; preds = %1158
  %1175 = load i32, ptr %896, align 8
  %1176 = and i32 %1175, 255
  %1177 = add nsw i32 %1176, -10
  %1178 = icmp ult i32 %1177, -9
  br i1 %1178, label %1191, label %1179

1179:                                             ; preds = %1174
  %1180 = zext nneg i32 %1176 to i64
  %1181 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1180
  %1182 = load i32, ptr %1181, align 4, !tbaa !50
  %1183 = zext i32 %1182 to i64
  %1184 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1183
  %1185 = load i64, ptr %1184, align 8, !tbaa !178
  %1186 = icmp eq i64 %1185, 0
  br i1 %1186, label %1187, label %1188

1187:                                             ; preds = %1179
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1188

1188:                                             ; preds = %1187, %1179
  %1189 = getelementptr inbounds i8, ptr %896, i64 %1185
  %1190 = load ptr, ptr %1189, align 8, !tbaa !35
  br label %1191

1191:                                             ; preds = %1188, %1174
  %1192 = phi ptr [ %1190, %1188 ], [ null, %1174 ]
  %1193 = getelementptr inbounds %struct.tree_decl_common, ptr %1192, i64 0, i32 2
  %1194 = load i64, ptr %1193, align 8
  %1195 = and i64 %1194, 256
  %1196 = icmp eq i64 %1195, 0
  br i1 %1196, label %1197, label %1202

1197:                                             ; preds = %1191
  %1198 = load i64, ptr %1192, align 8
  %1199 = lshr i64 %1198, 16
  %1200 = trunc i64 %1199 to i8
  %1201 = and i8 %1200, 1
  br label %1202

1202:                                             ; preds = %1197, %1191
  %1203 = phi i8 [ 1, %1191 ], [ %1201, %1197 ]
  %1204 = icmp eq i8 %1203, 0
  br i1 %1204, label %1205, label %1260

1205:                                             ; preds = %1202
  %1206 = load i32, ptr %896, align 8
  %1207 = and i32 %1206, 255
  %1208 = add nsw i32 %1207, -1
  %1209 = icmp ult i32 %1208, 9
  call void @llvm.assume(i1 %1209)
  %1210 = zext nneg i32 %1207 to i64
  %1211 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1210
  %1212 = load i32, ptr %1211, align 4, !tbaa !50
  %1213 = zext i32 %1212 to i64
  %1214 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1213
  %1215 = load i64, ptr %1214, align 8, !tbaa !178
  %1216 = icmp eq i64 %1215, 0
  br i1 %1216, label %1217, label %1218

1217:                                             ; preds = %1205
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1218

1218:                                             ; preds = %1217, %1205
  %1219 = getelementptr inbounds i8, ptr %896, i64 %1215
  %1220 = load ptr, ptr %1219, align 8, !tbaa !35
  %1221 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1220, i64 0, i32 4
  %1222 = load ptr, ptr %1221, align 8, !tbaa !46
  %1223 = load ptr, ptr %841, align 8, !tbaa !183
  %1224 = icmp eq ptr %1222, %1223
  br i1 %1224, label %1260, label %1225

1225:                                             ; preds = %1218
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1147, ptr noundef nonnull @.str.1) #19
  br label %1260

1226:                                             ; preds = %1163, %1255
  %1227 = phi i32 [ 0, %1163 ], [ %1256, %1255 ]
  %1228 = load i8, ptr %1164, align 8, !tbaa !46
  %1229 = zext i8 %1228 to i32
  %1230 = add nuw nsw i32 %1227, %1229
  %1231 = load i32, ptr %896, align 8
  %1232 = and i32 %1231, 255
  %1233 = add nsw i32 %1232, -1
  %1234 = icmp ult i32 %1233, 9
  call void @llvm.assume(i1 %1234)
  %1235 = zext nneg i32 %1232 to i64
  %1236 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1235
  %1237 = load i32, ptr %1236, align 4, !tbaa !50
  %1238 = zext i32 %1237 to i64
  %1239 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1238
  %1240 = load i64, ptr %1239, align 8, !tbaa !178
  %1241 = icmp eq i64 %1240, 0
  br i1 %1241, label %1242, label %1243

1242:                                             ; preds = %1226
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1243

1243:                                             ; preds = %1242, %1226
  %1244 = getelementptr inbounds i8, ptr %896, i64 %1240
  %1245 = zext nneg i32 %1230 to i64
  %1246 = getelementptr inbounds ptr, ptr %1244, i64 %1245
  %1247 = load ptr, ptr %1246, align 8, !tbaa !35
  %1248 = getelementptr inbounds %struct.tree_list, ptr %1247, i64 0, i32 2
  %1249 = load ptr, ptr %1248, align 8, !tbaa !46
  %1250 = load i64, ptr %1249, align 8
  %1251 = and i64 %1250, 65535
  %1252 = icmp eq i64 %1251, 141
  br i1 %1252, label %1253, label %1255

1253:                                             ; preds = %1243
  %1254 = getelementptr inbounds %struct.tree_ssa_name, ptr %1249, i64 0, i32 2
  store ptr %896, ptr %1254, align 8, !tbaa !46
  br label %1255

1255:                                             ; preds = %1253, %1243
  %1256 = add nuw nsw i32 %1227, 1
  %1257 = load i8, ptr %1160, align 1, !tbaa !46
  %1258 = zext i8 %1257 to i32
  %1259 = icmp ult i32 %1256, %1258
  br i1 %1259, label %1226, label %1260, !llvm.loop !184

1260:                                             ; preds = %1255, %1159, %1165, %914, %1225, %1218, %1202, %1172, %1168, %1158, %914
  %1261 = call zeroext i8 @gimple_assign_single_p(ptr noundef %896) #19
  %1262 = icmp eq i8 %1261, 0
  %1263 = load i32, ptr %896, align 8
  %1264 = and i32 %1263, 255
  br i1 %1262, label %1380, label %1265

1265:                                             ; preds = %1260
  %1266 = add nsw i32 %1264, -10
  %1267 = icmp ult i32 %1266, -9
  br i1 %1267, label %1280, label %1268

1268:                                             ; preds = %1265
  %1269 = zext nneg i32 %1264 to i64
  %1270 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1269
  %1271 = load i32, ptr %1270, align 4, !tbaa !50
  %1272 = zext i32 %1271 to i64
  %1273 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1272
  %1274 = load i64, ptr %1273, align 8, !tbaa !178
  %1275 = icmp eq i64 %1274, 0
  br i1 %1275, label %1276, label %1277

1276:                                             ; preds = %1268
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1277

1277:                                             ; preds = %1276, %1268
  %1278 = getelementptr inbounds i8, ptr %896, i64 %1274
  %1279 = load ptr, ptr %1278, align 8, !tbaa !35
  br label %1280

1280:                                             ; preds = %1277, %1265
  %1281 = phi ptr [ %1279, %1277 ], [ null, %1265 ]
  %1282 = load i32, ptr %896, align 8
  %1283 = and i32 %1282, 255
  %1284 = add nsw i32 %1283, -10
  %1285 = icmp ult i32 %1284, -9
  br i1 %1285, label %1299, label %1286

1286:                                             ; preds = %1280
  %1287 = zext nneg i32 %1283 to i64
  %1288 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1287
  %1289 = load i32, ptr %1288, align 4, !tbaa !50
  %1290 = zext i32 %1289 to i64
  %1291 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1290
  %1292 = load i64, ptr %1291, align 8, !tbaa !178
  %1293 = icmp eq i64 %1292, 0
  br i1 %1293, label %1294, label %1295

1294:                                             ; preds = %1286
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1295

1295:                                             ; preds = %1294, %1286
  %1296 = getelementptr inbounds i8, ptr %896, i64 %1292
  %1297 = getelementptr inbounds ptr, ptr %1296, i64 1
  %1298 = load ptr, ptr %1297, align 8, !tbaa !35
  br label %1299

1299:                                             ; preds = %1295, %1280
  %1300 = phi ptr [ %1298, %1295 ], [ null, %1280 ]
  %1301 = load i64, ptr %1300, align 8
  %1302 = and i64 %1301, 65535
  %1303 = icmp eq i64 %1302, 32
  br i1 %1303, label %1304, label %1337

1304:                                             ; preds = %1299
  %1305 = getelementptr inbounds %struct.tree_common, ptr %1281, i64 0, i32 2
  %1306 = load ptr, ptr %1305, align 8, !tbaa !46
  %1307 = getelementptr inbounds %struct.tree_common, ptr %1300, i64 0, i32 2
  %1308 = load ptr, ptr %1307, align 8, !tbaa !46
  %1309 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1306, ptr noundef %1308) #19
  %1310 = icmp eq i8 %1309, 0
  br i1 %1310, label %1311, label %1479

1311:                                             ; preds = %1304
  %1312 = load ptr, ptr %1305, align 8, !tbaa !46
  %1313 = call ptr @build1_stat(i32 noundef 118, ptr noundef %1312, ptr noundef nonnull %1300) #19
  %1314 = load i32, ptr %896, align 8
  %1315 = and i32 %1314, 255
  %1316 = add nsw i32 %1315, -10
  %1317 = icmp ult i32 %1316, -9
  br i1 %1317, label %1322, label %1318

1318:                                             ; preds = %1311
  %1319 = getelementptr inbounds %struct.gimple_statement_base, ptr %896, i64 0, i32 3
  %1320 = load i32, ptr %1319, align 4, !tbaa !46
  %1321 = icmp ugt i32 %1320, 1
  br i1 %1321, label %1323, label %1322

1322:                                             ; preds = %1318, %1311
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %1323

1323:                                             ; preds = %1322, %1318
  %1324 = load i32, ptr %896, align 8
  %1325 = and i32 %1324, 255
  %1326 = zext nneg i32 %1325 to i64
  %1327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1326
  %1328 = load i32, ptr %1327, align 4, !tbaa !50
  %1329 = zext i32 %1328 to i64
  %1330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1329
  %1331 = load i64, ptr %1330, align 8, !tbaa !178
  %1332 = icmp eq i64 %1331, 0
  br i1 %1332, label %1333, label %1334

1333:                                             ; preds = %1323
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1334

1334:                                             ; preds = %1333, %1323
  %1335 = getelementptr inbounds i8, ptr %896, i64 %1331
  %1336 = getelementptr inbounds ptr, ptr %1335, i64 1
  store ptr %1313, ptr %1336, align 8, !tbaa !35
  br label %1479

1337:                                             ; preds = %1299
  %1338 = load i64, ptr %1281, align 8
  %1339 = and i64 %1338, 65535
  %1340 = icmp eq i64 %1339, 32
  br i1 %1340, label %1341, label %1479

1341:                                             ; preds = %1337
  %1342 = getelementptr inbounds %struct.tree_common, ptr %1281, i64 0, i32 2
  %1343 = load ptr, ptr %1342, align 8, !tbaa !46
  %1344 = getelementptr inbounds %struct.tree_common, ptr %1300, i64 0, i32 2
  %1345 = load ptr, ptr %1344, align 8, !tbaa !46
  %1346 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1343, ptr noundef %1345) #19
  %1347 = icmp eq i8 %1346, 0
  br i1 %1347, label %1348, label %1479

1348:                                             ; preds = %1341
  %1349 = load ptr, ptr %1344, align 8, !tbaa !46
  %1350 = call ptr @build1_stat(i32 noundef 118, ptr noundef %1349, ptr noundef nonnull %1281) #19
  %1351 = load i32, ptr %896, align 8
  %1352 = and i32 %1351, 255
  %1353 = add nsw i32 %1352, -10
  %1354 = icmp ult i32 %1353, -9
  br i1 %1354, label %1359, label %1355

1355:                                             ; preds = %1348
  %1356 = getelementptr inbounds %struct.gimple_statement_base, ptr %896, i64 0, i32 3
  %1357 = load i32, ptr %1356, align 4, !tbaa !46
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1359, label %1360

1359:                                             ; preds = %1355, %1348
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %1360

1360:                                             ; preds = %1359, %1355
  %1361 = load i32, ptr %896, align 8
  %1362 = and i32 %1361, 255
  %1363 = zext nneg i32 %1362 to i64
  %1364 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1363
  %1365 = load i32, ptr %1364, align 4, !tbaa !50
  %1366 = zext i32 %1365 to i64
  %1367 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1366
  %1368 = load i64, ptr %1367, align 8, !tbaa !178
  %1369 = icmp eq i64 %1368, 0
  br i1 %1369, label %1370, label %1371

1370:                                             ; preds = %1360
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1371

1371:                                             ; preds = %1370, %1360
  %1372 = getelementptr inbounds i8, ptr %896, i64 %1368
  store ptr %1350, ptr %1372, align 8, !tbaa !35
  %1373 = icmp eq ptr %1350, null
  br i1 %1373, label %1479, label %1374

1374:                                             ; preds = %1371
  %1375 = load i64, ptr %1350, align 8
  %1376 = and i64 %1375, 65535
  %1377 = icmp eq i64 %1376, 141
  br i1 %1377, label %1378, label %1479

1378:                                             ; preds = %1374
  %1379 = getelementptr inbounds %struct.tree_ssa_name, ptr %1350, i64 0, i32 2
  store ptr %896, ptr %1379, align 8, !tbaa !46
  br label %1479

1380:                                             ; preds = %1260
  %1381 = icmp eq i32 %1264, 8
  br i1 %1381, label %1382, label %1479

1382:                                             ; preds = %1380
  %1383 = zext nneg i32 %1264 to i64
  %1384 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1383
  %1385 = load i32, ptr %1384, align 4, !tbaa !50
  %1386 = zext i32 %1385 to i64
  %1387 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1386
  %1388 = load i64, ptr %1387, align 8, !tbaa !178
  %1389 = icmp eq i64 %1388, 0
  br i1 %1389, label %1390, label %1391

1390:                                             ; preds = %1382
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1391

1391:                                             ; preds = %1390, %1382
  %1392 = getelementptr inbounds i8, ptr %896, i64 %1388
  %1393 = load ptr, ptr %1392, align 8, !tbaa !35
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %1479, label %1395

1395:                                             ; preds = %1391
  %1396 = load i64, ptr %1393, align 8
  %1397 = and i64 %1396, 65535
  %1398 = icmp eq i64 %1397, 32
  br i1 %1398, label %1399, label %1479

1399:                                             ; preds = %1395
  %1400 = getelementptr inbounds %struct.tree_common, ptr %1393, i64 0, i32 2
  %1401 = load ptr, ptr %1400, align 8, !tbaa !46
  %1402 = load i32, ptr %896, align 8
  %1403 = and i32 %1402, 255
  %1404 = add nsw i32 %1403, -1
  %1405 = icmp ult i32 %1404, 9
  call void @llvm.assume(i1 %1405)
  %1406 = zext nneg i32 %1403 to i64
  %1407 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1406
  %1408 = load i32, ptr %1407, align 4, !tbaa !50
  %1409 = zext i32 %1408 to i64
  %1410 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1409
  %1411 = load i64, ptr %1410, align 8, !tbaa !178
  %1412 = icmp eq i64 %1411, 0
  br i1 %1412, label %1413, label %1414

1413:                                             ; preds = %1399
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1414

1414:                                             ; preds = %1413, %1399
  %1415 = getelementptr inbounds i8, ptr %896, i64 %1411
  %1416 = getelementptr inbounds ptr, ptr %1415, i64 1
  %1417 = load ptr, ptr %1416, align 8, !tbaa !35
  %1418 = getelementptr inbounds %struct.tree_common, ptr %1417, i64 0, i32 2
  %1419 = load ptr, ptr %1418, align 8, !tbaa !46
  %1420 = getelementptr inbounds %struct.tree_common, ptr %1419, i64 0, i32 2
  %1421 = load ptr, ptr %1420, align 8, !tbaa !46
  %1422 = getelementptr inbounds %struct.tree_common, ptr %1421, i64 0, i32 2
  %1423 = load ptr, ptr %1422, align 8, !tbaa !46
  %1424 = call zeroext i8 @useless_type_conversion_p(ptr noundef %1401, ptr noundef %1423) #19
  %1425 = icmp eq i8 %1424, 0
  br i1 %1425, label %1426, label %1479

1426:                                             ; preds = %1414
  %1427 = load i32, ptr %896, align 8
  %1428 = and i32 %1427, 255
  %1429 = add nsw i32 %1428, -1
  %1430 = icmp ult i32 %1429, 9
  call void @llvm.assume(i1 %1430)
  %1431 = zext nneg i32 %1428 to i64
  %1432 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1431
  %1433 = load i32, ptr %1432, align 4, !tbaa !50
  %1434 = zext i32 %1433 to i64
  %1435 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1434
  %1436 = load i64, ptr %1435, align 8, !tbaa !178
  %1437 = icmp eq i64 %1436, 0
  br i1 %1437, label %1438, label %1439

1438:                                             ; preds = %1426
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1439

1439:                                             ; preds = %1438, %1426
  %1440 = getelementptr inbounds i8, ptr %896, i64 %1436
  %1441 = getelementptr inbounds ptr, ptr %1440, i64 1
  %1442 = load ptr, ptr %1441, align 8, !tbaa !35
  %1443 = getelementptr inbounds %struct.tree_common, ptr %1442, i64 0, i32 2
  %1444 = load ptr, ptr %1443, align 8, !tbaa !46
  %1445 = getelementptr inbounds %struct.tree_common, ptr %1444, i64 0, i32 2
  %1446 = load ptr, ptr %1445, align 8, !tbaa !46
  %1447 = getelementptr inbounds %struct.tree_common, ptr %1446, i64 0, i32 2
  %1448 = load ptr, ptr %1447, align 8, !tbaa !46
  %1449 = call ptr @build1_stat(i32 noundef 118, ptr noundef %1448, ptr noundef nonnull %1393) #19
  %1450 = load i32, ptr %896, align 8
  %1451 = and i32 %1450, 255
  %1452 = add nsw i32 %1451, -10
  %1453 = icmp ult i32 %1452, -9
  br i1 %1453, label %1458, label %1454

1454:                                             ; preds = %1439
  %1455 = getelementptr inbounds %struct.gimple_statement_base, ptr %896, i64 0, i32 3
  %1456 = load i32, ptr %1455, align 4, !tbaa !46
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1458, label %1459

1458:                                             ; preds = %1454, %1439
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.1) #19
  br label %1459

1459:                                             ; preds = %1458, %1454
  %1460 = load i32, ptr %896, align 8
  %1461 = and i32 %1460, 255
  %1462 = zext nneg i32 %1461 to i64
  %1463 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1462
  %1464 = load i32, ptr %1463, align 4, !tbaa !50
  %1465 = zext i32 %1464 to i64
  %1466 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1465
  %1467 = load i64, ptr %1466, align 8, !tbaa !178
  %1468 = icmp eq i64 %1467, 0
  br i1 %1468, label %1469, label %1470

1469:                                             ; preds = %1459
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %1470

1470:                                             ; preds = %1469, %1459
  %1471 = getelementptr inbounds i8, ptr %896, i64 %1467
  store ptr %1449, ptr %1471, align 8, !tbaa !35
  %1472 = icmp eq ptr %1449, null
  br i1 %1472, label %1479, label %1473

1473:                                             ; preds = %1470
  %1474 = load i64, ptr %1449, align 8
  %1475 = and i64 %1474, 65535
  %1476 = icmp eq i64 %1475, 141
  br i1 %1476, label %1477, label %1479

1477:                                             ; preds = %1473
  %1478 = getelementptr inbounds %struct.tree_ssa_name, ptr %1449, i64 0, i32 2
  store ptr %896, ptr %1478, align 8, !tbaa !46
  br label %1479

1479:                                             ; preds = %1477, %1473, %1470, %1414, %1395, %1391, %1380, %1378, %1374, %1371, %1341, %1337, %1334, %1304
  call void @gimple_set_modified(ptr noundef nonnull %896, i8 noundef zeroext 1) #19
  %1480 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1482, label %1488

1482:                                             ; preds = %1479
  %1483 = load i32, ptr %896, align 8
  %1484 = and i32 %1483, 255
  %1485 = icmp eq i32 %1484, 2
  br i1 %1485, label %1486, label %1488

1486:                                             ; preds = %1482
  %1487 = call ptr @gimple_build_nop() #19
  br label %1488

1488:                                             ; preds = %1486, %1482, %1479
  %1489 = phi ptr [ %896, %1479 ], [ %1487, %1486 ], [ %896, %1482 ]
  call void @find_referenced_vars_in(ptr noundef %1489) #19
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %1489, i32 noundef 0) #19
  %1490 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1491 = trunc i64 %1490 to i32
  call void (i32, i32, ...) @lto_tag_check_set(i32 noundef %1491, i32 poison, i32 noundef 226, i32 noundef 0)
  %1492 = icmp eq i32 %1491, 226
  br i1 %1492, label %1493, label %1500

1493:                                             ; preds = %1488
  %1494 = call i64 @lto_input_sleb128(ptr noundef nonnull %8) #19
  %1495 = trunc i64 %1494 to i32
  %1496 = add i64 %1494, 2147483648
  %1497 = icmp ult i64 %1496, 4294967296
  br i1 %1497, label %1499, label %1498

1498:                                             ; preds = %1493
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1222, ptr noundef nonnull @.str.1) #19
  br label %1499

1499:                                             ; preds = %1498, %1493
  call void @add_stmt_to_eh_lp(ptr noundef %1489, i32 noundef %1495) #19
  br label %1500

1500:                                             ; preds = %1499, %1488
  %1501 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1502 = trunc i64 %1501 to i32
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1504, label %887, !llvm.loop !185

1504:                                             ; preds = %1500, %882
  %1505 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1506 = and i64 %1505, 4294967295
  %1507 = icmp eq i64 %1506, 0
  br i1 %1507, label %1556, label %1508

1508:                                             ; preds = %1504, %1552
  %1509 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1510 = load ptr, ptr %842, align 8, !tbaa !99
  %1511 = getelementptr inbounds %struct.gimple_df, ptr %1510, i64 0, i32 2
  %1512 = load ptr, ptr %1511, align 8, !tbaa !100
  %1513 = and i64 %1509, 4294967295
  %1514 = getelementptr inbounds %struct.VEC_tree_base, ptr %1512, i64 0, i32 2, i64 %1513
  %1515 = load ptr, ptr %1514, align 8, !tbaa !35
  %1516 = load ptr, ptr %855, align 8, !tbaa !186
  %1517 = icmp eq ptr %1516, null
  br i1 %1517, label %1520, label %1518

1518:                                             ; preds = %1508
  %1519 = load i32, ptr %1516, align 8, !tbaa !187
  br label %1520

1520:                                             ; preds = %1518, %1508
  %1521 = phi i32 [ %1519, %1518 ], [ 0, %1508 ]
  %1522 = call ptr @create_phi_node(ptr noundef %1515, ptr noundef nonnull %855) #19
  %1523 = getelementptr inbounds %struct.tree_ssa_name, ptr %1515, i64 0, i32 2
  store ptr %1522, ptr %1523, align 8, !tbaa !46
  %1524 = icmp sgt i32 %1521, 0
  br i1 %1524, label %1525, label %1552

1525:                                             ; preds = %1520
  %1526 = zext nneg i32 %1521 to i64
  br label %1527

1527:                                             ; preds = %1525, %1548
  %1528 = phi i32 [ %1550, %1548 ], [ 0, %1525 ]
  %1529 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %1530 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1531 = call fastcc i32 @lto_input_location(ptr noundef nonnull %8, ptr noundef %26)
  %1532 = load ptr, ptr %838, align 8, !tbaa !73
  %1533 = getelementptr inbounds %struct.control_flow_graph, ptr %1532, i64 0, i32 2
  %1534 = load ptr, ptr %1533, align 8, !tbaa !82
  %1535 = and i64 %1530, 4294967295
  %1536 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1534, i64 0, i32 2, i64 %1535
  %1537 = load ptr, ptr %1536, align 8, !tbaa !35
  %1538 = load ptr, ptr %855, align 8, !tbaa !186
  br label %1542

1539:                                             ; preds = %1542
  %1540 = add nuw nsw i64 %1543, 1
  %1541 = icmp eq i64 %1540, %1526
  br i1 %1541, label %1548, label %1542, !llvm.loop !189

1542:                                             ; preds = %1527, %1539
  %1543 = phi i64 [ 0, %1527 ], [ %1540, %1539 ]
  %1544 = getelementptr inbounds %struct.VEC_edge_base, ptr %1538, i64 0, i32 2, i64 %1543
  %1545 = load ptr, ptr %1544, align 8, !tbaa !35
  %1546 = load ptr, ptr %1545, align 8, !tbaa !190
  %1547 = icmp eq ptr %1546, %1537
  br i1 %1547, label %1548, label %1539

1548:                                             ; preds = %1539, %1542
  %1549 = phi ptr [ %1545, %1542 ], [ null, %1539 ]
  call void @add_phi_arg(ptr noundef %1522, ptr noundef %1529, ptr noundef %1549, i32 noundef %1531) #19
  %1550 = add nuw nsw i32 %1528, 1
  %1551 = icmp eq i32 %1550, %1521
  br i1 %1551, label %1552, label %1527, !llvm.loop !191

1552:                                             ; preds = %1548, %1520
  call void @find_referenced_vars_in(ptr noundef %1522) #19
  %1553 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1554 = and i64 %1553, 4294967295
  %1555 = icmp eq i64 %1554, 0
  br i1 %1555, label %1556, label %1508, !llvm.loop !192

1556:                                             ; preds = %1552, %1504, %848
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %1557 = call i64 @lto_input_uleb128(ptr noundef nonnull %8) #19
  %1558 = trunc i64 %1557 to i32
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1560, label %843, !llvm.loop !193

1560:                                             ; preds = %1556, %832
  call void @renumber_gimple_stmt_uids() #19
  %1561 = getelementptr inbounds %struct.function, ptr %202, i64 0, i32 13
  %1562 = load i32, ptr %1561, align 8, !tbaa !194
  %1563 = zext i32 %1562 to i64
  %1564 = call ptr @xcalloc(i64 noundef %1563, i64 noundef 8) #19
  %1565 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1566 = getelementptr inbounds %struct.function, ptr %1565, i64 0, i32 1
  %1567 = load ptr, ptr %1566, align 8, !tbaa !73
  %1568 = load ptr, ptr %1567, align 8, !tbaa !35
  %1569 = icmp eq ptr %1568, null
  br i1 %1569, label %1604, label %1570

1570:                                             ; preds = %1560, %1600
  %1571 = phi ptr [ %1602, %1600 ], [ %1568, %1560 ]
  %1572 = getelementptr inbounds %struct.basic_block_def, ptr %1571, i64 0, i32 13
  %1573 = load i32, ptr %1572, align 8, !tbaa !167, !noalias !195
  %1574 = and i32 %1573, 512
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1576, label %1582

1576:                                             ; preds = %1570
  %1577 = getelementptr inbounds %struct.basic_block_def, ptr %1571, i64 0, i32 7
  %1578 = load ptr, ptr %1577, align 8, !tbaa !46, !noalias !195
  %1579 = icmp eq ptr %1578, null
  br i1 %1579, label %1582, label %1580

1580:                                             ; preds = %1576
  %1581 = load ptr, ptr %1578, align 8, !tbaa !171, !noalias !195
  br label %1582

1582:                                             ; preds = %1580, %1576, %1570
  %1583 = phi ptr [ %1581, %1580 ], [ null, %1576 ], [ null, %1570 ]
  %1584 = icmp eq ptr %1583, null
  br i1 %1584, label %1587, label %1585

1585:                                             ; preds = %1582
  %1586 = load ptr, ptr %1583, align 8, !tbaa !173, !noalias !195
  br label %1587

1587:                                             ; preds = %1585, %1582
  %1588 = phi ptr [ %1586, %1585 ], [ null, %1582 ]
  %1589 = icmp eq ptr %1588, null
  br i1 %1589, label %1600, label %1590

1590:                                             ; preds = %1587, %1590
  %1591 = phi ptr [ %1598, %1590 ], [ %1588, %1587 ]
  %1592 = load ptr, ptr %1591, align 8, !tbaa !198
  %1593 = getelementptr inbounds %struct.gimple_statement_base, ptr %1592, i64 0, i32 1
  %1594 = load i32, ptr %1593, align 4, !tbaa !46
  %1595 = zext i32 %1594 to i64
  %1596 = getelementptr inbounds ptr, ptr %1564, i64 %1595
  store ptr %1592, ptr %1596, align 8, !tbaa !35
  %1597 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1591, i64 0, i32 2
  %1598 = load ptr, ptr %1597, align 8, !tbaa !200
  %1599 = icmp eq ptr %1598, null
  br i1 %1599, label %1600, label %1590, !llvm.loop !201

1600:                                             ; preds = %1590, %1587
  %1601 = getelementptr inbounds %struct.basic_block_def, ptr %1571, i64 0, i32 6
  %1602 = load ptr, ptr %1601, align 8, !tbaa !35
  %1603 = icmp eq ptr %1602, null
  br i1 %1603, label %1604, label %1570, !llvm.loop !202

1604:                                             ; preds = %1600, %1560
  %1605 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1606 = getelementptr inbounds %struct.function, ptr %1605, i64 0, i32 1
  %1607 = load ptr, ptr %1606, align 8, !tbaa !73
  %1608 = load ptr, ptr %1607, align 8, !tbaa !88
  %1609 = getelementptr inbounds %struct.basic_block_def, ptr %1608, i64 0, i32 1
  %1610 = load ptr, ptr %1609, align 8, !tbaa !35, !nonnull !81, !noundef !81
  %1611 = getelementptr inbounds %struct.VEC_edge_base, ptr %1610, i64 0, i32 2, i64 0
  %1612 = load ptr, ptr %1611, align 8, !tbaa !35
  %1613 = getelementptr inbounds %struct.edge_def, ptr %1612, i64 0, i32 1
  %1614 = load ptr, ptr %1613, align 8, !tbaa !203
  %1615 = getelementptr inbounds %struct.basic_block_def, ptr %1614, i64 0, i32 13
  %1616 = load i32, ptr %1615, align 8, !tbaa !167
  %1617 = and i32 %1616, 512
  %1618 = icmp eq i32 %1617, 0
  br i1 %1618, label %1619, label %1625

1619:                                             ; preds = %1604
  %1620 = getelementptr inbounds %struct.basic_block_def, ptr %1614, i64 0, i32 7
  %1621 = load ptr, ptr %1620, align 8, !tbaa !46
  %1622 = icmp eq ptr %1621, null
  br i1 %1622, label %1625, label %1623

1623:                                             ; preds = %1619
  %1624 = load ptr, ptr %1621, align 8, !tbaa !171
  br label %1625

1625:                                             ; preds = %1623, %1619, %1604
  %1626 = phi ptr [ %1624, %1623 ], [ null, %1619 ], [ null, %1604 ]
  call void @gimple_set_body(ptr noundef %1, ptr noundef %1626) #19
  %1627 = call ptr @cgraph_node(ptr noundef %1) #19
  br label %1628

1628:                                             ; preds = %1628, %1625
  %1629 = phi ptr [ %1627, %1625 ], [ %1631, %1628 ]
  %1630 = getelementptr inbounds %struct.cgraph_node, ptr %1629, i64 0, i32 12
  %1631 = load ptr, ptr %1630, align 8, !tbaa !204
  %1632 = icmp eq ptr %1631, null
  br i1 %1632, label %1633, label %1628, !llvm.loop !212

1633:                                             ; preds = %1628
  %1634 = getelementptr inbounds %struct.cgraph_node, ptr %1629, i64 0, i32 1
  %1635 = load ptr, ptr %1634, align 8, !tbaa !35
  %1636 = icmp eq ptr %1635, null
  br i1 %1636, label %1648, label %1637

1637:                                             ; preds = %1633, %1637
  %1638 = phi ptr [ %1646, %1637 ], [ %1635, %1633 ]
  %1639 = getelementptr inbounds %struct.cgraph_edge, ptr %1638, i64 0, i32 10
  %1640 = load i32, ptr %1639, align 4, !tbaa !213
  %1641 = zext i32 %1640 to i64
  %1642 = getelementptr inbounds ptr, ptr %1564, i64 %1641
  %1643 = load ptr, ptr %1642, align 8, !tbaa !35
  %1644 = getelementptr inbounds %struct.cgraph_edge, ptr %1638, i64 0, i32 7
  store ptr %1643, ptr %1644, align 8, !tbaa !215
  %1645 = getelementptr inbounds %struct.cgraph_edge, ptr %1638, i64 0, i32 6
  %1646 = load ptr, ptr %1645, align 8, !tbaa !35
  %1647 = icmp eq ptr %1646, null
  br i1 %1647, label %1648, label %1637, !llvm.loop !216

1648:                                             ; preds = %1637, %1633
  %1649 = getelementptr inbounds %struct.cgraph_node, ptr %1629, i64 0, i32 11
  %1650 = load ptr, ptr %1649, align 8, !tbaa !217
  %1651 = icmp eq ptr %1650, null
  %1652 = icmp eq ptr %1650, %1629
  %1653 = or i1 %1651, %1652
  br i1 %1653, label %1692, label %1654

1654:                                             ; preds = %1648, %1689
  %1655 = phi ptr [ %1690, %1689 ], [ %1650, %1648 ]
  %1656 = getelementptr inbounds %struct.cgraph_node, ptr %1655, i64 0, i32 1
  %1657 = load ptr, ptr %1656, align 8, !tbaa !35
  %1658 = icmp eq ptr %1657, null
  br i1 %1658, label %1670, label %1659

1659:                                             ; preds = %1654, %1659
  %1660 = phi ptr [ %1668, %1659 ], [ %1657, %1654 ]
  %1661 = getelementptr inbounds %struct.cgraph_edge, ptr %1660, i64 0, i32 10
  %1662 = load i32, ptr %1661, align 4, !tbaa !213
  %1663 = zext i32 %1662 to i64
  %1664 = getelementptr inbounds ptr, ptr %1564, i64 %1663
  %1665 = load ptr, ptr %1664, align 8, !tbaa !35
  %1666 = getelementptr inbounds %struct.cgraph_edge, ptr %1660, i64 0, i32 7
  store ptr %1665, ptr %1666, align 8, !tbaa !215
  %1667 = getelementptr inbounds %struct.cgraph_edge, ptr %1660, i64 0, i32 6
  %1668 = load ptr, ptr %1667, align 8, !tbaa !35
  %1669 = icmp eq ptr %1668, null
  br i1 %1669, label %1670, label %1659, !llvm.loop !216

1670:                                             ; preds = %1659, %1654
  %1671 = getelementptr inbounds %struct.cgraph_node, ptr %1655, i64 0, i32 11
  %1672 = load ptr, ptr %1671, align 8, !tbaa !217
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1674, label %1689

1674:                                             ; preds = %1670
  %1675 = getelementptr inbounds %struct.cgraph_node, ptr %1655, i64 0, i32 9
  %1676 = load ptr, ptr %1675, align 8, !tbaa !218
  %1677 = icmp eq ptr %1676, null
  br i1 %1677, label %1678, label %1689

1678:                                             ; preds = %1674
  %1679 = icmp eq ptr %1655, %1629
  br i1 %1679, label %1689, label %1680

1680:                                             ; preds = %1678, %1685
  %1681 = phi ptr [ %1687, %1685 ], [ %1655, %1678 ]
  %1682 = getelementptr inbounds %struct.cgraph_node, ptr %1681, i64 0, i32 9
  %1683 = load ptr, ptr %1682, align 8, !tbaa !218
  %1684 = icmp eq ptr %1683, null
  br i1 %1684, label %1685, label %1689

1685:                                             ; preds = %1680
  %1686 = getelementptr inbounds %struct.cgraph_node, ptr %1681, i64 0, i32 12
  %1687 = load ptr, ptr %1686, align 8, !tbaa !204
  %1688 = icmp eq ptr %1687, %1629
  br i1 %1688, label %1689, label %1680, !llvm.loop !219

1689:                                             ; preds = %1680, %1685, %1678, %1674, %1670
  %1690 = phi ptr [ %1672, %1670 ], [ %1676, %1674 ], [ %1655, %1678 ], [ %1687, %1685 ], [ %1683, %1680 ]
  %1691 = icmp eq ptr %1690, %1629
  br i1 %1691, label %1692, label %1654, !llvm.loop !220

1692:                                             ; preds = %1689, %1648
  call void @execute_all_ipa_stmt_fixups(ptr noundef %1627, ptr noundef %1564) #19
  call void @update_ssa(i32 noundef 16384) #19
  call void @free_dominance_info(i32 noundef 1) #19
  call void @free_dominance_info(i32 noundef 2) #19
  call void @free(ptr noundef %1564)
  %1693 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1694 = getelementptr inbounds %struct.function, ptr %1693, i64 0, i32 3
  %1695 = load ptr, ptr %1694, align 8, !tbaa !99
  %1696 = getelementptr inbounds %struct.gimple_df, ptr %1695, i64 0, i32 10
  %1697 = load i8, ptr %1696, align 8
  %1698 = or i8 %1697, 1
  store i8 %1698, ptr %1696, align 8
  %1699 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 1
  %1700 = load ptr, ptr %1699, align 8, !tbaa !221
  store ptr %1700, ptr %0, align 8, !tbaa !71
  call void @pop_cfun() #19
  br label %1745

1701:                                             ; preds = %4
  %1702 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 6
  %1703 = load ptr, ptr %1702, align 8, !tbaa !93
  %1704 = icmp eq ptr %1703, null
  br i1 %1704, label %1708, label %1705

1705:                                             ; preds = %1701
  %1706 = load ptr, ptr @line_table, align 8, !tbaa !35
  %1707 = tail call ptr @linemap_add(ptr noundef %1706, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  br label %1708

1708:                                             ; preds = %1705, %1701
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1702, i8 0, i64 16, i1 false)
  br label %1709

1709:                                             ; preds = %1709, %1708
  %1710 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %1711 = icmp eq ptr %1710, null
  br i1 %1711, label %1712, label %1709, !llvm.loop !222

1712:                                             ; preds = %1709
  %1713 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %1714 = icmp eq ptr %1713, null
  br i1 %1714, label %1745, label %1715

1715:                                             ; preds = %1712, %1742
  %1716 = phi ptr [ %1743, %1742 ], [ %1713, %1712 ]
  %1717 = load ptr, ptr @alias_pairs, align 8, !tbaa !35
  %1718 = icmp eq ptr %1717, null
  br i1 %1718, label %1724, label %1719

1719:                                             ; preds = %1715
  %1720 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %1717, i64 0, i32 1
  %1721 = load i32, ptr %1720, align 4, !tbaa !223
  %1722 = load i32, ptr %1717, align 8, !tbaa !225
  %1723 = icmp eq i32 %1721, %1722
  br i1 %1723, label %1724, label %1726

1724:                                             ; preds = %1719, %1715
  %1725 = call ptr @vec_gc_o_reserve(ptr noundef %1717, i32 noundef 1, i64 noundef 8, i64 noundef 16) #19
  store ptr %1725, ptr @alias_pairs, align 8, !tbaa !35
  br label %1726

1726:                                             ; preds = %1724, %1719
  %1727 = load ptr, ptr @alias_pairs, align 8, !tbaa !35
  %1728 = load i32, ptr %1727, align 8, !tbaa !225
  %1729 = add i32 %1728, 1
  store i32 %1729, ptr %1727, align 8, !tbaa !225
  %1730 = zext i32 %1728 to i64
  %1731 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %1727, i64 0, i32 2, i64 %1730
  store ptr %1716, ptr %1731, align 8, !tbaa !226
  %1732 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef %26)
  %1733 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %1727, i64 0, i32 2, i64 %1730, i32 1
  store ptr %1732, ptr %1733, align 8, !tbaa !228
  %1734 = getelementptr inbounds %struct.tree_identifier, ptr %1732, i64 0, i32 1
  %1735 = load ptr, ptr %1734, align 8, !tbaa !46
  %1736 = load ptr, ptr %26, align 8, !tbaa !63
  %1737 = call ptr @lto_get_decl_name_mapping(ptr noundef %1736, ptr noundef %1735) #19
  %1738 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1735, ptr noundef nonnull dereferenceable(1) %1737)
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %1742, label %1740

1740:                                             ; preds = %1726
  %1741 = call ptr @get_identifier(ptr noundef %1737) #19
  store ptr %1741, ptr %1733, align 8, !tbaa !228
  br label %1742

1742:                                             ; preds = %1740, %1726
  %1743 = call ptr @lto_input_tree(ptr noundef nonnull %8, ptr noundef nonnull %26)
  %1744 = icmp eq ptr %1743, null
  br i1 %1744, label %1745, label %1715, !llvm.loop !229

1745:                                             ; preds = %1742, %1712, %1692
  %1746 = getelementptr inbounds %struct.data_in, ptr %26, i64 0, i32 6
  %1747 = load ptr, ptr %1746, align 8, !tbaa !93
  %1748 = icmp eq ptr %1747, null
  br i1 %1748, label %1752, label %1749

1749:                                             ; preds = %1745
  %1750 = load ptr, ptr @line_table, align 8, !tbaa !35
  %1751 = call ptr @linemap_add(ptr noundef %1750, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  br label %1752

1752:                                             ; preds = %1745, %1749
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1746, i8 0, i64 16, i1 false)
  call void @lto_data_in_delete(ptr noundef %26)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_input_constructors_and_inits(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  tail call fastcc void @lto_read_body(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_input_bitpack(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @bitpack_create() #19
  %3 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %4 = trunc i64 %3 to i32
  %5 = icmp ult i32 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1867, ptr noundef nonnull @.str.1) #19
  br label %7

7:                                                ; preds = %1, %6
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bitpack_d, ptr %2, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ 0, %9 ], [ %29, %23 ]
  %13 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %14 = load ptr, ptr %10, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !230
  %19 = load i32, ptr %14, align 8, !tbaa !232
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11, %16
  %22 = tail call ptr @vec_heap_o_reserve(ptr noundef %14, i32 noundef 1, i64 noundef 8, i64 noundef 8) #19
  store ptr %22, ptr %10, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %16, %21
  %24 = load ptr, ptr %10, align 8, !tbaa !35
  %25 = load i32, ptr %24, align 8, !tbaa !232
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !232
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, ptr %24, i64 0, i32 2, i64 %27
  store i64 %13, ptr %28, align 8, !tbaa !178
  %29 = add nuw i32 %12, 1
  %30 = icmp eq i32 %29, %4
  br i1 %30, label %31, label %11, !llvm.loop !233

31:                                               ; preds = %23, %7
  ret ptr %2
}

declare ptr @bitpack_create() local_unnamed_addr #3

declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_input_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lto_input_block, align 8
  %6 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %7 = trunc i64 %6 to i32
  %8 = icmp ult i32 %7, 249
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2700, ptr noundef nonnull @.str.1) #19
  br label %10

10:                                               ; preds = %2, %9
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %1531, label %12

12:                                               ; preds = %10
  %13 = add i32 %7, -238
  %14 = icmp ult i32 %13, 11
  br i1 %14, label %15, label %126

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !35
  tail call fastcc void @lto_tag_check_range(i32 noundef %7, i32 noundef 238, i32 noundef 248)
  %17 = trunc i64 %6 to i8
  switch i8 %17, label %121 [
    i8 -11, label %18
    i8 -13, label %32
    i8 -18, label %41
    i8 -17, label %56
    i8 -12, label %71
    i8 -15, label %86
    i8 -8, label %101
    i8 -14, label %101
    i8 -10, label %101
    i8 -9, label %101
    i8 -16, label %101
  ]

18:                                               ; preds = %15
  %19 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !63
  %21 = trunc i64 %19 to i32
  %22 = load ptr, ptr %20, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.lto_tree_ref_table, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !234
  %25 = icmp ugt i32 %24, %21
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1041, ptr noundef nonnull @.str.1) #19
  br label %27

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %22, align 8, !tbaa !236
  %29 = and i64 %19, 4294967295
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  br label %122

32:                                               ; preds = %15
  %33 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %34 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  %38 = and i64 %33, 4294967295
  %39 = getelementptr inbounds %struct.VEC_tree_base, ptr %37, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  br label %122

41:                                               ; preds = %15
  %42 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %43 = load ptr, ptr %1, align 8, !tbaa !63
  %44 = trunc i64 %42 to i32
  %45 = load ptr, ptr %43, align 8, !tbaa !71
  %46 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %45, i64 0, i64 1, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !234
  %48 = icmp ugt i32 %47, %44
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1042, ptr noundef nonnull @.str.1) #19
  br label %50

50:                                               ; preds = %49, %41
  %51 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %45, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !236
  %53 = and i64 %42, 4294967295
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  br label %122

56:                                               ; preds = %15
  %57 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %58 = load ptr, ptr %1, align 8, !tbaa !63
  %59 = trunc i64 %57 to i32
  %60 = load ptr, ptr %58, align 8, !tbaa !71
  %61 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %60, i64 0, i64 2, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !234
  %63 = icmp ugt i32 %62, %59
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1043, ptr noundef nonnull @.str.1) #19
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %60, i64 0, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !236
  %68 = and i64 %57, 4294967295
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %122

71:                                               ; preds = %15
  %72 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %73 = load ptr, ptr %1, align 8, !tbaa !63
  %74 = trunc i64 %72 to i32
  %75 = load ptr, ptr %73, align 8, !tbaa !71
  %76 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %75, i64 0, i64 4, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !234
  %78 = icmp ugt i32 %77, %74
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1045, ptr noundef nonnull @.str.1) #19
  br label %80

80:                                               ; preds = %79, %71
  %81 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %75, i64 0, i64 4
  %82 = load ptr, ptr %81, align 8, !tbaa !236
  %83 = and i64 %72, 4294967295
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  br label %122

86:                                               ; preds = %15
  %87 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %88 = load ptr, ptr %1, align 8, !tbaa !63
  %89 = trunc i64 %87 to i32
  %90 = load ptr, ptr %88, align 8, !tbaa !71
  %91 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %90, i64 0, i64 5, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !234
  %93 = icmp ugt i32 %92, %89
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1046, ptr noundef nonnull @.str.1) #19
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %90, i64 0, i64 5
  %97 = load ptr, ptr %96, align 8, !tbaa !236
  %98 = and i64 %87, 4294967295
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  br label %122

101:                                              ; preds = %15, %15, %15, %15, %15
  %102 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %103 = load ptr, ptr %1, align 8, !tbaa !63
  %104 = trunc i64 %102 to i32
  %105 = load ptr, ptr %103, align 8, !tbaa !71
  %106 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %105, i64 0, i64 3, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !234
  %108 = icmp ugt i32 %107, %104
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1044, ptr noundef nonnull @.str.1) #19
  br label %110

110:                                              ; preds = %109, %101
  %111 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %105, i64 0, i64 3
  %112 = load ptr, ptr %111, align 8, !tbaa !236
  %113 = and i64 %102, 4294967295
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 32
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = tail call ptr @varpool_node(ptr noundef nonnull %115) #19
  tail call void @varpool_mark_needed_node(ptr noundef %120) #19
  br label %122

121:                                              ; preds = %15
  unreachable

122:                                              ; preds = %119, %110, %95, %80, %65, %50, %32, %27
  %123 = phi ptr [ %115, %119 ], [ %115, %110 ], [ %100, %95 ], [ %85, %80 ], [ %70, %65 ], [ %55, %50 ], [ %40, %32 ], [ %31, %27 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %1531

125:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #19
  br label %1531

126:                                              ; preds = %12
  switch i32 %7, label %246 [
    i32 236, label %127
    i32 227, label %167
    i32 237, label %205
    i32 24, label %235
  ]

127:                                              ; preds = %126
  %128 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %129 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %130 = trunc i64 %129 to i32
  %131 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %132 = trunc i64 %131 to i32
  %133 = icmp ult i64 %131, 4294967296
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2553, ptr noundef nonnull @.str.1) #19
  br label %135

135:                                              ; preds = %134, %127
  %136 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !68
  %138 = trunc i64 %128 to i32
  %139 = tail call ptr @lto_streamer_cache_get(ptr noundef %137, i32 noundef %138) #19
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %142 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !60
  %144 = zext i32 %143 to i64
  %145 = icmp ugt i64 %131, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.11) #19
  br label %147

147:                                              ; preds = %146, %141
  %148 = load ptr, ptr %0, align 8, !tbaa !58
  store ptr %148, ptr %5, align 8, !tbaa !58
  %149 = getelementptr inbounds %struct.lto_input_block, ptr %5, i64 0, i32 1
  store i32 %132, ptr %149, align 8, !tbaa !60
  %150 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !61
  %152 = getelementptr inbounds %struct.lto_input_block, ptr %5, i64 0, i32 2
  store i32 %151, ptr %152, align 4, !tbaa !61
  %153 = call ptr @lto_input_tree(ptr noundef nonnull %5, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %154

154:                                              ; preds = %147, %135
  %155 = phi ptr [ %153, %147 ], [ %139, %135 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = load i64, ptr %155, align 8
  %159 = trunc i64 %158 to i32
  %160 = and i32 %159, 65535
  %161 = add i32 %130, -1
  %162 = icmp ugt i32 %161, 187
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 926, ptr noundef nonnull @.str.1) #19
  br label %164

164:                                              ; preds = %157, %163
  %165 = icmp eq i32 %160, %161
  br i1 %165, label %1531, label %166

166:                                              ; preds = %164, %154
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2574, ptr noundef nonnull @.str.1) #19
  br label %1531

167:                                              ; preds = %126
  %168 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %169 = trunc i64 %168 to i32
  %170 = and i32 %169, -2
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2593, ptr noundef nonnull @.str.1) #19
  br label %173

173:                                              ; preds = %172, %167
  %174 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %175 = trunc i64 %174 to i32
  %176 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  switch i32 %169, label %194 [
    i32 3, label %177
    i32 2, label %186
  ]

177:                                              ; preds = %173
  %178 = icmp ult i32 %175, 721
  br i1 %178, label %180, label %179

179:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2602, ptr noundef nonnull @.str.1) #19
  br label %180

180:                                              ; preds = %179, %177
  %181 = and i64 %174, 4294967295
  %182 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2604, ptr noundef nonnull @.str.1) #19
  br label %195

186:                                              ; preds = %173
  %187 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 24), align 8, !tbaa !237
  %188 = tail call ptr %187(i32 noundef %175, i8 noundef zeroext 1) #19
  %189 = icmp eq ptr %188, null
  %190 = load ptr, ptr @global_trees, align 16
  %191 = icmp eq ptr %188, %190
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12) #19
  br label %195

194:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2613, ptr noundef nonnull @.str.1) #19
  br label %195

195:                                              ; preds = %194, %193, %186, %185, %180
  %196 = phi ptr [ %183, %180 ], [ null, %185 ], [ %188, %193 ], [ undef, %194 ], [ %188, %186 ]
  %197 = tail call fastcc ptr @input_string(ptr noundef %1, ptr noundef %0)
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  tail call void @set_builtin_user_assembler_name(ptr noundef %196, ptr noundef nonnull %197) #19
  br label %200

200:                                              ; preds = %195, %199
  %201 = trunc i64 %176 to i32
  %202 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  %203 = load ptr, ptr %202, align 8, !tbaa !68
  %204 = tail call zeroext i8 @lto_streamer_cache_insert_at(ptr noundef %203, ptr noundef %196, i32 noundef %201) #19
  br label %1531

205:                                              ; preds = %126
  %206 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %207 = load ptr, ptr %1, align 8, !tbaa !63
  %208 = trunc i64 %206 to i32
  %209 = load ptr, ptr %207, align 8, !tbaa !71
  %210 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %209, i64 0, i64 3, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !234
  %212 = icmp ugt i32 %211, %208
  br i1 %212, label %214, label %213

213:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1044, ptr noundef nonnull @.str.1) #19
  br label %214

214:                                              ; preds = %205, %213
  %215 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %209, i64 0, i64 3
  %216 = load ptr, ptr %215, align 8, !tbaa !236
  %217 = and i64 %206, 4294967295
  %218 = getelementptr inbounds ptr, ptr %216, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !35
  %220 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %221 = load ptr, ptr %1, align 8, !tbaa !63
  %222 = trunc i64 %220 to i32
  %223 = load ptr, ptr %221, align 8, !tbaa !71
  %224 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %223, i64 0, i64 3, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !234
  %226 = icmp ugt i32 %225, %222
  br i1 %226, label %228, label %227

227:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1044, ptr noundef nonnull @.str.1) #19
  br label %228

228:                                              ; preds = %214, %227
  %229 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %223, i64 0, i64 3
  %230 = load ptr, ptr %229, align 8, !tbaa !236
  %231 = and i64 %220, 4294967295
  %232 = getelementptr inbounds ptr, ptr %230, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !35
  %234 = tail call zeroext i8 @varpool_extra_name_alias(ptr noundef %219, ptr noundef %233) #19
  br label %1531

235:                                              ; preds = %126
  %236 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %237 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #19
  %238 = icmp eq i8 %237, 0
  %239 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %240 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %241 = tail call ptr @build_int_cst_wide(ptr noundef %236, i64 noundef %239, i64 noundef %240) #19
  br i1 %238, label %1531, label %242

242:                                              ; preds = %235
  %243 = tail call ptr @copy_node_stat(ptr noundef %241) #19
  %244 = load i64, ptr %243, align 8
  %245 = or i64 %244, 134217728
  store i64 %245, ptr %243, align 8
  br label %1531

246:                                              ; preds = %126
  %247 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %248 = trunc i64 %247 to i32
  %249 = add i64 %247, 2147483648
  %250 = icmp ult i64 %249, 4294967296
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #19
  br label %252

252:                                              ; preds = %251, %246
  %253 = add i32 %7, -1
  %254 = icmp ugt i32 %253, 187
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 926, ptr noundef nonnull @.str.1) #19
  br label %256

256:                                              ; preds = %255, %252
  %257 = icmp eq i32 %253, 141
  br i1 %257, label %258, label %259

258:                                              ; preds = %256
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1914, ptr noundef nonnull @.str.1) #19
  br label %259

259:                                              ; preds = %258, %256
  %260 = zext i32 %253 to i64
  %261 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %260, i64 6
  %262 = load i8, ptr %261, align 2, !tbaa !46
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %259
  %265 = tail call fastcc ptr @input_string_cst(ptr noundef %1, ptr noundef %0)
  br label %299

266:                                              ; preds = %259
  %267 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %260, i64 8
  %268 = load i8, ptr %267, align 8, !tbaa !46
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %281, label %270

270:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %271 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %272 = and i64 %271, 4294967295
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = call fastcc ptr @input_string_internal(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4)
  %276 = load i32, ptr %4, align 4, !tbaa !50
  %277 = zext i32 %276 to i64
  %278 = tail call ptr @get_identifier_with_length(ptr noundef %275, i64 noundef %277) #19
  br label %279

279:                                              ; preds = %274, %270
  %280 = phi ptr [ %278, %274 ], [ null, %270 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %299

281:                                              ; preds = %266
  %282 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %260, i64 24
  %283 = load i8, ptr %282, align 8, !tbaa !46
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %287 = trunc i64 %286 to i32
  %288 = tail call ptr @make_tree_vec_stat(i32 noundef %287) #19
  br label %299

289:                                              ; preds = %281
  %290 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %260, i64 28
  %291 = load i8, ptr %290, align 4, !tbaa !46
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %289
  %294 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %295 = trunc i64 %294 to i32
  %296 = tail call ptr @make_tree_binfo_stat(i32 noundef %295) #19
  br label %299

297:                                              ; preds = %289
  %298 = tail call ptr @make_node_stat(i32 noundef %253) #19
  br label %299

299:                                              ; preds = %297, %293, %285, %279, %264
  %300 = phi ptr [ %265, %264 ], [ %280, %279 ], [ %288, %285 ], [ %296, %293 ], [ %298, %297 ]
  %301 = tail call ptr @lto_input_bitpack(ptr noundef %0)
  %302 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 16) #19
  %303 = trunc i64 %302 to i32
  %304 = add i32 %303, 1
  tail call fastcc void @lto_tag_check(i32 noundef %304, i32 noundef %7)
  %305 = load i64, ptr %300, align 8
  %306 = and i64 %305, 65535
  %307 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %306
  %308 = load i32, ptr %307, align 4, !tbaa !50
  %309 = icmp eq i32 %308, 2
  br i1 %309, label %335, label %310

310:                                              ; preds = %299
  %311 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %312 = load i64, ptr %300, align 8
  %313 = shl i64 %311, 16
  %314 = and i64 %313, 65536
  %315 = and i64 %312, -65537
  %316 = or disjoint i64 %315, %314
  store i64 %316, ptr %300, align 8
  %317 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %318 = load i64, ptr %300, align 8
  %319 = shl i64 %317, 17
  %320 = and i64 %319, 131072
  %321 = and i64 %318, -131073
  %322 = or disjoint i64 %321, %320
  store i64 %322, ptr %300, align 8
  %323 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %324 = load i64, ptr %300, align 8
  %325 = shl i64 %323, 20
  %326 = and i64 %325, 1048576
  %327 = and i64 %324, -1048577
  %328 = or disjoint i64 %327, %326
  store i64 %328, ptr %300, align 8
  %329 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %330 = load i64, ptr %300, align 8
  %331 = shl i64 %329, 27
  %332 = and i64 %331, 134217728
  %333 = and i64 %330, -134217729
  %334 = or disjoint i64 %333, %332
  store i64 %334, ptr %300, align 8
  br label %335

335:                                              ; preds = %310, %299
  %336 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %337 = load i64, ptr %300, align 8
  %338 = shl i64 %336, 18
  %339 = and i64 %338, 262144
  %340 = and i64 %337, -262145
  %341 = or disjoint i64 %340, %339
  store i64 %341, ptr %300, align 8
  %342 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %343 = load i64, ptr %300, align 8
  %344 = shl i64 %342, 19
  %345 = and i64 %344, 524288
  %346 = and i64 %343, -524289
  %347 = or disjoint i64 %346, %345
  store i64 %347, ptr %300, align 8
  %348 = and i64 %343, 65535
  %349 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !50
  %351 = and i32 %350, -2
  %352 = icmp eq i32 %351, 2
  br i1 %352, label %353, label %360

353:                                              ; preds = %335
  %354 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %355 = load i64, ptr %300, align 8
  %356 = shl i64 %354, 21
  %357 = and i64 %356, 2097152
  %358 = and i64 %355, -2097153
  %359 = or disjoint i64 %358, %357
  store i64 %359, ptr %300, align 8
  br label %360

360:                                              ; preds = %335, %353
  %361 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %362 = load i64, ptr %300, align 8
  %363 = shl i64 %361, 22
  %364 = and i64 %363, 4194304
  %365 = and i64 %362, -4194305
  %366 = or disjoint i64 %365, %364
  store i64 %366, ptr %300, align 8
  %367 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %368 = load i64, ptr %300, align 8
  %369 = shl i64 %367, 23
  %370 = and i64 %369, 8388608
  %371 = and i64 %368, -8388609
  %372 = or disjoint i64 %371, %370
  store i64 %372, ptr %300, align 8
  %373 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %374 = load i64, ptr %300, align 8
  %375 = shl i64 %373, 24
  %376 = and i64 %375, 16777216
  %377 = and i64 %374, -16777217
  %378 = or disjoint i64 %377, %376
  store i64 %378, ptr %300, align 8
  %379 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %380 = load i64, ptr %300, align 8
  %381 = shl i64 %379, 25
  %382 = and i64 %381, 33554432
  %383 = and i64 %380, -33554433
  %384 = or disjoint i64 %383, %382
  store i64 %384, ptr %300, align 8
  %385 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %386 = load i64, ptr %300, align 8
  %387 = shl i64 %385, 26
  %388 = and i64 %387, 67108864
  %389 = and i64 %386, -67108865
  %390 = or disjoint i64 %389, %388
  store i64 %390, ptr %300, align 8
  %391 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %392 = load i64, ptr %300, align 8
  %393 = shl i64 %391, 28
  %394 = and i64 %393, 268435456
  %395 = and i64 %392, -268435457
  %396 = or disjoint i64 %395, %394
  store i64 %396, ptr %300, align 8
  %397 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %398 = load i64, ptr %300, align 8
  %399 = shl i64 %397, 29
  %400 = and i64 %399, 536870912
  %401 = and i64 %398, -536870913
  %402 = or disjoint i64 %401, %400
  store i64 %402, ptr %300, align 8
  %403 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %404 = load i64, ptr %300, align 8
  %405 = shl i64 %403, 30
  %406 = and i64 %405, 1073741824
  %407 = and i64 %404, -1073741825
  %408 = or disjoint i64 %407, %406
  store i64 %408, ptr %300, align 8
  %409 = and i64 %404, 65535
  %410 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !50
  %412 = icmp eq i32 %411, 2
  br i1 %412, label %413, label %420

413:                                              ; preds = %360
  %414 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %415 = load i64, ptr %300, align 8
  %416 = shl i64 %414, 31
  %417 = and i64 %416, 2147483648
  %418 = and i64 %415, -2147483649
  %419 = or disjoint i64 %418, %417
  store i64 %419, ptr %300, align 8
  br label %420

420:                                              ; preds = %413, %360
  %421 = load i64, ptr %300, align 8
  %422 = and i64 %421, 65535
  %423 = icmp eq i64 %422, 141
  br i1 %423, label %424, label %431

424:                                              ; preds = %420
  %425 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %426 = load i64, ptr %300, align 8
  %427 = shl i64 %425, 32
  %428 = and i64 %427, 4294967296
  %429 = and i64 %426, -4294967297
  %430 = or disjoint i64 %429, %428
  store i64 %430, ptr %300, align 8
  br label %431

431:                                              ; preds = %424, %420
  %432 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 3
  %433 = load i8, ptr %432, align 1, !tbaa !46
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %480, label %435

435:                                              ; preds = %431
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %436 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 2) #19
  %437 = trunc i64 %436 to i32
  %438 = load i32, ptr %3, align 8
  %439 = and i32 %437, 3
  %440 = and i32 %438, -4
  %441 = or disjoint i32 %440, %439
  store i32 %441, ptr %3, align 8
  %442 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %443 = trunc i64 %442 to i32
  %444 = shl i32 %443, 2
  %445 = and i32 %444, 4
  %446 = and i32 %441, -5
  %447 = or disjoint i32 %445, %446
  store i32 %447, ptr %3, align 8
  %448 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %449 = trunc i64 %448 to i32
  %450 = shl i32 %449, 3
  %451 = and i32 %450, 8
  %452 = and i32 %447, -9
  %453 = or disjoint i32 %452, %451
  store i32 %453, ptr %3, align 8
  %454 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %455 = trunc i64 %454 to i32
  %456 = shl i32 %455, 4
  %457 = and i32 %456, 16
  %458 = and i32 %453, -17
  %459 = or disjoint i32 %458, %457
  store i32 %459, ptr %3, align 8
  %460 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %461 = trunc i64 %460 to i32
  %462 = shl i32 %461, 5
  %463 = and i32 %462, 32
  %464 = and i32 %459, -33
  %465 = or disjoint i32 %464, %463
  store i32 %465, ptr %3, align 8
  %466 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 26) #19
  %467 = trunc i64 %466 to i32
  %468 = shl i32 %467, 6
  %469 = and i32 %465, 63
  %470 = or disjoint i32 %469, %468
  store i32 %470, ptr %3, align 8
  br label %471

471:                                              ; preds = %435, %471
  %472 = phi i64 [ 0, %435 ], [ %475, %471 ]
  %473 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 64) #19
  %474 = getelementptr inbounds %struct.real_value, ptr %3, i64 0, i32 1, i64 %472
  store i64 %473, ptr %474, align 8, !tbaa !178
  %475 = add nuw nsw i64 %472, 1
  %476 = icmp eq i64 %475, 3
  br i1 %476, label %477, label %471, !llvm.loop !238

477:                                              ; preds = %471
  %478 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %478, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %479 = getelementptr inbounds %struct.tree_real_cst, ptr %300, i64 0, i32 1
  store ptr %478, ptr %479, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %480

480:                                              ; preds = %477, %431
  %481 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 4
  %482 = load i8, ptr %481, align 4, !tbaa !46
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %490, label %484

484:                                              ; preds = %480
  %485 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 64) #19
  %486 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 64) #19
  %487 = getelementptr inbounds %struct.tree_fixed_cst, ptr %300, i64 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !46
  store i64 %485, ptr %488, align 8, !tbaa.struct !239
  %489 = getelementptr inbounds i8, ptr %488, i64 8
  store i64 %486, ptr %489, align 8, !tbaa.struct !240
  br label %490

490:                                              ; preds = %484, %480
  %491 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 10
  %492 = load i8, ptr %491, align 2, !tbaa !46
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %631, label %494

494:                                              ; preds = %490
  %495 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 8) #19
  %496 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 2
  %497 = load i64, ptr %496, align 8
  %498 = and i64 %495, 255
  %499 = and i64 %497, -256
  %500 = or disjoint i64 %499, %498
  store i64 %500, ptr %496, align 8
  %501 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %502 = load i64, ptr %496, align 8
  %503 = shl i64 %501, 8
  %504 = and i64 %503, 256
  %505 = and i64 %502, -257
  %506 = or disjoint i64 %505, %504
  store i64 %506, ptr %496, align 8
  %507 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %508 = load i64, ptr %496, align 8
  %509 = shl i64 %507, 9
  %510 = and i64 %509, 512
  %511 = and i64 %508, -513
  %512 = or disjoint i64 %511, %510
  store i64 %512, ptr %496, align 8
  %513 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %514 = load i64, ptr %496, align 8
  %515 = shl i64 %513, 10
  %516 = and i64 %515, 1024
  %517 = and i64 %514, -1025
  %518 = or disjoint i64 %517, %516
  store i64 %518, ptr %496, align 8
  %519 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %520 = load i64, ptr %496, align 8
  %521 = shl i64 %519, 11
  %522 = and i64 %521, 2048
  %523 = and i64 %520, -2049
  %524 = or disjoint i64 %523, %522
  store i64 %524, ptr %496, align 8
  %525 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %526 = load i64, ptr %496, align 8
  %527 = shl i64 %525, 12
  %528 = and i64 %527, 4096
  %529 = and i64 %526, -4097
  %530 = or disjoint i64 %529, %528
  store i64 %530, ptr %496, align 8
  %531 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %532 = load i64, ptr %300, align 8
  %533 = shl i64 %531, 42
  %534 = and i64 %533, 4398046511104
  %535 = and i64 %532, -4398046511105
  %536 = or disjoint i64 %535, %534
  store i64 %536, ptr %300, align 8
  %537 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %538 = load i64, ptr %496, align 8
  %539 = shl i64 %537, 13
  %540 = and i64 %539, 8192
  %541 = and i64 %538, -8193
  %542 = or disjoint i64 %541, %540
  store i64 %542, ptr %496, align 8
  %543 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %544 = load i64, ptr %496, align 8
  %545 = shl i64 %543, 14
  %546 = and i64 %545, 16384
  %547 = and i64 %544, -16385
  %548 = or disjoint i64 %547, %546
  store i64 %548, ptr %496, align 8
  %549 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %550 = load i64, ptr %496, align 8
  %551 = shl i64 %549, 25
  %552 = and i64 %551, 33554432
  %553 = and i64 %550, -33554433
  %554 = or disjoint i64 %553, %552
  store i64 %554, ptr %496, align 8
  %555 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %556 = load i64, ptr %496, align 8
  %557 = shl i64 %555, 27
  %558 = and i64 %557, 134217728
  %559 = and i64 %556, -134217729
  %560 = or disjoint i64 %559, %558
  store i64 %560, ptr %496, align 8
  %561 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 32) #19
  %562 = trunc i64 %561 to i32
  %563 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 3
  store i32 %562, ptr %563, align 8, !tbaa !46
  %564 = load i64, ptr %300, align 8
  %565 = and i64 %564, 65535
  %566 = icmp eq i64 %565, 30
  br i1 %566, label %567, label %578

567:                                              ; preds = %494
  %568 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %569 = load i64, ptr %496, align 8
  %570 = shl i64 %568, 24
  %571 = and i64 %570, 16777216
  %572 = and i64 %569, -16777217
  %573 = or disjoint i64 %572, %571
  store i64 %573, ptr %496, align 8
  %574 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 32) #19
  %575 = trunc i64 %574 to i32
  %576 = getelementptr inbounds %struct.tree_label_decl, ptr %300, i64 0, i32 2
  store i32 %575, ptr %576, align 4, !tbaa !46
  %577 = getelementptr inbounds %struct.tree_label_decl, ptr %300, i64 0, i32 1
  store i32 -1, ptr %577, align 8, !tbaa !46
  br label %578

578:                                              ; preds = %567, %494
  %579 = load i64, ptr %300, align 8
  %580 = and i64 %579, 65535
  %581 = icmp eq i64 %580, 31
  br i1 %581, label %582, label %605

582:                                              ; preds = %578
  %583 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %584 = load i64, ptr %300, align 8
  %585 = shl i64 %583, 41
  %586 = and i64 %585, 2199023255552
  %587 = and i64 %584, -2199023255553
  %588 = or disjoint i64 %587, %586
  store i64 %588, ptr %300, align 8
  %589 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %590 = load i64, ptr %496, align 8
  %591 = shl i64 %589, 26
  %592 = and i64 %591, 67108864
  %593 = and i64 %590, -67108865
  %594 = or disjoint i64 %593, %592
  store i64 %594, ptr %496, align 8
  %595 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 8) #19
  %596 = sub i64 0, %595
  %597 = and i64 %595, %596
  %598 = tail call i32 @exact_log2(i64 noundef %597) #19
  %599 = load i64, ptr %496, align 8
  %600 = and i32 %598, 255
  %601 = zext nneg i32 %600 to i64
  %602 = shl nuw nsw i64 %601, 32
  %603 = and i64 %599, -1095216660481
  %604 = or disjoint i64 %602, %603
  store i64 %604, ptr %496, align 8
  br label %605

605:                                              ; preds = %582, %578
  %606 = load i64, ptr %300, align 8
  %607 = trunc i64 %606 to i16
  switch i16 %607, label %631 [
    i16 36, label %608
    i16 34, label %608
    i16 32, label %608
  ]

608:                                              ; preds = %605, %605, %605
  %609 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %610 = load i64, ptr %496, align 8
  %611 = shl i64 %609, 28
  %612 = and i64 %611, 268435456
  %613 = and i64 %610, -268435457
  %614 = or disjoint i64 %613, %612
  store i64 %614, ptr %496, align 8
  %615 = load i64, ptr %300, align 8
  %616 = trunc i64 %615 to i16
  switch i16 %616, label %624 [
    i16 32, label %617
    i16 34, label %617
  ]

617:                                              ; preds = %608, %608
  %618 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %619 = load i64, ptr %496, align 8
  %620 = shl i64 %618, 26
  %621 = and i64 %620, 67108864
  %622 = and i64 %619, -67108865
  %623 = or disjoint i64 %622, %621
  store i64 %623, ptr %496, align 8
  br label %624

624:                                              ; preds = %617, %608
  %625 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %626 = load i64, ptr %496, align 8
  %627 = shl i64 %625, 29
  %628 = and i64 %627, 536870912
  %629 = and i64 %626, -536870913
  %630 = or disjoint i64 %629, %628
  store i64 %630, ptr %496, align 8
  br label %631

631:                                              ; preds = %624, %605, %490
  %632 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 11
  %633 = load i8, ptr %632, align 1, !tbaa !46
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %643, label %635

635:                                              ; preds = %631
  %636 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %637 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 2
  %638 = load i64, ptr %637, align 8
  %639 = shl i64 %636, 24
  %640 = and i64 %639, 16777216
  %641 = and i64 %638, -16777217
  %642 = or disjoint i64 %641, %640
  store i64 %642, ptr %637, align 8
  br label %643

643:                                              ; preds = %635, %631
  %644 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 13
  %645 = load i8, ptr %644, align 1, !tbaa !46
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %735, label %647

647:                                              ; preds = %643
  %648 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %649 = trunc i64 %648 to i32
  %650 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %300, i64 0, i32 4
  %651 = load i32, ptr %650, align 8
  %652 = and i32 %649, 1
  %653 = and i32 %651, -2
  %654 = or disjoint i32 %653, %652
  store i32 %654, ptr %650, align 8
  %655 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %656 = trunc i64 %655 to i32
  %657 = load i32, ptr %650, align 8
  %658 = shl i32 %656, 3
  %659 = and i32 %658, 8
  %660 = and i32 %657, -9
  %661 = or disjoint i32 %659, %660
  store i32 %661, ptr %650, align 8
  %662 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %663 = trunc i64 %662 to i32
  %664 = load i32, ptr %650, align 8
  %665 = shl i32 %663, 5
  %666 = and i32 %665, 32
  %667 = and i32 %664, -33
  %668 = or disjoint i32 %666, %667
  store i32 %668, ptr %650, align 8
  %669 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %670 = trunc i64 %669 to i32
  %671 = load i32, ptr %650, align 8
  %672 = shl i32 %670, 7
  %673 = and i32 %672, 128
  %674 = and i32 %671, -129
  %675 = or disjoint i32 %673, %674
  store i32 %675, ptr %650, align 8
  %676 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %677 = trunc i64 %676 to i32
  %678 = load i32, ptr %650, align 8
  %679 = shl i32 %677, 8
  %680 = and i32 %679, 256
  %681 = and i32 %678, -257
  %682 = or disjoint i32 %680, %681
  store i32 %682, ptr %650, align 8
  %683 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %684 = trunc i64 %683 to i32
  %685 = load i32, ptr %650, align 8
  %686 = shl i32 %684, 9
  %687 = and i32 %686, 512
  %688 = and i32 %685, -513
  %689 = or disjoint i32 %687, %688
  store i32 %689, ptr %650, align 8
  %690 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 2) #19
  %691 = trunc i64 %690 to i32
  %692 = load i32, ptr %650, align 8
  %693 = shl i32 %691, 10
  %694 = and i32 %693, 3072
  %695 = and i32 %692, -3073
  %696 = or disjoint i32 %694, %695
  store i32 %696, ptr %650, align 8
  %697 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %698 = trunc i64 %697 to i32
  %699 = load i32, ptr %650, align 8
  %700 = shl i32 %698, 12
  %701 = and i32 %700, 4096
  %702 = and i32 %699, -4097
  %703 = or disjoint i32 %701, %702
  store i32 %703, ptr %650, align 8
  %704 = load i64, ptr %300, align 8
  %705 = and i64 %704, 65535
  %706 = icmp eq i64 %705, 32
  br i1 %706, label %707, label %729

707:                                              ; preds = %647
  %708 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %709 = trunc i64 %708 to i32
  %710 = load i32, ptr %650, align 8
  %711 = shl i32 %709, 1
  %712 = and i32 %711, 2
  %713 = and i32 %710, -3
  %714 = or disjoint i32 %712, %713
  store i32 %714, ptr %650, align 8
  %715 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %716 = trunc i64 %715 to i32
  %717 = load i32, ptr %650, align 8
  %718 = shl i32 %716, 4
  %719 = and i32 %718, 16
  %720 = and i32 %717, -17
  %721 = or disjoint i32 %719, %720
  store i32 %721, ptr %650, align 8
  %722 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 3) #19
  %723 = trunc i64 %722 to i32
  %724 = load i32, ptr %650, align 8
  %725 = shl i32 %723, 13
  %726 = and i32 %725, 57344
  %727 = and i32 %724, -57345
  %728 = or disjoint i32 %726, %727
  store i32 %728, ptr %650, align 8
  br label %729

729:                                              ; preds = %707, %647
  %730 = load i64, ptr %300, align 8
  %731 = trunc i64 %730 to i16
  switch i16 %731, label %735 [
    i16 32, label %732
    i16 29, label %732
  ]

732:                                              ; preds = %729, %729
  %733 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 16) #19
  %734 = trunc i64 %733 to i16
  tail call void @decl_init_priority_insert(ptr noundef nonnull %300, i16 noundef zeroext %734) #19
  br label %735

735:                                              ; preds = %732, %729, %643
  %736 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 21
  %737 = load i8, ptr %736, align 1, !tbaa !46
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %866, label %739

739:                                              ; preds = %735
  %740 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 11) #19
  %741 = trunc i64 %740 to i32
  %742 = getelementptr inbounds %struct.tree_function_decl, ptr %300, i64 0, i32 5
  %743 = load i32, ptr %742, align 8
  %744 = and i32 %741, 2047
  %745 = and i32 %743, -2048
  %746 = or disjoint i32 %745, %744
  store i32 %746, ptr %742, align 8
  %747 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 2) #19
  %748 = trunc i64 %747 to i32
  %749 = load i32, ptr %742, align 8
  %750 = shl i32 %748, 11
  %751 = and i32 %750, 6144
  %752 = and i32 %749, -6145
  %753 = or disjoint i32 %751, %752
  store i32 %753, ptr %742, align 8
  %754 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %755 = trunc i64 %754 to i32
  %756 = load i32, ptr %742, align 8
  %757 = shl i32 %755, 13
  %758 = and i32 %757, 8192
  %759 = and i32 %756, -8193
  %760 = or disjoint i32 %758, %759
  store i32 %760, ptr %742, align 8
  %761 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %762 = trunc i64 %761 to i32
  %763 = load i32, ptr %742, align 8
  %764 = shl i32 %762, 14
  %765 = and i32 %764, 16384
  %766 = and i32 %763, -16385
  %767 = or disjoint i32 %765, %766
  store i32 %767, ptr %742, align 8
  %768 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %769 = trunc i64 %768 to i32
  %770 = load i32, ptr %742, align 8
  %771 = shl i32 %769, 15
  %772 = and i32 %771, 32768
  %773 = and i32 %770, -32769
  %774 = or disjoint i32 %772, %773
  store i32 %774, ptr %742, align 8
  %775 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %776 = trunc i64 %775 to i32
  %777 = load i32, ptr %742, align 8
  %778 = shl i32 %776, 16
  %779 = and i32 %778, 65536
  %780 = and i32 %777, -65537
  %781 = or disjoint i32 %779, %780
  store i32 %781, ptr %742, align 8
  %782 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %783 = trunc i64 %782 to i32
  %784 = load i32, ptr %742, align 8
  %785 = shl i32 %783, 17
  %786 = and i32 %785, 131072
  %787 = and i32 %784, -131073
  %788 = or disjoint i32 %786, %787
  store i32 %788, ptr %742, align 8
  %789 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %790 = trunc i64 %789 to i32
  %791 = load i32, ptr %742, align 8
  %792 = shl i32 %790, 18
  %793 = and i32 %792, 262144
  %794 = and i32 %791, -262145
  %795 = or disjoint i32 %793, %794
  store i32 %795, ptr %742, align 8
  %796 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %797 = trunc i64 %796 to i32
  %798 = load i32, ptr %742, align 8
  %799 = shl i32 %797, 19
  %800 = and i32 %799, 524288
  %801 = and i32 %798, -524289
  %802 = or disjoint i32 %800, %801
  store i32 %802, ptr %742, align 8
  %803 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %804 = trunc i64 %803 to i32
  %805 = load i32, ptr %742, align 8
  %806 = shl i32 %804, 20
  %807 = and i32 %806, 1048576
  %808 = and i32 %805, -1048577
  %809 = or disjoint i32 %807, %808
  store i32 %809, ptr %742, align 8
  %810 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %811 = trunc i64 %810 to i32
  %812 = load i32, ptr %742, align 8
  %813 = shl i32 %811, 21
  %814 = and i32 %813, 2097152
  %815 = and i32 %812, -2097153
  %816 = or disjoint i32 %814, %815
  store i32 %816, ptr %742, align 8
  %817 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %818 = trunc i64 %817 to i32
  %819 = load i32, ptr %742, align 8
  %820 = shl i32 %818, 22
  %821 = and i32 %820, 4194304
  %822 = and i32 %819, -4194305
  %823 = or disjoint i32 %821, %822
  store i32 %823, ptr %742, align 8
  %824 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %825 = trunc i64 %824 to i32
  %826 = load i32, ptr %742, align 8
  %827 = shl i32 %825, 23
  %828 = and i32 %827, 8388608
  %829 = and i32 %826, -8388609
  %830 = or disjoint i32 %828, %829
  store i32 %830, ptr %742, align 8
  %831 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %832 = trunc i64 %831 to i32
  %833 = load i32, ptr %742, align 8
  %834 = shl i32 %832, 24
  %835 = and i32 %834, 16777216
  %836 = and i32 %833, -16777217
  %837 = or disjoint i32 %835, %836
  store i32 %837, ptr %742, align 8
  %838 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %839 = trunc i64 %838 to i32
  %840 = load i32, ptr %742, align 8
  %841 = shl i32 %839, 25
  %842 = and i32 %841, 33554432
  %843 = and i32 %840, -33554433
  %844 = or disjoint i32 %842, %843
  store i32 %844, ptr %742, align 8
  %845 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %846 = trunc i64 %845 to i32
  %847 = load i32, ptr %742, align 8
  %848 = shl i32 %846, 26
  %849 = and i32 %848, 67108864
  %850 = and i32 %847, -67108865
  %851 = or disjoint i32 %849, %850
  store i32 %851, ptr %742, align 8
  %852 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %853 = trunc i64 %852 to i32
  %854 = load i32, ptr %742, align 8
  %855 = shl i32 %853, 27
  %856 = and i32 %855, 134217728
  %857 = and i32 %854, -134217729
  %858 = or disjoint i32 %856, %857
  store i32 %858, ptr %742, align 8
  %859 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %860 = trunc i64 %859 to i32
  %861 = load i32, ptr %742, align 8
  %862 = shl i32 %860, 28
  %863 = and i32 %862, 268435456
  %864 = and i32 %861, -268435457
  %865 = or disjoint i32 %863, %864
  store i32 %865, ptr %742, align 8
  br label %866

866:                                              ; preds = %739, %735
  %867 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 22
  %868 = load i8, ptr %867, align 2, !tbaa !46
  %869 = icmp eq i8 %868, 0
  br i1 %869, label %956, label %870

870:                                              ; preds = %866
  %871 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 9) #19
  %872 = trunc i64 %871 to i32
  %873 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 6
  %874 = load i32, ptr %873, align 4
  %875 = and i32 %872, 1023
  %876 = and i32 %874, -1024
  %877 = or disjoint i32 %876, %875
  store i32 %877, ptr %873, align 4
  %878 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 7) #19
  %879 = trunc i64 %878 to i32
  %880 = load i32, ptr %873, align 4
  %881 = shl i32 %879, 16
  %882 = and i32 %881, 16711680
  %883 = and i32 %880, -16711681
  %884 = or disjoint i32 %882, %883
  store i32 %884, ptr %873, align 4
  %885 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %886 = trunc i64 %885 to i32
  %887 = load i32, ptr %873, align 4
  %888 = shl i32 %886, 24
  %889 = and i32 %888, 16777216
  %890 = and i32 %887, -16777217
  %891 = or disjoint i32 %889, %890
  store i32 %891, ptr %873, align 4
  %892 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %893 = trunc i64 %892 to i32
  %894 = load i32, ptr %873, align 4
  %895 = shl i32 %893, 10
  %896 = and i32 %895, 1024
  %897 = and i32 %894, -1025
  %898 = or disjoint i32 %896, %897
  store i32 %898, ptr %873, align 4
  %899 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %900 = trunc i64 %899 to i32
  %901 = load i32, ptr %873, align 4
  %902 = shl i32 %900, 11
  %903 = and i32 %902, 2048
  %904 = and i32 %901, -2049
  %905 = or disjoint i32 %903, %904
  store i32 %905, ptr %873, align 4
  %906 = load i64, ptr %300, align 8
  %907 = and i64 %906, 65534
  %908 = icmp eq i64 %907, 16
  br i1 %908, label %909, label %917

909:                                              ; preds = %870
  %910 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %911 = trunc i64 %910 to i32
  %912 = load i32, ptr %873, align 4
  %913 = shl i32 %911, 12
  %914 = and i32 %913, 4096
  %915 = and i32 %912, -4097
  %916 = or disjoint i32 %914, %915
  store i32 %916, ptr %873, align 4
  br label %917

917:                                              ; preds = %909, %870
  %918 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %919 = load i64, ptr %300, align 8
  %920 = shl i64 %918, 41
  %921 = and i64 %920, 2199023255552
  %922 = and i64 %919, -2199023255553
  %923 = or disjoint i64 %922, %921
  store i64 %923, ptr %300, align 8
  %924 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %925 = trunc i64 %924 to i32
  %926 = load i32, ptr %873, align 4
  %927 = shl i32 %925, 13
  %928 = and i32 %927, 8192
  %929 = and i32 %926, -8193
  %930 = or disjoint i32 %928, %929
  store i32 %930, ptr %873, align 4
  %931 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 2) #19
  %932 = trunc i64 %931 to i32
  %933 = load i32, ptr %873, align 4
  %934 = shl i32 %932, 14
  %935 = and i32 %934, 49152
  %936 = and i32 %933, -49153
  %937 = or disjoint i32 %935, %936
  store i32 %937, ptr %873, align 4
  %938 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %939 = load i64, ptr %300, align 8
  %940 = shl i64 %938, 42
  %941 = and i64 %940, 4398046511104
  %942 = and i64 %939, -4398046511105
  %943 = or disjoint i64 %942, %941
  store i64 %943, ptr %300, align 8
  %944 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %945 = load i64, ptr %300, align 8
  %946 = shl i64 %944, 20
  %947 = and i64 %946, 1048576
  %948 = and i64 %945, -1048577
  %949 = or disjoint i64 %948, %947
  store i64 %949, ptr %300, align 8
  %950 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 32) #19
  %951 = trunc i64 %950 to i32
  %952 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 7
  store i32 %951, ptr %952, align 8, !tbaa !46
  %953 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 32) #19
  %954 = trunc i64 %953 to i32
  %955 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 8
  store i32 %954, ptr %955, align 4, !tbaa !46
  br label %956

956:                                              ; preds = %917, %866
  %957 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 27
  %958 = load i8, ptr %957, align 1, !tbaa !46
  %959 = icmp eq i8 %958, 0
  br i1 %959, label %974, label %960

960:                                              ; preds = %956
  %961 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 1) #19
  %962 = trunc i64 %961 to i32
  %963 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 1
  %964 = load i32, ptr %963, align 8
  %965 = and i32 %962, 1
  %966 = and i32 %964, -2
  %967 = or disjoint i32 %966, %965
  store i32 %967, ptr %963, align 8
  %968 = tail call i64 @bp_unpack_value(ptr noundef %301, i32 noundef 31) #19
  %969 = trunc i64 %968 to i32
  %970 = load i32, ptr %963, align 8
  %971 = shl i32 %969, 1
  %972 = and i32 %970, 1
  %973 = or disjoint i32 %972, %971
  store i32 %973, ptr %963, align 8
  br label %974

974:                                              ; preds = %960, %956
  %975 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 26
  %976 = load i8, ptr %975, align 2, !tbaa !46
  %977 = icmp eq i8 %976, 0
  br i1 %977, label %979, label %978

978:                                              ; preds = %974
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1836, ptr noundef nonnull @.str.1) #19
  br label %979

979:                                              ; preds = %978, %974
  %980 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 29
  %981 = load i8, ptr %980, align 1, !tbaa !46
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %984, label %983

983:                                              ; preds = %979
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1842, ptr noundef nonnull @.str.1) #19
  br label %984

984:                                              ; preds = %983, %979
  %985 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %306, i64 31
  %986 = load i8, ptr %985, align 1, !tbaa !46
  %987 = icmp eq i8 %986, 0
  br i1 %987, label %989, label %988

988:                                              ; preds = %984
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1848, ptr noundef nonnull @.str.1) #19
  br label %989

989:                                              ; preds = %984, %988
  tail call void @bitpack_delete(ptr noundef %301) #19
  %990 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 10
  %991 = load ptr, ptr %990, align 8, !tbaa !68
  %992 = tail call zeroext i8 @lto_streamer_cache_insert_at(ptr noundef %991, ptr noundef %300, i32 noundef %248) #19
  %993 = load i64, ptr %300, align 8
  %994 = and i64 %993, 65535
  %995 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 1
  %996 = load i8, ptr %995, align 1, !tbaa !46
  %997 = icmp eq i8 %996, 0
  br i1 %997, label %1001, label %998

998:                                              ; preds = %989
  %999 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1000 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 2
  store ptr %999, ptr %1000, align 8, !tbaa !46
  br label %1001

1001:                                             ; preds = %998, %989
  %1002 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 5
  %1003 = load i8, ptr %1002, align 1, !tbaa !46
  %1004 = icmp eq i8 %1003, 0
  br i1 %1004, label %1025, label %1005

1005:                                             ; preds = %1001
  %1006 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1007 = trunc i64 %1006 to i32
  %1008 = icmp sgt i32 %1007, 0
  br i1 %1008, label %1009, label %1022

1009:                                             ; preds = %1005, %1017
  %1010 = phi i32 [ %1020, %1017 ], [ 0, %1005 ]
  %1011 = phi ptr [ %1013, %1017 ], [ null, %1005 ]
  %1012 = phi ptr [ %1018, %1017 ], [ null, %1005 ]
  %1013 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1014 = icmp eq ptr %1011, null
  br i1 %1014, label %1017, label %1015

1015:                                             ; preds = %1009
  %1016 = getelementptr inbounds %struct.tree_common, ptr %1011, i64 0, i32 1
  store ptr %1013, ptr %1016, align 8, !tbaa !46
  br label %1017

1017:                                             ; preds = %1015, %1009
  %1018 = phi ptr [ %1012, %1015 ], [ %1013, %1009 ]
  %1019 = getelementptr inbounds %struct.tree_common, ptr %1013, i64 0, i32 1
  store ptr null, ptr %1019, align 8, !tbaa !46
  %1020 = add nuw nsw i32 %1010, 1
  %1021 = icmp eq i32 %1020, %1007
  br i1 %1021, label %1022, label %1009, !llvm.loop !241

1022:                                             ; preds = %1017, %1005
  %1023 = phi ptr [ null, %1005 ], [ %1018, %1017 ]
  %1024 = getelementptr inbounds %struct.tree_vector, ptr %300, i64 0, i32 1
  store ptr %1023, ptr %1024, align 8, !tbaa !46
  br label %1025

1025:                                             ; preds = %1022, %1001
  %1026 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 7
  %1027 = load i8, ptr %1026, align 1, !tbaa !46
  %1028 = icmp eq i8 %1027, 0
  br i1 %1028, label %1034, label %1029

1029:                                             ; preds = %1025
  %1030 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1031 = getelementptr inbounds %struct.tree_complex, ptr %300, i64 0, i32 1
  store ptr %1030, ptr %1031, align 8, !tbaa !46
  %1032 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1033 = getelementptr inbounds %struct.tree_complex, ptr %300, i64 0, i32 2
  store ptr %1032, ptr %1033, align 8, !tbaa !46
  br label %1034

1034:                                             ; preds = %1029, %1025
  %1035 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 9
  %1036 = load i8, ptr %1035, align 1, !tbaa !46
  %1037 = icmp eq i8 %1036, 0
  br i1 %1037, label %1045, label %1038

1038:                                             ; preds = %1034
  %1039 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1040 = getelementptr inbounds %struct.tree_decl_minimal, ptr %300, i64 0, i32 3
  store ptr %1039, ptr %1040, align 8, !tbaa !46
  %1041 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1042 = getelementptr inbounds %struct.tree_decl_minimal, ptr %300, i64 0, i32 4
  store ptr %1041, ptr %1042, align 8, !tbaa !46
  %1043 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1)
  %1044 = getelementptr inbounds %struct.tree_decl_minimal, ptr %300, i64 0, i32 1
  store i32 %1043, ptr %1044, align 8, !tbaa !46
  br label %1045

1045:                                             ; preds = %1038, %1034
  %1046 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 10
  %1047 = load i8, ptr %1046, align 2, !tbaa !46
  %1048 = icmp eq i8 %1047, 0
  br i1 %1048, label %1098, label %1049

1049:                                             ; preds = %1045
  %1050 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1051 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 1
  store ptr %1050, ptr %1051, align 8, !tbaa !46
  %1052 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1053 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 4
  store ptr %1052, ptr %1053, align 8, !tbaa !46
  %1054 = load i64, ptr %300, align 8
  %1055 = and i64 %1054, 65535
  %1056 = icmp eq i64 %1055, 29
  br i1 %1056, label %1060, label %1057

1057:                                             ; preds = %1049
  %1058 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1059 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 5
  store ptr %1058, ptr %1059, align 8, !tbaa !46
  br label %1060

1060:                                             ; preds = %1057, %1049
  %1061 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1062 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 6
  store ptr %1061, ptr %1062, align 8, !tbaa !46
  %1063 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1064 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 7
  store ptr %1063, ptr %1064, align 8, !tbaa !46
  %1065 = load i64, ptr %300, align 8
  %1066 = and i64 %1065, 65535
  %1067 = icmp eq i64 %1066, 34
  br i1 %1067, label %1068, label %1088

1068:                                             ; preds = %1060
  %1069 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1070 = trunc i64 %1069 to i32
  %1071 = icmp sgt i32 %1070, 0
  br i1 %1071, label %1072, label %1085

1072:                                             ; preds = %1068, %1080
  %1073 = phi i32 [ %1083, %1080 ], [ 0, %1068 ]
  %1074 = phi ptr [ %1076, %1080 ], [ null, %1068 ]
  %1075 = phi ptr [ %1081, %1080 ], [ null, %1068 ]
  %1076 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1077 = icmp eq ptr %1074, null
  br i1 %1077, label %1080, label %1078

1078:                                             ; preds = %1072
  %1079 = getelementptr inbounds %struct.tree_common, ptr %1074, i64 0, i32 1
  store ptr %1076, ptr %1079, align 8, !tbaa !46
  br label %1080

1080:                                             ; preds = %1078, %1072
  %1081 = phi ptr [ %1075, %1078 ], [ %1076, %1072 ]
  %1082 = getelementptr inbounds %struct.tree_common, ptr %1076, i64 0, i32 1
  store ptr null, ptr %1082, align 8, !tbaa !46
  %1083 = add nuw nsw i32 %1073, 1
  %1084 = icmp eq i32 %1083, %1070
  br i1 %1084, label %1085, label %1072, !llvm.loop !241

1085:                                             ; preds = %1080, %1068
  %1086 = phi ptr [ null, %1068 ], [ %1081, %1080 ]
  %1087 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 1
  store ptr %1086, ptr %1087, align 8, !tbaa !46
  br label %1088

1088:                                             ; preds = %1085, %1060
  %1089 = load i64, ptr %300, align 8
  %1090 = trunc i64 %1089 to i16
  switch i16 %1090, label %1098 [
    i16 32, label %1091
    i16 34, label %1091
  ]

1091:                                             ; preds = %1088, %1088
  %1092 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 2
  %1093 = load i64, ptr %1092, align 8
  %1094 = and i64 %1093, 67108864
  %1095 = icmp eq i64 %1094, 0
  br i1 %1095, label %1098, label %1096

1096:                                             ; preds = %1091
  %1097 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  tail call void @decl_value_expr_insert(ptr noundef nonnull %300, ptr noundef %1097) #19
  br label %1098

1098:                                             ; preds = %1091, %1088, %1096, %1045
  %1099 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 12
  %1100 = load i8, ptr %1099, align 4, !tbaa !46
  %1101 = icmp eq i8 %1100, 0
  br i1 %1101, label %1114, label %1102

1102:                                             ; preds = %1098
  %1103 = load i64, ptr %300, align 8
  %1104 = and i64 %1103, 65535
  %1105 = icmp eq i64 %1104, 29
  br i1 %1105, label %1106, label %1111

1106:                                             ; preds = %1102
  %1107 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1108 = getelementptr inbounds %struct.tree_decl_non_common, ptr %300, i64 0, i32 2
  store ptr %1107, ptr %1108, align 8, !tbaa !46
  %1109 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1110 = getelementptr inbounds %struct.tree_decl_non_common, ptr %300, i64 0, i32 3
  store ptr %1109, ptr %1110, align 8, !tbaa !46
  br label %1111

1111:                                             ; preds = %1106, %1102
  %1112 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1113 = getelementptr inbounds %struct.tree_decl_non_common, ptr %300, i64 0, i32 4
  store ptr %1112, ptr %1113, align 8, !tbaa !46
  br label %1114

1114:                                             ; preds = %1111, %1098
  %1115 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 13
  %1116 = load i8, ptr %1115, align 1, !tbaa !46
  %1117 = icmp eq i8 %1116, 0
  br i1 %1117, label %1133, label %1118

1118:                                             ; preds = %1114
  %1119 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1128, label %1121

1121:                                             ; preds = %1118
  %1122 = load i64, ptr %1119, align 8
  %1123 = and i64 %1122, 65535
  %1124 = icmp eq i64 %1123, 1
  br i1 %1124, label %1126, label %1125

1125:                                             ; preds = %1121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2104, ptr noundef nonnull @.str.1) #19
  br label %1126

1126:                                             ; preds = %1125, %1121
  %1127 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %300, i64 0, i32 1
  store ptr %1119, ptr %1127, align 8, !tbaa !46
  br label %1128

1128:                                             ; preds = %1126, %1118
  %1129 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1130 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %300, i64 0, i32 2
  store ptr %1129, ptr %1130, align 8, !tbaa !46
  %1131 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1132 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %300, i64 0, i32 3
  store ptr %1131, ptr %1132, align 8, !tbaa !46
  br label %1133

1133:                                             ; preds = %1128, %1114
  %1134 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 14
  %1135 = load i8, ptr %1134, align 2, !tbaa !46
  %1136 = icmp eq i8 %1135, 0
  br i1 %1136, label %1167, label %1137

1137:                                             ; preds = %1133
  %1138 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1139 = getelementptr inbounds %struct.tree_field_decl, ptr %300, i64 0, i32 1
  store ptr %1138, ptr %1139, align 8, !tbaa !46
  %1140 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1141 = getelementptr inbounds %struct.tree_field_decl, ptr %300, i64 0, i32 2
  store ptr %1140, ptr %1141, align 8, !tbaa !46
  %1142 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1143 = getelementptr inbounds %struct.tree_field_decl, ptr %300, i64 0, i32 3
  store ptr %1142, ptr %1143, align 8, !tbaa !46
  %1144 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1145 = getelementptr inbounds %struct.tree_field_decl, ptr %300, i64 0, i32 4
  store ptr %1144, ptr %1145, align 8, !tbaa !46
  %1146 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1147 = getelementptr inbounds %struct.tree_field_decl, ptr %300, i64 0, i32 5
  store ptr %1146, ptr %1147, align 8, !tbaa !46
  %1148 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1149 = trunc i64 %1148 to i32
  %1150 = icmp sgt i32 %1149, 0
  br i1 %1150, label %1151, label %1164

1151:                                             ; preds = %1137, %1159
  %1152 = phi i32 [ %1162, %1159 ], [ 0, %1137 ]
  %1153 = phi ptr [ %1155, %1159 ], [ null, %1137 ]
  %1154 = phi ptr [ %1160, %1159 ], [ null, %1137 ]
  %1155 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1156 = icmp eq ptr %1153, null
  br i1 %1156, label %1159, label %1157

1157:                                             ; preds = %1151
  %1158 = getelementptr inbounds %struct.tree_common, ptr %1153, i64 0, i32 1
  store ptr %1155, ptr %1158, align 8, !tbaa !46
  br label %1159

1159:                                             ; preds = %1157, %1151
  %1160 = phi ptr [ %1154, %1157 ], [ %1155, %1151 ]
  %1161 = getelementptr inbounds %struct.tree_common, ptr %1155, i64 0, i32 1
  store ptr null, ptr %1161, align 8, !tbaa !46
  %1162 = add nuw nsw i32 %1152, 1
  %1163 = icmp eq i32 %1162, %1149
  br i1 %1163, label %1164, label %1151, !llvm.loop !241

1164:                                             ; preds = %1159, %1137
  %1165 = phi ptr [ null, %1137 ], [ %1160, %1159 ]
  %1166 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 1
  store ptr %1165, ptr %1166, align 8, !tbaa !46
  br label %1167

1167:                                             ; preds = %1164, %1133
  %1168 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 21
  %1169 = load i8, ptr %1168, align 1, !tbaa !46
  %1170 = icmp eq i8 %1169, 0
  br i1 %1170, label %1181, label %1171

1171:                                             ; preds = %1167
  %1172 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1173 = getelementptr inbounds %struct.tree_function_decl, ptr %300, i64 0, i32 2
  store ptr %1172, ptr %1173, align 8, !tbaa !46
  %1174 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1175 = getelementptr inbounds %struct.tree_function_decl, ptr %300, i64 0, i32 3
  store ptr %1174, ptr %1175, align 8, !tbaa !46
  %1176 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1177 = getelementptr inbounds %struct.tree_function_decl, ptr %300, i64 0, i32 4
  store ptr %1176, ptr %1177, align 8, !tbaa !46
  %1178 = load ptr, ptr %1173, align 8, !tbaa !46
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1181, label %1180

1180:                                             ; preds = %1171
  tail call fastcc void @lto_init_eh()
  br label %1181

1181:                                             ; preds = %1171, %1180, %1167
  %1182 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 22
  %1183 = load i8, ptr %1182, align 2, !tbaa !46
  %1184 = icmp eq i8 %1183, 0
  br i1 %1184, label %1225, label %1185

1185:                                             ; preds = %1181
  %1186 = load i64, ptr %300, align 8
  %1187 = trunc i64 %1186 to i16
  switch i16 %1187, label %1191 [
    i16 6, label %1188
    i16 15, label %1188
    i16 16, label %1188
    i16 17, label %1188
    i16 20, label %1188
    i16 21, label %1188
    i16 14, label %1188
  ]

1188:                                             ; preds = %1185, %1185, %1185, %1185, %1185, %1185, %1185
  %1189 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1190 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 1
  store ptr %1189, ptr %1190, align 8, !tbaa !46
  br label %1191

1191:                                             ; preds = %1188, %1185
  %1192 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1193 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 2
  store ptr %1192, ptr %1193, align 8, !tbaa !46
  %1194 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1195 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 3
  store ptr %1194, ptr %1195, align 8, !tbaa !46
  %1196 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1197 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 4
  store ptr %1196, ptr %1197, align 8, !tbaa !46
  %1198 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1199 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 12
  store ptr %1198, ptr %1199, align 8, !tbaa !46
  %1200 = load i64, ptr %300, align 8
  %1201 = trunc i64 %1200 to i16
  switch i16 %1201, label %1202 [
    i16 10, label %1205
    i16 12, label %1205
  ]

1202:                                             ; preds = %1191
  %1203 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1204 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 13
  store ptr %1203, ptr %1204, align 8, !tbaa !46
  br label %1205

1205:                                             ; preds = %1191, %1202, %1191
  %1206 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1207 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 14
  store ptr %1206, ptr %1207, align 8, !tbaa !46
  %1208 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1209 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 16
  store ptr %1208, ptr %1209, align 8, !tbaa !46
  %1210 = load i64, ptr %300, align 8
  %1211 = trunc i64 %1210 to i32
  %1212 = and i32 %1211, 65535
  %1213 = add nsw i32 %1212, -16
  %1214 = icmp ult i32 %1213, 3
  br i1 %1214, label %1215, label %1218

1215:                                             ; preds = %1205
  %1216 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1217 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 17
  store ptr %1216, ptr %1217, align 8, !tbaa !46
  br label %1218

1218:                                             ; preds = %1215, %1205
  %1219 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1220 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 18
  store ptr %1219, ptr %1220, align 8, !tbaa !46
  %1221 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1222 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 19
  store ptr %1221, ptr %1222, align 8, !tbaa !46
  %1223 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1224 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 1
  store ptr %1223, ptr %1224, align 8, !tbaa !46
  br label %1225

1225:                                             ; preds = %1218, %1181
  %1226 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 23
  %1227 = load i8, ptr %1226, align 1, !tbaa !46
  %1228 = icmp eq i8 %1227, 0
  br i1 %1228, label %1253, label %1229

1229:                                             ; preds = %1225
  %1230 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1231 = getelementptr inbounds %struct.tree_list, ptr %300, i64 0, i32 1
  store ptr %1230, ptr %1231, align 8, !tbaa !46
  %1232 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1233 = getelementptr inbounds %struct.tree_list, ptr %300, i64 0, i32 2
  store ptr %1232, ptr %1233, align 8, !tbaa !46
  %1234 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1235 = trunc i64 %1234 to i32
  %1236 = icmp sgt i32 %1235, 0
  br i1 %1236, label %1237, label %1250

1237:                                             ; preds = %1229, %1245
  %1238 = phi i32 [ %1248, %1245 ], [ 0, %1229 ]
  %1239 = phi ptr [ %1241, %1245 ], [ null, %1229 ]
  %1240 = phi ptr [ %1246, %1245 ], [ null, %1229 ]
  %1241 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1242 = icmp eq ptr %1239, null
  br i1 %1242, label %1245, label %1243

1243:                                             ; preds = %1237
  %1244 = getelementptr inbounds %struct.tree_common, ptr %1239, i64 0, i32 1
  store ptr %1241, ptr %1244, align 8, !tbaa !46
  br label %1245

1245:                                             ; preds = %1243, %1237
  %1246 = phi ptr [ %1240, %1243 ], [ %1241, %1237 ]
  %1247 = getelementptr inbounds %struct.tree_common, ptr %1241, i64 0, i32 1
  store ptr null, ptr %1247, align 8, !tbaa !46
  %1248 = add nuw nsw i32 %1238, 1
  %1249 = icmp eq i32 %1248, %1235
  br i1 %1249, label %1250, label %1237, !llvm.loop !241

1250:                                             ; preds = %1245, %1229
  %1251 = phi ptr [ null, %1229 ], [ %1246, %1245 ]
  %1252 = getelementptr inbounds %struct.tree_common, ptr %300, i64 0, i32 1
  store ptr %1251, ptr %1252, align 8, !tbaa !46
  br label %1253

1253:                                             ; preds = %1250, %1225
  %1254 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 24
  %1255 = load i8, ptr %1254, align 8, !tbaa !46
  %1256 = icmp eq i8 %1255, 0
  br i1 %1256, label %1269, label %1257

1257:                                             ; preds = %1253
  %1258 = getelementptr inbounds %struct.tree_vec, ptr %300, i64 0, i32 1
  %1259 = load i32, ptr %1258, align 8, !tbaa !46
  %1260 = icmp sgt i32 %1259, 0
  br i1 %1260, label %1261, label %1269

1261:                                             ; preds = %1257, %1261
  %1262 = phi i64 [ %1265, %1261 ], [ 0, %1257 ]
  %1263 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1264 = getelementptr inbounds %struct.tree_vec, ptr %300, i64 0, i32 2, i64 %1262
  store ptr %1263, ptr %1264, align 8, !tbaa !46
  %1265 = add nuw nsw i64 %1262, 1
  %1266 = load i32, ptr %1258, align 8, !tbaa !46
  %1267 = sext i32 %1266 to i64
  %1268 = icmp slt i64 %1265, %1267
  br i1 %1268, label %1261, label %1269, !llvm.loop !242

1269:                                             ; preds = %1261, %1257, %1253
  %1270 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 25
  %1271 = load i8, ptr %1270, align 1, !tbaa !46
  %1272 = icmp eq i8 %1271, 0
  br i1 %1272, label %1310, label %1273

1273:                                             ; preds = %1269
  %1274 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1275 = trunc i64 %1274 to i32
  %1276 = load i64, ptr %300, align 8
  %1277 = and i64 %1276, 65535
  %1278 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1277
  %1279 = load i32, ptr %1278, align 4, !tbaa !50
  %1280 = icmp eq i32 %1279, 9
  br i1 %1280, label %1281, label %1287

1281:                                             ; preds = %1273
  %1282 = getelementptr inbounds %struct.tree_exp, ptr %300, i64 0, i32 3
  %1283 = load ptr, ptr %1282, align 8, !tbaa !46
  %1284 = getelementptr inbounds %struct.tree_int_cst, ptr %1283, i64 0, i32 1
  %1285 = load i64, ptr %1284, align 8, !tbaa !46
  %1286 = trunc i64 %1285 to i32
  br label %1291

1287:                                             ; preds = %1273
  %1288 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %1277
  %1289 = load i8, ptr %1288, align 1, !tbaa !46
  %1290 = zext i8 %1289 to i32
  br label %1291

1291:                                             ; preds = %1281, %1287
  %1292 = phi i32 [ %1286, %1281 ], [ %1290, %1287 ]
  %1293 = icmp eq i32 %1292, %1275
  br i1 %1293, label %1295, label %1294

1294:                                             ; preds = %1291
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2235, ptr noundef nonnull @.str.1) #19
  br label %1295

1295:                                             ; preds = %1294, %1291
  %1296 = icmp sgt i32 %1275, 0
  br i1 %1296, label %1297, label %1305

1297:                                             ; preds = %1295
  %1298 = and i64 %1274, 4294967295
  br label %1299

1299:                                             ; preds = %1297, %1299
  %1300 = phi i64 [ 0, %1297 ], [ %1303, %1299 ]
  %1301 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1302 = getelementptr inbounds %struct.tree_exp, ptr %300, i64 0, i32 3, i64 %1300
  store ptr %1301, ptr %1302, align 8, !tbaa !46
  %1303 = add nuw nsw i64 %1300, 1
  %1304 = icmp eq i64 %1303, %1298
  br i1 %1304, label %1305, label %1299, !llvm.loop !243

1305:                                             ; preds = %1299, %1295
  %1306 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1)
  %1307 = getelementptr inbounds %struct.tree_exp, ptr %300, i64 0, i32 1
  store i32 %1306, ptr %1307, align 8, !tbaa !46
  %1308 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1309 = tail call ptr @tree_block(ptr noundef nonnull %300) #19
  store ptr %1308, ptr %1309, align 8, !tbaa !35
  br label %1310

1310:                                             ; preds = %1305, %1269
  %1311 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 26
  %1312 = load i8, ptr %1311, align 2, !tbaa !46
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1315, label %1314

1314:                                             ; preds = %1310
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2392, ptr noundef nonnull @.str.1) #19
  br label %1315

1315:                                             ; preds = %1314, %1310
  %1316 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 27
  %1317 = load i8, ptr %1316, align 1, !tbaa !46
  %1318 = icmp eq i8 %1317, 0
  br i1 %1318, label %1394, label %1319

1319:                                             ; preds = %1315
  %1320 = tail call fastcc i32 @lto_input_location(ptr noundef %0, ptr noundef %1)
  %1321 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 2
  store i32 %1320, ptr %1321, align 4, !tbaa !46
  %1322 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1323 = trunc i64 %1322 to i32
  %1324 = icmp sgt i32 %1323, 0
  br i1 %1324, label %1325, label %1338

1325:                                             ; preds = %1319, %1333
  %1326 = phi i32 [ %1336, %1333 ], [ 0, %1319 ]
  %1327 = phi ptr [ %1329, %1333 ], [ null, %1319 ]
  %1328 = phi ptr [ %1334, %1333 ], [ null, %1319 ]
  %1329 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1330 = icmp eq ptr %1327, null
  br i1 %1330, label %1333, label %1331

1331:                                             ; preds = %1325
  %1332 = getelementptr inbounds %struct.tree_common, ptr %1327, i64 0, i32 1
  store ptr %1329, ptr %1332, align 8, !tbaa !46
  br label %1333

1333:                                             ; preds = %1331, %1325
  %1334 = phi ptr [ %1328, %1331 ], [ %1329, %1325 ]
  %1335 = getelementptr inbounds %struct.tree_common, ptr %1329, i64 0, i32 1
  store ptr null, ptr %1335, align 8, !tbaa !46
  %1336 = add nuw nsw i32 %1326, 1
  %1337 = icmp eq i32 %1336, %1323
  br i1 %1337, label %1338, label %1325, !llvm.loop !241

1338:                                             ; preds = %1333, %1319
  %1339 = phi ptr [ null, %1319 ], [ %1334, %1333 ]
  %1340 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 3
  store ptr %1339, ptr %1340, align 8, !tbaa !46
  %1341 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %1342 = trunc i64 %1341 to i32
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1366, label %1344

1344:                                             ; preds = %1338
  %1345 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 4
  br label %1346

1346:                                             ; preds = %1344, %1358
  %1347 = phi i32 [ 0, %1344 ], [ %1364, %1358 ]
  %1348 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1349 = load ptr, ptr %1345, align 8, !tbaa !35
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %1356, label %1351

1351:                                             ; preds = %1346
  %1352 = getelementptr inbounds %struct.VEC_tree_base, ptr %1349, i64 0, i32 1
  %1353 = load i32, ptr %1352, align 4, !tbaa !141
  %1354 = load i32, ptr %1349, align 8, !tbaa !104
  %1355 = icmp eq i32 %1353, %1354
  br i1 %1355, label %1356, label %1358

1356:                                             ; preds = %1346, %1351
  %1357 = tail call ptr @vec_gc_p_reserve(ptr noundef %1349, i32 noundef 1) #19
  store ptr %1357, ptr %1345, align 8, !tbaa !35
  br label %1358

1358:                                             ; preds = %1351, %1356
  %1359 = load ptr, ptr %1345, align 8, !tbaa !35
  %1360 = load i32, ptr %1359, align 8, !tbaa !104
  %1361 = add i32 %1360, 1
  store i32 %1361, ptr %1359, align 8, !tbaa !104
  %1362 = zext i32 %1360 to i64
  %1363 = getelementptr inbounds %struct.VEC_tree_base, ptr %1359, i64 0, i32 2, i64 %1362
  store ptr %1348, ptr %1363, align 8, !tbaa !35
  %1364 = add nuw i32 %1347, 1
  %1365 = icmp eq i32 %1364, %1342
  br i1 %1365, label %1366, label %1346, !llvm.loop !244

1366:                                             ; preds = %1358, %1338
  %1367 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1368 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 6
  store ptr %1367, ptr %1368, align 8, !tbaa !46
  %1369 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1370 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 7
  store ptr %1369, ptr %1370, align 8, !tbaa !46
  %1371 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1372 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 8
  store ptr %1371, ptr %1372, align 8, !tbaa !46
  %1373 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1374 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 9
  store ptr %1373, ptr %1374, align 8, !tbaa !46
  %1375 = tail call i64 @lto_input_sleb128(ptr noundef %0) #19
  %1376 = trunc i64 %1375 to i32
  %1377 = icmp sgt i32 %1376, 0
  br i1 %1377, label %1378, label %1391

1378:                                             ; preds = %1366, %1386
  %1379 = phi i32 [ %1389, %1386 ], [ 0, %1366 ]
  %1380 = phi ptr [ %1382, %1386 ], [ null, %1366 ]
  %1381 = phi ptr [ %1387, %1386 ], [ null, %1366 ]
  %1382 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1383 = icmp eq ptr %1380, null
  br i1 %1383, label %1386, label %1384

1384:                                             ; preds = %1378
  %1385 = getelementptr inbounds %struct.tree_common, ptr %1380, i64 0, i32 1
  store ptr %1382, ptr %1385, align 8, !tbaa !46
  br label %1386

1386:                                             ; preds = %1384, %1378
  %1387 = phi ptr [ %1381, %1384 ], [ %1382, %1378 ]
  %1388 = getelementptr inbounds %struct.tree_common, ptr %1382, i64 0, i32 1
  store ptr null, ptr %1388, align 8, !tbaa !46
  %1389 = add nuw nsw i32 %1379, 1
  %1390 = icmp eq i32 %1389, %1376
  br i1 %1390, label %1391, label %1378, !llvm.loop !241

1391:                                             ; preds = %1386, %1366
  %1392 = phi ptr [ null, %1366 ], [ %1387, %1386 ]
  %1393 = getelementptr inbounds %struct.tree_block, ptr %300, i64 0, i32 5
  store ptr %1392, ptr %1393, align 8, !tbaa !46
  br label %1394

1394:                                             ; preds = %1391, %1315
  %1395 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 28
  %1396 = load i8, ptr %1395, align 4, !tbaa !46
  %1397 = icmp eq i8 %1396, 0
  br i1 %1397, label %1452, label %1398

1398:                                             ; preds = %1394
  %1399 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1411, label %1401

1401:                                             ; preds = %1398
  %1402 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 9
  br label %1403

1403:                                             ; preds = %1401, %1403
  %1404 = phi ptr [ %1399, %1401 ], [ %1409, %1403 ]
  %1405 = load i32, ptr %1402, align 8, !tbaa !104
  %1406 = add i32 %1405, 1
  store i32 %1406, ptr %1402, align 8, !tbaa !104
  %1407 = zext i32 %1405 to i64
  %1408 = getelementptr inbounds %struct.VEC_tree_base, ptr %1402, i64 0, i32 2, i64 %1407
  store ptr %1404, ptr %1408, align 8, !tbaa !35
  %1409 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1410 = icmp eq ptr %1409, null
  br i1 %1410, label %1411, label %1403, !llvm.loop !245

1411:                                             ; preds = %1403, %1398
  %1412 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1413 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 1
  store ptr %1412, ptr %1413, align 8, !tbaa !46
  %1414 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1415 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 2
  store ptr %1414, ptr %1415, align 8, !tbaa !46
  %1416 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1417 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 3
  store ptr %1416, ptr %1417, align 8, !tbaa !46
  %1418 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1419 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 4
  store ptr %1418, ptr %1419, align 8, !tbaa !46
  %1420 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %1421 = trunc i64 %1420 to i32
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1445, label %1423

1423:                                             ; preds = %1411
  %1424 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 5
  br label %1425

1425:                                             ; preds = %1423, %1437
  %1426 = phi i32 [ 0, %1423 ], [ %1443, %1437 ]
  %1427 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1428 = load ptr, ptr %1424, align 8, !tbaa !35
  %1429 = icmp eq ptr %1428, null
  br i1 %1429, label %1435, label %1430

1430:                                             ; preds = %1425
  %1431 = getelementptr inbounds %struct.VEC_tree_base, ptr %1428, i64 0, i32 1
  %1432 = load i32, ptr %1431, align 4, !tbaa !141
  %1433 = load i32, ptr %1428, align 8, !tbaa !104
  %1434 = icmp eq i32 %1432, %1433
  br i1 %1434, label %1435, label %1437

1435:                                             ; preds = %1425, %1430
  %1436 = tail call ptr @vec_gc_p_reserve(ptr noundef %1428, i32 noundef 1) #19
  store ptr %1436, ptr %1424, align 8, !tbaa !35
  br label %1437

1437:                                             ; preds = %1430, %1435
  %1438 = load ptr, ptr %1424, align 8, !tbaa !35
  %1439 = load i32, ptr %1438, align 8, !tbaa !104
  %1440 = add i32 %1439, 1
  store i32 %1440, ptr %1438, align 8, !tbaa !104
  %1441 = zext i32 %1439 to i64
  %1442 = getelementptr inbounds %struct.VEC_tree_base, ptr %1438, i64 0, i32 2, i64 %1441
  store ptr %1427, ptr %1442, align 8, !tbaa !35
  %1443 = add nuw i32 %1426, 1
  %1444 = icmp eq i32 %1443, %1421
  br i1 %1444, label %1445, label %1425, !llvm.loop !246

1445:                                             ; preds = %1437, %1411
  %1446 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1447 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 6
  store ptr %1446, ptr %1447, align 8, !tbaa !46
  %1448 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1449 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 7
  store ptr %1448, ptr %1449, align 8, !tbaa !46
  %1450 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1451 = getelementptr inbounds %struct.tree_binfo, ptr %300, i64 0, i32 8
  store ptr %1450, ptr %1451, align 8, !tbaa !46
  br label %1452

1452:                                             ; preds = %1445, %1394
  %1453 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 29
  %1454 = load i8, ptr %1453, align 1, !tbaa !46
  %1455 = icmp eq i8 %1454, 0
  br i1 %1455, label %1457, label %1456

1456:                                             ; preds = %1452
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2404, ptr noundef nonnull @.str.1) #19
  br label %1457

1457:                                             ; preds = %1456, %1452
  %1458 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 30
  %1459 = load i8, ptr %1458, align 2, !tbaa !46
  %1460 = icmp eq i8 %1459, 0
  br i1 %1460, label %1489, label %1461

1461:                                             ; preds = %1457
  %1462 = tail call i64 @lto_input_uleb128(ptr noundef %0) #19
  %1463 = trunc i64 %1462 to i32
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1489, label %1465

1465:                                             ; preds = %1461
  %1466 = getelementptr inbounds %struct.tree_constructor, ptr %300, i64 0, i32 1
  br label %1467

1467:                                             ; preds = %1465, %1480
  %1468 = phi i32 [ 0, %1465 ], [ %1487, %1480 ]
  %1469 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1470 = tail call ptr @lto_input_tree(ptr noundef %0, ptr noundef %1)
  %1471 = load ptr, ptr %1466, align 8, !tbaa !35
  %1472 = icmp eq ptr %1471, null
  br i1 %1472, label %1478, label %1473

1473:                                             ; preds = %1467
  %1474 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1471, i64 0, i32 1
  %1475 = load i32, ptr %1474, align 4, !tbaa !247
  %1476 = load i32, ptr %1471, align 8, !tbaa !249
  %1477 = icmp eq i32 %1475, %1476
  br i1 %1477, label %1478, label %1480

1478:                                             ; preds = %1467, %1473
  %1479 = tail call ptr @vec_gc_o_reserve(ptr noundef %1471, i32 noundef 1, i64 noundef 8, i64 noundef 16) #19
  store ptr %1479, ptr %1466, align 8, !tbaa !35
  br label %1480

1480:                                             ; preds = %1473, %1478
  %1481 = load ptr, ptr %1466, align 8, !tbaa !35
  %1482 = load i32, ptr %1481, align 8, !tbaa !249
  %1483 = add i32 %1482, 1
  store i32 %1483, ptr %1481, align 8, !tbaa !249
  %1484 = zext i32 %1482 to i64
  %1485 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1481, i64 0, i32 2, i64 %1484
  store ptr %1469, ptr %1485, align 8, !tbaa !250
  %1486 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1481, i64 0, i32 2, i64 %1484, i32 1
  store ptr %1470, ptr %1486, align 8, !tbaa !252
  %1487 = add nuw i32 %1468, 1
  %1488 = icmp eq i32 %1487, %1463
  br i1 %1488, label %1489, label %1467, !llvm.loop !253

1489:                                             ; preds = %1480, %1461, %1457
  %1490 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 31
  %1491 = load i8, ptr %1490, align 1, !tbaa !46
  %1492 = icmp eq i8 %1491, 0
  br i1 %1492, label %1494, label %1493

1493:                                             ; preds = %1489
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2413, ptr noundef nonnull @.str.1) #19
  br label %1494

1494:                                             ; preds = %1493, %1489
  %1495 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 32
  %1496 = load i8, ptr %1495, align 16, !tbaa !46
  %1497 = icmp eq i8 %1496, 0
  br i1 %1497, label %1499, label %1498

1498:                                             ; preds = %1494
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.13) #19
  br label %1499

1499:                                             ; preds = %1498, %1494
  %1500 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %994, i64 33
  %1501 = load i8, ptr %1500, align 1, !tbaa !46
  %1502 = icmp eq i8 %1501, 0
  br i1 %1502, label %1504, label %1503

1503:                                             ; preds = %1499
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.14) #19
  br label %1504

1504:                                             ; preds = %1499, %1503
  %1505 = load i64, ptr %300, align 8
  %1506 = and i64 %1505, 65535
  %1507 = icmp eq i64 %1506, 29
  br i1 %1507, label %1508, label %1519

1508:                                             ; preds = %1504
  %1509 = getelementptr inbounds %struct.tree_decl_minimal, ptr %300, i64 0, i32 1
  %1510 = load i32, ptr %1509, align 8, !tbaa !46
  %1511 = icmp ult i32 %1510, 2
  br i1 %1511, label %1512, label %1519

1512:                                             ; preds = %1508
  %1513 = getelementptr inbounds %struct.tree_function_decl, ptr %300, i64 0, i32 5
  %1514 = load i32, ptr %1513, align 8
  %1515 = lshr i32 %1514, 11
  %1516 = or i32 %1515, -4
  %1517 = icmp ult i32 %1516, -2
  br i1 %1517, label %1519, label %1518

1518:                                             ; preds = %1512
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2642, ptr noundef nonnull @.str.1) #19
  br label %1519

1519:                                             ; preds = %1508, %1518, %1512, %1504
  %1520 = load i64, ptr %300, align 8
  %1521 = trunc i64 %1520 to i16
  switch i16 %1521, label %1529 [
    i16 32, label %1522
    i16 29, label %1523
  ]

1522:                                             ; preds = %1519
  tail call fastcc void @lto_register_var_decl_in_symtab(ptr noundef %1, ptr noundef nonnull %300)
  br label %1529

1523:                                             ; preds = %1519
  %1524 = getelementptr inbounds %struct.tree_function_decl, ptr %300, i64 0, i32 5
  %1525 = load i32, ptr %1524, align 8
  %1526 = and i32 %1525, 6144
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1528, label %1529

1528:                                             ; preds = %1523
  tail call fastcc void @lto_register_function_decl_in_symtab(ptr noundef %1, ptr noundef nonnull %300)
  br label %1529

1529:                                             ; preds = %1519, %1522, %1523, %1528
  %1530 = tail call zeroext i8 @lto_input_1_unsigned(ptr noundef %0) #19
  br label %1531

1531:                                             ; preds = %242, %235, %166, %164, %125, %122, %10, %200, %1529, %228
  %1532 = phi ptr [ %196, %200 ], [ %219, %228 ], [ %300, %1529 ], [ null, %10 ], [ %123, %122 ], [ %123, %125 ], [ %155, %164 ], [ %155, %166 ], [ %243, %242 ], [ %241, %235 ]
  ret ptr %1532
}

declare zeroext i8 @varpool_extra_name_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_init_reader() local_unnamed_addr #9 !prof !34 {
  tail call void @lto_streamer_init() #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1664) @lto_stats, i8 0, i64 1664, i1 false)
  tail call void @bitmap_obstack_initialize(ptr noundef null) #19
  %1 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @hash_string_slot_node, ptr noundef nonnull @eq_string_slot_node, ptr noundef nonnull @free) #19
  store ptr %1, ptr @file_name_hash_table, align 8, !tbaa !35
  tail call void @gimple_register_cfg_hooks() #19
  ret void
}

declare void @lto_streamer_init() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_string_slot_node(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !254
  %3 = tail call i32 @htab_hash_string(ptr noundef %2) #19
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_string_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  %4 = load ptr, ptr %1, align 8, !tbaa !254
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lto_data_in_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #19
  store ptr %0, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 9
  store ptr %3, ptr %8, align 8, !tbaa !67
  %9 = tail call ptr @lto_streamer_cache_create() #19
  %10 = getelementptr inbounds %struct.data_in, ptr %5, i64 0, i32 10
  store ptr %9, ptr %10, align 8, !tbaa !68
  ret ptr %5
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lto_streamer_cache_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_data_in_delete(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  tail call void @lto_streamer_cache_delete(ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !256
  tail call void @free(ptr noundef %10)
  tail call void @free(ptr noundef %0)
  ret void
}

declare void @lto_streamer_cache_delete(ptr noundef) local_unnamed_addr #3

declare void @lto_check_version(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_function_in_decl_state(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare void @init_empty_tree_cfg_for_function(ptr noundef) local_unnamed_addr #3

declare void @init_ssa_operands() local_unnamed_addr #3

declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @make_new_block(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @alloc_block() #19
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  store i32 %1, ptr %4, align 8, !tbaa !257
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %9
  store ptr %3, ptr %10, align 8, !tbaa !35
  %11 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #19
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  store ptr %11, ptr %12, align 8, !tbaa !46
  %13 = load ptr, ptr %5, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !258
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !258
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 13
  store i32 0, ptr %17, align 8, !tbaa !167
  %18 = tail call ptr @gimple_seq_alloc() #19
  %19 = load i32, ptr %17, align 8, !tbaa !167
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 248, ptr noundef nonnull @.str.1) #19
  br label %23

23:                                               ; preds = %2, %22
  %24 = load ptr, ptr %12, align 8, !tbaa !46
  store ptr %18, ptr %24, align 8, !tbaa !171
  ret ptr %3
}

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @alloc_block() local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_tag_check(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @lto_tag_name(i32 noundef %1) #19
  %6 = tail call ptr @lto_tag_name(i32 noundef %0) #19
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.3, ptr noundef %5, ptr noundef %6) #19
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitpack_delete(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @lto_streamer_cache_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @lto_streamer_cache_insert_at(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare void @execute_all_ipa_stmt_fixups(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @lto_tag_name(i32 noundef) local_unnamed_addr #3

declare void @init_ssanames(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @lto_input_1_unsigned(ptr noundef) local_unnamed_addr #3

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_nop() local_unnamed_addr #3

declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_tag_check_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp ult i32 %0, %1
  %5 = icmp ugt i32 %0, %2
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call ptr @lto_tag_name(i32 noundef %0) #19
  %9 = tail call ptr @lto_tag_name(i32 noundef %1) #19
  %10 = tail call ptr @lto_tag_name(i32 noundef %2) #19
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef %9, ptr noundef %10) #19
  br label %11

11:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_init_eh() unnamed_addr #9 !prof !34 {
  %1 = load i1, ptr @lto_init_eh.eh_initialized_p, align 1
  br i1 %1, label %7, label %2

2:                                                ; preds = %0
  store i32 1, ptr @flag_exceptions, align 4, !tbaa !50
  tail call void @init_eh() #19
  %3 = tail call i32 @dwarf2out_do_frame() #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @dwarf2out_frame_init() #19
  br label %6

6:                                                ; preds = %5, %2
  store i1 true, ptr @lto_init_eh.eh_initialized_p, align 1
  br label %7

7:                                                ; preds = %0, %6
  ret void
}

declare void @init_eh() local_unnamed_addr #3

declare i32 @dwarf2out_do_frame() local_unnamed_addr #3

declare void @dwarf2out_frame_init() local_unnamed_addr #3

declare void @add_type_for_runtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @lto_input_location(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.string_slot, align 8
  %4 = tail call fastcc ptr @input_string(ptr noundef %1, ptr noundef %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %4, ptr %3, align 8, !tbaa !254
  %7 = load ptr, ptr @file_name_hash_table, align 8, !tbaa !35
  %8 = call ptr @htab_find_slot(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 1) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %13 = add i64 %12, 1
  %14 = call ptr @xmalloc(i64 noundef %13) #19
  %15 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #19
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %4)
  store ptr %14, ptr %15, align 8, !tbaa !254
  store ptr %15, ptr %8, align 8, !tbaa !35
  br label %19

17:                                               ; preds = %6
  %18 = load ptr, ptr %9, align 8, !tbaa !254
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %14, %11 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %21 = call i64 @lto_input_sleb128(ptr noundef %0) #19
  %22 = trunc i64 %21 to i32
  %23 = call i64 @lto_input_sleb128(ptr noundef %0) #19
  %24 = trunc i64 %23 to i32
  %25 = call i64 @lto_input_sleb128(ptr noundef %0) #19
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %39, label %30

30:                                               ; preds = %19
  %31 = icmp eq ptr %28, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @line_table, align 8, !tbaa !35
  %34 = call ptr @linemap_add(ptr noundef %33, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  br label %35

35:                                               ; preds = %32, %30
  %36 = load ptr, ptr @line_table, align 8, !tbaa !35
  %37 = and i32 %26, 255
  %38 = call ptr @linemap_add(ptr noundef %36, i32 noundef 0, i32 noundef %37, ptr noundef %20, i32 noundef %22) #19
  br label %46

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !259
  %42 = icmp eq i32 %41, %22
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @line_table, align 8, !tbaa !35
  %45 = call i32 @linemap_line_start(ptr noundef %44, i32 noundef %22, i32 noundef %24) #19
  br label %46

46:                                               ; preds = %39, %43, %35
  store ptr %20, ptr %27, align 8, !tbaa !93
  %47 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 7
  store i32 %22, ptr %47, align 8, !tbaa !259
  %48 = getelementptr inbounds %struct.data_in, ptr %1, i64 0, i32 8
  store i32 %24, ptr %48, align 4, !tbaa !260
  %49 = load ptr, ptr @line_table, align 8, !tbaa !35
  %50 = call i32 @linemap_position_for_column(ptr noundef %49, i32 noundef %24) #19
  br label %51

51:                                               ; preds = %2, %46
  %52 = phi i32 [ %50, %46 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @input_string(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %1) #19
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = call fastcc ptr @input_string_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %9 = load i32, ptr %3, align 4, !tbaa !50
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.5) #19
  br label %16

16:                                               ; preds = %7, %15, %2
  %17 = phi ptr [ null, %2 ], [ %8, %15 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret ptr %17
}

declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @input_string_internal(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.lto_input_block, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = tail call i64 @lto_input_uleb128(ptr noundef %1) #19
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  store ptr %8, ptr %4, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.lto_input_block, ptr %4, i64 0, i32 1
  store i32 %6, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.lto_input_block, ptr %4, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !61
  %13 = call i64 @lto_input_uleb128(ptr noundef nonnull %4) #19
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %2, align 4, !tbaa !50
  %15 = load i32, ptr %9, align 8, !tbaa !60
  %16 = add i32 %15, %14
  %17 = load i32, ptr %10, align 8, !tbaa !66
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.6) #19
  br label %20

20:                                               ; preds = %19, %3
  %21 = load ptr, ptr %7, align 8, !tbaa !65
  %22 = load i32, ptr %9, align 8, !tbaa !60
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret ptr %24
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @find_referenced_vars_in(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @lto_tag_check_set(i32 noundef %0, i32 %1, ...) unnamed_addr #9 !prof !34 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 16
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = load ptr, ptr %5, align 8
  br label %12

9:                                                ; preds = %23
  %10 = add nuw nsw i32 %14, 1
  %11 = icmp eq i32 %14, 0
  br i1 %11, label %12, label %30, !llvm.loop !261

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %8, %2 ], [ %24, %9 ]
  %14 = phi i32 [ 0, %2 ], [ %10, %9 ]
  %15 = phi i32 [ %4, %2 ], [ %25, %9 ]
  %16 = icmp ult i32 %15, 41
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr i8, ptr %7, i64 %18
  %20 = add nuw nsw i32 %15, 8
  store i32 %20, ptr %3, align 16
  br label %23

21:                                               ; preds = %12
  %22 = getelementptr i8, ptr %13, i64 8
  store ptr %22, ptr %5, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %13, %17 ], [ %22, %21 ]
  %25 = phi i32 [ %20, %17 ], [ %15, %21 ]
  %26 = phi ptr [ %19, %17 ], [ %13, %21 ]
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %0
  br i1 %28, label %29, label %9

29:                                               ; preds = %23
  call void @llvm.va_end(ptr %3)
  br label %32

30:                                               ; preds = %9
  call void @llvm.va_end(ptr %3)
  %31 = call ptr @lto_tag_name(i32 noundef %0) #19
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, ptr noundef %31) #19
  br label %32

32:                                               ; preds = %30, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

declare void @add_stmt_to_eh_lp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_alloc_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @input_string_cst(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = tail call i64 @lto_input_uleb128(ptr noundef %1) #19
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = call fastcc ptr @input_string_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %9 = load i32, ptr %3, align 4, !tbaa !50
  %10 = tail call ptr @build_string(i32 noundef %9, ptr noundef %8) #19
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %10, %7 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret ptr %12
}

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @compare_field_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_complex_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lto_get_decl_name_mapping(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare ptr @lto_streamer_cache_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

declare void @set_builtin_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_register_var_decl_in_symtab(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @decl_function_context(ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 134217728
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #19
  %12 = getelementptr inbounds %struct.tree_identifier, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13)
  %15 = add i64 %14, 32
  %16 = alloca i8, i64 %15, align 16
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = zext i32 %18 to i64
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %13, i64 noundef %19)
  %21 = call ptr @get_identifier(ptr noundef nonnull %16) #19
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !46
  call void @rest_of_decl_compilation(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #19
  br label %23

23:                                               ; preds = %6, %10, %2
  %24 = load i64, ptr %1, align 8
  %25 = and i64 %24, 134217728
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %28 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %29, ptr noundef nonnull %1, ptr noundef nonnull %3) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2464, ptr noundef nonnull @.str.1) #19
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, ptr %3, align 4, !tbaa !50
  %35 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !67
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %36, align 4, !tbaa !262
  %40 = icmp ugt i32 %39, %34
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = zext i32 %34 to i64
  %43 = getelementptr inbounds %struct.VEC_ld_plugin_symbol_resolution_t_base, ptr %36, i64 0, i32 2, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
  br label %45

45:                                               ; preds = %33, %38, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %38 ], [ 0, %33 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !63
  call void @lto_symtab_register_decl(ptr noundef nonnull %1, i32 noundef %46, ptr noundef %47) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %48

48:                                               ; preds = %45, %23
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lto_register_function_decl_in_symtab(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca i32, align 4
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 134217728
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #19
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12)
  %14 = add i64 %13, 32
  %15 = alloca i8, i64 %14, align 16
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = zext i32 %17 to i64
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %12, i64 noundef %18)
  %20 = call ptr @get_identifier(ptr noundef nonnull %15) #19
  store ptr %20, ptr %8, align 8, !tbaa !46
  %21 = icmp eq ptr %9, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %7
  %23 = call ptr @decl_assembler_name(ptr noundef nonnull %1) #19
  %24 = load ptr, ptr %0, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_identifier, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  call void @lto_record_renamed_decl(ptr noundef %24, ptr noundef %26, ptr noundef %28) #19
  %29 = load ptr, ptr %0, align 8, !tbaa !63
  %30 = load ptr, ptr %27, align 8, !tbaa !46
  %31 = load ptr, ptr %25, align 8, !tbaa !46
  call void @lto_record_renamed_decl(ptr noundef %29, ptr noundef %30, ptr noundef %31) #19
  br label %32

32:                                               ; preds = %7, %22, %2
  %33 = load i64, ptr %1, align 8
  %34 = and i64 %33, 134217728
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 2048
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %42 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = call zeroext i8 @lto_streamer_cache_lookup(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %3) #19
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2531, ptr noundef nonnull @.str.1) #19
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, ptr %3, align 4, !tbaa !50
  %49 = getelementptr inbounds %struct.data_in, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %50, align 4, !tbaa !262
  %54 = icmp ugt i32 %53, %48
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = zext i32 %48 to i64
  %57 = getelementptr inbounds %struct.VEC_ld_plugin_symbol_resolution_t_base, ptr %50, i64 0, i32 2, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !50
  br label %59

59:                                               ; preds = %47, %52, %55
  %60 = phi i32 [ %58, %55 ], [ 0, %52 ], [ 0, %47 ]
  %61 = load ptr, ptr %0, align 8, !tbaa !63
  call void @lto_symtab_register_decl(ptr noundef nonnull %1, i32 noundef %60, ptr noundef %61) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %62

62:                                               ; preds = %59, %36, %32
  ret void
}

declare ptr @make_tree_vec_stat(i32 noundef) local_unnamed_addr #3

declare ptr @make_tree_binfo_stat(i32 noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @get_identifier_with_length(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare void @decl_init_priority_insert(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @sorry(ptr noundef, ...) local_unnamed_addr #3

declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_symtab_register_decl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_record_renamed_decl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 24}
!55 = !{!"lto_function_header", !56, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32}
!56 = !{!"lto_header", !43, i64 0, !43, i64 2, !41, i64 4}
!57 = !{!55, !41, i64 28}
!58 = !{!59, !36, i64 0}
!59 = !{!"lto_input_block", !36, i64 0, !41, i64 8, !41, i64 12}
!60 = !{!59, !41, i64 8}
!61 = !{!59, !41, i64 12}
!62 = !{!55, !41, i64 32}
!63 = !{!64, !36, i64 0}
!64 = !{!"data_in", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !41, i64 52, !36, i64 56, !36, i64 64}
!65 = !{!64, !36, i64 16}
!66 = !{!64, !41, i64 24}
!67 = !{!64, !36, i64 56}
!68 = !{!64, !36, i64 64}
!69 = !{!55, !43, i64 0}
!70 = !{!55, !43, i64 2}
!71 = !{!72, !36, i64 0}
!72 = !{!"lto_file_decl_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !36, i64 48, !36, i64 56}
!73 = !{!74, !36, i64 8}
!74 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!75 = !{!76, !41, i64 48}
!76 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!77 = !{!76, !41, i64 32}
!78 = !{!79, !41, i64 0}
!79 = !{!"VEC_basic_block_base", !41, i64 0, !41, i64 4, !37, i64 8}
!80 = !{!79, !41, i64 4}
!81 = !{}
!82 = !{!76, !36, i64 16}
!83 = !{!84, !41, i64 52}
!84 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!85 = !{!84, !42, i64 56}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!76, !36, i64 0}
!89 = !{!90, !36, i64 48}
!90 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!91 = !{!90, !36, i64 56}
!92 = distinct !{!92, !52, !53}
!93 = !{!64, !36, i64 40}
!94 = !{!74, !41, i64 120}
!95 = !{!74, !36, i64 56}
!96 = !{!74, !36, i64 64}
!97 = !{!74, !36, i64 72}
!98 = distinct !{!98, !52, !53}
!99 = !{!74, !36, i64 24}
!100 = !{!101, !36, i64 16}
!101 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !102, i64 32, !102, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !103, i64 104}
!102 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!103 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!104 = !{!105, !41, i64 0}
!105 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = !{!74, !36, i64 0}
!109 = !{!110, !41, i64 0}
!110 = !{!"VEC_eh_region_base", !41, i64 0, !41, i64 4, !37, i64 8}
!111 = !{!110, !41, i64 4}
!112 = !{!113, !41, i64 24}
!113 = !{!"eh_region_d", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 56, !36, i64 64, !36, i64 72, !37, i64 80}
!114 = !{!113, !36, i64 0}
!115 = !{!113, !36, i64 8}
!116 = !{!113, !36, i64 16}
!117 = !{!113, !41, i64 28}
!118 = !{!119, !36, i64 16}
!119 = !{!"eh_catch_d", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!120 = !{!119, !36, i64 24}
!121 = !{!119, !36, i64 32}
!122 = distinct !{!122, !52, !53}
!123 = !{!119, !36, i64 0}
!124 = !{!119, !36, i64 8}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = !{!113, !36, i64 56}
!128 = !{!129, !36, i64 8}
!129 = !{!"eh_status", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!130 = distinct !{!130, !52, !53}
!131 = !{!132, !41, i64 0}
!132 = !{!"VEC_eh_landing_pad_base", !41, i64 0, !41, i64 4, !37, i64 8}
!133 = !{!132, !41, i64 4}
!134 = !{!135, !41, i64 32}
!135 = !{!"eh_landing_pad_d", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!136 = !{!135, !36, i64 0}
!137 = !{!135, !36, i64 8}
!138 = !{!135, !36, i64 16}
!139 = !{!129, !36, i64 16}
!140 = distinct !{!140, !52, !53}
!141 = !{!105, !41, i64 4}
!142 = !{!129, !36, i64 32}
!143 = distinct !{!143, !52, !53}
!144 = !{!145, !37, i64 2035}
!145 = !{!"gcc_target", !146, i64 0, !148, i64 368, !149, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !150, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !151, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !152, i64 1784, !153, i64 1792, !154, i64 1896, !155, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!146 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !147, i64 24, !147, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!147 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!148 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!149 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!150 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!151 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!152 = !{!"c", !36, i64 0}
!153 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!154 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!155 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!156 = distinct !{!156, !52, !53}
!157 = !{!158, !41, i64 0}
!158 = !{!"VEC_uchar_base", !41, i64 0, !41, i64 4, !37, i64 8}
!159 = !{!158, !41, i64 4}
!160 = distinct !{!160, !52, !53}
!161 = !{!129, !36, i64 0}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = !{!90, !42, i64 72}
!165 = !{!90, !41, i64 84}
!166 = !{!90, !41, i64 88}
!167 = !{!90, !41, i64 96}
!168 = !{!169}
!169 = distinct !{!169, !170, !"gsi_start_bb: argument 0"}
!170 = distinct !{!170, !"gsi_start_bb"}
!171 = !{!172, !36, i64 0}
!172 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!173 = !{!174, !36, i64 0}
!174 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!175 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!176 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!177 = !{i64 0, i64 8, !35}
!178 = !{!42, !42, i64 0}
!179 = distinct !{!179, !52, !53}
!180 = distinct !{!180, !52, !53}
!181 = distinct !{!181, !52, !53}
!182 = distinct !{!182, !52, !53}
!183 = !{!74, !36, i64 48}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = !{!90, !36, i64 0}
!187 = !{!188, !41, i64 0}
!188 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!189 = distinct !{!189, !52, !53}
!190 = !{!84, !36, i64 0}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = !{!74, !41, i64 104}
!195 = !{!196}
!196 = distinct !{!196, !197, !"gsi_start_bb: argument 0"}
!197 = distinct !{!197, !"gsi_start_bb"}
!198 = !{!199, !36, i64 0}
!199 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!200 = !{!199, !36, i64 16}
!201 = distinct !{!201, !52, !53}
!202 = distinct !{!202, !52, !53}
!203 = !{!84, !36, i64 8}
!204 = !{!205, !36, i64 96}
!205 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !206, i64 144, !208, i64 184, !209, i64 224, !210, i64 232, !211, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!206 = !{!"cgraph_local_info", !36, i64 0, !207, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!207 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!208 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!209 = !{!"cgraph_rtl_info", !41, i64 0}
!210 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!211 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!212 = distinct !{!212, !52, !53}
!213 = !{!214, !41, i64 76}
!214 = !{!"cgraph_edge", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !43, i64 88, !41, i64 90, !41, i64 90, !41, i64 90}
!215 = !{!214, !36, i64 56}
!216 = distinct !{!216, !52, !53}
!217 = !{!205, !36, i64 88}
!218 = !{!205, !36, i64 72}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = !{!72, !36, i64 8}
!222 = distinct !{!222, !52, !53}
!223 = !{!224, !41, i64 4}
!224 = !{!"VEC_alias_pair_base", !41, i64 0, !41, i64 4, !37, i64 8}
!225 = !{!224, !41, i64 0}
!226 = !{!227, !36, i64 0}
!227 = !{!"alias_pair", !36, i64 0, !36, i64 8}
!228 = !{!227, !36, i64 8}
!229 = distinct !{!229, !52, !53}
!230 = !{!231, !41, i64 4}
!231 = !{!"VEC_bitpack_word_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!232 = !{!231, !41, i64 0}
!233 = distinct !{!233, !52, !53}
!234 = !{!235, !41, i64 8}
!235 = !{!"lto_tree_ref_table", !36, i64 0, !41, i64 8}
!236 = !{!235, !36, i64 0}
!237 = !{!145, !36, i64 912}
!238 = distinct !{!238, !52, !53}
!239 = !{i64 0, i64 8, !178, i64 8, i64 8, !178, i64 16, i64 4, !50}
!240 = !{i64 0, i64 8, !178, i64 8, i64 4, !50}
!241 = distinct !{!241, !52, !53}
!242 = distinct !{!242, !52, !53}
!243 = distinct !{!243, !52, !53}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = !{!248, !41, i64 4}
!248 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!249 = !{!248, !41, i64 0}
!250 = !{!251, !36, i64 0}
!251 = !{!"constructor_elt_d", !36, i64 0, !36, i64 8}
!252 = !{!251, !36, i64 8}
!253 = distinct !{!253, !52, !53}
!254 = !{!255, !36, i64 0}
!255 = !{!"string_slot", !36, i64 0, !41, i64 8}
!256 = !{!64, !36, i64 8}
!257 = !{!90, !41, i64 80}
!258 = !{!76, !41, i64 24}
!259 = !{!64, !41, i64 48}
!260 = !{!64, !41, i64 52}
!261 = distinct !{!261, !52, !53}
!262 = !{!263, !41, i64 0}
!263 = !{!"VEC_ld_plugin_symbol_resolution_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
