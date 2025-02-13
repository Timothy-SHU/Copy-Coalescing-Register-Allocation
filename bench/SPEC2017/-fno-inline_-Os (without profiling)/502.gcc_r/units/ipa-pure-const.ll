; ModuleID = 'ipa-pure-const.c'
source_filename = "ipa-pure-const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.funct_state_d = type { i32, i32, i8, i8, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node_set_iterator = type { ptr, i32 }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.VEC_funct_state_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [11 x i8] c"pure-const\00", align 1
@pass_ipa_pure_const = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_pure_const, ptr @propagate, ptr null, ptr null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @generate_summary, ptr @pure_const_write_summary, ptr @pure_const_read_summary, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"local-pure-const\00", align 1
@pass_local_pure_const = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_pure_const, ptr @local_pure_const, ptr null, ptr null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@flag_ipa_pure_const = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Function found to be %sconst: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"looping \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Function found to be %spure: %s\0A\00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"reduced for nothrow\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Function found to be nothrow: %s\0A\00", align 1
@funct_state_vec = internal unnamed_addr global ptr null, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@register_hooks.init_p = internal unnamed_addr global i1 false, align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ipa-pure-const.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"\0A\0A local analysis of %s\0A \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"    has irreducible loops\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"    can not prove finiteness of loop %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Function is locally looping.\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Function is locally throwing.\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Function is locally const.\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Function is locally pure.\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"  scanning: \00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"    can throw; looping\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"    can throw externally\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"    nonlocal label is not const/pure\00", align 1
@memory_identifier_string = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"    memory asm clobber is not const/pure\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"    volatile is not const/pure\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.24 = private unnamed_addr constant [39 x i8] c"    Volatile operand is not const/pure\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"    Used static/global variable is not const/pure\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"    static/global memory write is not const/pure\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"    global memory read is not const\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"    static memory read is not const\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"    Volatile indirect ref is not const/pure\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"    Indirect ref to local memory is OK\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"    Indirect ref write is not const/pure\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"    Indirect ref read is not const\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"    operand can throw; looping\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"    operand can throw externally\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"    setjmp is not const/pure\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"    longjmp and nonlocal goto is not const/pure\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"    can throw; looping\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"    can throw externally to lp %i\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"     callee:%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"    pure function call in not const\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"    uknown function call is not const/pure\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.43 = private unnamed_addr constant [46 x i8] c"Function called in recursive cycle; ignoring\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"Function has wrong visibility; ignoring\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.45 = private unnamed_addr constant [38 x i8] c"Function found to be non-looping: %s\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pure_const() #0 {
  %1 = load i32, ptr @flag_ipa_pure_const, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @propagate() #1 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #17
  %4 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !9
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %4) #17
  %5 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !9
  tail call void @cgraph_remove_node_duplication_hook(ptr noundef %5) #17
  %6 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !9
  tail call void @cgraph_remove_node_removal_hook(ptr noundef %6) #17
  %7 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #17
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %8) #17
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @ipa_utils_print_order(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %7) #17
  br label %12

12:                                               ; preds = %10, %0
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = zext nneg i32 %7 to i64
  br label %19

16:                                               ; preds = %161, %12
  %17 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %174, label %164

19:                                               ; preds = %14, %161
  %20 = phi i64 [ 0, %14 ], [ %162, %161 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %161, label %24

24:                                               ; preds = %19, %95
  %25 = phi ptr [ %101, %95 ], [ %22, %19 ]
  %26 = phi i32 [ %97, %95 ], [ 0, %19 ]
  %27 = phi i8 [ %96, %95 ], [ 0, %19 ]
  %28 = phi i32 [ %50, %95 ], [ 0, %19 ]
  %29 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %25) #18
  %30 = load i32, ptr %29, align 4, !tbaa !11
  %31 = tail call i32 @llvm.umax.i32(i32 %26, i32 %30)
  %32 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 %27, i8 1
  %36 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %25) #17
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 2
  %40 = load i8, ptr %39, align 4, !tbaa !14
  %41 = or i8 %40, %35
  %42 = getelementptr inbounds %struct.funct_state_d, ptr %29, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !15
  %44 = tail call i32 @llvm.umax.i32(i32 %31, i32 %43)
  br label %45

45:                                               ; preds = %38, %24
  %46 = phi i8 [ %35, %24 ], [ %41, %38 ]
  %47 = phi i32 [ %31, %24 ], [ %44, %38 ]
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %103, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %28, 1
  %51 = icmp eq i32 %28, 0
  %52 = select i1 %51, i8 %46, i8 1
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %95, label %56

56:                                               ; preds = %49, %89
  %57 = phi ptr [ %93, %89 ], [ %54, %49 ]
  %58 = phi i32 [ %91, %89 ], [ %47, %49 ]
  %59 = phi i8 [ %90, %89 ], [ %52, %49 ]
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !16
  %62 = tail call i32 @cgraph_function_body_availability(ptr noundef %61) #17
  %63 = icmp ugt i32 %62, 2
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = tail call fastcc ptr @get_function_state(ptr noundef %61) #18
  %66 = load i32, ptr %65, align 4, !tbaa !11
  %67 = tail call i32 @llvm.umax.i32(i32 %58, i32 %66)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %95, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.funct_state_d, ptr %65, i64 0, i32 3
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8 %59, i8 1
  br label %89

74:                                               ; preds = %56
  %75 = load ptr, ptr %61, align 8, !tbaa !20
  %76 = tail call i32 @flags_from_decl_or_type(ptr noundef %75) #17
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i8 %59, i8 1
  %80 = and i32 %76, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = and i32 %76, 2
  %84 = icmp ne i32 %83, 0
  %85 = icmp eq i32 %58, 0
  %86 = select i1 %84, i1 %85, i1 false
  %87 = select i1 %86, i8 %79, i8 1
  %88 = select i1 %86, i32 1, i32 2
  br label %89

89:                                               ; preds = %69, %82, %74
  %90 = phi i8 [ %73, %69 ], [ %87, %82 ], [ %79, %74 ]
  %91 = phi i32 [ %67, %69 ], [ %88, %82 ], [ %58, %74 ]
  %92 = getelementptr inbounds %struct.cgraph_edge, ptr %57, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %56, !llvm.loop !28

95:                                               ; preds = %89, %64, %49
  %96 = phi i8 [ %52, %49 ], [ %59, %64 ], [ %90, %89 ]
  %97 = phi i32 [ %47, %49 ], [ 2, %64 ], [ %91, %89 ]
  %98 = getelementptr inbounds %struct.cgraph_node, ptr %25, i64 0, i32 16
  %99 = load ptr, ptr %98, align 8, !tbaa !30
  %100 = getelementptr inbounds %struct.ipa_dfs_info, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !31
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %24

103:                                              ; preds = %95, %45
  %104 = phi i8 [ %96, %95 ], [ %46, %45 ]
  %105 = phi i32 [ %97, %95 ], [ 2, %45 ]
  br i1 %23, label %161, label %106

