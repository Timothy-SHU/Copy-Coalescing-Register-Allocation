; ModuleID = 'ipa-struct-reorg.c'
source_filename = "ipa-struct-reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.data_structure = type { ptr, i32, i64, ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.field_entry = type { i32, i64, ptr, ptr, ptr }
%struct.VEC_structure_base = type { i32, i32, [1 x %struct.data_structure] }
%struct.func_alloc_sites = type { ptr, ptr }
%struct.alloc_site = type { ptr, ptr }
%struct.VEC_alloc_site_t_base = type { i32, i32, [1 x %struct.alloc_site] }
%struct.field_cluster = type { ptr, ptr }
%struct.access_site = type { ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.field_access_site = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.exclude_data = type { ptr, ptr }
%struct.find_stmt_data = type { i8, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.new_var_data = type { ptr, ptr }
%struct.type_wrapper = type { i8, ptr }
%struct.VEC_type_wrapper_t_base = type { i32, i32, [1 x %struct.type_wrapper] }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.create_acc_data = type { ptr, ptr, i32 }
%struct.ref_pos = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.tree_constructor = type { %struct.tree_common, ptr }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @struct_reorg_gate() #0 {
  %1 = load i32, ptr @flag_ipa_struct_reorg, align 4, !tbaa !5
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_whole_program, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load i32, ptr @optimize, align 4
  %7 = icmp sgt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reorg_structs_drive() #1 {
  tail call fastcc void @reorg_structs() #24
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reorg_structs() unnamed_addr #1 {
  tail call fastcc void @collect_structures() #24
  tail call fastcc void @collect_allocation_sites() #24
  tail call fastcc void @collect_data_accesses() #24
  tail call fastcc void @exclude_cold_structs() #24
  tail call fastcc void @peel_structs() #24
  tail call fastcc void @do_reorg() #24
  tail call fastcc void @free_data_structs() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_structures() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 32) #24
  store ptr %2, ptr %1, align 8, !tbaa !9
  %3 = tail call fastcc ptr @VEC_structure_heap_alloc() #24
  store ptr %3, ptr @structures, align 8, !tbaa !9
  %4 = tail call fastcc zeroext i8 @program_redefines_malloc_p() #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  call fastcc void @build_data_structure(ptr noundef nonnull %1) #24
  call fastcc void @analyze_struct_form(ptr noundef nonnull %1) #24
  call fastcc void @exclude_escaping_types(ptr noundef nonnull %1) #24
  call fastcc void @exclude_types_with_bit_fields(ptr noundef nonnull %1) #24
  %7 = load ptr, ptr %1, align 8, !tbaa !9
  call fastcc void @remove_unsuitable_types(ptr noundef %7) #24
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %1) #24
  br label %8

8:                                                ; preds = %0, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_allocation_sites() unnamed_addr #1 {
  %1 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @malloc_hash, ptr noundef nonnull @malloc_eq, ptr noundef null) #26
  store ptr %1, ptr @alloc_sites, align 8, !tbaa !9
  tail call fastcc void @collect_alloc_sites() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_data_accesses() unnamed_addr #1 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0, %12
  %4 = phi ptr [ %14, %12 ], [ %1, %0 ]
  %5 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %4) #26
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  tail call fastcc void @collect_accesses_in_func(ptr noundef %11) #24
  tail call fastcc void @exclude_alloc_and_field_accs(ptr noundef nonnull %4) #24
  br label %12

12:                                               ; preds = %3, %8
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !21

16:                                               ; preds = %12, %0
  tail call fastcc void @check_cond_exprs() #24
  tail call fastcc void @dump_accesses() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_cold_structs() unnamed_addr #1 {
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  store i64 0, ptr %1, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %12, %0
  %7 = load ptr, ptr @structures, align 8
  %8 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %1, align 8, !tbaa !23
  br label %19

12:                                               ; preds = %0, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %0 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !9
  call fastcc void @sum_counts(ptr noundef %14, ptr noundef nonnull %1) #24
  %15 = add i32 %13, 1
  %16 = load ptr, ptr @structures, align 8
  %17 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #24, !range !24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %6, label %12, !llvm.loop !25

19:                                               ; preds = %10, %43
  %20 = phi i32 [ 0, %10 ], [ %44, %43 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.data_structure, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !26
  %24 = mul nsw i64 %23, 100
  %25 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.param_info, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !28
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %11, %28
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 15, i64 1, ptr nonnull %32)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %37 = load ptr, ptr %21, align 8, !tbaa !30
  tail call void @print_generic_expr(ptr noundef %36, ptr noundef %37, i32 noundef 0) #26
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %39 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 9, i64 1, ptr %38)
  br label %40

40:                                               ; preds = %34, %31
  tail call fastcc void @remove_structure(i32 noundef %20) #24
  br label %43

41:                                               ; preds = %19
  %42 = add i32 %20, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %20, %40 ], [ %42, %41 ]
  %45 = load ptr, ptr @structures, align 8
  %46 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %45, i32 noundef %44, ptr noundef nonnull %2) #24, !range !24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %19, !llvm.loop !31

48:                                               ; preds = %43, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peel_structs() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr @structures, align 8
  %3 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @peel_hot_fields(ptr noundef %7) #24
  %8 = add i32 %6, 1
  %9 = load ptr, ptr @structures, align 8
  %10 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %1) #24, !range !24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !llvm.loop !32

12:                                               ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_reorg() unnamed_addr #1 {
  %1 = load ptr, ptr @structures, align 8
  %2 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %3, label %6, label %9

6:                                                ; preds = %0
  br i1 %5, label %15, label %7

7:                                                ; preds = %6
  %8 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 39, i64 1, ptr nonnull %4)
  br label %15

9:                                                ; preds = %0
  br i1 %5, label %12, label %10

10:                                               ; preds = %9
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i32 noundef %2) #24
  br label %12

12:                                               ; preds = %9, %10
  tail call fastcc void @create_new_types() #24
  tail call fastcc void @dump_new_types() #24
  tail call fastcc void @create_new_global_vars() #24
  %13 = load ptr, ptr @new_global_vars, align 8, !tbaa !9
  tail call fastcc void @dump_new_vars(ptr noundef %13) #24
  tail call fastcc void @do_reorg_1() #24
  %14 = load ptr, ptr @new_global_vars, align 8, !tbaa !9
  tail call fastcc void @free_new_vars_htab(ptr noundef %14) #24
  br label %15

15:                                               ; preds = %6, %7, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_data_structs() unnamed_addr #1 {
  tail call fastcc void @free_structures() #24
  tail call fastcc void @free_alloc_sites() #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_structure_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 56) #26
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @program_redefines_malloc_p() unnamed_addr #1 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %0, %39
  %4 = phi ptr [ %41, %39 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %3, %35
  %9 = phi ptr [ %37, %35 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !33
  %12 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %11) #24, !range !36
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = tail call ptr @get_name(ptr noundef %17) #26
  %19 = load ptr, ptr %10, align 8, !tbaa !33
  %20 = tail call i32 @gimple_call_flags(ptr noundef %19) #26
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2047
  br i1 %22, label %27, label %26

26:                                               ; preds = %14
  switch i32 %25, label %43 [
    i32 491, label %29
    i32 422, label %29
    i32 415, label %29
  ]

27:                                               ; preds = %14
  %28 = icmp eq i32 %25, 528
  br i1 %28, label %43, label %29

29:                                               ; preds = %26, %26, %26, %27
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(19) @.str.1) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(8) @.str.2) #24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32, %8
  %36 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %8, !llvm.loop !38

39:                                               ; preds = %35, %3
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %3, !llvm.loop !39

43:                                               ; preds = %39, %26, %32, %29, %27, %0
  %44 = phi i8 [ 0, %0 ], [ 1, %27 ], [ 1, %29 ], [ 1, %32 ], [ 1, %26 ], [ 0, %39 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_data_structure(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %15, %1
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %72, label %19

8:                                                ; preds = %1, %15
  %9 = phi ptr [ %17, %15 ], [ %3, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = call fastcc zeroext i8 @is_candidate(ptr noundef %10, ptr noundef nonnull %2, ptr noundef %0) #24, !range !36
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @add_structure(ptr noundef %14) #24
  br label %15

15:                                               ; preds = %8, %13
  %16 = getelementptr inbounds %struct.varpool_node, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %5, label %8, !llvm.loop !42

19:                                               ; preds = %5, %68
  %20 = phi ptr [ %70, %68 ], [ %6, %5 ]
  %21 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %20) #26
  %22 = add i32 %21, -3
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.tree_decl_non_common, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %24, %37
  %32 = phi ptr [ %39, %37 ], [ %29, %24 ]
  %33 = call fastcc zeroext i8 @is_candidate(ptr noundef nonnull %32, ptr noundef nonnull %2, ptr noundef %0) #24, !range !36
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @add_structure(ptr noundef %36) #24
  br label %37

37:                                               ; preds = %31, %35
  %38 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %31, !llvm.loop !43

41:                                               ; preds = %37, %24
  %42 = icmp eq ptr %27, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !11
  %49 = load ptr, ptr %20, align 8, !tbaa !11
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47, %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3449, ptr noundef nonnull @.str.4) #26
  br label %68

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %52, %64
  %57 = phi ptr [ %66, %64 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !20
  %60 = call fastcc zeroext i8 @is_candidate(ptr noundef %59, ptr noundef nonnull %2, ptr noundef %0) #24, !range !36
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @add_structure(ptr noundef %63) #24
  br label %64

64:                                               ; preds = %56, %62
  %65 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %56, !llvm.loop !45

68:                                               ; preds = %64, %52, %47, %51, %19
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %19, !llvm.loop !46

72:                                               ; preds = %68, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_struct_form(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @check_struct_form(ptr noundef %8, ptr noundef %0) #24
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @structures, align 8
  %11 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !47

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_escaping_types(ptr nocapture noundef %0) unnamed_addr #1 {
  tail call fastcc void @exclude_types_passed_to_local_func(ptr noundef %0) #24
  tail call fastcc void @exclude_returned_types(ptr noundef %0) #24
  tail call fastcc void @exclude_escaping_types_1(ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_types_with_bit_fields(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @check_bitfields(ptr noundef %8, ptr noundef %0) #24
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @structures, align 8
  %11 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !48

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unsuitable_types(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %25
  %7 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %8 = load ptr, ptr @structures, align 8
  %9 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !9
  br label %13

13:                                               ; preds = %11, %20
  %14 = phi i32 [ 0, %11 ], [ %21, %20 ]
  %15 = load ptr, ptr %2, align 8, !tbaa !9
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  %17 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %16, ptr noundef %12) #24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call fastcc void @remove_structure(i32 noundef %14) #24
  br label %25

20:                                               ; preds = %13
  %21 = add i32 %14, 1
  %22 = load ptr, ptr @structures, align 8
  %23 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %22, i32 noundef %21, ptr noundef nonnull %2) #24, !range !24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !49

25:                                               ; preds = %20, %6, %19
  %26 = add i32 %7, 1
  %27 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %3) #24, !range !24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %6, !llvm.loop !50

29:                                               ; preds = %25, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_candidate(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #1 {
  store ptr null, ptr %1, align 8, !tbaa !9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  %15 = tail call fastcc ptr @get_type_of_var(ptr noundef nonnull %0) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @strip_type(ptr noundef nonnull %15) #24
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = icmp ne ptr %2, null
  %26 = and i1 %25, %14
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 9, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef nonnull %20, i32 noundef 0) #26
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %37 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %33, %30
  tail call fastcc void @add_unsuitable_type(ptr noundef nonnull %2, ptr noundef nonnull %20) #24
  br label %39

39:                                               ; preds = %38, %27, %24
  store ptr %20, ptr %1, align 8, !tbaa !9
  br label %40

40:                                               ; preds = %13, %17, %3, %39
  %41 = phi i8 [ 1, %39 ], [ 0, %3 ], [ 0, %17 ], [ 0, %13 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.data_structure, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = tail call fastcc i32 @find_structure(ptr noundef %4) #24
  %6 = load ptr, ptr @structures, align 8
  %7 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %6) #24
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = tail call i32 @fields_length(ptr noundef %4) #26
  store ptr %4, ptr %2, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.data_structure, ptr %2, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !52
  %12 = tail call fastcc ptr @get_fields(ptr noundef %4, i32 noundef %10) #24
  %13 = getelementptr inbounds %struct.data_structure, ptr %2, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.data_structure, ptr %2, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !54
  %15 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @acc_hash, ptr noundef nonnull @acc_eq, ptr noundef null) #26
  %16 = getelementptr inbounds %struct.data_structure, ptr %2, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !55
  %17 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %10) #24
  %18 = getelementptr inbounds %struct.data_structure, ptr %2, i64 0, i32 6
  store ptr %17, ptr %18, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.data_structure, ptr %2, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !26
  call fastcc void @VEC_structure_heap_safe_push(ptr noundef nonnull %2) #24
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %9
  %23 = call i64 @fwrite(ptr nonnull @.str.7, i64 24, i64 1, ptr nonnull %20)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !9
  call void @print_generic_expr(ptr noundef %24, ptr noundef %4, i32 noundef 0) #26
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %26 = call i64 @fwrite(ptr nonnull @.str.8, i64 22, i64 1, ptr %25)
  br label %27

27:                                               ; preds = %9, %22, %1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_type_of_var(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 34
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi ptr [ null, %1 ], [ %10, %3 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @strip_type(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 210, ptr noundef nonnull @.str.4) #26
  br label %8

8:                                                ; preds = %1, %7
  br label %9

9:                                                ; preds = %8, %13
  %10 = phi ptr [ %15, %13 ], [ %0, %8 ]
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %16 [
    i16 10, label %13
    i16 12, label %13
    i16 15, label %13
  ]

13:                                               ; preds = %9, %9, %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  br label %9, !llvm.loop !57

16:                                               ; preds = %9
  ret ptr %10
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_unsuitable_type(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = icmp eq ptr %1, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = load ptr, ptr %0, align 8, !tbaa !9
  %9 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5, %17
  %12 = phi i32 [ %18, %17 ], [ 0, %5 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !9
  %14 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %13, ptr noundef %7) #24
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !9
  br i1 %15, label %17, label %21

17:                                               ; preds = %11
  %18 = add i32 %12, 1
  %19 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %3) #24, !range !24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11, !llvm.loop !58

21:                                               ; preds = %17, %11, %5
  %22 = phi ptr [ %8, %5 ], [ %16, %11 ], [ %16, %17 ]
  %23 = phi i32 [ 0, %5 ], [ %18, %17 ], [ %12, %11 ]
  %24 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #24
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %0, ptr noundef %7) #24
  br label %27

27:                                               ; preds = %21, %26, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !59
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !9
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_equal_types(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %141, label %6

6:                                                ; preds = %2, %40
  %7 = phi i1 [ %46, %40 ], [ %4, %2 ]
  %8 = phi ptr [ %44, %40 ], [ %1, %2 ]
  %9 = phi ptr [ %42, %40 ], [ %0, %2 ]
  %10 = icmp eq ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = and i1 %11, %10
  br i1 %12, label %141, label %13

13:                                               ; preds = %6
  %14 = or i1 %11, %7
  br i1 %14, label %15, label %141

15:                                               ; preds = %13
  %16 = load i64, ptr %9, align 8
  %17 = load i64, ptr %8, align 8
  %18 = xor i64 %17, %16
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %141

21:                                               ; preds = %15
  %22 = icmp eq ptr %9, %8
  br i1 %22, label %141, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %141, label %29

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @get_type_name(ptr noundef nonnull %9) #24
  %31 = tail call fastcc ptr @get_type_name(ptr noundef nonnull %8) #24
  %32 = icmp ne ptr %30, null
  %33 = icmp ne ptr %31, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %31) #24
  %37 = icmp eq i32 %36, 0
  br label %141

38:                                               ; preds = %29
  %39 = trunc i64 %16 to i16
  switch i16 %39, label %139 [
    i16 10, label %40
    i16 12, label %40
    i16 16, label %48
    i16 17, label %48
    i16 18, label %48
    i16 6, label %48
    i16 8, label %74
    i16 15, label %85
  ]

40:                                               ; preds = %38, %38
  %41 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !20
  %43 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = icmp eq ptr %42, null
  %46 = icmp ne ptr %44, null
  %47 = and i1 %45, %46
  br i1 %47, label %141, label %6

48:                                               ; preds = %38, %38, %38, %38
  %49 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %50 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 1
  %51 = load ptr, ptr %49, align 8, !tbaa !20
  %52 = load ptr, ptr %50, align 8, !tbaa !20
  %53 = icmp ne ptr %51, null
  %54 = icmp ne ptr %52, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %69

56:                                               ; preds = %48, %61
  %57 = phi ptr [ %65, %61 ], [ %52, %48 ]
  %58 = phi ptr [ %64, %61 ], [ %51, %48 ]
  %59 = tail call fastcc zeroext i8 @compare_fields(ptr noundef nonnull %58, ptr noundef nonnull %57) #24, !range !36
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %141, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  %63 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %64 = load ptr, ptr %62, align 8, !tbaa !20
  %65 = load ptr, ptr %63, align 8, !tbaa !20
  %66 = icmp ne ptr %64, null
  %67 = icmp ne ptr %65, null
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %56, label %69, !llvm.loop !61

69:                                               ; preds = %61, %48
  %70 = phi i1 [ %53, %48 ], [ %66, %61 ]
  %71 = phi i1 [ %54, %48 ], [ %67, %61 ]
  %72 = select i1 %70, i1 true, i1 %71
  %73 = xor i1 %72, true
  br label %141

74:                                               ; preds = %38
  %75 = and i64 %18, 2097152
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %140

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, %79
  %83 = and i32 %82, 1023
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %141, label %140

85:                                               ; preds = %38
  %86 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !20
  %88 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  %90 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %87, ptr noundef %89) #24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %141, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !20
  %95 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = icmp ne ptr %94, null
  %98 = icmp ne ptr %96, null
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %141

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 14
  %102 = load ptr, ptr %101, align 8, !tbaa !20
  %103 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 14
  %104 = load ptr, ptr %103, align 8, !tbaa !20
  %105 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 13
  %106 = load ptr, ptr %105, align 8, !tbaa !20
  %107 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 13
  %108 = load ptr, ptr %107, align 8, !tbaa !20
  %109 = insertelement <4 x ptr> poison, ptr %108, i64 0
  %110 = insertelement <4 x ptr> %109, ptr %104, i64 1
  %111 = insertelement <4 x ptr> %110, ptr %106, i64 2
  %112 = insertelement <4 x ptr> %111, ptr %102, i64 3
  %113 = freeze <4 x ptr> %112
  %114 = icmp eq <4 x ptr> %113, zeroinitializer
  %115 = bitcast <4 x i1> %114 to i4
  %116 = icmp eq i4 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %100
  %118 = load i64, ptr %102, align 8
  %119 = load i64, ptr %104, align 8
  %120 = and i64 %118, 65535
  %121 = icmp eq i64 %120, 23
  %122 = and i64 %119, 65535
  %123 = icmp eq i64 %122, 23
  %124 = and i1 %121, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load i64, ptr %106, align 8
  %127 = load i64, ptr %108, align 8
  %128 = and i64 %126, 65535
  %129 = icmp eq i64 %128, 23
  %130 = and i64 %127, 65535
  %131 = icmp eq i64 %130, 23
  %132 = and i1 %129, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %102, ptr noundef nonnull %104) #26
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %106, ptr noundef nonnull %108) #26
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %141

