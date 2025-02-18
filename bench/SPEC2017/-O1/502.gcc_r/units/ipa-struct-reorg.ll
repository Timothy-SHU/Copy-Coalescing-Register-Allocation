; ModuleID = 'ipa-struct-reorg.c'
source_filename = "ipa-struct-reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.create_acc_data = type { ptr, ptr, i32 }
%struct.exclude_data = type { ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_structure_base = type { i32, i32, [1 x %struct.data_structure] }
%struct.data_structure = type { ptr, i32, i64, ptr, ptr, ptr, ptr }
%struct.field_entry = type { i32, i64, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.func_alloc_sites = type { ptr, ptr }
%struct.VEC_alloc_site_t_base = type { i32, i32, [1 x %struct.alloc_site] }
%struct.alloc_site = type { ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.field_cluster = type { ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.access_site = type { ptr, ptr }
%struct.field_access_site = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.find_stmt_data = type { i8, ptr }
%struct.new_var_data = type { ptr, ptr }
%struct.VEC_type_wrapper_t_base = type { i32, i32, [1 x %struct.type_wrapper] }
%struct.type_wrapper = type { i8, ptr }
%struct.ref_pos = type { ptr, ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@alloc_sites = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [17 x i8] c"ipa_struct_reorg\00", align 1
@pass_ipa_struct_reorg = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str, ptr @struct_reorg_gate, ptr @reorg_structs_drive, ptr null, ptr null, i32 0, i32 47, i32 0, i32 0, i32 0, i32 4, i32 5 } }, align 8
@new_global_vars = dso_local local_unnamed_addr global ptr null, align 8
@new_local_vars = dso_local local_unnamed_addr global ptr null, align 8
@structures = dso_local local_unnamed_addr global ptr null, align 8
@flag_ipa_struct_reorg = external local_unnamed_addr global i32, align 4
@flag_whole_program = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"__builtin_offsetof\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"ipa-struct-reorg.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"The type \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c" is initialized...Excluded.\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"\0AAdding data structure \22\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\22 to data_struct_list.\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"\0AType \00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" is a field in the structure \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c". Escaping...\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0APointer to type \22\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\22 is passed to local function...Excluded.\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"\0AThe type \22\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"\22 is return type of function...Excluded.\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"\0AEscaping type is \00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"\0Aescapes due to bitfield \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"\0ARemoving data structure \22\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"\22 from data_struct_list.\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"\0AUnsupported allocation function \00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"\0AAdding stmt \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c" to list of mallocs.\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"\0AThe type \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c" has bitfield.\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c" has complicate access in statement \00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"\0AUnsafe conditional statement \00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\0AAccess sites of struct \00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0AAccess site of field \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0AGeneral access sites\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c", \00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"\0AThe structure \00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c" is cold.\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"\0ACounter of field \22\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"\22 is %ld\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"\0ACounter of struct \22\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"\0ANo structures to transform. Exiting...\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"\0ANumber of structures to transform is %d\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"_sub\00", align 1
@.str.46 = private unnamed_addr constant [66 x i8] c"\0AThe following are the new types generated by this optimization:\0A\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"\0AFor type \00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"\0Athe number of new types is %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"\0AOrig var: \00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c" of type \00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [31 x i8] c"\0AFunction to do reorg is %s: \0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #25
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #25
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #25
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
  %5 = tail call ptr @__ctype_tolower_loc() #25
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
  %5 = tail call ptr @__ctype_toupper_loc() #25
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #25
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @struct_reorg_gate() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @flag_ipa_struct_reorg, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_whole_program, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !56
  %6 = load i32, ptr @optimize, align 4
  %7 = icmp sgt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !56
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @reorg_structs_drive() #10 !prof !34 {
  %1 = alloca %struct.create_acc_data, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.exclude_data, align 8
  %9 = alloca %struct.walk_stmt_info, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  %12 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 32) #25
  store ptr %12, ptr %11, align 8, !tbaa !35
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 56) #25
  store ptr %13, ptr @structures, align 8, !tbaa !35
  %14 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %0, %56
  %17 = phi ptr [ %58, %56 ], [ %14, %0 ]
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %16, %52
  %22 = phi ptr [ %54, %52 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.cgraph_edge, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %22, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %52

31:                                               ; preds = %21
  %32 = tail call ptr @get_name(ptr noundef %25) #25
  %33 = load ptr, ptr %26, align 8, !tbaa !67
  %34 = tail call i32 @gimple_call_flags(ptr noundef %33) #25
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 2047
  switch i32 %40, label %407 [
    i32 491, label %41
    i32 422, label %41
    i32 415, label %41
  ]

41:                                               ; preds = %37, %37, %37, %31
  %42 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 2047
  %45 = icmp eq i32 %44, 528
  br i1 %45, label %407, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(19) @.str.1)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %407, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(8) @.str.2)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %407, label %52

52:                                               ; preds = %49, %21
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %22, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %21, !llvm.loop !68

56:                                               ; preds = %52, %16
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %16, !llvm.loop !69

60:                                               ; preds = %56, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  %61 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %73, %60
  %64 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %130, label %77

66:                                               ; preds = %60, %73
  %67 = phi ptr [ %75, %73 ], [ %61, %60 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !70
  %69 = call fastcc zeroext i8 @is_candidate(ptr noundef %68, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !72
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %10, align 8, !tbaa !35
  call fastcc void @add_structure(ptr noundef %72)
  br label %73

73:                                               ; preds = %71, %66
  %74 = getelementptr inbounds %struct.varpool_node, ptr %67, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !35
  %76 = icmp eq ptr %75, null
  br i1 %76, label %63, label %66, !llvm.loop !73

77:                                               ; preds = %63, %126
  %78 = phi ptr [ %128, %126 ], [ %64, %63 ]
  %79 = call i32 @cgraph_function_body_availability(ptr noundef nonnull %78) #25
  %80 = add i32 %79, -3
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %126

82:                                               ; preds = %77
  %83 = load ptr, ptr %78, align 8, !tbaa !59
  %84 = getelementptr inbounds %struct.tree_function_decl, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.tree_decl_non_common, ptr %83, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %82, %95
  %90 = phi ptr [ %97, %95 ], [ %87, %82 ]
  %91 = call fastcc zeroext i8 @is_candidate(ptr noundef nonnull %90, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !72
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %10, align 8, !tbaa !35
  call fastcc void @add_structure(ptr noundef %94)
  br label %95

95:                                               ; preds = %93, %89
  %96 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %89, !llvm.loop !74

99:                                               ; preds = %95, %82
  %100 = icmp eq ptr %85, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %78, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %103, align 8, !tbaa !59
  %107 = load ptr, ptr %78, align 8, !tbaa !59
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %105, %101
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3449, ptr noundef nonnull @.str.4) #25
  br label %126

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %126, label %114

114:                                              ; preds = %110, %122
  %115 = phi ptr [ %124, %122 ], [ %112, %110 ]
  %116 = getelementptr inbounds %struct.tree_list, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = call fastcc zeroext i8 @is_candidate(ptr noundef %117, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !72
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %10, align 8, !tbaa !35
  call fastcc void @add_structure(ptr noundef %121)
  br label %122

122:                                              ; preds = %120, %114
  %123 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !46
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %114, !llvm.loop !76

126:                                              ; preds = %122, %110, %109, %105, %77
  %127 = getelementptr inbounds %struct.cgraph_node, ptr %78, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !35
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %77, !llvm.loop !77

130:                                              ; preds = %126, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  br label %131

131:                                              ; preds = %197, %130
  %132 = phi i32 [ 0, %130 ], [ %198, %197 ]
  %133 = load ptr, ptr @structures, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %133, align 8, !tbaa !78
  %137 = icmp ugt i32 %136, %132
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = zext i32 %132 to i64
  %140 = getelementptr inbounds %struct.VEC_structure_base, ptr %133, i64 0, i32 2, i64 %139
  br label %141

141:                                              ; preds = %138, %135, %131
  %142 = phi ptr [ %140, %138 ], [ null, %135 ], [ null, %131 ]
  %143 = phi i1 [ false, %138 ], [ true, %135 ], [ true, %131 ]
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.data_structure, ptr %142, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !80
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.data_structure, ptr %142, i64 0, i32 3
  br label %153

150:                                              ; preds = %141
  %151 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %152, label %199, label %202

153:                                              ; preds = %148, %192
  %154 = phi i64 [ 0, %148 ], [ %193, %192 ]
  %155 = load ptr, ptr %149, align 8, !tbaa !82
  %156 = getelementptr inbounds %struct.field_entry, ptr %155, i64 %154, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !83
  %158 = getelementptr inbounds %struct.tree_common, ptr %157, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 65535
  %162 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %166, label %165

165:                                              ; preds = %153
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %166

166:                                              ; preds = %165, %153
  br label %167

167:                                              ; preds = %166, %171
  %168 = phi ptr [ %173, %171 ], [ %159, %166 ]
  %169 = load i64, ptr %168, align 8
  %170 = trunc i64 %169 to i16
  switch i16 %170, label %174 [
    i16 10, label %171
    i16 12, label %171
    i16 15, label %171
  ]

171:                                              ; preds = %167, %167, %167
  %172 = getelementptr inbounds %struct.tree_common, ptr %168, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  br label %167, !llvm.loop !85

174:                                              ; preds = %167
  %175 = and i64 %169, 65535
  %176 = icmp eq i64 %175, 16
  br i1 %176, label %177, label %192

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.tree_type, ptr %168, i64 0, i32 16
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  call fastcc void @add_unsuitable_type(ptr noundef nonnull %11, ptr noundef %179)
  %180 = load ptr, ptr %142, align 8, !tbaa !86
  call fastcc void @add_unsuitable_type(ptr noundef nonnull %11, ptr noundef %180)
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %182 = icmp eq ptr %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %177
  %184 = call i64 @fwrite(ptr nonnull @.str.9, i64 6, i64 1, ptr nonnull %181)
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %185, ptr noundef nonnull %168, i32 noundef 0) #25
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %187 = call i64 @fwrite(ptr nonnull @.str.10, i64 29, i64 1, ptr %186)
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %189 = load ptr, ptr %142, align 8, !tbaa !86
  call void @print_generic_expr(ptr noundef %188, ptr noundef %189, i32 noundef 0) #25
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %191 = call i64 @fwrite(ptr nonnull @.str.11, i64 13, i64 1, ptr %190)
  br label %192

192:                                              ; preds = %183, %177, %174
  %193 = add nuw nsw i64 %154, 1
  %194 = load i32, ptr %145, align 8, !tbaa !80
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %153, label %197, !llvm.loop !87

197:                                              ; preds = %192, %144
  %198 = add i32 %132, 1
  br label %131, !llvm.loop !88

199:                                              ; preds = %246, %150
  %200 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %201 = icmp eq ptr %200, null
  br i1 %201, label %290, label %250

202:                                              ; preds = %150, %246
  %203 = phi ptr [ %248, %246 ], [ %151, %150 ]
  %204 = call i32 @cgraph_function_body_availability(ptr noundef nonnull %203) #25
  %205 = icmp eq i32 %204, 4
  br i1 %205, label %206, label %246

206:                                              ; preds = %202
  %207 = load ptr, ptr %203, align 8, !tbaa !59
  %208 = getelementptr inbounds %struct.tree_decl_non_common, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = icmp eq ptr %209, null
  br i1 %210, label %246, label %211

211:                                              ; preds = %206, %242
  %212 = phi ptr [ %244, %242 ], [ %209, %206 ]
  %213 = getelementptr inbounds %struct.tree_common, ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  %215 = load i64, ptr %214, align 8
  %216 = and i64 %215, 65535
  %217 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !50
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %221, label %220

220:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %221

221:                                              ; preds = %220, %211
  br label %222

222:                                              ; preds = %221, %226
  %223 = phi ptr [ %228, %226 ], [ %214, %221 ]
  %224 = load i64, ptr %223, align 8
  %225 = trunc i64 %224 to i16
  switch i16 %225, label %229 [
    i16 10, label %226
    i16 12, label %226
    i16 15, label %226
  ]

226:                                              ; preds = %222, %222, %222
  %227 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !46
  br label %222, !llvm.loop !85

229:                                              ; preds = %222
  %230 = and i64 %224, 65535
  %231 = icmp eq i64 %230, 16
  br i1 %231, label %232, label %242

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.tree_type, ptr %223, i64 0, i32 16
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  call fastcc void @add_unsuitable_type(ptr noundef nonnull %11, ptr noundef %234)
  %235 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %236 = icmp eq ptr %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = call i64 @fwrite(ptr nonnull @.str.12, i64 18, i64 1, ptr nonnull %235)
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %239, ptr noundef nonnull %223, i32 noundef 0) #25
  %240 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %241 = call i64 @fwrite(ptr nonnull @.str.13, i64 41, i64 1, ptr %240)
  br label %242

242:                                              ; preds = %237, %232, %229
  %243 = getelementptr inbounds %struct.tree_common, ptr %212, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !46
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %211, !llvm.loop !89

246:                                              ; preds = %242, %206, %202
  %247 = getelementptr inbounds %struct.cgraph_node, ptr %203, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !35
  %249 = icmp eq ptr %248, null
  br i1 %249, label %199, label %202, !llvm.loop !90

250:                                              ; preds = %199, %286
  %251 = phi ptr [ %288, %286 ], [ %200, %199 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !59
  %253 = getelementptr inbounds %struct.tree_common, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  %255 = getelementptr inbounds %struct.tree_common, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = icmp eq ptr %256, null
  br i1 %257, label %286, label %258

258:                                              ; preds = %250
  %259 = load i64, ptr %256, align 8
  %260 = and i64 %259, 65535
  %261 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !50
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %265, label %264

264:                                              ; preds = %258
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %265

265:                                              ; preds = %264, %258
  br label %266

266:                                              ; preds = %265, %270
  %267 = phi ptr [ %272, %270 ], [ %256, %265 ]
  %268 = load i64, ptr %267, align 8
  %269 = trunc i64 %268 to i16
  switch i16 %269, label %273 [
    i16 10, label %270
    i16 12, label %270
    i16 15, label %270
  ]

270:                                              ; preds = %266, %266, %266
  %271 = getelementptr inbounds %struct.tree_common, ptr %267, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !46
  br label %266, !llvm.loop !85

273:                                              ; preds = %266
  %274 = and i64 %268, 65535
  %275 = icmp eq i64 %274, 16
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.tree_type, ptr %267, i64 0, i32 16
  %278 = load ptr, ptr %277, align 8, !tbaa !46
  call fastcc void @add_unsuitable_type(ptr noundef nonnull %11, ptr noundef %278)
  %279 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %280 = icmp eq ptr %279, null
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = call i64 @fwrite(ptr nonnull @.str.14, i64 11, i64 1, ptr nonnull %279)
  %283 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %283, ptr noundef nonnull %267, i32 noundef 0) #25
  %284 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %285 = call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %284)
  br label %286

286:                                              ; preds = %281, %276, %273, %250
  %287 = getelementptr inbounds %struct.cgraph_node, ptr %251, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !35
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %250, !llvm.loop !91

290:                                              ; preds = %286, %199
  br label %291

291:                                              ; preds = %290, %315
  %292 = phi i32 [ %316, %315 ], [ 0, %290 ]
  %293 = load ptr, ptr @structures, align 8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %301, label %295

295:                                              ; preds = %291
  %296 = load i32, ptr %293, align 8, !tbaa !78
  %297 = icmp ugt i32 %296, %292
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = zext i32 %292 to i64
  %300 = getelementptr inbounds %struct.VEC_structure_base, ptr %293, i64 0, i32 2, i64 %299
  br label %301

301:                                              ; preds = %298, %295, %291
  %302 = phi ptr [ %300, %298 ], [ null, %295 ], [ null, %291 ]
  %303 = phi i1 [ false, %298 ], [ true, %295 ], [ true, %291 ]
  br i1 %303, label %317, label %304

304:                                              ; preds = %301
  %305 = load ptr, ptr %302, align 8, !tbaa !86
  %306 = call zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef %305) #25
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %310 = icmp eq ptr %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = call i64 @fwrite(ptr nonnull @.str.16, i64 18, i64 1, ptr nonnull %309)
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %313, ptr noundef %305, i32 noundef 0) #25
  br label %314

314:                                              ; preds = %311, %308
  call fastcc void @add_unsuitable_type(ptr noundef nonnull %11, ptr noundef %305)
  br label %315

315:                                              ; preds = %314, %304
  %316 = add i32 %292, 1
  br label %291, !llvm.loop !92

317:                                              ; preds = %301, %363
  %318 = phi i32 [ %364, %363 ], [ 0, %301 ]
  %319 = load ptr, ptr @structures, align 8
  %320 = icmp eq ptr %319, null
  br i1 %320, label %327, label %321

321:                                              ; preds = %317
  %322 = load i32, ptr %319, align 8, !tbaa !78
  %323 = icmp ugt i32 %322, %318
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = zext i32 %318 to i64
  %326 = getelementptr inbounds %struct.VEC_structure_base, ptr %319, i64 0, i32 2, i64 %325
  br label %327

327:                                              ; preds = %324, %321, %317
  %328 = phi ptr [ %326, %324 ], [ null, %321 ], [ null, %317 ]
  %329 = phi i1 [ false, %324 ], [ true, %321 ], [ true, %317 ]
  br i1 %329, label %365, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %328, align 8, !tbaa !86
  %332 = getelementptr inbounds %struct.data_structure, ptr %328, i64 0, i32 1
  %333 = load i32, ptr %332, align 8, !tbaa !80
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %363

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.data_structure, ptr %328, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !82
  %338 = zext nneg i32 %333 to i64
  br label %342

339:                                              ; preds = %342
  %340 = add nuw nsw i64 %343, 1
  %341 = icmp eq i64 %340, %338
  br i1 %341, label %363, label %342, !llvm.loop !93

342:                                              ; preds = %335, %339
  %343 = phi i64 [ 0, %335 ], [ %340, %339 ]
  %344 = getelementptr inbounds %struct.field_entry, ptr %337, i64 %343, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !83
  %346 = getelementptr inbounds %struct.tree_decl_common, ptr %345, i64 0, i32 2
  %347 = load i64, ptr %346, align 8
  %348 = and i64 %347, 33554432
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %339, label %350

350:                                              ; preds = %342
  call fastcc void @add_unsuitable_type(ptr noundef nonnull %11, ptr noundef %331)
  %351 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %352 = icmp eq ptr %351, null
  br i1 %352, label %363, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.data_structure, ptr %328, i64 0, i32 3
  %355 = call i64 @fwrite(ptr nonnull @.str.9, i64 6, i64 1, ptr nonnull %351)
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %356, ptr noundef %331, i32 noundef 0) #25
  %357 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %358 = call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %357)
  %359 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %360 = load ptr, ptr %354, align 8, !tbaa !82
  %361 = getelementptr inbounds %struct.field_entry, ptr %360, i64 %343, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !83
  call void @print_generic_expr(ptr noundef %359, ptr noundef %362, i32 noundef 0) #25
  br label %363

363:                                              ; preds = %339, %330, %353, %350
  %364 = add i32 %318, 1
  br label %317, !llvm.loop !94

365:                                              ; preds = %327
  %366 = load ptr, ptr %11, align 8, !tbaa !35
  %367 = icmp eq ptr %366, null
  br label %368

368:                                              ; preds = %400, %365
  %369 = phi i32 [ 0, %365 ], [ %401, %400 ]
  br i1 %367, label %377, label %370

370:                                              ; preds = %368
  %371 = load i32, ptr %366, align 8, !tbaa !95
  %372 = icmp ugt i32 %371, %369
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = zext i32 %369 to i64
  %375 = getelementptr inbounds %struct.VEC_tree_base, ptr %366, i64 0, i32 2, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !35
  br label %377

377:                                              ; preds = %373, %370, %368
  %378 = phi ptr [ %376, %373 ], [ null, %370 ], [ null, %368 ]
  %379 = phi i1 [ false, %373 ], [ true, %370 ], [ true, %368 ]
  br i1 %379, label %402, label %380

380:                                              ; preds = %377, %398
  %381 = phi i32 [ %399, %398 ], [ 0, %377 ]
  %382 = load ptr, ptr @structures, align 8
  %383 = icmp eq ptr %382, null
  br i1 %383, label %390, label %384

384:                                              ; preds = %380
  %385 = load i32, ptr %382, align 8, !tbaa !78
  %386 = icmp ugt i32 %385, %381
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = zext i32 %381 to i64
  %389 = getelementptr inbounds %struct.VEC_structure_base, ptr %382, i64 0, i32 2, i64 %388
  br label %390

390:                                              ; preds = %387, %384, %380
  %391 = phi ptr [ %389, %387 ], [ null, %384 ], [ null, %380 ]
  %392 = phi i1 [ false, %387 ], [ true, %384 ], [ true, %380 ]
  br i1 %392, label %400, label %393

393:                                              ; preds = %390
  %394 = load ptr, ptr %391, align 8, !tbaa !86
  %395 = call fastcc zeroext i8 @is_equal_types(ptr noundef %394, ptr noundef %378)
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  call fastcc void @remove_structure(i32 noundef %381)
  br label %400

398:                                              ; preds = %393
  %399 = add i32 %381, 1
  br label %380, !llvm.loop !97

400:                                              ; preds = %390, %397
  %401 = add i32 %369, 1
  br label %368, !llvm.loop !98

402:                                              ; preds = %377
  %403 = load ptr, ptr %11, align 8, !tbaa !35
  %404 = icmp eq ptr %403, null
  br i1 %404, label %406, label %405

405:                                              ; preds = %402
  call void @free(ptr noundef %403)
  br label %406

406:                                              ; preds = %405, %402
  store ptr null, ptr %11, align 8, !tbaa !35
  br label %407

407:                                              ; preds = %37, %41, %46, %49, %406
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  %408 = call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @malloc_hash, ptr noundef nonnull @malloc_eq, ptr noundef null) #25
  store ptr %408, ptr @alloc_sites, align 8, !tbaa !35
  %409 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %417

411:                                              ; preds = %624, %407
  %412 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %413 = icmp eq ptr %412, null
  br i1 %413, label %715, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.walk_stmt_info, ptr %9, i64 0, i32 1
  %416 = getelementptr inbounds %struct.exclude_data, ptr %8, i64 0, i32 1
  br label %629

417:                                              ; preds = %407, %624
  %418 = phi ptr [ %627, %624 ], [ %409, %407 ]
  %419 = phi i32 [ %625, %624 ], [ undef, %407 ]
  %420 = getelementptr inbounds %struct.cgraph_node, ptr %418, i64 0, i32 27
  %421 = load i16, ptr %420, align 4
  %422 = and i16 %421, 32
  %423 = icmp eq i16 %422, 0
  br i1 %423, label %624, label %424

424:                                              ; preds = %417
  %425 = load ptr, ptr %418, align 8, !tbaa !59
  %426 = icmp eq ptr %425, null
  br i1 %426, label %624, label %427

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.cgraph_node, ptr %418, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !35
  %430 = icmp eq ptr %429, null
  br i1 %430, label %624, label %431

431:                                              ; preds = %427, %619
  %432 = phi ptr [ %622, %619 ], [ %429, %427 ]
  %433 = phi i32 [ %620, %619 ], [ %419, %427 ]
  %434 = getelementptr inbounds %struct.cgraph_edge, ptr %432, i64 0, i32 7
  %435 = load ptr, ptr %434, align 8, !tbaa !67
  %436 = icmp eq ptr %435, null
  br i1 %436, label %619, label %437

437:                                              ; preds = %431
  %438 = load i32, ptr %435, align 8
  %439 = and i32 %438, 255
  %440 = icmp eq i32 %439, 8
  br i1 %440, label %441, label %619

441:                                              ; preds = %437
  %442 = zext nneg i32 %439 to i64
  %443 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !50
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %445
  %447 = load i64, ptr %446, align 8, !tbaa !99
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %441
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %450

450:                                              ; preds = %449, %441
  %451 = getelementptr inbounds i8, ptr %435, i64 %447
  %452 = getelementptr inbounds ptr, ptr %451, i64 1
  %453 = load ptr, ptr %452, align 8, !tbaa !35
  %454 = load i64, ptr %453, align 8
  %455 = and i64 %454, 65535
  %456 = icmp eq i64 %455, 121
  br i1 %456, label %457, label %460

457:                                              ; preds = %450
  %458 = getelementptr inbounds %struct.tree_exp, ptr %453, i64 0, i32 3
  %459 = load ptr, ptr %458, align 8, !tbaa !46
  br label %460

460:                                              ; preds = %457, %450
  %461 = phi ptr [ %459, %457 ], [ null, %450 ]
  %462 = icmp eq ptr %461, null
  br i1 %462, label %619, label %463

463:                                              ; preds = %460
  %464 = load i32, ptr %435, align 8
  %465 = and i32 %464, 255
  %466 = add nsw i32 %465, -10
  %467 = icmp ult i32 %466, -9
  br i1 %467, label %480, label %468

468:                                              ; preds = %463
  %469 = zext nneg i32 %465 to i64
  %470 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !50
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %472
  %474 = load i64, ptr %473, align 8, !tbaa !99
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %468
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %477

477:                                              ; preds = %476, %468
  %478 = getelementptr inbounds i8, ptr %435, i64 %474
  %479 = load ptr, ptr %478, align 8, !tbaa !35
  br label %480

480:                                              ; preds = %477, %463
  %481 = phi ptr [ %479, %477 ], [ null, %463 ]
  %482 = icmp eq ptr %481, null
  br i1 %482, label %619, label %483

483:                                              ; preds = %480
  %484 = call fastcc ptr @get_final_alloc_stmt(ptr noundef nonnull %435)
  %485 = icmp eq ptr %484, null
  br i1 %485, label %559, label %486

486:                                              ; preds = %483
  %487 = load i32, ptr %484, align 8
  %488 = and i32 %487, 255
  %489 = icmp eq i32 %488, 6
  br i1 %489, label %490, label %559

490:                                              ; preds = %486
  %491 = zext nneg i32 %488 to i64
  %492 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !50
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !99
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %490
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %499

499:                                              ; preds = %498, %490
  %500 = getelementptr inbounds i8, ptr %484, i64 %496
  %501 = load ptr, ptr %500, align 8, !tbaa !35
  %502 = icmp eq ptr %501, null
  br i1 %502, label %511, label %503

503:                                              ; preds = %499
  %504 = load i64, ptr %501, align 8
  %505 = and i64 %504, 65535
  %506 = icmp eq i64 %505, 34
  %507 = getelementptr inbounds %struct.tree_common, ptr %501, i64 0, i32 2
  %508 = getelementptr inbounds %struct.tree_decl_common, ptr %501, i64 0, i32 5
  %509 = select i1 %506, ptr %508, ptr %507
  %510 = load ptr, ptr %509, align 8, !tbaa !46
  br label %511

511:                                              ; preds = %503, %499
  %512 = phi ptr [ null, %499 ], [ %510, %503 ]
  %513 = icmp eq ptr %512, null
  br i1 %513, label %559, label %514

514:                                              ; preds = %511
  %515 = load i64, ptr %512, align 8
  %516 = trunc i64 %515 to i16
  switch i16 %516, label %559 [
    i16 10, label %517
    i16 12, label %517
  ]

517:                                              ; preds = %514, %514
  %518 = and i64 %515, 65535
  %519 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !50
  %521 = icmp eq i32 %520, 2
  br i1 %521, label %523, label %522

522:                                              ; preds = %517
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %523

523:                                              ; preds = %522, %517
  br label %524

524:                                              ; preds = %523, %528
  %525 = phi ptr [ %530, %528 ], [ %512, %523 ]
  %526 = load i64, ptr %525, align 8
  %527 = trunc i64 %526 to i16
  switch i16 %527, label %531 [
    i16 10, label %528
    i16 12, label %528
    i16 15, label %528
  ]

528:                                              ; preds = %524, %524, %524
  %529 = getelementptr inbounds %struct.tree_common, ptr %525, i64 0, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !46
  br label %524, !llvm.loop !85

531:                                              ; preds = %524
  %532 = and i64 %526, 65535
  %533 = icmp eq i64 %532, 16
  br i1 %533, label %534, label %559

534:                                              ; preds = %531
  %535 = load i64, ptr %512, align 8
  %536 = and i64 %535, 65535
  %537 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %536
  %538 = load i32, ptr %537, align 4, !tbaa !50
  %539 = icmp eq i32 %538, 2
  br i1 %539, label %541, label %540

540:                                              ; preds = %534
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %541

541:                                              ; preds = %540, %534
  br label %542

542:                                              ; preds = %541, %546
  %543 = phi ptr [ %548, %546 ], [ %512, %541 ]
  %544 = load i64, ptr %543, align 8
  %545 = trunc i64 %544 to i16
  switch i16 %545, label %549 [
    i16 10, label %546
    i16 12, label %546
    i16 15, label %546
  ]

546:                                              ; preds = %542, %542, %542
  %547 = getelementptr inbounds %struct.tree_common, ptr %543, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !46
  br label %542, !llvm.loop !85

549:                                              ; preds = %542
  %550 = call fastcc i32 @find_structure(ptr noundef nonnull %543)
  %551 = load ptr, ptr @structures, align 8
  %552 = icmp eq ptr %551, null
  br i1 %552, label %555, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %551, align 8, !tbaa !78
  br label %555

555:                                              ; preds = %553, %549
  %556 = phi i32 [ %554, %553 ], [ 0, %549 ]
  %557 = icmp ne i32 %550, %556
  %558 = zext i1 %557 to i8
  br label %559

559:                                              ; preds = %555, %531, %514, %511, %486, %483
  %560 = phi i32 [ %433, %483 ], [ %433, %511 ], [ %433, %514 ], [ %550, %555 ], [ %433, %531 ], [ %433, %486 ]
  %561 = phi i8 [ 0, %483 ], [ 0, %511 ], [ 0, %514 ], [ %558, %555 ], [ 0, %531 ], [ 0, %486 ]
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %619, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.tree_function_decl, ptr %461, i64 0, i32 5
  %565 = load i32, ptr %564, align 8
  %566 = and i32 %565, 2047
  %567 = icmp eq i32 %566, 491
  br i1 %567, label %568, label %612