106:                                              ; preds = %103
  %107 = icmp eq i8 %104, 0
  br label %108

108:                                              ; preds = %106, %155
  %109 = phi ptr [ %22, %106 ], [ %159, %155 ]
  %110 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %109) #18
  %111 = getelementptr inbounds %struct.funct_state_d, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !15
  %113 = icmp eq i32 %112, 2
  %114 = tail call i32 @llvm.umin.i32(i32 %105, i32 %112)
  %115 = select i1 %113, i32 %105, i32 %114
  br i1 %107, label %116, label %118

116:                                              ; preds = %108
  %117 = tail call fastcc zeroext i8 @self_recursive_p(ptr noundef nonnull %109) #18, !range !33
  br label %118

118:                                              ; preds = %116, %108
  %119 = phi i8 [ %104, %108 ], [ %117, %116 ]
  %120 = getelementptr inbounds %struct.funct_state_d, ptr %110, i64 0, i32 2
  %121 = load i8, ptr %120, align 4, !tbaa !14
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i8 0, i8 %119
  store i32 %115, ptr %110, align 4, !tbaa !11
  %124 = getelementptr inbounds %struct.funct_state_d, ptr %110, i64 0, i32 3
  store i8 %123, ptr %124, align 1, !tbaa !13
  switch i32 %115, label %155 [
    i32 0, label %125
    i32 1, label %139
  ]

125:                                              ; preds = %118
  %126 = load ptr, ptr %109, align 8, !tbaa !20
  %127 = load i64, ptr %126, align 8
  %128 = and i64 %127, 1048576
  %129 = icmp eq i64 %128, 0
  %130 = load ptr, ptr @dump_file, align 8
  %131 = icmp ne ptr %130, null
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = icmp eq i8 %123, 0
  %135 = select i1 %134, ptr @.str.5, ptr @.str.4
  %136 = tail call ptr @cgraph_node_name(ptr noundef nonnull %109) #17
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %130, ptr noundef nonnull @.str.3, ptr noundef nonnull %135, ptr noundef %136) #18
  br label %138

138:                                              ; preds = %133, %125
  tail call void @cgraph_set_readonly_flag(ptr noundef nonnull %109, i8 noundef zeroext 1) #17
  br label %154

139:                                              ; preds = %118
  %140 = load ptr, ptr %109, align 8, !tbaa !20
  %141 = getelementptr inbounds %struct.tree_function_decl, ptr %140, i64 0, i32 5
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 134217728
  %144 = icmp eq i32 %143, 0
  %145 = load ptr, ptr @dump_file, align 8
  %146 = icmp ne ptr %145, null
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %153

148:                                              ; preds = %139
  %149 = icmp eq i8 %123, 0
  %150 = select i1 %149, ptr @.str.5, ptr @.str.4
  %151 = tail call ptr @cgraph_node_name(ptr noundef nonnull %109) #17
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %145, ptr noundef nonnull @.str.6, ptr noundef nonnull %150, ptr noundef %151) #18
  br label %153

153:                                              ; preds = %148, %139
  tail call void @cgraph_set_pure_flag(ptr noundef nonnull %109, i8 noundef zeroext 1) #17
  br label %154

154:                                              ; preds = %138, %153
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef nonnull %109, i8 noundef zeroext %123) #17
  br label %155

155:                                              ; preds = %154, %118
  %156 = getelementptr inbounds %struct.cgraph_node, ptr %109, i64 0, i32 16
  %157 = load ptr, ptr %156, align 8, !tbaa !30
  %158 = getelementptr inbounds %struct.ipa_dfs_info, ptr %157, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !31
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %108, !llvm.loop !34

161:                                              ; preds = %155, %19, %103
  %162 = add nuw nsw i64 %20, 1
  %163 = icmp eq i64 %162, %15
  br i1 %163, label %16, label %19, !llvm.loop !35

164:                                              ; preds = %16, %170
  %165 = phi ptr [ %172, %170 ], [ %17, %16 ]
  %166 = getelementptr inbounds %struct.cgraph_node, ptr %165, i64 0, i32 16
  %167 = load ptr, ptr %166, align 8, !tbaa !30
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  tail call void @free(ptr noundef nonnull %167) #18
  store ptr null, ptr %166, align 8, !tbaa !30
  br label %170

170:                                              ; preds = %164, %169
  %171 = getelementptr inbounds %struct.cgraph_node, ptr %165, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %164, !llvm.loop !36

174:                                              ; preds = %170, %16
  %175 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ignore_edge) #17
  %176 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  tail call void @dump_cgraph(ptr noundef nonnull %176) #17
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @ipa_utils_print_order(ptr noundef %179, ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %175) #17
  br label %180

180:                                              ; preds = %178, %174
  %181 = icmp sgt i32 %175, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %180
  %183 = zext nneg i32 %175 to i64
  br label %187

184:                                              ; preds = %294, %180
  %185 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %186 = icmp eq ptr %185, null
  br i1 %186, label %312, label %297

187:                                              ; preds = %182, %294
  %188 = phi i64 [ 0, %182 ], [ %295, %294 ]
  %189 = getelementptr inbounds ptr, ptr %3, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !9
  %191 = icmp eq ptr %190, null
  br i1 %191, label %294, label %192

192:                                              ; preds = %187, %248
  %193 = phi ptr [ %253, %248 ], [ %190, %187 ]
  %194 = phi i8 [ %249, %248 ], [ 0, %187 ]
  %195 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %193) #18
  %196 = getelementptr inbounds %struct.funct_state_d, ptr %195, i64 0, i32 4
  %197 = load i8, ptr %196, align 2, !tbaa !37
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %255

199:                                              ; preds = %192
  %200 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %193) #17
  %201 = icmp ne i32 %200, 2
  %202 = icmp eq i8 %194, 0
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %204, label %255

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.cgraph_node, ptr %193, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !9
  %207 = icmp eq ptr %206, null
  br i1 %207, label %248, label %208

208:                                              ; preds = %204, %243
  %209 = phi ptr [ %246, %243 ], [ %206, %204 ]
  %210 = phi i8 [ %244, %243 ], [ 0, %204 ]
  %211 = getelementptr inbounds %struct.cgraph_edge, ptr %209, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !16
  %213 = tail call i32 @cgraph_function_body_availability(ptr noundef %212) #17
  %214 = icmp ugt i32 %213, 2
  br i1 %214, label %215, label %232

215:                                              ; preds = %208
  %216 = icmp eq i8 %210, 0
  br i1 %216, label %217, label %248

217:                                              ; preds = %215
  %218 = tail call fastcc ptr @get_function_state(ptr noundef %212) #18
  %219 = getelementptr inbounds %struct.funct_state_d, ptr %218, i64 0, i32 4
  %220 = load i8, ptr %219, align 2, !tbaa !37
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %243, label %222