139:                                              ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1695, ptr noundef nonnull @.str.4) #26
  br label %140

140:                                              ; preds = %136, %133, %125, %117, %100, %74, %77, %139
  br label %141

141:                                              ; preds = %6, %40, %13, %15, %21, %23, %56, %2, %136, %92, %85, %77, %69, %140, %35
  %142 = phi i1 [ %37, %35 ], [ false, %140 ], [ %73, %69 ], [ true, %77 ], [ true, %136 ], [ false, %92 ], [ false, %85 ], [ false, %2 ], [ false, %56 ], [ false, %6 ], [ false, %40 ], [ true, %13 ], [ false, %15 ], [ true, %21 ], [ true, %23 ]
  %143 = zext i1 %142 to i8
  ret i8 %143
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_type_name(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %16 [
    i16 1, label %12
    i16 35, label %8
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %5
  %13 = phi ptr [ %3, %5 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  br label %16

16:                                               ; preds = %12, %8, %5, %1
  %17 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %8 ], [ %15, %12 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @compare_fields(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %5, label %22, label %9

9:                                                ; preds = %2
  br i1 %8, label %31, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 262, ptr noundef nonnull @.str.4) #26
  br label %19

19:                                               ; preds = %10, %18
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %14) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %31

22:                                               ; preds = %2
  br i1 %8, label %23, label %31

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %25, ptr noundef %27) #24
  %29 = icmp ne i8 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %9, %19, %23, %22
  %32 = phi i8 [ 0, %19 ], [ 0, %22 ], [ %30, %23 ], [ 0, %9 ]
  ret i8 %32
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #26
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !59
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !59
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = load i32, ptr %0, align 8, !tbaa !59
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = load ptr, ptr @structures, align 8
  %6 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !9
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  %12 = tail call fastcc zeroext i8 @is_equal_types(ptr noundef %11, ptr noundef %4) #24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = add i32 %9, 1
  %16 = load ptr, ptr @structures, align 8
  %17 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #24, !range !24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !63

19:                                               ; preds = %14, %1
  %20 = load ptr, ptr @structures, align 8
  %21 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %20) #24
  br label %22

22:                                               ; preds = %8, %19
  %23 = phi i32 [ %21, %19 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_structure_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @fields_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_fields(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = sext i32 %1 to i64
  %6 = mul nsw i64 %5, 40
  %7 = tail call ptr @xmalloc(i64 noundef %6) #26
  %8 = icmp eq ptr %4, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2, %23
  %10 = phi i64 [ %26, %23 ], [ 0, %2 ]
  %11 = phi ptr [ %25, %23 ], [ %4, %2 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.field_entry, ptr %7, i64 %10
  %17 = trunc i64 %10 to i32
  store i32 %17, ptr %16, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.field_entry, ptr %7, i64 %10, i32 2
  store ptr %11, ptr %18, align 8, !tbaa !68
  %19 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @field_acc_hash, ptr noundef nonnull @field_acc_eq, ptr noundef null) #26
  %20 = getelementptr inbounds %struct.field_entry, ptr %7, i64 %10, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.field_entry, ptr %7, i64 %10, i32 1
  store i64 0, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.field_entry, ptr %7, i64 %10, i32 3
  store ptr null, ptr %22, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %9, %15
  %24 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = add nuw i64 %10, 1
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %9, !llvm.loop !72

28:                                               ; preds = %23, %2
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @acc_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = tail call i32 %2(ptr noundef %3) #26
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @acc_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_structure_heap_safe_push(ptr noundef %0) unnamed_addr #1 {
  tail call fastcc void @VEC_structure_heap_reserve() #24
  %2 = load ptr, ptr @structures, align 8, !tbaa !9
  tail call fastcc void @VEC_structure_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_structure_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !64
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_structure_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !9
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @field_acc_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = tail call i32 %2(ptr noundef %3) #26
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @field_acc_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_structure_heap_reserve() unnamed_addr #1 {
  %1 = load ptr, ptr @structures, align 8, !tbaa !9
  %2 = tail call fastcc i32 @VEC_structure_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 56) #26
  store ptr %5, ptr @structures, align 8, !tbaa !9
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_structure_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !64
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !64
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_structure_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !77
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_structure_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_structure_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !78
  %6 = load i32, ptr %0, align 8, !tbaa !64
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_struct_form(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi i64 [ 0, %6 ], [ %35, %34 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.field_entry, ptr %10, i64 %9, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = tail call fastcc ptr @strip_type(ptr noundef %14) #24
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %19, label %34

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  tail call fastcc void @add_unsuitable_type(ptr noundef %1, ptr noundef %21) #24
  %22 = load ptr, ptr %0, align 8, !tbaa !30
  tail call fastcc void @add_unsuitable_type(ptr noundef %1, ptr noundef %22) #24
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 6, i64 1, ptr nonnull %23)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %27, ptr noundef nonnull %15, i32 noundef 0) #26
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %29 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 29, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %31 = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef %31, i32 noundef 0) #26
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %33 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 13, i64 1, ptr %32)
  br label %34

34:                                               ; preds = %19, %25, %8
  %35 = add nuw nsw i64 %9, 1
  %36 = load i32, ptr %3, align 8, !tbaa !52
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %8, label %39, !llvm.loop !79

39:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_types_passed_to_local_func(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1, %35
  %5 = phi ptr [ %37, %35 ], [ %2, %1 ]
  %6 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %5) #26
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %8, %31
  %14 = phi ptr [ %33, %31 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = tail call fastcc ptr @strip_type(ptr noundef %16) #24
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  tail call fastcc void @add_unsuitable_type(ptr noundef %0, ptr noundef %23) #24
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 18, i64 1, ptr nonnull %24)
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %28, ptr noundef nonnull %17, i32 noundef 0) #26
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %30 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 41, i64 1, ptr %29)
  br label %31

31:                                               ; preds = %21, %26, %13
  %32 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !80

35:                                               ; preds = %31, %8, %4
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %4, !llvm.loop !81

39:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_returned_types(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1, %27
  %5 = phi ptr [ %29, %27 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @strip_type(ptr noundef nonnull %10) #24
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  tail call fastcc void @add_unsuitable_type(ptr noundef %0, ptr noundef %19) #24
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 11, i64 1, ptr nonnull %20)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %24, ptr noundef nonnull %13, i32 noundef 0) #26
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %26 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 40, i64 1, ptr %25)
  br label %27

27:                                               ; preds = %12, %22, %17, %4
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %4, !llvm.loop !82

31:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_escaping_types_1(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @check_type_escape(ptr noundef %8, ptr noundef %0) #24
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @structures, align 8
  %11 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !83

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_type_escape(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = tail call zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef %3) #26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 18, i64 1, ptr nonnull %7)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef %3, i32 noundef 0) #26
  br label %12

12:                                               ; preds = %9, %6
  tail call fastcc void @add_unsuitable_type(ptr noundef %1, ptr noundef %3) #24
  br label %13

13:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_bitfields(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = zext nneg i32 %5 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %34, label %14, !llvm.loop !84

14:                                               ; preds = %7, %11
  %15 = phi i64 [ 0, %7 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.field_entry, ptr %9, i64 %15, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %11, label %22

22:                                               ; preds = %14
  tail call fastcc void @add_unsuitable_type(ptr noundef %1, ptr noundef %3) #24
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 6, i64 1, ptr nonnull %23)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %27, ptr noundef %3, i32 noundef 0) #26
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %29 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %31 = load ptr, ptr %8, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.field_entry, ptr %31, i64 %15, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %30, ptr noundef %33, i32 noundef 0) #26
  br label %34

34:                                               ; preds = %11, %2, %22, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_structure(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @structures, align 8
  %3 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %2) #24
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %2, i32 noundef %0) #24
  tail call fastcc void @remove_str_allocs(ptr noundef nonnull %6) #24
  tail call fastcc void @free_data_struct(ptr noundef nonnull %6) #24
  %7 = load ptr, ptr @structures, align 8
  tail call fastcc void @VEC_structure_base_ordered_remove(ptr noundef %7, i32 noundef %0) #24
  br label %8

8:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_structure_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #11 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_structure_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_str_allocs(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @alloc_sites, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @remove_str_allocs_in_func, ptr noundef nonnull %0) #26
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_data_struct(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 26, i64 1, ptr nonnull %4)
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %9 = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @print_generic_expr(ptr noundef %8, ptr noundef %9, i32 noundef 0) #26
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %11 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr %10)
  br label %12

12:                                               ; preds = %6, %3
  %13 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %25, %20 ], [ 0, %16 ]
  %22 = load ptr, ptr %13, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.field_entry, ptr %22, i64 %21, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  tail call fastcc void @free_field_accesses(ptr noundef %24) #24
  %25 = add nuw nsw i64 %21, 1
  %26 = load i32, ptr %17, align 8, !tbaa !52
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %20, label %29, !llvm.loop !85

29:                                               ; preds = %20
  %30 = load ptr, ptr %13, align 8, !tbaa !53
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi ptr [ %30, %29 ], [ %14, %16 ]
  tail call void @free(ptr noundef %32) #24
  br label %33

33:                                               ; preds = %31, %12
  %34 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call fastcc void @free_accesses(ptr noundef nonnull %35) #24
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @free_struct_cluster(ptr noundef nonnull %40) #24
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %44) #24
  br label %48

48:                                               ; preds = %43, %47, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_structure_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_structure_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds %struct.data_structure, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !64
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @remove_str_allocs_in_func(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #12 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = getelementptr inbounds %struct.func_alloc_sites, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = call fastcc i32 @VEC_alloc_site_t_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2, %19
  %10 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.alloc_site, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %5, align 8, !tbaa !86
  tail call fastcc void @VEC_alloc_site_t_base_ordered_remove(ptr noundef %16, i32 noundef %10) #24
  br label %19

17:                                               ; preds = %9
  %18 = add i32 %10, 1
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %10, %15 ], [ %18, %17 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !86
  %22 = call fastcc i32 @VEC_alloc_site_t_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %3) #24, !range !24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %9, !llvm.loop !90

24:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_alloc_site_t_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !91
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !9
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_alloc_site_t_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !91
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds %struct.alloc_site, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !91
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_field_accesses(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %0, ptr noundef nonnull @free_field_accs, ptr noundef null) #26
  br label %4