568:                                              ; preds = %563
  %569 = load ptr, ptr @structures, align 8
  %570 = zext i32 %560 to i64
  %571 = getelementptr inbounds %struct.VEC_structure_base, ptr %569, i64 0, i32 2, i64 %570
  %572 = load ptr, ptr %418, align 8, !tbaa !59
  %573 = load ptr, ptr @alloc_sites, align 8, !tbaa !35
  %574 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %575 = call i32 %574(ptr noundef %572) #25
  %576 = call ptr @htab_find_with_hash(ptr noundef %573, ptr noundef %572, i32 noundef %575) #25
  %577 = icmp eq ptr %576, null
  br i1 %577, label %578, label %586

578:                                              ; preds = %568
  %579 = call ptr @xmalloc(i64 noundef 16) #25
  store ptr %572, ptr %579, align 8, !tbaa !100
  %580 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  %581 = getelementptr inbounds %struct.func_alloc_sites, ptr %579, i64 0, i32 1
  store ptr %580, ptr %581, align 8, !tbaa !102
  %582 = load ptr, ptr @alloc_sites, align 8, !tbaa !35
  %583 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %584 = call i32 %583(ptr noundef %572) #25
  %585 = call ptr @htab_find_slot_with_hash(ptr noundef %582, ptr noundef %572, i32 noundef %584, i32 noundef 1) #25
  store ptr %579, ptr %585, align 8, !tbaa !35
  br label %586

586:                                              ; preds = %578, %568
  %587 = phi ptr [ %576, %568 ], [ %579, %578 ]
  %588 = getelementptr inbounds %struct.func_alloc_sites, ptr %587, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !35
  %590 = icmp eq ptr %589, null
  br i1 %590, label %596, label %591

591:                                              ; preds = %586
  %592 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %589, i64 0, i32 1
  %593 = load i32, ptr %592, align 4, !tbaa !103
  %594 = load i32, ptr %589, align 8, !tbaa !105
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %598

596:                                              ; preds = %591, %586
  %597 = call ptr @vec_heap_o_reserve(ptr noundef %589, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  store ptr %597, ptr %588, align 8, !tbaa !35
  br label %598

598:                                              ; preds = %596, %591
  %599 = load ptr, ptr %588, align 8, !tbaa !35
  %600 = load i32, ptr %599, align 8, !tbaa !105
  %601 = add i32 %600, 1
  store i32 %601, ptr %599, align 8, !tbaa !105
  %602 = zext i32 %600 to i64
  %603 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %599, i64 0, i32 2, i64 %602
  store ptr %435, ptr %603, align 8, !tbaa.struct !106
  %604 = getelementptr inbounds i8, ptr %603, i64 8
  store ptr %571, ptr %604, align 8, !tbaa.struct !107
  %605 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %606 = icmp eq ptr %605, null
  br i1 %606, label %619, label %607

607:                                              ; preds = %598
  %608 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %605)
  %609 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %609, ptr noundef nonnull %435, i32 noundef 0, i32 noundef 0) #25
  %610 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %611 = call i64 @fwrite(ptr nonnull @.str.23, i64 20, i64 1, ptr %610)
  br label %619

612:                                              ; preds = %563
  %613 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %614 = icmp eq ptr %613, null
  br i1 %614, label %618, label %615

615:                                              ; preds = %612
  %616 = call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr nonnull %613)
  %617 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %617, ptr noundef nonnull %435, i32 noundef 0, i32 noundef 0) #25
  br label %618

618:                                              ; preds = %615, %612
  call fastcc void @remove_structure(i32 noundef %560)
  br label %619

619:                                              ; preds = %618, %607, %598, %559, %480, %460, %437, %431
  %620 = phi i32 [ %433, %431 ], [ %433, %437 ], [ %433, %460 ], [ %433, %480 ], [ %560, %607 ], [ %560, %598 ], [ %560, %618 ], [ %560, %559 ]
  %621 = getelementptr inbounds %struct.cgraph_edge, ptr %432, i64 0, i32 6
  %622 = load ptr, ptr %621, align 8, !tbaa !35
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %431, !llvm.loop !108

624:                                              ; preds = %619, %427, %424, %417
  %625 = phi i32 [ %419, %417 ], [ %419, %424 ], [ %419, %427 ], [ %620, %619 ]
  %626 = getelementptr inbounds %struct.cgraph_node, ptr %418, i64 0, i32 3
  %627 = load ptr, ptr %626, align 8, !tbaa !35
  %628 = icmp eq ptr %627, null
  br i1 %628, label %411, label %417, !llvm.loop !109

629:                                              ; preds = %414, %711
  %630 = phi ptr [ %412, %414 ], [ %713, %711 ]
  %631 = call i32 @cgraph_function_body_availability(ptr noundef nonnull %630) #25
  %632 = add i32 %631, -3
  %633 = icmp ult i32 %632, 2
  br i1 %633, label %634, label %711

634:                                              ; preds = %629
  %635 = load ptr, ptr %630, align 8, !tbaa !59
  %636 = getelementptr inbounds %struct.tree_function_decl, ptr %635, i64 0, i32 1
  %637 = load ptr, ptr %636, align 8, !tbaa !46
  %638 = icmp eq ptr %637, null
  br i1 %638, label %689, label %639

639:                                              ; preds = %634
  %640 = getelementptr inbounds %struct.function, ptr %637, i64 0, i32 1
  %641 = load ptr, ptr %640, align 8, !tbaa !110
  %642 = load ptr, ptr %641, align 8, !tbaa !112
  %643 = getelementptr inbounds %struct.basic_block_def, ptr %642, i64 0, i32 6
  %644 = load ptr, ptr %643, align 8, !tbaa !114
  %645 = getelementptr inbounds %struct.control_flow_graph, ptr %641, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !116
  %647 = icmp eq ptr %644, %646
  br i1 %647, label %689, label %648

648:                                              ; preds = %639, %682
  %649 = phi ptr [ %684, %682 ], [ %644, %639 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %650 = getelementptr inbounds %struct.basic_block_def, ptr %649, i64 0, i32 13
  %651 = load i32, ptr %650, align 8, !tbaa !117, !noalias !118
  %652 = and i32 %651, 512
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %660

654:                                              ; preds = %648
  %655 = getelementptr inbounds %struct.basic_block_def, ptr %649, i64 0, i32 7
  %656 = load ptr, ptr %655, align 8, !tbaa !46, !noalias !118
  %657 = icmp eq ptr %656, null
  br i1 %657, label %660, label %658

658:                                              ; preds = %654
  %659 = load ptr, ptr %656, align 8, !tbaa !121, !noalias !118
  br label %660

660:                                              ; preds = %658, %654, %648
  %661 = phi ptr [ %659, %658 ], [ null, %654 ], [ null, %648 ]
  %662 = icmp eq ptr %661, null
  br i1 %662, label %665, label %663

663:                                              ; preds = %660
  %664 = load ptr, ptr %661, align 8, !tbaa !123, !noalias !118
  br label %665

665:                                              ; preds = %663, %660
  %666 = phi ptr [ %664, %663 ], [ null, %660 ]
  %667 = icmp eq ptr %666, null
  br i1 %667, label %682, label %668

668:                                              ; preds = %665, %678
  %669 = phi ptr [ %680, %678 ], [ %666, %665 ]
  %670 = load ptr, ptr %669, align 8, !tbaa !125
  %671 = load i32, ptr %670, align 8
  %672 = and i32 %671, 255
  %673 = icmp eq i32 %672, 7
  br i1 %673, label %674, label %675

674:                                              ; preds = %668
  call fastcc void @free_structures()
  br label %677

675:                                              ; preds = %668
  store ptr %670, ptr %415, align 8, !tbaa !127
  %676 = call ptr @walk_gimple_op(ptr noundef nonnull %670, ptr noundef nonnull @get_stmt_accesses, ptr noundef nonnull %9) #25
  br label %677

677:                                              ; preds = %675, %674
  br i1 %673, label %682, label %678

678:                                              ; preds = %677
  %679 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %669, i64 0, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !130
  %681 = icmp eq ptr %680, null
  br i1 %681, label %682, label %668, !llvm.loop !131

682:                                              ; preds = %678, %677, %665
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #25
  %683 = getelementptr inbounds %struct.basic_block_def, ptr %649, i64 0, i32 6
  %684 = load ptr, ptr %683, align 8, !tbaa !114
  %685 = load ptr, ptr %640, align 8, !tbaa !110
  %686 = getelementptr inbounds %struct.control_flow_graph, ptr %685, i64 0, i32 1
  %687 = load ptr, ptr %686, align 8, !tbaa !116
  %688 = icmp eq ptr %684, %687
  br i1 %688, label %689, label %648, !llvm.loop !132

689:                                              ; preds = %682, %639, %634
  br label %690

690:                                              ; preds = %689, %709
  %691 = phi i32 [ %710, %709 ], [ 0, %689 ]
  %692 = load ptr, ptr @structures, align 8
  %693 = icmp eq ptr %692, null
  br i1 %693, label %700, label %694

694:                                              ; preds = %690
  %695 = load i32, ptr %692, align 8, !tbaa !78
  %696 = icmp ugt i32 %695, %691
  br i1 %696, label %697, label %700

697:                                              ; preds = %694
  %698 = zext i32 %691 to i64
  %699 = getelementptr inbounds %struct.VEC_structure_base, ptr %692, i64 0, i32 2, i64 %698
  br label %700

700:                                              ; preds = %697, %694, %690
  %701 = phi ptr [ %699, %697 ], [ null, %694 ], [ null, %690 ]
  %702 = phi i1 [ false, %697 ], [ true, %694 ], [ true, %690 ]
  br i1 %702, label %711, label %703

703:                                              ; preds = %700
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  store ptr %701, ptr %416, align 8, !tbaa !133
  %704 = load ptr, ptr %630, align 8, !tbaa !59
  store ptr %704, ptr %8, align 8, !tbaa !135
  %705 = getelementptr inbounds %struct.data_structure, ptr %701, i64 0, i32 4
  %706 = load ptr, ptr %705, align 8, !tbaa !136
  %707 = icmp eq ptr %706, null
  br i1 %707, label %709, label %708

708:                                              ; preds = %703
  call void @htab_traverse(ptr noundef nonnull %706, ptr noundef nonnull @exclude_from_accs, ptr noundef nonnull %8) #25
  br label %709

709:                                              ; preds = %708, %703
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  %710 = add i32 %691, 1
  br label %690, !llvm.loop !137

711:                                              ; preds = %700, %629
  %712 = getelementptr inbounds %struct.cgraph_node, ptr %630, i64 0, i32 3
  %713 = load ptr, ptr %712, align 8, !tbaa !35
  %714 = icmp eq ptr %713, null
  br i1 %714, label %715, label %629, !llvm.loop !138

715:                                              ; preds = %711, %411
  br label %716

716:                                              ; preds = %715, %740
  %717 = phi i32 [ %741, %740 ], [ 0, %715 ]
  %718 = load ptr, ptr @structures, align 8
  %719 = icmp eq ptr %718, null
  br i1 %719, label %726, label %720

720:                                              ; preds = %716
  %721 = load i32, ptr %718, align 8, !tbaa !78
  %722 = icmp ugt i32 %721, %717
  br i1 %722, label %723, label %726

723:                                              ; preds = %720
  %724 = zext i32 %717 to i64
  %725 = getelementptr inbounds %struct.VEC_structure_base, ptr %718, i64 0, i32 2, i64 %724
  br label %726

726:                                              ; preds = %723, %720, %716
  %727 = phi ptr [ %725, %723 ], [ null, %720 ], [ null, %716 ]
  %728 = phi i1 [ false, %723 ], [ true, %720 ], [ true, %716 ]
  br i1 %728, label %742, label %729

729:                                              ; preds = %726
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #25
  store i8 1, ptr %7, align 1, !tbaa !46
  %730 = getelementptr inbounds %struct.data_structure, ptr %727, i64 0, i32 4
  %731 = load ptr, ptr %730, align 8, !tbaa !136
  %732 = icmp eq ptr %731, null
  br i1 %732, label %734, label %733

733:                                              ; preds = %729
  call void @htab_traverse(ptr noundef nonnull %731, ptr noundef nonnull @safe_cond_expr_check, ptr noundef nonnull %7) #25
  br label %734

734:                                              ; preds = %733, %729
  %735 = load i8, ptr %7, align 1, !tbaa !46
  %736 = icmp eq i8 %735, 0
  br i1 %736, label %737, label %738

737:                                              ; preds = %734
  call fastcc void @remove_structure(i32 noundef %717)
  br label %740

738:                                              ; preds = %734
  %739 = add i32 %717, 1
  br label %740

740:                                              ; preds = %738, %737
  %741 = phi i32 [ %739, %738 ], [ %717, %737 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  br label %716, !llvm.loop !139

742:                                              ; preds = %726
  %743 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %744 = icmp eq ptr %743, null
  br i1 %744, label %745, label %746

745:                                              ; preds = %756, %742
  br label %804

746:                                              ; preds = %742, %802
  %747 = phi i32 [ %803, %802 ], [ 0, %742 ]
  %748 = load ptr, ptr @structures, align 8
  %749 = icmp eq ptr %748, null
  br i1 %749, label %756, label %750

750:                                              ; preds = %746
  %751 = load i32, ptr %748, align 8, !tbaa !78
  %752 = icmp ugt i32 %751, %747
  br i1 %752, label %753, label %756

753:                                              ; preds = %750
  %754 = zext i32 %747 to i64
  %755 = getelementptr inbounds %struct.VEC_structure_base, ptr %748, i64 0, i32 2, i64 %754
  br label %756

756:                                              ; preds = %753, %750, %746
  %757 = phi ptr [ %755, %753 ], [ null, %750 ], [ null, %746 ]
  %758 = phi i1 [ false, %753 ], [ true, %750 ], [ true, %746 ]
  br i1 %758, label %745, label %759

759:                                              ; preds = %756
  %760 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %761 = call i64 @fwrite(ptr nonnull @.str.29, i64 24, i64 1, ptr %760)
  %762 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %763 = load ptr, ptr %757, align 8, !tbaa !86
  call void @print_generic_expr(ptr noundef %762, ptr noundef %763, i32 noundef 0) #25
  %764 = getelementptr inbounds %struct.data_structure, ptr %757, i64 0, i32 1
  %765 = load i32, ptr %764, align 8, !tbaa !80
  %766 = icmp sgt i32 %765, 0
  br i1 %766, label %767, label %792

767:                                              ; preds = %759
  %768 = getelementptr inbounds %struct.data_structure, ptr %757, i64 0, i32 3
  br label %769

769:                                              ; preds = %767, %785
  %770 = phi i64 [ 0, %767 ], [ %788, %785 ]
  %771 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %772 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %771)
  %773 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %774 = load ptr, ptr %768, align 8, !tbaa !82
  %775 = getelementptr inbounds %struct.field_entry, ptr %774, i64 %770, i32 2
  %776 = load ptr, ptr %775, align 8, !tbaa !83
  call void @print_generic_expr(ptr noundef %773, ptr noundef %776, i32 noundef 0) #25
  %777 = load ptr, ptr %768, align 8, !tbaa !82
  %778 = getelementptr inbounds %struct.field_entry, ptr %777, i64 %770, i32 4
  %779 = load ptr, ptr %778, align 8, !tbaa !140
  %780 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %781 = icmp ne ptr %780, null
  %782 = icmp ne ptr %779, null
  %783 = and i1 %782, %781
  br i1 %783, label %784, label %785

784:                                              ; preds = %769
  call void @htab_traverse(ptr noundef nonnull %779, ptr noundef nonnull @dump_field_acc, ptr noundef null) #25
  br label %785

785:                                              ; preds = %784, %769
  %786 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %787 = call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %786)
  %788 = add nuw nsw i64 %770, 1
  %789 = load i32, ptr %764, align 8, !tbaa !80
  %790 = sext i32 %789 to i64
  %791 = icmp slt i64 %788, %790
  br i1 %791, label %769, label %792, !llvm.loop !141

792:                                              ; preds = %785, %759
  %793 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %794 = call i64 @fwrite(ptr nonnull @.str.32, i64 22, i64 1, ptr %793)
  %795 = getelementptr inbounds %struct.data_structure, ptr %757, i64 0, i32 4
  %796 = load ptr, ptr %795, align 8, !tbaa !136
  %797 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %798 = icmp ne ptr %797, null
  %799 = icmp ne ptr %796, null
  %800 = and i1 %799, %798
  br i1 %800, label %801, label %802

801:                                              ; preds = %792
  call void @htab_traverse(ptr noundef nonnull %796, ptr noundef nonnull @dump_acc, ptr noundef null) #25
  br label %802

802:                                              ; preds = %801, %792
  %803 = add i32 %747, 1
  br label %746, !llvm.loop !142

804:                                              ; preds = %745, %861
  %805 = phi i64 [ %863, %861 ], [ 0, %745 ]
  %806 = phi i32 [ %864, %861 ], [ 0, %745 ]
  %807 = load ptr, ptr @structures, align 8
  %808 = icmp eq ptr %807, null
  br i1 %808, label %815, label %809

809:                                              ; preds = %804
  %810 = load i32, ptr %807, align 8, !tbaa !78
  %811 = icmp ugt i32 %810, %806
  br i1 %811, label %812, label %815

812:                                              ; preds = %809
  %813 = zext i32 %806 to i64
  %814 = getelementptr inbounds %struct.VEC_structure_base, ptr %807, i64 0, i32 2, i64 %813
  br label %815

815:                                              ; preds = %812, %809, %804
  %816 = phi ptr [ %814, %812 ], [ null, %809 ], [ null, %804 ]
  %817 = phi i1 [ false, %812 ], [ true, %809 ], [ true, %804 ]
  br i1 %817, label %899, label %818

818:                                              ; preds = %815
  %819 = getelementptr inbounds %struct.data_structure, ptr %816, i64 0, i32 2
  store i64 0, ptr %819, align 8, !tbaa !143
  %820 = getelementptr inbounds %struct.data_structure, ptr %816, i64 0, i32 1
  %821 = load i32, ptr %820, align 8, !tbaa !80
  %822 = icmp sgt i32 %821, 0
  br i1 %822, label %823, label %851

823:                                              ; preds = %818
  %824 = getelementptr inbounds %struct.data_structure, ptr %816, i64 0, i32 3
  %825 = getelementptr inbounds %struct.data_structure, ptr %816, i64 0, i32 3
  br label %826

826:                                              ; preds = %823, %841
  %827 = phi i64 [ 0, %823 ], [ %847, %841 ]
  %828 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %829 = icmp eq ptr %828, null
  br i1 %829, label %841, label %830

830:                                              ; preds = %826
  %831 = call i64 @fwrite(ptr nonnull @.str.38, i64 19, i64 1, ptr nonnull %828)
  %832 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %833 = load ptr, ptr %824, align 8, !tbaa !82
  %834 = getelementptr inbounds %struct.field_entry, ptr %833, i64 %827, i32 2
  %835 = load ptr, ptr %834, align 8, !tbaa !83
  call void @print_generic_expr(ptr noundef %832, ptr noundef %835, i32 noundef 0) #25
  %836 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %837 = load ptr, ptr %824, align 8, !tbaa !82
  %838 = getelementptr inbounds %struct.field_entry, ptr %837, i64 %827, i32 1
  %839 = load i64, ptr %838, align 8, !tbaa !144
  %840 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %836, ptr noundef nonnull @.str.39, i64 noundef %839)
  br label %841

841:                                              ; preds = %830, %826
  %842 = load ptr, ptr %825, align 8, !tbaa !82
  %843 = getelementptr inbounds %struct.field_entry, ptr %842, i64 %827, i32 1
  %844 = load i64, ptr %843, align 8, !tbaa !144
  %845 = load i64, ptr %819, align 8, !tbaa !143
  %846 = add nsw i64 %845, %844
  store i64 %846, ptr %819, align 8, !tbaa !143
  %847 = add nuw nsw i64 %827, 1
  %848 = load i32, ptr %820, align 8, !tbaa !80
  %849 = sext i32 %848 to i64
  %850 = icmp slt i64 %847, %849
  br i1 %850, label %826, label %851, !llvm.loop !145

851:                                              ; preds = %841, %818
  %852 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %853 = icmp eq ptr %852, null
  br i1 %853, label %861, label %854

854:                                              ; preds = %851
  %855 = call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %852)
  %856 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %857 = load ptr, ptr %816, align 8, !tbaa !86
  call void @print_generic_expr(ptr noundef %856, ptr noundef %857, i32 noundef 0) #25
  %858 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %859 = load i64, ptr %819, align 8, !tbaa !143
  %860 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %858, ptr noundef nonnull @.str.39, i64 noundef %859)
  br label %861

861:                                              ; preds = %854, %851
  %862 = load i64, ptr %819, align 8, !tbaa !143
  %863 = call i64 @llvm.smax.i64(i64 %862, i64 %805)
  %864 = add i32 %806, 1
  br label %804, !llvm.loop !146

865:                                              ; preds = %899, %896
  %866 = load ptr, ptr @structures, align 8
  %867 = icmp eq ptr %866, null
  br i1 %867, label %874, label %868

868:                                              ; preds = %865
  %869 = load i32, ptr %866, align 8, !tbaa !78
  %870 = icmp ugt i32 %869, %900
  br i1 %870, label %871, label %874

871:                                              ; preds = %868
  %872 = zext i32 %900 to i64
  %873 = getelementptr inbounds %struct.VEC_structure_base, ptr %866, i64 0, i32 2, i64 %872
  br label %874

874:                                              ; preds = %871, %868, %865
  %875 = phi ptr [ %873, %871 ], [ null, %868 ], [ null, %865 ]
  %876 = phi i1 [ false, %871 ], [ true, %868 ], [ true, %865 ]
  br i1 %876, label %901, label %877

877:                                              ; preds = %874
  %878 = getelementptr inbounds %struct.data_structure, ptr %875, i64 0, i32 2
  %879 = load i64, ptr %878, align 8, !tbaa !143
  %880 = mul nsw i64 %879, 100
  %881 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %882 = getelementptr inbounds %struct.param_info, ptr %881, i64 0, i32 1
  %883 = load i32, ptr %882, align 8, !tbaa !147
  %884 = sext i32 %883 to i64
  %885 = mul nsw i64 %805, %884
  %886 = icmp slt i64 %880, %885
  br i1 %886, label %887, label %897

887:                                              ; preds = %877
  %888 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %889 = icmp eq ptr %888, null
  br i1 %889, label %896, label %890

890:                                              ; preds = %887
  %891 = call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr nonnull %888)
  %892 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %893 = load ptr, ptr %875, align 8, !tbaa !86
  call void @print_generic_expr(ptr noundef %892, ptr noundef %893, i32 noundef 0) #25
  %894 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %895 = call i64 @fwrite(ptr nonnull @.str.37, i64 9, i64 1, ptr %894)
  br label %896

896:                                              ; preds = %890, %887
  call fastcc void @remove_structure(i32 noundef %900)
  br label %865, !llvm.loop !149

897:                                              ; preds = %877
  %898 = add i32 %900, 1
  br label %899, !llvm.loop !149

899:                                              ; preds = %815, %897
  %900 = phi i32 [ %898, %897 ], [ 0, %815 ]
  br label %865

901:                                              ; preds = %874, %1006
  %902 = phi i32 [ %1007, %1006 ], [ 0, %874 ]
  %903 = load ptr, ptr @structures, align 8
  %904 = icmp eq ptr %903, null
  br i1 %904, label %911, label %905

905:                                              ; preds = %901
  %906 = load i32, ptr %903, align 8, !tbaa !78
  %907 = icmp ugt i32 %906, %902
  br i1 %907, label %908, label %911

908:                                              ; preds = %905
  %909 = zext i32 %902 to i64
  %910 = getelementptr inbounds %struct.VEC_structure_base, ptr %903, i64 0, i32 2, i64 %909
  br label %911

911:                                              ; preds = %908, %905, %901
  %912 = phi ptr [ %910, %908 ], [ null, %905 ], [ null, %901 ]
  %913 = phi i1 [ false, %908 ], [ true, %905 ], [ true, %901 ]
  br i1 %913, label %1008, label %914

914:                                              ; preds = %911
  %915 = getelementptr inbounds %struct.data_structure, ptr %912, i64 0, i32 1
  %916 = load i32, ptr %915, align 8, !tbaa !80
  %917 = call ptr @sbitmap_alloc(i32 noundef %916) #25
  call void @sbitmap_ones(ptr noundef %917) #25
  %918 = load i32, ptr %915, align 8, !tbaa !80
  %919 = icmp sgt i32 %918, 0
  br i1 %919, label %920, label %932

920:                                              ; preds = %914
  %921 = getelementptr inbounds %struct.data_structure, ptr %912, i64 0, i32 3
  %922 = load ptr, ptr %921, align 8, !tbaa !82
  %923 = zext nneg i32 %918 to i64
  br label %924

924:                                              ; preds = %920, %924
  %925 = phi i64 [ 0, %920 ], [ %930, %924 ]
  %926 = phi i64 [ 0, %920 ], [ %929, %924 ]
  %927 = getelementptr inbounds %struct.field_entry, ptr %922, i64 %925, i32 1
  %928 = load i64, ptr %927, align 8, !tbaa !144
  %929 = call i64 @llvm.smax.i64(i64 %928, i64 %926)
  %930 = add nuw nsw i64 %925, 1
  %931 = icmp eq i64 %930, %923
  br i1 %931, label %932, label %924, !llvm.loop !150

932:                                              ; preds = %924, %914
  %933 = phi i64 [ 0, %914 ], [ %929, %924 ]
  %934 = udiv i64 %933, 100
  %935 = mul nuw nsw i64 %934, 90
  %936 = getelementptr inbounds %struct.data_structure, ptr %912, i64 0, i32 5
  store ptr null, ptr %936, align 8, !tbaa !151
  %937 = load i32, ptr %915, align 8, !tbaa !80
  %938 = icmp sgt i32 %937, 0
  br i1 %938, label %939, label %997

939:                                              ; preds = %932
  %940 = getelementptr inbounds %struct.data_structure, ptr %912, i64 0, i32 2
  br label %941

941:                                              ; preds = %939, %993
  %942 = phi i32 [ 0, %939 ], [ %994, %993 ]
  %943 = load i64, ptr %940, align 8, !tbaa !143
  %944 = icmp slt i64 %943, %935
  br i1 %944, label %993, label %945

945:                                              ; preds = %941
  %946 = load ptr, ptr %917, align 8, !tbaa !152
  %947 = icmp eq ptr %946, null
  br i1 %947, label %962, label %948

948:                                              ; preds = %945
  %949 = lshr i32 %942, 6
  %950 = zext nneg i32 %949 to i64
  %951 = getelementptr inbounds %struct.simple_bitmap_def, ptr %917, i64 0, i32 3, i64 %950
  %952 = load i64, ptr %951, align 8, !tbaa !99
  %953 = and i32 %942, 63
  %954 = zext nneg i32 %953 to i64
  %955 = shl nuw i64 1, %954
  %956 = and i64 %952, %955
  %957 = icmp eq i64 %956, 0
  br i1 %957, label %962, label %958

958:                                              ; preds = %948
  %959 = getelementptr inbounds i8, ptr %946, i64 %950
  %960 = load i8, ptr %959, align 1, !tbaa !46
  %961 = add i8 %960, -1
  store i8 %961, ptr %959, align 1, !tbaa !46
  br label %962

962:                                              ; preds = %958, %948, %945
  %963 = and i32 %942, 63
  %964 = zext nneg i32 %963 to i64
  %965 = shl nuw i64 1, %964
  %966 = xor i64 %965, -1
  %967 = lshr i32 %942, 6
  %968 = zext nneg i32 %967 to i64
  %969 = getelementptr inbounds %struct.simple_bitmap_def, ptr %917, i64 0, i32 3, i64 %968
  %970 = load i64, ptr %969, align 8, !tbaa !99
  %971 = and i64 %970, %966
  store i64 %971, ptr %969, align 8, !tbaa !99
  %972 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #25
  %973 = load ptr, ptr %936, align 8, !tbaa !151
  %974 = getelementptr inbounds %struct.field_cluster, ptr %972, i64 0, i32 1
  store ptr %973, ptr %974, align 8, !tbaa !154
  store ptr %972, ptr %936, align 8, !tbaa !151
  %975 = load i32, ptr %915, align 8, !tbaa !80
  %976 = call ptr @sbitmap_alloc(i32 noundef %975) #25
  store ptr %976, ptr %972, align 8, !tbaa !156
  call void @sbitmap_zero(ptr noundef %976) #25
  %977 = load ptr, ptr %972, align 8, !tbaa !156
  %978 = load ptr, ptr %977, align 8, !tbaa !152
  %979 = icmp eq ptr %978, null
  br i1 %979, label %989, label %980

980:                                              ; preds = %962
  %981 = getelementptr inbounds %struct.simple_bitmap_def, ptr %977, i64 0, i32 3, i64 %968
  %982 = load i64, ptr %981, align 8, !tbaa !99
  %983 = and i64 %982, %965
  %984 = icmp eq i64 %983, 0
  br i1 %984, label %985, label %989

985:                                              ; preds = %980
  %986 = getelementptr inbounds i8, ptr %978, i64 %968
  %987 = load i8, ptr %986, align 1, !tbaa !46
  %988 = add i8 %987, 1
  store i8 %988, ptr %986, align 1, !tbaa !46
  br label %989

989:                                              ; preds = %985, %980, %962
  %990 = getelementptr inbounds %struct.simple_bitmap_def, ptr %977, i64 0, i32 3, i64 %968
  %991 = load i64, ptr %990, align 8, !tbaa !99
  %992 = or i64 %991, %965
  store i64 %992, ptr %990, align 8, !tbaa !99
  br label %993

993:                                              ; preds = %989, %941
  %994 = add nuw nsw i32 %942, 1
  %995 = load i32, ptr %915, align 8, !tbaa !80
  %996 = icmp slt i32 %994, %995
  br i1 %996, label %941, label %997, !llvm.loop !157

997:                                              ; preds = %993, %932
  %998 = call i32 @sbitmap_first_set_bit(ptr noundef %917) #25
  %999 = icmp eq i32 %998, -1
  br i1 %999, label %1004, label %1000

1000:                                             ; preds = %997
  %1001 = call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #25
  %1002 = load ptr, ptr %936, align 8, !tbaa !151
  %1003 = getelementptr inbounds %struct.field_cluster, ptr %1001, i64 0, i32 1
  store ptr %1002, ptr %1003, align 8, !tbaa !154
  store ptr %1001, ptr %936, align 8, !tbaa !151
  store ptr %917, ptr %1001, align 8, !tbaa !156
  br label %1006