222:                                              ; preds = %217
  %223 = load ptr, ptr %193, align 8, !tbaa !20
  %224 = load i64, ptr %223, align 8
  %225 = and i64 %224, 33554432
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.cgraph_edge, ptr %209, i64 0, i32 14
  %229 = load i8, ptr %228, align 2
  %230 = lshr i8 %229, 2
  %231 = and i8 %230, 1
  br label %243

232:                                              ; preds = %208
  %233 = getelementptr inbounds %struct.cgraph_edge, ptr %209, i64 0, i32 14
  %234 = load i8, ptr %233, align 2
  %235 = and i8 %234, 4
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %232
  %238 = load ptr, ptr %212, align 8, !tbaa !20
  %239 = load i64, ptr %238, align 8
  %240 = and i64 %239, 33554432
  %241 = icmp eq i64 %240, 0
  %242 = select i1 %241, i8 1, i8 %210
  br label %243

243:                                              ; preds = %222, %217, %227, %237, %232
  %244 = phi i8 [ %242, %237 ], [ %210, %232 ], [ %231, %227 ], [ 0, %217 ], [ 0, %222 ]
  %245 = getelementptr inbounds %struct.cgraph_edge, ptr %209, i64 0, i32 6
  %246 = load ptr, ptr %245, align 8, !tbaa !9
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %208, !llvm.loop !38

248:                                              ; preds = %243, %215, %204
  %249 = phi i8 [ 0, %204 ], [ 1, %215 ], [ %244, %243 ]
  %250 = getelementptr inbounds %struct.cgraph_node, ptr %193, i64 0, i32 16
  %251 = load ptr, ptr %250, align 8, !tbaa !30
  %252 = getelementptr inbounds %struct.ipa_dfs_info, ptr %251, i64 0, i32 4
  %253 = load ptr, ptr %252, align 8, !tbaa !31
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %192

255:                                              ; preds = %248, %192, %199
  %256 = phi i8 [ %249, %248 ], [ 1, %192 ], [ 1, %199 ]
  br i1 %191, label %294, label %257

257:                                              ; preds = %255
  %258 = icmp eq i8 %256, 0
  br label %259

259:                                              ; preds = %257, %288
  %260 = phi ptr [ %190, %257 ], [ %292, %288 ]
  %261 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %260) #18
  %262 = load ptr, ptr %260, align 8, !tbaa !20
  %263 = load i64, ptr %262, align 8
  %264 = and i64 %263, 33554432
  %265 = icmp eq i64 %264, 0
  br i1 %258, label %266, label %285

266:                                              ; preds = %259
  br i1 %265, label %267, label %288

267:                                              ; preds = %266
  tail call void @cgraph_set_nothrow_flag(ptr noundef nonnull %260, i8 noundef zeroext 1) #17
  %268 = getelementptr inbounds %struct.cgraph_node, ptr %260, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !9
  %270 = icmp eq ptr %269, null
  br i1 %270, label %279, label %271

271:                                              ; preds = %267, %271
  %272 = phi ptr [ %277, %271 ], [ %269, %267 ]
  %273 = getelementptr inbounds %struct.cgraph_edge, ptr %272, i64 0, i32 14
  %274 = load i8, ptr %273, align 2
  %275 = and i8 %274, -5
  store i8 %275, ptr %273, align 2
  %276 = getelementptr inbounds %struct.cgraph_edge, ptr %272, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !9
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %271, !llvm.loop !39

279:                                              ; preds = %271, %267
  %280 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %288, label %282

282:                                              ; preds = %279
  %283 = tail call ptr @cgraph_node_name(ptr noundef nonnull %260) #17
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %280, ptr noundef nonnull @.str.8, ptr noundef %283) #18
  br label %288

285:                                              ; preds = %259
  br i1 %265, label %286, label %288

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.funct_state_d, ptr %261, i64 0, i32 4
  store i8 1, ptr %287, align 2, !tbaa !37
  br label %288

288:                                              ; preds = %266, %279, %282, %285, %286
  %289 = getelementptr inbounds %struct.cgraph_node, ptr %260, i64 0, i32 16
  %290 = load ptr, ptr %289, align 8, !tbaa !30
  %291 = getelementptr inbounds %struct.ipa_dfs_info, ptr %290, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !31
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %259, !llvm.loop !40

294:                                              ; preds = %288, %187, %255
  %295 = add nuw nsw i64 %188, 1
  %296 = icmp eq i64 %295, %183
  br i1 %296, label %184, label %187, !llvm.loop !41

297:                                              ; preds = %184, %308
  %298 = phi ptr [ %310, %308 ], [ %185, %184 ]
  %299 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 16
  %300 = load ptr, ptr %299, align 8, !tbaa !30
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %297
  tail call void @free(ptr noundef nonnull %300) #18
  store ptr null, ptr %299, align 8, !tbaa !30
  br label %303

303:                                              ; preds = %302, %297
  %304 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %298) #17
  %305 = icmp ugt i32 %304, 1
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %298) #18
  tail call void @free(ptr noundef %307) #18
  br label %308

308:                                              ; preds = %303, %306
  %309 = getelementptr inbounds %struct.cgraph_node, ptr %298, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !9
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %297, !llvm.loop !42

312:                                              ; preds = %308, %184
  tail call void @free(ptr noundef %3) #18
  tail call fastcc void @VEC_funct_state_heap_free() #18
  tail call fastcc void @finish_state() #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @generate_summary() #1 {
  tail call fastcc void @register_hooks() #18
  %1 = tail call ptr @pointer_set_create() #17
  store ptr %1, ptr @visited_nodes, align 8, !tbaa !9
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %0, %10
  %5 = phi ptr [ %12, %10 ], [ %2, %0 ]
  %6 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %5) #17
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @analyze_function(ptr noundef nonnull %5, i8 noundef zeroext 1) #18
  tail call fastcc void @set_function_state(ptr noundef nonnull %5, ptr noundef %9) #18
  br label %10

10:                                               ; preds = %4, %8
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !43

14:                                               ; preds = %10
  %15 = load ptr, ptr @visited_nodes, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %14, %0
  %17 = phi ptr [ %15, %14 ], [ %1, %0 ]
  tail call void @pointer_set_destroy(ptr noundef %17) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pure_const_write_summary(ptr noundef %0) #1 {
  %2 = alloca %struct.cgraph_node_set_iterator, align 8
  %3 = tail call ptr @lto_create_simple_output_block(i32 noundef 5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %4 = tail call fastcc ptr @csi_start(ptr noundef %0) #18
  store ptr %4, ptr %2, align 8, !tbaa.struct !44
  %5 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %5, align 8, !tbaa.struct !45
  %6 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #18, !range !33
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1, %22
  %9 = phi i32 [ %25, %22 ], [ 0, %1 ]
  %10 = phi ptr [ %24, %22 ], [ %4, %1 ]
  %11 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %12 = tail call fastcc ptr @csi_node(ptr %10, i32 %9) #18
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 27
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %12) #18
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  %21 = add i32 %11, %20
  br label %22