4:                                                ; preds = %3, %1
  tail call void @htab_delete(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_accesses(ptr noundef %0) unnamed_addr #1 {
  tail call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @free_accs, ptr noundef null) #26
  tail call void @htab_delete(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_struct_cluster(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @free(ptr noundef %5) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !93
  tail call void @free(ptr noundef %6) #24
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.field_cluster, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @free_struct_cluster(ptr noundef nonnull %9) #24
  br label %12

12:                                               ; preds = %11, %7
  tail call void @free(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef i32 @free_field_accs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @free(ptr noundef %3) #24
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef i32 @free_accs(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.access_site, ptr %3, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #24
  tail call void @free(ptr noundef %3) #24
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @malloc_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = tail call i32 %2(ptr noundef %3) #26
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @malloc_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_alloc_sites() unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %0, %57
  %5 = phi ptr [ %59, %57 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %13, %53
  %18 = phi ptr [ %55, %53 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.cgraph_edge, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %20) #24, !range !36
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef nonnull %20) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_call_lhs(ptr noundef nonnull %20) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #25
  %32 = call fastcc zeroext i8 @is_alloc_of_struct(ptr noundef nonnull %20, ptr noundef nonnull %1) #24, !range !36
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_function_decl, ptr %26, i64 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 2047
  %38 = icmp eq i32 %37, 491
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load ptr, ptr @structures, align 8
  %41 = load i32, ptr %1, align 4, !tbaa !5
  %42 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %40, i32 noundef %41) #24
  %43 = load ptr, ptr %5, align 8, !tbaa !11
  tail call fastcc void @add_alloc_site(ptr noundef %43, ptr noundef nonnull %20, ptr noundef nonnull %42) #24
  br label %52

44:                                               ; preds = %34
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr nonnull %45)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef nonnull %20, i32 noundef 0, i32 noundef 0) #26
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, ptr %1, align 4, !tbaa !5
  tail call fastcc void @remove_structure(i32 noundef %51) #24
  br label %52

52:                                               ; preds = %39, %50, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  br label %53

53:                                               ; preds = %22, %25, %28, %52, %17
  %54 = getelementptr inbounds %struct.cgraph_edge, ptr %18, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %17, !llvm.loop !99

57:                                               ; preds = %53, %13, %4, %10
  %58 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %4, !llvm.loop !100

61:                                               ; preds = %57, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_alloc_of_struct(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @get_final_alloc_stmt(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %3) #24, !range !51
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %3) #24
  %10 = tail call fastcc ptr @get_type_of_var(ptr noundef %9) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %27 [
    i16 10, label %15
    i16 12, label %15
  ]

15:                                               ; preds = %12, %12
  %16 = tail call fastcc ptr @strip_type(ptr noundef nonnull %10) #24
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 16
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = tail call fastcc ptr @strip_type(ptr noundef nonnull %10) #24
  %22 = tail call fastcc i32 @find_structure(ptr noundef %21) #24
  store i32 %22, ptr %1, align 4, !tbaa !5
  %23 = load ptr, ptr @structures, align 8
  %24 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %23) #24
  %25 = icmp ne i32 %22, %24
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %20, %15, %12, %8, %5, %2
  %28 = phi i8 [ 0, %2 ], [ 0, %5 ], [ 0, %8 ], [ 0, %12 ], [ 0, %15 ], [ %26, %20 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_alloc_site(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.alloc_site, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  store ptr %1, ptr %4, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.alloc_site, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !88
  %6 = load ptr, ptr @alloc_sites, align 8, !tbaa !9
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %8 = tail call i32 %7(ptr noundef %0) #26
  %9 = tail call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef %0, i32 noundef %8) #26
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = tail call ptr @xmalloc(i64 noundef 16) #26
  store ptr %0, ptr %12, align 8, !tbaa !98
  %13 = tail call fastcc ptr @VEC_alloc_site_t_heap_alloc() #24
  %14 = getelementptr inbounds %struct.func_alloc_sites, ptr %12, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !86
  %15 = load ptr, ptr @alloc_sites, align 8, !tbaa !9
  %16 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %17 = tail call i32 %16(ptr noundef %0) #26
  %18 = tail call ptr @htab_find_slot_with_hash(ptr noundef %15, ptr noundef %0, i32 noundef %17, i32 noundef 1) #26
  store ptr %12, ptr %18, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %11, %3
  %20 = phi ptr [ %9, %3 ], [ %12, %11 ]
  %21 = getelementptr inbounds %struct.func_alloc_sites, ptr %20, i64 0, i32 1
  call fastcc void @VEC_alloc_site_t_heap_safe_push(ptr noundef nonnull %21, ptr noundef nonnull %4) #24
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr nonnull %22)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !9
  call void @print_gimple_stmt(ptr noundef %26, ptr noundef %1, i32 noundef 0, i32 noundef 0) #26
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %28 = call i64 @fwrite(ptr nonnull @.str.23, i64 20, i64 1, ptr %27)
  br label %29

29:                                               ; preds = %24, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !36
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #24
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !23
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.4) #26
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_final_alloc_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %0) #24, !range !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #26
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %2, align 8
  %17 = select i1 %15, ptr null, ptr %16
  br label %18

18:                                               ; preds = %13, %8, %5, %1
  %19 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %8 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !9
  store ptr null, ptr %2, align 8, !tbaa !9
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #24, !range !36
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !9
  %19 = load ptr, ptr %5, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  store ptr %21, ptr %2, align 8, !tbaa !9
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #26
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_alloc_site_t_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #26
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alloc_site_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_alloc_site_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_alloc_site_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_alloc_site_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_alloc_site_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #26
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_alloc_site_t_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !91
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !91
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !104
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_alloc_site_t_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_alloc_site_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !105
  %6 = load i32, ptr %0, align 8, !tbaa !91
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_accesses_in_func(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %15, %12 ], [ %8, %3 ]
  tail call fastcc void @collect_accesses_in_bb(ptr noundef %13) #24
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  %16 = load ptr, ptr %4, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %15, %18
  br i1 %19, label %20, label %12, !llvm.loop !113

20:                                               ; preds = %12, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_alloc_and_field_accs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @exclude_alloc_and_field_accs_1(ptr noundef %8, ptr noundef %0) #24
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @structures, align 8
  %11 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !114

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_cond_exprs() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %1) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %0, %18
  %7 = phi i32 [ %19, %18 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 1, ptr %2, align 1, !tbaa !20
  %8 = load ptr, ptr %1, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.data_structure, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  call void @htab_traverse(ptr noundef nonnull %10, ptr noundef nonnull @safe_cond_expr_check, ptr noundef nonnull %2) #26
  %13 = load i8, ptr %2, align 1, !tbaa !20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call fastcc void @remove_structure(i32 noundef %7) #24
  br label %18

16:                                               ; preds = %6, %12
  %17 = add i32 %7, 1
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ %17, %16 ], [ %7, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  %20 = load ptr, ptr @structures, align 8
  %21 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %20, i32 noundef %19, ptr noundef nonnull %1) #24, !range !24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %6, !llvm.loop !115

23:                                               ; preds = %18, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_accesses() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @structures, align 8
  %6 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #24, !range !24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @dump_accs(ptr noundef %10) #24
  %11 = add i32 %9, 1
  %12 = load ptr, ptr @structures, align 8
  %13 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %12, i32 noundef %11, ptr noundef nonnull %1) #24, !range !24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %8, !llvm.loop !116

15:                                               ; preds = %8, %4, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_accesses_in_bb(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !36
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %3, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %13
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %10 = call fastcc i32 @gimple_code(ptr noundef %9) #24, !range !51
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call fastcc void @free_structures() #24
  br label %17

13:                                               ; preds = %8
  store ptr %9, ptr %7, align 8, !tbaa !117
  %14 = call ptr @walk_gimple_op(ptr noundef %9, ptr noundef nonnull @get_stmt_accesses, ptr noundef nonnull %3) #26
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !36
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %8, label %17, !llvm.loop !120

17:                                               ; preds = %13, %1, %12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_structures() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr @structures, align 8
  %3 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !9
  tail call fastcc void @free_data_struct(ptr noundef %7) #24
  %8 = add i32 %6, 1
  %9 = load ptr, ptr @structures, align 8
  %10 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %1) #24, !range !24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !llvm.loop !126

12:                                               ; preds = %5, %0
  tail call fastcc void @VEC_structure_heap_free() #24
  store ptr null, ptr @structures, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @get_stmt_accesses(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %140, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %140 [
    i16 42, label %12
    i16 41, label %39
    i16 56, label %100
    i16 32, label %121
    i16 141, label %121
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = tail call fastcc ptr @get_type_of_var(ptr noundef %14) #24
  %16 = tail call fastcc ptr @strip_type(ptr noundef %15) #24
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = tail call fastcc i32 @find_structure(ptr noundef %18) #24
  %20 = load ptr, ptr @structures, align 8
  %21 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %20) #24
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %140, label %23

23:                                               ; preds = %12
  %24 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #24, !range !36
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %20, i32 noundef %19) #24
  %28 = getelementptr inbounds %struct.data_structure, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  tail call fastcc void @add_access_to_acc_sites(ptr noundef %6, ptr noundef null, ptr noundef %29) #24
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %140

30:                                               ; preds = %23
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 10, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %18, i32 noundef 0) #26
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %37 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 14, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %33, %30
  tail call fastcc void @remove_structure(i32 noundef %19) #24
  br label %140

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  %42 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  %44 = load i64, ptr %41, align 8
  %45 = trunc i64 %44 to i16
  switch i16 %45, label %140 [
    i16 47, label %46
    i16 45, label %46
    i16 32, label %46
  ]

46:                                               ; preds = %39, %39, %39
  %47 = load i64, ptr %43, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 31
  br i1 %49, label %50, label %140

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 16
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  %55 = tail call fastcc i32 @find_structure(ptr noundef %54) #24
  %56 = load ptr, ptr @structures, align 8
  %57 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %56) #24
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %140, label %59

59:                                               ; preds = %50
  %60 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %56, i32 noundef %55) #24
  %61 = tail call fastcc ptr @find_field_in_struct(ptr noundef nonnull %60, ptr noundef nonnull %43) #24
  %62 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #24, !range !36
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.data_structure, ptr %60, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  tail call fastcc void @add_access_to_acc_sites(ptr noundef %6, ptr noundef null, ptr noundef %66) #24
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %140

67:                                               ; preds = %59
  %68 = icmp eq ptr %61, null
  br i1 %68, label %140, label %69

69:                                               ; preds = %67
  %70 = tail call fastcc ptr @make_field_acc_node() #24
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2556, ptr noundef nonnull @.str.4) #26
  br label %73

73:                                               ; preds = %69, %72
  store ptr %6, ptr %70, align 8, !tbaa !75
  %74 = getelementptr inbounds %struct.field_access_site, ptr %70, i64 0, i32 1
  store ptr %7, ptr %74, align 8, !tbaa !127
  %75 = getelementptr inbounds %struct.field_access_site, ptr %70, i64 0, i32 3
  store ptr %41, ptr %75, align 8, !tbaa !128
  %76 = getelementptr inbounds %struct.field_access_site, ptr %70, i64 0, i32 2
  store ptr %43, ptr %76, align 8, !tbaa !129
  %77 = load ptr, ptr %60, align 8, !tbaa !30
  %78 = tail call fastcc zeroext i8 @decompose_access(ptr noundef %77, ptr noundef nonnull %70) #24, !range !36
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 10, i64 1, ptr nonnull %81)
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %85, ptr noundef %54, i32 noundef 0) #26
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %87 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 36, i64 1, ptr %86)
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %88, ptr noundef %6, i32 noundef 0, i32 noundef 0) #26
  br label %89

89:                                               ; preds = %83, %80
  tail call fastcc void @remove_structure(i32 noundef %55) #24
  tail call void @free(ptr noundef nonnull %70) #24
  br label %99

90:                                               ; preds = %73
  %91 = tail call fastcc ptr @gimple_bb(ptr noundef %6) #24
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 8
  %93 = load i64, ptr %92, align 8, !tbaa !130
  %94 = getelementptr inbounds %struct.field_entry, ptr %61, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !70
  %96 = add nsw i64 %95, %93
  store i64 %96, ptr %94, align 8, !tbaa !70
  %97 = getelementptr inbounds %struct.field_entry, ptr %61, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !69
  tail call fastcc void @add_field_acc_to_acc_sites(ptr noundef nonnull %70, ptr noundef %98) #24
  br label %99

99:                                               ; preds = %90, %89
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %140

100:                                              ; preds = %9
  %101 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !20
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !20
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %100, %108
  %109 = phi i64 [ %113, %108 ], [ 0, %100 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %110 = getelementptr inbounds %struct.tree_exp, ptr %102, i64 0, i32 3, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !20
  store ptr %111, ptr %4, align 8, !tbaa !9
  store i32 1, ptr %1, align 4, !tbaa !5
  %112 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @get_stmt_accesses, ptr noundef %2, ptr noundef null, ptr noundef null) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %113 = add nuw nsw i64 %109, 1
  %114 = load i64, ptr %102, align 8
  %115 = and i64 %114, 65535
  %116 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !20
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 %113, %118
  br i1 %119, label %108, label %120, !llvm.loop !131

120:                                              ; preds = %108, %100
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %140

121:                                              ; preds = %9, %9
  %122 = and i64 %10, 65535
  %123 = icmp eq i64 %122, 141
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !20
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi ptr [ %126, %124 ], [ %7, %121 ]
  %129 = tail call fastcc ptr @get_type_of_var(ptr noundef %128) #24
  %130 = tail call fastcc ptr @strip_type(ptr noundef %129) #24
  %131 = tail call fastcc i32 @find_structure(ptr noundef %130) #24
  %132 = load ptr, ptr @structures, align 8
  %133 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %132) #24
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %127
  %136 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %132, i32 noundef %131) #24
  %137 = getelementptr inbounds %struct.data_structure, ptr %136, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !55
  tail call fastcc void @add_access_to_acc_sites(ptr noundef %6, ptr noundef %128, ptr noundef %138) #24
  br label %139

139:                                              ; preds = %135, %127
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %140

140:                                              ; preds = %64, %99, %67, %50, %120, %139, %12, %38, %26, %46, %39, %9, %3
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  store ptr %4, ptr %0, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !133
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !134
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !136
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_structure_heap_free() unnamed_addr #3 {
  %1 = load ptr, ptr @structures, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #24
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @structures, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_access_to_acc_sites(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %5 = tail call i32 %4(ptr noundef %0) #26
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef %0, i32 noundef %5) #26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = tail call ptr @xmalloc(i64 noundef 16) #26
  store ptr %0, ptr %9, align 8, !tbaa !73
  %10 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #24, !range !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 10) #24
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.access_site, ptr %9, i64 0, i32 1
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %18 = tail call i32 %17(ptr noundef %0) #26
  %19 = tail call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef %0, i32 noundef %18, i32 noundef 1) #26
  store ptr %9, ptr %19, align 8, !tbaa !9
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi ptr [ %6, %3 ], [ %9, %14 ]
  %22 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #24, !range !36
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.access_site, ptr %21, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %25, ptr noundef %1) #24
  br label %26

26:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_field_in_struct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = tail call fastcc ptr @find_field_in_struct_1(ptr noundef %3, ptr noundef %1) #24
  %5 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = zext nneg i32 %6 to i64
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %22, label %15, !llvm.loop !138

15:                                               ; preds = %8, %12
  %16 = phi i64 [ 0, %8 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.field_entry, ptr %10, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %12

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.field_entry, ptr %10, i64 %16
  br label %22

22:                                               ; preds = %12, %2, %20
  %23 = phi ptr [ %21, %20 ], [ null, %2 ], [ null, %12 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_field_acc_node() unnamed_addr #1 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #26
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @decompose_access(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 433, ptr noundef nonnull @.str.4) #26
  %7 = load ptr, ptr %3, align 8, !tbaa !128
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %4, %2 ], [ %7, %6 ]
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %14 [
    i16 47, label %12
    i16 45, label %15
    i16 32, label %15
  ]

12:                                               ; preds = %8
  %13 = tail call fastcc zeroext i8 @decompose_indirect_ref_acc(ptr noundef %0, ptr noundef nonnull %1) #24, !range !36
  br label %15

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %8, %8, %14, %12
  %16 = phi i8 [ %13, %12 ], [ 0, %14 ], [ 1, %8 ], [ 1, %8 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_field_acc_to_acc_sites(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = tail call fastcc ptr @is_in_field_accs(ptr noundef %3, ptr noundef %1) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 472, ptr noundef nonnull @.str.4) #26
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !75
  %9 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %10 = tail call i32 %9(ptr noundef %8) #26
  %11 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef %8, i32 noundef %10, i32 noundef 1) #26
  store ptr %0, ptr %11, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_field_in_struct_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6, %18
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @compare_fields(ptr noundef %1, ptr noundef nonnull %11) #24, !range !36
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %10
  %19 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !139

22:                                               ; preds = %15, %18, %6, %2
  %23 = phi ptr [ null, %2 ], [ null, %6 ], [ %11, %15 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @decompose_indirect_ref_acc(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !140
  %14 = icmp eq ptr %12, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #24, !range !51
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %12) #24, !range !141
  %20 = trunc i32 %19 to i16
  switch i16 %20, label %50 [
    i16 66, label %21
    i16 64, label %21
    i16 63, label %21
  ]

21:                                               ; preds = %18, %18, %18
  %22 = load ptr, ptr %13, align 8, !tbaa !140
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %22) #24
  %24 = load ptr, ptr %13, align 8, !tbaa !140
  %25 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %24) #24
  %26 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 6
  %27 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 5
  %28 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 8
  %29 = tail call zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef %19, ptr noundef %23, ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %28, align 8, !tbaa !142
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef nonnull %32) #24
  br label %38

36:                                               ; preds = %31
  %37 = load ptr, ptr %27, align 8, !tbaa !143
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 4294967296
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = getelementptr inbounds %struct.field_access_site, ptr %1, i64 0, i32 4
  %49 = tail call fastcc zeroext i8 @is_result_of_mult(ptr noundef nonnull %39, ptr noundef nonnull %48, ptr noundef %47) #24, !range !36
  br label %50