1004:                                             ; preds = %997
  %1005 = load ptr, ptr %917, align 8, !tbaa !152
  call void @free(ptr noundef %1005)
  call void @free(ptr noundef %917)
  br label %1006

1006:                                             ; preds = %1004, %1000
  %1007 = add i32 %902, 1
  br label %901, !llvm.loop !158

1008:                                             ; preds = %911
  br i1 %904, label %1012, label %1009

1009:                                             ; preds = %1008
  %1010 = load i32, ptr %903, align 8, !tbaa !78
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1017

1012:                                             ; preds = %1008, %1009
  %1013 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1711, label %1015

1015:                                             ; preds = %1012
  %1016 = call i64 @fwrite(ptr nonnull @.str.41, i64 39, i64 1, ptr nonnull %1013)
  br label %1711

1017:                                             ; preds = %1009
  %1018 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1026, label %1020

1020:                                             ; preds = %1017
  br i1 %904, label %1023, label %1021

1021:                                             ; preds = %1020
  %1022 = load i32, ptr %903, align 8, !tbaa !78
  br label %1023

1023:                                             ; preds = %1021, %1020
  %1024 = phi i32 [ %1022, %1021 ], [ 0, %1020 ]
  %1025 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1018, ptr noundef nonnull @.str.42, i32 noundef %1024)
  br label %1026

1026:                                             ; preds = %1023, %1017
  br label %1027

1027:                                             ; preds = %1026, %1159
  %1028 = phi i32 [ %1160, %1159 ], [ 0, %1026 ]
  %1029 = load ptr, ptr @structures, align 8
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1037, label %1031

1031:                                             ; preds = %1027
  %1032 = load i32, ptr %1029, align 8, !tbaa !78
  %1033 = icmp ugt i32 %1032, %1028
  br i1 %1033, label %1034, label %1037

1034:                                             ; preds = %1031
  %1035 = zext i32 %1028 to i64
  %1036 = getelementptr inbounds %struct.VEC_structure_base, ptr %1029, i64 0, i32 2, i64 %1035
  br label %1037

1037:                                             ; preds = %1034, %1031, %1027
  %1038 = phi ptr [ %1036, %1034 ], [ null, %1031 ], [ null, %1027 ]
  %1039 = phi i1 [ false, %1034 ], [ true, %1031 ], [ true, %1027 ]
  br i1 %1039, label %1161, label %1040

1040:                                             ; preds = %1037
  %1041 = getelementptr inbounds %struct.data_structure, ptr %1038, i64 0, i32 5
  %1042 = load ptr, ptr %1041, align 8, !tbaa !35
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1159, label %1044

1044:                                             ; preds = %1040
  %1045 = getelementptr inbounds %struct.data_structure, ptr %1038, i64 0, i32 3
  %1046 = getelementptr inbounds %struct.data_structure, ptr %1038, i64 0, i32 1
  %1047 = getelementptr inbounds %struct.data_structure, ptr %1038, i64 0, i32 6
  br label %1048

1048:                                             ; preds = %1044, %1150
  %1049 = phi ptr [ %1042, %1044 ], [ %1157, %1150 ]
  %1050 = phi i32 [ 0, %1044 ], [ %1083, %1150 ]
  %1051 = load ptr, ptr %1038, align 8, !tbaa !86
  %1052 = call fastcc ptr @gen_cluster_name(ptr noundef %1051, i32 noundef %1050, i32 noundef %1028)
  %1053 = load ptr, ptr %1045, align 8, !tbaa !82
  %1054 = load i32, ptr %1046, align 8, !tbaa !80
  %1055 = icmp sgt i32 %1054, 0
  call void @llvm.assume(i1 %1055)
  %1056 = zext nneg i32 %1054 to i64
  br label %1057

1057:                                             ; preds = %1048, %1077
  %1058 = phi i64 [ 0, %1048 ], [ %1080, %1077 ]
  %1059 = phi ptr [ null, %1048 ], [ %1079, %1077 ]
  %1060 = phi ptr [ null, %1048 ], [ %1078, %1077 ]
  %1061 = load ptr, ptr %1049, align 8, !tbaa !156
  %1062 = lshr i64 %1058, 6
  %1063 = and i64 %1062, 67108863
  %1064 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1061, i64 0, i32 3, i64 %1063
  %1065 = load i64, ptr %1064, align 8, !tbaa !99
  %1066 = and i64 %1058, 63
  %1067 = shl nuw i64 1, %1066
  %1068 = and i64 %1065, %1067
  %1069 = icmp eq i64 %1068, 0
  br i1 %1069, label %1077, label %1070

1070:                                             ; preds = %1057
  %1071 = getelementptr inbounds %struct.field_entry, ptr %1053, i64 %1058, i32 2
  %1072 = load ptr, ptr %1071, align 8, !tbaa !83
  %1073 = call ptr @unshare_expr(ptr noundef %1072) #25
  %1074 = icmp eq ptr %1060, null
  br i1 %1074, label %1077, label %1075

1075:                                             ; preds = %1070
  %1076 = getelementptr inbounds %struct.tree_common, ptr %1059, i64 0, i32 1
  store ptr %1073, ptr %1076, align 8, !tbaa !46
  br label %1077

1077:                                             ; preds = %1075, %1070, %1057
  %1078 = phi ptr [ %1060, %1057 ], [ %1060, %1075 ], [ %1073, %1070 ]
  %1079 = phi ptr [ %1059, %1057 ], [ %1073, %1075 ], [ %1073, %1070 ]
  %1080 = add nuw nsw i64 %1058, 1
  %1081 = icmp eq i64 %1080, %1056
  br i1 %1081, label %1082, label %1057, !llvm.loop !159

1082:                                             ; preds = %1077
  %1083 = add nuw nsw i32 %1050, 1
  %1084 = getelementptr inbounds %struct.tree_common, ptr %1079, i64 0, i32 1
  store ptr null, ptr %1084, align 8, !tbaa !46
  %1085 = load ptr, ptr %1038, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr null, ptr %6, align 8, !tbaa !35
  %1086 = getelementptr inbounds %struct.tree_type, ptr %1085, i64 0, i32 4
  %1087 = load ptr, ptr %1086, align 8, !tbaa !46
  %1088 = icmp eq ptr %1087, null
  br i1 %1088, label %1091, label %1089

1089:                                             ; preds = %1082
  %1090 = call ptr @unshare_expr(ptr noundef nonnull %1087) #25
  br label %1091

1091:                                             ; preds = %1089, %1082
  %1092 = phi ptr [ %1090, %1089 ], [ null, %1082 ]
  %1093 = call ptr @make_node_stat(i32 noundef 16) #25
  store ptr %1093, ptr %6, align 8, !tbaa !35
  %1094 = getelementptr inbounds %struct.tree_type, ptr %1093, i64 0, i32 2
  store ptr null, ptr %1094, align 8, !tbaa !46
  %1095 = call ptr @decl_attributes(ptr noundef nonnull %6, ptr noundef %1092, i32 noundef 8) #25
  %1096 = load i64, ptr %1085, align 8
  %1097 = and i64 %1096, 2199023255552
  %1098 = load ptr, ptr %6, align 8, !tbaa !35
  %1099 = load i64, ptr %1098, align 8
  %1100 = and i64 %1099, -2199023255553
  %1101 = or disjoint i64 %1100, %1097
  store i64 %1101, ptr %1098, align 8
  %1102 = icmp eq ptr %1078, null
  br i1 %1102, label %1114, label %1103

1103:                                             ; preds = %1091, %1103
  %1104 = phi ptr [ %1112, %1103 ], [ %1078, %1091 ]
  %1105 = load ptr, ptr %6, align 8, !tbaa !35
  %1106 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1104, i64 0, i32 4
  store ptr %1105, ptr %1106, align 8, !tbaa !46
  %1107 = load i64, ptr %1105, align 8
  %1108 = load i64, ptr %1104, align 8
  %1109 = and i64 %1107, 2199023255552
  %1110 = or i64 %1109, %1108
  store i64 %1110, ptr %1104, align 8
  %1111 = getelementptr inbounds %struct.tree_common, ptr %1104, i64 0, i32 1
  %1112 = load ptr, ptr %1111, align 8, !tbaa !46
  %1113 = icmp eq ptr %1112, null
  br i1 %1113, label %1114, label %1103, !llvm.loop !160

1114:                                             ; preds = %1103, %1091
  %1115 = load ptr, ptr %6, align 8, !tbaa !35
  %1116 = getelementptr inbounds %struct.tree_type, ptr %1115, i64 0, i32 1
  store ptr %1078, ptr %1116, align 8, !tbaa !46
  call void @layout_type(ptr noundef %1115) #25
  %1117 = load ptr, ptr %6, align 8, !tbaa !35
  %1118 = getelementptr inbounds %struct.tree_type, ptr %1117, i64 0, i32 12
  store ptr %1052, ptr %1118, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  %1119 = load ptr, ptr %1045, align 8, !tbaa !82
  %1120 = load i32, ptr %1046, align 8, !tbaa !80
  %1121 = icmp sgt i32 %1120, 0
  br i1 %1121, label %1122, label %1140

1122:                                             ; preds = %1114
  %1123 = load ptr, ptr %1049, align 8, !tbaa !156
  %1124 = zext nneg i32 %1120 to i64
  br label %1125

1125:                                             ; preds = %1122, %1137
  %1126 = phi i64 [ 0, %1122 ], [ %1138, %1137 ]
  %1127 = lshr i64 %1126, 6
  %1128 = and i64 %1127, 67108863
  %1129 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1123, i64 0, i32 3, i64 %1128
  %1130 = load i64, ptr %1129, align 8, !tbaa !99
  %1131 = and i64 %1126, 63
  %1132 = shl nuw i64 1, %1131
  %1133 = and i64 %1130, %1132
  %1134 = icmp eq i64 %1133, 0
  br i1 %1134, label %1137, label %1135

1135:                                             ; preds = %1125
  %1136 = getelementptr inbounds %struct.field_entry, ptr %1119, i64 %1126, i32 3
  store ptr %1117, ptr %1136, align 8, !tbaa !161
  br label %1137

1137:                                             ; preds = %1135, %1125
  %1138 = add nuw nsw i64 %1126, 1
  %1139 = icmp eq i64 %1138, %1124
  br i1 %1139, label %1140, label %1125, !llvm.loop !162

1140:                                             ; preds = %1137, %1114
  %1141 = load ptr, ptr %1047, align 8, !tbaa !35
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1148, label %1143

1143:                                             ; preds = %1140
  %1144 = getelementptr inbounds %struct.VEC_tree_base, ptr %1141, i64 0, i32 1
  %1145 = load i32, ptr %1144, align 4, !tbaa !163
  %1146 = load i32, ptr %1141, align 8, !tbaa !95
  %1147 = icmp eq i32 %1145, %1146
  br i1 %1147, label %1148, label %1150

1148:                                             ; preds = %1143, %1140
  %1149 = call ptr @vec_heap_p_reserve(ptr noundef %1141, i32 noundef 1) #25
  store ptr %1149, ptr %1047, align 8, !tbaa !35
  br label %1150

1150:                                             ; preds = %1148, %1143
  %1151 = load ptr, ptr %1047, align 8, !tbaa !35
  %1152 = load i32, ptr %1151, align 8, !tbaa !95
  %1153 = add i32 %1152, 1
  store i32 %1153, ptr %1151, align 8, !tbaa !95
  %1154 = zext i32 %1152 to i64
  %1155 = getelementptr inbounds %struct.VEC_tree_base, ptr %1151, i64 0, i32 2, i64 %1154
  store ptr %1117, ptr %1155, align 8, !tbaa !35
  %1156 = getelementptr inbounds %struct.field_cluster, ptr %1049, i64 0, i32 1
  %1157 = load ptr, ptr %1156, align 8, !tbaa !35
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1159, label %1048, !llvm.loop !164

1159:                                             ; preds = %1150, %1040
  %1160 = add nuw i32 %1028, 1
  br label %1027, !llvm.loop !165

1161:                                             ; preds = %1037
  %1162 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1165

1164:                                             ; preds = %1177, %1161
  br label %1215

1165:                                             ; preds = %1161
  %1166 = call i64 @fwrite(ptr nonnull @.str.46, i64 65, i64 1, ptr nonnull %1162)
  br label %1167

1167:                                             ; preds = %1213, %1165
  %1168 = phi i32 [ 0, %1165 ], [ %1214, %1213 ]
  %1169 = load ptr, ptr @structures, align 8
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1177, label %1171

1171:                                             ; preds = %1167
  %1172 = load i32, ptr %1169, align 8, !tbaa !78
  %1173 = icmp ugt i32 %1172, %1168
  br i1 %1173, label %1174, label %1177

1174:                                             ; preds = %1171
  %1175 = zext i32 %1168 to i64
  %1176 = getelementptr inbounds %struct.VEC_structure_base, ptr %1169, i64 0, i32 2, i64 %1175
  br label %1177

1177:                                             ; preds = %1174, %1171, %1167
  %1178 = phi ptr [ %1176, %1174 ], [ null, %1171 ], [ null, %1167 ]
  %1179 = phi i1 [ false, %1174 ], [ true, %1171 ], [ true, %1167 ]
  br i1 %1179, label %1164, label %1180

1180:                                             ; preds = %1177
  %1181 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1195, label %1183

1183:                                             ; preds = %1180
  %1184 = call i64 @fwrite(ptr nonnull @.str.47, i64 10, i64 1, ptr nonnull %1181)
  %1185 = load ptr, ptr %1178, align 8, !tbaa !86
  call fastcc void @dump_struct_type(ptr noundef %1185, i64 noundef 0)
  %1186 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1187 = getelementptr inbounds %struct.data_structure, ptr %1178, i64 0, i32 6
  %1188 = load ptr, ptr %1187, align 8, !tbaa !166
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1192, label %1190

1190:                                             ; preds = %1183
  %1191 = load i32, ptr %1188, align 8, !tbaa !95
  br label %1192

1192:                                             ; preds = %1190, %1183
  %1193 = phi i32 [ %1191, %1190 ], [ 0, %1183 ]
  %1194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1186, ptr noundef nonnull @.str.48, i32 noundef %1193)
  br label %1195

1195:                                             ; preds = %1192, %1180
  %1196 = getelementptr inbounds %struct.data_structure, ptr %1178, i64 0, i32 6
  br label %1197

1197:                                             ; preds = %1211, %1195
  %1198 = phi i32 [ 0, %1195 ], [ %1212, %1211 ]
  %1199 = load ptr, ptr %1196, align 8, !tbaa !166
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1208, label %1201

1201:                                             ; preds = %1197
  %1202 = load i32, ptr %1199, align 8, !tbaa !95
  %1203 = icmp ugt i32 %1202, %1198
  br i1 %1203, label %1204, label %1208

1204:                                             ; preds = %1201
  %1205 = zext i32 %1198 to i64
  %1206 = getelementptr inbounds %struct.VEC_tree_base, ptr %1199, i64 0, i32 2, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !35
  br label %1208

1208:                                             ; preds = %1204, %1201, %1197
  %1209 = phi ptr [ %1207, %1204 ], [ null, %1201 ], [ null, %1197 ]
  %1210 = phi i1 [ false, %1204 ], [ true, %1201 ], [ true, %1197 ]
  br i1 %1210, label %1213, label %1211

1211:                                             ; preds = %1208
  call fastcc void @dump_struct_type(ptr noundef %1209, i64 noundef 0)
  %1212 = add i32 %1198, 1
  br label %1197, !llvm.loop !167

1213:                                             ; preds = %1208
  %1214 = add i32 %1168, 1
  br label %1167, !llvm.loop !168

1215:                                             ; preds = %1164, %1243
  %1216 = phi i64 [ %1244, %1243 ], [ 0, %1164 ]
  %1217 = phi i64 [ %1245, %1243 ], [ 0, %1164 ]
  %1218 = icmp eq i64 %1217, 0
  br i1 %1218, label %1221, label %1219

1219:                                             ; preds = %1215
  %1220 = call ptr @htab_create(i64 noundef %1216, ptr noundef nonnull @new_var_hash, ptr noundef nonnull @new_var_eq, ptr noundef null) #25
  store ptr %1220, ptr @new_global_vars, align 8, !tbaa !35
  br label %1221

1221:                                             ; preds = %1219, %1215
  %1222 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !35
  %1223 = icmp eq ptr %1222, null
  br i1 %1223, label %1243, label %1224

1224:                                             ; preds = %1221, %1238
  %1225 = phi ptr [ %1241, %1238 ], [ %1222, %1221 ]
  %1226 = phi i64 [ %1239, %1238 ], [ %1216, %1221 ]
  %1227 = load ptr, ptr %1225, align 8, !tbaa !70
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1238, label %1229

1229:                                             ; preds = %1224
  %1230 = load i64, ptr %1227, align 8
  %1231 = and i64 %1230, 65535
  %1232 = icmp eq i64 %1231, 32
  br i1 %1232, label %1233, label %1238

1233:                                             ; preds = %1229
  br i1 %1218, label %1234, label %1236

1234:                                             ; preds = %1233
  %1235 = add i64 %1226, 1
  br label %1238

1236:                                             ; preds = %1233
  %1237 = load ptr, ptr @new_global_vars, align 8, !tbaa !35
  call fastcc void @create_new_var(ptr noundef nonnull %1227, ptr noundef %1237)
  br label %1238

1238:                                             ; preds = %1236, %1234, %1229, %1224
  %1239 = phi i64 [ %1226, %1229 ], [ %1226, %1224 ], [ %1226, %1236 ], [ %1235, %1234 ]
  %1240 = getelementptr inbounds %struct.varpool_node, ptr %1225, i64 0, i32 2
  %1241 = load ptr, ptr %1240, align 8, !tbaa !35
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1243, label %1224, !llvm.loop !169

1243:                                             ; preds = %1238, %1221
  %1244 = phi i64 [ %1216, %1221 ], [ %1239, %1238 ]
  %1245 = add nuw nsw i64 %1217, 1
  %1246 = icmp eq i64 %1217, 0
  br i1 %1246, label %1215, label %1247, !llvm.loop !170

1247:                                             ; preds = %1243
  %1248 = load ptr, ptr @new_global_vars, align 8, !tbaa !35
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1251, label %1250

1250:                                             ; preds = %1247
  call void @htab_traverse(ptr noundef nonnull %1248, ptr noundef nonnull @update_varpool_with_new_var, ptr noundef null) #25
  br label %1251

1251:                                             ; preds = %1250, %1247
  %1252 = load ptr, ptr @new_global_vars, align 8, !tbaa !35
  %1253 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1254 = icmp ne ptr %1253, null
  %1255 = icmp ne ptr %1252, null
  %1256 = and i1 %1255, %1254
  br i1 %1256, label %1257, label %1258

1257:                                             ; preds = %1251
  call void @htab_traverse(ptr noundef nonnull %1252, ptr noundef nonnull @dump_new_var, ptr noundef null) #25
  br label %1258

1258:                                             ; preds = %1257, %1251
  call void @bitmap_obstack_initialize(ptr noundef null) #25
  %1259 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %1260 = icmp eq ptr %1259, null
  br i1 %1260, label %1706, label %1261

1261:                                             ; preds = %1258
  %1262 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 1
  %1263 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 2
  br label %1264

1264:                                             ; preds = %1261, %1702
  %1265 = phi ptr [ %1259, %1261 ], [ %1704, %1702 ]
  %1266 = getelementptr inbounds %struct.cgraph_node, ptr %1265, i64 0, i32 27
  %1267 = load i16, ptr %1266, align 4
  %1268 = and i16 %1267, 32
  %1269 = icmp eq i16 %1268, 0
  br i1 %1269, label %1702, label %1270

1270:                                             ; preds = %1264
  %1271 = load ptr, ptr %1265, align 8, !tbaa !59
  %1272 = icmp eq ptr %1271, null
  br i1 %1272, label %1702, label %1273

1273:                                             ; preds = %1270
  %1274 = getelementptr inbounds %struct.tree_function_decl, ptr %1271, i64 0, i32 1
  %1275 = load ptr, ptr %1274, align 8, !tbaa !46
  call void @push_cfun(ptr noundef %1275) #25
  %1276 = load ptr, ptr %1265, align 8, !tbaa !59
  store ptr %1276, ptr @current_function_decl, align 8, !tbaa !35
  %1277 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1286, label %1279

1279:                                             ; preds = %1273
  %1280 = load ptr, ptr %1265, align 8, !tbaa !59
  %1281 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1280, i64 0, i32 3
  %1282 = load ptr, ptr %1281, align 8, !tbaa !46
  %1283 = getelementptr inbounds %struct.tree_identifier, ptr %1282, i64 0, i32 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !46
  %1285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1277, ptr noundef nonnull @.str.58, ptr noundef %1284)
  br label %1286

1286:                                             ; preds = %1279, %1273
  %1287 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1288 = getelementptr inbounds %struct.function, ptr %1287, i64 0, i32 3
  %1289 = load ptr, ptr %1288, align 8, !tbaa !171
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1293, label %1291

1291:                                             ; preds = %1286
  %1292 = load ptr, ptr %1289, align 8, !tbaa !172
  br label %1293

1293:                                             ; preds = %1291, %1286
  %1294 = phi ptr [ %1292, %1291 ], [ null, %1286 ]
  %1295 = call i64 @htab_elements(ptr noundef %1294) #25
  %1296 = call ptr @htab_create(i64 noundef %1295, ptr noundef nonnull @new_var_hash, ptr noundef nonnull @new_var_eq, ptr noundef null) #25
  store ptr %1296, ptr @new_local_vars, align 8, !tbaa !35
  %1297 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1298 = getelementptr inbounds %struct.function, ptr %1297, i64 0, i32 3
  %1299 = load ptr, ptr %1298, align 8, !tbaa !171
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1303, label %1301

1301:                                             ; preds = %1293
  %1302 = load ptr, ptr %1299, align 8, !tbaa !172
  br label %1303

1303:                                             ; preds = %1301, %1293
  %1304 = phi ptr [ %1302, %1301 ], [ null, %1293 ]
  %1305 = getelementptr inbounds %struct.htab, ptr %1304, i64 0, i32 3
  %1306 = load ptr, ptr %1305, align 8, !tbaa !176
  %1307 = call i64 @htab_size(ptr noundef %1304) #25
  %1308 = getelementptr inbounds ptr, ptr %1306, i64 %1307
  br label %1309

1309:                                             ; preds = %1313, %1303
  %1310 = phi ptr [ %1306, %1303 ], [ %1314, %1313 ]
  %1311 = load ptr, ptr %1310, align 8, !tbaa !35
  %1312 = icmp ult ptr %1311, inttoptr (i64 2 to ptr)
  br i1 %1312, label %1313, label %1316

1313:                                             ; preds = %1309
  %1314 = getelementptr inbounds ptr, ptr %1310, i64 1
  %1315 = icmp ult ptr %1314, %1308
  br i1 %1315, label %1309, label %1316, !llvm.loop !178

1316:                                             ; preds = %1313, %1309
  %1317 = phi ptr [ %1310, %1309 ], [ %1314, %1313 ]
  %1318 = icmp ult ptr %1317, %1308
  br i1 %1318, label %1319, label %1321

1319:                                             ; preds = %1316
  %1320 = load ptr, ptr %1317, align 8, !tbaa !35
  br label %1321

1321:                                             ; preds = %1319, %1316
  %1322 = phi ptr [ %1320, %1319 ], [ null, %1316 ]
  %1323 = icmp ult ptr %1317, %1308
  br i1 %1323, label %1324, label %1354

1324:                                             ; preds = %1321, %1351
  %1325 = phi ptr [ %1352, %1351 ], [ %1322, %1321 ]
  %1326 = phi ptr [ %1345, %1351 ], [ %1317, %1321 ]
  %1327 = load i64, ptr %1325, align 8
  %1328 = and i64 %1327, 67108864
  %1329 = icmp eq i64 %1328, 0
  br i1 %1329, label %1330, label %1336

1330:                                             ; preds = %1324
  %1331 = getelementptr inbounds %struct.tree_decl_common, ptr %1325, i64 0, i32 2
  %1332 = load i64, ptr %1331, align 8
  %1333 = lshr i64 %1332, 25
  %1334 = trunc i64 %1333 to i8
  %1335 = and i8 %1334, 1
  br label %1336

1336:                                             ; preds = %1330, %1324
  %1337 = phi i8 [ 1, %1324 ], [ %1335, %1330 ]
  %1338 = icmp eq i8 %1337, 0
  br i1 %1338, label %1339, label %1341

1339:                                             ; preds = %1336
  %1340 = load ptr, ptr @new_local_vars, align 8, !tbaa !35
  call fastcc void @create_new_var(ptr noundef nonnull %1325, ptr noundef %1340)
  br label %1341

1341:                                             ; preds = %1339, %1336
  br label %1342

1342:                                             ; preds = %1341, %1347
  %1343 = phi ptr [ %1345, %1347 ], [ %1326, %1341 ]
  %1344 = phi ptr [ %1350, %1347 ], [ undef, %1341 ]
  %1345 = getelementptr inbounds ptr, ptr %1343, i64 1
  %1346 = icmp ult ptr %1345, %1308
  br i1 %1346, label %1347, label %1351

1347:                                             ; preds = %1342
  %1348 = load ptr, ptr %1345, align 8, !tbaa !35
  %1349 = icmp ult ptr %1348, inttoptr (i64 2 to ptr)
  %1350 = select i1 %1349, ptr %1344, ptr %1348
  br i1 %1349, label %1342, label %1351

1351:                                             ; preds = %1347, %1342
  %1352 = phi ptr [ null, %1342 ], [ %1350, %1347 ]
  %1353 = icmp ult ptr %1345, %1308
  br i1 %1353, label %1324, label %1354, !llvm.loop !179

1354:                                             ; preds = %1351, %1321
  %1355 = load ptr, ptr @new_local_vars, align 8, !tbaa !35
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1358, label %1357

1357:                                             ; preds = %1354
  call void @htab_traverse(ptr noundef nonnull %1355, ptr noundef nonnull @finalize_new_vars_creation, ptr noundef null) #25
  br label %1358

1358:                                             ; preds = %1357, %1354
  %1359 = load ptr, ptr @new_local_vars, align 8, !tbaa !35
  %1360 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1361 = icmp ne ptr %1360, null
  %1362 = icmp ne ptr %1359, null
  %1363 = and i1 %1362, %1361
  br i1 %1363, label %1364, label %1365

1364:                                             ; preds = %1358
  call void @htab_traverse(ptr noundef nonnull %1359, ptr noundef nonnull @dump_new_var, ptr noundef null) #25
  br label %1365

1365:                                             ; preds = %1364, %1358
  %1366 = load ptr, ptr %1265, align 8, !tbaa !59
  %1367 = load ptr, ptr @alloc_sites, align 8, !tbaa !35
  %1368 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %1369 = call i32 %1368(ptr noundef %1366) #25
  %1370 = call ptr @htab_find_with_hash(ptr noundef %1367, ptr noundef %1366, i32 noundef %1369) #25
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1636, label %1372

1372:                                             ; preds = %1365
  %1373 = load ptr, ptr %1265, align 8, !tbaa !59
  %1374 = getelementptr inbounds %struct.func_alloc_sites, ptr %1370, i64 0, i32 1
  br label %1375

1375:                                             ; preds = %1634, %1372
  %1376 = phi i32 [ 0, %1372 ], [ %1635, %1634 ]
  %1377 = load ptr, ptr %1374, align 8, !tbaa !102
  %1378 = icmp eq ptr %1377, null
  br i1 %1378, label %1385, label %1379

1379:                                             ; preds = %1375
  %1380 = load i32, ptr %1377, align 8, !tbaa !105
  %1381 = icmp ugt i32 %1380, %1376
  br i1 %1381, label %1382, label %1385

1382:                                             ; preds = %1379
  %1383 = zext i32 %1376 to i64
  %1384 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %1377, i64 0, i32 2, i64 %1383
  br label %1385

1385:                                             ; preds = %1382, %1379, %1375
  %1386 = phi ptr [ %1384, %1382 ], [ null, %1379 ], [ null, %1375 ]
  %1387 = phi i1 [ false, %1382 ], [ true, %1379 ], [ true, %1375 ]
  br i1 %1387, label %1636, label %1388

1388:                                             ; preds = %1385
  %1389 = load ptr, ptr %1386, align 8, !tbaa !180
  %1390 = getelementptr inbounds %struct.alloc_site, ptr %1386, i64 0, i32 1
  %1391 = load ptr, ptr %1390, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !35
  %1392 = call fastcc ptr @get_final_alloc_stmt(ptr noundef %1389)
  %1393 = load ptr, ptr %1391, align 8, !tbaa !86
  %1394 = icmp eq ptr %1389, null
  br i1 %1394, label %1470, label %1395

1395:                                             ; preds = %1388
  %1396 = load i32, ptr %1389, align 8
  %1397 = and i32 %1396, 255
  %1398 = icmp eq i32 %1397, 8
  br i1 %1398, label %1399, label %1470

1399:                                             ; preds = %1395
  %1400 = zext nneg i32 %1397 to i64
  %1401 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1400
  %1402 = load i32, ptr %1401, align 4, !tbaa !50
  %1403 = zext i32 %1402 to i64
  %1404 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1403
  %1405 = load i64, ptr %1404, align 8, !tbaa !99
  %1406 = icmp eq i64 %1405, 0
  br i1 %1406, label %1407, label %1408

1407:                                             ; preds = %1399
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %1408

1408:                                             ; preds = %1407, %1399
  %1409 = getelementptr inbounds i8, ptr %1389, i64 %1405
  %1410 = getelementptr inbounds ptr, ptr %1409, i64 3
  %1411 = load ptr, ptr %1410, align 8, !tbaa !35
  %1412 = load i64, ptr %1411, align 8
  %1413 = and i64 %1412, 65535
  %1414 = icmp ne i64 %1413, 141
  %1415 = and i64 %1412, 131072
  %1416 = icmp eq i64 %1415, 0
  %1417 = and i1 %1414, %1416
  br i1 %1417, label %1470, label %1418