22:                                               ; preds = %17, %8
  %23 = phi i32 [ %11, %8 ], [ %21, %17 ]
  call fastcc void @csi_next(ptr noundef nonnull %2) #18
  %24 = load ptr, ptr %2, align 8
  %25 = load i32, ptr %5, align 8
  %26 = tail call fastcc zeroext i8 @csi_end_p(ptr %24, i32 %25) #18, !range !33
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %8, label %28, !llvm.loop !46

28:                                               ; preds = %22
  %29 = zext i32 %23 to i64
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i64 [ 0, %1 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.lto_simple_output_block, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  tail call void @lto_output_uleb128_stream(ptr noundef %33, i64 noundef %31) #17
  store ptr %4, ptr %2, align 8, !tbaa.struct !44
  store i32 0, ptr %5, align 8, !tbaa.struct !45
  %34 = tail call fastcc zeroext i8 @csi_end_p(ptr %4, i32 0) #18, !range !33
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.lto_simple_output_block, ptr %3, i64 0, i32 1
  br label %38

38:                                               ; preds = %36, %72
  %39 = phi i32 [ 0, %36 ], [ %74, %72 ]
  %40 = phi ptr [ %4, %36 ], [ %73, %72 ]
  %41 = tail call fastcc ptr @csi_node(ptr %40, i32 %39) #18
  %42 = getelementptr inbounds %struct.cgraph_node, ptr %41, i64 0, i32 27
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 32
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %38
  %47 = tail call fastcc ptr @get_function_state(ptr noundef nonnull %41) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %37, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.lto_out_decl_state, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %52, ptr noundef nonnull %41) #17
  %54 = load ptr, ptr %32, align 8, !tbaa !47
  %55 = sext i32 %53 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %54, i64 noundef %55) #17
  %56 = tail call ptr @bitpack_create() #17
  %57 = load i32, ptr %47, align 4, !tbaa !11
  %58 = zext i32 %57 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %58, i32 noundef 2) #17
  %59 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !15
  %61 = zext i32 %60 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %61, i32 noundef 2) #17
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 2
  %63 = load i8, ptr %62, align 4, !tbaa !14
  %64 = zext i8 %63 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %64, i32 noundef 1) #17
  %65 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !13
  %67 = zext i8 %66 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %67, i32 noundef 1) #17
  %68 = getelementptr inbounds %struct.funct_state_d, ptr %47, i64 0, i32 4
  %69 = load i8, ptr %68, align 2, !tbaa !37
  %70 = zext i8 %69 to i64
  tail call void @bp_pack_value(ptr noundef %56, i64 noundef %70, i32 noundef 1) #17
  %71 = load ptr, ptr %32, align 8, !tbaa !47
  tail call void @lto_output_bitpack(ptr noundef %71, ptr noundef %56) #17
  tail call void @bitpack_delete(ptr noundef %56) #17
  br label %72

72:                                               ; preds = %38, %46, %49
  call fastcc void @csi_next(ptr noundef nonnull %2) #18
  %73 = load ptr, ptr %2, align 8
  %74 = load i32, ptr %5, align 8
  %75 = tail call fastcc zeroext i8 @csi_end_p(ptr %73, i32 %74) #18, !range !33
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %38, label %77, !llvm.loop !52

77:                                               ; preds = %72, %30
  tail call void @lto_destroy_simple_output_block(ptr noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pure_const_read_summary() #1 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #17
  tail call fastcc void @register_hooks() #18
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %0, %44
  %7 = phi ptr [ %48, %44 ], [ %4, %0 ]
  %8 = phi i32 [ %45, %44 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %9 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %7, i32 noundef 5, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %6
  %12 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lto_file_decl_data, ptr %7, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i32 [ 0, %15 ], [ %39, %17 ]
  %19 = call ptr @xcalloc(i64 noundef 1, i64 noundef 12) #17
  %20 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #17
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr %16, align 8, !tbaa !53
  %23 = call ptr @lto_cgraph_encoder_deref(ptr noundef %22, i32 noundef %21) #17
  call fastcc void @set_function_state(ptr noundef %23, ptr noundef %19) #18
  %24 = call ptr @lto_input_bitpack(ptr noundef nonnull %9) #17
  %25 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 2) #17
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %19, align 4, !tbaa !11
  %27 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 2) #17
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !15
  %30 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 2
  store i8 %31, ptr %32, align 4, !tbaa !14
  %33 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  store i8 %34, ptr %35, align 1, !tbaa !13
  %36 = call i64 @bp_unpack_value(ptr noundef %24, i32 noundef 1) #17
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  store i8 %37, ptr %38, align 2, !tbaa !37
  call void @bitpack_delete(ptr noundef %24) #17
  %39 = add nuw i32 %18, 1
  %40 = icmp eq i32 %39, %13
  br i1 %40, label %41, label %17, !llvm.loop !55

41:                                               ; preds = %17, %11
  %42 = load ptr, ptr %1, align 8, !tbaa !9
  %43 = load i64, ptr %2, align 8, !tbaa !56
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 5, ptr noundef nonnull %9, ptr noundef %42, i64 noundef %43) #17
  br label %44

44:                                               ; preds = %41, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  %45 = add i32 %8, 1
  %46 = zext i32 %8 to i64
  %47 = getelementptr inbounds ptr, ptr %3, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !57

50:                                               ; preds = %44, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @local_pure_const() #1 {
  %1 = tail call zeroext i8 @function_called_by_processed_nodes_p() #17
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %125, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 45, i64 1, ptr nonnull %4)
  br label %125

8:                                                ; preds = %0
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %10 = tail call ptr @cgraph_node(ptr noundef %9) #17
  %11 = tail call i32 @cgraph_function_body_availability(ptr noundef %10) #17
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %125, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 40, i64 1, ptr nonnull %14)
  br label %125

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @analyze_function(ptr noundef %10, i8 noundef zeroext 0) #18
  %20 = load i32, ptr %19, align 4, !tbaa !11
  switch i32 %20, label %91 [
    i32 0, label %21
    i32 1, label %56
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 1048576
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  tail call void @cgraph_set_readonly_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %27 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !13
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %28) #17
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %91, label %31

31:                                               ; preds = %26
  %32 = load i8, ptr %27, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.5, ptr @.str.4
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !58
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %37 = tail call ptr %35(ptr noundef %36, i32 noundef 2) #17
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.3, ptr noundef nonnull %34, ptr noundef %37) #18
  br label %91

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.tree_function_decl, ptr %22, i64 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #17
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !58
  %53 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %54 = tail call ptr %52(ptr noundef %53, i32 noundef 2) #17
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.45, ptr noundef %54) #18
  br label %91

56:                                               ; preds = %18
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 1048576
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  tail call void @cgraph_set_pure_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !13
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %63) #17
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %62, align 1, !tbaa !13
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr @.str.5, ptr @.str.4
  %70 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !58
  %71 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %72 = tail call ptr %70(ptr noundef %71, i32 noundef 2) #17
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.6, ptr noundef nonnull %69, ptr noundef %72) #18
  br label %91

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 268435456
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #17
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !58
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef 2) #17
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %84, ptr noundef nonnull @.str.45, ptr noundef %89) #18
  br label %91