50:                                               ; preds = %45, %41, %38, %21, %18, %10, %15, %2
  %51 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 0, %10 ], [ 0, %18 ], [ 0, %21 ], [ 0, %38 ], [ 0, %41 ], [ %49, %45 ]
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #24, !range !141
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #24, !range !51
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #24
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #25
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #24
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #24
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #24
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #25
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_result_of_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %5) #24, !range !36
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %5) #24
  %12 = tail call zeroext i8 @is_gimple_reg(ptr noundef %11) #26
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %5) #24, !range !141
  %16 = icmp eq i32 %15, 65
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %5) #24
  %19 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %5) #24
  %20 = tail call i32 @operand_equal_p(ptr noundef %18, ptr noundef %2, i32 noundef 1) #26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @operand_equal_p(ptr noundef %19, ptr noundef %2, i32 noundef 1) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %14, %7, %3
  br label %26

26:                                               ; preds = %22, %17, %25
  %27 = phi ptr [ null, %25 ], [ %19, %17 ], [ %18, %22 ]
  %28 = phi i8 [ 0, %25 ], [ 1, %17 ], [ 1, %22 ]
  store ptr %27, ptr %1, align 8, !tbaa !9
  br label %29

29:                                               ; preds = %26, %10
  %30 = phi i8 [ 0, %10 ], [ %28, %26 ]
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.4) #26
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !20
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #24
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !144
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !146
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #24
  %8 = load ptr, ptr %3, align 8, !tbaa !148
  store ptr %8, ptr %2, align 8, !tbaa !147
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #24
  %17 = load ptr, ptr %11, align 8, !tbaa !153
  store ptr %17, ptr %10, align 8, !tbaa !150
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !146
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !150
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #24
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !147
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !148
  store ptr %11, ptr %5, align 8, !tbaa !147
  br label %12

12:                                               ; preds = %10, %7, %2
  store i8 0, ptr %0, align 8, !tbaa !146
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !51
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @is_in_field_accs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %4 = tail call i32 %3(ptr noundef %0) #26
  %5 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %0, i32 noundef %4) #26
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @exclude_alloc_and_field_accs_1(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.exclude_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.exclude_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !155
  %5 = load ptr, ptr %1, align 8, !tbaa !11
  store ptr %5, ptr %3, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @htab_traverse(ptr noundef nonnull %7, ptr noundef nonnull @exclude_from_accs, ptr noundef nonnull %3) #26
  br label %10

10:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @exclude_from_accs(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %1, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.exclude_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  %7 = load ptr, ptr %3, align 8, !tbaa !73
  %8 = tail call fastcc zeroext i8 @is_part_of_malloc(ptr noundef %7, ptr noundef %4) #24, !range !36
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !73
  %12 = tail call fastcc zeroext i8 @is_part_of_field_access(ptr noundef %11, ptr noundef %6) #24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.access_site, ptr %3, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %15) #24
  tail call void @free(ptr noundef nonnull %3) #24
  %16 = getelementptr inbounds %struct.data_structure, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  tail call void @htab_clear_slot(ptr noundef %17, ptr noundef nonnull %0) #26
  br label %18

18:                                               ; preds = %14, %10
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_part_of_malloc(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @get_fallocs(ptr noundef %1) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %7 = getelementptr inbounds %struct.func_alloc_sites, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = call fastcc i32 @VEC_alloc_site_t_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %16

11:                                               ; preds = %21
  %12 = add i32 %17, 1
  %13 = load ptr, ptr %7, align 8, !tbaa !86
  %14 = call fastcc i32 @VEC_alloc_site_t_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %3) #24, !range !24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16, !llvm.loop !158

16:                                               ; preds = %6, %11
  %17 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !9
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @get_final_alloc_stmt(ptr noundef %19) #24
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %11

24:                                               ; preds = %16, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %26

25:                                               ; preds = %11, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %26

26:                                               ; preds = %2, %25, %24
  %27 = phi i8 [ 1, %24 ], [ 0, %25 ], [ 0, %2 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_part_of_field_access(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.find_stmt_data, align 8
  %4 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.find_stmt_data, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 3
  br label %15

10:                                               ; preds = %21, %22
  %11 = add nuw nsw i64 %16, 1
  %12 = load i32, ptr %4, align 8, !tbaa !52
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %25, !llvm.loop !159

15:                                               ; preds = %7, %10
  %16 = phi i64 [ 0, %7 ], [ %11, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  store i8 0, ptr %3, align 8, !tbaa !160
  store ptr %0, ptr %8, align 8, !tbaa !162
  %17 = load ptr, ptr %9, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.field_entry, ptr %17, i64 %16, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br label %10

22:                                               ; preds = %15
  call void @htab_traverse(ptr noundef nonnull %19, ptr noundef nonnull @find_in_field_accs, ptr noundef nonnull %3) #26
  %23 = load i8, ptr %3, align 8, !tbaa !160
  %24 = icmp eq i8 %23, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br i1 %24, label %10, label %25

25:                                               ; preds = %22, %10, %2
  %26 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 1, %22 ]
  ret i8 %26
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_fallocs(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @alloc_sites, align 8, !tbaa !9
  %3 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !9
  %4 = tail call i32 %3(ptr noundef %0) #26
  %5 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef %0, i32 noundef %4) #26
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @find_in_field_accs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.find_stmt_data, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = load ptr, ptr %3, align 8, !tbaa !75
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %2
  store i8 1, ptr %1, align 8, !tbaa !160
  br label %17

17:                                               ; preds = %12, %16
  %18 = phi i32 [ 0, %16 ], [ 1, %12 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @safe_cond_expr_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #24, !range !51
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @is_safe_cond_expr(ptr noundef %4) #24, !range !36
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 30, i64 1, ptr nonnull %11)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %16 = load ptr, ptr %3, align 8, !tbaa !73
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %16, i32 noundef 0, i32 noundef 0) #26
  br label %17

17:                                               ; preds = %13, %10
  store i8 0, ptr %1, align 1, !tbaa !20
  br label %18

18:                                               ; preds = %2, %7, %17
  %19 = phi i32 [ 0, %17 ], [ 1, %7 ], [ 1, %2 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_safe_cond_expr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #24, !range !141
  %3 = add nsw i32 %2, -101
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load ptr, ptr @structures, align 8
  %7 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %6) #24
  %8 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #24
  %9 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #24
  %10 = tail call fastcc ptr @get_type_of_var(ptr noundef %8) #24
  %11 = tail call fastcc ptr @strip_type(ptr noundef %10) #24
  %12 = tail call fastcc i32 @find_structure(ptr noundef %11) #24
  %13 = tail call fastcc ptr @get_type_of_var(ptr noundef %9) #24
  %14 = tail call fastcc ptr @strip_type(ptr noundef %13) #24
  %15 = tail call fastcc i32 @find_structure(ptr noundef %14) #24
  %16 = icmp ne i32 %12, %7
  %17 = icmp ne i32 %15, %7
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = tail call i32 @integer_zerop(ptr noundef %8) #26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call i32 @integer_zerop(ptr noundef %9) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %1, %22, %5, %25
  %27 = phi i8 [ 1, %25 ], [ 0, %5 ], [ 0, %22 ], [ 0, %1 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_accs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %3 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 24, i64 1, ptr %2)
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @print_generic_expr(ptr noundef %4, ptr noundef %5, i32 noundef 0) #26
  %6 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %24, %11 ]
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %16 = load ptr, ptr %10, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.field_entry, ptr %16, i64 %12, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %18, i32 noundef 0) #26
  %19 = load ptr, ptr %10, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.field_entry, ptr %19, i64 %12, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  tail call fastcc void @dump_field_acc_sites(ptr noundef %21) #24
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %23 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %22)
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %6, align 8, !tbaa !52
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %11, label %28, !llvm.loop !163

28:                                               ; preds = %11, %1
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %30 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 22, i64 1, ptr %29)
  %31 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  tail call fastcc void @dump_access_sites(ptr noundef %32) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_field_acc_sites(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %0, ptr noundef nonnull @dump_field_acc, ptr noundef null) #26
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_access_sites(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %0, ptr noundef nonnull @dump_acc, ptr noundef null) #26
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_field_acc(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #26
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0) #26
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.field_access_site, ptr %3, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !142
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %21, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0) #26
  br label %22

22:                                               ; preds = %20, %16
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_acc(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %6 = tail call i32 @fputc(i32 10, ptr %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %10, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #26
  br label %11

11:                                               ; preds = %9, %2
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 3, i64 1, ptr %12)
  %14 = getelementptr inbounds %struct.access_site, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11, %18
  %19 = phi i32 [ %24, %18 ], [ 0, %11 ]
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %21 = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %20, ptr noundef %21, i32 noundef 0) #26
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %23 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %22)
  %24 = add i32 %19, 1
  %25 = load ptr, ptr %14, align 8, !tbaa !164
  %26 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %25, i32 noundef %24, ptr noundef nonnull %3) #24, !range !24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !165

28:                                               ; preds = %18, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sum_counts(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = icmp sgt i32 %5, 0
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !9
  br i1 %6, label %8, label %43

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %31
  %11 = phi ptr [ %7, %8 ], [ %32, %31 ]
  %12 = phi i32 [ %5, %8 ], [ %33, %31 ]
  %13 = phi i64 [ 0, %8 ], [ %39, %31 ]
  %14 = phi ptr [ %7, %8 ], [ %35, %31 ]
  %15 = phi i64 [ 0, %8 ], [ %40, %31 ]
  %16 = icmp eq ptr %14, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 19, i64 1, ptr nonnull %14)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %20 = load ptr, ptr %9, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.field_entry, ptr %20, i64 %15, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  tail call void @print_generic_expr(ptr noundef %19, ptr noundef %22, i32 noundef 0) #26
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %24 = load ptr, ptr %9, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.field_entry, ptr %24, i64 %15, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !70
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.39, i64 noundef %26) #24
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %29 = load i64, ptr %3, align 8, !tbaa !26
  %30 = load i32, ptr %4, align 8, !tbaa !52
  br label %31

31:                                               ; preds = %17, %10
  %32 = phi ptr [ %28, %17 ], [ %11, %10 ]
  %33 = phi i32 [ %30, %17 ], [ %12, %10 ]
  %34 = phi i64 [ %29, %17 ], [ %13, %10 ]
  %35 = phi ptr [ %28, %17 ], [ null, %10 ]
  %36 = load ptr, ptr %9, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct.field_entry, ptr %36, i64 %15, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !70
  %39 = add nsw i64 %34, %38
  store i64 %39, ptr %3, align 8, !tbaa !26
  %40 = add nuw nsw i64 %15, 1
  %41 = sext i32 %33 to i64
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %10, label %43, !llvm.loop !166

43:                                               ; preds = %31, %2
  %44 = phi i64 [ 0, %2 ], [ %39, %31 ]
  %45 = phi ptr [ %7, %2 ], [ %32, %31 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %45)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %50 = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @print_generic_expr(ptr noundef %49, ptr noundef %50, i32 noundef 0) #26
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %52 = load i64, ptr %3, align 8, !tbaa !26
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.39, i64 noundef %52) #24
  %54 = load i64, ptr %3, align 8, !tbaa !26
  br label %55

55:                                               ; preds = %47, %43
  %56 = phi i64 [ %54, %47 ], [ %44, %43 ]
  %57 = load i64, ptr %1, align 8, !tbaa !23
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i64 %56, ptr %1, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %59, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peel_hot_fields(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = tail call ptr @sbitmap_alloc(i32 noundef %3) #26
  tail call void @sbitmap_ones(ptr noundef %4) #26
  %5 = tail call fastcc i64 @get_max_field_count(ptr noundef %0) #24, !range !167
  %6 = udiv i64 %5, 100
  %7 = mul nuw nsw i64 %6, 90
  %8 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !54
  %9 = load i32, ptr %2, align 8, !tbaa !52
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %20
  %14 = phi i32 [ %9, %11 ], [ %21, %20 ]
  %15 = phi i32 [ 0, %11 ], [ %22, %20 ]
  %16 = load i64, ptr %12, align 8, !tbaa !26
  %17 = icmp slt i64 %16, %7
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  tail call fastcc void @RESET_BIT(ptr noundef %4, i32 noundef %15) #24
  tail call fastcc void @peel_field(i32 noundef %15, ptr noundef nonnull %0) #24
  %19 = load i32, ptr %2, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi i32 [ %14, %13 ], [ %19, %18 ]
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %13, label %24, !llvm.loop !168

24:                                               ; preds = %20, %1
  %25 = tail call i32 @sbitmap_first_set_bit(ptr noundef %4) #26
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call fastcc void @gen_cluster(ptr noundef %4, ptr noundef nonnull %0) #24
  br label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8, !tbaa !95
  tail call void @free(ptr noundef %29) #24
  tail call void @free(ptr noundef %4) #24
  br label %30

30:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @get_max_field_count(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %15, %9 ]
  %11 = phi i64 [ 0, %5 ], [ %14, %9 ]
  %12 = getelementptr inbounds %struct.field_entry, ptr %7, i64 %10, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !70
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 %11)
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !169

17:                                               ; preds = %9, %1
  %18 = phi i64 [ 0, %1 ], [ %14, %9 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
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
  %15 = load i64, ptr %14, align 8, !tbaa !23
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !20
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !23
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peel_field(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #26
  %4 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.field_cluster, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !97
  store ptr %3, ptr %4, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %8) #26
  store ptr %9, ptr %3, align 8, !tbaa !93
  tail call void @sbitmap_zero(ptr noundef %9) #26
  %10 = load ptr, ptr %3, align 8, !tbaa !93
  tail call fastcc void @SET_BIT(ptr noundef %10, i32 noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare i32 @sbitmap_first_set_bit(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_cluster(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #26
  %4 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.field_cluster, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !97
  store ptr %3, ptr %4, align 8, !tbaa !54
  store ptr %0, ptr %3, align 8, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
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
  %15 = load i64, ptr %14, align 8, !tbaa !23
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !20
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !23
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_types() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %1) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %0, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %0 ]
  %8 = load ptr, ptr %1, align 8, !tbaa !9
  call fastcc void @create_new_type(ptr noundef %8, ptr noundef nonnull %2) #24
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @structures, align 8
  %11 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %1) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !170

13:                                               ; preds = %6, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_new_types() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 65, i64 1, ptr nonnull %3)
  %7 = load ptr, ptr @structures, align 8
  %8 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %1) #24, !range !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %5, %38
  %11 = phi i32 [ %39, %38 ], [ 0, %5 ]
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !9
  br label %25

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 10, i64 1, ptr nonnull %12)
  %18 = load ptr, ptr %1, align 8, !tbaa !9
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  tail call fastcc void @dump_struct_type(ptr noundef %19, i64 noundef 0) #24
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.data_structure, ptr %18, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #24
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.48, i32 noundef %23) #24
  br label %25

25:                                               ; preds = %14, %16
  %26 = phi ptr [ %15, %14 ], [ %18, %16 ]
  %27 = getelementptr inbounds %struct.data_structure, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25, %31
  %32 = phi i32 [ %34, %31 ], [ 0, %25 ]
  %33 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @dump_struct_type(ptr noundef %33, i64 noundef 0) #24
  %34 = add i32 %32, 1
  %35 = load ptr, ptr %27, align 8, !tbaa !56
  %36 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %35, i32 noundef %34, ptr noundef nonnull %2) #24, !range !24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %31, !llvm.loop !171

38:                                               ; preds = %31, %25
  %39 = add i32 %11, 1
  %40 = load ptr, ptr @structures, align 8
  %41 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %40, i32 noundef %39, ptr noundef nonnull %1) #24, !range !24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %10, !llvm.loop !172

43:                                               ; preds = %38, %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_global_vars() unnamed_addr #1 {
  br label %1