1418:                                             ; preds = %1408
  %1419 = getelementptr inbounds %struct.tree_type, ptr %1393, i64 0, i32 3
  %1420 = load ptr, ptr %1419, align 8, !tbaa !46
  %1421 = getelementptr inbounds %struct.tree_int_cst, ptr %1420, i64 0, i32 1
  %1422 = load i64, ptr %1421, align 8, !tbaa !46
  %1423 = icmp eq ptr %1420, null
  br i1 %1423, label %1424, label %1425

1424:                                             ; preds = %1418
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1815, ptr noundef nonnull @.str.4) #25
  br label %1425

1425:                                             ; preds = %1424, %1418
  %1426 = load i64, ptr %1411, align 8
  %1427 = and i64 %1426, 65535
  %1428 = icmp eq i64 %1427, 141
  br i1 %1428, label %1429, label %1459

1429:                                             ; preds = %1425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %1430 = call fastcc zeroext i8 @is_result_of_mult(ptr noundef nonnull %1411, ptr noundef nonnull %4, ptr noundef %1420), !range !72
  %1431 = icmp eq i8 %1430, 0
  br i1 %1431, label %1432, label %1457

1432:                                             ; preds = %1429
  %1433 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %1434 = call ptr @create_tmp_var(ptr noundef %1433, ptr noundef null) #25
  store ptr %1434, ptr %4, align 8, !tbaa !35
  %1435 = icmp eq ptr %1434, null
  br i1 %1435, label %1438, label %1436

1436:                                             ; preds = %1432
  %1437 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %1434) #25
  br label %1438

1438:                                             ; preds = %1436, %1432
  %1439 = call i32 @exact_log2(i64 noundef %1422) #25
  %1440 = icmp eq i32 %1439, -1
  br i1 %1440, label %1441, label %1443

1441:                                             ; preds = %1438
  %1442 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 67, ptr noundef %1434, ptr noundef nonnull %1411, ptr noundef %1420) #25
  br label %1449

1443:                                             ; preds = %1438
  %1444 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %1445 = call i32 @exact_log2(i64 noundef %1422) #25
  %1446 = sext i32 %1445 to i64
  %1447 = call ptr @build_int_cst(ptr noundef %1444, i64 noundef %1446) #25
  %1448 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 84, ptr noundef %1434, ptr noundef nonnull %1411, ptr noundef %1447) #25
  br label %1449

1449:                                             ; preds = %1443, %1441
  %1450 = phi ptr [ %1442, %1441 ], [ %1448, %1443 ]
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %1450) #25
  %1451 = load i32, ptr %1450, align 8
  %1452 = and i32 %1451, 255
  %1453 = add nsw i32 %1452, -10
  %1454 = icmp ult i32 %1453, -9
  br i1 %1454, label %1456, label %1455

1455:                                             ; preds = %1449
  call void @gimple_set_modified(ptr noundef nonnull %1450, i8 noundef zeroext 1) #25
  call void @update_stmt_operands(ptr noundef nonnull %1450) #25
  br label %1456

1456:                                             ; preds = %1455, %1449
  call void @mark_symbols_for_renaming(ptr noundef nonnull %1450) #25
  br label %1457

1457:                                             ; preds = %1456, %1429
  %1458 = load ptr, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %1470

1459:                                             ; preds = %1425
  %1460 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1427
  %1461 = load i32, ptr %1460, align 4, !tbaa !50
  %1462 = icmp eq i32 %1461, 1
  br i1 %1462, label %1463, label %1470

1463:                                             ; preds = %1459
  %1464 = getelementptr inbounds %struct.tree_common, ptr %1420, i64 0, i32 2
  %1465 = load ptr, ptr %1464, align 8, !tbaa !46
  %1466 = call i32 @multiple_of_p(ptr noundef %1465, ptr noundef nonnull %1411, ptr noundef %1420) #25
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1470, label %1468

1468:                                             ; preds = %1463
  %1469 = call ptr @int_const_binop(i32 noundef 67, ptr noundef nonnull %1411, ptr noundef %1420, i32 noundef 0) #25
  br label %1470

1470:                                             ; preds = %1468, %1463, %1459, %1457, %1408, %1395, %1388
  %1471 = phi ptr [ %1458, %1457 ], [ %1469, %1468 ], [ null, %1388 ], [ null, %1395 ], [ null, %1408 ], [ null, %1463 ], [ null, %1459 ]
  %1472 = load ptr, ptr %5, align 8, !tbaa !35
  %1473 = icmp eq ptr %1472, null
  br i1 %1473, label %1482, label %1474

1474:                                             ; preds = %1470
  %1475 = getelementptr inbounds %struct.gimple_seq_d, ptr %1472, i64 0, i32 1
  %1476 = load ptr, ptr %1475, align 8, !tbaa !183
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1480, label %1478

1478:                                             ; preds = %1474
  %1479 = load ptr, ptr %1476, align 8, !tbaa !125
  br label %1480

1480:                                             ; preds = %1478, %1474
  %1481 = phi ptr [ %1479, %1478 ], [ null, %1474 ]
  call fastcc void @insert_seq_after_stmt(ptr noundef %1392, ptr noundef nonnull %1472)
  br label %1482

1482:                                             ; preds = %1480, %1470
  %1483 = phi ptr [ %1481, %1480 ], [ %1392, %1470 ]
  %1484 = getelementptr inbounds %struct.data_structure, ptr %1391, i64 0, i32 6
  %1485 = icmp ne ptr %1471, null
  %1486 = icmp ne ptr %1389, null
  %1487 = and i1 %1486, %1485
  br label %1488

1488:                                             ; preds = %1620, %1482
  %1489 = phi i32 [ 0, %1482 ], [ %1633, %1620 ]
  %1490 = phi ptr [ %1483, %1482 ], [ %1594, %1620 ]
  %1491 = load ptr, ptr %1484, align 8, !tbaa !166
  %1492 = icmp eq ptr %1491, null
  br i1 %1492, label %1500, label %1493

1493:                                             ; preds = %1488
  %1494 = load i32, ptr %1491, align 8, !tbaa !95
  %1495 = icmp ugt i32 %1494, %1489
  br i1 %1495, label %1496, label %1500

1496:                                             ; preds = %1493
  %1497 = zext i32 %1489 to i64
  %1498 = getelementptr inbounds %struct.VEC_tree_base, ptr %1491, i64 0, i32 2, i64 %1497
  %1499 = load ptr, ptr %1498, align 8, !tbaa !35
  br label %1500

1500:                                             ; preds = %1496, %1493, %1488
  %1501 = phi ptr [ %1499, %1496 ], [ null, %1493 ], [ null, %1488 ]
  %1502 = phi i1 [ false, %1496 ], [ true, %1493 ], [ true, %1488 ]
  br i1 %1502, label %1634, label %1503

1503:                                             ; preds = %1500
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %1504 = icmp ne ptr %1501, null
  %1505 = and i1 %1487, %1504
  br i1 %1505, label %1507, label %1506

1506:                                             ; preds = %1503
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1760, ptr noundef nonnull @.str.4) #25
  br label %1507

1507:                                             ; preds = %1506, %1503
  %1508 = call ptr @gimple_seq_alloc() #25
  store ptr %1508, ptr %5, align 8, !tbaa !35
  %1509 = call fastcc ptr @gen_size(ptr noundef %1471, ptr noundef %1501, ptr noundef nonnull %2)
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %1509) #25
  %1510 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %1511 = call ptr @create_tmp_var(ptr noundef %1510, ptr noundef null) #25
  %1512 = call zeroext i8 @add_referenced_var(ptr noundef %1511) #25
  %1513 = load i32, ptr %1389, align 8
  %1514 = and i32 %1513, 255
  %1515 = add nsw i32 %1514, -10
  %1516 = icmp ult i32 %1515, -9
  br i1 %1516, label %1530, label %1517

1517:                                             ; preds = %1507
  %1518 = zext nneg i32 %1514 to i64
  %1519 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1518
  %1520 = load i32, ptr %1519, align 4, !tbaa !50
  %1521 = zext i32 %1520 to i64
  %1522 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1521
  %1523 = load i64, ptr %1522, align 8, !tbaa !99
  %1524 = icmp eq i64 %1523, 0
  br i1 %1524, label %1525, label %1526

1525:                                             ; preds = %1517
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %1526

1526:                                             ; preds = %1525, %1517
  %1527 = getelementptr ptr, ptr %1389, i64 1
  %1528 = getelementptr i8, ptr %1527, i64 %1523
  %1529 = load ptr, ptr %1528, align 8, !tbaa !35
  br label %1530

1530:                                             ; preds = %1526, %1507
  %1531 = phi ptr [ %1529, %1526 ], [ null, %1507 ]
  %1532 = load i64, ptr %1531, align 8
  %1533 = and i64 %1532, 65535
  %1534 = icmp eq i64 %1533, 121
  br i1 %1534, label %1535, label %1538

1535:                                             ; preds = %1530
  %1536 = getelementptr inbounds %struct.tree_exp, ptr %1531, i64 0, i32 3
  %1537 = load ptr, ptr %1536, align 8, !tbaa !46
  br label %1538

1538:                                             ; preds = %1535, %1530
  %1539 = phi ptr [ %1537, %1535 ], [ null, %1530 ]
  %1540 = load ptr, ptr %2, align 8, !tbaa !35
  %1541 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1539, i32 noundef 1, ptr noundef %1540) #25
  %1542 = load i32, ptr %1541, align 8
  %1543 = and i32 %1542, 255
  %1544 = add nsw i32 %1543, -10
  %1545 = icmp ult i32 %1544, -9
  br i1 %1545, label %1550, label %1546

1546:                                             ; preds = %1538
  %1547 = getelementptr inbounds %struct.gimple_statement_base, ptr %1541, i64 0, i32 3
  %1548 = load i32, ptr %1547, align 4, !tbaa !46
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1550, label %1551

1550:                                             ; preds = %1546, %1538
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %1551

1551:                                             ; preds = %1550, %1546
  %1552 = load i32, ptr %1541, align 8
  %1553 = and i32 %1552, 255
  %1554 = zext nneg i32 %1553 to i64
  %1555 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1554
  %1556 = load i32, ptr %1555, align 4, !tbaa !50
  %1557 = zext i32 %1556 to i64
  %1558 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1557
  %1559 = load i64, ptr %1558, align 8, !tbaa !99
  %1560 = icmp eq i64 %1559, 0
  br i1 %1560, label %1561, label %1562

1561:                                             ; preds = %1551
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %1562

1562:                                             ; preds = %1561, %1551
  %1563 = getelementptr inbounds i8, ptr %1541, i64 %1559
  store ptr %1511, ptr %1563, align 8, !tbaa !35
  %1564 = icmp eq ptr %1511, null
  br i1 %1564, label %1571, label %1565

1565:                                             ; preds = %1562
  %1566 = load i64, ptr %1511, align 8
  %1567 = and i64 %1566, 65535
  %1568 = icmp eq i64 %1567, 141
  br i1 %1568, label %1569, label %1571

1569:                                             ; preds = %1565
  %1570 = getelementptr inbounds %struct.tree_ssa_name, ptr %1511, i64 0, i32 2
  store ptr %1541, ptr %1570, align 8, !tbaa !46
  br label %1571

1571:                                             ; preds = %1569, %1565, %1562
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef nonnull %1541) #25
  %1572 = load i32, ptr %1541, align 8
  %1573 = and i32 %1572, 255
  %1574 = add nsw i32 %1573, -10
  %1575 = icmp ult i32 %1574, -9
  br i1 %1575, label %1577, label %1576

1576:                                             ; preds = %1571
  call void @gimple_set_modified(ptr noundef nonnull %1541, i8 noundef zeroext 1) #25
  call void @update_stmt_operands(ptr noundef nonnull %1541) #25
  br label %1577

1577:                                             ; preds = %1576, %1571
  call void @mark_symbols_for_renaming(ptr noundef nonnull %1541) #25
  %1578 = call fastcc ptr @get_final_alloc_stmt(ptr noundef nonnull %1389)
  %1579 = icmp eq ptr %1578, null
  br i1 %1579, label %1580, label %1581

1580:                                             ; preds = %1577
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1779, ptr noundef nonnull @.str.4) #25
  br label %1581

1581:                                             ; preds = %1580, %1577
  %1582 = call fastcc ptr @gen_cast_stmt(ptr noundef %1511, ptr noundef %1501, ptr noundef %1578, ptr noundef nonnull %3)
  call void @gimple_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %1582) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  %1583 = load ptr, ptr %5, align 8, !tbaa !35
  %1584 = icmp eq ptr %1583, null
  br i1 %1584, label %1588, label %1585

1585:                                             ; preds = %1581
  %1586 = getelementptr inbounds %struct.gimple_seq_d, ptr %1583, i64 0, i32 1
  %1587 = load ptr, ptr %1586, align 8, !tbaa !183
  br label %1588

1588:                                             ; preds = %1585, %1581
  %1589 = phi ptr [ %1587, %1585 ], [ null, %1581 ]
  %1590 = icmp eq ptr %1589, null
  br i1 %1590, label %1593, label %1591

1591:                                             ; preds = %1588
  %1592 = load ptr, ptr %1589, align 8, !tbaa !125
  br label %1593

1593:                                             ; preds = %1591, %1588
  %1594 = phi ptr [ %1592, %1591 ], [ null, %1588 ]
  call fastcc void @insert_seq_after_stmt(ptr noundef %1490, ptr noundef %1583)
  %1595 = load i32, ptr %1541, align 8
  %1596 = and i32 %1595, 255
  %1597 = add nsw i32 %1596, -10
  %1598 = icmp ult i32 %1597, -9
  br i1 %1598, label %1612, label %1599

1599:                                             ; preds = %1593
  %1600 = zext nneg i32 %1596 to i64
  %1601 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1600
  %1602 = load i32, ptr %1601, align 4, !tbaa !50
  %1603 = zext i32 %1602 to i64
  %1604 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1603
  %1605 = load i64, ptr %1604, align 8, !tbaa !99
  %1606 = icmp eq i64 %1605, 0
  br i1 %1606, label %1607, label %1608

1607:                                             ; preds = %1599
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %1608

1608:                                             ; preds = %1607, %1599
  %1609 = getelementptr inbounds i8, ptr %1541, i64 %1605
  %1610 = getelementptr inbounds ptr, ptr %1609, i64 1
  %1611 = load ptr, ptr %1610, align 8, !tbaa !35
  br label %1612

1612:                                             ; preds = %1608, %1593
  %1613 = phi ptr [ %1611, %1608 ], [ null, %1593 ]
  %1614 = load i64, ptr %1613, align 8
  %1615 = and i64 %1614, 65535
  %1616 = icmp eq i64 %1615, 121
  br i1 %1616, label %1617, label %1620

1617:                                             ; preds = %1612
  %1618 = getelementptr inbounds %struct.tree_exp, ptr %1613, i64 0, i32 3
  %1619 = load ptr, ptr %1618, align 8, !tbaa !46
  br label %1620

1620:                                             ; preds = %1617, %1612
  %1621 = phi ptr [ %1619, %1617 ], [ null, %1612 ]
  %1622 = call ptr @cgraph_node(ptr noundef %1373) #25
  %1623 = call ptr @cgraph_node(ptr noundef %1621) #25
  %1624 = getelementptr inbounds %struct.gimple_statement_base, ptr %1541, i64 0, i32 4
  %1625 = load ptr, ptr %1624, align 8, !tbaa !46
  %1626 = getelementptr inbounds %struct.basic_block_def, ptr %1625, i64 0, i32 8
  %1627 = load i64, ptr %1626, align 8, !tbaa !184
  %1628 = call i32 @compute_call_stmt_bb_frequency(ptr noundef %1373, ptr noundef %1625) #25
  %1629 = load ptr, ptr %1624, align 8, !tbaa !46
  %1630 = getelementptr inbounds %struct.basic_block_def, ptr %1629, i64 0, i32 10
  %1631 = load i32, ptr %1630, align 4, !tbaa !185
  %1632 = call ptr @cgraph_create_edge(ptr noundef %1622, ptr noundef %1623, ptr noundef nonnull %1541, i64 noundef %1627, i32 noundef %1628, i32 noundef %1631) #25
  %1633 = add i32 %1489, 1
  br label %1488, !llvm.loop !186

1634:                                             ; preds = %1500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %1635 = add i32 %1376, 1
  br label %1375, !llvm.loop !187

1636:                                             ; preds = %1385, %1365
  %1637 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1638 = getelementptr inbounds %struct.function, ptr %1637, i64 0, i32 1
  %1639 = load ptr, ptr %1638, align 8, !tbaa !110
  %1640 = load ptr, ptr %1639, align 8, !tbaa !112
  %1641 = getelementptr inbounds %struct.basic_block_def, ptr %1640, i64 0, i32 6
  %1642 = load ptr, ptr %1641, align 8, !tbaa !114
  %1643 = getelementptr inbounds %struct.control_flow_graph, ptr %1639, i64 0, i32 1
  %1644 = load ptr, ptr %1643, align 8, !tbaa !116
  %1645 = icmp eq ptr %1642, %1644
  br i1 %1645, label %1696, label %1655

1646:                                             ; preds = %1667
  %1647 = getelementptr inbounds %struct.basic_block_def, ptr %1656, i64 0, i32 6
  %1648 = load ptr, ptr %1647, align 8, !tbaa !114
  %1649 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1650 = getelementptr inbounds %struct.function, ptr %1649, i64 0, i32 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !110
  %1652 = getelementptr inbounds %struct.control_flow_graph, ptr %1651, i64 0, i32 1
  %1653 = load ptr, ptr %1652, align 8, !tbaa !116
  %1654 = icmp eq ptr %1648, %1653
  br i1 %1654, label %1696, label %1655, !llvm.loop !188

1655:                                             ; preds = %1636, %1646
  %1656 = phi ptr [ %1648, %1646 ], [ %1642, %1636 ]
  br label %1657

1657:                                             ; preds = %1655, %1694
  %1658 = phi i32 [ %1695, %1694 ], [ 0, %1655 ]
  %1659 = load ptr, ptr @structures, align 8
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1667, label %1661

1661:                                             ; preds = %1657
  %1662 = load i32, ptr %1659, align 8, !tbaa !78
  %1663 = icmp ugt i32 %1662, %1658
  br i1 %1663, label %1664, label %1667

1664:                                             ; preds = %1661
  %1665 = zext i32 %1658 to i64
  %1666 = getelementptr inbounds %struct.VEC_structure_base, ptr %1659, i64 0, i32 2, i64 %1665
  br label %1667

1667:                                             ; preds = %1664, %1661, %1657
  %1668 = phi ptr [ %1666, %1664 ], [ null, %1661 ], [ null, %1657 ]
  %1669 = phi i1 [ false, %1664 ], [ true, %1661 ], [ true, %1657 ]
  br i1 %1669, label %1646, label %1670

1670:                                             ; preds = %1667
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  store ptr %1668, ptr %1262, align 8, !tbaa !189
  store ptr %1656, ptr %1, align 8, !tbaa !191
  store i32 -1, ptr %1263, align 8, !tbaa !192
  %1671 = getelementptr inbounds %struct.data_structure, ptr %1668, i64 0, i32 1
  %1672 = load i32, ptr %1671, align 8, !tbaa !80
  %1673 = icmp sgt i32 %1672, 0
  br i1 %1673, label %1674, label %1689

1674:                                             ; preds = %1670
  %1675 = getelementptr inbounds %struct.data_structure, ptr %1668, i64 0, i32 3
  br label %1676

1676:                                             ; preds = %1674, %1684
  %1677 = phi i64 [ 0, %1674 ], [ %1685, %1684 ]
  %1678 = trunc i64 %1677 to i32
  store i32 %1678, ptr %1263, align 8, !tbaa !192
  %1679 = load ptr, ptr %1675, align 8, !tbaa !82
  %1680 = getelementptr inbounds %struct.field_entry, ptr %1679, i64 %1677, i32 4
  %1681 = load ptr, ptr %1680, align 8, !tbaa !140
  %1682 = icmp eq ptr %1681, null
  br i1 %1682, label %1684, label %1683

1683:                                             ; preds = %1676
  call void @htab_traverse(ptr noundef nonnull %1681, ptr noundef nonnull @create_new_field_acc, ptr noundef nonnull %1) #25
  br label %1684

1684:                                             ; preds = %1683, %1676
  %1685 = add nuw nsw i64 %1677, 1
  %1686 = load i32, ptr %1671, align 8, !tbaa !80
  %1687 = sext i32 %1686 to i64
  %1688 = icmp slt i64 %1685, %1687
  br i1 %1688, label %1676, label %1689, !llvm.loop !193

1689:                                             ; preds = %1684, %1670
  %1690 = getelementptr inbounds %struct.data_structure, ptr %1668, i64 0, i32 4
  %1691 = load ptr, ptr %1690, align 8, !tbaa !136
  %1692 = icmp eq ptr %1691, null
  br i1 %1692, label %1694, label %1693

1693:                                             ; preds = %1689
  call void @htab_traverse(ptr noundef nonnull %1691, ptr noundef nonnull @create_new_acc, ptr noundef nonnull %1) #25
  br label %1694

1694:                                             ; preds = %1693, %1689
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  %1695 = add i32 %1658, 1
  br label %1657, !llvm.loop !194

1696:                                             ; preds = %1646, %1636
  call void @update_ssa(i32 noundef 2048) #25
  %1697 = call zeroext i8 @cleanup_tree_cfg() #25
  %1698 = load ptr, ptr @new_local_vars, align 8, !tbaa !35
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %1701, label %1700

1700:                                             ; preds = %1696
  call void @htab_traverse(ptr noundef nonnull %1698, ptr noundef nonnull @free_new_var, ptr noundef null) #25
  br label %1701

1701:                                             ; preds = %1700, %1696
  call void @htab_delete(ptr noundef %1698) #25
  call void @free_dominance_info(i32 noundef 1) #25
  call void @free_dominance_info(i32 noundef 2) #25
  store ptr null, ptr @current_function_decl, align 8, !tbaa !35
  call void @pop_cfun() #25
  br label %1702

1702:                                             ; preds = %1701, %1270, %1264
  %1703 = getelementptr inbounds %struct.cgraph_node, ptr %1265, i64 0, i32 3
  %1704 = load ptr, ptr %1703, align 8, !tbaa !35
  %1705 = icmp eq ptr %1704, null
  br i1 %1705, label %1706, label %1264, !llvm.loop !195

1706:                                             ; preds = %1702, %1258
  call void @set_cfun(ptr noundef null) #25
  call void @bitmap_obstack_release(ptr noundef null) #25
  %1707 = load ptr, ptr @new_global_vars, align 8, !tbaa !35
  %1708 = icmp eq ptr %1707, null
  br i1 %1708, label %1710, label %1709

1709:                                             ; preds = %1706
  call void @htab_traverse(ptr noundef nonnull %1707, ptr noundef nonnull @free_new_var, ptr noundef null) #25
  br label %1710

1710:                                             ; preds = %1709, %1706
  call void @htab_delete(ptr noundef %1707) #25
  br label %1711

1711:                                             ; preds = %1710, %1015, %1012
  call fastcc void @free_structures()
  %1712 = load ptr, ptr @alloc_sites, align 8, !tbaa !35
  %1713 = icmp eq ptr %1712, null
  br i1 %1713, label %1715, label %1714

1714:                                             ; preds = %1711
  call void @htab_traverse(ptr noundef nonnull %1712, ptr noundef nonnull @free_falloc_sites, ptr noundef null) #25
  br label %1715

1715:                                             ; preds = %1711, %1714
  %1716 = load ptr, ptr @alloc_sites, align 8, !tbaa !35
  call void @htab_delete(ptr noundef %1716) #25
  store ptr null, ptr @alloc_sites, align 8, !tbaa !35
  ret i32 0
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @is_candidate(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  store ptr null, ptr %1, align 8, !tbaa !35
  %4 = icmp eq ptr %0, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %5, %9
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  %15 = icmp eq i64 %7, 34
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %13
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %33
  %30 = phi ptr [ %35, %33 ], [ %19, %28 ]
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %36 [
    i16 10, label %33
    i16 12, label %33
    i16 15, label %33
  ]

33:                                               ; preds = %29, %29, %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  br label %29, !llvm.loop !85

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 16
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = icmp ne ptr %2, null
  %44 = and i1 %43, %14
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load ptr, ptr %2, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 9, i64 1, ptr nonnull %49)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %53, ptr noundef nonnull %38, i32 noundef 0) #25
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %55 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %54)
  br label %56

56:                                               ; preds = %51, %48
  tail call fastcc void @add_unsuitable_type(ptr noundef nonnull %2, ptr noundef nonnull %38)
  br label %57

57:                                               ; preds = %56, %45, %42
  store ptr %38, ptr %1, align 8, !tbaa !35
  br label %58

58:                                               ; preds = %13, %36, %3, %57
  %59 = phi i8 [ 1, %57 ], [ 0, %3 ], [ 0, %36 ], [ 0, %13 ]
  ret i8 %59
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_structure(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call fastcc i32 @find_structure(ptr noundef %3)
  %5 = load ptr, ptr @structures, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 8, !tbaa !78
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = icmp eq i32 %4, %10
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  %13 = tail call i32 @fields_length(ptr noundef %3) #25
  %14 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = sext i32 %13 to i64
  %17 = mul nsw i64 %16, 40
  %18 = tail call ptr @xmalloc(i64 noundef %17) #25
  %19 = icmp eq ptr %15, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %12, %34
  %21 = phi i64 [ %37, %34 ], [ 0, %12 ]
  %22 = phi ptr [ %36, %34 ], [ %15, %12 ]
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 31
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.field_entry, ptr %18, i64 %21
  %28 = trunc i64 %21 to i32
  store i32 %28, ptr %27, align 8, !tbaa !196
  %29 = getelementptr inbounds %struct.field_entry, ptr %18, i64 %21, i32 2
  store ptr %22, ptr %29, align 8, !tbaa !83
  %30 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @field_acc_hash, ptr noundef nonnull @field_acc_eq, ptr noundef null) #25
  %31 = getelementptr inbounds %struct.field_entry, ptr %18, i64 %21, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !140
  %32 = getelementptr inbounds %struct.field_entry, ptr %18, i64 %21, i32 1
  store i64 0, ptr %32, align 8, !tbaa !144
  %33 = getelementptr inbounds %struct.field_entry, ptr %18, i64 %21, i32 3
  store ptr null, ptr %33, align 8, !tbaa !161
  br label %34

34:                                               ; preds = %26, %20
  %35 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = add nuw i64 %21, 1
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %20, !llvm.loop !197

39:                                               ; preds = %34, %12
  %40 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @acc_hash, ptr noundef nonnull @acc_eq, ptr noundef null) #25
  %41 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %13) #25
  %42 = load ptr, ptr @structures, align 8, !tbaa !35
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.VEC_structure_base, ptr %42, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !198
  %47 = load i32, ptr %42, align 8, !tbaa !78
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39, %44
  %50 = tail call ptr @vec_heap_o_reserve(ptr noundef %42, i32 noundef 1, i64 noundef 8, i64 noundef 56) #25
  store ptr %50, ptr @structures, align 8, !tbaa !35
  br label %51

51:                                               ; preds = %44, %49
  %52 = load ptr, ptr @structures, align 8, !tbaa !35
  %53 = load i32, ptr %52, align 8, !tbaa !78
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !78
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.VEC_structure_base, ptr %52, i64 0, i32 2, i64 %55
  store ptr %3, ptr %56, align 8, !tbaa.struct !199
  %57 = getelementptr inbounds i8, ptr %56, i64 8
  store i32 %13, ptr %57, align 8, !tbaa.struct !200
  %58 = getelementptr inbounds i8, ptr %56, i64 16
  store i64 0, ptr %58, align 8, !tbaa.struct !201
  %59 = getelementptr inbounds i8, ptr %56, i64 24
  store ptr %18, ptr %59, align 8, !tbaa.struct !202
  %60 = getelementptr inbounds i8, ptr %56, i64 32
  store ptr %40, ptr %60, align 8, !tbaa.struct !203
  %61 = getelementptr inbounds i8, ptr %56, i64 40
  store ptr null, ptr %61, align 8, !tbaa.struct !106
  %62 = getelementptr inbounds i8, ptr %56, i64 48
  store ptr %41, ptr %62, align 8, !tbaa.struct !107
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %51
  %66 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 24, i64 1, ptr nonnull %63)
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %67, ptr noundef %3, i32 noundef 0) #25
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %69 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %68)
  br label %70

70:                                               ; preds = %51, %65, %9
  ret void
}

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_unsuitable_type(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %24, %4
  %8 = phi i32 [ 0, %4 ], [ %25, %24 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !95
  %13 = icmp ugt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = zext i32 %8 to i64
  %16 = getelementptr inbounds %struct.VEC_tree_base, ptr %9, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %7, %11, %14
  %19 = phi ptr [ %17, %14 ], [ null, %11 ], [ null, %7 ]
  %20 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %7 ]
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %19, ptr noundef %6)
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = add i32 %8, 1
  br label %7, !llvm.loop !204

26:                                               ; preds = %21, %18
  %27 = load ptr, ptr %0, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 8, !tbaa !95
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %26 ]
  %33 = icmp eq i32 %8, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  br i1 %28, label %40, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.VEC_tree_base, ptr %27, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !163
  %38 = load i32, ptr %27, align 8, !tbaa !95
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %35
  %41 = tail call ptr @vec_heap_p_reserve(ptr noundef %27, i32 noundef 1) #25
  store ptr %41, ptr %0, align 8, !tbaa !35
  br label %42