91:                                               ; preds = %18, %66, %61, %83, %86, %79, %74, %31, %26, %48, %51, %44, %39
  %92 = phi i1 [ true, %18 ], [ true, %79 ], [ false, %86 ], [ false, %83 ], [ true, %74 ], [ false, %66 ], [ false, %61 ], [ true, %44 ], [ false, %51 ], [ false, %48 ], [ true, %39 ], [ false, %31 ], [ false, %26 ]
  %93 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  %94 = load i8, ptr %93, align 2, !tbaa !37
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %91
  %97 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 33554432
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  tail call void @cgraph_set_nothrow_flag(ptr noundef %10, i8 noundef zeroext 1) #17
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %101, %105
  %106 = phi ptr [ %111, %105 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 14
  %108 = load i8, ptr %107, align 2
  %109 = and i8 %108, -5
  store i8 %109, ptr %107, align 2
  %110 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !9
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %105, !llvm.loop !66

113:                                              ; preds = %105, %101
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !58
  %118 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %119 = tail call ptr %117(ptr noundef %118, i32 noundef 2) #17
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %114, ptr noundef nonnull @.str.8, ptr noundef %119) #18
  br label %121

121:                                              ; preds = %116, %113
  tail call void @free(ptr noundef %19) #18
  br label %123

122:                                              ; preds = %91, %96
  tail call void @free(ptr noundef nonnull %19) #18
  br i1 %92, label %125, label %123

123:                                              ; preds = %121, %122
  %124 = tail call i32 @execute_fixup_cfg() #17
  br label %125

125:                                              ; preds = %122, %13, %16, %3, %6, %123
  %126 = phi i32 [ %124, %123 ], [ 0, %6 ], [ 0, %3 ], [ 0, %16 ], [ 0, %13 ], [ 0, %122 ]
  ret i32 %126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_node_duplication_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_remove_node_removal_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ipa_utils_reduced_inorder(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dump_cgraph(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ipa_utils_print_order(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_function_state(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @funct_state_vec, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef nonnull %2) #18
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @VEC_funct_state_base_index(ptr noundef nonnull %2, i32 noundef %7) #18
  br label %11

11:                                               ; preds = %1, %4, %9
  %12 = phi ptr [ %10, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @self_recursive_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !llvm.loop !68

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  ret i8 %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_set_readonly_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_set_looping_const_or_pure_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_set_pure_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @ignore_edge(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 2
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  ret i8 %6
}

; Function Attrs: optsize
declare void @cgraph_set_nothrow_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_funct_state_heap_free() unnamed_addr #8 {
  %1 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @funct_state_vec, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @finish_state() unnamed_addr #8 {
  %1 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9
  tail call void @free(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_funct_state_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !69
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_funct_state_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_hooks() unnamed_addr #1 {
  %1 = load i1, ptr @register_hooks.init_p, align 1
  br i1 %1, label %6, label %2

2:                                                ; preds = %0
  store i1 true, ptr @register_hooks.init_p, align 1
  %3 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #17
  store ptr %3, ptr @node_removal_hook_holder, align 8, !tbaa !9
  %4 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #17
  store ptr %4, ptr @node_duplication_hook_holder, align 8, !tbaa !9
  %5 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #17
  store ptr %5, ptr @function_insertion_hook_holder, align 8, !tbaa !9
  br label %6

6:                                                ; preds = %0, %2
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_function_state(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @funct_state_vec, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !67
  br label %13

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef nonnull %3) #18
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %5, %8
  %14 = phi i32 [ %7, %5 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %16 = add nsw i32 %14, 1
  tail call fastcc void @VEC_funct_state_heap_safe_grow_cleared(i32 noundef %16) #18
  %17 = load ptr, ptr @funct_state_vec, align 8
  %18 = load i32, ptr %15, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ %11, %8 ]
  %21 = phi ptr [ %17, %13 ], [ %3, %8 ]
  tail call fastcc void @VEC_funct_state_base_replace(ptr noundef %21, i32 noundef %20, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @analyze_function(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.loop_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !20
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %8 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 12) #17
  store i32 0, ptr %8, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 1
  store i32 2, ptr %9, align 4, !tbaa !15
  %10 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 2
  store i8 1, ptr %10, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !13
  %12 = getelementptr inbounds %struct.funct_state_d, ptr %8, i64 0, i32 4
  store i8 0, ptr %12, align 2, !tbaa !37
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #17
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.11, ptr noundef %16) #18
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  tail call void @push_cfun(ptr noundef %20) #17
  store ptr %6, ptr @current_function_decl, align 8, !tbaa !9
  %21 = load ptr, ptr @cfun, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !78
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %56, label %30

30:                                               ; preds = %18, %47
  %31 = phi ptr [ %49, %47 ], [ %26, %18 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %31) #18
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !33
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30, %44
  call fastcc void @check_stmt(ptr noundef nonnull %3, ptr noundef nonnull %8, i8 noundef zeroext %1) #18
  %35 = load i32, ptr %8, align 4, !tbaa !11
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8, ptr %11, align 1, !tbaa !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i8, ptr %12, align 2, !tbaa !37
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %56

44:                                               ; preds = %34, %37, %40
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !33
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %34, label %47, !llvm.loop !79

47:                                               ; preds = %44, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = load ptr, ptr @cfun, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = icmp eq ptr %49, %54
  br i1 %55, label %56, label %30, !llvm.loop !80

56:                                               ; preds = %47, %18, %43
  %57 = load i32, ptr %8, align 4, !tbaa !11
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %98, label %59

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @mark_dfs_back_edges() #17
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %98, label %62

62:                                               ; preds = %59
  tail call void @loop_optimizer_init(i32 noundef 15) #17
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @flow_loops_dump(ptr noundef nonnull %63, ptr noundef null, i32 noundef 0) #17
  br label %70

70:                                               ; preds = %69, %65, %62
  %71 = tail call zeroext i8 @mark_irreducible_loops() #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 26, i64 1, ptr nonnull %74)
  br label %78

78:                                               ; preds = %76, %73
  store i8 1, ptr %11, align 1, !tbaa !13
  br label %97

79:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  tail call void @scev_initialize() #17
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %80 = load ptr, ptr %5, align 8, !tbaa !9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %79, %93
  %83 = phi ptr [ %94, %93 ], [ %80, %79 ]
  %84 = tail call zeroext i8 @finite_loop_p(ptr noundef nonnull %83) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %83, align 8, !tbaa !81
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.13, i32 noundef %90) #18
  br label %92

92:                                               ; preds = %89, %86
  store i8 1, ptr %11, align 1, !tbaa !13
  br label %96

93:                                               ; preds = %82
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %94 = load ptr, ptr %5, align 8, !tbaa !9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %82, !llvm.loop !85

96:                                               ; preds = %93, %79, %92
  tail call void @scev_finalize() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %97

97:                                               ; preds = %96, %78
  tail call void @loop_optimizer_finalize() #17
  br label %98

98:                                               ; preds = %59, %97, %56
  %99 = load i64, ptr %6, align 8
  %100 = and i64 %99, 1048576
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  store i32 0, ptr %8, align 4, !tbaa !11
  store i32 0, ptr %9, align 4, !tbaa !15
  %103 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 268435456
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i8 0, ptr %11, align 1, !tbaa !13
  store i8 0, ptr %10, align 4, !tbaa !14
  br label %108

108:                                              ; preds = %102, %107, %98
  %109 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 134217728
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %8, align 4, !tbaa !11
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 1, ptr %8, align 4, !tbaa !11
  br label %117

117:                                              ; preds = %116, %113
  store i32 1, ptr %9, align 4, !tbaa !15
  %118 = load i32, ptr %109, align 8
  %119 = and i32 %118, 268435456
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8 0, ptr %11, align 1, !tbaa !13
  store i8 0, ptr %10, align 4, !tbaa !14
  br label %122

122:                                              ; preds = %117, %121, %108
  %123 = load i64, ptr %6, align 8
  %124 = and i64 %123, 33554432
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i8 0, ptr %12, align 2, !tbaa !37
  br label %127

127:                                              ; preds = %126, %122
  tail call void @pop_cfun() #17
  store ptr %7, ptr @current_function_decl, align 8, !tbaa !9
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %129 = icmp eq ptr %128, null
  br i1 %129, label %154, label %130

130:                                              ; preds = %127
  %131 = load i8, ptr %11, align 1, !tbaa !13
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr nonnull %128)
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i8, ptr %12, align 2, !tbaa !37
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %140 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 30, i64 1, ptr %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, ptr %8, align 4, !tbaa !11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %146 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %145)
  %147 = load i32, ptr %8, align 4, !tbaa !11
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i32 [ %147, %144 ], [ %142, %141 ]
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %153 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr %152)
  br label %154

154:                                              ; preds = %127, %151, %148
  ret ptr %8
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = tail call fastcc ptr @get_function_state(ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #18
  tail call fastcc void @set_function_state(ptr noundef %0, ptr noundef null) #18
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = tail call fastcc ptr @get_function_state(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @xmalloc(i64 noundef 12) #17
  %8 = tail call fastcc ptr @get_function_state(ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 621, ptr noundef nonnull @.str.10) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call fastcc ptr @get_function_state(ptr noundef %0) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %12, i64 12, i1 false)
  tail call fastcc void @set_function_state(ptr noundef %1, ptr noundef %7) #18
  br label %13

13:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call i32 @cgraph_function_body_availability(ptr noundef %0) #17
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_set_create() #17
  store ptr %6, ptr @visited_nodes, align 8, !tbaa !9
  %7 = tail call fastcc ptr @analyze_function(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call fastcc void @set_function_state(ptr noundef %0, ptr noundef %7) #18
  %8 = load ptr, ptr @visited_nodes, align 8, !tbaa !9
  tail call void @pointer_set_destroy(ptr noundef %8) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !9
  br label %9

9:                                                ; preds = %2, %5
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_funct_state_base_length(ptr noundef %2) #18
  tail call fastcc void @VEC_funct_state_heap_safe_grow(i32 noundef %0) #18
  %4 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9
  %5 = tail call fastcc ptr @VEC_funct_state_base_address(ptr noundef %4) #18
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_funct_state_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_safe_grow(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !69
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_funct_state_heap_reserve_exact(i32 noundef %8) #18
  %9 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9, !nonnull !86, !noundef !86
  store i32 %0, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_funct_state_base_address(ptr noundef readnone %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_funct_state_heap_reserve_exact(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @funct_state_vec, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_funct_state_base_space(ptr noundef %2, i32 noundef %0) #18, !range !87
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @funct_state_vec, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_funct_state_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !88
  %7 = load i32, ptr %0, align 8, !tbaa !69
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #13 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_stmt(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %5 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %4) #18, !range !33
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %87

7:                                                ; preds = %3
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 12, i64 1, ptr nonnull %8)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %4, i32 noundef 0, i32 noundef 0) #17
  br label %13

13:                                               ; preds = %10, %7
  %14 = tail call zeroext i8 @walk_stmt_load_store_ops(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @check_load, ptr noundef nonnull @check_store) #17
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %4) #18, !range !93
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %4) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr nonnull %24)
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 3
  store i8 1, ptr %29, align 1, !tbaa !13
  br label %30

30:                                               ; preds = %28, %20
  %31 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %4) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 24, i64 1, ptr nonnull %34)
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 4
  store i8 1, ptr %39, align 2, !tbaa !37
  br label %40