1:                                                ; preds = %0, %28
  %2 = phi i64 [ 0, %0 ], [ %29, %28 ]
  %3 = phi i1 [ true, %0 ], [ false, %28 ]
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @htab_create(i64 noundef %2, ptr noundef nonnull @new_var_hash, ptr noundef nonnull @new_var_eq, ptr noundef null) #26
  store ptr %5, ptr @new_global_vars, align 8, !tbaa !9
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6, %23
  %10 = phi ptr [ %26, %23 ], [ %7, %6 ]
  %11 = phi i64 [ %24, %23 ], [ %2, %6 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 32
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  br i1 %3, label %19, label %21

19:                                               ; preds = %18
  %20 = add i64 %11, 1
  br label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr @new_global_vars, align 8, !tbaa !9
  tail call fastcc void @create_new_var(ptr noundef nonnull %12, ptr noundef %22) #24
  br label %23

23:                                               ; preds = %19, %21, %9, %14
  %24 = phi i64 [ %11, %14 ], [ %11, %9 ], [ %11, %21 ], [ %20, %19 ]
  %25 = getelementptr inbounds %struct.varpool_node, ptr %10, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !173

28:                                               ; preds = %23, %6
  %29 = phi i64 [ %2, %6 ], [ %24, %23 ]
  br i1 %3, label %1, label %30, !llvm.loop !174

30:                                               ; preds = %28
  %31 = load ptr, ptr @new_global_vars, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @htab_traverse(ptr noundef nonnull %31, ptr noundef nonnull @update_varpool_with_new_var, ptr noundef null) #26
  br label %34

34:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_new_vars(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %0, ptr noundef nonnull @dump_new_var, ptr noundef null) #26
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_reorg_1() unnamed_addr #1 {
  tail call void @bitmap_obstack_initialize(ptr noundef null) #26
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %0, %25
  %4 = phi ptr [ %27, %25 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 32
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  tail call void @push_cfun(ptr noundef %14) #26
  %15 = load ptr, ptr %4, align 8, !tbaa !11
  store ptr %15, ptr @current_function_decl, align 8, !tbaa !9
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.tree_identifier, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.58, ptr noundef %22) #24
  br label %24

24:                                               ; preds = %18, %12
  tail call fastcc void @do_reorg_for_func(ptr noundef nonnull %4) #24
  tail call void @free_dominance_info(i32 noundef 1) #26
  tail call void @free_dominance_info(i32 noundef 2) #26
  store ptr null, ptr @current_function_decl, align 8, !tbaa !9
  tail call void @pop_cfun() #26
  br label %25

25:                                               ; preds = %3, %9, %24
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %3, !llvm.loop !175

29:                                               ; preds = %25, %0
  tail call void @set_cfun(ptr noundef null) #26
  tail call void @bitmap_obstack_release(ptr noundef null) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_new_vars_htab(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @htab_traverse(ptr noundef nonnull %0, ptr noundef nonnull @free_new_var, ptr noundef null) #26
  br label %4

4:                                                ; preds = %3, %1
  tail call void @htab_delete(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_type(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %4, %6 ], [ %25, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %16, %10 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !30
  %14 = load i32, ptr %1, align 4, !tbaa !5
  %15 = tail call fastcc ptr @gen_cluster_name(ptr noundef %13, i32 noundef %12, i32 noundef %14) #24
  %16 = add nuw nsw i32 %12, 1
  %17 = load ptr, ptr %7, align 8, !tbaa !53
  %18 = load i32, ptr %8, align 8, !tbaa !52
  %19 = tail call fastcc ptr @create_fields(ptr noundef nonnull %11, ptr noundef %17, i32 noundef %18) #24
  %20 = load ptr, ptr %0, align 8, !tbaa !30
  %21 = tail call fastcc ptr @build_basic_struct(ptr noundef %19, ptr noundef %15, ptr noundef %20) #24
  %22 = load ptr, ptr %7, align 8, !tbaa !53
  %23 = load i32, ptr %8, align 8, !tbaa !52
  tail call fastcc void @update_fields_mapping(ptr noundef nonnull %11, ptr noundef %21, ptr noundef %22, i32 noundef %23) #24
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %9, ptr noundef %21) #24
  %24 = getelementptr inbounds %struct.field_cluster, ptr %11, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !176

27:                                               ; preds = %10, %2
  %28 = load i32, ptr %1, align 4, !tbaa !5
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_cluster_name(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @get_type_name(ptr noundef %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = alloca [38 x i8], align 16
  %8 = sext i32 %2 to i64
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull @.str.43, i64 noundef %8) #24
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ null, %3 ], [ %7, %6 ]
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %4, ptr %11
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #24
  %15 = add i64 %14, 5
  %16 = alloca i8, i64 %15, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %16, ptr align 1 %13, i64 %14, i1 false)
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #24
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %18, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false) #24
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #24
  %20 = add i64 %19, 32
  %21 = alloca i8, i64 %20, align 16
  %22 = sext i32 %1 to i64
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %16, i64 noundef %22) #24
  %24 = call ptr @get_identifier(ptr noundef nonnull %21) #26
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_fields(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp sgt i32 %2, 0
  tail call void @llvm.assume(i1 %4)
  %5 = zext nneg i32 %2 to i64
  br label %6

6:                                                ; preds = %3, %26
  %7 = phi i64 [ 0, %3 ], [ %29, %26 ]
  %8 = phi ptr [ null, %3 ], [ %28, %26 ]
  %9 = phi ptr [ null, %3 ], [ %27, %26 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !93
  %11 = lshr i64 %7, 6
  %12 = and i64 %11, 67108863
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !23
  %15 = and i64 %7, 63
  %16 = shl nuw i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.field_entry, ptr %1, i64 %7, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = tail call ptr @unshare_expr(ptr noundef %21) #26
  %23 = icmp eq ptr %9, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  store ptr %22, ptr %25, align 8, !tbaa !20
  br label %26

26:                                               ; preds = %24, %19, %6
  %27 = phi ptr [ %9, %6 ], [ %9, %24 ], [ %22, %19 ]
  %28 = phi ptr [ %8, %6 ], [ %22, %24 ], [ %22, %19 ]
  %29 = add nuw nsw i64 %7, 1
  %30 = icmp eq i64 %29, %5
  br i1 %30, label %31, label %6, !llvm.loop !177

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !20
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_basic_struct(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @unshare_expr(ptr noundef nonnull %6) #26
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  %12 = tail call ptr @make_node_stat(i32 noundef 16) #26
  store ptr %12, ptr %4, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !20
  %14 = call ptr @decl_attributes(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 8) #26
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 2199023255552
  %17 = load ptr, ptr %4, align 8, !tbaa !9
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, -2199023255553
  %20 = or disjoint i64 %19, %16
  store i64 %20, ptr %17, align 8
  %21 = icmp eq ptr %0, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %31, %22 ], [ %0, %10 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !20
  %26 = load i64, ptr %24, align 8
  %27 = load i64, ptr %23, align 8
  %28 = and i64 %26, 2199023255552
  %29 = or i64 %28, %27
  store i64 %29, ptr %23, align 8
  %30 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %22, !llvm.loop !178

33:                                               ; preds = %22, %10
  %34 = load ptr, ptr %4, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 1
  store ptr %0, ptr %35, align 8, !tbaa !20
  call void @layout_type(ptr noundef %34) #26
  %36 = load ptr, ptr %4, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 12
  store ptr %1, ptr %37, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_fields_mapping(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #18 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !93
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %21
  %10 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %11 = lshr i64 %10, 6
  %12 = and i64 %11, 67108863
  %13 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !23
  %15 = and i64 %10, 63
  %16 = shl nuw i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.field_entry, ptr %2, i64 %10, i32 3
  store ptr %1, ptr %20, align 8, !tbaa !71
  br label %21

21:                                               ; preds = %9, %19
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %9, !llvm.loop !179

24:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_struct_type(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = load ptr, ptr @dump_file, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @print_generic_expr(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0) #26
  br label %50

12:                                               ; preds = %7
  tail call fastcc void @print_shift(i64 noundef %1) #24
  %13 = tail call fastcc ptr @get_type_name(ptr noundef nonnull %0) #24
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %15 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 7, i64 1, ptr %14)
  %16 = icmp eq ptr %13, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef nonnull %13) #24
  br label %20

20:                                               ; preds = %17, %12
  tail call fastcc void @print_shift(i64 noundef %1) #24
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 2, i64 1, ptr %21)
  %23 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %20
  %27 = add i64 %1, 2
  br label %28

28:                                               ; preds = %26, %38
  %29 = phi ptr [ %24, %26 ], [ %45, %38 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  tail call fastcc void @print_shift(i64 noundef %1) #24
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i64 [ 2, %28 ], [ %34, %32 ]
  %34 = add nsw i64 %33, -1
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %36 = tail call i32 @fputc(i32 32, ptr %35)
  %37 = icmp eq i64 %34, 0
  br i1 %37, label %38, label %32, !llvm.loop !180

38:                                               ; preds = %32
  tail call fastcc void @dump_struct_type(ptr noundef %31, i64 noundef %27) #24
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %40 = tail call i32 @fputc(i32 32, ptr %39)
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %41, ptr noundef nonnull %29, i32 noundef 0) #26
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %43 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 2, i64 1, ptr %42)
  %44 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %28, !llvm.loop !181

47:                                               ; preds = %38, %20
  tail call fastcc void @print_shift(i64 noundef %1) #24
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %49 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 2, i64 1, ptr %48)
  br label %50

50:                                               ; preds = %2, %47, %11
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_shift(i64 noundef %0) unnamed_addr #20 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %5, %3 ], [ %0, %1 ]
  %5 = add i64 %4, -1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %7 = tail call i32 @fputc(i32 32, ptr %6)
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %9, label %3, !llvm.loop !182

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @new_var_hash(ptr nocapture noundef readonly %0) #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !20
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @new_var_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !183
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !20
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi i32 [ %15, %8 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_var(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @is_in_new_vars_htab(ptr noundef nonnull %0, ptr noundef %1) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = call fastcc zeroext i8 @is_candidate(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef null) #24, !range !36
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 8, !tbaa !9
  %13 = tail call fastcc i32 @find_structure(ptr noundef %12) #24
  %14 = load ptr, ptr @structures, align 8
  %15 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %14) #24
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %14, i32 noundef %13) #24
  %19 = tail call fastcc ptr @create_new_var_node(ptr noundef nonnull %0, ptr noundef nonnull %18) #24
  tail call fastcc void @create_new_var_1(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %19) #24
  tail call fastcc void @add_to_new_vars_htab(ptr noundef %19, ptr noundef %1) #24
  br label %20

20:                                               ; preds = %11, %8, %2, %5, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @update_varpool_with_new_var(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = getelementptr inbounds %struct.new_var_data, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !9
  tail call fastcc void @insert_global_to_varpool(ptr noundef %11) #24
  %12 = add i32 %10, 1
  %13 = load ptr, ptr %5, align 8, !tbaa !185
  %14 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %3) #24, !range !24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !186

16:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @is_in_new_vars_htab(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !20
  %5 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %0, i32 noundef %4) #26
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_new_var_node(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #26
  store ptr %0, ptr %3, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #24
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.new_var_data, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !185
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_var_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #24, !range !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.new_var_data, ptr %2, i64 0, i32 1
  br label %12

12:                                               ; preds = %9, %31
  %13 = phi i32 [ 0, %9 ], [ %33, %31 ]
  %14 = zext i32 %13 to i64
  %15 = tail call fastcc ptr @gen_var_name(ptr noundef %0, i64 noundef %14) #24
  %16 = load ptr, ptr %4, align 8, !tbaa !9
  %17 = tail call fastcc ptr @gen_struct_type(ptr noundef %0, ptr noundef %16) #24
  store ptr %17, ptr %4, align 8, !tbaa !9
  %18 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #24, !range !36
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %10, align 8, !tbaa !20
  %22 = tail call ptr @build_decl_stat(i32 noundef %21, i32 noundef 32, ptr noundef %15, ptr noundef %17) #26
  br label %31

23:                                               ; preds = %12
  %24 = icmp eq ptr %15, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  br label %28

28:                                               ; preds = %23, %25
  %29 = phi ptr [ %27, %25 ], [ null, %23 ]
  %30 = tail call ptr @create_tmp_var(ptr noundef %17, ptr noundef %29) #26
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %22, %20 ], [ %30, %28 ]
  tail call fastcc void @copy_decl_attributes(ptr noundef %32, ptr noundef %0) #24
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %11, ptr noundef %32) #24
  %33 = add i32 %13, 1
  %34 = load ptr, ptr %5, align 8, !tbaa !56
  %35 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %34, i32 noundef %33, ptr noundef nonnull %4) #24, !range !24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %12, !llvm.loop !187

37:                                               ; preds = %31, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_new_vars_htab(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !20
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef 1) #26
  store ptr %0, ptr %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_var_name(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #24
  %12 = add i64 %11, 1
  %13 = alloca i8, i64 %12, align 16
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %8) #24
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #24
  %16 = add i64 %15, 32
  %17 = alloca i8, i64 %16, align 16
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull %13, i64 noundef %1) #24
  %19 = call ptr @get_identifier(ptr noundef nonnull %17) #26
  br label %20

20:                                               ; preds = %2, %6, %10
  %21 = phi ptr [ %19, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_struct_type(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.type_wrapper, align 8
  %5 = tail call fastcc ptr @get_type_of_var(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %6 = tail call fastcc ptr @VEC_type_wrapper_t_heap_alloc() #24
  store ptr %6, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  %7 = getelementptr inbounds %struct.type_wrapper, ptr %4, i64 0, i32 1
  br label %8

8:                                                ; preds = %20, %2
  %9 = phi ptr [ %5, %2 ], [ %23, %20 ]
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 10, label %16
    i16 12, label %16
    i16 15, label %17
  ]

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = call fastcc i32 @VEC_type_wrapper_t_base_length(ptr noundef %13) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %24

16:                                               ; preds = %8, %8
  store i8 0, ptr %4, align 8, !tbaa !188
  br label %20

17:                                               ; preds = %8
  store i8 1, ptr %4, align 8, !tbaa !188
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi ptr [ %19, %17 ], [ null, %16 ]
  store ptr %21, ptr %7, align 8, !tbaa !190
  call fastcc void @VEC_type_wrapper_t_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %22 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  br label %8, !llvm.loop !191

24:                                               ; preds = %12, %36
  %25 = phi ptr [ %38, %36 ], [ %13, %12 ]
  %26 = phi ptr [ %37, %36 ], [ %1, %12 ]
  %27 = call fastcc ptr @VEC_type_wrapper_t_base_last(ptr noundef %25) #24
  %28 = load i8, ptr %27, align 8, !tbaa !188
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.type_wrapper, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !190
  %33 = call ptr @build_array_type(ptr noundef %26, ptr noundef %32) #26
  br label %36

34:                                               ; preds = %24
  %35 = call ptr @build_pointer_type(ptr noundef %26) #26
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %33, %30 ], [ %35, %34 ]
  %38 = load ptr, ptr %3, align 8
  call fastcc void @VEC_type_wrapper_t_base_pop(ptr noundef %38) #24
  %39 = call fastcc i32 @VEC_type_wrapper_t_base_length(ptr noundef %38) #24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %24, !llvm.loop !192

41:                                               ; preds = %36, %12
  %42 = phi ptr [ %1, %12 ], [ %37, %36 ]
  call fastcc void @VEC_type_wrapper_t_heap_free(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_decl_attributes(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = or i64 %4, 4096
  store i64 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = and i64 %5, -33554433
  %10 = or disjoint i64 %8, %9
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 67108864
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, -67108865
  %15 = or disjoint i64 %14, %12
  store i64 %15, ptr %0, align 8
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 134217728
  %18 = and i64 %15, -134217729
  %19 = or disjoint i64 %18, %17
  store i64 %19, ptr %0, align 8
  %20 = load i64, ptr %1, align 8
  %21 = and i64 %20, 16777216
  %22 = and i64 %19, -16777217
  %23 = or disjoint i64 %22, %21
  store i64 %23, ptr %0, align 8
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !20
  %27 = load i64, ptr %1, align 8
  %28 = and i64 %27, 524288
  %29 = and i64 %23, -524289
  %30 = or disjoint i64 %28, %29
  store i64 %30, ptr %0, align 8
  %31 = load i64, ptr %1, align 8
  %32 = and i64 %31, 262144
  %33 = and i64 %30, -262145
  %34 = or disjoint i64 %33, %32
  store i64 %34, ptr %0, align 8
  %35 = load i64, ptr %1, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = and i64 %35, 1048576
  %40 = and i64 %34, -1048577
  %41 = or disjoint i64 %40, %39
  store i64 %41, ptr %0, align 8
  %42 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 57344
  %45 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, -57345
  %48 = or disjoint i32 %47, %44
  store i32 %48, ptr %45, align 8
  br label %49

49:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_type_wrapper_t_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 10, i64 noundef 8, i64 noundef 16) #26
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_type_wrapper_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_type_wrapper_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_type_wrapper_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_type_wrapper_t_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !193
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_type_wrapper_t_base_last(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8, !tbaa !193
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_type_wrapper_t_base_pop(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !193
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_type_wrapper_t_heap_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_type_wrapper_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_type_wrapper_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #26
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_type_wrapper_t_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !193
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !193
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !195
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_type_wrapper_t_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_type_wrapper_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !196
  %6 = load i32, ptr %0, align 8, !tbaa !193
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_global_to_varpool(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @varpool_node(ptr noundef %0) #26
  tail call void @notice_global_symbol(ptr noundef %0) #26
  tail call void @varpool_mark_needed_node(ptr noundef %2) #26
  tail call void @varpool_finalize_decl(ptr noundef %0) #26
  ret void
}

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_new_var(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = tail call fastcc ptr @get_type_of_var(ptr noundef %5) #24
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %8 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 11, i64 1, ptr %7)
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %10 = load ptr, ptr %4, align 8, !tbaa !183
  tail call void @print_generic_expr(ptr noundef %9, ptr noundef %10, i32 noundef 0) #26
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %12 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %11)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %13, ptr noundef %6, i32 noundef 0) #26
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %15 = tail call i32 @fputc(i32 10, ptr %14)
  %16 = getelementptr inbounds %struct.new_var_data, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2, %20
  %21 = phi i32 [ %32, %20 ], [ 0, %2 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !9
  %23 = tail call fastcc ptr @get_type_of_var(ptr noundef %22) #24
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %25 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %26, ptr noundef %22, i32 noundef 0) #26
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %28 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %27)
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %29, ptr noundef %23, i32 noundef 0) #26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %31 = tail call i32 @fputc(i32 10, ptr %30)
  %32 = add i32 %21, 1
  %33 = load ptr, ptr %16, align 8, !tbaa !185
  %34 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %33, i32 noundef %32, ptr noundef nonnull %3) #24, !range !24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %20, !llvm.loop !197

36:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i32 1
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_reorg_for_func(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  tail call fastcc void @create_new_local_vars() #24
  tail call fastcc void @create_new_alloc_sites_for_func(ptr noundef %0) #24
  tail call fastcc void @create_new_accesses_for_func() #24
  tail call void @update_ssa(i32 noundef 2048) #26
  %2 = tail call zeroext i8 @cleanup_tree_cfg() #26
  %3 = load ptr, ptr @new_local_vars, align 8, !tbaa !9
  tail call fastcc void @free_new_vars_htab(ptr noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_cfun(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_local_vars() unnamed_addr #1 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #24
  %4 = tail call i64 @htab_elements(ptr noundef %3) #26
  %5 = tail call ptr @htab_create(i64 noundef %4, ptr noundef nonnull @new_var_hash, ptr noundef nonnull @new_var_eq, ptr noundef null) #26
  store ptr %5, ptr @new_local_vars, align 8, !tbaa !9
  %6 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #24
  %7 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #24, !range !36
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0, %15
  %10 = phi ptr [ %16, %15 ], [ %6, %0 ]
  %11 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %10) #24, !range !36
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr @new_local_vars, align 8, !tbaa !9
  tail call fastcc void @create_new_var(ptr noundef %10, ptr noundef %14) #24
  br label %15

15:                                               ; preds = %9, %13
  %16 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #24
  %17 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #24, !range !36
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %9, label %19, !llvm.loop !198

19:                                               ; preds = %15, %0
  %20 = load ptr, ptr @new_local_vars, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  tail call void @htab_traverse(ptr noundef nonnull %20, ptr noundef nonnull @finalize_new_vars_creation, ptr noundef null) #26
  %23 = load ptr, ptr @new_local_vars, align 8, !tbaa !9
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %23, %22 ], [ null, %19 ]
  tail call fastcc void @dump_new_vars(ptr noundef %25) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_alloc_sites_for_func(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc ptr @get_fallocs(ptr noundef %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @create_new_alloc_sites(ptr noundef nonnull %3, ptr noundef %6) #24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_accesses_for_func() unnamed_addr #1 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %13, %10 ], [ %6, %0 ]
  tail call fastcc void @create_new_accesses_in_bb(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = load ptr, ptr @cfun, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %20, label %10, !llvm.loop !199

20:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !201
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #24
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #24, !range !36
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @finalize_new_vars_creation(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = getelementptr inbounds %struct.new_var_data, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !9
  tail call fastcc void @finalize_var_creation(ptr noundef %11) #24
  %12 = add i32 %10, 1
  %13 = load ptr, ptr %5, align 8, !tbaa !185
  %14 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %3) #24, !range !24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !205

16:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  store ptr %1, ptr %0, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !122
  %6 = tail call i64 @htab_size(ptr noundef %1) #26
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !123
  %9 = load ptr, ptr %5, align 8, !tbaa !122
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !122
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !208

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !9
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = load ptr, ptr %2, align 8, !tbaa !122
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !122
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !9
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_var_creation(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call zeroext i8 @add_referenced_var(ptr noundef %0) #26
  tail call void @mark_sym_for_renaming(ptr noundef %0) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_alloc_sites(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %6 = getelementptr inbounds %struct.func_alloc_sites, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = call fastcc i32 @VEC_alloc_site_t_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %2, %40
  %11 = phi i32 [ %41, %40 ], [ 0, %2 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !9
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.alloc_site, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !9
  %16 = call fastcc ptr @get_final_alloc_stmt(ptr noundef %13) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %17 = load ptr, ptr %15, align 8, !tbaa !30
  %18 = call fastcc ptr @gen_num_of_structs_in_malloc(ptr noundef %13, ptr noundef %17, ptr noundef nonnull %4) #24
  %19 = load ptr, ptr %4, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = call fastcc ptr @gimple_seq_last_stmt(ptr noundef nonnull %19) #24
  call fastcc void @insert_seq_after_stmt(ptr noundef %16, ptr noundef nonnull %19) #24
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %22, %21 ], [ %16, %10 ]
  %25 = getelementptr inbounds %struct.data_structure, ptr %15, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %5) #24, !range !24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %23, %29
  %30 = phi ptr [ %35, %29 ], [ %24, %23 ]
  %31 = phi i32 [ %36, %29 ], [ 0, %23 ]
  store ptr null, ptr %4, align 8, !tbaa !9
  %32 = load ptr, ptr %5, align 8, !tbaa !9
  %33 = call fastcc ptr @create_new_malloc(ptr noundef %13, ptr noundef %32, ptr noundef nonnull %4, ptr noundef %18) #24
  %34 = load ptr, ptr %4, align 8, !tbaa !9
  %35 = call fastcc ptr @gimple_seq_last_stmt(ptr noundef %34) #24
  call fastcc void @insert_seq_after_stmt(ptr noundef %30, ptr noundef %34) #24
  call fastcc void @update_cgraph_with_malloc_call(ptr noundef %33, ptr noundef %1) #24
  %36 = add i32 %31, 1
  %37 = load ptr, ptr %25, align 8, !tbaa !56
  %38 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %37, i32 noundef %36, ptr noundef nonnull %5) #24, !range !24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %29, !llvm.loop !209

40:                                               ; preds = %29, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %41 = add i32 %11, 1
  %42 = load ptr, ptr %6, align 8, !tbaa !86
  %43 = call fastcc i32 @VEC_alloc_site_t_base_iterate(ptr noundef %42, i32 noundef %41, ptr noundef nonnull %3) #24, !range !24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %10, !llvm.loop !210

45:                                               ; preds = %40, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_num_of_structs_in_malloc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %0) #24, !range !36
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_call_arg(ptr noundef nonnull %0) #24
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp ne i64 %12, 141
  %14 = and i64 %11, 131072
  %15 = icmp eq i64 %14, 0
  %16 = and i1 %13, %15
  br i1 %16, label %60, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !20
  %22 = icmp eq i64 %12, 141
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %24 = call fastcc zeroext i8 @is_result_of_mult(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %19) #24, !range !36
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !9
  br label %47

28:                                               ; preds = %23
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !9
  %30 = tail call ptr @create_tmp_var(ptr noundef %29, ptr noundef null) #26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %30) #26
  br label %34

34:                                               ; preds = %32, %28
  %35 = tail call i32 @exact_log2(i64 noundef %21) #26
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 67, ptr noundef %30, ptr noundef nonnull %10, ptr noundef nonnull %19) #26
  br label %45

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !9
  %41 = tail call i32 @exact_log2(i64 noundef %21) #26
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @build_int_cst(ptr noundef %40, i64 noundef %42) #26
  %44 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 84, ptr noundef %30, ptr noundef nonnull %10, ptr noundef %43) #26
  br label %45

45:                                               ; preds = %39, %37
  %46 = phi ptr [ %38, %37 ], [ %44, %39 ]
  tail call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %46) #26
  tail call fastcc void @finalize_stmt(ptr noundef %46) #24
  br label %47

47:                                               ; preds = %26, %45
  %48 = phi ptr [ %27, %26 ], [ %30, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %60

49:                                               ; preds = %17
  %50 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = tail call i32 @multiple_of_p(ptr noundef %55, ptr noundef nonnull %10, ptr noundef nonnull %19) #26
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef nonnull %10, ptr noundef nonnull %19, i32 noundef 0) #26
  br label %60

60:                                               ; preds = %49, %53, %9, %6, %3, %58, %47
  %61 = phi ptr [ %48, %47 ], [ %59, %58 ], [ null, %3 ], [ null, %6 ], [ null, %9 ], [ null, %53 ], [ null, %49 ]
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !124
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_seq_after_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #26
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1) #26
  br label %8

8:                                                ; preds = %2, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_new_malloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %0, null
  %9 = and i1 %8, %7
  %10 = icmp ne ptr %1, null
  %11 = and i1 %10, %9
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1760, ptr noundef nonnull @.str.4) #26
  br label %13

13:                                               ; preds = %4, %12
  %14 = tail call ptr @gimple_seq_alloc() #26
  store ptr %14, ptr %2, align 8, !tbaa !9
  %15 = call fastcc ptr @gen_size(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #24
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %15) #26
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !9
  %17 = tail call ptr @create_tmp_var(ptr noundef %16, ptr noundef null) #26
  %18 = tail call zeroext i8 @add_referenced_var(ptr noundef %17) #26
  %19 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #24
  %20 = load ptr, ptr %5, align 8, !tbaa !9
  %21 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %19, i32 noundef 1, ptr noundef %20) #26
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %21, ptr noundef %17) #24
  tail call fastcc void @finalize_stmt_and_append(ptr noundef nonnull %2, ptr noundef %21) #24
  %22 = tail call fastcc ptr @get_final_alloc_stmt(ptr noundef %0) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1779, ptr noundef nonnull @.str.4) #26
  br label %25

25:                                               ; preds = %13, %24
  %26 = call fastcc ptr @gen_cast_stmt(ptr noundef %17, ptr noundef %1, ptr noundef %22, ptr noundef nonnull %6) #24
  tail call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %26) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_cgraph_with_malloc_call(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef nonnull %0) #24
  %6 = tail call ptr @cgraph_node(ptr noundef %1) #26
  %7 = tail call ptr @cgraph_node(ptr noundef %5) #26
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %0) #24
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !130
  %11 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %1, ptr noundef %8) #26
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %0) #24
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !211
  %15 = tail call ptr @cgraph_create_edge(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %0, i64 noundef %10, i32 noundef %11, i32 noundef %14) #26
  br label %16

16:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #24
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_stmt(ptr noundef %0) unnamed_addr #1 {
  tail call fastcc void @update_stmt(ptr noundef %0) #24
  tail call void @mark_symbols_for_renaming(ptr noundef %0) #26
  ret void
}

; Function Attrs: optsize
declare i32 @multiple_of_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #26
  tail call void @update_stmt_operands(ptr noundef %0) #26
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !212
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gen_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = tail call ptr @create_tmp_var(ptr noundef %9, ptr noundef null) #26
  store ptr %10, ptr %2, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %10) #26
  br label %14

14:                                               ; preds = %12, %3
  %15 = tail call i32 @exact_log2(i64 noundef %7) #26
  %16 = icmp eq i32 %15, -1
  %17 = load ptr, ptr %8, align 8, !tbaa !20
  br i1 %16, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @exact_log2(i64 noundef %7) #26
  %20 = sext i32 %19 to i64
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi i64 [ %20, %18 ], [ %7, %14 ]
  %23 = phi i32 [ 83, %18 ], [ 65, %14 ]
  %24 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef %22) #26
  %25 = load ptr, ptr %2, align 8, !tbaa !9
  %26 = load ptr, ptr %8, align 8, !tbaa !20
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %23, ptr noundef %26, ptr noundef nonnull %0, ptr noundef %24) #26
  %28 = tail call ptr @gimple_build_assign_stat(ptr noundef %25, ptr noundef %27) #26
  tail call fastcc void @finalize_stmt(ptr noundef %28) #24
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_stmt_and_append(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call void @gimple_seq_add_stmt(ptr noundef %0, ptr noundef %1) #26
  tail call fastcc void @finalize_stmt(ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gen_cast_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 {
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #24
  %6 = tail call fastcc ptr @find_new_var_of_type(ptr noundef %5, ptr noundef %1) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 658, ptr noundef nonnull @.str.4) #26
  br label %9

9:                                                ; preds = %4, %8
  %10 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 116, ptr noundef %6, ptr noundef %0, ptr noundef null) #26
  tail call fastcc void @finalize_stmt(ptr noundef %10) #24
  store ptr %6, ptr %3, align 8, !tbaa !9
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !36
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.4) #26
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_new_var_of_type(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 597, ptr noundef nonnull @.str.4) #26
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %0, %7 ]
  %16 = load ptr, ptr @new_global_vars, align 8, !tbaa !9
  %17 = tail call fastcc ptr @is_in_new_vars_htab(ptr noundef %15, ptr noundef %16) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load ptr, ptr @new_local_vars, align 8, !tbaa !9
  %21 = tail call fastcc ptr @is_in_new_vars_htab(ptr noundef %15, ptr noundef %20) #24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 605, ptr noundef nonnull @.str.4) #26
  br label %24

24:                                               ; preds = %14, %19, %23
  %25 = phi ptr [ %21, %19 ], [ null, %23 ], [ %17, %14 ]
  %26 = tail call fastcc ptr @find_var_in_new_vars_vec(ptr noundef %25, ptr noundef %1) #24
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_var_in_new_vars_vec(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.new_var_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %13

8:                                                ; preds = %20
  %9 = add i32 %14, 1
  %10 = load ptr, ptr %4, align 8, !tbaa !185
  %11 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %3) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13, !llvm.loop !213

13:                                               ; preds = %2, %8
  %14 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %15 = load ptr, ptr %3, align 8
  %16 = tail call fastcc ptr @get_type_of_var(ptr noundef %15) #24
  %17 = tail call fastcc ptr @strip_type(ptr noundef %16) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 570, ptr noundef nonnull @.str.4) #26
  br label %20

20:                                               ; preds = %13, %19
  %21 = icmp eq ptr %17, %1
  br i1 %21, label %22, label %8