42:                                               ; preds = %35, %40
  %43 = load ptr, ptr %0, align 8, !tbaa !35
  %44 = load i32, ptr %43, align 8, !tbaa !95
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8, !tbaa !95
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds %struct.VEC_tree_base, ptr %43, i64 0, i32 2, i64 %46
  store ptr %6, ptr %47, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %31, %42, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @is_equal_types(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  br label %3

3:                                                ; preds = %71, %2
  %4 = phi ptr [ %0, %2 ], [ %73, %71 ]
  %5 = phi ptr [ %1, %2 ], [ %75, %71 ]
  %6 = icmp eq ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = and i1 %6, %7
  br i1 %8, label %173, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %5, null
  %11 = icmp ne ptr %4, null
  %12 = and i1 %11, %10
  br i1 %12, label %173, label %13

13:                                               ; preds = %9
  %14 = or i1 %11, %7
  br i1 %14, label %15, label %173

15:                                               ; preds = %13
  %16 = load i64, ptr %4, align 8
  %17 = load i64, ptr %5, align 8
  %18 = xor i64 %17, %16
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %173

21:                                               ; preds = %15
  %22 = icmp eq ptr %4, %5
  br i1 %22, label %173, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %173, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %31, align 8
  %35 = trunc i64 %34 to i16
  switch i16 %35, label %44 [
    i16 1, label %40
    i16 35, label %36
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %33
  %41 = phi ptr [ %31, %33 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.tree_identifier, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %40, %29, %33, %36
  %45 = phi ptr [ null, %29 ], [ null, %33 ], [ null, %36 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load i64, ptr %47, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %60 [
    i16 1, label %56
    i16 35, label %52
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %49
  %57 = phi ptr [ %47, %49 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.tree_identifier, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  br label %60

60:                                               ; preds = %56, %44, %49, %52
  %61 = phi ptr [ null, %44 ], [ null, %49 ], [ null, %52 ], [ %59, %56 ]
  %62 = icmp ne ptr %45, null
  %63 = icmp ne ptr %61, null
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %61)
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i8
  br label %173

69:                                               ; preds = %60
  %70 = trunc i64 %16 to i16
  switch i16 %70, label %171 [
    i16 10, label %71
    i16 12, label %71
    i16 16, label %76
    i16 17, label %76
    i16 18, label %76
    i16 6, label %76
    i16 8, label %103
    i16 15, label %114
  ]

71:                                               ; preds = %69, %69
  %72 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  br label %3

76:                                               ; preds = %69, %69, %69, %69
  %77 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %78 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %79 = load ptr, ptr %77, align 8, !tbaa !46
  %80 = load ptr, ptr %78, align 8, !tbaa !46
  %81 = icmp ne ptr %79, null
  %82 = icmp ne ptr %80, null
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %97

84:                                               ; preds = %76, %89
  %85 = phi ptr [ %93, %89 ], [ %80, %76 ]
  %86 = phi ptr [ %92, %89 ], [ %79, %76 ]
  %87 = tail call fastcc zeroext i8 @compare_fields(ptr noundef nonnull %86, ptr noundef nonnull %85), !range !72
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %173, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %91 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 1
  %92 = load ptr, ptr %90, align 8, !tbaa !46
  %93 = load ptr, ptr %91, align 8, !tbaa !46
  %94 = icmp ne ptr %92, null
  %95 = icmp ne ptr %93, null
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %84, label %97, !llvm.loop !205

97:                                               ; preds = %89, %76
  %98 = phi i1 [ %81, %76 ], [ %94, %89 ]
  %99 = phi i1 [ %82, %76 ], [ %95, %89 ]
  %100 = select i1 %98, i1 true, i1 %99
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i8
  br label %173

103:                                              ; preds = %69
  %104 = and i64 %18, 2097152
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %172

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = xor i32 %110, %108
  %112 = and i32 %111, 1023
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %173, label %172

114:                                              ; preds = %69
  %115 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %116, ptr noundef %118)
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %168, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  %124 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = icmp ne ptr %123, null
  %127 = icmp ne ptr %125, null
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %168

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.tree_type, ptr %123, i64 0, i32 14
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 14
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.tree_type, ptr %123, i64 0, i32 13
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 13
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = icmp ne ptr %131, null
  %139 = icmp ne ptr %133, null
  %140 = select i1 %138, i1 %139, i1 false
  %141 = icmp ne ptr %135, null
  %142 = select i1 %140, i1 %141, i1 false
  %143 = icmp ne ptr %137, null
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %167

145:                                              ; preds = %129
  %146 = load i64, ptr %131, align 8
  %147 = load i64, ptr %133, align 8
  %148 = and i64 %146, 65535
  %149 = icmp eq i64 %148, 23
  %150 = and i64 %147, 65535
  %151 = icmp eq i64 %150, 23
  %152 = and i1 %149, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %145
  %154 = load i64, ptr %135, align 8
  %155 = load i64, ptr %137, align 8
  %156 = and i64 %154, 65535
  %157 = icmp eq i64 %156, 23
  %158 = and i64 %155, 65535
  %159 = icmp eq i64 %158, 23
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %131, ptr noundef nonnull %133) #25
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %135, ptr noundef nonnull %137) #25
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164, %161, %153, %145, %129
  br label %168

168:                                              ; preds = %164, %121, %114, %167
  %169 = phi i1 [ true, %167 ], [ false, %114 ], [ false, %121 ], [ false, %164 ]
  %170 = phi i8 [ undef, %167 ], [ 0, %114 ], [ 0, %121 ], [ 1, %164 ]
  br i1 %169, label %172, label %173

171:                                              ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1695, ptr noundef nonnull @.str.4) #25
  br label %172

172:                                              ; preds = %168, %103, %106, %171
  br label %173

173:                                              ; preds = %84, %106, %97, %23, %21, %15, %13, %3, %9, %168, %172, %65
  %174 = phi i8 [ %68, %65 ], [ 0, %172 ], [ %170, %168 ], [ 0, %9 ], [ 0, %3 ], [ 1, %13 ], [ 0, %15 ], [ 1, %21 ], [ 1, %23 ], [ %102, %97 ], [ 1, %106 ], [ 0, %84 ]
  ret i8 %174
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @compare_fields(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 262, ptr noundef nonnull @.str.4) #25
  br label %19

19:                                               ; preds = %10, %18
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %14)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %35

22:                                               ; preds = %6
  br i1 %5, label %23, label %35

23:                                               ; preds = %2, %22
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %29, ptr noundef %31)
  %33 = icmp ne i8 %32, 0
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %19, %27, %22, %23
  %36 = phi i8 [ 0, %19 ], [ 0, %23 ], [ 0, %22 ], [ %34, %27 ]
  ret i8 %36
}

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_structure(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  br label %4

4:                                                ; preds = %21, %1
  %5 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %6 = load ptr, ptr @structures, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !78
  %10 = icmp ugt i32 %9, %5
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = zext i32 %5 to i64
  %13 = getelementptr inbounds %struct.VEC_structure_base, ptr %6, i64 0, i32 2, i64 %12
  br label %14

14:                                               ; preds = %4, %8, %11
  %15 = phi ptr [ %13, %11 ], [ null, %8 ], [ null, %4 ]
  %16 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %4 ]
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !86
  %19 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %18, ptr noundef %3)
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = add i32 %5, 1
  br label %4, !llvm.loop !206

23:                                               ; preds = %14
  br i1 %7, label %26, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 8, !tbaa !78
  br label %26

26:                                               ; preds = %17, %24, %23
  %27 = phi i32 [ %25, %24 ], [ 0, %23 ], [ %5, %17 ]
  ret i32 %27
}

declare i32 @fields_length(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @acc_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = load ptr, ptr %0, align 8, !tbaa !207
  %4 = tail call i32 %2(ptr noundef %3) #25
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @acc_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #12 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !207
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @field_acc_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  %4 = tail call i32 %2(ptr noundef %3) #25
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @field_acc_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #12 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_structure(i32 noundef %0) unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @structures, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !78
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds %struct.VEC_structure_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr @alloc_sites, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @htab_traverse(ptr noundef nonnull %12, ptr noundef nonnull @remove_str_allocs_in_func, ptr noundef nonnull %11) #25
  br label %15

15:                                               ; preds = %9, %14
  tail call fastcc void @free_data_struct(ptr noundef nonnull %11)
  %16 = load ptr, ptr @structures, align 8
  %17 = load i32, ptr %16, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.VEC_structure_base, ptr %16, i64 0, i32 2, i64 %10
  %19 = getelementptr inbounds %struct.data_structure, ptr %18, i64 1
  %20 = add i32 %17, -1
  store i32 %20, ptr %16, align 8, !tbaa !78
  %21 = sub i32 %20, %0
  %22 = zext i32 %21 to i64
  %23 = mul nuw nsw i64 %22, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %18, ptr nonnull align 8 %19, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %6, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_data_struct(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 26, i64 1, ptr nonnull %4)
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %9 = load ptr, ptr %0, align 8, !tbaa !86
  tail call void @print_generic_expr(ptr noundef %8, ptr noundef %9, i32 noundef 0) #25
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %11 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %6, %3
  %13 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16, %27
  %21 = phi i64 [ %28, %27 ], [ 0, %16 ]
  %22 = load ptr, ptr %13, align 8, !tbaa !82
  %23 = getelementptr inbounds %struct.field_entry, ptr %22, i64 %21, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !140
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @htab_traverse(ptr noundef nonnull %24, ptr noundef nonnull @free_field_accs, ptr noundef null) #25
  br label %27

27:                                               ; preds = %20, %26
  tail call void @htab_delete(ptr noundef %24) #25
  %28 = add nuw nsw i64 %21, 1
  %29 = load i32, ptr %17, align 8, !tbaa !80
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %20, label %32, !llvm.loop !211

32:                                               ; preds = %27, %16
  %33 = load ptr, ptr %13, align 8, !tbaa !82
  tail call void @free(ptr noundef %33)
  br label %34

34:                                               ; preds = %32, %12
  %35 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !136
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @htab_traverse(ptr noundef nonnull %36, ptr noundef nonnull @free_accs, ptr noundef null) #25
  tail call void @htab_delete(ptr noundef nonnull %36) #25
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !151
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call fastcc void @free_struct_cluster(ptr noundef nonnull %41)
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @free(ptr noundef %46)
  store ptr null, ptr %45, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %44, %48, %1
  ret void
}

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @remove_str_allocs_in_func(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #14 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.func_alloc_sites, ptr %3, i64 0, i32 1
  br label %5

5:                                                ; preds = %33, %2
  %6 = phi i32 [ %34, %33 ], [ 0, %2 ]
  %7 = zext i32 %6 to i64
  %8 = zext i32 %6 to i64
  br label %9

9:                                                ; preds = %5, %25
  %10 = load ptr, ptr %4, align 8, !tbaa !102
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !105
  %14 = icmp ugt i32 %13, %6
  %15 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %10, i64 0, i32 2, i64 %7
  %16 = select i1 %14, ptr %15, ptr null
  %17 = select i1 %14, i1 false, i1 true
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi ptr [ null, %9 ], [ %16, %12 ]
  %20 = phi i1 [ true, %9 ], [ %17, %12 ]
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.alloc_site, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !182
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, ptr %10, align 8, !tbaa !105
  %27 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %10, i64 0, i32 2, i64 %8
  %28 = getelementptr inbounds %struct.alloc_site, ptr %27, i64 1
  %29 = add i32 %26, -1
  store i32 %29, ptr %10, align 8, !tbaa !105
  %30 = sub i32 %29, %6
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %27, ptr nonnull align 8 %28, i64 %32, i1 false)
  br label %9, !llvm.loop !212

33:                                               ; preds = %21
  %34 = add i32 %6, 1
  br label %5, !llvm.loop !212

35:                                               ; preds = %18
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_struct_cluster(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !152
  tail call void @free(ptr noundef %5)
  %6 = load ptr, ptr %0, align 8, !tbaa !156
  tail call void @free(ptr noundef %6)
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.field_cluster, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @free_struct_cluster(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %11, %7
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef i32 @free_field_accs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #16 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @free(ptr noundef %3)
  ret i32 1
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef i32 @free_accs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #16 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.access_site, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %2, %7
  store ptr null, ptr %4, align 8, !tbaa !35
  tail call void @free(ptr noundef %3)
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal i32 @malloc_hash(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = load ptr, ptr %0, align 8, !tbaa !100
  %4 = tail call i32 %2(ptr noundef %3) #25
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @malloc_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #12 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !100
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_final_alloc_stmt(ptr noundef %0) unnamed_addr #10 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #25
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 5
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !213
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %31, %24, %14
  store ptr null, ptr %3, align 8, !tbaa !35
  store ptr null, ptr %2, align 8, !tbaa !35
  br label %37

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  %23 = icmp eq ptr %15, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %19, label %30

30:                                               ; preds = %24
  store ptr %17, ptr %3, align 8, !tbaa !35
  store ptr %26, ptr %2, align 8, !tbaa !35
  br label %37

31:                                               ; preds = %20
  %32 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %19, label %34

34:                                               ; preds = %31
  %35 = call zeroext i8 @single_imm_use_1(ptr noundef nonnull %15, ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %36 = icmp eq i8 %35, 0
  br label %37

37:                                               ; preds = %19, %30, %34
  %38 = phi i1 [ true, %19 ], [ false, %30 ], [ %36, %34 ]
  %39 = load ptr, ptr %2, align 8
  %40 = select i1 %38, ptr null, ptr %39
  br label %41

41:                                               ; preds = %37, %9, %5, %1
  %42 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %9 ], [ %40, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %42
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_structures() unnamed_addr #10 !prof !34 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %3 = load ptr, ptr @structures, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !78
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds %struct.VEC_structure_base, ptr %3, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %1, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %1 ]
  %13 = phi i1 [ false, %8 ], [ true, %5 ], [ true, %1 ]
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call fastcc void @free_data_struct(ptr noundef %12)
  %15 = add i32 %2, 1
  br label %1, !llvm.loop !215

16:                                               ; preds = %11
  br i1 %4, label %18, label %17

17:                                               ; preds = %16
  tail call void @free(ptr noundef %3)
  br label %18

18:                                               ; preds = %16, %17
  store ptr null, ptr @structures, align 8, !tbaa !35
  ret void
}

declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @get_stmt_accesses(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %204, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %204 [
    i16 42, label %12
    i16 41, label %68
    i16 56, label %136
    i16 32, label %157
    i16 141, label %157
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 34
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  %21 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %16, %12
  %25 = phi ptr [ null, %12 ], [ %23, %16 ]
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %32

32:                                               ; preds = %31, %24
  br label %33

33:                                               ; preds = %32, %37
  %34 = phi ptr [ %39, %37 ], [ %25, %32 ]
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %40 [
    i16 10, label %37
    i16 12, label %37
    i16 15, label %37
  ]

37:                                               ; preds = %33, %33, %33
  %38 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  br label %33, !llvm.loop !85

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = tail call fastcc i32 @find_structure(ptr noundef %42)
  %44 = load ptr, ptr @structures, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %44, align 8, !tbaa !78
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %40 ]
  %50 = icmp eq i32 %43, %49
  br i1 %50, label %204, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %6, align 8
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = zext i32 %43 to i64
  %57 = getelementptr inbounds %struct.VEC_structure_base, ptr %44, i64 0, i32 2, i64 %56, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !136
  tail call fastcc void @add_access_to_acc_sites(ptr noundef nonnull %6, ptr noundef null, ptr noundef %58)
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %204

59:                                               ; preds = %51
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 10, i64 1, ptr nonnull %60)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %64, ptr noundef %42, i32 noundef 0) #25
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %66 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 14, i64 1, ptr %65)
  br label %67

67:                                               ; preds = %62, %59
  tail call fastcc void @remove_structure(i32 noundef %43)
  br label %204

68:                                               ; preds = %9
  %69 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = load i64, ptr %70, align 8
  %74 = trunc i64 %73 to i16
  switch i16 %74, label %204 [
    i16 47, label %75
    i16 45, label %75
    i16 32, label %75
  ]

75:                                               ; preds = %68, %68, %68
  %76 = load i64, ptr %72, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 31
  br i1 %78, label %79, label %204

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 16
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  %84 = tail call fastcc i32 @find_structure(ptr noundef %83)
  %85 = load ptr, ptr @structures, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = load i32, ptr %85, align 8, !tbaa !78
  br label %89

89:                                               ; preds = %79, %87
  %90 = phi i32 [ %88, %87 ], [ 0, %79 ]
  %91 = icmp eq i32 %84, %90
  br i1 %91, label %204, label %92

92:                                               ; preds = %89
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds %struct.VEC_structure_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = tail call fastcc ptr @find_field_in_struct(ptr noundef nonnull %94, ptr noundef nonnull %72)
  %96 = load i32, ptr %6, align 8
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.VEC_structure_base, ptr %85, i64 0, i32 2, i64 %93, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !136
  tail call fastcc void @add_access_to_acc_sites(ptr noundef nonnull %6, ptr noundef null, ptr noundef %101)
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %204

102:                                              ; preds = %92
  %103 = icmp eq ptr %95, null
  br i1 %103, label %204, label %104

104:                                              ; preds = %102
  %105 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #25
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2556, ptr noundef nonnull @.str.4) #25
  br label %108

108:                                              ; preds = %104, %107
  store ptr %6, ptr %105, align 8, !tbaa !209
  %109 = getelementptr inbounds %struct.field_access_site, ptr %105, i64 0, i32 1
  store ptr %7, ptr %109, align 8, !tbaa !216
  %110 = getelementptr inbounds %struct.field_access_site, ptr %105, i64 0, i32 3
  store ptr %70, ptr %110, align 8, !tbaa !217
  %111 = getelementptr inbounds %struct.field_access_site, ptr %105, i64 0, i32 2
  store ptr %72, ptr %111, align 8, !tbaa !218
  %112 = load ptr, ptr %94, align 8, !tbaa !86
  %113 = tail call fastcc zeroext i8 @decompose_access(ptr noundef %112, ptr noundef nonnull %105), !range !72
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 10, i64 1, ptr nonnull %116)
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %120, ptr noundef %83, i32 noundef 0) #25
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %122 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 36, i64 1, ptr %121)
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %123, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #25
  br label %124

124:                                              ; preds = %118, %115
  tail call fastcc void @remove_structure(i32 noundef %84)
  tail call void @free(ptr noundef %105)
  br label %135

125:                                              ; preds = %108
  %126 = getelementptr inbounds %struct.gimple_statement_base, ptr %6, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !184
  %130 = getelementptr inbounds %struct.field_entry, ptr %95, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !144
  %132 = add nsw i64 %131, %129
  store i64 %132, ptr %130, align 8, !tbaa !144
  %133 = getelementptr inbounds %struct.field_entry, ptr %95, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !140
  tail call fastcc void @add_field_acc_to_acc_sites(ptr noundef nonnull %105, ptr noundef %134)
  br label %135

135:                                              ; preds = %125, %124
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %204

136:                                              ; preds = %9
  %137 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !46
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %136, %144
  %145 = phi i64 [ %149, %144 ], [ 0, %136 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %146 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 0, i32 3, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  store ptr %147, ptr %4, align 8, !tbaa !35
  store i32 1, ptr %1, align 4, !tbaa !50
  %148 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @get_stmt_accesses, ptr noundef %2, ptr noundef null, ptr noundef null) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %149 = add nuw nsw i64 %145, 1
  %150 = load i64, ptr %138, align 8
  %151 = and i64 %150, 65535
  %152 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !46
  %154 = zext i8 %153 to i64
  %155 = icmp ult i64 %149, %154
  br i1 %155, label %144, label %156, !llvm.loop !219

156:                                              ; preds = %144, %136
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %204

157:                                              ; preds = %9, %9
  %158 = and i64 %10, 65535
  %159 = icmp eq i64 %158, 141
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !46
  br label %163

163:                                              ; preds = %160, %157
  %164 = phi ptr [ %162, %160 ], [ %7, %157 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = load i64, ptr %164, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 34
  %170 = getelementptr inbounds %struct.tree_decl_common, ptr %164, i64 0, i32 5
  %171 = getelementptr inbounds %struct.tree_common, ptr %164, i64 0, i32 2
  %172 = select i1 %169, ptr %170, ptr %171
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  br label %174

174:                                              ; preds = %166, %163
  %175 = phi ptr [ null, %163 ], [ %173, %166 ]
  %176 = load i64, ptr %175, align 8
  %177 = and i64 %176, 65535
  %178 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !50
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %182, label %181

181:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %182

182:                                              ; preds = %181, %174
  br label %183

183:                                              ; preds = %182, %187
  %184 = phi ptr [ %189, %187 ], [ %175, %182 ]
  %185 = load i64, ptr %184, align 8
  %186 = trunc i64 %185 to i16
  switch i16 %186, label %190 [
    i16 10, label %187
    i16 12, label %187
    i16 15, label %187
  ]

187:                                              ; preds = %183, %183, %183
  %188 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !46
  br label %183, !llvm.loop !85

190:                                              ; preds = %183
  %191 = tail call fastcc i32 @find_structure(ptr noundef nonnull %184)
  %192 = load ptr, ptr @structures, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = load i32, ptr %192, align 8, !tbaa !78
  br label %196

196:                                              ; preds = %190, %194
  %197 = phi i32 [ %195, %194 ], [ 0, %190 ]
  %198 = icmp eq i32 %191, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = zext i32 %191 to i64
  %201 = getelementptr inbounds %struct.VEC_structure_base, ptr %192, i64 0, i32 2, i64 %200, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !136
  tail call fastcc void @add_access_to_acc_sites(ptr noundef %6, ptr noundef %164, ptr noundef %202)
  br label %203

203:                                              ; preds = %199, %196
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %204

204:                                              ; preds = %68, %99, %135, %102, %89, %156, %203, %48, %67, %55, %75, %9, %3
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_access_to_acc_sites(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %5 = tail call i32 %4(ptr noundef %0) #25
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef %0, i32 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = tail call ptr @xmalloc(i64 noundef 16) #25
  store ptr %0, ptr %9, align 8, !tbaa !207
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #25
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi ptr [ %14, %13 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.access_site, ptr %9, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !220
  %18 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %19 = tail call i32 %18(ptr noundef nonnull %0) #25
  %20 = tail call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %19, i32 noundef 1) #25
  store ptr %9, ptr %20, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi ptr [ %6, %3 ], [ %9, %15 ]
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.access_site, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.VEC_tree_base, ptr %28, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !163
  %33 = load i32, ptr %28, align 8, !tbaa !95
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26, %30
  %36 = tail call ptr @vec_heap_p_reserve(ptr noundef %28, i32 noundef 1) #25
  store ptr %36, ptr %27, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %30, %35
  %38 = load ptr, ptr %27, align 8, !tbaa !35
  %39 = load i32, ptr %38, align 8, !tbaa !95
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !95
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds %struct.VEC_tree_base, ptr %38, i64 0, i32 2, i64 %41
  store ptr %1, ptr %42, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %37, %21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_field_in_struct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %6, %19
  %12 = phi ptr [ %21, %19 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc zeroext i8 @compare_fields(ptr noundef %1, ptr noundef nonnull %12), !range !72
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !221

23:                                               ; preds = %16, %19, %6, %2
  %24 = phi ptr [ null, %2 ], [ null, %6 ], [ null, %19 ], [ %12, %16 ]
  %25 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !80
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = zext nneg i32 %26 to i64
  br label %35

32:                                               ; preds = %35
  %33 = add nuw nsw i64 %36, 1
  %34 = icmp eq i64 %33, %31
  br i1 %34, label %42, label %35, !llvm.loop !222

35:                                               ; preds = %28, %32
  %36 = phi i64 [ 0, %28 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.field_entry, ptr %30, i64 %36, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  %39 = icmp eq ptr %38, %24
  br i1 %39, label %40, label %32

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.field_entry, ptr %30, i64 %36
  br label %42

42:                                               ; preds = %32, %23, %40
  %43 = phi ptr [ %41, %40 ], [ null, %23 ], [ null, %32 ]
  ret ptr %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @decompose_access(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 433, ptr noundef nonnull @.str.4) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %3, align 8, !tbaa !217
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %149 [
    i16 47, label %11
    i16 45, label %150
    i16 32, label %150
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %150

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 7
  store ptr %19, ptr %20, align 8, !tbaa !223
  %21 = icmp eq ptr %19, null
  br i1 %21, label %150, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %19, align 8
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 6
  br i1 %25, label %26, label %150

26:                                               ; preds = %22
  %27 = lshr i32 %23, 16
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = zext nneg i32 %24 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !99
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds i8, ptr %19, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 65535
  br label %48

48:                                               ; preds = %41, %26
  %49 = phi i32 [ %47, %41 ], [ %27, %26 ]
  %50 = trunc i32 %49 to i16
  switch i16 %50, label %150 [
    i16 66, label %51
    i16 64, label %51
    i16 63, label %51
  ]

51:                                               ; preds = %48, %48, %48
  %52 = load ptr, ptr %20, align 8, !tbaa !223
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 255
  %55 = add nsw i32 %54, -10
  %56 = icmp ult i32 %55, -9
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = zext nneg i32 %54 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !50
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !99
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %66

66:                                               ; preds = %65, %57
  %67 = getelementptr inbounds i8, ptr %52, i64 %63
  %68 = getelementptr inbounds ptr, ptr %67, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  br label %70

70:                                               ; preds = %66, %51
  %71 = phi ptr [ %69, %66 ], [ null, %51 ]
  %72 = load ptr, ptr %20, align 8, !tbaa !223
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !46
  %75 = icmp ugt i32 %74, 2
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i32, ptr %72, align 8
  %78 = and i32 %77, 255
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -9
  br i1 %80, label %94, label %81

81:                                               ; preds = %76
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !99
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds i8, ptr %72, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  br label %94

94:                                               ; preds = %90, %76, %70
  %95 = phi ptr [ null, %70 ], [ %93, %90 ], [ null, %76 ]
  %96 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 6
  %97 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 5
  %98 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 8
  %99 = tail call zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef %49, ptr noundef %71, ptr noundef %95, ptr noundef nonnull %96, ptr noundef nonnull %97, ptr noundef nonnull %98) #25
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %150, label %101

101:                                              ; preds = %94
  %102 = load ptr, ptr %98, align 8, !tbaa !224
  %103 = icmp eq ptr %102, null
  br i1 %103, label %135, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %102, align 8
  %106 = and i32 %105, 255
  %107 = add nsw i32 %106, -10
  %108 = icmp ult i32 %107, -9
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %102, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi ptr [ %111, %109 ], [ null, %104 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  %116 = and i32 %105, 254
  %117 = add nsw i32 %116, -10
  %118 = icmp ult i32 %117, -4
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %102, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %113, align 8, !tbaa !225
  br label %125

125:                                              ; preds = %123, %119, %115, %112
  %126 = phi ptr [ %113, %112 ], [ %113, %115 ], [ %113, %119 ], [ %124, %123 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.use_optype_d, ptr %126, i64 0, i32 1, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !227
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = load ptr, ptr %126, align 8, !tbaa !225
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, ptr %131, ptr null
  br label %137

135:                                              ; preds = %101
  %136 = load ptr, ptr %97, align 8, !tbaa !228
  br label %137

137:                                              ; preds = %125, %128, %135
  %138 = phi ptr [ %136, %135 ], [ %134, %128 ], [ null, %125 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = load i64, ptr %138, align 8
  %142 = and i64 %141, 4294967296
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !46
  %147 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 4
  %148 = tail call fastcc zeroext i8 @is_result_of_mult(ptr noundef nonnull %138, ptr noundef nonnull %147, ptr noundef %146), !range !72
  br label %150

149:                                              ; preds = %7
  br label %150

150:                                              ; preds = %48, %7, %144, %140, %137, %94, %22, %17, %11, %7, %149
  %151 = phi i8 [ 0, %149 ], [ 1, %7 ], [ 0, %11 ], [ 0, %22 ], [ 0, %17 ], [ 0, %94 ], [ 0, %137 ], [ 0, %140 ], [ %148, %144 ], [ 1, %7 ], [ 0, %48 ]
  ret i8 %151
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_field_acc_to_acc_sites(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %5 = tail call i32 %4(ptr noundef %3) #25
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %3, i32 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 472, ptr noundef nonnull @.str.4) #25
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !209
  %11 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %12 = tail call i32 %11(ptr noundef %10) #25
  %13 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef %10, i32 noundef %12, i32 noundef 1) #25
  store ptr %0, ptr %13, align 8, !tbaa !35
  ret void
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @is_result_of_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %113, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %113

11:                                               ; preds = %7
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !99
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %5, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %22) #25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %110, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %5, align 8
  %27 = trunc i32 %26 to i8
  switch i8 %27, label %30 [
    i8 6, label %28
    i8 1, label %28
    i8 8, label %31
  ]

28:                                               ; preds = %25, %25
  %29 = lshr i32 %26, 16
  br label %31

30:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.4) #25
  br label %31

31:                                               ; preds = %30, %28, %25
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ], [ 59, %25 ]
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !46
  %36 = icmp eq i8 %35, 3
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i32, ptr %5, align 8
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -1
  %41 = icmp ult i32 %40, 9
  tail call void @llvm.assume(i1 %41)
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !99
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %50

50:                                               ; preds = %49, %37
  %51 = getelementptr inbounds i8, ptr %5, i64 %47
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  br label %57

57:                                               ; preds = %31, %50
  %58 = phi i32 [ %56, %50 ], [ %32, %31 ]
  %59 = icmp eq i32 %58, 65
  br i1 %59, label %60, label %110

60:                                               ; preds = %57
  %61 = load i32, ptr %5, align 8
  %62 = and i32 %61, 255
  %63 = add nsw i32 %62, -10
  %64 = icmp ult i32 %63, -9
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !99
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %74

74:                                               ; preds = %73, %65
  %75 = getelementptr inbounds i8, ptr %5, i64 %71
  %76 = getelementptr inbounds ptr, ptr %75, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %60, %74
  %79 = phi ptr [ %77, %74 ], [ null, %60 ]
  %80 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !46
  %82 = icmp ugt i32 %81, 2
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load i32, ptr %5, align 8
  %85 = and i32 %84, 255
  %86 = add nsw i32 %85, -10
  %87 = icmp ult i32 %86, -9
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = zext nneg i32 %85 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !50
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !99
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %97

97:                                               ; preds = %96, %88
  %98 = getelementptr inbounds i8, ptr %5, i64 %94
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  br label %101

101:                                              ; preds = %78, %83, %97
  %102 = phi ptr [ null, %78 ], [ %100, %97 ], [ null, %83 ]
  %103 = tail call i32 @operand_equal_p(ptr noundef %79, ptr noundef %2, i32 noundef 1) #25
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = tail call i32 @operand_equal_p(ptr noundef %102, ptr noundef %2, i32 noundef 1) #25
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105, %101
  %109 = phi ptr [ %102, %101 ], [ %79, %105 ]
  store ptr %109, ptr %1, align 8, !tbaa !35
  br label %110

110:                                              ; preds = %108, %57, %105, %20
  %111 = phi i1 [ false, %20 ], [ true, %105 ], [ true, %57 ], [ false, %108 ]
  %112 = phi i8 [ 0, %20 ], [ 1, %105 ], [ 1, %57 ], [ 1, %108 ]
  br i1 %111, label %113, label %114

113:                                              ; preds = %110, %7, %3
  store ptr null, ptr %1, align 8, !tbaa !35
  br label %114

114:                                              ; preds = %110, %113
  %115 = phi i8 [ 0, %113 ], [ %112, %110 ]
  ret i8 %115
}

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @exclude_from_accs(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = alloca %struct.find_stmt_data, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %1, align 8, !tbaa !135
  %6 = getelementptr inbounds %struct.exclude_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = load ptr, ptr %4, align 8, !tbaa !207
  %9 = load ptr, ptr @alloc_sites, align 8, !tbaa !35
  %10 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %11 = tail call i32 %10(ptr noundef %5) #25
  %12 = tail call ptr @htab_find_with_hash(ptr noundef %9, ptr noundef %5, i32 noundef %11) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.func_alloc_sites, ptr %12, i64 0, i32 1
  br label %16

16:                                               ; preds = %32, %14
  %17 = phi i32 [ %35, %32 ], [ 0, %14 ]
  %18 = load ptr, ptr %15, align 8, !tbaa !102
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !105
  %22 = icmp ugt i32 %21, %17
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = zext i32 %17 to i64
  %25 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %18, i64 0, i32 2, i64 %24
  br label %26

26:                                               ; preds = %23, %20, %16
  %27 = phi ptr [ %25, %23 ], [ null, %20 ], [ null, %16 ]
  %28 = phi i1 [ false, %23 ], [ true, %20 ], [ true, %16 ]
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !180
  %31 = icmp eq ptr %30, %8
  br i1 %31, label %61, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_final_alloc_stmt(ptr noundef %30)
  %34 = icmp eq ptr %33, %8
  %35 = add i32 %17, 1
  br i1 %34, label %61, label %16, !llvm.loop !229

36:                                               ; preds = %26, %2
  %37 = load ptr, ptr %4, align 8, !tbaa !207
  %38 = getelementptr inbounds %struct.data_structure, ptr %7, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !80
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.find_stmt_data, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.data_structure, ptr %7, i64 0, i32 3
  br label %49

44:                                               ; preds = %57
  %45 = add nuw nsw i64 %50, 1
  %46 = load i32, ptr %38, align 8, !tbaa !80
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %69, !llvm.loop !230

49:                                               ; preds = %41, %44
  %50 = phi i64 [ 0, %41 ], [ %45, %44 ]
  %51 = phi i1 [ %40, %41 ], [ %48, %44 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  store i8 0, ptr %3, align 8, !tbaa !231
  store ptr %37, ptr %42, align 8, !tbaa !233
  %52 = load ptr, ptr %43, align 8, !tbaa !82
  %53 = getelementptr inbounds %struct.field_entry, ptr %52, i64 %50, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !140
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  call void @htab_traverse(ptr noundef nonnull %54, ptr noundef nonnull @find_in_field_accs, ptr noundef nonnull %3) #25
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i8, ptr %3, align 8, !tbaa !231
  %59 = icmp eq i8 %58, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br i1 %59, label %44, label %60

60:                                               ; preds = %57
  br i1 %51, label %61, label %69

61:                                               ; preds = %29, %32, %60
  %62 = getelementptr inbounds %struct.access_site, ptr %4, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @free(ptr noundef %63)
  br label %66

66:                                               ; preds = %61, %65
  store ptr null, ptr %62, align 8, !tbaa !35
  call void @free(ptr noundef %4)
  %67 = getelementptr inbounds %struct.data_structure, ptr %7, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !136
  call void @htab_clear_slot(ptr noundef %68, ptr noundef nonnull %0) #25
  br label %69

69:                                               ; preds = %44, %36, %66, %60
  ret i32 1
}

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @find_in_field_accs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #18 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.find_stmt_data, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !233
  %6 = load ptr, ptr %3, align 8, !tbaa !209
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !223
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !224
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %2
  store i8 1, ptr %1, align 8, !tbaa !231
  br label %17

17:                                               ; preds = %12, %16
  %18 = phi i32 [ 0, %16 ], [ 1, %12 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @safe_cond_expr_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !207
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %120

8:                                                ; preds = %2
  %9 = load ptr, ptr @structures, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !78
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = lshr i32 %5, 16
  %16 = add nsw i32 %15, -101
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %112

18:                                               ; preds = %13
  %19 = zext nneg i32 %6 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !99
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %27

27:                                               ; preds = %26, %18
  %28 = getelementptr inbounds i8, ptr %4, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = load i32, ptr %4, align 8
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -10
  %33 = icmp ult i32 %32, -9
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !99
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %43

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds i8, ptr %4, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  br label %47

47:                                               ; preds = %43, %27
  %48 = phi ptr [ %46, %43 ], [ null, %27 ]
  %49 = icmp eq ptr %29, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %29, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 34
  %54 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 5
  %56 = select i1 %53, ptr %55, ptr %54
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %50, %47
  %59 = phi ptr [ null, %47 ], [ %57, %50 ]
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %71
  %68 = phi ptr [ %73, %71 ], [ %59, %66 ]
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %74 [
    i16 10, label %71
    i16 12, label %71
    i16 15, label %71
  ]

71:                                               ; preds = %67, %67, %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  br label %67, !llvm.loop !85

74:                                               ; preds = %67
  %75 = tail call fastcc i32 @find_structure(ptr noundef nonnull %68)
  %76 = icmp eq ptr %48, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %48, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 34
  %81 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 5
  %83 = select i1 %80, ptr %82, ptr %81
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  br label %85

85:                                               ; preds = %77, %74
  %86 = phi ptr [ null, %74 ], [ %84, %77 ]
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !50
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %98
  %95 = phi ptr [ %100, %98 ], [ %86, %93 ]
  %96 = load i64, ptr %95, align 8
  %97 = trunc i64 %96 to i16
  switch i16 %97, label %101 [
    i16 10, label %98
    i16 12, label %98
    i16 15, label %98
  ]

98:                                               ; preds = %94, %94, %94
  %99 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  br label %94, !llvm.loop !85

101:                                              ; preds = %94
  %102 = tail call fastcc i32 @find_structure(ptr noundef nonnull %95)
  %103 = icmp ne i32 %75, %14
  %104 = icmp ne i32 %102, %14
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = tail call i32 @integer_zerop(ptr noundef %29) #25
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = tail call i32 @integer_zerop(ptr noundef %48) #25
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109, %101, %13
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 30, i64 1, ptr nonnull %113)
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %118 = load ptr, ptr %3, align 8, !tbaa !207
  tail call void @print_gimple_stmt(ptr noundef %117, ptr noundef %118, i32 noundef 0, i32 noundef 0) #25
  br label %119

119:                                              ; preds = %115, %112
  store i8 0, ptr %1, align 1, !tbaa !46
  br label %120

120:                                              ; preds = %106, %109, %2, %119
  %121 = phi i32 [ 0, %119 ], [ 1, %2 ], [ 1, %109 ], [ 1, %106 ]
  ret i32 %121
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_field_acc(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !209
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #25
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !223
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0) #25
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !224
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %21, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0) #25
  br label %22

22:                                               ; preds = %20, %16
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_acc(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !207
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #25
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %12 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 3, i64 1, ptr %11)
  %13 = getelementptr inbounds %struct.access_site, ptr %3, i64 0, i32 1
  br label %14

14:                                               ; preds = %28, %10
  %15 = phi i32 [ 0, %10 ], [ %32, %28 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !220
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8, !tbaa !95
  %20 = icmp ugt i32 %19, %15
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = zext i32 %15 to i64
  %23 = getelementptr inbounds %struct.VEC_tree_base, ptr %16, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  br label %25

25:                                               ; preds = %14, %18, %21
  %26 = phi ptr [ %24, %21 ], [ null, %18 ], [ null, %14 ]
  %27 = phi i1 [ false, %21 ], [ true, %18 ], [ true, %14 ]
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %29, ptr noundef %26, i32 noundef 0) #25
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %31 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %30)
  %32 = add i32 %15, 1
  br label %14, !llvm.loop !234

33:                                               ; preds = %25
  ret i32 1
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gen_cluster_name(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %18 [
    i16 1, label %14
    i16 35, label %10
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %5, %7 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %14, %3, %7, %10
  %19 = phi ptr [ null, %3 ], [ null, %7 ], [ null, %10 ], [ %17, %14 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = alloca [38 x i8], align 16
  %23 = sext i32 %2 to i64
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull @.str.43, i64 noundef %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi ptr [ null, %18 ], [ %22, %21 ]
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %19, ptr %26
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28)
  %30 = add i64 %29, 5
  %31 = alloca i8, i64 %30, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %31, ptr align 1 %28, i64 %29, i1 false)
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28)
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %33, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  %34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31)
  %35 = add i64 %34, 32
  %36 = alloca i8, i64 %35, align 16
  %37 = sext i32 %1 to i64
  %38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %31, i64 noundef %37)
  %39 = call ptr @get_identifier(ptr noundef nonnull %36) #25
  ret ptr %39
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_struct_type(ptr noundef %0, i64 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = icmp ne ptr %0, null
  %4 = load ptr, ptr @dump_file, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %97

7:                                                ; preds = %2
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %20, label %14

13:                                               ; preds = %7
  tail call void @print_generic_expr(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0) #25
  br label %97

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %16, %14 ], [ %1, %11 ]
  %16 = add i64 %15, -1
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %18 = tail call i32 @fputc(i32 32, ptr %17)
  %19 = icmp eq i64 %16, 0
  br i1 %19, label %20, label %14, !llvm.loop !235