40:                                               ; preds = %30, %38, %17, %13
  %41 = tail call fastcc i32 @gimple_code(ptr noundef %4) #18, !range !93
  %42 = trunc i32 %41 to i8
  switch i8 %42, label %87 [
    i8 8, label %46
    i8 4, label %47
    i8 7, label %43
  ]

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %4) #18, !range !93
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %59

46:                                               ; preds = %40
  tail call fastcc void @check_call(ptr noundef %1, ptr noundef %4, i8 noundef zeroext %2) #18
  br label %87

47:                                               ; preds = %40
  %48 = tail call fastcc ptr @gimple_label_label(ptr noundef %4) #18
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 256
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %54)
  br label %58

58:                                               ; preds = %56, %53
  store i32 2, ptr %1, align 4, !tbaa !11
  br label %87

59:                                               ; preds = %43, %73
  %60 = phi i32 [ %74, %73 ], [ 0, %43 ]
  %61 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %4, i32 noundef %60) #18
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !71
  %64 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !9
  %65 = tail call i32 @simple_cst_equal(ptr noundef %63, ptr noundef %64) #17
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 40, i64 1, ptr nonnull %68)
  br label %72

72:                                               ; preds = %70, %67
  store i32 2, ptr %1, align 4, !tbaa !11
  br label %73

73:                                               ; preds = %72, %59
  %74 = add nuw nsw i32 %60, 1
  %75 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %4) #18, !range !93
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %59, label %77, !llvm.loop !94

77:                                               ; preds = %73, %43
  %78 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %4) #18, !range !33
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 30, i64 1, ptr nonnull %81)
  br label %85

85:                                               ; preds = %83, %80
  store i32 2, ptr %1, align 4, !tbaa !11
  %86 = getelementptr inbounds %struct.funct_state_d, ptr %1, i64 0, i32 3
  store i8 1, ptr %86, align 1, !tbaa !13
  br label %87