22:                                               ; preds = %20, %8, %2
  %23 = phi ptr [ null, %2 ], [ null, %8 ], [ %15, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_accesses_in_bb(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  tail call fastcc void @create_new_accs_for_struct(ptr noundef %8, ptr noundef %0) #24
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @structures, align 8
  %11 = call fastcc i32 @VEC_structure_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #24, !range !24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !214

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_accs_for_struct(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.create_acc_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.create_acc_data, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !215
  store ptr %1, ptr %3, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct.create_acc_data, ptr %3, i64 0, i32 2
  store i32 -1, ptr %5, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i32 [ %7, %9 ], [ %22, %21 ]
  %13 = phi i64 [ 0, %9 ], [ %23, %21 ]
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %5, align 8, !tbaa !218
  %15 = load ptr, ptr %10, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.field_entry, ptr %15, i64 %13, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  call void @htab_traverse(ptr noundef nonnull %17, ptr noundef nonnull @create_new_field_acc, ptr noundef nonnull %3) #26
  %20 = load i32, ptr %6, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %11, %19
  %22 = phi i32 [ %12, %11 ], [ %20, %19 ]
  %23 = add nuw nsw i64 %13, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %11, label %26, !llvm.loop !219

26:                                               ; preds = %21, %2
  %27 = getelementptr inbounds %struct.data_structure, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @htab_traverse(ptr noundef nonnull %28, ptr noundef nonnull @create_new_acc, ptr noundef nonnull %3) #26
  br label %31

31:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_new_field_acc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %1, align 8, !tbaa !217
  %5 = load ptr, ptr %3, align 8, !tbaa !75
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #24
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !218
  %11 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !215
  %13 = getelementptr inbounds %struct.data_structure, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds %struct.field_entry, ptr %14, i64 %15
  tail call fastcc void @create_new_field_access(ptr noundef nonnull %3, ptr noundef byval(%struct.field_entry) align 8 %16) #24
  br label %17

17:                                               ; preds = %8, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_new_acc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %1, align 8, !tbaa !217
  %5 = load ptr, ptr %3, align 8, !tbaa !73
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #24
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.create_acc_data, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !215
  tail call fastcc void @create_new_general_access(ptr noundef nonnull %3, ptr noundef %10) #24
  br label %11

11:                                               ; preds = %8, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_field_access(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.field_entry) align 8 %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.field_entry, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !220
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call fastcc ptr @gen_size(ptr noundef nonnull %8, ptr noundef %6, ptr noundef nonnull %3) #24
  %12 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !140
  tail call fastcc void @insert_before_stmt(ptr noundef %13, ptr noundef %11) #24
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8, !tbaa !9
  %20 = call fastcc ptr @gen_cast_stmt(ptr noundef %19, ptr noundef %6, ptr noundef nonnull %16, ptr noundef nonnull %4) #24
  %21 = load ptr, ptr %15, align 8, !tbaa !142
  tail call fastcc void @insert_after_stmt(ptr noundef %21, ptr noundef %20) #24
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !140
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 8, !tbaa !9
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %3, align 8
  %30 = select i1 %28, ptr %29, ptr %27
  %31 = tail call fastcc ptr @create_base_plus_offset(ptr noundef nonnull %24, ptr noundef %6, ptr noundef %30) #24
  %32 = load ptr, ptr %23, align 8, !tbaa !140
  tail call fastcc void @insert_after_stmt(ptr noundef %32, ptr noundef %31) #24
  br label %33

33:                                               ; preds = %26, %22
  tail call fastcc void @replace_field_access_stmt(ptr noundef nonnull %0, ptr noundef %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_before_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #26
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1) #26
  br label %8

8:                                                ; preds = %2, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_after_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #26
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 1) #26
  br label %8

8:                                                ; preds = %2, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_base_plus_offset(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 32, label %8
    i16 141, label %8
  ]

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1086, ptr noundef nonnull @.str.4) #26
  br label %8

8:                                                ; preds = %3, %3, %7
  %9 = tail call fastcc ptr @find_new_var_of_type(ptr noundef nonnull %4, ptr noundef %1) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1089, ptr noundef nonnull @.str.4) #26
  br label %12

12:                                               ; preds = %8, %11
  tail call fastcc void @finalize_var_creation(ptr noundef %9) #24
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !141
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %43 [
    i16 63, label %15
    i16 64, label %15
    i16 66, label %15
  ]

15:                                               ; preds = %12, %12, %12
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %17 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #24
  %18 = load ptr, ptr @structures, align 8
  %19 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %18) #24
  %20 = tail call fastcc ptr @get_type_of_var(ptr noundef %16) #24
  %21 = tail call fastcc ptr @strip_type(ptr noundef %20) #24
  %22 = tail call fastcc i32 @find_structure(ptr noundef %21) #24
  %23 = tail call fastcc ptr @get_type_of_var(ptr noundef %17) #24
  %24 = tail call fastcc ptr @strip_type(ptr noundef %23) #24
  %25 = tail call fastcc i32 @find_structure(ptr noundef %24) #24
  %26 = icmp eq i32 %22, %19
  %27 = icmp eq i32 %25, %19
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1106, ptr noundef nonnull @.str.4) #26
  br label %30

30:                                               ; preds = %15, %29
  br i1 %26, label %33, label %31

31:                                               ; preds = %30
  %32 = tail call fastcc ptr @find_new_var_of_type(ptr noundef %16, ptr noundef %1) #24
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi ptr [ %32, %31 ], [ null, %30 ]
  br i1 %27, label %37, label %35

35:                                               ; preds = %33
  %36 = tail call fastcc ptr @find_new_var_of_type(ptr noundef %17, ptr noundef %1) #24
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %36, %35 ], [ null, %33 ]
  %39 = icmp eq ptr %34, null
  %40 = select i1 %39, ptr %2, ptr %34
  %41 = icmp eq ptr %38, null
  %42 = select i1 %41, ptr %2, ptr %38
  br label %44

43:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1121, ptr noundef nonnull @.str.4) #26
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi ptr [ null, %43 ], [ %42, %37 ]
  %46 = phi ptr [ null, %43 ], [ %40, %37 ]
  %47 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !141
  %48 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %47, ptr noundef %9, ptr noundef %46, ptr noundef %45) #26
  tail call fastcc void @finalize_stmt(ptr noundef %48) #24
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_field_access_stmt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %8 [
    i16 47, label %7
    i16 45, label %7
    i16 32, label %7
  ]

7:                                                ; preds = %2, %2, %2
  tail call fastcc void @replace_field_acc(ptr noundef nonnull %0, ptr noundef %1) #24
  br label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1047, ptr noundef nonnull @.str.4) #26
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_field_acc(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ref_pos, align 8
  %5 = alloca %struct.type_wrapper, align 8
  %6 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %12 = tail call fastcc ptr @VEC_type_wrapper_t_heap_alloc() #24
  store ptr %12, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %13 = getelementptr inbounds %struct.type_wrapper, ptr %5, i64 0, i32 1
  br label %14

14:                                               ; preds = %25, %2
  %15 = phi ptr [ %7, %2 ], [ %28, %25 ]
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %29 [
    i16 47, label %18
    i16 45, label %18
  ]

18:                                               ; preds = %14, %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  %19 = and i64 %16, 65535
  %20 = icmp eq i64 %19, 47
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i8 0, ptr %5, align 8, !tbaa !188
  br label %25

22:                                               ; preds = %18
  store i8 1, ptr %5, align 8, !tbaa !188
  %23 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi ptr [ %24, %22 ], [ null, %21 ]
  store ptr %26, ptr %13, align 8, !tbaa !190
  call fastcc void @VEC_type_wrapper_t_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %5) #24
  %27 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  br label %14, !llvm.loop !221

29:                                               ; preds = %14
  %30 = call fastcc ptr @find_new_var_of_type(ptr noundef nonnull %15, ptr noundef %1) #24
  call fastcc void @finalize_global_creation(ptr noundef %30) #24
  %31 = load ptr, ptr %3, align 8
  %32 = call fastcc i32 @VEC_type_wrapper_t_base_length(ptr noundef %31) #24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %29, %50
  %35 = phi ptr [ %52, %50 ], [ %31, %29 ]
  %36 = phi ptr [ %51, %50 ], [ %30, %29 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = call fastcc ptr @VEC_type_wrapper_t_base_last(ptr noundef %35) #24
  %42 = load i8, ptr %41, align 8, !tbaa !188
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.type_wrapper, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !190
  %47 = call ptr @build4_stat(i32 noundef 45, ptr noundef %40, ptr noundef nonnull %36, ptr noundef %46, ptr noundef null, ptr noundef null) #26
  br label %50

48:                                               ; preds = %34
  %49 = call ptr @build1_stat(i32 noundef 47, ptr noundef %40, ptr noundef nonnull %36) #26
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %47, %44 ], [ %49, %48 ]
  %52 = load ptr, ptr %3, align 8
  call fastcc void @VEC_type_wrapper_t_base_pop(ptr noundef %52) #24
  %53 = call fastcc i32 @VEC_type_wrapper_t_base_length(ptr noundef %52) #24
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %34, !llvm.loop !222

55:                                               ; preds = %50, %29
  %56 = phi ptr [ %30, %29 ], [ %51, %50 ]
  %57 = call fastcc ptr @build_comp_ref(ptr noundef %56, ptr noundef %11, ptr noundef %1) #24
  call fastcc void @VEC_type_wrapper_t_heap_free(ptr noundef nonnull %3) #24
  %58 = load ptr, ptr %0, align 8, !tbaa !75
  %59 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %58) #24, !range !36
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = call fastcc ptr @gimple_assign_lhs(ptr noundef %58) #24
  %63 = load ptr, ptr %0, align 8, !tbaa !75
  %64 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %63) #24
  %65 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !127
  %67 = icmp eq ptr %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load ptr, ptr %0, align 8, !tbaa !75
  call fastcc void @gimple_assign_set_lhs(ptr noundef %69, ptr noundef %57) #24
  br label %86

70:                                               ; preds = %61
  %71 = icmp eq ptr %64, %66
  %72 = load ptr, ptr %0, align 8, !tbaa !75
  br i1 %71, label %73, label %74

73:                                               ; preds = %70
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %72, ptr noundef %57) #24
  br label %86

74:                                               ; preds = %70
  %75 = call fastcc ptr @find_pos_in_stmt(ptr noundef %72, ptr noundef %66, ptr noundef nonnull %4) #24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1021, ptr noundef nonnull @.str.4) #26
  br label %78

78:                                               ; preds = %74, %77
  store ptr %57, ptr %75, align 8, !tbaa !9
  br label %86

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.field_access_site, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !127
  %82 = call fastcc ptr @find_pos_in_stmt(ptr noundef %58, ptr noundef %81, ptr noundef nonnull %4) #24
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1028, ptr noundef nonnull @.str.4) #26
  br label %85

85:                                               ; preds = %79, %84
  store ptr %57, ptr %82, align 8, !tbaa !9
  br label %86

86:                                               ; preds = %68, %78, %73, %85
  %87 = load ptr, ptr %0, align 8, !tbaa !75
  call fastcc void @finalize_stmt(ptr noundef %87) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_global_creation(ptr noundef %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %0) #24, !range !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @finalize_var_creation(ptr noundef nonnull %0) #24
  br label %9

9:                                                ; preds = %8, %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_comp_ref(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %14, %12 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !223

16:                                               ; preds = %12, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 872, ptr noundef nonnull @.str.4) #26
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi ptr [ null, %16 ], [ %8, %7 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %20, ptr noundef %0, ptr noundef %18, ptr noundef null) #26
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_pos_in_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.ref_pos, ptr %2, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !224
  store ptr null, ptr %2, align 8, !tbaa !226
  %6 = getelementptr inbounds %struct.ref_pos, ptr %2, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !117
  %8 = call ptr @walk_gimple_op(ptr noundef %0, ptr noundef nonnull @find_pos_in_stmt_1, ptr noundef nonnull %4) #26
  %9 = load ptr, ptr %2, align 8, !tbaa !226
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #25
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @find_pos_in_stmt_1(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #17 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.ref_pos, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !224
  %8 = load ptr, ptr %0, align 8, !tbaa !9
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store ptr %0, ptr %5, align 8, !tbaa !226
  br label %21

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.ref_pos, ptr %5, i64 0, i32 2
  store ptr %8, ptr %20, align 8, !tbaa !227
  store i32 1, ptr %1, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi ptr [ %8, %18 ], [ null, %19 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_general_access(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #24, !range !51
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %8 [
    i8 1, label %6
    i8 2, label %7
  ]

6:                                                ; preds = %2
  tail call fastcc void @create_new_stmts_for_cond_expr(ptr noundef %3) #24
  br label %9

7:                                                ; preds = %2
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %3) #24
  tail call fastcc void @update_stmt(ptr noundef %3) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @create_new_stmts_for_general_acc(ptr noundef nonnull %0, ptr noundef %1) #24
  br label %9

9:                                                ; preds = %8, %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_stmts_for_cond_expr(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @structures, align 8
  %4 = tail call fastcc i32 @VEC_structure_base_length(ptr noundef %3) #24
  %5 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #24, !range !141
  %6 = add nsw i32 %5, -101
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1235, ptr noundef nonnull @.str.4) #26
  br label %9

9:                                                ; preds = %1, %8
  %10 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #24
  %11 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #24
  %12 = tail call fastcc ptr @get_type_of_var(ptr noundef %10) #24
  %13 = tail call fastcc ptr @strip_type(ptr noundef %12) #24
  %14 = tail call fastcc i32 @find_structure(ptr noundef %13) #24
  %15 = tail call fastcc ptr @get_type_of_var(ptr noundef %11) #24
  %16 = tail call fastcc ptr @strip_type(ptr noundef %15) #24
  %17 = tail call fastcc i32 @find_structure(ptr noundef %16) #24
  %18 = icmp ne i32 %14, %4
  %19 = icmp ne i32 %17, %4
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1246, ptr noundef nonnull @.str.4) #26
  br label %22

22:                                               ; preds = %9, %21
  %23 = tail call i32 @integer_zerop(ptr noundef %10) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 @integer_zerop(ptr noundef %11) #26
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1248, ptr noundef nonnull @.str.4) #26
  br label %29

29:                                               ; preds = %22, %25, %28
  %30 = tail call i32 @integer_zerop(ptr noundef %10) #26
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr @structures, align 8
  %33 = select i1 %31, i32 %14, i32 %17
  %34 = tail call fastcc ptr @VEC_structure_base_index(ptr noundef %32, i32 noundef %33) #24
  %35 = tail call i32 @integer_zerop(ptr noundef %10) #26
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr %10, ptr %11
  %38 = tail call i32 @integer_zerop(ptr noundef %10) #26
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.data_structure, ptr %34, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %2) #24, !range !24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %29, %45
  %46 = phi i32 [ %49, %45 ], [ 0, %29 ]
  %47 = load ptr, ptr %2, align 8, !tbaa !9
  %48 = tail call fastcc ptr @find_new_var_of_type(ptr noundef %37, ptr noundef %47) #24
  tail call fastcc void @create_new_stmts_for_cond_expr_1(ptr noundef %48, ptr noundef %0, i32 noundef %40) #24
  %49 = add nuw nsw i32 %46, 1
  %50 = load ptr, ptr %41, align 8, !tbaa !56
  %51 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %50, i32 noundef %49, ptr noundef nonnull %2) #24, !range !24
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %45, !llvm.loop !228

53:                                               ; preds = %45, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_stmts_for_general_acc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.data_structure, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !9
  %12 = tail call fastcc ptr @create_general_new_stmt(ptr noundef nonnull %0, ptr noundef %11) #24
  tail call fastcc void @insert_after_stmt(ptr noundef %4, ptr noundef %12) #24
  %13 = add i32 %10, 1
  %14 = load ptr, ptr %5, align 8, !tbaa !56
  %15 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %14, i32 noundef %13, ptr noundef nonnull %3) #24, !range !24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %9, !llvm.loop !229

17:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_new_stmts_for_cond_expr_1(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #24
  call void @extract_true_false_edges_from_block(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %8 = call fastcc i32 @gimple_cond_code(ptr noundef %1) #24, !range !141
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #24
  %12 = icmp eq i32 %2, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %11, %10 ], [ %0, %3 ]
  %15 = call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #24
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %10 ]
  %18 = phi ptr [ %15, %13 ], [ %0, %10 ]
  %19 = call ptr @gimple_build_cond(i32 noundef %8, ptr noundef %17, ptr noundef %18, ptr noundef null, ptr noundef null) #26
  call fastcc void @finalize_stmt(ptr noundef %19) #24
  %20 = call fastcc ptr @gimple_bb(ptr noundef %1) #24
  %21 = call ptr @create_empty_bb(ptr noundef %20) #26
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %21) #24
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %19, i32 noundef 0) #26
  %22 = load ptr, ptr %4, align 8, !tbaa !9
  call fastcc void @make_edge_and_fix_phis_of_dest(ptr noundef %21, ptr noundef %22) #24
  %23 = load ptr, ptr %5, align 8, !tbaa !9
  call fastcc void @make_edge_and_fix_phis_of_dest(ptr noundef %21, ptr noundef %23) #24
  %24 = call fastcc i32 @gimple_cond_code(ptr noundef %1) #24, !range !141
  %25 = icmp eq i32 %24, 102
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = select i1 %25, ptr %27, ptr %26
  call void @redirect_edge_succ(ptr noundef %28, ptr noundef %21) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_edge_and_fix_phis_of_dest(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !230
  %6 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !232
  %8 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %5, i32 noundef %7) #26
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %10) #26
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !36
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %15
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %17 = load i32, ptr %14, align 4, !tbaa !233
  %18 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %17) #24
  %19 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #24
  %20 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %16, ptr noundef nonnull %1) #24
  call void @add_phi_arg(ptr noundef %16, ptr noundef %19, ptr noundef %8, i32 noundef %20) #26
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !36
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %15, label %23, !llvm.loop !234

23:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #24
  ret ptr %3
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !233
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #24
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !235
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.4) #26
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_general_new_stmt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %5 = tail call ptr @gimple_copy(ptr noundef %4) #26
  %6 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %5) #24, !range !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @gimple_set_vuse(ptr noundef %5) #24
  tail call fastcc void @gimple_set_vdef(ptr noundef %5) #24
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.access_site, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %3) #24, !range !24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %9, %60
  %15 = phi i32 [ %61, %60 ], [ 0, %9 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !9
  %17 = tail call fastcc ptr @find_new_var_of_type(ptr noundef %16, ptr noundef %1) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1317, ptr noundef nonnull @.str.4) #26
  br label %20

20:                                               ; preds = %14, %19
  tail call fastcc void @finalize_var_creation(ptr noundef %17) #24
  %21 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #24, !range !36
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #24
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_ssa_name, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !20
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %30, %28 ], [ %24, %23 ]
  %33 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #24, !range !141
  %34 = icmp eq i32 %33, 141
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #24
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi ptr [ %38, %35 ], [ null, %31 ]
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #24, !range !141
  %42 = icmp eq i32 %41, 51
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tree_constructor, ptr %40, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %45) #24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1335, ptr noundef nonnull @.str.4) #26
  br label %49

49:                                               ; preds = %43, %48
  %50 = tail call ptr @build_constructor(ptr noundef %1, ptr noundef null) #26
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %5, ptr noundef %50) #24
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi ptr [ %50, %49 ], [ %40, %39 ]
  %53 = icmp eq ptr %32, %16
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %5, ptr noundef %17) #24
  br label %60

55:                                               ; preds = %51
  %56 = icmp eq ptr %52, %16
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %5, ptr noundef %17) #24
  br label %60

58:                                               ; preds = %55
  tail call fastcc void @insert_new_var_in_stmt(ptr noundef %5, ptr noundef %16, ptr noundef %17) #24
  br label %60

59:                                               ; preds = %20
  tail call fastcc void @insert_new_var_in_stmt(ptr noundef %5, ptr noundef %16, ptr noundef %17) #24
  br label %60

60:                                               ; preds = %54, %58, %57, %59
  %61 = add i32 %15, 1
  %62 = load ptr, ptr %10, align 8, !tbaa !164
  %63 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %62, i32 noundef %61, ptr noundef nonnull %3) #24, !range !24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %14, !llvm.loop !237

65:                                               ; preds = %60, %9
  tail call fastcc void @finalize_stmt(ptr noundef %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1407, ptr noundef nonnull @.str.4) #26
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1416, ptr noundef nonnull @.str.4) #26
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !238
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_new_var_in_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.ref_pos, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = call fastcc ptr @find_pos_in_stmt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1276, ptr noundef nonnull @.str.4) #26
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.ref_pos, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !227
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8, %29
  %13 = phi ptr [ %33, %29 ], [ %10, %8 ]
  %14 = phi ptr [ %30, %29 ], [ %2, %8 ]
  %15 = phi ptr [ %32, %29 ], [ %5, %8 ]
  %16 = load i64, ptr %13, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %35 [
    i16 47, label %18
    i16 121, label %18
  ]

18:                                               ; preds = %12, %12
  %19 = and i64 %16, 65535
  %20 = icmp eq i64 %19, 47
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = call ptr @build1_stat(i32 noundef 47, ptr noundef %25, ptr noundef %14) #26
  br label %29

27:                                               ; preds = %18
  %28 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %14) #26
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load ptr, ptr %9, align 8, !tbaa !227
  %32 = call fastcc ptr @find_pos_in_stmt(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %4) #24
  %33 = load ptr, ptr %9, align 8, !tbaa !227
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !240

35:                                               ; preds = %29, %12, %8
  %36 = phi ptr [ %5, %8 ], [ %15, %12 ], [ %32, %29 ]
  %37 = phi ptr [ %2, %8 ], [ %14, %12 ], [ %30, %29 ]
  store ptr %37, ptr %36, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef i32 @free_new_var(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.new_var_data, ptr %3, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #24
  tail call void @free(ptr noundef %3) #24
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_alloc_sites() unnamed_addr #1 {
  %1 = load ptr, ptr @alloc_sites, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @htab_traverse(ptr noundef nonnull %1, ptr noundef nonnull @free_falloc_sites, ptr noundef null) #26
  %4 = load ptr, ptr @alloc_sites, align 8, !tbaa !9
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ null, %0 ]
  tail call void @htab_delete(ptr noundef %6) #26
  store ptr null, ptr @alloc_sites, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef i32 @free_falloc_sites(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.func_alloc_sites, ptr %3, i64 0, i32 1
  tail call fastcc void @VEC_alloc_site_t_heap_free(ptr noundef nonnull %4) #24
  tail call void @free(ptr noundef %3) #24
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_alloc_site_t_heap_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { optsize }
attributes #25 = { nounwind }
attributes #26 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"cgraph_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !13, i64 144, !16, i64 184, !17, i64 224, !18, i64 232, !19, i64 256, !15, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 309, !6, i64 309}
!13 = !{!"cgraph_local_info", !10, i64 0, !14, i64 8, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32}
!14 = !{!"inline_summary", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!15 = !{!"long", !7, i64 0}
!16 = !{!"cgraph_global_info", !15, i64 0, !15, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !7, i64 36}
!17 = !{!"cgraph_rtl_info", !6, i64 0}
!18 = !{!"cgraph_clone_info", !10, i64 0, !10, i64 8, !10, i64 16}
!19 = !{!"cgraph_thunk_info", !15, i64 0, !15, i64 8, !10, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!15, !15, i64 0}
!24 = !{i32 0, i32 2}
!25 = distinct !{!25, !22}
!26 = !{!27, !15, i64 16}
!27 = !{!"data_structure", !10, i64 0, !6, i64 8, !15, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!28 = !{!29, !6, i64 8}
!29 = !{!"param_info", !10, i64 0, !6, i64 8, !7, i64 12, !6, i64 16, !6, i64 20, !10, i64 24}
!30 = !{!27, !10, i64 0}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = !{!34, !10, i64 56}
!34 = !{!"cgraph_edge", !15, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !35, i64 88, !6, i64 90, !6, i64 90, !6, i64 90}
!35 = !{!"short", !7, i64 0}
!36 = !{i8 0, i8 2}
!37 = !{!34, !10, i64 16}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = !{!41, !10, i64 0}
!41 = !{!"varpool_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36, !6, i64 36}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = !{!12, !10, i64 96}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = !{i32 0, i32 256}
!52 = !{!27, !6, i64 8}
!53 = !{!27, !10, i64 24}
!54 = !{!27, !10, i64 40}
!55 = !{!27, !10, i64 32}
!56 = !{!27, !10, i64 48}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = !{!60, !6, i64 0}
!60 = !{!"VEC_tree_base", !6, i64 0, !6, i64 4, !7, i64 8}
!61 = distinct !{!61, !22}
!62 = !{!60, !6, i64 4}
!63 = distinct !{!63, !22}
!64 = !{!65, !6, i64 0}
!65 = !{!"VEC_structure_base", !6, i64 0, !6, i64 4, !7, i64 8}
!66 = !{!67, !6, i64 0}
!67 = !{!"field_entry", !6, i64 0, !15, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!68 = !{!67, !10, i64 16}
!69 = !{!67, !10, i64 32}
!70 = !{!67, !15, i64 8}
!71 = !{!67, !10, i64 24}
!72 = distinct !{!72, !22}
!73 = !{!74, !10, i64 0}
!74 = !{!"access_site", !10, i64 0, !10, i64 8}
!75 = !{!76, !10, i64 0}
!76 = !{!"field_access_site", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!77 = !{i64 0, i64 8, !9, i64 8, i64 4, !5, i64 16, i64 8, !23, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9}
!78 = !{!65, !6, i64 4}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = !{!87, !10, i64 8}
!87 = !{!"func_alloc_sites", !10, i64 0, !10, i64 8}
!88 = !{!89, !10, i64 8}
!89 = !{!"alloc_site", !10, i64 0, !10, i64 8}
!90 = distinct !{!90, !22}
!91 = !{!92, !6, i64 0}
!92 = !{!"VEC_alloc_site_t_base", !6, i64 0, !6, i64 4, !7, i64 8}
!93 = !{!94, !10, i64 0}
!94 = !{!"field_cluster", !10, i64 0, !10, i64 8}
!95 = !{!96, !10, i64 0}
!96 = !{!"simple_bitmap_def", !10, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!97 = !{!94, !10, i64 8}
!98 = !{!87, !10, i64 0}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = !{!89, !10, i64 0}
!102 = !{!103, !10, i64 8}
!103 = !{!"ssa_use_operand_d", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!104 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
!105 = !{!92, !6, i64 4}
!106 = !{!107, !10, i64 8}
!107 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!108 = !{!109, !10, i64 0}
!109 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!110 = !{!111, !10, i64 56}
!111 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !15, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!112 = !{!109, !10, i64 8}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = !{!118, !10, i64 24}
!118 = !{!"walk_stmt_info", !119, i64 0, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !10, i64 48}
!119 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!120 = distinct !{!120, !22}
!121 = !{!119, !10, i64 0}
!122 = !{!119, !10, i64 8}
!123 = !{!119, !10, i64 16}
!124 = !{!125, !10, i64 0}
!125 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!126 = distinct !{!126, !22}
!127 = !{!76, !10, i64 8}
!128 = !{!76, !10, i64 24}
!129 = !{!76, !10, i64 16}
!130 = !{!111, !15, i64 72}
!131 = distinct !{!131, !22}
!132 = !{!125, !10, i64 16}
!133 = !{!111, !6, i64 96}
!134 = !{!135, !10, i64 0}
!135 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!136 = !{!137, !10, i64 0}
!137 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = !{!76, !10, i64 56}
!141 = !{i32 0, i32 65536}
!142 = !{!76, !10, i64 64}
!143 = !{!76, !10, i64 40}
!144 = !{!145, !6, i64 4}
!145 = !{!"ssa_operand_iterator_d", !7, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !10, i64 32}
!146 = !{!145, !7, i64 0}
!147 = !{!145, !10, i64 16}
!148 = !{!149, !10, i64 0}
!149 = !{!"use_optype_d", !10, i64 0, !103, i64 8}
!150 = !{!145, !10, i64 8}
!151 = !{!152, !10, i64 8}
!152 = !{!"def_optype_d", !10, i64 0, !10, i64 8}
!153 = !{!152, !10, i64 0}
!154 = !{!103, !10, i64 24}
!155 = !{!156, !10, i64 8}
!156 = !{!"exclude_data", !10, i64 0, !10, i64 8}
!157 = !{!156, !10, i64 0}
!158 = distinct !{!158, !22}
!159 = distinct !{!159, !22}
!160 = !{!161, !7, i64 0}
!161 = !{!"find_stmt_data", !7, i64 0, !10, i64 8}
!162 = !{!161, !10, i64 8}
!163 = distinct !{!163, !22}
!164 = !{!74, !10, i64 8}
!165 = distinct !{!165, !22}
!166 = distinct !{!166, !22}
!167 = !{i64 0, i64 -9223372036854775808}
!168 = distinct !{!168, !22}
!169 = distinct !{!169, !22}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22}
!174 = distinct !{!174, !22}
!175 = distinct !{!175, !22}
!176 = distinct !{!176, !22}
!177 = distinct !{!177, !22}
!178 = distinct !{!178, !22}
!179 = distinct !{!179, !22}
!180 = distinct !{!180, !22}
!181 = distinct !{!181, !22}
!182 = distinct !{!182, !22}
!183 = !{!184, !10, i64 0}
!184 = !{!"new_var_data", !10, i64 0, !10, i64 8}
!185 = !{!184, !10, i64 8}
!186 = distinct !{!186, !22}
!187 = distinct !{!187, !22}
!188 = !{!189, !7, i64 0}
!189 = !{!"type_wrapper", !7, i64 0, !10, i64 8}
!190 = !{!189, !10, i64 8}
!191 = distinct !{!191, !22}
!192 = distinct !{!192, !22}
!193 = !{!194, !6, i64 0}
!194 = !{!"VEC_type_wrapper_t_base", !6, i64 0, !6, i64 4, !7, i64 8}
!195 = !{i64 0, i64 1, !20, i64 8, i64 8, !9}
!196 = !{!194, !6, i64 4}
!197 = distinct !{!197, !22}
!198 = distinct !{!198, !22}
!199 = distinct !{!199, !22}
!200 = !{!107, !10, i64 24}
!201 = !{!202, !10, i64 0}
!202 = !{!"gimple_df", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !203, i64 32, !203, i64 48, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !204, i64 104}
!203 = !{!"pt_solution", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !10, i64 8}
!204 = !{!"ssa_operands", !10, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !10, i64 24, !10, i64 32}
!205 = distinct !{!205, !22}
!206 = !{!207, !10, i64 24}
!207 = !{!"htab", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !6, i64 56, !6, i64 60, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104}
!208 = distinct !{!208, !22}
!209 = distinct !{!209, !22}
!210 = distinct !{!210, !22}
!211 = !{!111, !6, i64 84}
!212 = !{!137, !10, i64 8}
!213 = distinct !{!213, !22}
!214 = distinct !{!214, !22}
!215 = !{!216, !10, i64 8}
!216 = !{!"create_acc_data", !10, i64 0, !10, i64 8, !6, i64 16}
!217 = !{!216, !10, i64 0}
!218 = !{!216, !6, i64 16}
!219 = distinct !{!219, !22}
!220 = !{!76, !10, i64 32}
!221 = distinct !{!221, !22}
!222 = distinct !{!222, !22}
!223 = distinct !{!223, !22}
!224 = !{!225, !10, i64 8}
!225 = !{!"ref_pos", !10, i64 0, !10, i64 8, !10, i64 16}
!226 = !{!225, !10, i64 0}
!227 = !{!225, !10, i64 16}
!228 = distinct !{!228, !22}
!229 = distinct !{!229, !22}
!230 = !{!231, !10, i64 8}
!231 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !15, i64 56}
!232 = !{!231, !6, i64 48}
!233 = !{!231, !6, i64 44}
!234 = distinct !{!234, !22}
!235 = !{!236, !6, i64 40}
!236 = !{!"phi_arg_d", !103, i64 0, !10, i64 32, !6, i64 40}
!237 = distinct !{!237, !22}
!238 = !{!239, !6, i64 0}
!239 = !{!"VEC_constructor_elt_base", !6, i64 0, !6, i64 4, !7, i64 8}
!240 = distinct !{!240, !22}