20:                                               ; preds = %14, %11
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %22, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %35 [
    i16 1, label %31
    i16 35, label %27
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %22, %24 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.tree_identifier, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  br label %35

35:                                               ; preds = %31, %20, %24, %27
  %36 = phi ptr [ null, %20 ], [ null, %24 ], [ null, %27 ], [ %34, %31 ]
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %38 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 7, i64 1, ptr %37)
  %39 = icmp eq ptr %36, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.50, ptr noundef nonnull %36)
  br label %43

43:                                               ; preds = %40, %35
  %44 = icmp eq i64 %1, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ %47, %45 ], [ %1, %43 ]
  %47 = add i64 %46, -1
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %49 = tail call i32 @fputc(i32 32, ptr %48)
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %51, label %45, !llvm.loop !235

51:                                               ; preds = %45, %43
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 2, i64 1, ptr %52)
  %54 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = icmp eq i64 %1, 0
  %59 = add i64 %1, 2
  br label %62

60:                                               ; preds = %79, %51
  %61 = icmp eq i64 %1, 0
  br i1 %61, label %94, label %88

62:                                               ; preds = %57, %79
  %63 = phi ptr [ %55, %57 ], [ %86, %79 ]
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  br i1 %58, label %72, label %66

66:                                               ; preds = %62, %66
  %67 = phi i64 [ %68, %66 ], [ %1, %62 ]
  %68 = add i64 %67, -1
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %70 = tail call i32 @fputc(i32 32, ptr %69)
  %71 = icmp eq i64 %68, 0
  br i1 %71, label %72, label %66, !llvm.loop !235

72:                                               ; preds = %66, %62
  br label %73

73:                                               ; preds = %72, %73
  %74 = phi i64 [ %75, %73 ], [ 2, %72 ]
  %75 = add nsw i64 %74, -1
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %77 = tail call i32 @fputc(i32 32, ptr %76)
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %79, label %73, !llvm.loop !236

79:                                               ; preds = %73
  tail call fastcc void @dump_struct_type(ptr noundef %65, i64 noundef %59)
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %81 = tail call i32 @fputc(i32 32, ptr %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %63, i32 noundef 0) #25
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %84 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 2, i64 1, ptr %83)
  %85 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = icmp eq ptr %86, null
  br i1 %87, label %60, label %62, !llvm.loop !237

88:                                               ; preds = %60, %88
  %89 = phi i64 [ %90, %88 ], [ %1, %60 ]
  %90 = add i64 %89, -1
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %92 = tail call i32 @fputc(i32 32, ptr %91)
  %93 = icmp eq i64 %90, 0
  br i1 %93, label %94, label %88, !llvm.loop !235

94:                                               ; preds = %88, %60
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %96 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 2, i64 1, ptr %95)
  br label %97

97:                                               ; preds = %2, %94, %13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @new_var_hash(ptr nocapture noundef readonly %0) #20 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !238
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !46
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @new_var_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !238
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi i32 [ %15, %8 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_new_var(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = icmp eq ptr %0, null
  br i1 %5, label %213, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %0, i32 noundef %8) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %213

11:                                               ; preds = %6
  %12 = call fastcc zeroext i8 @is_candidate(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef null), !range !72
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %213, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !35
  %16 = tail call fastcc i32 @find_structure(ptr noundef %15)
  %17 = load ptr, ptr @structures, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %17, align 8, !tbaa !78
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %14 ]
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %213, label %24

24:                                               ; preds = %21
  %25 = zext i32 %16 to i64
  %26 = tail call ptr @xmalloc(i64 noundef 16) #25
  store ptr %0, ptr %26, align 8, !tbaa !238
  %27 = getelementptr inbounds %struct.VEC_structure_base, ptr %17, i64 0, i32 2, i64 %25, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !166
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %28, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %24, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %24 ]
  %34 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %33) #25
  %35 = getelementptr inbounds %struct.new_var_data, ptr %26, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !240
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %37 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  br label %41

41:                                               ; preds = %201, %32
  %42 = phi i32 [ 0, %32 ], [ %207, %201 ]
  %43 = load ptr, ptr %27, align 8, !tbaa !166
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8, !tbaa !95
  %47 = icmp ugt i32 %46, %42
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = zext i32 %42 to i64
  %50 = getelementptr inbounds %struct.VEC_tree_base, ptr %43, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  br label %52

52:                                               ; preds = %48, %45, %41
  %53 = phi ptr [ %51, %48 ], [ null, %45 ], [ null, %41 ]
  %54 = phi i1 [ false, %48 ], [ true, %45 ], [ true, %41 ]
  br i1 %54, label %208, label %55

55:                                               ; preds = %52
  %56 = zext i32 %42 to i64
  %57 = tail call fastcc ptr @gen_var_name(ptr noundef %0, i64 noundef %56)
  %58 = load i64, ptr %0, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 34
  %61 = select i1 %60, ptr %36, ptr %37
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 10, i64 noundef 8, i64 noundef 16) #25
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3)
  br label %64

64:                                               ; preds = %85, %55
  %65 = phi ptr [ %63, %55 ], [ %86, %85 ]
  %66 = phi ptr [ %62, %55 ], [ %94, %85 ]
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %69 [
    i16 10, label %74
    i16 12, label %74
    i16 15, label %71
  ]

69:                                               ; preds = %64
  %70 = icmp eq ptr %65, null
  br label %95

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  br label %74

74:                                               ; preds = %64, %64, %71
  %75 = phi ptr [ %73, %71 ], [ null, %64 ], [ null, %64 ]
  %76 = phi i8 [ 1, %71 ], [ 0, %64 ], [ 0, %64 ]
  %77 = icmp eq ptr %65, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %65, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !241
  %81 = load i32, ptr %65, align 8, !tbaa !243
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %74
  %84 = tail call ptr @vec_heap_o_reserve(ptr noundef %65, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %65, %78 ]
  %87 = load i32, ptr %86, align 8, !tbaa !243
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !243
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %86, i64 0, i32 2, i64 %89
  store i8 %76, ptr %90, align 8, !tbaa.struct !244
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %91, ptr noundef nonnull align 1 dereferenceable(7) %3, i64 7, i1 false), !tbaa.struct !245
  %92 = getelementptr inbounds i8, ptr %90, i64 8
  store ptr %75, ptr %92, align 8, !tbaa.struct !107
  %93 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  br label %64, !llvm.loop !246

95:                                               ; preds = %69, %115
  %96 = phi ptr [ %116, %115 ], [ %53, %69 ]
  br i1 %70, label %99, label %97

97:                                               ; preds = %95
  %98 = load i32, ptr %65, align 8, !tbaa !243
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %98, %97 ], [ 0, %95 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %119, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %65, align 8, !tbaa !243
  %104 = add i32 %103, -1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %65, i64 0, i32 2, i64 %105
  %107 = load i8, ptr %106, align 8, !tbaa !247
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %65, i64 0, i32 2, i64 %105, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !249
  %112 = tail call ptr @build_array_type(ptr noundef %96, ptr noundef %111) #25
  br label %115

113:                                              ; preds = %102
  %114 = tail call ptr @build_pointer_type(ptr noundef %96) #25
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi ptr [ %112, %109 ], [ %114, %113 ]
  %117 = load i32, ptr %65, align 8, !tbaa !243
  %118 = add i32 %117, -1
  store i32 %118, ptr %65, align 8, !tbaa !243
  br label %95, !llvm.loop !250

119:                                              ; preds = %99
  br i1 %70, label %121, label %120

120:                                              ; preds = %119
  tail call void @free(ptr noundef %65)
  br label %121

121:                                              ; preds = %120, %119
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3)
  %122 = load i64, ptr %0, align 8
  %123 = and i64 %122, 67108864
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %127 = load i64, ptr %126, align 8
  %128 = lshr i64 %127, 25
  %129 = trunc i64 %128 to i8
  %130 = and i8 %129, 1
  br label %131

131:                                              ; preds = %125, %121
  %132 = phi i8 [ 1, %121 ], [ %130, %125 ]
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr %38, align 8, !tbaa !46
  %136 = tail call ptr @build_decl_stat(i32 noundef %135, i32 noundef 32, ptr noundef %57, ptr noundef %96) #25
  br label %145

137:                                              ; preds = %131
  %138 = icmp eq ptr %57, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.tree_identifier, ptr %57, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  br label %142

142:                                              ; preds = %139, %137
  %143 = phi ptr [ %141, %139 ], [ null, %137 ]
  %144 = tail call ptr @create_tmp_var(ptr noundef %96, ptr noundef %143) #25
  br label %145

145:                                              ; preds = %142, %134
  %146 = phi ptr [ %136, %134 ], [ %144, %142 ]
  %147 = getelementptr inbounds %struct.tree_decl_common, ptr %146, i64 0, i32 2
  %148 = load i64, ptr %147, align 8
  %149 = or i64 %148, 4096
  store i64 %149, ptr %147, align 8
  %150 = load i64, ptr %39, align 8
  %151 = and i64 %150, 33554432
  %152 = and i64 %149, -33554433
  %153 = or disjoint i64 %151, %152
  store i64 %153, ptr %147, align 8
  %154 = load i64, ptr %0, align 8
  %155 = and i64 %154, 67108864
  %156 = load i64, ptr %146, align 8
  %157 = and i64 %156, -67108865
  %158 = or disjoint i64 %157, %155
  store i64 %158, ptr %146, align 8
  %159 = load i64, ptr %0, align 8
  %160 = and i64 %159, 134217728
  %161 = and i64 %158, -134217729
  %162 = or disjoint i64 %161, %160
  store i64 %162, ptr %146, align 8
  %163 = load i64, ptr %0, align 8
  %164 = and i64 %163, 16777216
  %165 = and i64 %162, -16777217
  %166 = or disjoint i64 %165, %164
  store i64 %166, ptr %146, align 8
  %167 = load ptr, ptr %40, align 8, !tbaa !46
  %168 = getelementptr inbounds %struct.tree_decl_minimal, ptr %146, i64 0, i32 4
  store ptr %167, ptr %168, align 8, !tbaa !46
  %169 = load i64, ptr %0, align 8
  %170 = and i64 %169, 524288
  %171 = and i64 %166, -524289
  %172 = or disjoint i64 %170, %171
  store i64 %172, ptr %146, align 8
  %173 = load i64, ptr %0, align 8
  %174 = and i64 %173, 262144
  %175 = and i64 %172, -262145
  %176 = or disjoint i64 %175, %174
  store i64 %176, ptr %146, align 8
  %177 = load i64, ptr %0, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 32
  br i1 %179, label %180, label %191

180:                                              ; preds = %145
  %181 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %182 = and i64 %177, 1048576
  %183 = and i64 %176, -1048577
  %184 = or disjoint i64 %183, %182
  store i64 %184, ptr %146, align 8
  %185 = load i32, ptr %181, align 8
  %186 = and i32 %185, 57344
  %187 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %146, i64 0, i32 4
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, -57345
  %190 = or disjoint i32 %189, %186
  store i32 %190, ptr %187, align 8
  br label %191

191:                                              ; preds = %180, %145
  %192 = load ptr, ptr %35, align 8, !tbaa !35
  %193 = icmp eq ptr %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.VEC_tree_base, ptr %192, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !163
  %197 = load i32, ptr %192, align 8, !tbaa !95
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %194, %191
  %200 = tail call ptr @vec_heap_p_reserve(ptr noundef %192, i32 noundef 1) #25
  store ptr %200, ptr %35, align 8, !tbaa !35
  br label %201

201:                                              ; preds = %199, %194
  %202 = load ptr, ptr %35, align 8, !tbaa !35
  %203 = load i32, ptr %202, align 8, !tbaa !95
  %204 = add i32 %203, 1
  store i32 %204, ptr %202, align 8, !tbaa !95
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds %struct.VEC_tree_base, ptr %202, i64 0, i32 2, i64 %205
  store ptr %146, ptr %206, align 8, !tbaa !35
  %207 = add i32 %42, 1
  br label %41, !llvm.loop !251

208:                                              ; preds = %52
  %209 = load ptr, ptr %26, align 8, !tbaa !238
  %210 = getelementptr inbounds %struct.tree_decl_minimal, ptr %209, i64 0, i32 2
  %211 = load i32, ptr %210, align 4, !tbaa !46
  %212 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef %209, i32 noundef %211, i32 noundef 1) #25
  store ptr %26, ptr %212, align 8, !tbaa !35
  br label %213

213:                                              ; preds = %21, %11, %2, %6, %208
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @update_varpool_with_new_var(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.new_var_data, ptr %3, i64 0, i32 1
  br label %5

5:                                                ; preds = %19, %2
  %6 = phi i32 [ 0, %2 ], [ %21, %19 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !240
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !95
  %11 = icmp ugt i32 %10, %6
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds %struct.VEC_tree_base, ptr %7, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %5, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %5 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %5 ]
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @varpool_node(ptr noundef %17) #25
  tail call void @notice_global_symbol(ptr noundef %17) #25
  tail call void @varpool_mark_needed_node(ptr noundef %20) #25
  tail call void @varpool_finalize_decl(ptr noundef %17) #25
  %21 = add i32 %6, 1
  br label %5, !llvm.loop !252

22:                                               ; preds = %16
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gen_var_name(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %12 = add i64 %11, 1
  %13 = alloca i8, i64 %12, align 16
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %8)
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13)
  %16 = add i64 %15, 32
  %17 = alloca i8, i64 %16, align 16
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %13, i64 noundef %1)
  %19 = call ptr @get_identifier(ptr noundef nonnull %17) #25
  br label %20

20:                                               ; preds = %2, %6, %10
  %21 = phi ptr [ %19, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %21
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_new_var(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 34
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 5
  %11 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi ptr [ null, %2 ], [ %13, %6 ]
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 11, i64 1, ptr %16)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %19 = load ptr, ptr %3, align 8, !tbaa !238
  tail call void @print_generic_expr(ptr noundef %18, ptr noundef %19, i32 noundef 0) #25
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %21 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %20)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %22, ptr noundef %15, i32 noundef 0) #25
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  %25 = getelementptr inbounds %struct.new_var_data, ptr %3, i64 0, i32 1
  br label %26

26:                                               ; preds = %50, %14
  %27 = phi i32 [ 0, %14 ], [ %60, %50 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !240
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 8, !tbaa !95
  %32 = icmp ugt i32 %31, %27
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = zext i32 %27 to i64
  %35 = getelementptr inbounds %struct.VEC_tree_base, ptr %28, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %26, %30, %33
  %38 = phi ptr [ %36, %33 ], [ null, %30 ], [ null, %26 ]
  %39 = phi i1 [ false, %33 ], [ true, %30 ], [ true, %26 ]
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %38, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  %43 = load i64, ptr %38, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 34
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 5
  %47 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %48 = select i1 %45, ptr %46, ptr %47
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  br label %50

50:                                               ; preds = %42, %40
  %51 = phi ptr [ null, %40 ], [ %49, %42 ]
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %52)
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %54, ptr noundef %38, i32 noundef 0) #25
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %56 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %55)
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %57, ptr noundef %51, i32 noundef 0) #25
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %59 = tail call i32 @fputc(i32 10, ptr %58)
  %60 = add i32 %27, 1
  br label %26, !llvm.loop !253

61:                                               ; preds = %37
  ret i32 1
}

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare void @set_cfun(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @finalize_new_vars_creation(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.new_var_data, ptr %3, i64 0, i32 1
  br label %5

5:                                                ; preds = %19, %2
  %6 = phi i32 [ 0, %2 ], [ %21, %19 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !240
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !95
  %11 = icmp ugt i32 %10, %6
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds %struct.VEC_tree_base, ptr %7, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %5, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %5 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %5 ]
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @add_referenced_var(ptr noundef %17) #25
  tail call void @mark_sym_for_renaming(ptr noundef %17) #25
  %21 = add i32 %6, 1
  br label %5, !llvm.loop !254

22:                                               ; preds = %16
  ret i32 1
}

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_seq_after_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #25
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1) #25
  br label %8

8:                                                ; preds = %2, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @multiple_of_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @gen_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @create_tmp_var(ptr noundef %9, ptr noundef null) #25
  store ptr %10, ptr %2, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %10) #25
  br label %14

14:                                               ; preds = %12, %3
  %15 = tail call i32 @exact_log2(i64 noundef %7) #25
  %16 = icmp eq i32 %15, -1
  %17 = load ptr, ptr %8, align 8, !tbaa !46
  br i1 %16, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @exact_log2(i64 noundef %7) #25
  %20 = sext i32 %19 to i64
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi i64 [ %20, %18 ], [ %7, %14 ]
  %23 = phi i32 [ 83, %18 ], [ 65, %14 ]
  %24 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef %22) #25
  %25 = load ptr, ptr %2, align 8, !tbaa !35
  %26 = load ptr, ptr %8, align 8, !tbaa !46
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %23, ptr noundef %26, ptr noundef %0, ptr noundef %24) #25
  %28 = tail call ptr @gimple_build_assign_stat(ptr noundef %25, ptr noundef %27) #25
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  tail call void @gimple_set_modified(ptr noundef nonnull %28, i8 noundef zeroext 1) #25
  tail call void @update_stmt_operands(ptr noundef nonnull %28) #25
  br label %34

34:                                               ; preds = %21, %33
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %28) #25
  ret ptr %28
}

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @gen_cast_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 !prof !34 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !99
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %2, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi ptr [ %20, %18 ], [ null, %4 ]
  %23 = tail call fastcc ptr @find_new_var_of_type(ptr noundef %22, ptr noundef %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 658, ptr noundef nonnull @.str.4) #25
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 116, ptr noundef %23, ptr noundef %0, ptr noundef null) #25
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @gimple_set_modified(ptr noundef nonnull %27, i8 noundef zeroext 1) #25
  tail call void @update_stmt_operands(ptr noundef nonnull %27) #25
  br label %33

33:                                               ; preds = %26, %32
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %27) #25
  store ptr %23, ptr %3, align 8, !tbaa !35
  ret ptr %27
}

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_new_var_of_type(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #10 !prof !34 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 597, ptr noundef nonnull @.str.4) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %0, %7 ]
  %16 = load ptr, ptr @new_global_vars, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = tail call ptr @htab_find_with_hash(ptr noundef %16, ptr noundef %15, i32 noundef %18) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load ptr, ptr @new_local_vars, align 8, !tbaa !35
  %23 = load i32, ptr %17, align 4, !tbaa !46
  %24 = tail call ptr @htab_find_with_hash(ptr noundef %22, ptr noundef %15, i32 noundef %23) #25
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi ptr [ %19, %14 ], [ %24, %21 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 605, ptr noundef nonnull @.str.4) #25
  br label %29

29:                                               ; preds = %25, %28
  %30 = getelementptr inbounds %struct.new_var_data, ptr %26, i64 0, i32 1
  br label %31

31:                                               ; preds = %72, %29
  %32 = phi i32 [ 0, %29 ], [ %75, %72 ]
  %33 = phi ptr [ undef, %29 ], [ %74, %72 ]
  %34 = load ptr, ptr %30, align 8, !tbaa !240
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %34, align 8, !tbaa !95
  %38 = icmp ugt i32 %37, %32
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = zext i32 %32 to i64
  %41 = getelementptr inbounds %struct.VEC_tree_base, ptr %34, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %39, %36, %31
  %44 = phi ptr [ %42, %39 ], [ null, %36 ], [ null, %31 ]
  %45 = phi i1 [ false, %39 ], [ true, %36 ], [ true, %31 ]
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  %47 = icmp eq ptr %44, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %46
  %49 = load i64, ptr %44, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 34
  %52 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 5
  %54 = select i1 %51, ptr %53, ptr %52
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %48, %46
  %57 = phi ptr [ null, %46 ], [ %55, %48 ]
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %69
  %66 = phi ptr [ %71, %69 ], [ %57, %64 ]
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %72 [
    i16 10, label %69
    i16 12, label %69
    i16 15, label %69
  ]

69:                                               ; preds = %65, %65, %65
  %70 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  br label %65, !llvm.loop !85

72:                                               ; preds = %65
  %73 = icmp eq ptr %66, %1
  %74 = select i1 %73, ptr %44, ptr %33
  %75 = add i32 %32, 1
  br i1 %73, label %76, label %31, !llvm.loop !255

76:                                               ; preds = %43, %72
  %77 = phi ptr [ %74, %72 ], [ null, %43 ]
  ret ptr %77
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_new_field_acc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.walk_stmt_info, align 8
  %8 = alloca %struct.walk_stmt_info, align 8
  %9 = alloca %struct.ref_pos, align 8
  %10 = alloca [7 x i8], align 1
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = load ptr, ptr %1, align 8, !tbaa !191
  %17 = load ptr, ptr %15, align 8, !tbaa !209
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %21, label %531

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !192
  %24 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !189
  %26 = getelementptr inbounds %struct.data_structure, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds %struct.field_entry, ptr %27, i64 %28, i32 3
  %30 = load ptr, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #25
  store ptr null, ptr %14, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !256
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %21
  %35 = call fastcc ptr @gen_size(ptr noundef nonnull %32, ptr noundef %30, ptr noundef nonnull %13)
  %36 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #25
  %38 = icmp ne ptr %37, null
  %39 = icmp ne ptr %35, null
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef nonnull %37) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #25
  call void @gsi_insert_before(ptr noundef nonnull %11, ptr noundef nonnull %35, i32 noundef 1) #25
  br label %42