87:                                               ; preds = %46, %58, %47, %40, %77, %85, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  store ptr %4, ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !97
  %4 = load ptr, ptr @cfun, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !100
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #18
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #18
  store ptr %11, ptr %0, align 8, !tbaa !100
  %12 = load ptr, ptr @cfun, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !100
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #18
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !104
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !105

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !97
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !100
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #18, !range !87
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !97
  %13 = load i32, ptr %3, align 4, !tbaa !5
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #18
  store ptr %14, ptr %1, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !106

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #18
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !107
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !108
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !110
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !93
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @walk_stmt_load_store_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @check_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @check_decl(ptr noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %11

10:                                               ; preds = %3
  tail call fastcc void @check_op(ptr noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %11

11:                                               ; preds = %10, %9
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @check_store(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @check_decl(ptr noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 1) #18
  br label %11

10:                                               ; preds = %3
  tail call fastcc void @check_op(ptr noundef %2, ptr noundef nonnull %1, i8 noundef zeroext 1) #18
  br label %11

11:                                               ; preds = %10, %9
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = tail call i32 @gimple_call_flags(ptr noundef %1) #17
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %1) #18
  %6 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %1) #17
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef %1) #17
  %10 = icmp ne i8 %9, 0
  %11 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 4
  br label %16

16:                                               ; preds = %13, %40
  %17 = phi i32 [ 0, %13 ], [ %41, %40 ]
  %18 = tail call fastcc ptr @gimple_op(ptr noundef %1, i32 noundef %17) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @gimple_op(ptr noundef %1, i32 noundef %17) #18
  %22 = tail call zeroext i8 @tree_could_throw_p(ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @flag_non_call_exceptions, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 31, i64 1, ptr nonnull %28)
  br label %32

32:                                               ; preds = %30, %27
  store i8 1, ptr %14, align 1, !tbaa !13
  br label %33

33:                                               ; preds = %32, %24
  br i1 %10, label %34, label %40

34:                                               ; preds = %33
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 33, i64 1, ptr nonnull %35)
  br label %39

39:                                               ; preds = %37, %34
  store i8 1, ptr %15, align 2, !tbaa !37
  br label %40

40:                                               ; preds = %16, %20, %39, %33
  %41 = add nuw i32 %17, 1
  %42 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #18
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %16, label %44, !llvm.loop !113

44:                                               ; preds = %40, %8, %3
  %45 = phi i1 [ false, %3 ], [ %10, %8 ], [ %10, %40 ]
  %46 = icmp ne ptr %5, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = tail call i32 @setjmp_call_p(ptr noundef nonnull %5) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 29, i64 1, ptr nonnull %51)
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %56, align 1, !tbaa !13
  store i32 2, ptr %0, align 4, !tbaa !11
  br label %57

57:                                               ; preds = %55, %47
  %58 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 6144
  %61 = icmp eq i32 %60, 6144
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = and i32 %59, 2047
  switch i32 %63, label %71 [
    i32 490, label %64
    i32 522, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 48, i64 1, ptr nonnull %65)
  br label %69

69:                                               ; preds = %67, %64
  store i32 2, ptr %0, align 4, !tbaa !11
  %70 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %70, align 1, !tbaa !13
  br label %71

71:                                               ; preds = %57, %62, %69, %44
  %72 = icmp ne i8 %2, 0
  %73 = load ptr, ptr @current_function_decl, align 8
  %74 = icmp ne ptr %5, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %77, align 1, !tbaa !13
  br label %144

78:                                               ; preds = %71
  %79 = and i1 %72, %46
  br i1 %79, label %144, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr @flag_non_call_exceptions, align 4
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %7, i1 %82, i1 false
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 23, i64 1, ptr nonnull %85)
  br label %89

89:                                               ; preds = %87, %84
  %90 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %90, align 1, !tbaa !13
  br label %91

91:                                               ; preds = %89, %80
  br i1 %45, label %92, label %106

92:                                               ; preds = %91
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %1) #17
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %93, ptr noundef nonnull @.str.38, i32 noundef %96) #18
  br i1 %46, label %98, label %104

98:                                               ; preds = %95
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %100 = tail call ptr @decl_assembler_name(ptr noundef nonnull %5) #17
  %101 = getelementptr inbounds %struct.tree_identifier, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !71
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.39, ptr noundef %102) #18
  br label %104

104:                                              ; preds = %95, %98, %92
  %105 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 4
  store i8 1, ptr %105, align 2, !tbaa !37
  br label %106

106:                                              ; preds = %104, %91
  %107 = and i32 %4, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  br i1 %46, label %110, label %144

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 268435456
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %144, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %116, align 1, !tbaa !13
  br label %144

117:                                              ; preds = %106
  %118 = and i32 %4, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %117
  br i1 %46, label %121, label %128

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.tree_function_decl, ptr %5, i64 0, i32 5
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 268435456
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %127, align 1, !tbaa !13
  br label %128

128:                                              ; preds = %126, %121, %120
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 36, i64 1, ptr nonnull %129)
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i32, ptr %0, align 4, !tbaa !11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %144

137:                                              ; preds = %117
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 43, i64 1, ptr nonnull %138)
  br label %142

142:                                              ; preds = %140, %137
  store i32 2, ptr %0, align 4, !tbaa !11
  %143 = getelementptr inbounds %struct.funct_state_d, ptr %0, i64 0, i32 3
  store i8 1, ptr %143, align 1, !tbaa !13
  br label %144

144:                                              ; preds = %78, %142, %136, %133, %109, %110, %115, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !71
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !71
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 2688, ptr noundef nonnull @.str.10) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !71
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !71
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #18
  ret ptr %17
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @check_decl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #14 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 524288
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  store i32 2, ptr %0, align 4, !tbaa !11
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 38, i64 1, ptr nonnull %8)
  br label %69

12:                                               ; preds = %3
  %13 = and i64 %4, 67108864
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %14, i1 %18, i1 false
  br i1 %19, label %69, label %20

20:                                               ; preds = %12
  %21 = and i64 %16, 8192
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  store i32 2, ptr %0, align 4, !tbaa !11
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 50, i64 1, ptr nonnull %24)
  br label %69

28:                                               ; preds = %20
  %29 = icmp eq i8 %2, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  store i32 2, ptr %0, align 4, !tbaa !11
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 49, i64 1, ptr nonnull %31)
  br label %69

35:                                               ; preds = %28
  %36 = and i64 %16, 33554432
  %37 = and i64 %4, 134217728
  %38 = or disjoint i64 %36, %37
  %39 = icmp eq i64 %38, 0
  %40 = and i64 %4, 1048576
  %41 = icmp eq i64 %40, 0
  br i1 %39, label %59, label %42

42:                                               ; preds = %35
  br i1 %41, label %50, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 2048
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %43, %42
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 36, i64 1, ptr nonnull %51)
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, ptr %0, align 4, !tbaa !11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %69

59:                                               ; preds = %35
  br i1 %41, label %60, label %69

60:                                               ; preds = %59
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 36, i64 1, ptr nonnull %61)
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, ptr %0, align 4, !tbaa !11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %69

69:                                               ; preds = %12, %65, %68, %59, %58, %55, %43, %30, %33, %23, %26, %7, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_op(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = tail call ptr @get_base_address(ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  store i32 2, ptr %0, align 4, !tbaa !11
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 44, i64 1, ptr nonnull %11)
  br label %50

15:                                               ; preds = %6
  %16 = trunc i64 %7 to i32
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -47
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef nonnull %22) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %30)
  br label %50

34:                                               ; preds = %15, %3, %26, %20
  %35 = icmp eq i8 %2, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  store i32 2, ptr %0, align 4, !tbaa !11
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 41, i64 1, ptr nonnull %37)
  br label %50

41:                                               ; preds = %34
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 35, i64 1, ptr nonnull %42)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr %0, align 4, !tbaa !11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %50

50:                                               ; preds = %46, %49, %36, %39, %29, %32, %10, %13
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #18
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !71
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !33
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare zeroext i8 @tree_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @setjmp_call_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !93
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !93
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
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
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #18
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 4, !tbaa !115
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !115
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !118
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !115
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @csi_start(ptr noundef %0) unnamed_addr #11 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @csi_end_p(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef %4) #18
  %6 = icmp ule i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @csi_node(ptr nocapture readonly %0, i32 %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = tail call fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr noundef %4, i32 noundef %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @csi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !97
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitpack_create() local_unnamed_addr #3

; Function Attrs: optsize
declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_output_bitpack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitpack_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !122
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_cgraph_node_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lto_input_bitpack(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @function_called_by_processed_nodes_p() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @execute_fixup_cfg() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!11 = !{!12, !6, i64 0}
!12 = !{!"funct_state_d", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 9, !7, i64 10}
!13 = !{!12, !7, i64 9}
!14 = !{!12, !7, i64 8}
!15 = !{!12, !6, i64 4}
!16 = !{!17, !10, i64 16}
!17 = !{!"cgraph_edge", !18, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !19, i64 88, !6, i64 90, !6, i64 90, !6, i64 90}
!18 = !{!"long", !7, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"cgraph_node", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !22, i64 144, !24, i64 184, !25, i64 224, !26, i64 232, !27, i64 256, !18, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 308, !6, i64 309, !6, i64 309}
!22 = !{!"cgraph_local_info", !10, i64 0, !23, i64 8, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32, !6, i64 32}
!23 = !{!"inline_summary", !18, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!24 = !{!"cgraph_global_info", !18, i64 0, !18, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !7, i64 36}
!25 = !{!"cgraph_rtl_info", !6, i64 0}
!26 = !{!"cgraph_clone_info", !10, i64 0, !10, i64 8, !10, i64 16}
!27 = !{!"cgraph_thunk_info", !18, i64 0, !18, i64 8, !10, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!21, !10, i64 128}
!31 = !{!32, !10, i64 16}
!32 = !{!"ipa_dfs_info", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 9, !10, i64 16, !10, i64 24}
!33 = !{i8 0, i8 2}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = !{!12, !7, i64 10}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = !{i64 0, i64 8, !9, i64 8, i64 4, !5}
!45 = !{i64 0, i64 4, !5}
!46 = distinct !{!46, !29}
!47 = !{!48, !10, i64 16}
!48 = !{!"lto_simple_output_block", !6, i64 0, !10, i64 8, !10, i64 16}
!49 = !{!48, !10, i64 8}
!50 = !{!51, !10, i64 168}
!51 = !{!"lto_out_decl_state", !7, i64 0, !10, i64 168, !10, i64 176}
!52 = distinct !{!52, !29}
!53 = !{!54, !10, i64 16}
!54 = !{!"lto_file_decl_data", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !10, i64 48, !10, i64 56}
!55 = distinct !{!55, !29}
!56 = !{!18, !18, i64 0}
!57 = distinct !{!57, !29}
!58 = !{!59, !10, i64 176}
!59 = !{!"lang_hooks", !10, i64 0, !18, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !60, i64 240, !61, i64 248, !62, i64 256, !63, i64 272, !64, i64 432, !65, i64 560, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !7, i64 672}
!60 = !{!"lang_hooks_for_tree_inlining", !10, i64 0}
!61 = !{!"lang_hooks_for_callgraph", !10, i64 0}
!62 = !{!"lang_hooks_for_tree_dump", !10, i64 0, !10, i64 8}
!63 = !{!"lang_hooks_for_decls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!64 = !{!"lang_hooks_for_types", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !7, i64 120}
!65 = !{!"lang_hooks_for_lto", !10, i64 0, !10, i64 8, !10, i64 16}
!66 = distinct !{!66, !29}
!67 = !{!21, !6, i64 296}
!68 = distinct !{!68, !29}
!69 = !{!70, !6, i64 0}
!70 = !{!"VEC_funct_state_base", !6, i64 0, !6, i64 4, !7, i64 8}
!71 = !{!7, !7, i64 0}
!72 = !{!73, !10, i64 8}
!73 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!74 = !{!75, !10, i64 0}
!75 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!76 = !{!77, !10, i64 56}
!77 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !18, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!78 = !{!75, !10, i64 8}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = !{!82, !6, i64 0}
!82 = !{!"loop", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !83, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !84, i64 80, !84, i64 96, !7, i64 112, !7, i64 113, !6, i64 116, !10, i64 120, !10, i64 128, !7, i64 136, !10, i64 144}
!83 = !{!"lpt_decision", !6, i64 0, !6, i64 4}
!84 = !{!"", !18, i64 0, !18, i64 8}
!85 = distinct !{!85, !29}
!86 = !{}
!87 = !{i32 0, i32 2}
!88 = !{!70, !6, i64 4}
!89 = !{!90, !10, i64 0}
!90 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!91 = !{!90, !10, i64 8}
!92 = !{!90, !10, i64 16}
!93 = !{i32 0, i32 256}
!94 = distinct !{!94, !29}
!95 = !{!96, !10, i64 16}
!96 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!97 = !{!98, !6, i64 8}
!98 = !{!"", !10, i64 0, !6, i64 8}
!99 = !{!73, !10, i64 32}
!100 = !{!98, !10, i64 0}
!101 = !{!102, !10, i64 24}
!102 = !{!"loops", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!103 = !{!82, !10, i64 48}
!104 = !{!82, !10, i64 56}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = !{!77, !6, i64 96}
!108 = !{!109, !10, i64 0}
!109 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!110 = !{!111, !10, i64 0}
!111 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!112 = !{!96, !10, i64 0}
!113 = distinct !{!113, !29}
!114 = !{!102, !10, i64 8}
!115 = !{!116, !6, i64 0}
!116 = !{!"VEC_int_base", !6, i64 0, !6, i64 4, !7, i64 8}
!117 = !{!82, !10, i64 40}
!118 = !{!119, !6, i64 0}
!119 = !{!"VEC_loop_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!120 = !{!121, !10, i64 8}
!121 = !{!"cgraph_node_set_def", !10, i64 0, !10, i64 8, !10, i64 16}
!122 = !{!123, !6, i64 0}
!123 = !{!"VEC_cgraph_node_ptr_base", !6, i64 0, !6, i64 4, !7, i64 8}