42:                                               ; preds = %41, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #25
  br label %43

43:                                               ; preds = %42, %21
  %44 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !224
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %13, align 8, !tbaa !35
  %49 = call fastcc ptr @gen_cast_stmt(ptr noundef %48, ptr noundef %30, ptr noundef nonnull %45, ptr noundef nonnull %14)
  %50 = load ptr, ptr %44, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %51 = icmp ne ptr %50, null
  %52 = icmp ne ptr %49, null
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %50) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %49, i32 noundef 1) #25
  br label %55

55:                                               ; preds = %47, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %56

56:                                               ; preds = %55, %43
  %57 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !223
  %59 = icmp eq ptr %58, null
  br i1 %59, label %294, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %14, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  %63 = load ptr, ptr %13, align 8
  %64 = select i1 %62, ptr %63, ptr %61
  %65 = load i32, ptr %58, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -10
  %68 = icmp ult i32 %67, -9
  br i1 %68, label %81, label %69

69:                                               ; preds = %60
  %70 = zext nneg i32 %66 to i64
  %71 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !99
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %78

78:                                               ; preds = %77, %69
  %79 = getelementptr inbounds i8, ptr %58, i64 %75
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  br label %81

81:                                               ; preds = %78, %60
  %82 = phi ptr [ %80, %78 ], [ null, %60 ]
  %83 = load i64, ptr %82, align 8
  %84 = trunc i64 %83 to i16
  switch i16 %84, label %85 [
    i16 32, label %86
    i16 141, label %86
  ]

85:                                               ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1086, ptr noundef nonnull @.str.4) #25
  br label %86

86:                                               ; preds = %81, %85, %81
  %87 = call fastcc ptr @find_new_var_of_type(ptr noundef nonnull %82, ptr noundef %30)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1089, ptr noundef nonnull @.str.4) #25
  br label %90

90:                                               ; preds = %89, %86
  %91 = call zeroext i8 @add_referenced_var(ptr noundef %87) #25
  call void @mark_sym_for_renaming(ptr noundef %87) #25
  %92 = load i32, ptr %58, align 8
  %93 = trunc i32 %92 to i8
  switch i8 %93, label %96 [
    i8 6, label %94
    i8 1, label %94
    i8 8, label %97
  ]

94:                                               ; preds = %90, %90
  %95 = lshr i32 %92, 16
  br label %97

96:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.4) #25
  br label %97

97:                                               ; preds = %96, %94, %90
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ], [ 59, %90 ]
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !46
  %102 = icmp eq i8 %101, 3
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load i32, ptr %58, align 8
  %105 = and i32 %104, 255
  %106 = add nsw i32 %105, -1
  %107 = icmp ult i32 %106, 9
  call void @llvm.assume(i1 %107)
  %108 = zext nneg i32 %105 to i64
  %109 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !50
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !99
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %116

116:                                              ; preds = %115, %103
  %117 = getelementptr inbounds i8, ptr %58, i64 %113
  %118 = getelementptr inbounds ptr, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !35
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = and i32 %121, 65535
  br label %123

123:                                              ; preds = %116, %97
  %124 = phi i32 [ %122, %116 ], [ %98, %97 ]
  %125 = trunc i32 %124 to i16
  switch i16 %125, label %246 [
    i16 63, label %126
    i16 64, label %126
    i16 66, label %126
  ]

126:                                              ; preds = %123, %123, %123
  %127 = load i32, ptr %58, align 8
  %128 = and i32 %127, 255
  %129 = add nsw i32 %128, -10
  %130 = icmp ult i32 %129, -9
  br i1 %130, label %144, label %131

131:                                              ; preds = %126
  %132 = zext nneg i32 %128 to i64
  %133 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !50
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !99
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %140

140:                                              ; preds = %139, %131
  %141 = getelementptr inbounds i8, ptr %58, i64 %137
  %142 = getelementptr inbounds ptr, ptr %141, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !35
  br label %144

144:                                              ; preds = %140, %126
  %145 = phi ptr [ %143, %140 ], [ null, %126 ]
  %146 = getelementptr inbounds %struct.gimple_statement_base, ptr %58, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !46
  %148 = icmp ugt i32 %147, 2
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load i32, ptr %58, align 8
  %151 = and i32 %150, 255
  %152 = add nsw i32 %151, -10
  %153 = icmp ult i32 %152, -9
  br i1 %153, label %167, label %154

154:                                              ; preds = %149
  %155 = zext nneg i32 %151 to i64
  %156 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !50
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !99
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %163

163:                                              ; preds = %162, %154
  %164 = getelementptr inbounds i8, ptr %58, i64 %160
  %165 = getelementptr inbounds ptr, ptr %164, i64 2
  %166 = load ptr, ptr %165, align 8, !tbaa !35
  br label %167

167:                                              ; preds = %163, %149, %144
  %168 = phi ptr [ null, %144 ], [ %166, %163 ], [ null, %149 ]
  %169 = load ptr, ptr @structures, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %169, align 8, !tbaa !78
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi i32 [ %172, %171 ], [ 0, %167 ]
  %175 = icmp eq ptr %145, null
  br i1 %175, label %184, label %176

176:                                              ; preds = %173
  %177 = load i64, ptr %145, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 34
  %180 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %181 = getelementptr inbounds %struct.tree_decl_common, ptr %145, i64 0, i32 5
  %182 = select i1 %179, ptr %181, ptr %180
  %183 = load ptr, ptr %182, align 8, !tbaa !46
  br label %184

184:                                              ; preds = %176, %173
  %185 = phi ptr [ null, %173 ], [ %183, %176 ]
  %186 = load i64, ptr %185, align 8
  %187 = and i64 %186, 65535
  %188 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %192

192:                                              ; preds = %191, %184
  br label %193

193:                                              ; preds = %192, %197
  %194 = phi ptr [ %199, %197 ], [ %185, %192 ]
  %195 = load i64, ptr %194, align 8
  %196 = trunc i64 %195 to i16
  switch i16 %196, label %200 [
    i16 10, label %197
    i16 12, label %197
    i16 15, label %197
  ]

197:                                              ; preds = %193, %193, %193
  %198 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !46
  br label %193, !llvm.loop !85

200:                                              ; preds = %193
  %201 = call fastcc i32 @find_structure(ptr noundef nonnull %194)
  %202 = icmp eq ptr %168, null
  br i1 %202, label %211, label %203

203:                                              ; preds = %200
  %204 = load i64, ptr %168, align 8
  %205 = and i64 %204, 65535
  %206 = icmp eq i64 %205, 34
  %207 = getelementptr inbounds %struct.tree_common, ptr %168, i64 0, i32 2
  %208 = getelementptr inbounds %struct.tree_decl_common, ptr %168, i64 0, i32 5
  %209 = select i1 %206, ptr %208, ptr %207
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  br label %211

211:                                              ; preds = %203, %200
  %212 = phi ptr [ null, %200 ], [ %210, %203 ]
  %213 = load i64, ptr %212, align 8
  %214 = and i64 %213, 65535
  %215 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !50
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %219, label %218

218:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %219

219:                                              ; preds = %218, %211
  br label %220

220:                                              ; preds = %219, %224
  %221 = phi ptr [ %226, %224 ], [ %212, %219 ]
  %222 = load i64, ptr %221, align 8
  %223 = trunc i64 %222 to i16
  switch i16 %223, label %227 [
    i16 10, label %224
    i16 12, label %224
    i16 15, label %224
  ]

224:                                              ; preds = %220, %220, %220
  %225 = getelementptr inbounds %struct.tree_common, ptr %221, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !46
  br label %220, !llvm.loop !85

227:                                              ; preds = %220
  %228 = call fastcc i32 @find_structure(ptr noundef nonnull %221)
  %229 = icmp eq i32 %201, %174
  %230 = icmp eq i32 %228, %174
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1106, ptr noundef nonnull @.str.4) #25
  br label %233

233:                                              ; preds = %232, %227
  br i1 %229, label %236, label %234

234:                                              ; preds = %233
  %235 = call fastcc ptr @find_new_var_of_type(ptr noundef %145, ptr noundef %30)
  br label %236

236:                                              ; preds = %234, %233
  %237 = phi ptr [ %235, %234 ], [ null, %233 ]
  br i1 %230, label %240, label %238

238:                                              ; preds = %236
  %239 = call fastcc ptr @find_new_var_of_type(ptr noundef %168, ptr noundef %30)
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi ptr [ %239, %238 ], [ null, %236 ]
  %242 = icmp eq ptr %237, null
  %243 = select i1 %242, ptr %64, ptr %237
  %244 = icmp eq ptr %241, null
  %245 = select i1 %244, ptr %64, ptr %241
  br label %247

246:                                              ; preds = %123
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1121, ptr noundef nonnull @.str.4) #25
  br label %247

247:                                              ; preds = %246, %240
  %248 = phi ptr [ null, %246 ], [ %245, %240 ]
  %249 = phi ptr [ null, %246 ], [ %243, %240 ]
  %250 = load i32, ptr %58, align 8
  %251 = trunc i32 %250 to i8
  switch i8 %251, label %254 [
    i8 6, label %252
    i8 1, label %252
    i8 8, label %255
  ]

252:                                              ; preds = %247, %247
  %253 = lshr i32 %250, 16
  br label %255

254:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.4) #25
  br label %255

255:                                              ; preds = %254, %252, %247
  %256 = phi i32 [ %253, %252 ], [ 0, %254 ], [ 59, %247 ]
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !46
  %260 = icmp eq i8 %259, 3
  br i1 %260, label %261, label %281

261:                                              ; preds = %255
  %262 = load i32, ptr %58, align 8
  %263 = and i32 %262, 255
  %264 = add nsw i32 %263, -1
  %265 = icmp ult i32 %264, 9
  call void @llvm.assume(i1 %265)
  %266 = zext nneg i32 %263 to i64
  %267 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !50
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !99
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %261
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %274

274:                                              ; preds = %273, %261
  %275 = getelementptr inbounds i8, ptr %58, i64 %271
  %276 = getelementptr inbounds ptr, ptr %275, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !35
  %278 = load i64, ptr %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = and i32 %279, 65535
  br label %281

281:                                              ; preds = %274, %255
  %282 = phi i32 [ %280, %274 ], [ %256, %255 ]
  %283 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %282, ptr noundef %87, ptr noundef %249, ptr noundef %248) #25
  %284 = load i32, ptr %283, align 8
  %285 = and i32 %284, 255
  %286 = add nsw i32 %285, -10
  %287 = icmp ult i32 %286, -9
  br i1 %287, label %289, label %288

288:                                              ; preds = %281
  call void @gimple_set_modified(ptr noundef nonnull %283, i8 noundef zeroext 1) #25
  call void @update_stmt_operands(ptr noundef nonnull %283) #25
  br label %289

289:                                              ; preds = %288, %281
  call void @mark_symbols_for_renaming(ptr noundef nonnull %283) #25
  %290 = load ptr, ptr %57, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %291 = icmp eq ptr %290, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %290) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef nonnull %283, i32 noundef 1) #25
  br label %293

293:                                              ; preds = %289, %292
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  br label %294

294:                                              ; preds = %293, %56
  %295 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !217
  %297 = load i64, ptr %296, align 8
  %298 = trunc i64 %297 to i16
  switch i16 %298, label %529 [
    i16 47, label %299
    i16 45, label %299
    i16 32, label %299
  ]

299:                                              ; preds = %294, %294, %294
  %300 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !218
  %302 = getelementptr inbounds %struct.tree_decl_minimal, ptr %301, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !46
  %304 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 10, i64 noundef 8, i64 noundef 16) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #25
  br label %305

305:                                              ; preds = %327, %299
  %306 = phi ptr [ %304, %299 ], [ %328, %327 ]
  %307 = phi ptr [ %296, %299 ], [ %336, %327 ]
  %308 = load i64, ptr %307, align 8
  %309 = trunc i64 %308 to i16
  switch i16 %309, label %337 [
    i16 47, label %310
    i16 45, label %310
  ]

310:                                              ; preds = %305, %305
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %10)
  %311 = and i64 %308, 65535
  %312 = icmp eq i64 %311, 47
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.tree_exp, ptr %307, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !46
  br label %316

316:                                              ; preds = %313, %310
  %317 = phi ptr [ %315, %313 ], [ null, %310 ]
  %318 = phi i8 [ 1, %313 ], [ 0, %310 ]
  %319 = icmp eq ptr %306, null
  br i1 %319, label %325, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %306, i64 0, i32 1
  %322 = load i32, ptr %321, align 4, !tbaa !241
  %323 = load i32, ptr %306, align 8, !tbaa !243
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %320, %316
  %326 = call ptr @vec_heap_o_reserve(ptr noundef %306, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  br label %327

327:                                              ; preds = %325, %320
  %328 = phi ptr [ %326, %325 ], [ %306, %320 ]
  %329 = load i32, ptr %328, align 8, !tbaa !243
  %330 = add i32 %329, 1
  store i32 %330, ptr %328, align 8, !tbaa !243
  %331 = zext i32 %329 to i64
  %332 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %328, i64 0, i32 2, i64 %331
  store i8 %318, ptr %332, align 8, !tbaa.struct !244
  %333 = getelementptr inbounds i8, ptr %332, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %333, ptr noundef nonnull align 1 dereferenceable(7) %10, i64 7, i1 false), !tbaa.struct !245
  %334 = getelementptr inbounds i8, ptr %332, i64 8
  store ptr %317, ptr %334, align 8, !tbaa.struct !107
  %335 = getelementptr inbounds %struct.tree_exp, ptr %307, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %10)
  br label %305, !llvm.loop !257

337:                                              ; preds = %305
  %338 = call fastcc ptr @find_new_var_of_type(ptr noundef nonnull %307, ptr noundef %30)
  %339 = load i64, ptr %338, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 32
  br i1 %341, label %342, label %352

342:                                              ; preds = %337
  %343 = and i64 %339, 67108864
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.tree_decl_common, ptr %338, i64 0, i32 2
  %347 = load i64, ptr %346, align 8
  %348 = and i64 %347, 33554432
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %345, %342
  %351 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %338) #25
  call void @mark_sym_for_renaming(ptr noundef nonnull %338) #25
  br label %352

352:                                              ; preds = %350, %345, %337
  %353 = icmp eq ptr %306, null
  br label %354

354:                                              ; preds = %378, %352
  %355 = phi ptr [ %338, %352 ], [ %379, %378 ]
  br i1 %353, label %358, label %356

356:                                              ; preds = %354
  %357 = load i32, ptr %306, align 8, !tbaa !243
  br label %358

358:                                              ; preds = %356, %354
  %359 = phi i32 [ %357, %356 ], [ 0, %354 ]
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %382, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.tree_common, ptr %355, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !46
  %364 = getelementptr inbounds %struct.tree_common, ptr %363, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = load i32, ptr %306, align 8, !tbaa !243
  %367 = add i32 %366, -1
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %306, i64 0, i32 2, i64 %368
  %370 = load i8, ptr %369, align 8, !tbaa !247
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %361
  %373 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %306, i64 0, i32 2, i64 %368, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !249
  %375 = call ptr @build4_stat(i32 noundef 45, ptr noundef %365, ptr noundef %355, ptr noundef %374, ptr noundef null, ptr noundef null) #25
  br label %378

376:                                              ; preds = %361
  %377 = call ptr @build1_stat(i32 noundef 47, ptr noundef %365, ptr noundef %355) #25
  br label %378

378:                                              ; preds = %376, %372
  %379 = phi ptr [ %375, %372 ], [ %377, %376 ]
  %380 = load i32, ptr %306, align 8, !tbaa !243
  %381 = add i32 %380, -1
  store i32 %381, ptr %306, align 8, !tbaa !243
  br label %354, !llvm.loop !258

382:                                              ; preds = %358
  %383 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !46
  %385 = icmp eq ptr %384, null
  br i1 %385, label %395, label %386

386:                                              ; preds = %382, %391
  %387 = phi ptr [ %393, %391 ], [ %384, %382 ]
  %388 = getelementptr inbounds %struct.tree_decl_minimal, ptr %387, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !46
  %390 = icmp eq ptr %389, %303
  br i1 %390, label %397, label %391

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.tree_common, ptr %387, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !46
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %386, !llvm.loop !259

395:                                              ; preds = %391, %382
  %396 = phi ptr [ %384, %382 ], [ %393, %391 ]
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 872, ptr noundef nonnull @.str.4) #25
  br label %397

397:                                              ; preds = %386, %395
  %398 = phi ptr [ %396, %395 ], [ %387, %386 ]
  %399 = getelementptr inbounds %struct.tree_common, ptr %398, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !46
  %401 = call ptr @build3_stat(i32 noundef 41, ptr noundef %400, ptr noundef %355, ptr noundef %398, ptr noundef null) #25
  br i1 %353, label %403, label %402

402:                                              ; preds = %397
  call void @free(ptr noundef %306)
  br label %403

403:                                              ; preds = %402, %397
  %404 = load ptr, ptr %15, align 8, !tbaa !209
  %405 = load i32, ptr %404, align 8
  %406 = and i32 %405, 255
  %407 = icmp eq i32 %406, 6
  br i1 %407, label %408, label %510

408:                                              ; preds = %403
  %409 = zext nneg i32 %406 to i64
  %410 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !50
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %412
  %414 = load i64, ptr %413, align 8, !tbaa !99
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %408
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %417

417:                                              ; preds = %416, %408
  %418 = getelementptr inbounds i8, ptr %404, i64 %414
  %419 = load ptr, ptr %418, align 8, !tbaa !35
  %420 = load ptr, ptr %15, align 8, !tbaa !209
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 255
  %423 = add nsw i32 %422, -10
  %424 = icmp ult i32 %423, -9
  br i1 %424, label %438, label %425

425:                                              ; preds = %417
  %426 = zext nneg i32 %422 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !50
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !99
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %425
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %434

434:                                              ; preds = %433, %425
  %435 = getelementptr inbounds i8, ptr %420, i64 %431
  %436 = getelementptr inbounds ptr, ptr %435, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !35
  br label %438

438:                                              ; preds = %434, %417
  %439 = phi ptr [ %437, %434 ], [ null, %417 ]
  %440 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !216
  %442 = icmp eq ptr %419, %441
  br i1 %442, label %443, label %474

443:                                              ; preds = %438
  %444 = load ptr, ptr %15, align 8, !tbaa !209
  %445 = load i32, ptr %444, align 8
  %446 = and i32 %445, 255
  %447 = add nsw i32 %446, -10
  %448 = icmp ult i32 %447, -9
  br i1 %448, label %453, label %449

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.gimple_statement_base, ptr %444, i64 0, i32 3
  %451 = load i32, ptr %450, align 4, !tbaa !46
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %449, %443
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %454

454:                                              ; preds = %453, %449
  %455 = load i32, ptr %444, align 8
  %456 = and i32 %455, 255
  %457 = zext nneg i32 %456 to i64
  %458 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !50
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !99
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %454
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %465

465:                                              ; preds = %464, %454
  %466 = getelementptr inbounds i8, ptr %444, i64 %462
  store ptr %401, ptr %466, align 8, !tbaa !35
  %467 = icmp eq ptr %401, null
  br i1 %467, label %521, label %468

468:                                              ; preds = %465
  %469 = load i64, ptr %401, align 8
  %470 = and i64 %469, 65535
  %471 = icmp eq i64 %470, 141
  br i1 %471, label %472, label %521

472:                                              ; preds = %468
  %473 = getelementptr inbounds %struct.tree_ssa_name, ptr %401, i64 0, i32 2
  store ptr %444, ptr %473, align 8, !tbaa !46
  br label %521

474:                                              ; preds = %438
  %475 = icmp eq ptr %439, %441
  %476 = load ptr, ptr %15, align 8, !tbaa !209
  br i1 %475, label %477, label %501

477:                                              ; preds = %474
  %478 = load i32, ptr %476, align 8
  %479 = and i32 %478, 255
  %480 = add nsw i32 %479, -10
  %481 = icmp ult i32 %480, -9
  br i1 %481, label %486, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.gimple_statement_base, ptr %476, i64 0, i32 3
  %484 = load i32, ptr %483, align 4, !tbaa !46
  %485 = icmp ugt i32 %484, 1
  br i1 %485, label %487, label %486

486:                                              ; preds = %482, %477
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %487

487:                                              ; preds = %486, %482
  %488 = load i32, ptr %476, align 8
  %489 = and i32 %488, 255
  %490 = zext nneg i32 %489 to i64
  %491 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !50
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %493
  %495 = load i64, ptr %494, align 8, !tbaa !99
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %487
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %498

498:                                              ; preds = %497, %487
  %499 = getelementptr inbounds i8, ptr %476, i64 %495
  %500 = getelementptr inbounds ptr, ptr %499, i64 1
  store ptr %401, ptr %500, align 8, !tbaa !35
  br label %521

501:                                              ; preds = %474
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #25
  %502 = getelementptr inbounds %struct.ref_pos, ptr %9, i64 0, i32 1
  store ptr %441, ptr %502, align 8, !tbaa !260
  store ptr null, ptr %9, align 8, !tbaa !262
  %503 = getelementptr inbounds %struct.ref_pos, ptr %9, i64 0, i32 2
  store ptr null, ptr %503, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  %504 = getelementptr inbounds %struct.walk_stmt_info, ptr %8, i64 0, i32 1
  store ptr %9, ptr %504, align 8, !tbaa !127
  %505 = call ptr @walk_gimple_op(ptr noundef %476, ptr noundef nonnull @find_pos_in_stmt_1, ptr noundef nonnull %8) #25
  %506 = load ptr, ptr %9, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  %507 = icmp eq ptr %506, null
  br i1 %507, label %508, label %509

508:                                              ; preds = %501
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1021, ptr noundef nonnull @.str.4) #25
  br label %509

509:                                              ; preds = %508, %501
  store ptr %401, ptr %506, align 8, !tbaa !35
  br label %521

510:                                              ; preds = %403
  %511 = getelementptr inbounds %struct.field_access_site, ptr %15, i64 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #25
  %513 = getelementptr inbounds %struct.ref_pos, ptr %9, i64 0, i32 1
  store ptr %512, ptr %513, align 8, !tbaa !260
  store ptr null, ptr %9, align 8, !tbaa !262
  %514 = getelementptr inbounds %struct.ref_pos, ptr %9, i64 0, i32 2
  store ptr null, ptr %514, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  %515 = getelementptr inbounds %struct.walk_stmt_info, ptr %7, i64 0, i32 1
  store ptr %9, ptr %515, align 8, !tbaa !127
  %516 = call ptr @walk_gimple_op(ptr noundef nonnull %404, ptr noundef nonnull @find_pos_in_stmt_1, ptr noundef nonnull %7) #25
  %517 = load ptr, ptr %9, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #25
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %520

519:                                              ; preds = %510
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1028, ptr noundef nonnull @.str.4) #25
  br label %520

520:                                              ; preds = %519, %510
  store ptr %401, ptr %517, align 8, !tbaa !35
  br label %521

521:                                              ; preds = %520, %509, %498, %472, %468, %465
  %522 = load ptr, ptr %15, align 8, !tbaa !209
  %523 = load i32, ptr %522, align 8
  %524 = and i32 %523, 255
  %525 = add nsw i32 %524, -10
  %526 = icmp ult i32 %525, -9
  br i1 %526, label %528, label %527

527:                                              ; preds = %521
  call void @gimple_set_modified(ptr noundef nonnull %522, i8 noundef zeroext 1) #25
  call void @update_stmt_operands(ptr noundef nonnull %522) #25
  br label %528

528:                                              ; preds = %527, %521
  call void @mark_symbols_for_renaming(ptr noundef nonnull %522) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #25
  br label %530

529:                                              ; preds = %294
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1047, ptr noundef nonnull @.str.4) #25
  br label %530

530:                                              ; preds = %528, %529
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #25
  br label %531

531:                                              ; preds = %530, %2
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @create_new_acc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = load ptr, ptr %1, align 8, !tbaa !191
  %10 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = load ptr, ptr %8, align 8, !tbaa !207
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %16, label %534

16:                                               ; preds = %2
  %17 = load i32, ptr %12, align 8
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %19 [
    i8 1, label %22
    i8 2, label %245
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.data_structure, ptr %11, i64 0, i32 6
  %21 = getelementptr inbounds %struct.access_site, ptr %8, i64 0, i32 1
  br label %273

22:                                               ; preds = %16
  %23 = load ptr, ptr @structures, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 8, !tbaa !78
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ 0, %22 ]
  %29 = lshr i32 %17, 16
  %30 = add nsw i32 %29, -101
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1235, ptr noundef nonnull @.str.4) #25
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, ptr %12, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -10
  %37 = icmp ult i32 %36, -9
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !99
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %47

47:                                               ; preds = %46, %38
  %48 = getelementptr inbounds i8, ptr %12, i64 %44
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  br label %50

50:                                               ; preds = %47, %33
  %51 = phi ptr [ %49, %47 ], [ null, %33 ]
  %52 = load i32, ptr %12, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -10
  %55 = icmp ult i32 %54, -9
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = zext nneg i32 %53 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !99
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds i8, ptr %12, i64 %62
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  br label %69

69:                                               ; preds = %65, %50
  %70 = phi ptr [ %68, %65 ], [ null, %50 ]
  %71 = icmp eq ptr %51, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr %51, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 34
  %76 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 5
  %78 = select i1 %75, ptr %77, ptr %76
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  br label %80

80:                                               ; preds = %72, %69
  %81 = phi ptr [ null, %69 ], [ %79, %72 ]
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %88

88:                                               ; preds = %87, %80
  br label %89

89:                                               ; preds = %88, %93
  %90 = phi ptr [ %95, %93 ], [ %81, %88 ]
  %91 = load i64, ptr %90, align 8
  %92 = trunc i64 %91 to i16
  switch i16 %92, label %96 [
    i16 10, label %93
    i16 12, label %93
    i16 15, label %93
  ]

93:                                               ; preds = %89, %89, %89
  %94 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  br label %89, !llvm.loop !85

96:                                               ; preds = %89
  %97 = tail call fastcc i32 @find_structure(ptr noundef nonnull %90)
  %98 = icmp eq ptr %70, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load i64, ptr %70, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 34
  %103 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %104 = getelementptr inbounds %struct.tree_decl_common, ptr %70, i64 0, i32 5
  %105 = select i1 %102, ptr %104, ptr %103
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  br label %107

107:                                              ; preds = %99, %96
  %108 = phi ptr [ null, %96 ], [ %106, %99 ]
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !50
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #25
  br label %115

115:                                              ; preds = %114, %107
  br label %116

116:                                              ; preds = %115, %120
  %117 = phi ptr [ %122, %120 ], [ %108, %115 ]
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %123 [
    i16 10, label %120
    i16 12, label %120
    i16 15, label %120
  ]

120:                                              ; preds = %116, %116, %116
  %121 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  br label %116, !llvm.loop !85

123:                                              ; preds = %116
  %124 = tail call fastcc i32 @find_structure(ptr noundef nonnull %117)
  %125 = icmp ne i32 %97, %28
  %126 = icmp ne i32 %124, %28
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1246, ptr noundef nonnull @.str.4) #25
  br label %129

129:                                              ; preds = %128, %123
  %130 = tail call i32 @integer_zerop(ptr noundef %51) #25
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = tail call i32 @integer_zerop(ptr noundef %70) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1248, ptr noundef nonnull @.str.4) #25
  br label %136

136:                                              ; preds = %135, %132, %129
  %137 = tail call i32 @integer_zerop(ptr noundef %51) #25
  %138 = icmp eq i32 %137, 0
  %139 = load ptr, ptr @structures, align 8
  %140 = zext i32 %124 to i64
  %141 = getelementptr inbounds %struct.VEC_structure_base, ptr %139, i64 0, i32 2, i64 %140
  %142 = zext i32 %97 to i64
  %143 = getelementptr inbounds %struct.VEC_structure_base, ptr %139, i64 0, i32 2, i64 %142
  %144 = select i1 %138, ptr %143, ptr %141
  %145 = tail call i32 @integer_zerop(ptr noundef %51) #25
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr %51, ptr %70
  %148 = tail call i32 @integer_zerop(ptr noundef %51) #25
  %149 = icmp eq i32 %148, 0
  %150 = getelementptr inbounds %struct.data_structure, ptr %144, i64 0, i32 6
  %151 = getelementptr inbounds i8, ptr %7, i64 8
  %152 = getelementptr inbounds i8, ptr %7, i64 16
  br label %153

153:                                              ; preds = %234, %136
  %154 = phi i64 [ %244, %234 ], [ 0, %136 ]
  %155 = load ptr, ptr %150, align 8, !tbaa !166
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load i32, ptr %155, align 8, !tbaa !95
  %159 = zext i32 %158 to i64
  %160 = icmp ult i64 %154, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.VEC_tree_base, ptr %155, i64 0, i32 2, i64 %154
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  br label %164

164:                                              ; preds = %161, %157, %153
  %165 = phi ptr [ %163, %161 ], [ null, %157 ], [ null, %153 ]
  %166 = phi i1 [ false, %161 ], [ true, %157 ], [ true, %153 ]
  br i1 %166, label %534, label %167

167:                                              ; preds = %164
  %168 = call fastcc ptr @find_new_var_of_type(ptr noundef %147, ptr noundef %165)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr null, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  %169 = load ptr, ptr %13, align 8, !tbaa !46
  call void @extract_true_false_edges_from_block(ptr noundef %169, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %170 = load i32, ptr %12, align 8
  %171 = lshr i32 %170, 16
  br i1 %149, label %188, label %172

172:                                              ; preds = %167
  %173 = and i32 %170, 255
  %174 = add nsw i32 %173, -10
  %175 = icmp ult i32 %174, -9
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = zext nneg i32 %173 to i64
  %178 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !50
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !99
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %185

185:                                              ; preds = %184, %176
  %186 = getelementptr inbounds i8, ptr %12, i64 %182
  %187 = load ptr, ptr %186, align 8, !tbaa !35
  br label %188

188:                                              ; preds = %185, %172, %167
  %189 = phi ptr [ %168, %167 ], [ %187, %185 ], [ null, %172 ]
  br i1 %149, label %190, label %208

190:                                              ; preds = %188
  %191 = load i32, ptr %12, align 8
  %192 = and i32 %191, 255
  %193 = add nsw i32 %192, -10
  %194 = icmp ult i32 %193, -9
  br i1 %194, label %208, label %195

195:                                              ; preds = %190
  %196 = zext nneg i32 %192 to i64
  %197 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !50
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !99
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %204

204:                                              ; preds = %203, %195
  %205 = getelementptr ptr, ptr %12, i64 1
  %206 = getelementptr i8, ptr %205, i64 %201
  %207 = load ptr, ptr %206, align 8, !tbaa !35
  br label %208

208:                                              ; preds = %204, %190, %188
  %209 = phi ptr [ %168, %188 ], [ %207, %204 ], [ null, %190 ]
  %210 = call ptr @gimple_build_cond(i32 noundef %171, ptr noundef %189, ptr noundef %209, ptr noundef null, ptr noundef null) #25
  %211 = load i32, ptr %210, align 8
  %212 = and i32 %211, 255
  %213 = add nsw i32 %212, -10
  %214 = icmp ult i32 %213, -9
  br i1 %214, label %216, label %215

215:                                              ; preds = %208
  call void @gimple_set_modified(ptr noundef nonnull %210, i8 noundef zeroext 1) #25
  call void @update_stmt_operands(ptr noundef nonnull %210) #25
  br label %216

216:                                              ; preds = %215, %208
  call void @mark_symbols_for_renaming(ptr noundef nonnull %210) #25
  %217 = load ptr, ptr %13, align 8, !tbaa !46
  %218 = call ptr @create_empty_bb(ptr noundef %217) #25
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 13
  %220 = load i32, ptr %219, align 8, !tbaa !117, !noalias !264
  %221 = and i32 %220, 512
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !46, !noalias !264
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr %225, align 8, !tbaa !121, !noalias !264
  br label %229

229:                                              ; preds = %227, %223, %216
  %230 = phi ptr [ %228, %227 ], [ null, %223 ], [ null, %216 ]
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr %230, align 8, !tbaa !123, !noalias !264
  br label %234

234:                                              ; preds = %232, %229
  %235 = phi ptr [ %233, %232 ], [ null, %229 ]
  store ptr %235, ptr %7, align 8, !tbaa.struct !203
  store ptr %230, ptr %151, align 8, !tbaa.struct !106
  store ptr %218, ptr %152, align 8, !tbaa.struct !107
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef nonnull %210, i32 noundef 0) #25
  %236 = load ptr, ptr %5, align 8, !tbaa !35
  call fastcc void @make_edge_and_fix_phis_of_dest(ptr noundef %218, ptr noundef %236)
  %237 = load ptr, ptr %6, align 8, !tbaa !35
  call fastcc void @make_edge_and_fix_phis_of_dest(ptr noundef %218, ptr noundef %237)
  %238 = load i32, ptr %12, align 8
  %239 = and i32 %238, -65536
  %240 = icmp eq i32 %239, 6684672
  %241 = load ptr, ptr %6, align 8
  %242 = load ptr, ptr %5, align 8
  %243 = select i1 %240, ptr %242, ptr %241
  call void @redirect_edge_succ(ptr noundef %243, ptr noundef %218) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %244 = add nuw i64 %154, 1
  br label %153, !llvm.loop !267

245:                                              ; preds = %16
  %246 = and i32 %17, 255
  %247 = add nsw i32 %246, -10
  %248 = icmp ult i32 %247, -9
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.gimple_statement_base, ptr %12, i64 0, i32 3
  %251 = load i32, ptr %250, align 4, !tbaa !46
  %252 = icmp ugt i32 %251, 1
  br i1 %252, label %254, label %253

253:                                              ; preds = %249, %245
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %254

254:                                              ; preds = %253, %249
  %255 = load i32, ptr %12, align 8
  %256 = and i32 %255, 255
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !50
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %260
  %262 = load i64, ptr %261, align 8, !tbaa !99
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %265

265:                                              ; preds = %264, %254
  %266 = getelementptr inbounds i8, ptr %12, i64 %262
  %267 = getelementptr inbounds ptr, ptr %266, i64 1
  store ptr null, ptr %267, align 8, !tbaa !35
  %268 = load i32, ptr %12, align 8
  %269 = and i32 %268, 255
  %270 = add nsw i32 %269, -10
  %271 = icmp ult i32 %270, -9
  br i1 %271, label %534, label %272

272:                                              ; preds = %265
  tail call void @gimple_set_modified(ptr noundef nonnull %12, i8 noundef zeroext 1) #25
  tail call void @update_stmt_operands(ptr noundef nonnull %12) #25
  br label %534

273:                                              ; preds = %19, %532
  %274 = phi i32 [ %533, %532 ], [ 0, %19 ]
  %275 = load ptr, ptr %20, align 8, !tbaa !166
  %276 = icmp eq ptr %275, null
  br i1 %276, label %284, label %277

277:                                              ; preds = %273
  %278 = load i32, ptr %275, align 8, !tbaa !95
  %279 = icmp ugt i32 %278, %274
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = zext i32 %274 to i64
  %282 = getelementptr inbounds %struct.VEC_tree_base, ptr %275, i64 0, i32 2, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !35
  br label %284

284:                                              ; preds = %280, %277, %273
  %285 = phi ptr [ %283, %280 ], [ null, %277 ], [ null, %273 ]
  %286 = phi i1 [ false, %280 ], [ true, %277 ], [ true, %273 ]
  br i1 %286, label %534, label %287

287:                                              ; preds = %284
  %288 = load ptr, ptr %8, align 8, !tbaa !207
  %289 = call ptr @gimple_copy(ptr noundef %288) #25
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 254
  %292 = add nsw i32 %291, -10
  %293 = icmp ult i32 %292, -4
  br i1 %293, label %296, label %294

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %289, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %295, i8 0, i64 16, i1 false)
  br label %296

296:                                              ; preds = %294, %287
  %297 = getelementptr ptr, ptr %289, i64 1
  br label %298

298:                                              ; preds = %524, %296
  %299 = phi i32 [ 0, %296 ], [ %525, %524 ]
  %300 = load ptr, ptr %21, align 8, !tbaa !220
  %301 = icmp eq ptr %300, null
  br i1 %301, label %309, label %302

302:                                              ; preds = %298
  %303 = load i32, ptr %300, align 8, !tbaa !95
  %304 = icmp ugt i32 %303, %299
  br i1 %304, label %305, label %309

305:                                              ; preds = %302
  %306 = zext i32 %299 to i64
  %307 = getelementptr inbounds %struct.VEC_tree_base, ptr %300, i64 0, i32 2, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !35
  br label %309

309:                                              ; preds = %305, %302, %298
  %310 = phi ptr [ %308, %305 ], [ null, %302 ], [ null, %298 ]
  %311 = phi i1 [ false, %305 ], [ true, %302 ], [ true, %298 ]
  br i1 %311, label %526, label %312

312:                                              ; preds = %309
  %313 = call fastcc ptr @find_new_var_of_type(ptr noundef %310, ptr noundef %285)
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1317, ptr noundef nonnull @.str.4) #25
  br label %316

316:                                              ; preds = %315, %312
  %317 = call zeroext i8 @add_referenced_var(ptr noundef %313) #25
  call void @mark_sym_for_renaming(ptr noundef %313) #25
  %318 = load i32, ptr %289, align 8
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %319, 6
  br i1 %320, label %321, label %523

321:                                              ; preds = %316
  %322 = zext nneg i32 %319 to i64
  %323 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !50
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !99
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %330

330:                                              ; preds = %329, %321
  %331 = getelementptr inbounds i8, ptr %289, i64 %327
  %332 = load ptr, ptr %331, align 8, !tbaa !35
  %333 = load i64, ptr %332, align 8
  %334 = and i64 %333, 65535
  %335 = icmp eq i64 %334, 141
  br i1 %335, label %336, label %339

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.tree_ssa_name, ptr %332, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  br label %339

339:                                              ; preds = %336, %330
  %340 = phi ptr [ %338, %336 ], [ %332, %330 ]
  %341 = load i32, ptr %289, align 8
  %342 = trunc i32 %341 to i8
  switch i8 %342, label %345 [
    i8 6, label %343
    i8 1, label %343
    i8 8, label %346
  ]

343:                                              ; preds = %339, %339
  %344 = lshr i32 %341, 16
  br label %346

345:                                              ; preds = %339
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.4) #25
  br label %346

346:                                              ; preds = %345, %343, %339
  %347 = phi i32 [ %344, %343 ], [ 0, %345 ], [ 59, %339 ]
  %348 = zext nneg i32 %347 to i64
  %349 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !46
  %351 = icmp eq i8 %350, 3
  br i1 %351, label %352, label %372

352:                                              ; preds = %346
  %353 = load i32, ptr %289, align 8
  %354 = and i32 %353, 255
  %355 = add nsw i32 %354, -1
  %356 = icmp ult i32 %355, 9
  call void @llvm.assume(i1 %356)
  %357 = zext nneg i32 %354 to i64
  %358 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !50
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %360
  %362 = load i64, ptr %361, align 8, !tbaa !99
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %352
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %365

365:                                              ; preds = %364, %352
  %366 = getelementptr ptr, ptr %289, i64 1
  %367 = getelementptr i8, ptr %366, i64 %362
  %368 = load ptr, ptr %367, align 8, !tbaa !35
  %369 = load i64, ptr %368, align 8
  %370 = trunc i64 %369 to i32
  %371 = and i32 %370, 65535
  br label %372

372:                                              ; preds = %365, %346
  %373 = phi i32 [ %371, %365 ], [ %347, %346 ]
  %374 = icmp eq i32 %373, 141
  br i1 %374, label %375, label %394

375:                                              ; preds = %372
  %376 = load i32, ptr %289, align 8
  %377 = and i32 %376, 255
  %378 = add nsw i32 %377, -1
  %379 = icmp ult i32 %378, 9
  call void @llvm.assume(i1 %379)
  %380 = zext nneg i32 %377 to i64
  %381 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !50
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %383
  %385 = load i64, ptr %384, align 8, !tbaa !99
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %375
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %388

388:                                              ; preds = %387, %375
  %389 = getelementptr ptr, ptr %289, i64 1
  %390 = getelementptr i8, ptr %389, i64 %385
  %391 = load ptr, ptr %390, align 8, !tbaa !35
  %392 = getelementptr inbounds %struct.tree_ssa_name, ptr %391, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !46
  br label %394

394:                                              ; preds = %388, %372
  %395 = phi ptr [ %393, %388 ], [ null, %372 ]
  %396 = load i32, ptr %289, align 8
  %397 = trunc i32 %396 to i8
  switch i8 %397, label %400 [
    i8 6, label %398
    i8 1, label %398
    i8 8, label %401
  ]

398:                                              ; preds = %394, %394
  %399 = lshr i32 %396, 16
  br label %401

400:                                              ; preds = %394
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.4) #25
  br label %401

401:                                              ; preds = %400, %398, %394
  %402 = phi i32 [ %399, %398 ], [ 0, %400 ], [ 59, %394 ]
  %403 = zext nneg i32 %402 to i64
  %404 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !46
  %406 = icmp eq i8 %405, 3
  br i1 %406, label %407, label %427

407:                                              ; preds = %401
  %408 = load i32, ptr %289, align 8
  %409 = and i32 %408, 255
  %410 = add nsw i32 %409, -1
  %411 = icmp ult i32 %410, 9
  call void @llvm.assume(i1 %411)
  %412 = zext nneg i32 %409 to i64
  %413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !50
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !99
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %407
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %420

420:                                              ; preds = %419, %407
  %421 = getelementptr ptr, ptr %289, i64 1
  %422 = getelementptr i8, ptr %421, i64 %417
  %423 = load ptr, ptr %422, align 8, !tbaa !35
  %424 = load i64, ptr %423, align 8
  %425 = trunc i64 %424 to i32
  %426 = and i32 %425, 65535
  br label %427

427:                                              ; preds = %420, %401
  %428 = phi i32 [ %426, %420 ], [ %402, %401 ]
  %429 = icmp eq i32 %428, 51
  br i1 %429, label %430, label %465

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.tree_constructor, ptr %395, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !46
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %430
  %435 = load i32, ptr %432, align 8, !tbaa !268
  br label %436

436:                                              ; preds = %434, %430
  %437 = phi i32 [ %435, %434 ], [ 0, %430 ]
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %436
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1335, ptr noundef nonnull @.str.4) #25
  br label %440

440:                                              ; preds = %439, %436
  %441 = call ptr @build_constructor(ptr noundef %285, ptr noundef null) #25
  %442 = load i32, ptr %289, align 8
  %443 = and i32 %442, 255
  %444 = add nsw i32 %443, -10
  %445 = icmp ult i32 %444, -9
  br i1 %445, label %450, label %446

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.gimple_statement_base, ptr %289, i64 0, i32 3
  %448 = load i32, ptr %447, align 4, !tbaa !46
  %449 = icmp ugt i32 %448, 1
  br i1 %449, label %451, label %450

450:                                              ; preds = %446, %440
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %451

451:                                              ; preds = %450, %446
  %452 = load i32, ptr %289, align 8
  %453 = and i32 %452, 255
  %454 = zext nneg i32 %453 to i64
  %455 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !50
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %457
  %459 = load i64, ptr %458, align 8, !tbaa !99
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %451
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %462

462:                                              ; preds = %461, %451
  %463 = getelementptr ptr, ptr %289, i64 1
  %464 = getelementptr i8, ptr %463, i64 %459
  store ptr %441, ptr %464, align 8, !tbaa !35
  br label %465

465:                                              ; preds = %462, %427
  %466 = phi ptr [ %441, %462 ], [ %395, %427 ]
  %467 = icmp eq ptr %340, %310
  br i1 %467, label %468, label %497

468:                                              ; preds = %465
  %469 = load i32, ptr %289, align 8
  %470 = and i32 %469, 255
  %471 = add nsw i32 %470, -10
  %472 = icmp ult i32 %471, -9
  br i1 %472, label %477, label %473

473:                                              ; preds = %468
  %474 = getelementptr inbounds %struct.gimple_statement_base, ptr %289, i64 0, i32 3
  %475 = load i32, ptr %474, align 4, !tbaa !46
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %473, %468
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %478

478:                                              ; preds = %477, %473
  %479 = load i32, ptr %289, align 8
  %480 = and i32 %479, 255
  %481 = zext nneg i32 %480 to i64
  %482 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !50
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %484
  %486 = load i64, ptr %485, align 8, !tbaa !99
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %478
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %489

489:                                              ; preds = %488, %478
  %490 = getelementptr inbounds i8, ptr %289, i64 %486
  store ptr %313, ptr %490, align 8, !tbaa !35
  br i1 %314, label %524, label %491

491:                                              ; preds = %489
  %492 = load i64, ptr %313, align 8
  %493 = and i64 %492, 65535
  %494 = icmp eq i64 %493, 141
  br i1 %494, label %495, label %524

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.tree_ssa_name, ptr %313, i64 0, i32 2
  store ptr %289, ptr %496, align 8, !tbaa !46
  br label %524

497:                                              ; preds = %465
  %498 = icmp eq ptr %466, %310
  br i1 %498, label %499, label %522

499:                                              ; preds = %497
  %500 = load i32, ptr %289, align 8
  %501 = and i32 %500, 255
  %502 = add nsw i32 %501, -10
  %503 = icmp ult i32 %502, -9
  br i1 %503, label %508, label %504

504:                                              ; preds = %499
  %505 = getelementptr inbounds %struct.gimple_statement_base, ptr %289, i64 0, i32 3
  %506 = load i32, ptr %505, align 4, !tbaa !46
  %507 = icmp ugt i32 %506, 1
  br i1 %507, label %509, label %508

508:                                              ; preds = %504, %499
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #25
  br label %509

509:                                              ; preds = %508, %504
  %510 = load i32, ptr %289, align 8
  %511 = and i32 %510, 255
  %512 = zext nneg i32 %511 to i64
  %513 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !50
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %515
  %517 = load i64, ptr %516, align 8, !tbaa !99
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %509
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %520

520:                                              ; preds = %519, %509
  %521 = getelementptr i8, ptr %297, i64 %517
  store ptr %313, ptr %521, align 8, !tbaa !35
  br label %524

522:                                              ; preds = %497
  call fastcc void @insert_new_var_in_stmt(ptr noundef %289, ptr noundef %310, ptr noundef %313)
  br label %524

523:                                              ; preds = %316
  call fastcc void @insert_new_var_in_stmt(ptr noundef %289, ptr noundef %310, ptr noundef %313)
  br label %524

524:                                              ; preds = %523, %522, %520, %495, %491, %489
  %525 = add i32 %299, 1
  br label %298, !llvm.loop !270

526:                                              ; preds = %309
  %527 = load i32, ptr %289, align 8
  %528 = and i32 %527, 255
  %529 = add nsw i32 %528, -10
  %530 = icmp ult i32 %529, -9
  br i1 %530, label %532, label %531

531:                                              ; preds = %526
  call void @gimple_set_modified(ptr noundef nonnull %289, i8 noundef zeroext 1) #25
  call void @update_stmt_operands(ptr noundef nonnull %289) #25
  br label %532

532:                                              ; preds = %531, %526
  call void @mark_symbols_for_renaming(ptr noundef nonnull %289) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %289, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %533 = add i32 %274, 1
  br label %273, !llvm.loop !271

534:                                              ; preds = %164, %284, %272, %265, %2
  ret i32 1
}

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @find_pos_in_stmt_1(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #21 !prof !34 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.ref_pos, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !260
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store ptr %0, ptr %5, align 8, !tbaa !262
  br label %21

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.ref_pos, ptr %5, i64 0, i32 2
  store ptr %8, ptr %20, align 8, !tbaa !263
  store i32 1, ptr %1, align 4, !tbaa !50
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi ptr [ %8, %18 ], [ null, %19 ]
  ret ptr %22
}

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @make_edge_and_fix_phis_of_dest(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !272
  %6 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !274
  %8 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %5, i32 noundef %7) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !272
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %10) #25
  %11 = load ptr, ptr %3, align 8, !tbaa.struct !203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi ptr [ %11, %13 ], [ %37, %32 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !125
  %18 = load i32, ptr %14, align 4, !tbaa !275
  %19 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp ult i32 %20, %18
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.4) #25
  br label %23

23:                                               ; preds = %15, %22
  %24 = zext i32 %18 to i64
  %25 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 4, i64 %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !227
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = load i32, ptr %14, align 4, !tbaa !275
  %29 = load i32, ptr %19, align 8, !tbaa !46
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.4) #25
  br label %32

32:                                               ; preds = %23, %31
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 4, i64 %33, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !276
  call void @add_phi_arg(ptr noundef %17, ptr noundef %27, ptr noundef %8, i32 noundef %35) #25
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %16, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %15, !llvm.loop !278

39:                                               ; preds = %32, %2
  ret void
}

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_new_var_in_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca %struct.walk_stmt_info, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.ref_pos, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  %7 = getelementptr inbounds %struct.ref_pos, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !260
  store ptr null, ptr %6, align 8, !tbaa !262
  %8 = getelementptr inbounds %struct.ref_pos, ptr %6, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %6, ptr %9, align 8, !tbaa !127
  %10 = call ptr @walk_gimple_op(ptr noundef %0, ptr noundef nonnull @find_pos_in_stmt_1, ptr noundef nonnull %5) #25
  %11 = load ptr, ptr %6, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1276, ptr noundef nonnull @.str.4) #25
  br label %14

14:                                               ; preds = %3, %13
  %15 = load ptr, ptr %8, align 8, !tbaa !263
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %36
  %20 = phi ptr [ %15, %17 ], [ %41, %36 ]
  %21 = phi ptr [ %2, %17 ], [ %37, %36 ]
  %22 = phi ptr [ %11, %17 ], [ %40, %36 ]
  %23 = load i64, ptr %20, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %43 [
    i16 47, label %25
    i16 121, label %25
  ]

25:                                               ; preds = %19, %19
  %26 = and i64 %23, 65535
  %27 = icmp eq i64 %26, 47
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = call ptr @build1_stat(i32 noundef 47, ptr noundef %32, ptr noundef %21) #25
  br label %36

34:                                               ; preds = %25
  %35 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %21) #25
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %38 = load ptr, ptr %8, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  store ptr %38, ptr %7, align 8, !tbaa !260
  store ptr null, ptr %6, align 8, !tbaa !262
  store ptr null, ptr %8, align 8, !tbaa !263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %6, ptr %18, align 8, !tbaa !127
  %39 = call ptr @walk_gimple_op(ptr noundef %0, ptr noundef nonnull @find_pos_in_stmt_1, ptr noundef nonnull %4) #25
  %40 = load ptr, ptr %6, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  %41 = load ptr, ptr %8, align 8, !tbaa !263
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !llvm.loop !279

43:                                               ; preds = %36, %19, %14
  %44 = phi ptr [ %11, %14 ], [ %40, %36 ], [ %22, %19 ]
  %45 = phi ptr [ %2, %14 ], [ %37, %36 ], [ %21, %19 ]
  store ptr %45, ptr %44, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  ret void
}

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef i32 @free_new_var(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #16 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.new_var_data, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %2, %7
  store ptr null, ptr %4, align 8, !tbaa !35
  tail call void @free(ptr noundef %3)
  ret i32 1
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef i32 @free_falloc_sites(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #16 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.func_alloc_sites, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %2, %7
  store ptr null, ptr %4, align 8, !tbaa !35
  tail call void @free(ptr noundef %3)
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }

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
!54 = !{!"function_entry_count", i64 1}
!55 = !{!"ipa-struct-reorg.c;struct_reorg_gate"}
!56 = !{!"branch_weights", i32 0, i32 1}
!57 = !{!58, !36, i64 16}
!58 = !{!"cgraph_edge", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !43, i64 88, !41, i64 90, !41, i64 90, !41, i64 90}
!59 = !{!60, !36, i64 0}
!60 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !61, i64 144, !63, i64 184, !64, i64 224, !65, i64 232, !66, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!61 = !{!"cgraph_local_info", !36, i64 0, !62, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!62 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!63 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!64 = !{!"cgraph_rtl_info", !41, i64 0}
!65 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!66 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!67 = !{!58, !36, i64 56}
!68 = distinct !{!68, !52, !53}
!69 = distinct !{!69, !52, !53}
!70 = !{!71, !36, i64 0}
!71 = !{!"varpool_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36}
!72 = !{i8 0, i8 2}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = !{!60, !36, i64 96}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = !{!79, !41, i64 0}
!79 = !{!"VEC_structure_base", !41, i64 0, !41, i64 4, !37, i64 8}
!80 = !{!81, !41, i64 8}
!81 = !{!"data_structure", !36, i64 0, !41, i64 8, !42, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!82 = !{!81, !36, i64 24}
!83 = !{!84, !36, i64 16}
!84 = !{!"field_entry", !41, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!85 = distinct !{!85, !52, !53}
!86 = !{!81, !36, i64 0}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = !{!96, !41, i64 0}
!96 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = !{!42, !42, i64 0}
!100 = !{!101, !36, i64 0}
!101 = !{!"func_alloc_sites", !36, i64 0, !36, i64 8}
!102 = !{!101, !36, i64 8}
!103 = !{!104, !41, i64 4}
!104 = !{!"VEC_alloc_site_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!105 = !{!104, !41, i64 0}
!106 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!107 = !{i64 0, i64 8, !35}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = !{!111, !36, i64 8}
!111 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!112 = !{!113, !36, i64 0}
!113 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!114 = !{!115, !36, i64 56}
!115 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!116 = !{!113, !36, i64 8}
!117 = !{!115, !41, i64 96}
!118 = !{!119}
!119 = distinct !{!119, !120, !"gsi_start_bb: argument 0"}
!120 = distinct !{!120, !"gsi_start_bb"}
!121 = !{!122, !36, i64 0}
!122 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!123 = !{!124, !36, i64 0}
!124 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!125 = !{!126, !36, i64 0}
!126 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!127 = !{!128, !36, i64 24}
!128 = !{!"walk_stmt_info", !129, i64 0, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !36, i64 48}
!129 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!130 = !{!126, !36, i64 16}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = !{!134, !36, i64 8}
!134 = !{!"exclude_data", !36, i64 0, !36, i64 8}
!135 = !{!134, !36, i64 0}
!136 = !{!81, !36, i64 32}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = !{!84, !36, i64 32}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = !{!81, !42, i64 16}
!144 = !{!84, !42, i64 8}
!145 = distinct !{!145, !52, !53}
!146 = distinct !{!146, !52, !53}
!147 = !{!148, !41, i64 8}
!148 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = !{!81, !36, i64 40}
!152 = !{!153, !36, i64 0}
!153 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!154 = !{!155, !36, i64 8}
!155 = !{!"field_cluster", !36, i64 0, !36, i64 8}
!156 = !{!155, !36, i64 0}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = !{!84, !36, i64 24}
!162 = distinct !{!162, !52, !53}
!163 = !{!96, !41, i64 4}
!164 = distinct !{!164, !52, !53}
!165 = distinct !{!165, !52, !53}
!166 = !{!81, !36, i64 48}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = !{!111, !36, i64 24}
!172 = !{!173, !36, i64 0}
!173 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !174, i64 32, !174, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !175, i64 104}
!174 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!175 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!176 = !{!177, !36, i64 24}
!177 = !{!"htab", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104}
!178 = distinct !{!178, !52, !53}
!179 = distinct !{!179, !52, !53}
!180 = !{!181, !36, i64 0}
!181 = !{!"alloc_site", !36, i64 0, !36, i64 8}
!182 = !{!181, !36, i64 8}
!183 = !{!124, !36, i64 8}
!184 = !{!115, !42, i64 72}
!185 = !{!115, !41, i64 84}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = !{!190, !36, i64 8}
!190 = !{!"create_acc_data", !36, i64 0, !36, i64 8, !41, i64 16}
!191 = !{!190, !36, i64 0}
!192 = !{!190, !41, i64 16}
!193 = distinct !{!193, !52, !53}
!194 = distinct !{!194, !52, !53}
!195 = distinct !{!195, !52, !53}
!196 = !{!84, !41, i64 0}
!197 = distinct !{!197, !52, !53}
!198 = !{!79, !41, i64 4}
!199 = !{i64 0, i64 8, !35, i64 8, i64 4, !50, i64 16, i64 8, !99, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35}
!200 = !{i64 0, i64 4, !50, i64 8, i64 8, !99, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35}
!201 = !{i64 0, i64 8, !99, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35}
!202 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35}
!203 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!204 = distinct !{!204, !52, !53}
!205 = distinct !{!205, !52, !53}
!206 = distinct !{!206, !52, !53}
!207 = !{!208, !36, i64 0}
!208 = !{!"access_site", !36, i64 0, !36, i64 8}
!209 = !{!210, !36, i64 0}
!210 = !{!"field_access_site", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!211 = distinct !{!211, !52, !53}
!212 = distinct !{!212, !52, !53}
!213 = !{!214, !36, i64 8}
!214 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!215 = distinct !{!215, !52, !53}
!216 = !{!210, !36, i64 8}
!217 = !{!210, !36, i64 24}
!218 = !{!210, !36, i64 16}
!219 = distinct !{!219, !52, !53}
!220 = !{!208, !36, i64 8}
!221 = distinct !{!221, !52, !53}
!222 = distinct !{!222, !52, !53}
!223 = !{!210, !36, i64 56}
!224 = !{!210, !36, i64 64}
!225 = !{!226, !36, i64 0}
!226 = !{!"use_optype_d", !36, i64 0, !214, i64 8}
!227 = !{!214, !36, i64 24}
!228 = !{!210, !36, i64 40}
!229 = distinct !{!229, !52, !53}
!230 = distinct !{!230, !52, !53}
!231 = !{!232, !37, i64 0}
!232 = !{!"find_stmt_data", !37, i64 0, !36, i64 8}
!233 = !{!232, !36, i64 8}
!234 = distinct !{!234, !52, !53}
!235 = distinct !{!235, !52, !53}
!236 = distinct !{!236, !52, !53}
!237 = distinct !{!237, !52, !53}
!238 = !{!239, !36, i64 0}
!239 = !{!"new_var_data", !36, i64 0, !36, i64 8}
!240 = !{!239, !36, i64 8}
!241 = !{!242, !41, i64 4}
!242 = !{!"VEC_type_wrapper_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!243 = !{!242, !41, i64 0}
!244 = !{i64 0, i64 1, !46, i64 8, i64 8, !35}
!245 = !{i64 7, i64 8, !35}
!246 = distinct !{!246, !52, !53}
!247 = !{!248, !37, i64 0}
!248 = !{!"type_wrapper", !37, i64 0, !36, i64 8}
!249 = !{!248, !36, i64 8}
!250 = distinct !{!250, !52, !53}
!251 = distinct !{!251, !52, !53}
!252 = distinct !{!252, !52, !53}
!253 = distinct !{!253, !52, !53}
!254 = distinct !{!254, !52, !53}
!255 = distinct !{!255, !52, !53}
!256 = !{!210, !36, i64 32}
!257 = distinct !{!257, !52, !53}
!258 = distinct !{!258, !52, !53}
!259 = distinct !{!259, !52, !53}
!260 = !{!261, !36, i64 8}
!261 = !{!"ref_pos", !36, i64 0, !36, i64 8, !36, i64 16}
!262 = !{!261, !36, i64 0}
!263 = !{!261, !36, i64 16}
!264 = !{!265}
!265 = distinct !{!265, !266, !"gsi_start_bb: argument 0"}
!266 = distinct !{!266, !"gsi_start_bb"}
!267 = distinct !{!267, !52, !53}
!268 = !{!269, !41, i64 0}
!269 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!270 = distinct !{!270, !52, !53}
!271 = distinct !{!271, !52, !53}
!272 = !{!273, !36, i64 8}
!273 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!274 = !{!273, !41, i64 48}
!275 = !{!273, !41, i64 44}
!276 = !{!277, !41, i64 40}
!277 = !{!"phi_arg_d", !214, i64 0, !36, i64 32, !41, i64 40}
!278 = distinct !{!278, !52, !53}
!279 = distinct !{!279, !52, !53}
